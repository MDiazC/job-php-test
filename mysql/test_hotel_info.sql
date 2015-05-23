-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 16-03-2015 a las 14:10:53
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
-- Estructura de tabla para la tabla `test_hotel_info`
--

CREATE TABLE IF NOT EXISTS `test_hotel_info` (
  `entity_id` int(11) NOT NULL,
  `name` varchar(512) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `stars` int(11) NOT NULL,
  `type_room` int(11) NOT NULL,
  UNIQUE KEY `id` (`entity_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `test_hotel_info`
--

INSERT INTO `test_hotel_info` (`entity_id`, `name`, `stars`, `type_room`) VALUES
(1, 'Hotel Vértigo', 3, 1),
(2, 'Hotel Madison Avenue', 4, 2),
(3, 'Hotel Gran Vía', 2, 4),
(4, 'Hotel Barceloneta', 3, 1),
(5, 'Hotel Picadilly plaza', 5, 2),
(6, 'Berlin Hotel', 3, 4),
(7, 'Broadway Hotel', 2, 2),
(8, 'Hotel Las Ramblas', 4, 1),
(9, 'Central Perk Hotel', 5, 5),
(10, 'Hotel KrankenHaus', 4, 4),
(22, 'Hotel NH Las ventas', 4, 4),
(23, 'Meliá Trafalgar Hotel', 5, 2),
(24, 'Hotel Camp Nou', 3, 5),
(25, 'Brandenbourg Tor Hotel', 4, 2),
(26, 'Hotel Unter Del Linten', 4, 2),
(27, 'St Paul Hotel', 3, 4),
(28, 'Nordern see Hotel', 2, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
