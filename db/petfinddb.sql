-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 25-Jun-2024 às 22:20
-- Versão do servidor: 10.4.32-MariaDB
-- versão do PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `petfinddb`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `contato`
--

CREATE TABLE `contato` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mensagem` text NOT NULL,
  `data_envio` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `contato`
--

INSERT INTO `contato` (`id`, `nome`, `email`, `mensagem`, `data_envio`) VALUES
(1, 'vilson', 'vilson@gmail.com', 'envio errado', '2024-06-25 20:08:18'),
(3, 'Vilson', 'vilson@gmail.com', 'teste2', '2024-06-25 20:19:46'),
(4, 'Vilson', 'vilson@gmail.com', 'teste2', '2024-06-25 20:20:35');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pets`
--

CREATE TABLE `pets` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `idade` varchar(255) NOT NULL,
  `cor` varchar(255) NOT NULL,
  `raca` varchar(255) NOT NULL,
  `genero` varchar(255) NOT NULL,
  `descricao` text NOT NULL,
  `historia` text NOT NULL,
  `adotado` tinyint(1) DEFAULT NULL,
  `tipo` varchar(255) NOT NULL,
  `emailUsuario` varchar(255) DEFAULT NULL,
  `criado_em` datetime DEFAULT current_timestamp(),
  `dia_adocao` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `pets`
--

