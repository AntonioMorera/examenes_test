<?php
require_once __DIR__ . '/db.php';

class Question {
    private $pdo;
    public function __construct() { $this->pdo = DB::get(); }

    public function create($exam_id, $text, $options) {
        $stmt = $this->pdo->prepare("INSERT INTO questions (exam_id, text) VALUES (?, ?)");
        $stmt->execute([$exam_id, $text]);
        $qid = $this->pdo->lastInsertId();

        $ins = $this->pdo->prepare("INSERT INTO options (question_id, text, is_correct) VALUES (?, ?, ?)");
        foreach ($options as $opt) {
            $ins->execute([$qid, $opt['text'], $opt['is_correct'] ? 1 : 0]);
        }
    }
}
