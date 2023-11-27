<?php
session_start();

// Function to authenticate a user
function authenticateUser($username, $password, $conn)
{
    $username = mysqli_real_escape_string($conn, $username);
    $password = mysqli_real_escape_string($conn, $password);

    $query = "SELECT * FROM users WHERE username = '$username' AND password = '$password'";
    $result = mysqli_query($conn, $query);

    if ($result && mysqli_num_rows($result) === 1) {
        $row = mysqli_fetch_assoc($result);
        $_SESSION['username'] = $row['username'];
        $_SESSION['role'] = $row['role'];
        return true;
    }

    return false;
}

// Function to check if a user is an administrator
function isAdmin()
{
    return isset($_SESSION['role']) && $_SESSION['role'] === 'Administrator';
}

// Function to check if a user is logged in
function isLoggedIn()
{
    return isset($_SESSION['username']);
}

// Function to log out
function logout()
{
    session_unset();
    session_destroy();
}

// Create a connection to the database
$servername = "localhost"; // e.g., "localhost"
$username = "root";
$password = "123456";
$dbname = "nolis";

$conn = new mysqli($servername, $username, $password, $dbname);

// Check the connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Simulated login attempt
if (isset($_POST['login'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];

    if (authenticateUser($username, $password, $conn)) {
        if (isAdmin()) {
            header("Location: admin.php");
            exit();
        } else {
            header("Location: user.php");
            exit();
        }
    } else {
        echo "Invalid username or password.";
    }
}

// Simulated logout
if (isset($_GET['logout'])) {
    logout();
    echo "Logged out successfully!";
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="style-index.css">
</head>

<body>
    <div class="body-login">
        <h1 class="h1-login"><span class="nol">NOL</span><span class="i">i</span><span class="s">s</span></h1>
        <form method="post" action="" class="form-login">
            <label for="username">Benutzer:</label>
            <input type="text" name="username" required>
            <br>
            <label for="password">Passwort:</label>
            <input type="password" name="password" required>
            <br>
            <input type="submit" name="login" value="Login">
        </form>
    </div>

</body>

</html>