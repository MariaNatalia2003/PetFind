<?php
session_start();
if (!isset($_SESSION['usuario'])) {
    header('Location: login.html');
    exit();
}
?>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Página Inicial - Petz</title>
    <link href="css/tailwind.css" rel="stylesheet">
</head>
<body class="bg-gray-100 flex items-center justify-center h-screen">
    <div class="w-full max-w-md">
        <div class="bg-white shadow-md rounded px-8 pt-6 pb-8 mb-4 text-center">
            <h2 class="text-2xl font-bold mb-4">Bem-vindo ao Petz</h2>
            <p>Este é o sistema de adoção de pets.</p>
            <a href="logout.php" class="mt-4 inline-block bg-red-500 hover:bg-red-700 text-white font-bold py-2 px-4 rounded">Logout</a>
        </div>
    </div>
</body>
</html>
