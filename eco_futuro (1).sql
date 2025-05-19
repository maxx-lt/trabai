-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 19/05/2025 às 03:24
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `eco_futuro`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `cpf` char(11) NOT NULL,
  `usuario` varchar(32) NOT NULL,
  `nome_completo` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `data_nascimento` date NOT NULL,
  `nome_exibicao` varchar(50) NOT NULL,
  `bio` text DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`cpf`, `usuario`, `nome_completo`, `email`, `senha`, `data_nascimento`, `nome_exibicao`, `bio`, `foto`, `created_at`, `updated_at`) VALUES
('23123121213', 'ticia1.uwy', 'TIcis', 'cottonsan.tt@gmail.com', '$2y$10$jr6Fo3M2Ri6msFODtTB/luMdhDvoQfJSyQLIzpdS0Mps8JLlbrBwa', '2025-05-01', 'ticiaaa', 'wadhgfg', 'download (20)_1.jpeg', '2025-05-10 14:05:25', '2025-05-10 11:11:07'),
('42142356346', 'ticaiausdgasd', 'euu', 'leticiamax11135@gmail.com', '$2y$10$pFxUXzZX/3QhHigcIhx4LeUQg/U9MJxJeh4PUNN3YSzMLJZiYWCSu', '2025-05-15', 'LELEqwq', 'qwsdwdfaf', 'floresta_3.jpeg', '2025-05-18 22:50:15', '2025-05-18 22:50:15'),
('43234237586', 'asafsdfasf', 'tician', 'ticia@gmail.com', '$2y$10$haQYlFSfo52f4UPqKJ3C5.I1CxI3deTba1DhtoVdejUdnT4fXXjyK', '2025-05-15', 'euu', 'dssf', 'download (20)_2.jpeg', '2025-05-18 23:44:10', '2025-05-18 23:44:10');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`cpf`),
  ADD UNIQUE KEY `email_unique` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
