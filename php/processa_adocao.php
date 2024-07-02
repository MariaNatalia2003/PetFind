<?php
    session_start();

    include_once('conexao_mysql.php');

    // Verifica se os dados foram enviados via POST
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $pet_id = $_POST['pet_id'];
        
        $email = $_SESSION['usuario'];

        $sql = "UPDATE pets SET adotado = true, emailUsuarioAdocao = '$email', data_adocao = NOW() WHERE id = $pet_id";

        if ($conexao->query($sql) === TRUE) {
            echo "Pet adotado com sucesso!";
        } else {
            echo "Erro: " . $sql . "<br>" . $conexao->error;
        }
    }
    $conexao->close();
?>