<?php 


if (isset($_POST['adicionar_carrinho'])) {
    // Verificar se o usuário está autenticado
    if (isset($_SESSION['user'])) {
        // O usuário está autenticado, continuar com a adição ao carrinho
        if (isset($_POST['ID_livro'])) {
            $ID_livro = $_POST['ID_livro'];

            // Consulta SQL para selecionar os detalhes do livro com base no ID
            $query = "SELECT * FROM livros WHERE ID_livro = ?";
            $stmt = mysqli_prepare($conn, $query);
            mysqli_stmt_bind_param($stmt, "i", $ID_livro);
            mysqli_stmt_execute($stmt);
            $result = mysqli_stmt_get_result($stmt);

            // Verificar se a consulta foi bem-sucedida
            if ($result) {
                // Verificar se o livro foi encontrado
                if (mysqli_num_rows($result) > 0) {
                    // Obter os detalhes do livro
                    $livro = mysqli_fetch_assoc($result);

                    // Inserir o item do carrinho no banco de dados
                    $query_insert = "INSERT INTO carrinho_compras (ID_usuario, ID_livro, quantidade, preco, nome) VALUES (?, ?, 1, ?, ?)";
                    $stmt_insert = mysqli_prepare($conn, $query_insert);
                    mysqli_stmt_bind_param($stmt_insert, "iids", $_SESSION['user']['ID_usuario'], $ID_livro, $livro['Preco'], $livro['Titulo']);
                    $result_insert = mysqli_stmt_execute($stmt_insert);

                    if ($result_insert) {
                        echo "<script>alert('Item adicionado ao carrinho.');</script>";
                    } else {
                        echo "Erro ao adicionar item ao carrinho: " . mysqli_error($conn);
                    }
                } else {
                    echo "Livro não encontrado.";
                }
            } else {
                echo "Erro na consulta: " . mysqli_error($conn);
            }
        } else {
            echo "ID do livro não especificado.";
        }
    } else {
        // O usuário não está autenticado, fornecer feedback
        echo "Você precisa estar logado para adicionar itens ao carrinho.";
    }
}





?>