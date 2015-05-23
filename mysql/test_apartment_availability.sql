-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 16-03-2015 a las 14:11:28
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
-- Estructura de tabla para la tabla `test_apartment_availability`
--

CREATE TABLE IF NOT EXISTS `test_apartment_availability` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_id` int(11) NOT NULL,
  `availables` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Volcado de datos para la tabla `test_apartment_availability`
--

INSERT INTO `test_apartment_availability` (`id`, `entity_id`, `availables`) VALUES
(1, 11, 0),
(2, 12, 3),
(3, 13, 4),
(4, 14, 1),
(5, 15, 1),
(6, 16, 4),
(7, 17, 8),
(8, 18, 1),
(9, 19, 3),
(10, 20, 15),
(11, 21, 0),
(12, 29, 8),
(13, 30, 9),
(14, 31, 0),
(15, 32, 10);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
