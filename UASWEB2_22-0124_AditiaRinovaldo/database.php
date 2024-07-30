<?php
$server = "localhost";
$username = "root";
$password = "";
$database = "penjualan3";

// Membuat koneksi
$conn = new mysqli($server, $username, $password, $database);

// Mengecek koneksi
if ($conn->connect_error) {
    die("Koneksi gagal: " . $conn->connect_error);
}


?>
