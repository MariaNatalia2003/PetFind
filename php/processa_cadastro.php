<?php
include_once("conexao_mysql.php");

$nome = $_POST['nome'];
$email = $_POST['email'];
$password = $_POST['password'];

// Criptografar a senha
$hashed_password = password_hash($password, PASSWORD_DEFAULT);

// Inserir os dados no banco de dados
$query = mysqli_query($conexao, "INSERT INTO user(nome, email, senha) VALUES ('$nome', '$email', '$hashed_password')");

if ($query) {
    // Redirecionar para a página de sucesso
    header("Location: ../pages/login.html");
    exit();
} else {
    echo "Erro ao cadastrar o usuário.";
}
?>
