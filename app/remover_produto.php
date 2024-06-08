<?php
session_start();
require_once '../app/config.php';
include('../app/protect.php');

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['produto_id'])) {
  // Obtém o ID do produto a ser excluído
  $produtoId = $_POST['produto_id'];

  // Exclui o produto do banco de dados
  $query = "DELETE FROM carrinho_compras WHERE ID_livro = '$produtoId'";
  $result = mysqli_query($conn, $query);

  die(
    "<script> javascript:window.location='../public/carrinho.php'</script>" );
}
?>

