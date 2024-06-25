<?php
session_start();

// Inclui o arquivo de conexão com o banco de dados
include_once('conexao_mysql.php');

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Obtém e sanitiza os dados do formulário
    $name = htmlspecialchars($_POST['name']);
    $email = htmlspecialchars($_POST['email']);
    $message = htmlspecialchars($_POST['message']);

    // Escapa os dados para evitar SQL injection
    $name = $conexao->real_escape_string($name);
    $email = $conexao->real_escape_string($email);
    $message = $conexao->real_escape_string($message);

    // Monta a consulta SQL para inserir os dados na tabela
    $sql = "INSERT INTO contato (nome, email, mensagem) VALUES ('$name', '$email', '$message')";

    // Executa a consulta e verifica se deu certo
    if ($conexao->query($sql) === TRUE) {
        echo "Obrigado por entrar em contato, $name! Entraremos em contato com você em breve.";
    } else {
        echo "Erro ao inserir os dados no banco de dados: " . $conexao->error;
    }
} 
$conexao->close();
?>
