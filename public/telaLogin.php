<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Login</title>
    <link rel="stylesheet" href="../assets/css/Login.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
        integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
</head>
<body>
    <div class="container">
        <div class="content first-content">
            <div class="first-column">
                <h2 class="title title-primary">Bem vindo!</h2>
                <p class="description description-primary">
                    Para se manter conectado conosco</p>
                <p class="description description-primary">Por favor faça login com suas informações pessoais
                </p>
                <button id="signin" class="btn btn-primary">Entrar</button>
            </div>    
            <div class="second-column">
                <h2 class="title title-second">Crie sua conta!</h2>
                
                <form class="form" action="../app/register.php" method="post">
                    <label class="label-input" for="">
                        <i class="far fa-user icon-modify"></i>
                        <input type="text" name="nome" placeholder="Name">
                    </label>
                    <label class="label-input" for="">
                        <i class="far fa-user icon-modify"></i>
                        <input type="text" name="sobrenome" placeholder="sobrenome">
                    </label>
                    
                    <label class="label-input" for="">
                        <i class="far fa-envelope icon-modify"></i>
                        <input type="email" name="email" placeholder="Email">
                    </label>
                    
                    <label class="label-input" for="">
                        <i class="fas fa-lock icon-modify"></i>
                        <input type="password" name="senha" placeholder="Password">
                    </label>
                    
                    
                    <button class="btn btn-second">Cadastra-se</button>        
                </form>
            </div><!-- second column -->
        </div><!-- first content -->
        <div class="content second-content">
            <div class="first-column">
                <h2 class="title title-primary">olá amigo!
                </h2>
                <p class="description description-primary">Insira seus dados pessoais
                </p>
                <p class="description description-primary">e comece a jornada conosco
                </p>
                <button id="signup" class="btn btn-primary">inscrever-se</button>
            </div>
            <div class="second-column">
                <h2 class="title title-second">Entrar</h2>
                <form class="form" action="../app/login.php" method="post">
               
                
                    <label class="label-input" for="">
                        <i class="far fa-envelope icon-modify"></i>
                        <input type="email" name="email" placeholder="Email">
                    </label>
                
                    <label class="label-input" for="">
                        <i class="fas fa-lock icon-modify"></i>
                        <input type="password" name="senha" placeholder="Password">
                    </label>
                
                    <a class="password" href="#">Esqueceu a senha</a>
                    <button class="btn btn-second" type="submit">Entrar</button>
                </form>
            </div><!-- second column -->
        </div><!-- second-content -->
    </div>
    <script src="../assets/js/Login.js"></script>
    
</body>
</html>