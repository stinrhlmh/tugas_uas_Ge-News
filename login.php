<?php
session_start();

$host = "localhost";
$user = "root";
$pass = "";
$dbname = "genews";

$Email = $_POST['Email'];
$Password = $_POST['Password'];

$conn = new mysqli($host, $user, $pass, $dbname);


if ($conn->connect_error) {
    die("Koneksi gagal: " . $conn->connect_error);
}


$sql = "SELECT * FROM user WHERE Email = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("s", $Email);
$stmt->execute();
$result = $stmt->get_result();

if ($result->num_rows === 1) {
    $row = $result->fetch_assoc();

    if (password_verify($Password, $row['Password'])) {
        $_SESSION['Username'] = $row['Username'];
        $_SESSION['Email'] = $row['Email'];
        $_SESSION['role'] = $row['role'];

        if ($row['role'] === 'admin') {
            header("Location: admin.html");
        } else {
            header("Location: dashboard.html");
        }
        exit();
    } else {
        echo "<script>alert('Password salah!'); window.location.href='login.html';</script>";
    }
} else {
    echo "<script>alert('Email tidak ditemukan!'); window.location.href='login.html';</script>";
}

$conn->close();
?>
