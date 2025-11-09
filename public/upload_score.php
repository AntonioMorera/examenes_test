<?php
session_start();
include_once '../includes/db.php'; // Ajusta la ruta

// Verificar que se recibieron los datos
if (!isset($_POST['exam_id'], $_POST['score'])) {
    die("Datos incompletos.");
}

$exam_id = intval($_POST['exam_id']);
$score = floatval($_POST['score']);

// Determinar user_id
if (isset($_POST['user_id'])) {
    $user_id = intval($_POST['user_id']);
} elseif (!empty($_POST['name'])) {
    // Crear usuario temporal o invitado
    $name = trim($_POST['name']);

    // Insertar en users
    $stmt_user = $conn->prepare("INSERT INTO users (name) VALUES (?)");
    $stmt_user->bind_param("s", $name);
    $stmt_user->execute();
    $user_id = $stmt_user->insert_id;
    $stmt_user->close();
} else {
    die("Usuario no especificado.");
}

// Insertar resultado en results
$stmt_result = $conn->prepare("INSERT INTO results (user_id, exam_id, score) VALUES (?, ?, ?)");
$stmt_result->bind_param("iid", $user_id, $exam_id, $score);

if ($stmt_result->execute()) {
    echo "¡Puntuación subida al ranking con éxito!<br>";
    echo "<a href='ranking.php?exam_id=$exam_id'>Ver ranking completo</a>";
} else {
    echo "Error al subir la puntuación: " . $stmt_result->error;
}

$stmt_result->close();
$conn->close();
?>
