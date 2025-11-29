<?php
// take_exam.php (VERSIÓN PARA AJAX)

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

require_once __DIR__ . '/../includes/db.php';
$conn->set_charset("utf8mb4");

$exam_id = isset($_GET['exam_id']) ? intval($_GET['exam_id']) : 1;

$exam_sql = "SELECT * FROM exams WHERE id = $exam_id";
$exam_result = $conn->query($exam_sql);

if($exam_result->num_rows == 0) {
    echo "<p>Examen no encontrado.</p>";
    exit;
}

$exam = $exam_result->fetch_assoc();

$questions_sql = "SELECT * FROM questions WHERE exam_id = $exam_id";
$questions_result = $conn->query($questions_sql);

echo "<h1>".htmlspecialchars($exam['name'])."</h1>";
?>

<form id="ajaxExamForm" method="POST">
    <input type="hidden" name="exam_id" value="<?= $exam_id ?>">
    <input type="hidden" name="time_taken" id="time_taken" value="0">

<?php
$total_questions = $questions_result->num_rows;
$question_number = 1;

if ($total_questions > 0) {
    while($question = $questions_result->fetch_assoc()) {

        echo "<p class='progress-text'>Pregunta $question_number de $total_questions</p>";
        echo "<progress value='$question_number' max='$total_questions'></progress>";

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

    <button type="button" class="submit-btn">Enviar respuestas</button>

</form>

