-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 16-03-2015 a las 14:11:21
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
-- Estructura de tabla para la tabla `test_apartment_info`
--

CREATE TABLE IF NOT EXISTS `test_apartment_info` (
  `entity_id` int(11) NOT NULL,
  `name` varchar(512) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `num_guests` int(11) NOT NULL,
  `type_room` int(11) NOT NULL,
  UNIQUE KEY `id` (`entity_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `test_apartment_info`
--

INSERT INTO `test_apartment_info` (`entity_id`, `name`, `num_guests`, `type_room`) VALUES
(11, 'Apartamentos Castellana 128', 5, 3),
(12, 'Apartamentos Paseo de gracia', 6, 3),
(13, 'Candem Town Apartments', 8, 3),
(14, 'Appartements Torstrasse', 4, 3),
(15, 'Apartaments New World Trace Center', 6, 3),
(16, 'Verstanden Appartements', 7, 3),
(17, 'Apartamentos Castizos', 4, 3),
(18, 'Apartaments Bronks', 5, 3),
(19, 'Apartamentos Castellaneta', 5, 3),
(20, 'Apartamentos Faro de Moncloa', 4, 3),
(21, 'Apartamentos Plaza de Colón', 5, 3),
(29, 'Appartements Freundin', 7, 3),
(30, 'Tower Bridge Apartaments', 8, 3),
(31, 'Appartements Französisch', 3, 3),
(32, 'Liberty island Apartaments', 8, 3);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
