<?php 
session_start();

?>
<!doctype html>
<html lang="pt-br">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>BookVerse</title>
  <link rel="icon" href="../assets/img/logoicone.ico" type="image/png">
  <link rel="stylesheet" href="../assets/css/styles.css">

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
        <a class="navbar-brand" href="index.php">
          <img id="logo" src="../assets/img/logo2.png" alt="BookVerse">
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
  <div class="text-header">Descubra um universo de conhecimento com a BookVerse &#10024;</div>

  <div id="carouselExampleIndicators" class="carousel slide">
    <div class="carousel-indicators">
      <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active"
        aria-current="true" aria-label="Slide 1"></button>
      <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"
        aria-label="Slide 2"></button>
      <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"
        aria-label="Slide 3"></button>
    </div>
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img src="../assets/img/book2.png" class="d-block w-100" alt="...">
      </div>
      <div class="carousel-item">
        <img src="../assets/img/book3.webp" class="d-block w-100" alt="...">
      </div>
      <div class="carousel-item">
        <img src="../assets/img/book5.webp" class="d-block w-100" alt="...">
      </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators"
      data-bs-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators"
      data-bs-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Next</span>
    </button>
  </div>
  <!--area dos cards-->
  <section>
    <h2>Mais Vendidos</h2>
    <div>
      <div class="rounded p-5 overflow-hidden" data-bs-loop="true">
        <div id="card-container" class="overflow-x-auto">
          <div class="card card-item-cr" >
            <div class="card-header">
              <img src="../assets/img/capa1.webp" class="card-img-top" alt="...">
              <p class="fw-bold">titulo do card</p class="fw-bold">
            </div>
            <div class="card-body">
            <a href="?adicionar=<?php echo $key?><button type="button" class="btn btn-primary">Compre</button></a>
            </div>
          </div>
          <div class="card card-item-cr" >
            <div class="card-header">
              <img src="../assets/img/capa10.jpg" class="card-img-top" alt="...">
              <p class="fw-bold">titulo do card</p class="fw-bold">
            </div>
            <div class="card-body">
              <button type="button" class="btn btn-primary" type="submit">Compre</button>
            </div>
          </div>
          <div class="card card-item-cr" >
            <div class="card-header">
              <img src="../assets/img/capa11.jpg" class="card-img-top" alt="...">
              <p class="fw-bold">titulo do card</p class="fw-bold">
            </div>
            <div class="card-body">
              <button type="button" class="btn btn-primary" type="submit">Compre</button>
            </div>
          </div>
          <div class="card card-item-cr" >
            <div class="card-header">
              <img src="../assets/img/capa8.webp" class="card-img-top" alt="...">
              <p class="fw-bold">titulo do card</p class="fw-bold">
            </div>
            <div class="card-body">
              <button type="button" class="btn btn-primary" type="submit">Compre</button>
            </div>
          </div>
          <div class="card card-item-cr" >
            <div class="card-header">
              <img src="../assets/img/capa9.jpg" class="card-img-top" alt="...">
              <p class="fw-bold">titulo do card</p class="fw-bold">
            </div>
            <div class="card-body">
              <button type="button" class="btn btn-primary" type="submit">Compre</button>
            </div>
          </div>
          <div class="card card-item-cr" >
            <div class="card-header">
              <img src="../assets/img/capa7.webp" class="card-img-top" alt="...">
              <p class="fw-bold">titulo do card</p class="fw-bold">
            </div>
            <div class="card-body">
              <button type="button" class="btn btn-primary" type="submit">Compre</button>
            </div>
          </div>
          <div class="card card-item-cr" >
            <div class="card-header">
              <img src="../assets/img/capa1.webp" class="card-img-top" alt="...">
              <p class="fw-bold">titulo do card</p class="fw-bold">
            </div>
            <div class="card-body">
              <button type="button" class="btn btn-primary" type="submit">Compre</button>
            </div>
          </div>
          <div class="card card-item-cr" >
            <div class="card-header">
              <img src="../assets/img/capa3.webp" class="card-img-top" alt="...">
              <p class="fw-bold">titulo do card</p class="fw-bold">
            </div>
            <div class="card-body">
              <button type="button" class="btn btn-primary" type="submit">Compre</button>
            </div>
          </div>
          <div class="card card-item-cr" >
            <div class="card-header">
              <img src="../assets/img/capa6.jpg" class="card-img-top" alt="...">
              <p class="fw-bold">titulo do card</p class="fw-bold">
            </div>
            <div class="card-body">
              <button type="button" class="btn btn-primary" type="submit">Compre</button>
            </div>
          </div>
          <div class="card card-item-cr" >
            <div class="card-header">
              <img src="../assets/img/capa3.webp" class="card-img-top" alt="...">
              <p class="fw-bold">titulo do card</p class="fw-bold">
            </div>
            <div class="card-body">
              <button type="button" class="btn btn-primary" type="submit">Compre</button>
            </div>
          </div>
          <div class="card card-item-cr" >
            <div class="card-header">
              <img src="../assets/img/capa2.webp" class="card-img-top" alt="...">
              <p class="fw-bold">titulo do card</p class="fw-bold">
            </div>
            <div class="card-body">
              <button type="button" class="btn btn-primary" type="submit">Compre</button>
            </div>
          </div>
          <div class="card card-item-cr" >
            <div class="card-header">
              <img src="../assets/img/capa4.webp" class="card-img-top" alt="...">
              <p class="fw-bold">titulo do card</p class="fw-bold">
            </div>
            <div class="card-body">
              <button type="button" class="btn btn-primary">Compre</button>
              
            </div>
          </div>
        </div>
        <!-- <button class="btn btn-primary" style="margin-top: 20px; margin-right: 50px;" onclick="previousCard('card-container', 'card-item-cr')">
          <i class="fi fi-rr-arrow-small-left"></i>
        </button>
        <button class="btn btn-primary" style="position: absolute; right: 0; margin-top: 20px; margin-right: 50px;"  onclick="passCard('next','card-container', 'card-item-cr')">
          <i class="fi fi-rr-arrow-small-right"></i>
        </button> -->
      </div>
    </div>
  </section>
  <section>
    <h2>HQ's e Mangas</h2>
    <div>
      <div class="rounded p-5 overflow-hidden" data-bs-loop="true">
        <div id="card-container" class="overflow-x-auto">
          <div class="card card-item-cr" >
            <div class="card-header">
              <img src="../assets/img/capa1.webp" class="card-img-top" alt="...">
              <p class="fw-bold">titulo do card</p class="fw-bold">
            </div>
            <div class="card-body">
             <button type="button" class="btn btn-primary">Compre</button>
            </div>
          </div>
          <div class="card card-item-cr" >
            <div class="card-header">
              <img src="../assets/img/capa10.jpg" class="card-img-top" alt="...">
              <p class="fw-bold">titulo do card</p class="fw-bold">
            </div>
            <div class="card-body">
              <button type="button" class="btn btn-primary">Compre</button>
            </div>
          </div>
          <div class="card card-item-cr" >
            <div class="card-header">
              <img src="../assets/img/capa11.jpg" class="card-img-top" alt="...">
              <p class="fw-bold">titulo do card</p class="fw-bold">
            </div>
            <div class="card-body">
              <button type="button" class="btn btn-primary">Compre</button>
            </div>
          </div>
          <div class="card card-item-cr" >
            <div class="card-header">
              <img src="../assets/img/capa8.webp" class="card-img-top" alt="...">
              <p class="fw-bold">titulo do card</p class="fw-bold">
            </div>
            <div class="card-body">
              <button type="button" class="btn btn-primary">Compre</button>
            </div>
          </div>
          <div class="card card-item-cr" >
            <div class="card-header">
              <img src="../assets/img/capa9.jpg" class="card-img-top" alt="...">
              <p class="fw-bold">titulo do card</p class="fw-bold">
            </div>
            <div class="card-body">
              <button type="button" class="btn btn-primary">Compre</button>
            </div>
          </div>
          <div class="card card-item-cr" >
            <div class="card-header">
              <img src="../assets/img/capa7.webp" class="card-img-top" alt="...">
              <p class="fw-bold">titulo do card</p class="fw-bold">
            </div>
            <div class="card-body">
              <button type="button" class="btn btn-primary">Compre</button>
            </div>
          </div>
          <div class="card card-item-cr" >
            <div class="card-header">
              <img src="../assets/img/capa1.webp" class="card-img-top" alt="...">
              <p class="fw-bold">titulo do card</p class="fw-bold">
            </div>
            <div class="card-body">
              <button type="button" class="btn btn-primary">Compre</button>
            </div>
          </div>
          <div class="card card-item-cr" >
            <div class="card-header">
              <img src="../assets/img/capa3.webp" class="card-img-top" alt="...">
              <p class="fw-bold">titulo do card</p class="fw-bold">
            </div>
            <div class="card-body">
              <a href="?adicionar=<?php echo $key?>"<button type="button" class="btn btn-primary">Compre</button></a>
            </div>
          </div>
          <div class="card card-item-cr" >
            <div class="card-header">
              <img src="../assets/img/capa6.jpg" class="card-img-top" alt="...">
              <p class="fw-bold">titulo do card</p class="fw-bold">
            </div>
            <div class="card-body">
              <button type="button" class="btn btn-primary">Compre</button>
            </div>
          </div>
          <div class="card card-item-cr" >
            <div class="card-header">
              <img src="../assets/img/capa3.webp" class="card-img-top" alt="...">
              <p class="fw-bold">titulo do card</p class="fw-bold">
            </div>
            <div class="card-body">
              <button type="button" class="btn btn-primary">Compre</button>
            </div>
          </div>
          <div class="card card-item-cr" >
            <div class="card-header">
              <img src="../assets/img/capa2.webp" class="card-img-top" alt="...">
              <p class="fw-bold">titulo do card</p class="fw-bold">
            </div>
            <div class="card-body">
              <button type="button" class="btn btn-primary">Compre</button>
            </div>
          </div>
          <div class="card card-item-cr" >
            <div class="card-header">
              <img src="../assets/img/capa4.webp" class="card-img-top" alt="...">
              <p class="fw-bold">titulo do card</p class="fw-bold">
            </div>
            <div class="card-body">
              <button type="button" class="btn btn-primary" type="submit">Compre</button>
              
            </div>
          </div>
        </div>
        <!-- <button class="btn btn-primary" style="margin-top: 20px; margin-right: 50px;" onclick="previousCard()">
          <i class="fi fi-rr-arrow-small-left"></i>
        </button>
        <button class="btn btn-primary" style="position: absolute; right: 0; margin-top: 20px; margin-right: 50px;"  onclick="nextCard()">
          <i class="fi fi-rr-arrow-small-right"></i>
        </button> -->
      </div>
    </div>
  </section>
  <footer class="bg-dark py-5 mt-5">
    <div class="container text-light text-center">
      <p class="display-5 mb-3">BookVerse</p>
      <small class="text-white-50">&copy;</small>
    </div>
  </footer>


  <script src='../assets/js/index.js'></script>
  <script src="https://code.jquery.com/jquery-3.7.1.min.js"
    integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
    crossorigin="anonymous"></script>
</body>

</html>
