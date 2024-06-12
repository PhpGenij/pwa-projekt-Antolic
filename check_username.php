<?php
include 'connect.php';

if (isset($_POST['username'])) {
    $username = $_POST['username'];
    $sql = "SELECT username FROM users WHERE username = ?";
    $stmt = $dbc->prepare($sql);
    $stmt->bind_param('s', $username);
    $stmt->execute();
    $stmt->store_result();

    if ($stmt->num_rows > 0) {
        echo 'exists';
    } else {
        echo 'available';
    }

    $stmt->close();
    $dbc->close();
}
?>
