-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2024 at 04:58 AM
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
-- Table structure for table `pets`
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
  `emailUsuario` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pets`
--

INSERT INTO `pets` (`id`, `nome`, `idade`, `cor`, `raca`, `genero`, `descricao`, `historia`, `adotado`, `tipo`, `emailUsuario`) VALUES
(11, 'Rex', '2 anos', 'Marrom', 'Labrador', 'Macho', 'Amigável e cheio de energia', 'Rex foi resgatado de um abrigo onde estava desde filhote. Agora ele está procurando uma família amorosa que possa lhe dar atenção e carinho.', 0, 'Cachorro', 'gustavo.gp520@gmail.com'),
(12, 'Luna', '1 ano', 'Branco', 'Poodle', 'Fêmea', 'Calma e carinhosa', 'Luna foi abandonada na rua e resgatada por um grupo de protetores. Agora ela está pronta para encontrar uma nova família que possa lhe dar todo o amor que ela merece.', 0, 'Cachorro', 'gustavo.gp520@gmail.com'),
(13, 'Thor', '3 anos', 'Preto', 'Pastor Alemão', 'Macho', 'Protetor e leal', 'Thor foi deixado em um abrigo por sua antiga família que não podia mais cuidar dele. Ele está esperando por uma nova oportunidade de ter um lar cheio de amor.', 0, 'Cachorro', 'gustavo.gp520@gmail.com'),
(14, 'Bella', '4 anos', 'Dourado', 'Golden Retriever', 'Fêmea', 'Muito brincalhona e amigável', 'Bella foi encontrada vagando pelas ruas e levada a um abrigo. Ela é muito dócil e adora crianças.', 0, 'Cachorro', 'gustavo.gp520@gmail.com'),
(15, 'Max', '5 anos', 'Cinza', 'Husky Siberiano', 'Macho', 'Muito ativo e cheio de energia', 'Max foi entregue ao abrigo por uma família que não podia mais cuidar dele devido à mudança de país.', 0, 'Cachorro', 'gustavo.gp520@gmail.com'),
(16, 'Milo', '6 meses', 'Laranja', 'Gato Persa', 'Macho', 'Curioso e brincalhão', 'Milo foi resgatado de uma situação de maus tratos. Ele adora explorar e brincar com brinquedos.', 0, 'Gato', 'gustavo.gp520@gmail.com'),
(17, 'Chloe', '2 anos', 'Preto e Branco', 'Border Collie', 'Fêmea', 'Inteligente e treinável', 'Chloe foi entregue ao abrigo por uma família que não podia mais cuidar dela. Ela é muito inteligente e fácil de treinar.', 0, 'Cachorro', 'gustavo.gp520@gmail.com'),
(18, 'Simba', '1 ano', 'Tigrado', 'Gato SRD', 'Macho', 'Independente e curioso', 'Simba foi encontrado abandonado em um parque. Ele é muito independente e adora explorar novos lugares.', 0, 'Gato', 'gustavo.gp520@gmail.com'),
(19, 'Buddy', '3 anos', 'Branco e Marrom', 'Beagle', 'Macho', 'Amigável e cheio de energia', 'Buddy foi resgatado de um abrigo lotado. Ele adora correr e brincar ao ar livre.', 0, 'Cachorro', 'gustavo.gp520@gmail.com'),
(20, 'Lucy', '4 anos', 'Preto', 'Labrador', 'Fêmea', 'Muito amorosa e leal', 'Lucy foi abandonada por sua antiga família. Ela é muito leal e está sempre procurando agradar.', 0, 'Cachorro', 'gustavo.gp520@gmail.com'),
(21, 'Charlie', '3 anos', 'Preto', 'Pastor Alemão', 'Macho', 'Protetor e leal', 'Charlie foi resgatado de um abrigo superlotado e agora busca um lar amoroso.', NULL, 'Cachorro', 'gustavo.gp520@gmail.com'),
(22, 'Luna', '2 anos', 'Branco', 'Maltês', 'Fêmea', 'Carinhosa e calma', 'Luna foi abandonada e resgatada por voluntários. Ela adora ser mimada.', NULL, 'Cachorro', 'gustavo.gp520@gmail.com'),
(23, 'Max', '1 ano', 'Marrom', 'Labrador', 'Macho', 'Cheio de energia e brincalhão', 'Max foi encontrado vagando pelas ruas e está pronto para um novo lar.', NULL, 'Cachorro', 'gustavo.gp520@gmail.com'),
(24, 'Mimi', '4 anos', 'Cinza', 'Gato Persa', 'Fêmea', 'Independente e curiosa', 'Mimi foi entregue ao abrigo por uma família que se mudou. Ela é muito tranquila.', NULL, 'Gato', 'gustavo.gp520@gmail.com'),
(25, 'Tom', '2 anos', 'Tigrado', 'Gato SRD', 'Macho', 'Muito brincalhão e curioso', 'Tom foi resgatado de um local perigoso e agora espera por uma família amorosa.', NULL, 'Gato', 'gustavo.gp520@gmail.com'),
(26, 'Nina', '5 anos', 'Preto', 'Labrador', 'Fêmea', 'Muito carinhosa e leal', 'Nina foi abandonada após a morte de seu dono e agora busca um novo lar.', NULL, 'Cachorro', 'gustavo.gp520@gmail.com'),
(27, 'Bella', '6 anos', 'Branco', 'Poodle', 'Fêmea', 'Muito dócil e amigável', 'Bella foi resgatada de uma situação de maus-tratos e agora espera por uma nova chance.', NULL, 'Cachorro', 'gustavo.gp520@gmail.com'),
(28, 'Tiger', '3 anos', 'Tigrado', 'Gato SRD', 'Macho', 'Independente e curioso', 'Tiger foi encontrado abandonado em um parque e está em busca de um lar amoroso.', NULL, 'Gato', 'gustavo.gp520@gmail.com'),
(29, 'Buddy', '1 ano', 'Dourado', 'Golden Retriever', 'Macho', 'Muito amigável e cheio de energia', 'Buddy foi resgatado de um abrigo superlotado e está pronto para ser adotado.', NULL, 'Cachorro', 'gustavo.gp520@gmail.com'),
(30, 'Oscar', '4 anos', 'Preto e Branco', 'Border Collie', 'Macho', 'Muito inteligente e leal', 'Oscar foi abandonado por sua antiga família e agora espera por um novo lar.', NULL, 'Cachorro', 'gustavo.gp520@gmail.com'),
(31, 'Lily', '2 anos', 'Branco', 'Poodle', 'Fêmea', 'Carinhosa e calma', 'Lily foi resgatada de um abrigo superlotado e está em busca de uma nova família.', NULL, 'Cachorro', 'gustavo.gp520@gmail.com'),
(32, 'Coco', '3 anos', 'Marrom', 'Chihuahua', 'Fêmea', 'Muito dócil e amigável', 'Coco foi abandonada por seus antigos donos e agora espera por um novo lar.', NULL, 'Cachorro', 'gustavo.gp520@gmail.com'),
(33, 'Simba', '5 anos', 'Tigrado', 'Gato SRD', 'Macho', 'Independente e brincalhão', 'Simba foi resgatado de um local perigoso e agora busca uma família amorosa.', NULL, 'Gato', 'gustavo.gp520@gmail.com'),
(34, 'Rocky', '1 ano', 'Preto', 'Rottweiler', 'Macho', 'Muito leal e protetor', 'Rocky foi abandonado por seus antigos donos e agora espera por um novo lar.', NULL, 'Cachorro', 'gustavo.gp520@gmail.com'),
(35, 'Daisy', '2 anos', 'Branco', 'Shih Tzu', 'Fêmea', 'Muito carinhosa e dócil', 'Daisy foi resgatada de uma situação de maus-tratos e está em busca de uma nova família.', NULL, 'Cachorro', 'gustavo.gp520@gmail.com'),
(36, 'Milo', '4 anos', 'Laranja', 'Gato Persa', 'Macho', 'Curioso e brincalhão', 'Milo foi entregue ao abrigo por uma família que se mudou. Ele é muito tranquilo.', NULL, 'Gato', 'gustavo.gp520@gmail.com'),
(37, 'Ruby', '3 anos', 'Marrom', 'Beagle', 'Fêmea', 'Muito amigável e cheia de energia', 'Ruby foi resgatada de um abrigo superlotado e está pronta para ser adotada.', NULL, 'Cachorro', 'gustavo.gp520@gmail.com'),
(38, 'Toby', '2 anos', 'Preto e Branco', 'Border Collie', 'Macho', 'Muito inteligente e fácil de treinar', 'Toby foi abandonado por sua antiga família e agora espera por um novo lar.', NULL, 'Cachorro', 'gustavo.gp520@gmail.com'),
(39, 'Oliver', '1 ano', 'Tigrado', 'Gato SRD', 'Macho', 'Muito brincalhão e curioso', 'Oliver foi resgatado de um local perigoso e está em busca de um lar amoroso.', NULL, 'Gato', 'gustavo.gp520@gmail.com'),
(40, 'Chloe', '5 anos', 'Cinza', 'Gato Persa', 'Fêmea', 'Independente e calma', 'Chloe foi abandonada por sua antiga família e agora busca uma nova chance de ser feliz.', NULL, 'Gato', 'gustavo.gp520@gmail.com');

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
