<?php
include("database.php");
session_start();

// Check if the user is not a regular user
if (!isset($_SESSION['role']) || $_SESSION['role'] !== 'User') {
    header("Location: index.php");
    exit();
}

// Function to log out
function logout()
{
    session_unset();
    session_destroy();
}

// Check if the user clicked on the logout link
if (isset($_GET['logout'])) {
    logout();
    header("Location: index.php");
    exit();
}


// Default SQL query to fetch all users
$sql = "SELECT * FROM benutzeraccount";
$result = mysqli_query($conn, $sql);

// Check if the form is submitted
if (isset($_POST['search'])) {
    $searchTerm = mysqli_real_escape_string($conn, $_POST['search']);

    // Modify the SQL query to filter results based on the search term
    $sql = "SELECT * FROM benutzeraccount 
            WHERE vorname LIKE '%$searchTerm%' OR 
                  name LIKE '%$searchTerm%' OR 
                  benutzername LIKE '%$searchTerm%' OR 
                  kundennummer LIKE '%$searchTerm%'
                  ";

    $result = mysqli_query($conn, $sql);
}

// Check if the delete button is clicked
if (isset($_GET['delete_id'])) {
    $deleteId = $_GET['delete_id'];
    $deleteSql = "DELETE FROM benutzeraccount WHERE id = $deleteId";
    mysqli_query($conn, $deleteSql);

    // Refresh the page after deletion
    header("Location: index.php");
    exit();
}

// Function to output CSV data
function outputCSV($data)
{
    $outputBuffer = fopen("php://output", 'w');
    foreach ($data as $row) {
        fputcsv($outputBuffer, $row);
    }
    fclose($outputBuffer);
}

// Check if the export button is clicked
if (isset($_POST['export'])) {
    $exportData = array();
    $exportHeader = array("ID", "Vorname", "Name", "Kundennummer", "Email", "Telefon", "Benutzername", "Passwort");

    // Fetch data from the database
    $exportQuery = "SELECT * FROM benutzeraccount";
    $exportResult = mysqli_query($conn, $exportQuery);

    // Add header to the CSV data
    $exportData[] = $exportHeader;

    // Add user data to the CSV data
    while ($row = mysqli_fetch_assoc($exportResult)) {
        $exportData[] = $row;
    }

    // Set the CSV headers
    header('Content-Type: text/csv');
    header('Content-Disposition: attachment; filename="user_data.csv"');

    // Output the CSV data
    outputCSV($exportData);

    // Exit to prevent further output
    exit();
}
?>

<!DOCTYPE html>
<html>

<head>
    <title>Benutzer daten</title>
    <link rel="stylesheet" href="style-index.css">
</head>

<body>
    <div class="header-admin">
        <form method="post" action="">
            <label for="search">Search:</label>
            <input type="text" name="search" id="search" value="<?php echo isset($searchTerm) ? $searchTerm : ''; ?>">
            <input type="submit" value="Submit">
        </form>
        <a href="?logout=true">Logout</a>


    </div>

    <table>
        <tr>
            <th>ID</th>
            <th>Vorname</th>
            <th>Name</th>
            <th>Kundennummer</th>
            <th>Email</th>
            <th>Telefon</th>
        </tr>

        <?php
        if (mysqli_num_rows($result) > 0) {
            while ($row = mysqli_fetch_assoc($result)) {
                echo "<tr>
                        <td>" . $row["id"] . "</td>
                        <td>" . $row["vorname"] . "</td>
                        <td>" . $row["name"] . "</td>
                        <td>" . $row["kundennummer"] . "</td>
                        <td>" . $row["email"] . "</td>
                        <td>" . $row["telefon"] . "</td>
                     </tr>";
            }
        } else {
            echo "<tr><td colspan='9'>0 gefunden</td></tr>";
        }
        ?>
    </table>
    <form method="post" action="" class="csv">
        <input type="submit" name="export" value="Exportieren als CSV">
    </form>
</body>

</html>

<?php
mysqli_close($conn);
?>