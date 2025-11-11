<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

require 'includes/db.php';

// Consulta para obtener todos los exámenes ordenados por nombre
$sql = "SELECT * FROM exams ORDER BY name";
$result = $conn->query($sql);

// Arrays para separar los exámenes
$u1_exams = [];
$other_exams = [];

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        // Si el nombre contiene exactamente "ÉXAMEN DPL U1 Conocimientos previos"
        if (strpos($row['name'], 'ÉXAMEN DPL U1 Conocimientos previos') !== false) {
            $u1_exams[] = $row;
        } else {
            $other_exams[] = $row;
        }
    }
}
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Exámenes</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<div class="container">
    <h1>Lista de Exámenes</h1>

    <!-- EXAMENES CONOCIMIENTOS PREVIOS -->
    <?php if (!empty($u1_exams)) : ?>
        <div class="u1-exams">
            <h2>EXAMENES CONOCIMIENTOS PREVIOS</h2>
            <ul>
            <?php foreach($u1_exams as $exam): ?>
                <li>
                    <a href="public/take_exam.php?exam_id=<?= $exam['id'] ?>"><?= $exam['name'] ?></a>
                    <a href="public/ranking.php?exam_id=<?= $exam['id'] ?>" class="btn-ranking">Ver Ranking</a>
                </li>
            <?php endforeach; ?>
            </ul>
        </div>
    <?php endif; ?>

    <!-- Otros exámenes -->
    <?php if (!empty($other_exams)) : ?>
        <div class="other-exams">
            <h2>Otros Exámenes</h2>
            <ul>
            <?php foreach($other_exams as $exam): ?>
                <li>
                    <a href="public/take_exam.php?exam_id=<?= $exam['id'] ?>"><?= $exam['name'] ?></a>
                    <a href="public/ranking.php?exam_id=<?= $exam['id'] ?>" class="btn-ranking">Ver Ranking</a>
                </li>
            <?php endforeach; ?>
            </ul>
        </div>
    <?php endif; ?>
</div>
</body>
</html>
