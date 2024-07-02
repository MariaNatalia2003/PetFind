<?php
    include_once('../php/conexao_mysql.php');

    session_start();

    $email = $_SESSION['usuario'];

    // pets doados
    $sql = "SELECT id, nome, idade, cor, raca, genero, descricao, historia, tipo, data_doacao, CASE WHEN adotado then 'Sim' ELSE 'Não' END AS adotadoStr FROM pets WHERE emailUsuario = '$email' ORDER BY data_doacao DESC";
    $result = $conexao->query($sql);

?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pets Doados</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #e8f5e9; 
        }
        .navbar, .btn-logout, .footer {
            background-color: #28a745;
        }
        .navbar-brand, .nav-link, .btn-logout, .footer p {
            color: white !important;
        }
        .table thead {
            background-color: #81c784; 
        }
        .container {
            margin-top: 50px;
            margin-bottom: 30px; 
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

    <div class="container mt-5">
        <h2 class="text-center mb-4">Pets Doados</h2>
        <div class="table-responsive">
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Nome do Pet</th>
                        <th>Raça</th>
                        <th>Tipo</th>
                        <th>Idade</th>
                        <th>Data Doado</th>
                        <th>Adotado</th>
                        <th>Mais Detalhes</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    if ($result->num_rows > 0) {
                        while($row = $result->fetch_assoc()) {
                            echo "<tr>";
                            echo "<td>" . $row["id"] . "</td>";
                            echo "<td>" . $row["nome"] . "</td>";
                            echo "<td>" . $row["raca"] . "</td>";
                            echo "<td>" . $row["tipo"] . "</td>";
                            echo "<td>" . $row["idade"] . "</td>";
                            echo "<td>" . date("d/m/Y", strtotime($row["data_doacao"])) . "</td>";
                            echo "<td>" . $row["adotadoStr"] . "</td>";
                            echo "<td><button class='btn btn-success' data-toggle='modal' data-target='#modal" . $row["id"] . "'>Mais Detalhes</button></td>";
                            echo "</tr>";

                            // Modal
                            echo "<div class='modal fade' id='modal" . $row["id"] . "' tabindex='-1' aria-labelledby='modal" . $row["id"] . "Label' aria-hidden='true'>";
                            echo "<div class='modal-dialog'>";
                            echo "<div class='modal-content'>";
                            echo "<div class='modal-header'>";
                            echo "<h5 class='modal-title' id='modal" . $row["id"] . "Label'>Detalhes sobre " . $row["nome"] . "</h5>";
                            echo "<button type='button' class='close' data-dismiss='modal' aria-label='Close'>";
                            echo "<span aria-hidden='true'>&times;</span>";
                            echo "</button>";
                            echo "</div>";
                            echo "<div class='modal-body'>";
                            echo "<p><strong>Nome:</strong> " . $row["nome"] . "</p>";
                            echo "<p><strong>Idade:</strong> " . $row["idade"] . "</p>";
                            echo "<p><strong>Cor:</strong> " . $row["cor"] . "</p>";
                            echo "<p><strong>Raça:</strong> " . $row["raca"] . "</p>";
                            echo "<p><strong>Gênero:</strong> " . $row["genero"] . "</p>";
                            echo "<p><strong>Tipo:</strong> " . $row["tipo"] . "</p>";
                            echo "<p><strong>Descrição:</strong> " . $row["descricao"] . "</p>";
                            echo "<p><strong>História:</strong> " . $row["historia"] . "</p>";
                            echo "</div>";
                            echo "<div class='modal-footer'>";
                            echo "<form action='#' method='POST'>";
                            echo "<input type='hidden' name='pet_id' value='" . $row["id"] . "'>";
                            echo "<button type='button' class='btn btn-secondary' data-dismiss='modal'>Fechar</button>";
                            echo "</form>";
                            echo "</div>";
                            echo "</div>";
                            echo "</div>";
                            echo "</div>";
                            echo "</tr>";
                            echo "</tr>";
                        }
                    } else {
                        echo "<tr><td colspan='6' class='text-center'>Nenhum pet foi doado ainda.</td></tr>";
                    }
                    ?>
                </tbody>
            </table>
        </div>
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
