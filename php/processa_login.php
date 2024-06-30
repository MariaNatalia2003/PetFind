<?php

include_once("conexao_mysql.php");

function validar_senha($senha) {
    // Lista de strings proibidas
    $strings_proibidas = [
        '""', "'", '\"', ';', '--', '/*', '*/', 'xp_', 'exec', 'execute',
        'drop', 'insert', 'select', 'delete', 'update', 'alter', 'create', 
        'shutdown', 'grant', 'revoke'
    ];

    // Verifica se a senha contém alguma das strings proibidas
    foreach ($strings_proibidas as $proibida) {
        if (strpos($senha, $proibida) !== false) {
            return false;
        }
    }

    return true;
}

$email = $_POST['email'];
$password = $_POST['password'];

if(validar_senha($password)){
    // Verificar se o usuário existe no banco de dados
    $query = mysqli_query($conexao, "SELECT * FROM user WHERE email = '$email'");
    if (!$query) {
        die("Erro na consulta: " . mysqli_error($conexao));
    }

    $usuario = mysqli_fetch_assoc($query);

    if ($usuario) {
    
        if (password_verify($password, $usuario['senha'])) {
            session_start();

            $_SESSION['usuario'] = $email;
            header('Location: ../pages/index_user.php');
            exit();
        } else {
            $error = "Usuário ou senha incorretos";
            header("Location: ../pages/login.php?error=" . urlencode($error));
        }
    } else {
        $error = "Usuário não encontrado. Por favor, faça cadastro.";
        header("Location: ../pages/login.php?error=" . urlencode($error));
}
}
else{
    $error = "Não é possível usar essa senha";
        header("Location: ../pages/login.php?error=" . urlencode($error));
}
?>
