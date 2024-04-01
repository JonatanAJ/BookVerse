<?php
require_once '../app/config.php';

switch ($_POST["acao"]) {
    case 'editar':
        $id = $_POST["id"];
        $nome = $_POST["Nome"];
        $sobrenome = $_POST["Sobrenome"];
        $email = $_POST["Email"];
        $senha = md5($_POST["Senha"]);

        // Atualizar os dados do usuário no banco de dados
        $sql = "UPDATE usuarios SET
              Nome='{$nome}',
              Sobrenome='{$sobrenome}',
              Email='{$email}',
              Senha='{$senha}'
              WHERE ID_usuario='{$id}'";

        $res = $conn->query($sql);

        if ($res == true) {
            echo "<script>alert('editado com sucesso');</script>";
        } else {
            echo "<script>alert('erro ao editar');</script>";
        }
        break;

    case 'excluir':
        $id = $_POST['id'];

        // Excluir o usuário do banco de dados
        $sql = "DELETE FROM usuarios WHERE id={$id}";
        $res = $conn->query($sql);

        if ($res == true) {
            echo "<script>alert('excluido com sucesso');</script>";
            echo "<script>location.href='?page=listar';</script>";
        } else {
            echo "<script>alert('erro ao excluir');</script>";
            echo "<script>location.href='?page=listar';</script>";
        }
        break;
}
?>
