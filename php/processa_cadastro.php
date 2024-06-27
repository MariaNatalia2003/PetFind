<?php
include_once("conexao_mysql.php");

$nome = $_POST['nome'];
$email = $_POST['email'];
$password = $_POST['password'];

//Verifica se o email existe
$emailExiste = 0;
$emailExiste = mysqli_query($conexao, "SELECT * FROM user WHERE email = '$email'");

if(mysqli_num_rows($emailExiste) == 0){
    // Criptografar a senha
    $hashed_password = password_hash($password, PASSWORD_DEFAULT);

    // Inserir os dados no banco de dados
    $query = mysqli_query($conexao, "INSERT INTO user(nome, email, senha) VALUES ('$nome', '$email', '$hashed_password')");

    // Redirecionar para a página de sucesso
    header("Location: ../pages/login.html");
    exit();
} else {
    echo "Erro ao cadastrar o usuário.";
    echo "Email já cadastrado.";
}
?>
