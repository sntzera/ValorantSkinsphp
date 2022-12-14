-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 30-Nov-2022 às 18:36
-- Versão do servidor: 5.7.36
-- versão do PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bd_skins`
--
CREATE DATABASE IF NOT EXISTS `bd_skins` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `bd_skins`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin`
--

DROP TABLE IF EXISTS `tb_admin`;
CREATE TABLE IF NOT EXISTS `tb_admin` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `senha` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagem` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `tb_admin`
--

INSERT INTO `tb_admin` (`codigo`, `nome`, `email`, `senha`, `imagem`) VALUES
(4, 'Henrique', 'rickzin@delas.com', '202cb962ac59075b964b07152d234b70', 'pfp/0e059017d75a635b5160b6cd7b7851e4.jpg'),
(3, 'sntzera', 'gustavo329886@gmail.com', '202cb962ac59075b964b07152d234b70', 'pfp/3d5b57f1d09a462118f925c5183d844c.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_skins`
--

DROP TABLE IF EXISTS `tb_skins`;
CREATE TABLE IF NOT EXISTS `tb_skins` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `arma` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bundle` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `preco` int(6) NOT NULL,
  `imagem` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `tb_skins`
--

INSERT INTO `tb_skins` (`codigo`, `nome`, `arma`, `bundle`, `preco`, `imagem`) VALUES
(16, 'spectre minima', 'spectre', 'minima', 1275, 'imgs/9d51a520c72e74766c5225138e05720b.jpg'),
(18, 'melee wand snowfall', 'melee wand', 'snowfall', 2550, 'imgs/99fc0912d1e6120633cfb493eb0a0625.jpg'),
(17, 'operator rgx 11z pro', 'operator', 'rgx 11z pro', 2175, 'imgs/def5ae4048359fcc279765bbf0a5ddc4.jpg'),
(14, 'ghost soberania', 'ghost', 'soberania', 1775, 'imgs/6d7b4e9b5397bffc14595dca0712df07.jpg'),
(12, 'Vandal Ion', 'Vandal', 'Ion', 1775, 'imgs/c96974e0a19e8684e0028ac7aaee841f.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
