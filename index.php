<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

require 'includes/db.php';

// Consulta para mostrar los exámenes
$sql = "SELECT * FROM exams";
$result = $conn->query($sql);
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
    <ul>
        <?php
        if ($result->num_rows > 0) {
            while($row = $result->fetch_assoc()) {
                echo "<div class='exam'>";
                 echo "<li><a href='public/take_exam.php?exam_id=".$row['id']."'>".$row['name']."</a></li>";
                 echo "<a href='public/ranking.php?exam_id=" . $row['id'] . "' class='btn-ranking'>Ver Ranking</a>";

                echo "</div>";
            }
        } else {
            echo "<li class='no-exams'>No hay exámenes</li>";
        }
        ?>
    </ul>
</div>
</body>

</html>
