<?php
// echo "Hi, I am Albaiiiin <br>";

$db_server = 'localhost';
$db_user = "root";
$db_pass = "123456";
$db_name = "nolis";
$conn = "";



try {
    $conn = mysqli_connect($db_server, $db_user, $db_pass, $db_name);
} catch (mysqli_sql_exception) {
    echo "Could not connect";
}
