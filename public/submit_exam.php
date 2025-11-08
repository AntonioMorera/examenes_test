<?php 
// submit_exam.php

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

require_once __DIR__ . '/../includes/db.php'; // Conexión a la base de datos
$conn->set_charset("utf8mb4");

// Obtener el exam_id desde el formulario
$exam_id = isset($_POST['exam_id']) ? (int)$_POST['exam_id'] : 0;


// Recibir todas las respuestas enviadas
$respuestas = $_POST;

// Inicializar variables
$total_preguntas = 0;
$aciertos = 0;
$detalles = [];

// Recorrer cada respuesta
foreach($respuestas as $key => $option_id) {
    if(strpos($key, 'question_') === 0) {
        $total_preguntas++;

        // Obtener información de la opción y pregunta
        $sql = "SELECT o.is_correct, o.text as opcion_text, q.text as pregunta_text, o.question_id
                FROM options o
                JOIN questions q ON o.question_id = q.id
                WHERE o.id = ?";
        $stmt = $conn->prepare($sql);
        $stmt->bind_param("i", $option_id);
        $stmt->execute();
        $result = $stmt->get_result();
        if($row = $result->fetch_assoc()) {
            $correcta = $row['is_correct'] == 1;
            if($correcta) $aciertos++;

            // Obtener la respuesta correcta para mostrarla
            $sql_correcta = "SELECT text FROM options WHERE question_id = ? AND is_correct = 1 LIMIT 1";
            $stmt_correcta = $conn->prepare($sql_correcta);
            $stmt_correcta->bind_param("i", $row['question_id']);
            $stmt_correcta->execute();
            $res_correcta = $stmt_correcta->get_result();
            $correct_answer = $res_correcta->fetch_assoc()['text'] ?? '';
            $stmt_correcta->close();

            $detalles[] = [
                'pregunta' => $row['pregunta_text'],
                'respuesta' => $row['opcion_text'],
                'correcta' => $correcta,
                'respuesta_correcta' => $correct_answer
            ];
        }
        $stmt->close();
    }
}

// Calcular porcentaje
$porcentaje = $total_preguntas > 0 ? round(($aciertos / $total_preguntas) * 100, 2) : 0;
?>

<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<title>Resultados del examen</title>
<link rel="stylesheet" href="./css/submit_exam.css">
</head>
<body>
<div class="container">
    <h1>Resultados del examen</h1>
    <div class="summary">
        <p>Total de preguntas: <?php echo $total_preguntas; ?></p>
        <p>Respuestas correctas: <?php echo $aciertos; ?></p>
        <p class="score">Puntuación: <?php echo $porcentaje; ?>%</p>
    </div>

    <hr>

    <?php foreach($detalles as $d): ?>
        <div class="pregunta <?php echo $d['correcta'] ? 'correcta' : 'incorrecta'; ?>">
            <strong>Pregunta:</strong> <?php echo htmlspecialchars($d['pregunta']); ?><br>
            <strong>Tu respuesta:</strong> <?php echo htmlspecialchars($d['respuesta']); ?><br>
            <?php if(!$d['correcta']): ?>
                <strong>Respuesta correcta:</strong> <?php echo htmlspecialchars($d['respuesta_correcta']); ?><br>
                <em>❌ Respuesta incorrecta</em>
            <?php else: ?>
                <em>✔ Correcta</em>
            <?php endif; ?>
        </div>
    <?php endforeach; ?>

    <a href="take_exam.php?exam_id=<?= $exam_id ?>">Volver al examen</a>
    <a href="../index.php">Volver al inicio</a>
</div>
</body>
</html>
