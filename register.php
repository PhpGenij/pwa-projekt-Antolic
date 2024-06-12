<?php
include 'connect.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $ime = $_POST['ime'];
    $prezime = $_POST['prezime'];
    $username = $_POST['username'];
    $lozinka = $_POST['pass'];
    $hashed_password = password_hash($lozinka, PASSWORD_BCRYPT);
    $razina = 0;
    $registriranKorisnik = '';
    $msg = '';

    $sql = "SELECT username FROM users WHERE username = ?";
    $stmt = $dbc->prepare($sql);
    $stmt->bind_param('s', $username);
    $stmt->execute();
    $stmt->store_result();

    if ($stmt->num_rows > 0) {
        $msg = 'Korisničko ime već postoji!';
    } else {
        $sql = "INSERT INTO users (first_name, last_name, username, password, level) VALUES (?, ?, ?, ?, ?)";
        $stmt = $dbc->prepare($sql);
        $stmt->bind_param('ssssi', $ime, $prezime, $username, $hashed_password, $razina);
        $stmt->execute();
        $registriranKorisnik = true;
    }

    $stmt->close();
    $dbc->close();
}
?>
<!DOCTYPE html>
<html>
<head>
    <title>Registracija</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }
        .container {
            width: 300px;
            margin: 0 auto;
            margin-top:20px;
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
        button[type="submit"] {
            width: calc(100% - 20px);
            padding: 10px;
            background-color: #4caf50;
            color: #fff;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }
        button[type="submit"]:hover {
            background-color: #45a049;
        }
        span.error-msg {
            color: red;
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
        <?php if (isset($registriranKorisnik) && $registriranKorisnik): ?>
            <p>Korisnik je uspješno registriran!</p>
        <?php else: ?>
            <form action="register.php" method="POST">
                <div>
                    <label for="ime">Ime: </label>
                    <input type="text" name="ime" id="ime">
                </div>
                <div>
                    <label for="prezime">Prezime: </label>
                    <input type="text" name="prezime" id="prezime">
                </div>
                <div>
                    <label for="username">Korisničko ime:</label>
                    <?php if (isset($msg)): ?><span class="error-msg"><?php echo $msg; ?></span><?php endif; ?>
                    <input type="text" name="username" id="username">
                </div>
                <div>
                    <label for="pass">Lozinka: </label>
                    <input type="password" name="pass" id="pass">
                </div>
                <div>
                    <label for="passRep">Ponovite lozinku: </label>
                    <input type="password" name="passRep" id="passRep">
                </div>
                <button type="submit">Registracija</button>
            </form>
        <?php endif; ?>
    </div>
</body>
</html>