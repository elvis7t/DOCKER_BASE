-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: mysql:3306
-- Tempo de geração: 11-Ago-2022 às 14:34
-- Versão do servidor: 8.0.30
-- versão do PHP: 8.0.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `useacabeca`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aliens_abduction`
--

CREATE TABLE `aliens_abduction` (
  `aa_id` int NOT NULL,
  `aa_firstname` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aa_lastname` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aa_whenithappened` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aa_howlong` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aa_howmany` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aa_aliendescription` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aa_whattheydid` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aa_fangspotted` enum('S','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `aa_email` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aa_other` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `aliens_abduction`
--

INSERT INTO `aliens_abduction` (`aa_id`, `aa_firstname`, `aa_lastname`, `aa_whenithappened`, `aa_howlong`, `aa_howmany`, `aa_aliendescription`, `aa_whattheydid`, `aa_fangspotted`, `aa_email`, `aa_other`) VALUES
(1, 'aa_firstname', 'aa_lastname', 'aa_whenithappened', 'aa_howlong', 'aa_howmany', 'aa_aliendescription', 'aa_whattheydid', 'S', 'aa_email', 'aa_other');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `aliens_abduction`
--
ALTER TABLE `aliens_abduction`
  ADD PRIMARY KEY (`aa_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `aliens_abduction`
--
ALTER TABLE `aliens_abduction`
  MODIFY `aa_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
