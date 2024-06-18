<?php

include_once("conexao_mysql.php");

$email = $_POST['email'];
$password = $_POST['password'];

// Verificar se o usuário existe no banco de dados
$query = mysqli_query($conexao, "SELECT * FROM user WHERE email = '$email'");
if (!$query) {
    die("Erro na consulta: " . mysqli_error($conexao));
}

$usuario = mysqli_fetch_assoc($query);

if ($usuario) {
    
    if (password_verify($password, $usuario['senha'])) {
        $_SESSION['usuario'] = $email;
        header('Location: ../pages/tela_inicial.html');
        exit();
    } else {
        header('Location: ../pages/login.html');
    }
} else {
    header('Location: ../pages/cadastro.html');
}
?>
