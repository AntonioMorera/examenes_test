<?php
// take_exam.php

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

// Conexión a la base de datos
require_once __DIR__ . '/../includes/db.php';
$conn->set_charset("utf8mb4");

// Obtener el ID del examen desde la URL, si no existe usar 1 por defecto
$exam_id = isset($_GET['exam_id']) ? intval($_GET['exam_id']) : 1;

// Traer información del examen
$exam_sql = "SELECT * FROM exams WHERE id = $exam_id";
$exam_result = $conn->query($exam_sql);

if($exam_result->num_rows == 0) {
    echo "Examen no encontrado.";
    exit;
}

$exam = $exam_result->fetch_assoc();

// Traer preguntas
$questions_sql = "SELECT * FROM questions WHERE exam_id = $exam_id";
$questions_result = $conn->query($questions_sql);
?>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<title><?= htmlspecialchars($exam['name']); ?></title>
<link rel="stylesheet" href="./css/take_exam.css">
</head>
<body>
<div class="container">
    <h1><?= htmlspecialchars($exam['name']); ?></h1>

    <form id="examForm" method="POST" action="submit_exam.php" onsubmit="setTimeTaken()">
        <input type="hidden" name="exam_id" value="<?= $exam_id ?>">
        <input type="hidden" name="time_taken" id="time_taken" value="0">

        <?php
        $total_questions = $questions_result->num_rows;
        $question_number = 1;

        if($total_questions > 0) {
            while($question = $questions_result->fetch_assoc()) {
                // Barra de progreso
                echo "<p class='progress-text'>Pregunta $question_number de $total_questions</p>";
                echo "<progress value='$question_number' max='$total_questions'></progress>";

                // Mostrar pregunta
                echo "<fieldset class='question-card'>";
                echo "<legend>" . htmlspecialchars($question['text']) . "</legend>";

                $q_id = $question['id'];
                $options_sql = "SELECT * FROM options WHERE question_id = $q_id";
                $options_result = $conn->query($options_sql);

                while($option = $options_result->fetch_assoc()) {
                    echo "<label class='option-label'>";
                    echo "<input type='radio' name='question_$q_id' value='".$option['id']."'> ";
                    echo htmlspecialchars($option['label']." - ".$option['text']);
                    echo "</label><br>";
                }

                echo "</fieldset><br>";
                $question_number++;
            }
        } else {
            echo "<p>No hay preguntas para este examen.</p>";
        }
        ?>

        <input type="submit" value="Enviar respuestas" class="submit-btn">
    </form>

    <a href="../index.php">Volver al inicio</a>
</div>

<script>
let startTime = Date.now();

function setTimeTaken() {
    let endTime = Date.now();
    let seconds = Math.floor((endTime - startTime) / 1000);
    document.getElementById('time_taken').value = seconds;
}
</script>
</body>
</html>
