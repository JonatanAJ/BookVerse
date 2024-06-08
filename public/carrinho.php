<?php
session_start();
require_once '../app/config.php';
include('../app/protect.php');


// Inicializa o subtotal
$subTotal = 0;

?>

<!doctype html>
<html lang="pt-br">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>BookVerse</title>
  <link rel="icon" href="img/logoicone.ico" type="image/png">
  <link rel="stylesheet" href="../assets/css/carrinho.css">

  <!--fonte-->
  <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,700&display=swap" rel="stylesheet">
  <!-- Font Awesome -->
  <script src="https://kit.fontawesome.com/bf7e05c402.js" crossorigin="anonymous"></script>

  <link rel='stylesheet' href='https://cdn-uicons.flaticon.com/2.1.0/uicons-regular-straight/css/uicons-regular-straight.css'>
  <link rel='stylesheet' href='https://cdn-uicons.flaticon.com/2.1.0/uicons-regular-rounded/css/uicons-regular-rounded.css'>
  <link rel='stylesheet' href='https://cdn-uicons.flaticon.com/2.1.0/uicons-thin-straight/css/uicons-thin-straight.css'>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>

<body>
<header>
    <div class="container" id="nav-container">
      <nav class="navbar navbar-expand-lg  navbar-dark">
        <a class="navbar-brand" href="index.php">
          <img id="logo" style="align-items: center;" src="../assets/img/logo2.png" alt="ByteTech">
        </a>
      </nav>
    </div>
  </header>
  <main class="row mt-3 m-0">
    <div class="col-12 col-md-8">
      <div class="table-responsive p-2 pb-0  rounded bg-warning">
        <table class="table border border-3 mb-2">
          <thead>
            <tr>
              <th scope="col">Produto</th>
              <th scope="col">Preço</th>
              <th scope="col">Quantidade</th>
              <th scope="col">Total</th>
              <th></th>
            </tr>
          </thead>
          <tbody>
            <?php 
            // Consulta SQL para selecionar os itens do carrinho do usuário
            $ID_usuario = $_SESSION['user']['ID_usuario'];
            $query = "SELECT * FROM carrinho_compras WHERE ID_usuario = '$ID_usuario'";
            $result = mysqli_query($conn, $query);

            // Verifica se há itens de carrinho associados ao usuário
            if ($result && mysqli_num_rows($result) > 0) {
              while ($row = mysqli_fetch_assoc($result)) {
                $ID_livro = $row['ID_livro'];
                $nome = $row['nome'];
                $preco = $row['preco'];
                $quantidade = $row['Quantidade'];

                // Calcula o total do produto
                $totalProduto = $preco * $quantidade;
                $subTotal += $totalProduto;
            ?>
                <tr>
                  <th scope="row"><?php echo $nome; ?></th>
                  <td>R$ <?php echo number_format($preco, 2); ?></td>
                  <td>
                    <input class="aumento" type="number" style="text-align: center; width: 50px; border-radius: 5px;" id="quantidade_<?php echo $ID_livro; ?>" min="1" value="<?php echo $quantidade; ?>" max="5" onchange="atualizarQuantidade(<?php echo $ID_livro; ?>)">
                  </td>
                  <td id="total_<?php echo $ID_livro; ?>">R$ <?php echo number_format($totalProduto, 2); ?></td>
                  <td>
                    <form method="post" action="../app/remover_produto.php">
                      <input type="hidden" name="produto_id" value="<?php echo $ID_livro; ?>">
                      <button class="btn btn-danger excluir_produto" data-produto-id="<?php echo $ID_livro; ?>">Excluir</button>
  </td>
                    </form>
                  </td>
                </tr>
            <?php 
              } // Fim do loop while
            } else {
              echo "<tr><td colspan='5'>Nenhum item no carrinho.</td></tr>";
            }
            ?>
          </tbody>
        </table>
      </div>
    </div>
    <div class="col-12 col-md-4 mt-3 mt-md-0">
      <div class="table-responsive p-2 rounded bg-warning pb-0">
        <table class="table table-striped border border-3 mb-2">
          <thead>
            <tr>
              <th>Resumo da compra</th>
              <th></th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <th>Sub-total</th>
              <td id="subtotal">R$ <?php echo number_format($subTotal, 2); ?></td>
            </tr>
            <tr>
              <th>Frete</th>
              <td>R$ 12</td>
            </tr>
            <tr>
              <th>Total</th>
              <td id="total">R$ <?php echo number_format($subTotal + 12, 2); ?></td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
  </main>


  <tbody>
  
</tbody>



<script src='../assets/js/index.js'></script>
<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>

</html>
