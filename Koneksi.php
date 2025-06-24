<?php
$host = "localhost";
$user = "root";
$pass = "";
$dbname = "genews";


$conn = new mysqli($host, $user, $pass, $dbname);

if ($conn->connect_error) {
    die("Koneksi gagal: " . $conn->connect_error);
}
else{
    echo "berhasil masuk ke dalam database";
}
?>
