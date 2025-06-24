<?php
// Koneksi ke database
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "genews";

// Ambil data dari form
$Nama = $_POST['Nama'];
$Alamat = $_POST['Alamat'];
$Email = $_POST['Email'];
$Username_user = $_POST['Username'];
$Password_user = password_hash($_POST['Password'], PASSWORD_DEFAULT);

// Buat koneksi
$conn = new mysqli($servername, $username, $password, $dbname);

// Cek koneksi
if ($conn->connect_error) {
    die("Koneksi gagal: " . $conn->connect_error);
}

// Query menggunakan prepared statement
$sql = "INSERT INTO user (Nama, Alamat, Email, Username, Password, role) VALUES (?, ?, ?, ?, ?, 'user')";
$stmt = $conn->prepare($sql);

if ($stmt) {
    $stmt->bind_param("sssss", $Nama, $Alamat, $Email, $Username_user, $Password_user);
    if ($stmt->execute()) {
        echo "<script>alert('Registrasi berhasil!'); window.location.href='login.html';</script>";
    } else {
        echo "Error saat menyimpan data: " . $stmt->error;
    }
    $stmt->close();
} else {
    echo "Error: " . $conn->error;
}

$conn->close();
?>
