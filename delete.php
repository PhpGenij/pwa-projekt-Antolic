<?php
session_start();
include 'connect.php';

if (!isset($_SESSION['username']) || $_SESSION['level'] != 1) {
    header("Location: login.php");
    exit;
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $id = $_POST['id'];

    $sql = "DELETE FROM vrsta WHERE id=?";
    $stmt = $dbc->prepare($sql);
    $stmt->bind_param('i', $id);
    $stmt->execute();
    $stmt->close();
    $dbc->close();

    header("Location: admin.php");
    exit;
}
?>
