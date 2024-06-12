<?php
include 'connect.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {

   
    $dbc = mysqli_connect('localhost', 'root', '', 'vijesti') 
    or die('Error connecting to MySQL server: ' . mysqli_connect_error());

   
    $title = mysqli_real_escape_string($dbc, $_POST['title']);
    $about = mysqli_real_escape_string($dbc, $_POST['about']);
    $content = mysqli_real_escape_string($dbc, $_POST['content']);
    $category = mysqli_real_escape_string($dbc, $_POST['category']);
    $date = date('d.m.Y.');
    $archive = isset($_POST['archive']) ? 1 : 0;

    if (isset($_FILES['pphoto']) && $_FILES['pphoto']['error'] === UPLOAD_ERR_OK) {
        $picture = $_FILES['pphoto']['name'];
        $target_dir = 'images/' . basename($picture);
        move_uploaded_file($_FILES['pphoto']['tmp_name'], $target_dir);
    } else {
        $picture = ''; 
    }

    $query = "INSERT INTO vrsta (datum, naslov, sazetak, tekst, slika, kategorija, arhiva) 
              VALUES ('$date', '$title', '$about', '$content', '$picture', '$category', '$archive')";
    
    $result = mysqli_query($dbc, $query) or die('Error querying database.');
    mysqli_close($dbc);
    header("Location: unos.html");
}
?>