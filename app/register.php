<?php
require_once 'config.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Verifica se todos os campos obrigatórios estão preenchidos
    if (empty($_POST['nome']) || empty($_POST['email']) || empty($_POST['senha'])) {
        echo "<script>alert('Por favor, preencha todos os campos obrigatórios.')</script>";
        echo "<script>location.href='../public/telaLogin.php'</script>";
        exit; // Encerra o script
    }

    // Captura os dados do formulário
    $nome = $_POST['nome'];
    $sobrenome = isset($_POST['sobrenome']) ? $_POST['sobrenome'] : '';
    $email = $_POST['email'];
    $senha = $_POST['senha'];

    // Verifica se o e-mail já está em uso
    $sql_check_email = "SELECT * FROM usuarios WHERE email=?";
    $stmt_check_email = $conn->prepare($sql_check_email);
    $stmt_check_email->bind_param("s", $email);
    $stmt_check_email->execute();
    $result_check_email = $stmt_check_email->get_result();

    if ($result_check_email->num_rows > 0) {
        echo "<script>alert('O email já está em uso.')</script>";
        echo "<script>location.href='../public/telaLogin.php'</script>";
    } else {
        // Insere o novo usuário se o e-mail não estiver em uso
        $sql_insert_user = "INSERT INTO usuarios (nome, sobrenome, email, senha) VALUES (?, ?, ?, ?)";
        $stmt_insert_user = $conn->prepare($sql_insert_user);
        $stmt_insert_user->bind_param("ssss", $nome, $sobrenome, $email, $senha);

        if ($stmt_insert_user->execute() === TRUE) {
            echo "Cadastro realizado com sucesso!";
            header("Location: ../public/telaLogin.php");
        } else {
            echo "Erro ao cadastrar: " . $stmt_insert_user->error;
        }
    }

    // Fecha a declaração preparada
    $stmt_check_email->close();
}
?>

