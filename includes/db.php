<?php
// db.php
$host = "localhost";
$user = "root";      // tu usuario
$pass = "tonimm10";          // tu contraseña
$dbname = "examenes_db";

$conn = new mysqli($host, $user, $pass, $dbname);

if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

$conn->set_charset("utf8mb4");

?>
