<?php
// db.php
$host = "sql108.infinityfree.com";
$user = "if0_40368501";      // tu usuario
$pass = "E6yIZNXZsOr7y93";          // tu contraseña
$dbname = "examenes_db";

$conn = new mysqli($host, $user, $pass, $dbname);

if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

$conn->set_charset("utf8mb4");

?>
