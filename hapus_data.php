<?php
//koneksi ke database
$conn = new mysqli("localhost", "root", " ", "telkompay");

//cek koneksi
if ($conn->connect_error) {
    die("Koneksi gagal: " . $conn->connect_error);
}

//ambil id dari parameter GET
$id = $_GET['id'];

//query untuk menghapus data
$sql = "DELETE FROM detail_tagihan_spp WHERE id=".$id;

if ($conn->query($sql) === TRUE) {
    echo "Data berhasil dihapus";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

//tutup koneksi
$conn->close();
?>
