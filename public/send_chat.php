<?php
session_start();
require_once __DIR__ . '/../includes/db.php';
$conn->set_charset("utf8mb4");

// Obtener datos del POST
$exam_id = $_POST['exam_id'] ?? null;
$message = $_POST['message'] ?? null;
$user_name_input = trim($_POST['name'] ?? '');

// Validar datos
if (!$exam_id || !$message) {
    echo "Datos incompletos.";
    exit;
}

// Determinar nombre de usuario
$user_name = $user_name_input ?: (isset($_SESSION['user_id']) ? "Usuario ".$_SESSION['user_id'] : "Invitado");

// Insertar mensaje en la tabla exam_chat
$stmt = $conn->prepare("INSERT INTO exam_chat (exam_id, user_name, message) VALUES (?, ?, ?)");
$stmt->bind_param("iss", $exam_id, $user_name, $message);

