<?php
session_start();
include 'connect.php';

if (isset($_POST['login'])) {

    $prijavaImeKorisnika = $_POST['username'];
    $prijavaLozinkaKorisnika = $_POST['lozinka'];

    $sql = "SELECT username, password, level FROM users WHERE username = ?";
    $stmt = $dbc->prepare($sql);
    $stmt->bind_param('s', $prijavaImeKorisnika);
    $stmt->execute();
    $stmt->store_result();
    $stmt->bind_result($imeKorisnika, $lozinkaKorisnika, $levelKorisnika);
    $stmt->fetch();

    if (password_verify($prijavaLozinkaKorisnika, $lozinkaKorisnika) && $stmt->num_rows > 0) {
        $_SESSION['username'] = $imeKorisnika;
        $_SESSION['level'] = $levelKorisnika;
        header("Location: admin.php");
        exit;
    } else {
        $uspjesnaPrijava = false;
    }

    $stmt->close();
    $dbc->close();
}
?>
<!DOCTYPE html>
<html>
<head>
    <title>Prijava</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }
        .container {
            width: 300px;
            margin: 0 auto;
            margin-top: 40px;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }
      
        input[type="text"],
        input[type="password"] {
            width: calc(100% - 20px);
            margin-bottom: 10px;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }
        button[type="submit"],
        button[type="button"] {
            width: 100%;
            padding: 10px;
            background-color: #4caf50;
            color: #fff;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }
        button[type="button"] {
            background-color: #007bff;
            margin-top: 10px;
        }
        button[type="submit"]:hover,
        button[type="button"]:hover {
            background-color: #007b99;
        }
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
    </style>
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
    <?php if (isset($_SESSION['message'])): ?>
            <p><?php echo htmlspecialchars($_SESSION['message']); ?></p>
            <?php unset($_SESSION['message']);  ?>
        <?php endif; ?>
        <form action="login.php" method="POST">
            <label for="username">Korisničko ime:</label>
            <input type="text" name="username" id="username"><br>
            <label for="lozinka">Lozinka:</label>
            <input type="password" name="lozinka" id="lozinka"><br>
            <button type="submit" name="login">Prijava</button>
            <button type="button" onclick="window.location.href='register.php';">Registracija</button>
        </form>
    </div>
</body>
</html>
