<?php

$result_mangas = "SELECT * FROM livros WHERE Categoria IN ('HQ', 'Mangás') ORDER BY RAND();";
$resultado_mangas = mysqli_query($conn, $result_mangas);

$result_romance_juvenil = "SELECT * FROM livros WHERE Categoria IN ('Romance', 'Ficção Juvenil') ORDER BY RAND();";
$resultado_romance_juvenil = mysqli_query($conn, $result_romance_juvenil);

?>
