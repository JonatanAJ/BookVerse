<?php

require_once '../app/config.php';

if($_SERVER["REQUEST_METHOD"] == "POST") {
    // Verifica se tanto o email quanto a senha estão preenchidos
    if (empty($_POST['email']) && empty($_POST['senha'])) {
        echo '<script>alert("Preencha seu email e senha")</script>';
        header("Location: ../public/telaLogin.php");
        exit; // Encerra o script
    }

    $email = $_POST['email'];
    $senha = $_POST['senha'];

    $sql = "SELECT * FROM usuarios WHERE email=? AND senha=?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("ss", $email, $senha);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows == 1) {
        session_start();
        $_SESSION['user'] = $result->fetch_assoc();
        header("Location: ../public/perfil.php");
    } else {
        echo '<script>alert("Email ou senha incorretos")</script>';
        header("Location: ../public/telaLogin.php");
    }
}