INSERT INTO `pets` (`id`, `nome`, `idade`, `cor`, `raca`, `genero`, `descricao`, `historia`, `adotado`, `tipo`, `emailUsuario`, `criado_em`, `dia_adocao`) VALUES
(11, 'Rex', '2 anos', 'Marrom', 'Labrador', 'Macho', 'Amigável e cheio de energia', 'Rex foi resgatado de um abrigo onde estava desde filhote. Agora ele está procurando uma família amorosa que possa lhe dar atenção e carinho.', 0, 'Cachorro', 'gustavo.gp520@gmail.com', '2024-06-25 16:47:57', NULL),
(12, 'Luna', '1 ano', 'Branco', 'Poodle', 'Fêmea', 'Calma e carinhosa', 'Luna foi abandonada na rua e resgatada por um grupo de protetores. Agora ela está pronta para encontrar uma nova família que possa lhe dar todo o amor que ela merece.', 0, 'Cachorro', 'gustavo.gp520@gmail.com', '2024-06-25 16:47:57', NULL),
(13, 'Thor', '3 anos', 'Preto', 'Pastor Alemão', 'Macho', 'Protetor e leal', 'Thor foi deixado em um abrigo por sua antiga família que não podia mais cuidar dele. Ele está esperando por uma nova oportunidade de ter um lar cheio de amor.', 0, 'Cachorro', 'gustavo.gp520@gmail.com', '2024-06-25 16:47:57', NULL),
(14, 'Bella', '4 anos', 'Dourado', 'Golden Retriever', 'Fêmea', 'Muito brincalhona e amigável', 'Bella foi encontrada vagando pelas ruas e levada a um abrigo. Ela é muito dócil e adora crianças.', 0, 'Cachorro', 'gustavo.gp520@gmail.com', '2024-06-25 16:47:57', NULL),
(15, 'Max', '5 anos', 'Cinza', 'Husky Siberiano', 'Macho', 'Muito ativo e cheio de energia', 'Max foi entregue ao abrigo por uma família que não podia mais cuidar dele devido à mudança de país.', 0, 'Cachorro', 'gustavo.gp520@gmail.com', '2024-06-25 16:47:57', NULL),
(16, 'Milo', '6 meses', 'Laranja', 'Gato Persa', 'Macho', 'Curioso e brincalhão', 'Milo foi resgatado de uma situação de maus tratos. Ele adora explorar e brincar com brinquedos.', 0, 'Gato', 'gustavo.gp520@gmail.com', '2024-06-25 16:47:57', NULL),
(17, 'Chloe', '2 anos', 'Preto e Branco', 'Border Collie', 'Fêmea', 'Inteligente e treinável', 'Chloe foi entregue ao abrigo por uma família que não podia mais cuidar dela. Ela é muito inteligente e fácil de treinar.', 0, 'Cachorro', 'gustavo.gp520@gmail.com', '2024-06-25 16:47:57', NULL),
(18, 'Simba', '1 ano', 'Tigrado', 'Gato SRD', 'Macho', 'Independente e curioso', 'Simba foi encontrado abandonado em um parque. Ele é muito independente e adora explorar novos lugares.', 0, 'Gato', 'gustavo.gp520@gmail.com', '2024-06-25 16:47:57', NULL),
(19, 'Buddy', '3 anos', 'Branco e Marrom', 'Beagle', 'Macho', 'Amigável e cheio de energia', 'Buddy foi resgatado de um abrigo lotado. Ele adora correr e brincar ao ar livre.', 0, 'Cachorro', 'gustavo.gp520@gmail.com', '2024-06-25 16:47:57', NULL),
(20, 'Lucy', '4 anos', 'Preto', 'Labrador', 'Fêmea', 'Muito amorosa e leal', 'Lucy foi abandonada por sua antiga família. Ela é muito leal e está sempre procurando agradar.', 0, 'Cachorro', 'gustavo.gp520@gmail.com', '2024-06-25 16:47:57', NULL),
(21, 'Charlie', '3 anos', 'Preto', 'Pastor Alemão', 'Macho', 'Protetor e leal', 'Charlie foi resgatado de um abrigo superlotado e agora busca um lar amoroso.', NULL, 'Cachorro', 'gustavo.gp520@gmail.com', '2024-06-25 16:47:57', NULL),
(22, 'Luna', '2 anos', 'Branco', 'Maltês', 'Fêmea', 'Carinhosa e calma', 'Luna foi abandonada e resgatada por voluntários. Ela adora ser mimada.', NULL, 'Cachorro', 'gustavo.gp520@gmail.com', '2024-06-25 16:47:57', NULL),
(23, 'Max', '1 ano', 'Marrom', 'Labrador', 'Macho', 'Cheio de energia e brincalhão', 'Max foi encontrado vagando pelas ruas e está pronto para um novo lar.', NULL, 'Cachorro', 'gustavo.gp520@gmail.com', '2024-06-25 16:47:57', NULL),
(24, 'Mimi', '4 anos', 'Cinza', 'Gato Persa', 'Fêmea', 'Independente e curiosa', 'Mimi foi entregue ao abrigo por uma família que se mudou. Ela é muito tranquila.', NULL, 'Gato', 'gustavo.gp520@gmail.com', '2024-06-25 16:47:57', NULL),
(25, 'Tom', '2 anos', 'Tigrado', 'Gato SRD', 'Macho', 'Muito brincalhão e curioso', 'Tom foi resgatado de um local perigoso e agora espera por uma família amorosa.', NULL, 'Gato', 'gustavo.gp520@gmail.com', '2024-06-25 16:47:57', NULL),
(26, 'Nina', '5 anos', 'Preto', 'Labrador', 'Fêmea', 'Muito carinhosa e leal', 'Nina foi abandonada após a morte de seu dono e agora busca um novo lar.', NULL, 'Cachorro', 'gustavo.gp520@gmail.com', '2024-06-25 16:47:57', NULL),
(27, 'Bella', '6 anos', 'Branco', 'Poodle', 'Fêmea', 'Muito dócil e amigável', 'Bella foi resgatada de uma situação de maus-tratos e agora espera por uma nova chance.', NULL, 'Cachorro', 'gustavo.gp520@gmail.com', '2024-06-25 16:47:57', NULL),
(28, 'Tiger', '3 anos', 'Tigrado', 'Gato SRD', 'Macho', 'Independente e curioso', 'Tiger foi encontrado abandonado em um parque e está em busca de um lar amoroso.', NULL, 'Gato', 'gustavo.gp520@gmail.com', '2024-06-25 16:47:57', NULL),
(29, 'Buddy', '1 ano', 'Dourado', 'Golden Retriever', 'Macho', 'Muito amigável e cheio de energia', 'Buddy foi resgatado de um abrigo superlotado e está pronto para ser adotado.', NULL, 'Cachorro', 'gustavo.gp520@gmail.com', '2024-06-25 16:47:57', NULL),
(30, 'Oscar', '4 anos', 'Preto e Branco', 'Border Collie', 'Macho', 'Muito inteligente e leal', 'Oscar foi abandonado por sua antiga família e agora espera por um novo lar.', NULL, 'Cachorro', 'gustavo.gp520@gmail.com', '2024-06-25 16:47:57', NULL),
(31, 'Lily', '2 anos', 'Branco', 'Poodle', 'Fêmea', 'Carinhosa e calma', 'Lily foi resgatada de um abrigo superlotado e está em busca de uma nova família.', NULL, 'Cachorro', 'gustavo.gp520@gmail.com', '2024-06-25 16:47:57', NULL),
(32, 'Coco', '3 anos', 'Marrom', 'Chihuahua', 'Fêmea', 'Muito dócil e amigável', 'Coco foi abandonada por seus antigos donos e agora espera por um novo lar.', NULL, 'Cachorro', 'gustavo.gp520@gmail.com', '2024-06-25 16:47:57', NULL),
(33, 'Simba', '5 anos', 'Tigrado', 'Gato SRD', 'Macho', 'Independente e brincalhão', 'Simba foi resgatado de um local perigoso e agora busca uma família amorosa.', NULL, 'Gato', 'gustavo.gp520@gmail.com', '2024-06-25 16:47:57', NULL),
(34, 'Rocky', '1 ano', 'Preto', 'Rottweiler', 'Macho', 'Muito leal e protetor', 'Rocky foi abandonado por seus antigos donos e agora espera por um novo lar.', NULL, 'Cachorro', 'gustavo.gp520@gmail.com', '2024-06-25 16:47:57', NULL),
(35, 'Daisy', '2 anos', 'Branco', 'Shih Tzu', 'Fêmea', 'Muito carinhosa e dócil', 'Daisy foi resgatada de uma situação de maus-tratos e está em busca de uma nova família.', NULL, 'Cachorro', 'gustavo.gp520@gmail.com', '2024-06-25 16:47:57', NULL),
(36, 'Milo', '4 anos', 'Laranja', 'Gato Persa', 'Macho', 'Curioso e brincalhão', 'Milo foi entregue ao abrigo por uma família que se mudou. Ele é muito tranquilo.', NULL, 'Gato', 'gustavo.gp520@gmail.com', '2024-06-25 16:47:57', NULL),
(37, 'Ruby', '3 anos', 'Marrom', 'Beagle', 'Fêmea', 'Muito amigável e cheia de energia', 'Ruby foi resgatada de um abrigo superlotado e está pronta para ser adotada.', NULL, 'Cachorro', 'gustavo.gp520@gmail.com', '2024-06-25 16:47:57', NULL),
(38, 'Toby', '2 anos', 'Preto e Branco', 'Border Collie', 'Macho', 'Muito inteligente e fácil de treinar', 'Toby foi abandonado por sua antiga família e agora espera por um novo lar.', NULL, 'Cachorro', 'gustavo.gp520@gmail.com', '2024-06-25 16:47:57', NULL),
(39, 'Oliver', '1 ano', 'Tigrado', 'Gato SRD', 'Macho', 'Muito brincalhão e curioso', 'Oliver foi resgatado de um local perigoso e está em busca de um lar amoroso.', NULL, 'Gato', 'gustavo.gp520@gmail.com', '2024-06-25 16:47:57', NULL),
(40, 'Chloe', '5 anos', 'Cinza', 'Gato Persa', 'Fêmea', 'Independente e calma', 'Chloe foi abandonada por sua antiga família e agora busca uma nova chance de ser feliz.', NULL, 'Gato', 'gustavo.gp520@gmail.com', '2024-06-25 16:47:57', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `user`
--

CREATE TABLE `user` (
  `ID` int(11) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `user`
--

INSERT INTO `user` (`ID`, `nome`, `email`, `senha`) VALUES
(1, 'Maria Natalia', 'marianatalia@gmail.com', '$2y$10$Ug4wlytSJh9LbE04dLbjYeX3JzdF/iQGqmdSKu0FeXPscONOXjWLy'),
(4, 'Gustavo', 'gustavo.gp520@gmail.com', '$2y$10$LE3QSLjfljL4o6PESw9DHOsZHv.mgUadCMPUIi760VsboZ2Do0j.S'),
(5, 'Vilson', 'vilson@gmail.com', '$2y$10$MWa68h63FvYUWxi0OjTTwOBUs2SsYsOeqHkd2NMLCw7tNTQ2c64Da');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `contato`
--
ALTER TABLE `contato`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `pets`
--
ALTER TABLE `pets`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `contato`
--
ALTER TABLE `contato`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `pets`
--
ALTER TABLE `pets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de tabela `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
