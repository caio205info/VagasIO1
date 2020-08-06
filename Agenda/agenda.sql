-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 06-Ago-2020 às 13:49
-- Versão do servidor: 10.4.13-MariaDB
-- versão do PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `agenda`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `idFuncionario` int(11) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `setor` varchar(255) NOT NULL,
  `ramal` int(5) NOT NULL,
  `cel1` int(11) NOT NULL,
  `opcao` varchar(3) DEFAULT NULL,
  `cel2` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`idFuncionario`, `nome`, `setor`, `ramal`, `cel1`, `opcao`, `cel2`) VALUES
(5, '', 'Programador', 1234, 123456789, 'nao', '987654321'),
(6, '', 'programador', 1234, 123456789, 'sim', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `setor`
--

CREATE TABLE `setor` (
  `idSetor` int(11) NOT NULL,
  `nomeSetor` varchar(150) NOT NULL,
  `idFuncionario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `setor`
--

INSERT INTO `setor` (`idSetor`, `nomeSetor`, `idFuncionario`) VALUES
(1, 'Almoxarife', NULL),
(3, 'Analista Contábil', NULL),
(4, 'Analista de BI', NULL),
(5, 'Analista de Compras', NULL),
(6, 'Analista de Contas a Receber', NULL),
(7, 'Analista de Contas a Pagar', NULL),
(9, 'Analista de Controladoria', NULL),
(10, 'Analista de Desenvolvimento Humano', NULL),
(12, 'Analista de DP', NULL),
(13, 'Analista de Meio Ambiente', NULL),
(14, 'Analista de Qualidade', NULL),
(15, 'Analista de Sistemas e Infraestrutura', NULL),
(16, 'Analista de Tesouraria', NULL),
(18, 'Assessor de Marketing', NULL),
(19, 'Assessor Jurídico', NULL),
(20, 'Assistente Administrativo da Manutenção', NULL),
(21, 'Assistente Comercial Máquinas', NULL),
(22, 'Assistente Contábil', NULL),
(23, 'Assistente Contas a Receber', NULL),
(24, 'Assistente de Compras', NULL),
(25, 'Assistente de Contas a Pagar', NULL),
(26, 'Assistente de Controladoria', NULL),
(27, 'Assistente de Desenvolvimento Humano', NULL),
(28, 'Assistente de DP', NULL),
(30, 'Assistente de Patrimônio', NULL),
(31, 'Assistente de Tesouraria', NULL),
(32, 'Assistente de Transportes', NULL),
(33, 'Auxiliar Contábil', NULL),
(34, 'Auxiliar de Almoxarifado', NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`idFuncionario`),
  ADD UNIQUE KEY `idFuncionario` (`idFuncionario`);

--
-- Índices para tabela `setor`
--
ALTER TABLE `setor`
  ADD PRIMARY KEY (`idSetor`),
  ADD UNIQUE KEY `idSetor` (`idSetor`),
  ADD UNIQUE KEY `nomeSetor` (`nomeSetor`),
  ADD KEY `setorFuncionarioFK` (`idFuncionario`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `idFuncionario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `setor`
--
ALTER TABLE `setor`
  MODIFY `idSetor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `setor`
--
ALTER TABLE `setor`
  ADD CONSTRAINT `setorFuncionarioFK` FOREIGN KEY (`idFuncionario`) REFERENCES `funcionario` (`idFuncionario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
