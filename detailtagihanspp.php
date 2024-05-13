<?php
//koneksi ke database
$conn = new mysqli("localhost", "root", " ", "telkompay");

//cek koneksi
if ($conn->connect_error) {
    die("Koneksi gagal: " . $conn->connect_error);
}

//query untuk mengambil data
$sql = "SELECT * FROM detail_tagihan_spp";
$result = $conn->query($sql);

//konversi data menjadi JSON
$data = array();
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $data[] = $row;
    }
}
echo json_encode($data);

//tutup koneksi
$conn->close();
?>

