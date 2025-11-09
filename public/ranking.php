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

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Ranking - <?= htmlspecialchars($exam['name']) ?></title>
    <style>
        body {
            background: linear-gradient(to right, #74ebd5, #ACB6E5);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: flex-start;
            padding: 50px 20px;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        .container {
            max-width: 800px;
            width: 100%;
            background: #fff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.1);
        }

        h2 {
            text-align: center;
            font-size: 32px;
            margin-bottom: 30px;
            color: #333;
        }

        table {
            border-collapse: collapse;
            width: 100%;
            margin-top: 20px;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
        }

        th, td {
            padding: 12px 15px;
            text-align: center;
        }

        th {
            background-color: #007BFF;
            color: #fff;
            font-size: 16px;
        }

        td {
            background-color: #f4f4f4;
            font-size: 15px;
        }

        tr:nth-child(even) td {
            background-color: #e9e9e9;
        }

        .btn-back {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #28a745;
            color: #fff;
            border-radius: 6px;
            text-decoration: none;
            font-weight: bold;
            transition: background-color 0.3s ease;
        }

        .btn-back:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
<div class="container">
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

    <a href="../index.php" class="btn-back">Volver al inicio</a>
</div>
</body>
</html>

<?php
$stmt_exam->close();
$stmt_scores->close();
$conn->close();
?>
