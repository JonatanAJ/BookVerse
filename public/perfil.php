<?php

include('../app/protect.php');
include('../app/login.php');

$data = $_SESSION['user'];

?>

<!doctype html>
<html lang="pt-br">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>BookVerse</title>
  <link rel="icon" href="../assets/img/logoicone.ico" type="image/png">
  <link rel="stylesheet" href="../assets/css/carrinho.css">

  <!--fonte-->
  <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,700&display=swap" rel="stylesheet">
  <!-- Font Awesome -->
  <script src="https://kit.fontawesome.com/bf7e05c402.js" crossorigin="anonymous"></script>

  <link rel='stylesheet'
    href='https://cdn-uicons.flaticon.com/2.1.0/uicons-regular-straight/css/uicons-regular-straight.css'>
  <link rel='stylesheet'
    href='https://cdn-uicons.flaticon.com/2.1.0/uicons-regular-rounded/css/uicons-regular-rounded.css'>
  <link rel='stylesheet' href='https://cdn-uicons.flaticon.com/2.1.0/uicons-thin-straight/css/uicons-thin-straight.css'>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
    integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>

<body>
  <header>
    <div class="container" id="nav-container">
      <!-- add essa class -->

      <nav class="navbar navbar-expand-lg  navbar-dark">
        <a class="navbar-brand" href="index.html">
          <img id="logo" src="../assets/img/logo2.png" alt="ByteTech">
        </a>

        <form class="d-flex" role="search">
          <input class="form-control me-2" style="min-width:250px;" type="search" placeholder="O que você está procurando? " aria-label="Search">
          <button class="btn btn-outline" type="submit"><i class="fas fa-search"></i></button>
        </form>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-links"
          aria-controls="navbar-links" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-end" id="navbar-links">
          <div class="navbar-nav">
            <a class="nav-item nav-link" id="home-menu" href="telaLogin.php"> <i class="fi fi-rr-user"></i>Entrar</a>
            <a class="nav-item nav-link" id="about-menu" href="carrinho.php"> <i class="fi fi-rr-shopping-cart"></i>Carrinho</a>
            <a class="nav-item nav-link" id="services-menu" href="perfil.php"><i class="fi fi-rs-heart"></i>Meu perfil</a>
          </div>
        </div>
      </nav>
    </div>
  </header>
  <div class="text-header">Seja bem vindo a BookVerse <strong><?php echo $data['Nome'];?></strong> &#10024;</div>


<main class="row mt-3 m-0">
    <div class="col-12 col-md-8">
      <div class="table-responsive p-2 pb-0  rounded bg-warning">
        <table class="table border border-3 mb-2">
          <thead>
            <tr>
              <th scope="col">Nome</th>
              <th scope="col">Sobrenome</th>
              <th scope="col">Email</th>
              <th scope="col">Senha</th>
              <th scope="col">data do registro</th>
              <th></th>

            </tr>
          </thead>
          <tbody>
            <tr>
              <th><?=$data['Nome'];?></th>
              <th><?=$data['Sobrenome'];?></th>
              <th><?=$data['Email'];?></th>
              <th><?=$data['Senha'];?></th>
              <th><?=$data['Data_registro'];?>  </th>
            </tr>

          </tbody>
        </table>
      </div>
    </div>
    
  </main>
    <p>
       <button> <a href="../app/logout.php">Sair</a></button>
    </p>


  <script src='../assets/js/index.js'></script>
  <script src="https://code.jquery.com/jquery-3.7.1.min.js"
    integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
    crossorigin="anonymous"></script>
</body>

</html>