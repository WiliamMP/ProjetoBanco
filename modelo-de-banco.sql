-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 28-Out-2021 às 23:54
-- Versão do servidor: 5.7.31
-- versão do PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `modelo-de-banco`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `contas`
--

DROP TABLE IF EXISTS `contas`;
CREATE TABLE IF NOT EXISTS `contas` (
  `idDaConta` int(11) NOT NULL AUTO_INCREMENT,
  `nomeDaConta` varchar(45) NOT NULL,
  `senhaDaConta` varchar(45) NOT NULL,
  `Idade` int(11) NOT NULL,
  `Dinheiro_Quantiadade` decimal(20,2) NOT NULL DEFAULT '0.00',
  `valorAuxilio` decimal(20,2) NOT NULL DEFAULT '600.00',
  `vezesAuxi` int(5) NOT NULL,
  PRIMARY KEY (`idDaConta`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `contas`
--

INSERT INTO `contas` (`idDaConta`, `nomeDaConta`, `senhaDaConta`, `Idade`, `Dinheiro_Quantiadade`, `valorAuxilio`, `vezesAuxi`) VALUES
(1, 'Teste', '1234', 18, '6105.00', '600.00', 0),
(2, 'jose', '1111', 12, '0.00', '600.00', 0),
(3, 'jose', '1111', 12, '0.00', '600.00', 0),
(4, 'Wiliam', '666891', 17, '795.00', '600.00', 1),
(5, 'Veronica Patricio', '1234', 60, '600.00', '600.00', 1),
(6, 'Jose', '123', 65, '0.00', '600.00', 0),
(7, 'Adalberto', '1234', 12, '0.00', '600.00', 0),
(8, 'ads', '1234', 18, '0.00', '600.00', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `dinheiro`
--

DROP TABLE IF EXISTS `dinheiro`;
CREATE TABLE IF NOT EXISTS `dinheiro` (
  `Quantiadade` decimal(20,2) NOT NULL,
  `nomeDaMoeda` varchar(45) NOT NULL,
  PRIMARY KEY (`Quantiadade`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
