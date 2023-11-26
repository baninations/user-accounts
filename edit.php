<?php
include("database.php");

session_start();

// Check if the user is not an administrator
if (!isset($_SESSION['role']) || $_SESSION['role'] !== 'Administrator') {
    header("Location: index.php");
    exit();
}

if (isset($_GET['id'])) {
    $userId = mysqli_real_escape_string($conn, $_GET['id']);

    // Fetch user details based on the ID
    $sql = "SELECT * FROM benutzeraccount WHERE id = $userId";
    $result = mysqli_query($conn, $sql);

    if (mysqli_num_rows($result) == 1) {
        $user = mysqli_fetch_assoc($result);
    } else {
        echo "User not found.";
        exit();
    }
} else {
    echo "Invalid request.";
    exit();
}

// Check if the form is submitted for updating user details
if (isset($_POST['update'])) {
    // Gather updated data
    $updatedVorname = mysqli_real_escape_string($conn, $_POST['vorname']);
    $updatedName = mysqli_real_escape_string($conn, $_POST['name']);
    $updatedKundennummer = mysqli_real_escape_string($conn, $_POST['kundennummer']);
    $updatedEmail = mysqli_real_escape_string($conn, $_POST['email']);
    $updatedTelefon = mysqli_real_escape_string($conn, $_POST['telefon']);
    $updatedBenutzername = mysqli_real_escape_string($conn, $_POST['benutzername']);
    $updatedPasswort = mysqli_real_escape_string($conn, $_POST['passwort']);
    $hash = password_hash($updatedPasswort, PASSWORD_DEFAULT);

    // Update the user details in the database
    $updateSql = "UPDATE benutzeraccount 
                  SET vorname = '$updatedVorname', 
                      name = '$updatedName',
                      kundennummer = '$updatedKundennummer',
                      email = '$updatedEmail',
                      telefon = '$updatedTelefon',
                      benutzername = '$updatedBenutzername',
                      passwort = '$hash'
                  WHERE id = $userId";

    if (mysqli_query($conn, $updateSql)) {
        echo "Benutzer details aktualisiert!";
    } else {
        echo "Error updating user details: " . mysqli_error($conn);
    }
}

?>

<!DOCTYPE html>
<html>

<head>
    <title>Benutzer Aktualisieren</title>
    <link rel="stylesheet" href="style-index.css">
</head>

<body>
    <h2>Benutzer Aktualisieren</h2>

    <div class="header-add">

        <form method="post" action="" class="form-add-user">
            <label for="vorname">Vorname:</label>
            <input type="text" name="vorname" id="vorname" value="<?php echo $user['vorname']; ?>"><br>

            <label for="name">Name:</label>
            <input type="text" name="name" id="name" value="<?php echo $user['name']; ?>"><br>

            <label for="kundennummer">Kundennummer:</label>
            <input type="text" name="kundennummer" id="kundennummer" value="<?php echo $user['kundennummer']; ?>"><br>

            <label for="email">Email:</label>
            <input type="text" name="email" id="email" value="<?php echo $user['email']; ?>"><br>

            <label for="telefon">Telefon:</label>
            <input type="text" name="telefon" id="telefon" value="<?php echo $user['telefon']; ?>"><br>

            <label for="benutzername">Benutzername:</label>
            <input type="text" name="benutzername" id="benutzername" value="<?php echo $user['benutzername']; ?>"><br>

            <label for="passwort">Passwort:</label>
            <input type="password" name="passwort" id="passwort"><br>

            <input type="submit" name="update" value="Aktualisieren">
        </form>
    </div>

</body>

</html>

<?php
mysqli_close($conn);
?>