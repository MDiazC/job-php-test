-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 16-03-2015 a las 14:10:30
-- Versión del servidor: 10.0.16-MariaDB-log
-- Versión de PHP: 5.6.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `test_destinia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `test_type_room`
--

CREATE TABLE IF NOT EXISTS `test_type_room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_en` varchar(512) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name_es` varchar(512) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `test_type_room`
--

INSERT INTO `test_type_room` (`id`, `name_en`, `name_es`) VALUES
(1, 'Single room', 'Habitación sencilla'),
(2, 'Twin room', 'Habitación doble'),
(3, 'Apartment', 'Apartamento'),
(4, 'Twin separate room', 'Habitación doble con camas separadas'),
(5, 'Triple', 'Hablitación triple');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
