<?php
include("database.php");
session_start();

// Check if the user is not an administrator
if (!isset($_SESSION['role']) || $_SESSION['role'] !== 'Administrator') {
    header("Location: index.php");
    exit();
}

// Check if the form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Retrieve data from the form
    $vorname = mysqli_real_escape_string($conn, $_POST['vorname']);
    $name = mysqli_real_escape_string($conn, $_POST['name']);
    $kundennummer = mysqli_real_escape_string($conn, $_POST['kundennummer']);
    $email = mysqli_real_escape_string($conn, $_POST['email']);
    $telefon = mysqli_real_escape_string($conn, $_POST['telefon']);
    $benutzername = mysqli_real_escape_string($conn, $_POST['benutzername']);
    $passwort = mysqli_real_escape_string($conn, $_POST['passwort']);
    $hash = password_hash($passwort, PASSWORD_DEFAULT);

    // Insert data into the database
    $insertSql = "INSERT INTO benutzeraccount (vorname, name, kundennummer, email, telefon, benutzername, passwort)
                  VALUES ('$vorname', '$name', '$kundennummer', '$email', '$telefon', '$benutzername', '$hash')";

    if (mysqli_query($conn, $insertSql)) {
        // Redirect to the index page after successful insertion
        header("Location: admin.php");
        exit();
    } else {
        echo "Error: " . $insertSql . "<br>" . mysqli_error($conn);
    }
}

// Close the database connection
mysqli_close($conn);
?>

<!DOCTYPE html>
<html>

<head>
    <title>Benutzer Erstellen</title>
    <link rel="stylesheet" href="style-index.css">
</head>

<body>
    <div class="header-add">
        <h2>Benutzer Erstellen</h2>
        <form method="post" action="" class="form-add-user">
            <label for="vorname">Vorname:</label>
            <input type="text" name="vorname" required>
            <br>
            <label for="name">Name:</label>
            <input type="text" name="name" required>
            <br>
            <label for="kundennummer">Kundennummer:</label>
            <input type="text" name="kundennummer" required>
            <br>
            <label for="email">Email:</label>
            <input type="email" name="email" required>
            <br>
            <label for="telefon">Telefon:</label>
            <input type="text" name="telefon" required>
            <br>
            <label for="benutzername">Benutzername:</label>
            <input type="text" name="benutzername" required>
            <br>
            <label for="passwort">Passwort:</label>
            <input type="password" name="passwort" required>
            <br>
            <input type="submit" value="Benutzer Erstellen">
        </form>
    </div>
</body>

</html>