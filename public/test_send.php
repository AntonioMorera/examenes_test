<?php
// public/test_send.php
require_once '../includes/db.php';

// Simular datos POST
$_POST = [
    'exam_id' => 28,
    'name' => 'Test User',
    'message' => 'Mensaje de prueba'
];

// Incluir send_chat.php y capturar output
ob_start();
require 'send_chat.php';
$output = ob_get_clean();

echo "<h2>Test send_chat.php</h2>";
echo "<pre>Output: " . htmlspecialchars($output) . "</pre>";

// Probar conexión a BD
echo "<h3>Test Base de Datos</h3>";
echo "Conexión: " . ($conn->connect_error ? "ERROR: " . $conn->connect_error : "OK");
echo "<br>";

// Probar tabla exam_chat
$result = $conn->query("SHOW TABLES LIKE 'exam_chat'");
echo "Tabla exam_chat: " . ($result->num_rows > 0 ? "EXISTE" : "NO EXISTE");
?>