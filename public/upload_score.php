<?php
session_start();
include_once '../includes/db.php';

// Verificar que se recibieron los datos
if (!isset($_POST['exam_id'], $_POST['score'], $_POST['time_taken'])) {
    die("Datos incompletos.");
}

$exam_id = intval($_POST['exam_id']);
$score = floatval($_POST['score']);
$time_taken = intval($_POST['time_taken']); // AÑADE ESTA LÍNEA

// Determinar user_id
if (isset($_POST['user_id'])) {
    $user_id = intval($_POST['user_id']);
} elseif (!empty($_POST['name'])) {
    $name = trim($_POST['name']);
    $stmt_user = $conn->prepare("INSERT INTO users (name) VALUES (?)");
    $stmt_user->bind_param("s", $name);
    $stmt_user->execute();
    $user_id = $stmt_user->insert_id;
    $stmt_user->close();
} else {
    die("Usuario no especificado.");
}

// MODIFICA la consulta para incluir time_taken
$stmt_result = $conn->prepare("INSERT INTO results (user_id, exam_id, score, time_taken) VALUES (?, ?, ?, ?)");
$stmt_result->bind_param("iidi", $user_id, $exam_id, $score, $time_taken);

if ($stmt_result->execute()) {
    echo "<div class='message'>¡Puntuación subida al ranking con éxito! 🏆</div>";
    echo "<button type='button' class='btn-back' onclick='loadRanking($exam_id)'>Ver ranking completo</button>";
} else {
    echo "<div class='message'>Error al subir la puntuación: " . $stmt_result->error . "</div>";
}

$stmt_result->close();
$conn->close();
?>