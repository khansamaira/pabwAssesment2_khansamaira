<?php
if (isset($_GET['id'])) {
    $id = intval($_GET['id']);

    $host = 'localhost';
    $user = 'root';
    $password = '';
    $dbname = 'telkompay';

    try {
        $pdo = new PDO("mysql:host=$host;dbname=$dbname", $user, $password);
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        $stmt = $pdo->prepare("DELETE FROM detail_tagihan_spp WHERE id = ?");
        $stmt->execute([$id]);

        if ($stmt->rowCount() > 0) {
            echo json_encode(['message' => "Data dengan ID $id telah dihapus."]);
        } else {
            echo json_encode(['error' => 'Data tidak ditemukan atau tidak dapat dihapus.']);
        }
    } catch (PDOException $e) {
        echo json_encode(['error' => 'Connection failed: ' . $e->getMessage()]);
    }
}
?>
