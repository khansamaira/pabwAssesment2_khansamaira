<?php
$servername = 'localhost';
$username = 'root';
$password = ' ';
$dbname = "telkompay";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$id_tagihan = $_POST['id_tagihan'];
$id_siswa = $_POST['id_siswa'];
$bulan = $_POST['bulan'];
$tahun = $_POST['tahun'];
$jumlah_tagihan = $_POST['jumlah_tagihan'];
$tanggal_jatuh_tempo = $_POST['tanggal_jatuh_tempo'];
$status_pembayaran = $_POST['status_pembayaran'];
$tanggal_pembayaran = $_POST['tanggal_pembayaran'];

$sql = "UPDATE detail_tagihan_spp SET 
            id_siswa = '$id_siswa', 
            bulan = '$bulan', 
            tahun = '$tahun', 
            jumlah_tagihan = '$jumlah_tagihan', 
            tanggal_jatuh_tempo = '$tanggal_jatuh_tempo', 
            status_pembayaran = '$status_pembayaran', 
            tanggal_pembayaran = '$tanggal_pembayaran' 
        WHERE id_tagihan = $id_tagihan";

if ($conn->query($sql) === TRUE) {
    echo json_encode(["message" => "Record updated successfully"]);
} else {
    echo json_encode(["error" => "Error updating record: " . $conn->error]);
}

$conn->close();
?>
