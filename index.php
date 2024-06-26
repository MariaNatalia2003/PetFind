<?php
    session_start();

    // Inclui o arquivo de conexão com o banco de dados
    include_once('php/conexao_mysql.php');

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
            echo "<script>alert('Obrigado por entrar em contato, $name! Entraremos em contato com você em breve.');</script>";
        } else {
            echo "<script>alert('Ocorreu um erro ao enviar mensagem. Tente novamente mais tarde!');</script>";
        }
    } 
    $conexao->close();
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PetFind - Adote um Amigo</title>

    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark">
        <a class="navbar-brand" href="#">PetFind</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="#about">Sobre</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#pets">Pets</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#gallery">Galeria</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#team">Equipe</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#contact">Contato</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="pages/login.php">Login</a>
                </li>
            </ul>
        </div>
    </nav>

    <div id="petCarousel" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="images/cachorro1.jpg" class="d-block w-100" alt="Pet 1">
            </div>
            <div class="carousel-item">
                <img src="images/pet2.jpg" class="d-block w-100" alt="Pet 2">
            </div>
            <div class="carousel-item">
                <img src="images/pet3.jpg" class="d-block w-100" alt="Pet 3">
            </div>
        </div>
        <a class="carousel-control-prev" href="#petCarousel" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#petCarousel" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>

    <section id="about" class="py-5">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <h2 class="section-title">Sobre o PetFind</h2>
                    <p>PetFind é uma campanha dedicada a encontrar lares amorosos para pets abandonados. Trabalhamos com abrigos locais para facilitar a adoção e garantir que cada pet encontre um lar seguro e carinhoso.</p>
                </div>
            </div>
        </div>
    </section>

    <section id="gallery" class="py-5 bg-light">
        <div class="container">
            <h2 class="text-center section-title">Galeria de Fotos e Vídeos</h2>
            <div class="row">
                <!-- Photo 1 -->
                <div class="col-md-4">
                    <img src="images/evento1.jpg" class="img-fluid mb-4" alt="Gallery Image 1">
                </div>
                <!-- Photo 2 -->
                <div class="col-md-4">
                    <img src="images/evento2.jpg" class="img-fluid mb-4" alt="Gallery Image 2">
                </div>
                <!-- Photo 3 -->
                <div class="col-md-4">
                    <img src="images/evento3.jpg" class="img-fluid mb-4" alt="Gallery Image 3">
                </div>
            </div>
        </div>
    </section>

    <!-- <section id="team" class="py-5">
        <div class="container">
            <h2 class="text-center section-title">Conheça Nossa Equipe</h2>
            <div class="row">
                <div class="col-md-3 text-center">
                    <img src="images/pessoa.png" class="img-fluid rounded-circle mb-3" alt="Team Member 1">
                    <h5>Gustavo Carvalho</h5>
                    <p>Fundador</p>
                </div>
                <div class="col-md-3 text-center">
                    <img src="images/pessoa.png" class="img-fluid rounded-circle mb-3" alt="Team Member 2">
                    <h5>Maria Natália</h5>
                    <p>Coordenadora de Adoções</p>
                </div>
                <div class="col-md-3 text-center">
                    <img src="images/pessoa.png" class="img-fluid rounded-circle mb-3" alt="Team Member 3">
                    <h5>Gabriel Hayashida</h5>
                    <p>Veterinário</p>
                </div>
                <div class="col-md-3 text-center">
                    <img src="images/pessoa.png" class="img-fluid rounded-circle mb-3" alt="Team Member 4">
                    <h5>Vilson Souza</h5>
                    <p>Veterinário</p>
                </div>
            </div>
        </div>
    </section> -->

    <section id="volunteer" class="py-5">
        <div class="container">
            <h2 class="text-center section-title">Onde Encontrar</h2>
            <div class="row">
                <div class="col-md-12">
                    <div class="embed-responsive embed-responsive-16by9">
                        <iframe class="embed-responsive-item" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3676.3878351412436!2d-47.10163482304365!3d-22.862127279286508!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94c8c701b143b069%3A0x590087383e5521b4!2sFatec%20Campinas%20-%20Faculdade%20de%20Tecnologia%20de%20Campinas!5e0!3m2!1spt-BR!2sbr!4v1718675426163!5m2!1spt-BR!2sbr" allowfullscreen></iframe>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section id="contact" class="py-5 bg-light">
        <div class="container">
            <h2 class="text-center section-title">Entre em Contato</h2>
            <div class="row">
                <div class="col-md-8 mx-auto">
                    <form action="index.php" method="post">
                        <div class="form-group">
                            <label for="name">Nome</label>
                            <input type="text" class="form-control" id="name" name="name" required>
                        </div>
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input type="email" class="form-control" id="email" name="email" required>
                        </div>
                        <div class="form-group">
                            <label for="message">Mensagem</label>
                            <textarea class="form-control" id="message" name="message" rows="5" required></textarea>
                        </div>
                        <button type="submit" class="btn btn-primary btn-block">Enviar</button>
                    </form>
                </div>
            </div>
        </div>
    </section>

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