<?php
require_once "../includes/db.php";
$conn->set_charset("utf8mb4");

$exam_id = isset($_GET["exam_id"]) ? intval($_GET["exam_id"]) : 0;
if($exam_id <= 0){
    echo "<p>Examen no especificado.</p>";
    exit;
}

// Solo mostrar mensajes si se pide
$only_messages = isset($_GET['only_messages']);

$stmt = $conn->prepare("SELECT user_name, message, created_at FROM exam_chat WHERE exam_id=? ORDER BY id ASC LIMIT 50");
$stmt->bind_param("i", $exam_id);
$stmt->execute();
$result = $stmt->get_result();

if(!$only_messages): ?>
<h2>Chat del examen</h2>
<?php endif; ?>

<div id="chat-box" style="
    height:300px;
    overflow-y:auto;
    border:1px solid #ccc;
    padding:10px;
    background:white;
    border-radius:8px;
    margin-bottom:10px;">
    
    <?php while($row = $result->fetch_assoc()): ?>
        <p>
            <strong><?= htmlspecialchars($row['user_name']) ?>:</strong>
            <?= htmlspecialchars($row['message']) ?><br>
            <small style="color:#777;"><?= $row['created_at'] ?></small>
        </p>
        <hr>
    <?php endwhile; ?>
</div>

<?php if(!$only_messages): ?>
<form id="chatForm" method="POST">
    <input type="hidden" name="exam_id" value="<?= $exam_id ?>">

    <input type="text" name="name" placeholder="Tu nombre" required style="width:100%; padding:8px; margin-bottom:8px;">
    <textarea name="message" placeholder="Escribe un mensaje..." required style="width:100%; height:70px; padding:8px;"></textarea>
    <button type="submit" style="
        width:100%;
        padding:10px;
        background:#007BFF;
        color:white;
        border:none;
        border-radius:5px;
        font-weight:bold;">
        Enviar
    </button>
</form>
<?php endif; ?>
