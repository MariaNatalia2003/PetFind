<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $name = htmlspecialchars($_POST['name']);
    $email = htmlspecialchars($_POST['email']);
    $message = htmlspecialchars($_POST['message']);

    // Aqui você pode adicionar o código para enviar um e-mail ou salvar os dados no banco de dados

    echo "Obrigado por entrar em contato, $name! Entraremos em contato com você em breve.";
}
?>
