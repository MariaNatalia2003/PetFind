-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2024 at 02:36 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `petfinddb`
--

-- --------------------------------------------------------

--
-- Table structure for table `contato`
--

CREATE TABLE `contato` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mensagem` text NOT NULL,
  `data_envio` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pets`
--

CREATE TABLE `pets` (
  `id` int(11) NOT NULL,
  `historia` text NOT NULL,
  `adotado` tinyint(1) DEFAULT NULL,
  `tipo` varchar(255) NOT NULL,
  `emailUsuario` varchar(255) DEFAULT NULL,
  `emailUsuarioAdocao` varchar(255) DEFAULT NULL,
  `data_doacao` datetime DEFAULT current_timestamp(),
  `data_adocao` datetime DEFAULT NULL,
  `nome` varchar(200) DEFAULT NULL,
  `idade` varchar(50) DEFAULT NULL,
  `cor` varchar(50) DEFAULT NULL,
  `descricao` varchar(150) DEFAULT NULL,
  `raca` varchar(100) DEFAULT NULL,
  `genero` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pets`
--

INSERT INTO `pets` (`id`, `historia`, `adotado`, `tipo`, `emailUsuario`, `emailUsuarioAdocao`, `data_doacao`, `data_adocao`, `nome`, `idade`, `cor`, `descricao`, `raca`, `genero`) VALUES
(11, 'Rex foi resgatado de um abrigo onde estava desde filhote. Agora ele está procurando uma família amorosa que possa lhe dar atenção e carinho.', 1, 'Cachorro', 'marianatalia@gmail.com', 'gustavo.gp520@gmail.com', '2024-07-01 19:35:18', '2024-07-01 19:37:43', 'Rex', '2 anos', 'Marrom', 'Amigável e cheio de energia', 'Labrador', 'Macho'),
(12, 'Luna foi abandonada na rua e resgatada por um grupo de protetores. Agora ela está pronta para encontrar uma nova família que possa lhe dar todo o amor que ela merece.', 0, 'Cachorro', 'marianatalia@gmail.com', NULL, '2024-06-01 19:35:18', NULL, 'Luna', '1 ano', 'Branco', 'Calma e carinhosa', 'Poodle', 'Fêmea'),
(13, 'Thor foi deixado em um abrigo por sua antiga família que não podia mais cuidar dele. Ele está esperando por uma nova oportunidade de ter um lar cheio de amor.', 0, 'Cachorro', 'marianatalia@gmail.com', NULL, '2024-05-21 19:35:18', NULL, 'Thor', '3 anos', 'Preto', 'Protetor e leal', 'Pastor Alemão', 'Macho'),
(14, 'Bella foi encontrada vagando pelas ruas e levada a um abrigo. Ela é muito dócil e adora crianças.', 0, 'Cachorro', 'marianatalia@gmail.com', NULL, '2024-07-01 19:35:18', NULL, 'Bella', '4 anos', 'Dourado', 'Muito brincalhona e amigável', 'Golden Retriever', 'Fêmea'),
(15, 'Max foi entregue ao abrigo por uma família que não podia mais cuidar dele devido à mudança de país.', 0, 'Cachorro', 'gustavo.gp520@gmail.com', NULL, '2024-07-01 19:35:18', NULL, 'Max', '5 anos', 'Cinza', 'Muito ativo e cheio de energia', 'Husky Siberiano', 'Macho'),
(16, 'Milo foi resgatado de uma situação de maus tratos. Ele adora explorar e brincar com brinquedos.', 0, 'Gato', 'gustavo.gp520@gmail.com', NULL, '2024-07-01 19:35:18', NULL, 'Milo', '6 meses', 'Laranja', 'Curioso e brincalhão', 'Gato Persa', 'Macho'),
(17, 'Chloe foi entregue ao abrigo por uma família que não podia mais cuidar dela. Ela é muito inteligente e fácil de treinar.', 0, 'Cachorro', 'gustavo.gp520@gmail.com', NULL, '2024-07-01 19:35:18', NULL, 'Chloe', '2 anos', 'Preto e Branco', 'Inteligente e treinável', 'Border Collie', 'Fêmea'),
(18, 'Simba foi encontrado abandonado em um parque. Ele é muito independente e adora explorar novos lugares.', 0, 'Gato', 'gustavo.gp520@gmail.com', NULL, '2024-07-01 19:35:18', NULL, 'Simba', '1 ano', 'Tigrado', 'Independente e curioso', 'Gato SRD', 'Macho'),
(19, 'Buddy foi resgatado de um abrigo lotado. Ele adora correr e brincar ao ar livre.', 0, 'Cachorro', 'gustavo.gp520@gmail.com', NULL, '2024-07-01 19:35:18', NULL, 'Buddy', '3 anos', 'Branco e Marrom', 'Amigável e cheio de energia', 'Beagle', 'Macho'),
(20, 'Lucy foi abandonada por sua antiga família. Ela é muito leal e está sempre procurando agradar.', 0, 'Cachorro', 'gustavo.gp520@gmail.com', NULL, '2024-07-01 19:35:18', NULL, 'Lucy', '4 anos', 'Preto', 'Muito amorosa e leal', 'Labrador', 'Fêmea'),
(21, 'Charlie foi resgatado de um abrigo superlotado e agora busca um lar amoroso.', 0, 'Cachorro', 'gustavo.gp520@gmail.com', NULL, '2024-07-01 19:35:18', NULL, 'Charlie', '3 anos', 'Preto', 'Protetor e leal', 'Pastor Alemão', 'Macho'),
(22, 'Luna foi abandonada e resgatada por voluntários. Ela adora ser mimada.', 0, 'Cachorro', 'gustavo.gp520@gmail.com', NULL, '2024-07-01 19:35:18', NULL, 'Luna', '2 anos', 'Branco', 'Carinhosa e calma', 'Maltês', 'Fêmea'),
(23, 'Max foi encontrado vagando pelas ruas e está pronto para um novo lar.', 0, 'Cachorro', 'gustavo.gp520@gmail.com', NULL, '2024-07-01 19:35:18', NULL, 'Max', '1 ano', 'Marrom', 'Cheio de energia e brincalhão', 'Labrador', 'Macho'),
(24, 'Mimi foi entregue ao abrigo por uma família que se mudou. Ela é muito tranquila.', 0, 'Gato', 'gustavo.gp520@gmail.com', NULL, '2024-07-01 19:35:18', NULL, 'Mimi', '4 anos', 'Cinza', 'Independente e curiosa', 'Gato Persa', 'Fêmea'),
(25, 'Tom foi resgatado de um local perigoso e agora espera por uma família amorosa.', 0, 'Gato', 'gustavo.gp520@gmail.com', NULL, '2024-07-01 19:35:18', NULL, 'Tom', '2 anos', 'Tigrado', 'Muito brincalhão e curioso', 'Gato SRD', 'Macho'),
(26, 'Nina foi abandonada após a morte de seu dono e agora busca um novo lar.', 0, 'Cachorro', 'gustavo.gp520@gmail.com', NULL, '2024-07-01 19:35:18', NULL, 'Nina', '5 anos', 'Preto', 'Muito carinhosa e leal', 'Labrador', 'Fêmea'),
(27, 'Bella foi resgatada de uma situação de maus-tratos e agora espera por uma nova chance.', 0, 'Cachorro', 'gustavo.gp520@gmail.com', NULL, '2024-07-01 19:35:18', NULL, 'Bella', '6 anos', 'Branco', 'Muito dócil e amigável', 'Poodle', 'Fêmea'),
(28, 'Tiger foi encontrado abandonado em um parque e está em busca de um lar amoroso.', 0, 'Gato', 'gustavo.gp520@gmail.com', NULL, '2024-07-01 19:35:18', NULL, 'Tiger', '3 anos', 'Tigrado', 'Independente e curioso', 'Gato SRD', 'Macho'),
(29, 'Buddy foi resgatado de um abrigo superlotado e está pronto para ser adotado.', 0, 'Cachorro', 'gustavo.gp520@gmail.com', NULL, '2024-07-01 19:35:18', NULL, 'Buddy', '1 ano', 'Dourado', 'Muito amigável e cheio de energia', 'Golden Retriever', 'Macho'),
(30, 'Oscar foi abandonado por sua antiga família e agora espera por um novo lar.', 0, 'Cachorro', 'gustavo.gp520@gmail.com', NULL, '2024-07-01 19:35:18', NULL, 'Oscar', '4 anos', 'Preto e Branco', 'Muito inteligente e leal', 'Border Collie', 'Macho'),
(31, 'Lily foi resgatada de um abrigo superlotado e está em busca de uma nova família.', 0, 'Cachorro', 'gustavo.gp520@gmail.com', NULL, '2024-07-01 19:35:18', NULL, 'Lily', '2 anos', 'Branco', 'Carinhosa e calma', 'Poodle', 'Fêmea'),
(32, 'Coco foi abandonada por seus antigos donos e agora espera por um novo lar.', 0, 'Cachorro', 'gustavo.gp520@gmail.com', NULL, '2024-07-01 19:35:18', NULL, 'Coco', '3 anos', 'Marrom', 'Muito dócil e amigável', 'Chihuahua', 'Fêmea'),
(33, 'Simba foi resgatado de um local perigoso e agora busca uma família amorosa.', 0, 'Gato', 'gustavo.gp520@gmail.com', NULL, '2024-07-01 19:35:18', NULL, 'Simba', '5 anos', 'Tigrado', 'Independente e brincalhão', 'Gato SRD', 'Macho'),
(34, 'Rocky foi abandonado por seus antigos donos e agora espera por um novo lar.', 0, 'Cachorro', 'gustavo.gp520@gmail.com', NULL, '2024-07-01 19:35:18', NULL, 'Rocky', '1 ano', 'Preto', 'Muito leal e protetor', 'Rottweiler', 'Macho'),
(35, 'Daisy foi resgatada de uma situação de maus-tratos e está em busca de uma nova família.', 0, 'Cachorro', 'gustavo.gp520@gmail.com', NULL, '2024-07-01 19:35:18', NULL, 'Daisy', '2 anos', 'Branco', 'Muito carinhosa e dócil', 'Shih Tzu', 'Fêmea'),
(36, 'Milo foi entregue ao abrigo por uma família que se mudou. Ele é muito tranquilo.', 0, 'Gato', 'gustavo.gp520@gmail.com', NULL, '2024-07-01 19:35:18', NULL, 'Milo', '4 anos', 'Laranja', 'Curioso e brincalhão', 'Gato Persa', 'Macho'),
(37, 'Ruby foi resgatada de um abrigo superlotado e está pronta para ser adotada.', 0, 'Cachorro', 'gustavo.gp520@gmail.com', NULL, '2024-07-01 19:35:18', NULL, 'Ruby', '3 anos', 'Marrom', 'Muito amigável e cheia de energia', 'Beagle', 'Fêmea'),
(38, 'Toby foi abandonado por sua antiga família e agora espera por um novo lar.', 0, 'Cachorro', 'gustavo.gp520@gmail.com', NULL, '2024-07-01 19:35:18', NULL, 'Toby', '2 anos', 'Preto e Branco', 'Muito inteligente e fácil de treinar', 'Border Collie', 'Macho'),
(39, 'Oliver foi resgatado de um local perigoso e está em busca de um lar amoroso.', 0, 'Gato', 'gustavo.gp520@gmail.com', NULL, '2024-07-01 19:35:18', NULL, 'Oliver', '1 ano', 'Tigrado', 'Muito brincalhão e curioso', 'Gato SRD', 'Macho'),
(40, 'Chloe foi abandonada por sua antiga família e agora busca uma nova chance de ser feliz.', 0, 'Gato', 'gustavo.gp520@gmail.com', NULL, '2024-07-01 19:35:18', NULL, 'Chloe', '5 anos', 'Cinza', 'Independente e calma', 'Gato Persa', 'Fêmea'),
(42, 'fgggd', 0, 'fffff', 'gustavo.gp520@gmail.com', NULL, '2024-07-31 20:35:35', NULL, 'guga', 'x teste', 'cort', 'ssdf', 'racat', 'gent');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `ID` int(11) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `nome`, `email`, `senha`) VALUES
(1, 'Maria Natalia', 'marianatalia@gmail.com', '$2y$10$Ug4wlytSJh9LbE04dLbjYeX3JzdF/iQGqmdSKu0FeXPscONOXjWLy'),
(4, 'Gustavo', 'gustavo.gp520@gmail.com', '$2y$10$LE3QSLjfljL4o6PESw9DHOsZHv.mgUadCMPUIi760VsboZ2Do0j.S');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contato`
--
ALTER TABLE `contato`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pets`
--
ALTER TABLE `pets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contato`
--
ALTER TABLE `contato`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pets`
--
ALTER TABLE `pets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
