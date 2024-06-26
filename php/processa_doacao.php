<?php
    session_start();

    include_once('conexao_mysql.php');

    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        // Verifica se o arquivo de imagem foi enviado corretamente
        if (isset($_FILES['imagem']) && $_FILES['imagem']['error'] === UPLOAD_ERR_OK) {
            $nome = $_POST['nome'];
            $idade = $_POST['idade'];
            $cor = $_POST['cor'];
            $raca = $_POST['raca'];
            $genero = $_POST['genero'];
            $descricao = $_POST['descricao'];
            $historia = $_POST['historia'];
            $tipo = $_POST['tipo'];
            $email = $_SESSION['usuario'];
    
           
            $target_dir = "../images/";
    
            
            $target_file = $target_dir . basename($_FILES["imagem"]["name"]);
    
            
            $imageFileType = strtolower(pathinfo($target_file, PATHINFO_EXTENSION));
    
            
            $check = getimagesize($_FILES["imagem"]["tmp_name"]);
            if ($check !== false) {
                
                if (move_uploaded_file($_FILES["imagem"]["tmp_name"], $target_file)) {
                    
                    $sql = "INSERT INTO pets (nome, idade, cor, raca, genero, descricao, historia, tipo, adotado, emailUsuario, imagem) 
                            VALUES ('$nome', '$idade', '$cor', '$raca', '$genero', '$descricao', '$historia', '$tipo', false, '$email', '$target_file')";
    
                    if ($conexao->query($sql) === TRUE) {
                        echo "Pet doado com sucesso!";
                    } else {
                        echo "Erro: " . $sql . "<br>" . $conexao->error;
                    }
                } else {
                    echo "Erro ao fazer upload da imagem.";
                }
            } else {
                echo "Arquivo não é uma imagem válida.";
            }
        } else {
            
            if ($_FILES['imagem']['error'] === UPLOAD_ERR_NO_FILE) {
                echo "Nenhum arquivo de imagem enviado.";
            } else {
                echo "Erro no envio do arquivo de imagem: ";
                switch ($_FILES['imagem']['error']) {
                    case UPLOAD_ERR_INI_SIZE:
                        echo "O arquivo enviado excede o limite definido na configuração do PHP (upload_max_filesize).";
                        break;
                    case UPLOAD_ERR_FORM_SIZE:
                        echo "O arquivo enviado excede o limite definido no formulário HTML.";
                        break;
                    case UPLOAD_ERR_PARTIAL:
                        echo "O arquivo foi apenas parcialmente enviado.";
                        break;
                    case UPLOAD_ERR_NO_TMP_DIR:
                        echo "Falta uma pasta temporária.";
                        break;
                    case UPLOAD_ERR_CANT_WRITE:
                        echo "Falha ao gravar o arquivo em disco.";
                        break;
                    case UPLOAD_ERR_EXTENSION:
                        echo "Upload interrompido por uma extensão do PHP.";
                        break;
                    default:
                        echo "Erro desconhecido ao enviar o arquivo.";
                        break;
                }
            }
        }
    }
       
    
    $conexao->close();
?>
