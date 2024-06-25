<?php
    $conexao = mysqli_connect("localhost","root","","petfinddb");
    if(!$conexao){
        echo "Error: Unable to connect to MySQL".PHP_EOL;
            echo "Debbuging error: ".mysqli_connect_errno().PHP_EOL;
        echo "Debbugin error: ".mysqli_connect_errno().PHP_EOL;
        exit;
        
    }

?>