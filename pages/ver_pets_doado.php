<?php
    include_once('../php/conexao_mysql.php');

    session_start();

    $email = $_SESSION['usuario'];

    // Consulta SQL para obter a lista de pets doados
    $sql = "SELECT id, nome, idade, cor, raca, genero, descricao, historia, tipo, CASE WHEN adotado then 'Sim' ELSE 'Não' END AS adotadoStr FROM pets WHERE emailUsuario = '$email'";
    $result = $conexao->query($sql);

?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pets Doado</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #e8f5e9; /* Cor de fundo verde clara */
        }
        .navbar, .btn-logout {
            background-color: #4caf50; /* Cor verde */
        }
        .navbar-brand, .nav-link, .btn-logout {
            color: white !important;
        }
        .table thead {
            background-color: #81c784; /* Verde mais escuro para o cabeçalho da tabela */
        }
    </style>
</head>
<body>

    <!-- Menu de Navegação -->
    <nav class="navbar navbar-expand-lg">
        <a class="navbar-brand" href="index_user.php">Adoção de Pets</a>
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

    <!-- Tabela de Pets Doado -->
    <div class="container mt-5">
        <h2 class="text-center mb-4">Pets Doados</h2>
        <div class="table-responsive">
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Nome do Pet</th>
                        <th>Idade</th>
                        <th>Cor</th>
                        <th>Raça</th>
                        <th>Gênero</th>
                        <th>Tipo</th>
                        <th>Descrição</th>
                        <th>História</th>
                        <th>Adotado</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    if ($result->num_rows > 0) {
                        while($row = $result->fetch_assoc()) {
                            echo "<tr>";
                            echo "<td>" . $row["id"] . "</td>";
                            echo "<td>" . $row["nome"] . "</td>";
                            echo "<td>" . $row["idade"] . "</td>";
                            echo "<td>" . $row["cor"] . "</td>";
                            echo "<td>" . $row["raca"] . "</td>";
                            echo "<td>" . $row["genero"] . "</td>";
                            echo "<td>" . $row["tipo"] . "</td>";
                            echo "<td>" . $row["descricao"] . "</td>";
                            echo "<td>" . $row["historia"] . "</td>";
                            echo "<td>" . $row["adotadoStr"] . "</td>";
                            echo "</tr>";
                        }
                    } else {
                        echo "<tr><td colspan='8' class='text-center'>Nenhum pet foi doado ainda.</td></tr>";
                    }
                    ?>
                </tbody>
            </table>
        </div>
    </div>

    <!-- Scripts do Bootstrap -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
