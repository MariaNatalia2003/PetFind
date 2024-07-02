<?php
    session_start();

    include_once('../php/conexao_mysql.php');

    // Verifica se os dados foram enviados via POST
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
            echo "<script>alert('Pet doado com sucesso!');</script>";
        } else {
            echo "<script>alert(Erro: " . $sql . "<br>" . $conexao->error . "');</script>";
        }
    }
    $conexao->close();
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Doar um Pet</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #e8f5e9; /* Cor de fundo verde clara */
        }
        .navbar, .btn-logout, .footer {
            background-color: #28a745;
        }
        .navbar-brand, .nav-link, .btn-logout, .footer p {
            color: white !important;
        }
        .container {
            margin-top: 50px;
            margin-bottom: 30px; /* Adiciona margem inferior */
        }
    </style>
</head>
<body>
    
    <nav class="navbar navbar-expand-lg navbar-dark">
        <a class="navbar-brand" href="index_user.php">PetFind</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="index_user.php">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="doar_pet.php">Doar um Pet</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="ver_pets_doado.php">Pets Doados</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="ver_pets_adotado.php">Pets Adotados</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link btn-logout" href="../php/logout.php">Logout</a>
                </li>
            </ul>
        </div>
    </nav>

    <div class="container">
        <h2 class="text-center mb-4">Doar um Pet</h2>
        <form action="doar_pet.php" method="POST" enctype="multipart/form-data">
            <div class="form-group">
                <label for="nome">Nome do Pet</label>
                <input type="text" class="form-control" id="nome" name="nome" required>
            </div>
            <div class="form-group">
                <label for="idade">Idade</label>
                <input type="text" class="form-control" id="idade" name="idade" required>
            </div>
            <div class="form-group">
                <label for="cor">Cor</label>
                <input type="text" class="form-control" id="cor" name="cor" required>
            </div>
            <div class="form-group">
                <label for="raca">Raça</label>
                <input type="text" class="form-control" id="raca" name="raca" required>
            </div>
            <div class="form-group">
                <label for="genero">Gênero</label>
                <input type="text" class="form-control" id="genero" name="genero" required>
            </div>
            <div class="form-group">
                <label for="descricao">Descrição</label>
                <textarea class="form-control" id="descricao" name="descricao" rows="3" required></textarea>
            </div>
            <div class="form-group">
                <label for="historia">História</label>
                <textarea class="form-control" id="historia" name="historia" rows="3" required></textarea>
            </div>
            <div class="form-group">
                <label for="tipo">Tipo</label>
                <input type="text" class="form-control" id="tipo" name="tipo" required>
            </div>
            <button type="submit" class="btn btn-success">Doar Pet</button>
        </form>
    </div>

    <footer class="footer text-center py-4">
        <div class="container">
            <p class="mb-0">© 2024 PetFind. Todos os direitos reservados.</p>
        </div>
    </footer>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>