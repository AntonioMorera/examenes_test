<?php
require '../includes/db.php';

$exam_id = isset($_GET['exam_id']) ? intval($_GET['exam_id']) : 0;

// Obtener nombre del examen
$exam_sql = "SELECT name FROM exams WHERE id = ?";
$stmt_exam = $conn->prepare($exam_sql);
$stmt_exam->bind_param("i", $exam_id);
$stmt_exam->execute();
$res_exam = $stmt_exam->get_result();
if($res_exam->num_rows > 0){
    $exam = $res_exam->fetch_assoc();
    echo '<h2 style="text-align:center; margin-bottom:20px; color:#333;">Examen: '.htmlspecialchars($exam['name']).'</h2>';
}
$stmt_exam->close();

// Obtener preguntas
$q_sql = "SELECT * FROM questions WHERE exam_id = ?";
$stmt_q = $conn->prepare($q_sql);
$stmt_q->bind_param("i", $exam_id);
$stmt_q->execute();
$res_q = $stmt_q->get_result();

if($res_q->num_rows > 0){
    $num = 1;
    while($q = $res_q->fetch_assoc()){
        $q_id = $q['id'];

        // Obtener opciones correctas
        $o_sql = "SELECT * FROM options WHERE question_id = ? AND is_correct = 1";
        $stmt_o = $conn->prepare($o_sql);
        $stmt_o->bind_param("i", $q_id);
        $stmt_o->execute();
        $res_o = $stmt_o->get_result();

        if($res_o->num_rows > 0){
            $correct_option = $res_o->fetch_assoc();
            $correct_answer = $correct_option['label'].' - '.$correct_option['text'];
        } else {
            $correct_answer = '(No hay respuesta correcta definida)';
        }
        $stmt_o->close();

        echo '<div class="pregunta correcta">';
        echo '<strong>Pregunta '.$num.':</strong> '.htmlspecialchars($q['text']).'<br>';
        echo '<strong>Respuesta correcta:</strong> '.htmlspecialchars($correct_answer);
        echo '<em>✔ Correcta</em>';
        echo '</div>';

        $num++;
    }
} else {
    echo "<p>No hay preguntas para este examen.</p>";
}
?>
