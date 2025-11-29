<?php
// submit_exam.php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

session_start();
require_once __DIR__ . '/../includes/db.php';
$conn->set_charset("utf8mb4");

// 1️⃣ Obtener exam_id
$exam_id = isset($_POST['exam_id']) ? (int)$_POST['exam_id'] : 0;

// 2️⃣ Recibir todas las respuestas enviadas
$respuestas = $_POST;
$total_preguntas = 0;
$aciertos = 0;
$detalles = [];

foreach($respuestas as $key => $option_id) {
    if(strpos($key, 'question_') === 0) {
        $total_preguntas++;

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

// 3️⃣ Calcular porcentaje y tiempo
$porcentaje = $total_preguntas > 0 ? round(($aciertos / $total_preguntas) * 100, 2) : 0;
$time_taken = isset($_POST['time_taken']) ? intval($_POST['time_taken']) : 0;

// 4️⃣ Subir ranking si se solicita
$message = '';
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['upload_score'])) {
    $score_to_insert = isset($_POST['score']) ? floatval($_POST['score']) : 0;
    $time_to_insert = isset($_POST['time_taken']) ? intval($_POST['time_taken']) : 0;

    if (isset($_SESSION['user_id'])) {
        $user_id = intval($_SESSION['user_id']);
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

    $stmt_result = $conn->prepare("INSERT INTO results (user_id, exam_id, score, time_taken) VALUES (?, ?, ?, ?)");
    $stmt_result->bind_param("iidi", $user_id, $exam_id, $score_to_insert, $time_to_insert);
    if ($stmt_result->execute()) {
        $message = "¡Puntuación subida al ranking con éxito! 🏆";
    } else {
        $message = "Error al subir la puntuación: " . $stmt_result->error;
    }
    $stmt_result->close();
}

// 5️⃣ Obtener info del examen
$sql_exam = "SELECT name FROM exams WHERE id = ?";
$stmt_exam = $conn->prepare($sql_exam);
$stmt_exam->bind_param("i", $exam_id);
$stmt_exam->execute();
$result_exam = $stmt_exam->get_result();
$exam = $result_exam->fetch_assoc();
?>

<div class="container modal-result">
    <h2>Resultados del examen: <?= htmlspecialchars($exam['name']) ?></h2>
    <div class="summary">
        <p>Total de preguntas: <?= $total_preguntas ?></p>
        <p>Respuestas correctas: <?= $aciertos ?></p>
        <p>Puntuación: <?= $porcentaje ?>%</p>
        <p>Tiempo empleado: <?= gmdate("i:s", $time_taken) ?> minutos</p>
    </div>

    <hr>

    <?php foreach($detalles as $d): ?>
        <div class="pregunta <?= $d['correcta'] ? 'correcta' : 'incorrecta'; ?>">
            <strong>Pregunta:</strong> <?= htmlspecialchars($d['pregunta']); ?><br>
            <strong>Tu respuesta:</strong> <?= htmlspecialchars($d['respuesta']); ?><br>
            <?php if(!$d['correcta']): ?>
                <strong>Respuesta correcta:</strong> <?= htmlspecialchars($d['respuesta_correcta']); ?><br>
                <em>❌ Respuesta incorrecta</em>
            <?php else: ?>
                <em>✔ Correcta</em>
            <?php endif; ?>
        </div>
    <?php endforeach; ?>

    <hr>

    <div class="upload-score">
        <form method="POST">
            <input type="hidden" name="exam_id" value="<?= $exam_id ?>">
            <input type="hidden" name="score" value="<?= $porcentaje ?>">
            <input type="hidden" name="time_taken" value="<?= $time_taken ?>">
            <input type="hidden" name="upload_score" value="1">

            <?php if (!isset($_SESSION['user_id'])): ?>
                <label>Tu nombre:</label>
                <input type="text" name="name" required>
            <?php endif; ?>

            <button type="submit" class="btn-upload-ranking">Subir al ranking 🏆</button>
            
        </form>

        <?php if(!empty($message)): ?>
            <p class="message"><?= $message ?></p>
            <button type="button" class="btn-view-ranking" data-exam-id="<?= $exam_id ?>">Ver ranking 🏆</button>
        <?php endif; ?>
    </div>
</div>
