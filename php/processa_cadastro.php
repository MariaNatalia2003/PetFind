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


$nome = $_POST['nome'];
$email = $_POST['email'];
$password = $_POST['password'];
if (strlen($password) < 8) {
    $error = "A senha deve conter no minimo 8 digitos.";
    header("Location: ../pages/cadastro.php?error=" . urlencode($error));
}
else{
    if(validar_senha($password)){
        //Verifica se o email existe
        $emailExiste = 0;
        $emailExiste = mysqli_query($conexao, "SELECT * FROM user WHERE email = '$email'");
    
        if(mysqli_num_rows($emailExiste) == 0){
            // Criptografar a senha
            $hashed_password = password_hash($password, PASSWORD_DEFAULT);
    
            // Inserir os dados no banco de dados
            $query = mysqli_query($conexao, "INSERT INTO user(nome, email, senha) VALUES ('$nome', '$email', '$hashed_password')");
    
            // Redirecionar para a página de sucesso
            header("Location: ../pages/index_user.php");
            exit();
        } else {
            echo "Erro ao cadastrar o usuário.";
            echo "Email já cadastrado.";
        }
    }
    else{
        $error = "Senha inválida. Por favor, utilize outra.";
        header("Location: ../pages/cadastro.php?error=" . urlencode($error));   
    }
}



?>
