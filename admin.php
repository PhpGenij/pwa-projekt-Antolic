<?php
session_start();
include 'connect.php';

if (!isset($_SESSION['username']) || $_SESSION['level'] != 1) {
    $imeKorisnika = isset($_SESSION['username']) ? $_SESSION['username'] : 'Korisnik';
    $_SESSION['message'] = "Bok $imeKorisnika! Uspješno ste prijavljeni, ali niste administrator.";
    header("Location: login.php");
    exit;
}

if (isset($_POST['select_news'])) {
    $id = $_POST['news_id'];
    $query = "SELECT * FROM vrsta WHERE id = $id";
    $result = $dbc->query($query);
    $row = $result->fetch_assoc();

    if (!$row) {
        echo "Vijest nije pronađena.";
        exit;
    }
} else {
    $query = "SELECT id, naslov FROM vrsta";
    $result = $dbc->query($query);
}
?>
<!DOCTYPE html>
<html>
<head>
    <style>
        header {
            text-align: center;
            background-color: #464040;
            padding: 20px;
        }

        .header-img {
            width: 200px;
            height: 150px;
        }

        nav ul {
            list-style: none;
            padding: 0;
        }

        nav ul li {
            display: inline;
            margin: 0 10px;
        }

        nav ul li a {
            font-weight: bold;
            text-decoration: none;
            color: #ffffff;
        }

        .delete-button {
            background-color: red;
            color: white;
            border: none;
            padding: 10px;
            cursor: pointer;
            font-weight: bold;
        }
    </style>
    <title>Administracija vijesti</title>
    <link rel="stylesheet" type="text/css" href="admin_style.css">
</head>
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
<body>
    <div class="container">
        <?php if (!isset($_POST['select_news'])): ?>
            <h1>Odaberite vijest za ažuriranje</h1>
            <form method="post" action="admin.php">
                <label for="news_id">Izaberite vijest:</label>
                <select name="news_id" id="news_id">
                    <?php while ($row = $result->fetch_assoc()): ?>
                        <option value="<?php echo $row['id']; ?>"><?php echo $row['naslov']; ?></option>
                    <?php endwhile; ?>
                </select>
                <button type="submit" name="select_news">Odaberi</button>
            </form>
        <?php else: ?>
            <h1>Ažuriraj vijest</h1>
            <form action="update.php" method="post" enctype="multipart/form-data">
                <input type="hidden" name="id" value="<?php echo $row['id']; ?>">
                <label for="title">Naslov vijesti:</label>
                <input type="text" name="title" value="<?php echo $row['naslov']; ?>"><br>
                <label for="about">Kratki sadržaj vijesti:</label>
                <textarea name="about" cols="30" rows="10"><?php echo $row['sazetak']; ?></textarea><br>
                <label for="content">Sadržaj vijesti:</label>
                <textarea name="content" cols="30" rows="10"><?php echo $row['tekst']; ?></textarea><br>
                <label for="pphoto">Slika:</label>
                <input type="file" name="pphoto"><br>
                <label for="category">Kategorija:</label>
                <select name="category">
                    <option value="sport" <?php if ($row['kategorija'] == 'sport') echo 'selected'; ?>>Sport</option>
                    <option value="kultura" <?php if ($row['kategorija'] == 'kultura') echo 'selected'; ?>>Kultura</option>
                </select><br>
                <label for="archive">Spremiti u arhivu:</label>
                <input type="checkbox" name="archive" <?php if ($row['arhiva'] == 1) echo 'checked'; ?>><br>
                <button type="submit">Ažuriraj</button>
            </form>
            <form action="delete.php" method="post" style="display:inline;">
                <input type="hidden" name="id" value="<?php echo $row['id']; ?>">
                <button type="submit" class="delete-button">Obriši</button>
            </form>
        <?php endif; ?>
        <?php $dbc->close(); ?>
    </div>
</body>
</html>
