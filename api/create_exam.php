<?php
require_once __DIR__ . '/../src/Exam.php';
require_once __DIR__ . '/../src/Question.php';
header('Content-Type: application/json');

$data = json_decode(file_get_contents('php://input'), true);
if (!$data) { echo json_encode(['ok'=>false, 'error'=>'JSON inválido']); exit; }

$exam = new Exam();
$qModel = new Question();

$exam_id = $exam->create($data['title'], $data['description']);
foreach ($data['questions'] as $q) {
    $qModel->create($exam_id, $q['text'], $q['options']);
}

echo json_encode(['ok'=>true, 'exam_id'=>$exam_id]);
