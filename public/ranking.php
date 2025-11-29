<?php  
include_once '../includes/db.php';

if (!isset($_GET['exam_id'])) {
    die("Examen no especificado.");
}

$exam_id = intval($_GET['exam_id']);

$sql_exam = "SELECT name FROM exams WHERE id = ?";
$stmt_exam = $conn->prepare($sql_exam);
$stmt_exam->bind_param("i", $exam_id);
$stmt_exam->execute();
$result_exam = $stmt_exam->get_result();

if ($result_exam->num_rows === 0) {
    die("Examen no encontrado.");
}

$exam = $result_exam->fetch_assoc();

// Obtener ranking con tiempo
$sql_scores = "
    SELECT u.name AS user_name, r.score, r.time_taken
    FROM results r
    JOIN users u ON r.user_id = u.id
    WHERE r.exam_id = ?
    ORDER BY r.score DESC, r.time_taken ASC
";
$stmt_scores = $conn->prepare($sql_scores);
$stmt_scores->bind_param("i", $exam_id);
$stmt_scores->execute();
$result_scores = $stmt_scores->get_result();
?>

<div class="ranking-container">
    <h2>Ranking del examen: <?= htmlspecialchars($exam['name']) ?></h2>

    <?php if ($result_scores->num_rows > 0): ?>
        <table>
            <tr>
                <th>Posición</th>
                <th>Estudiante</th>
                <th>Puntuación</th>
                <th>Tiempo</th>
            </tr>
            <?php $pos = 1; while($row = $result_scores->fetch_assoc()): ?>
                <tr>
                    <td><?= $pos++ ?></td>
                    <td><?= htmlspecialchars($row['user_name']) ?></td>
                    <td><?= $row['score'] ?></td>
                    <td><?= gmdate("i:s", $row['time_taken']) ?></td>
                </tr>
            <?php endwhile; ?>
        </table>
    <?php else: ?>
        <p style="text-align:center; margin-top:20px;">No hay resultados para este examen aún.</p>
    <?php endif; ?>
</div>

<?php
$stmt_exam->close();
$stmt_scores->close();
$conn->close();
?>
