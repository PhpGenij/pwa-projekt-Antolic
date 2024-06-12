<?php
include 'connect.php';
define('UPLPATH', 'images/'); 
echo '<link rel="stylesheet" href="style_clanak.css">';
$id = $_GET['id'];

echo'<header>
    <link rel="stylesheet" href="style.css">
        <img src="images/logo.png" alt="Naslov Vijesti" class="header-img">
        <nav>
            <ul>
                <li><a href="index.php">Početna</a></li>
                <li><a href="Sport.php">Sport</a></li>
                <li><a href="Kultura.php">Kultura</a></li>
                  <li><a href="login.php">Administracija</a></li>
                <li><a href="unos.html">Nova vijest</a></li>
            </ul>
        </nav>
    </header>';

echo '<div class="news-container">';
$query = "SELECT * FROM vrsta WHERE id = $id";
$result = mysqli_query($dbc, $query); 
if($row = mysqli_fetch_array($result)) {
    echo '<div class="news-row">';
    echo '<img class="news-image" src="' . UPLPATH . $row['slika'] . '" alt="' . $row['naslov'] . '">';
    echo '<div class="news-content">';
    echo '<h1 class="news-title">' . $row['naslov'] . '</h1>'; 
    echo '<p class="news-summary">' . $row['sazetak'] . '</p>';
    echo '<p class="news-text">' . $row['tekst'] . '</p>';
    echo '</div>'; // .news-content
    echo '</div>'; // .news-row
}
echo '</div>'; // .news-container
?>
