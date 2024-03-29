<?php 


$result_mangas = "SELECT * FROM livros WHERE Categoria = 'Mangás';";
$resultado_mangas = mysqli_query($conn, $result_mangas);


if (mysqli_num_rows($resultado_mangas) > 0) {

    
    
} else {
    echo "Nenhum livro encontrado na categoria de Mangás.";
}
?>
