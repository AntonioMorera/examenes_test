<?php
// public/send_chat.php - VERSIÓN CORREGIDA
session_start();

// FORZAR respuesta JSON
header('Content-Type: application/json; charset=utf-8');

// Incluir conexión
require_once '../includes/db.php';

// Verificar método
if ($_SERVER['REQUEST_METHOD'] !== 'POST') {
    http_response_code(405);
    echo json_encode(['error' => 'Método no permitido']);
    exit;
}

// Obtener datos
$exam_id = intval($_POST['exam_id'] ?? 0);
$message = trim($_POST['message'] ?? '');
$user_name = trim($_POST['name'] ?? '');

// Validar
if ($exam_id <= 0 || empty($message)) {
    http_response_code(400);
    echo json_encode(['error' => 'Datos incompletos']);
    exit;
}

// Nombre por defecto
if (empty($user_name)) {
    $user_name = isset($_SESSION['user_id']) ? 
        "Usuario " . $_SESSION['user_id'] : 
        "Invitado";
}

// Limitar longitud
$user_name = substr($user_name, 0, 100);
$message = substr($message, 0, 500);

// Insertar en BD
try {
    $stmt = $conn->prepare("INSERT INTO exam_chat (exam_id, user_name, message) VALUES (?, ?, ?)");
    $stmt->bind_param("iss", $exam_id, $user_name, $message);
    
    if ($stmt->execute()) {
        echo json_encode([
            'success' => true,
            'message' => 'Mensaje enviado',
            'exam_id' => $exam_id
        ]);
    } else {
        throw new Exception("Error al insertar: " . $stmt->error);
    }
    
    $stmt->close();
    
} catch (Exception $e) {
    http_response_code(500);
    echo json_encode([
        'error' => 'Error del servidor',
        'debug' => $e->getMessage() // Quitar en producción
    ]);
}

// Cerrar conexión
$conn->close();
?>