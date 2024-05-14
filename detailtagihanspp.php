<?php
header('Content-Type: application/json');

$host = 'localhost';
$user = 'root';
$password = '';
$dbname = 'telkompay';

try {
    $pdo = new PDO("mysql:host=$host;dbname=$dbname", $user, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $stmt = $pdo->query("SELECT * FROM detail_tagihan_spp");
    $data = $stmt->fetchAll(PDO::FETCH_ASSOC);

    echo json_encode($data);
} catch (PDOException $e) {
    echo json_encode(['error' => 'Connection failed: ' . $e->getMessage()]);
}
?>