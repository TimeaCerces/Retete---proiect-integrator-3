-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Gazdă: 127.0.0.1:3306
-- Timp de generare: iul. 31, 2021 la 06:41 AM
-- Versiune server: 5.7.31
-- Versiune PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Bază de date: `retete`
--

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `ingredient`
--

DROP TABLE IF EXISTS `ingredient`;
CREATE TABLE IF NOT EXISTS `ingredient` (
  `id_ingredient` int(11) NOT NULL AUTO_INCREMENT,
  `denumire ingredient` varchar(150) NOT NULL,
  `unitate de masura` varchar(100) NOT NULL,
  PRIMARY KEY (`id_ingredient`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Eliminarea datelor din tabel `ingredient`
--

INSERT INTO `ingredient` (`id_ingredient`, `denumire ingredient`, `unitate de masura`) VALUES
(1, 'lapte', '150');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `ingrediente_reteta`
--

DROP TABLE IF EXISTS `ingrediente_reteta`;
CREATE TABLE IF NOT EXISTS `ingrediente_reteta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_reteta` int(11) NOT NULL,
  `id_ingredient` int(11) NOT NULL,
  `cantitate` int(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_reteta` (`id_reteta`),
  KEY `id_ingredient` (`id_ingredient`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `reteta`
--

DROP TABLE IF EXISTS `reteta`;
CREATE TABLE IF NOT EXISTS `reteta` (
  `id_reteta` int(11) NOT NULL AUTO_INCREMENT,
  `denumire` varchar(150) NOT NULL,
  `src` varchar(50) NOT NULL,
  `mod preparare` varchar(2000) NOT NULL,
  PRIMARY KEY (`id_reteta`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Eliminarea datelor din tabel `reteta`
--

INSERT INTO `reteta` (`id_reteta`, `denumire`, `src`, `mod preparare`) VALUES
(1, 'Salam de biscuiti', 'imagini/salam_biscuiti.jpg', 'test');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
