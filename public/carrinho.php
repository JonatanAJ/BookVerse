<?php
session_start();
require_once '../app/config.php';
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
              <th scope="col">preço</th>
              <th scope="col">quantidade</th>
              <th scope="col">total</th>
              <th></th>

            </tr>
          </thead>
          <tbody>
            <tr>
              <th scope="row">1</th>
              <td>23.99</td>
              <td><input type="number" id="quantidade" min="1" max="#"></td>
              <td>22</td>
              <td><button>excluir</button></td>
            </tr>
            <tr>
              <th scope="row">2</th>
              <td>Jacob</td>
              <td><input type="number" id="quantidade" min="1" max="#"></td>
              <td>22</td>
              <td><button>excluir</button></td>
            </tr>
            <tr>
              <th scope="row">3</th>
              <td>Jacob</td>
                <td><input type="number" id="quantidade" min="1" max="#"></td>
                <td>22</td>
                <td><button>excluir</button></td>
            </tr>

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
              <td>23.99</td>
            </tr>
            <tr>
              <th>Frete</th>
              <td>12</td>
            </tr>
            <tr>
              <th>Total</th>
              <td>233</td>
            </tr>   
          </tbody>
        </table>
      </div>

    </div>
  </main>



  <script src='../assets/js/index.js'></script>
  <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>

</html>