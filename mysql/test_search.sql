-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 16-03-2015 a las 14:10:46
-- Versión del servidor: 10.0.16-MariaDB-log
-- Versión de PHP: 5.6.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `troovel_social`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `test_search`
--

CREATE TABLE IF NOT EXISTS `test_search` (
  `id` int(11) NOT NULL,
  `name` varchar(512) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `id` (`id`),
  KEY `name` (`name`(333))
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `test_search`
--

INSERT INTO `test_search` (`id`, `name`) VALUES
(1, 'Vértigo'),
(2, 'Madison Avenue'),
(3, 'Gran Vía'),
(4, 'Barceloneta'),
(5, 'Picadilly plaza'),
(6, 'Berlin'),
(7, 'Broadway'),
(8, 'Las Ramblas'),
(9, 'Central Perk'),
(10, 'KrankenHaus'),
(11, 'Castellana 128'),
(12, 'Paseo de gracia'),
(13, 'Candem Town'),
(14, 'Torstrasse'),
(15, 'New World Trace Center'),
(16, 'Verstanden'),
(17, 'Castizos'),
(18, 'Bronks'),
(19, 'Castellaneta'),
(20, 'Faro de Moncloa'),
(21, 'Plaza de Colón'),
(22, 'NH Las ventas'),
(23, 'Meliá Trafalgar'),
(24, 'Camp Nou'),
(25, 'Brandenbourg Tor'),
(26, 'Unter Del Linten'),
(27, 'St Paul'),
(28, 'Nordern see'),
(29, 'Freundin'),
(30, 'Tower Bridge'),
(31, 'Französisch'),
(32, 'Liberty island');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
