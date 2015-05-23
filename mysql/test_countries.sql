-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 16-03-2015 a las 14:11:08
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
-- Estructura de tabla para la tabla `test_countries`
--

CREATE TABLE IF NOT EXISTS `test_countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_en` varchar(512) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name_es` varchar(512) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `test_countries`
--

INSERT INTO `test_countries` (`id`, `name_en`, `name_es`) VALUES
(1, 'Spain', 'España'),
(2, 'United States of America', 'Estados Unidos de América'),
(3, 'Germany', 'Alemania'),
(4, 'Reino unido', 'United Kingdom');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
