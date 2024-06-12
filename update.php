<?php
session_start();
include 'connect.php';

if (!isset($_SESSION['username']) || $_SESSION['level'] != 1) {
    header("Location: login.php");
    exit;
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $id = $_POST['id'];
    $title = $_POST['title'];
    $about = $_POST['about'];
    $content = $_POST['content'];
    $category = $_POST['category'];
    $archive = isset($_POST['archive']) ? 1 : 0;

    $sql = "UPDATE vrsta SET naslov=?, sazetak=?, tekst=?, kategorija=?, arhiva=? WHERE id=?";
    $stmt = $dbc->prepare($sql);
    $stmt->bind_param('ssssii', $title, $about, $content, $category, $archive, $id);
    $stmt->execute();
    $stmt->close();
    $dbc->close();
    header("Location: admin.php");
}
?>
