<?php
    session_start();

    include_once('conexao_mysql.php');

    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $nome = $_POST['nome'];
        $idade = $_POST['idade'];
        $cor = $_POST['cor'];
        $raca = $_POST['raca'];
        $genero = $_POST['genero'];
        $descricao = $_POST['descricao'];
        $historia = $_POST['historia'];
        $tipo = $_POST['tipo'];
        $email = $_SESSION['usuario'];

        $sql = "INSERT INTO pets (nome, idade, cor, raca, genero, descricao, historia, tipo, adotado, emailUsuario) VALUES ('$nome', '$idade', '$cor', '$raca', '$genero', '$descricao', '$historia', '$tipo', false, '$email')";

        if ($conexao->query($sql) === TRUE) {
            echo "Pet doado com sucesso!";
        } else {
            echo "Erro: " . $sql . "<br>" . $conexao->error;
        }
    }
    $conexao->close();
?>