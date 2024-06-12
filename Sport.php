<!DOCTYPE html>
<html lang="hr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Naslov Vijesti</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<?php 
              include 'connect.php'; 
              define('UPLPATH', 'images/'); 
             ?>
    <header>
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
    </header>

    <article>
    <section id="category1" class="news-category">
            <h2>Sport</h2>
            <div class="news-row">
    <?php 
   $query = "SELECT * FROM vrsta WHERE kategorija='sport' ORDER BY id DESC";
    $result = mysqli_query($dbc, $query); 
    $i=0; 
    while ($row = mysqli_fetch_array($result)) {

        echo '<a href="clanak.php?id='.$row['id'].'" class = news-item>';
        echo '<img src="' . UPLPATH . $row['slika'] . '" alt="' . $row['naslov'] . '">';
        echo '<h4 class="title">' . $row['naslov'] . '</h4>'; 
        echo '<p>' . $row['sazetak'] . '</p>';
        echo '</a>';
    }
        ?>
       </div>
       </section>

       </article>

<footer>
    <p>&copy; 2024 Naslov Vijesti. Sva prava pridržana.</p>
</footer>
</body>
</html>
