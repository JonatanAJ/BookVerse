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
  <link rel="stylesheet" href="../assets/css/telalogin2.css">

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
      <!-- add essa class -->

      <nav class="navbar navbar-expand-lg  navbar-dark">
        <a class="navbar-brand" href="index.php">
          <img id="logo" src="../assets/img/logo2.png" alt="BookVerse">
        </a>


        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-links"
          aria-controls="navbar-links" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-end" id="navbar-links">
          <div class="navbar-nav">
            <a class="nav-item nav-link"  id="loginBtn" onclick="login()" > Logar</a>
            <a class="nav-item nav-link" id="registerBtn" onclick="register()" > Cadastrar</a>
         
          </div>
        </div>
      </nav>
    </div>
  </header>

  

<section>
  

<!----------------------------- Form box ----------------------------------->    
    <div class="form-box">
        
        <!------------------- login form -------------------------->

        <div class="login-container" id="login">
            <div class="top">
                <span>Nao tem uma conta? <a href="#" onclick="register()">Registre</a></span>
                <header>Login</header>
            </div>
            <form class="form" action="../app/login.php" method="post">
            <div class="input-box">
                <input type="email" name="email" class="input-field" placeholder=" Email">
                <i class="bx bx-user"></i>
            </div>
            <div class="input-box">
                <input type="password" name="senha" class="input-field" placeholder="Senha">
                <i class="bx bx-lock-alt"></i>
            </div>
            <div class="input-box">
                <input type="submit" class="submit" value="Entrar">
            </div>
</form>
            <div class="two-col">
                <div class="one">
                    <input type="checkbox" id="login-check">
                    <label for="login-check"> Lembre de mim</label>
                </div>
                <div class="two">
                    <label><a href="#">Esqueceu a senha?</a></label>
                </div>
            </div>
        </div>

        <!------------------- registration form -------------------------->
       
        <div class="register-container" id="register">
            <div class="top">
                <span>Já tem uma conta? <a href="#" onclick="login()">Entre</a></span>
                <header>Cadastrar</header>
            </div>
            <div class="two-forms">
                <div class="input-box">
                     <form class="form" action="../app/register.php" method="post">
                    <input type="text" name="nome" class="input-field" placeholder="Nome">
                    <i class="bx bx-user"></i>
                </div>
                <div class="input-box">
                    <input type="text" name="sobrenome" class="input-field" placeholder="Sobrenome">
                    <i class="bx bx-user"></i>
                </div>
            </div>
            <div class="input-box">
                <input type="text" name="email" class="input-field" placeholder="Email">
                <i class="bx bx-envelope"></i>
            </div>
            <div class="input-box">
                <input type="password" name="senha" class="input-field" placeholder="Senha">
                <i class="bx bx-lock-alt"></i>
            </div>
            <div class="input-box">
                <input type="submit" class="submit" value="Resistrar">
            </div> </form>
            <div class="two-col">
                <div class="one">
                    <input type="checkbox" id="register-check">
                    <label for="register-check"> Lmebre de mim</label>
                </div>
                <div class="two">
                    <label><a href="#">Terms & conditions</a></label>
                </div>
            </div>
        </div>
   
    </div>

</section>

<footer class="bg-dark py-5 mt-5">
    <div class="container text-light text-center">
      <p class="display-5 mb-3">BookVerse</p>
      <small class="text-white-50">&copy;</small>
    </div>
  </footer>


<script>
   
   function myMenuFunction() {
    var i = document.getElementById("navMenu");

    if(i.className === "nav-menu") {
        i.className += " responsive";
    } else {
        i.className = "nav-menu";
    }
   }
 
</script>

<script>

    var a = document.getElementById("loginBtn");
    var b = document.getElementById("registerBtn");
    var x = document.getElementById("login");
    var y = document.getElementById("register");

    function login() {
        x.style.left = "4px";
        y.style.right = "-520px";
        a.className += " white-btn";
        b.className = "btn";
        x.style.opacity = 1;
        y.style.opacity = 0;
    }

    function register() {
        x.style.left = "-510px";
        y.style.right = "5px";
        a.className = "btn";
        b.className += " white-btn";
        x.style.opacity = 0;
        y.style.opacity = 1;
    }

</script>
  <script src='../assets/js/index.js'></script>
  <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>

</html>