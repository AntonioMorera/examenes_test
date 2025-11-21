<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

require 'includes/db.php';

// Consulta para obtener todos los exámenes ordenados por nombre
$sql = "SELECT * FROM exams ORDER BY name";
$result = $conn->query($sql);

// Arrays para separar los exámenes
$dpl_previos = [];
$dpl_otros = [];
$dor_exams = [];
$other_exams = [];

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {

        // DPL: exámenes de Conocimientos Previos
        if (strpos($row['name'], 'ÉXAMEN DPL U1 Conocimientos previos') === 0) {
            $dpl_previos[] = $row;

        // DOR: exámenes que empiezan con DOR
        } elseif (strpos($row['name'], 'DOR') === 0) {
            $dor_exams[] = $row;

        // Todo lo que no sea DOR ni previos, se añade a DPL automáticamente
        } else {
            $dpl_otros[] = $row;
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

    <!-- EXÁMENES DPL -->
    <?php if (!empty($dpl_previos) || !empty($dpl_otros)) : ?>
        <div class="exam-section">
            <span class="toggle-btn" onclick="toggleSection('dpl')">EXÁMENES DPL</span>
            <div id="dpl" class="exam-list">
                
                <?php if (!empty($dpl_previos)) : ?>
                    <div class="dpl-subsection">
                        <h3>Conocimientos Previos</h3>
                        <ul class="exam-grid">
                            <?php foreach($dpl_previos as $exam): ?>
                                <li>
                                    <a href="public/take_exam.php?exam_id=<?= $exam['id'] ?>"><?= $exam['name'] ?></a>
                                    <a href="public/ranking.php?exam_id=<?= $exam['id'] ?>" class="btn-ranking">Ver Ranking</a>
                                </li>
                            <?php endforeach; ?>
                        </ul>
                    </div>
                <?php endif; ?>

                <?php if (!empty($dpl_otros)) : ?>
                    <div class="dpl-subsection">
                        <h3><?= empty($dpl_previos) ? 'Otros exámenes DPL' : 'Otros exámenes' ?></h3>
                        <ul class="exam-grid">
                            <?php foreach($dpl_otros as $exam): ?>
                                <li>
                                    <a href="public/take_exam.php?exam_id=<?= $exam['id'] ?>"><?= $exam['name'] ?></a>
                                    <a href="public/ranking.php?exam_id=<?= $exam['id'] ?>" class="btn-ranking">Ver Ranking</a>
                                </li>
                            <?php endforeach; ?>
                        </ul>
                    </div>
                <?php endif; ?>

            </div>
        </div>
    <?php endif; ?>

    <!-- EXÁMENES DOR -->
    <?php if (!empty($dor_exams)) : ?>
        <div class="exam-section">
            <span class="toggle-btn" onclick="toggleSection('dor')">EXÁMENES DOR</span>
            <div id="dor" class="exam-list">
                <ul class="exam-grid">
                    <?php foreach($dor_exams as $exam): ?>
                        <li>
                            <a href="public/take_exam.php?exam_id=<?= $exam['id'] ?>"><?= $exam['name'] ?></a>
                            <a href="public/ranking.php?exam_id=<?= $exam['id'] ?>" class="btn-ranking">Ver Ranking</a>
                        </li>
                    <?php endforeach; ?>
                </ul>
            </div>
        </div>
    <?php endif; ?>

</div>

<script>
function toggleSection(id) {
    const div = document.getElementById(id);
    div.style.display = (div.style.display === 'block') ? 'none' : 'block';
}
</script>
</body>
</html>
