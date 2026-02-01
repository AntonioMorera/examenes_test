<?php
require 'includes/db.php';

$sql = "SELECT * FROM exams ORDER BY name";
$result = $conn->query($sql);

$dpl_previos = [];
$dpl_examen_recu = [];
$dpl_ssh = [];
$dpl_otros = [];
$dor_exams = [];
$pdf_ut2 = []; 

if($result->num_rows > 0){
    while($row = $result->fetch_assoc()){
        if(stripos($row['name'], 'EXAMEN UT2') !== false){
            $pdf_ut2[] = $row;
        } elseif(strpos($row['name'], 'ÉXAMEN DPL U1 Conocimientos previos')===0){
            $dpl_previos[] = $row;
        } elseif(strpos($row['name'], 'DOR')===0){
            $dor_exams[] = $row;
        } elseif(stripos($row['name'], 'DPL RECUPERACION') !== false){
            $dpl_examen_recu[] = $row;
        } elseif(stripos($row['name'], 'SSH') !== false){
            $dpl_ssh[] = $row;
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
    <?php if(!empty($dpl_previos) || !empty($dpl_otros) || !empty($pdf_ut2)): ?>
    <div class="exam-section">
        <span class="toggle-btn" data-target="dpl">Despliegue de Aplicaciones Web [DPL]</span>
        <div id="dpl" class="exam-list">

            <?php if(!empty($dpl_previos)): ?>
            <div class="dpl-subsection">
                <h3>📝 Conocimientos Previos</h3>
                <ul>
                    <?php foreach($dpl_previos as $exam): ?>
                    <li>
                        <a href="#" class="btn-load-exam" data-exam-id="<?= $exam['id'] ?>"><?= $exam['name'] ?></a>
                        <button class="btn-show-questions" data-exam-id="<?= $exam['id'] ?>">Ver Preguntas</button>
                        <a href="#" class="btn-ranking" data-exam-id="<?= $exam['id'] ?>">Ver Ranking</a>
                    </li>
                    <?php endforeach; ?>
                </ul>
            </div>
            <?php endif; ?>

            <?php if(!empty($dpl_examen_recu)): ?>
            <div class="dpl-subsection">
                <h3>📝 Examenes de recuperacion</h3>
                <ul>
                    <?php foreach($dpl_examen_recu as $exam): ?>
                    <li>
                        <a href="#" class="btn-load-exam" data-exam-id="<?= $exam['id'] ?>"><?= $exam['name'] ?></a>
                        <button class="btn-show-questions" data-exam-id="<?= $exam['id'] ?>">Ver Preguntas</button>
                        <a href="#" class="btn-ranking" data-exam-id="<?= $exam['id'] ?>">Ver Ranking</a>
                    </li>
                    <?php endforeach; ?>
                </ul>
            </div>
            <?php endif; ?>

            <?php if(!empty($dpl_ssh)): ?>
            <div class="dpl-subsection">
                <h3>📝 Examen SSH</h3>
                <ul>
                    <?php foreach($dpl_ssh as $exam): ?>
                    <li>
                        <a href="#" class="btn-load-exam" data-exam-id="<?= $exam['id'] ?>"><?= $exam['name'] ?></a>
                        <button class="btn-show-questions" data-exam-id="<?= $exam['id'] ?>">Ver Preguntas</button>
                        <a href="#" class="btn-ranking" data-exam-id="<?= $exam['id'] ?>">Ver Ranking</a>
                    </li>
                    <?php endforeach; ?>
                </ul>
            </div>
            <?php endif; ?>

            <?php if(!empty($pdf_ut2)): ?>
            <div class="dpl-subsection">
                <h3>📄 PDFs Unidad 2</h3>
                <ul>
                    <?php foreach($pdf_ut2 as $exam): ?>
                    <li>
                        <a href="#" class="btn-load-exam" data-exam-id="<?= $exam['id'] ?>"><?= $exam['name'] ?></a>
                        <button class="btn-show-questions" data-exam-id="<?= $exam['id'] ?>">Ver Preguntas</button>
                        <a href="#" class="btn-ranking" data-exam-id="<?= $exam['id'] ?>">Ver Ranking</a>
                    </li>
                    <?php endforeach; ?>
                </ul>
            </div>
            <?php endif; ?>

            <?php if(!empty($dpl_otros)): ?>
            <div class="dpl-subsection">
                <h3>📚 Otros exámenes</h3>
                <ul>
                    <?php foreach($dpl_otros as $exam): ?>
                    <li>
                        <a href="#" class="btn-load-exam" data-exam-id="<?= $exam['id'] ?>"><?= $exam['name'] ?></a>
                        <button class="btn-show-questions" data-exam-id="<?= $exam['id'] ?>">Ver Preguntas</button>
                        <a href="#" class="btn-ranking" data-exam-id="<?= $exam['id'] ?>">Ver Ranking</a>
                    </li>
                    <?php endforeach; ?>
                </ul>
            </div>
            <?php endif; ?>

        </div>
    </div>
    <?php endif; ?>

    <!-- EXÁMENES DOR -->
    <?php if(!empty($dor_exams)): ?>
    <div class="exam-section">
        <span class="toggle-btn" data-target="dor">Diseño de Interfaces Web [DOR]</span>
        <div id="dor" class="exam-list">
            <ul>
                <?php foreach($dor_exams as $exam): ?>
                <li>
                    <a href="#" class="btn-load-exam" data-exam-id="<?= $exam['id'] ?>"><?= $exam['name'] ?></a>
                    <button class="btn-show-questions" data-exam-id="<?= $exam['id'] ?>">Ver Preguntas</button>
                    <a href="#" class="btn-ranking" data-exam-id="<?= $exam['id'] ?>">Ver Ranking</a>
                </li>
                <?php endforeach; ?>
            </ul>
        </div>
    </div>
    <?php endif; ?>
</div>


<!-- MODAL -->
<div id="modalOverlay"></div>
<div id="examQuestionsContainer">
    <button id="closeQuestions" onclick="closeQuestions()">Cerrar</button>
    <div id="examQuestions"></div>
</div>

<script src="js/main.js"></script>
</body>
</html>
