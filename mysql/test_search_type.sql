-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 16-03-2015 a las 14:10:38
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
-- Estructura de tabla para la tabla `test_search_type`
--

CREATE TABLE IF NOT EXISTS `test_search_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(127) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `test_search_type`
--

INSERT INTO `test_search_type` (`id`, `name`) VALUES
(1, 'hotel'),
(2, 'apartamento'),
(3, 'pension');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
