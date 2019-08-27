-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 27-Ago-2019 às 17:26
-- Versão do servidor: 5.7.24
-- versão do PHP: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `udemy`
--

DELIMITER $$
--
-- Procedures
--
DROP PROCEDURE IF EXISTS `sp_usuarios_insert`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_usuarios_insert` (IN `pdeslogin` VARCHAR(64), IN `pdessenha` VARCHAR(256))  BEGIN
	INSERT INTO hcode_php_tb_usuarios (deslogin, dessenha) VALUES(pdeslogin, pdessenha);
	SELECT * FROM hcode_php_tb_usuarios WHERE idusuario = LAST_INSERT_ID();
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `hcode_php_tb_usuarios`
--

DROP TABLE IF EXISTS `hcode_php_tb_usuarios`;
CREATE TABLE IF NOT EXISTS `hcode_php_tb_usuarios` (
  `idusuario` int(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `deslogin` varchar(64) NOT NULL,
  `dessenha` varchar(256) NOT NULL,
  `dtcadastro` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idusuario`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `hcode_php_tb_usuarios`
--

INSERT INTO `hcode_php_tb_usuarios` (`idusuario`, `deslogin`, `dessenha`, `dtcadastro`) VALUES
(3, 'silvana', '456789', '2019-08-19 19:26:20'),
(4, 'admin', '123456', '2019-08-22 17:51:24'),
(5, 'aparicio', '!#_321', '2019-08-23 13:18:30'),
(6, 'batista', '123456', '2019-08-27 13:21:49'),
(7, 'rogers', '123456', '2019-08-27 13:24:45'),
(8, 'silva', '123456', '2019-08-27 13:56:50');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
