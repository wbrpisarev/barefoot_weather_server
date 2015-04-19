-- phpMyAdmin SQL Dump
-- version 4.0.5
-- http://www.phpmyadmin.net
--
-- Хост: fox00.mysql.ukraine.com.ua
-- Время создания: Май 16 2014 г., 23:28
-- Версия сервера: 5.1.72-cll-lve
-- Версия PHP: 5.2.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";
SET NAMES utf8;


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `wb`
--

-- --------------------------------------------------------

--
-- Структура таблицы `range_temp`
--



DROP TABLE IF EXISTS `range_temp`;
CREATE TABLE IF NOT EXISTS `range_temp` (
  `id` TINYINT NOT NULL AUTO_INCREMENT,
  `mintemp` TINYINT NOT NULL,
  `maxtemp` TINYINT NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mintemp` (`mintemp`),
  KEY `maxtemp` (`maxtemp`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Дамп данных таблицы `range_temp`
--
INSERT INTO `range_temp`(`id`, `mintemp`, `maxtemp`) VALUES(1, -50, -5);
INSERT INTO `range_temp`(`id`, `mintemp`, `maxtemp`) VALUES(2, -5, 0);
INSERT INTO `range_temp`(`id`, `mintemp`, `maxtemp`) VALUES(3, 0, 5);
INSERT INTO `range_temp`(`id`, `mintemp`, `maxtemp`) VALUES(4, 5, 10);
INSERT INTO `range_temp`(`id`, `mintemp`, `maxtemp`) VALUES(5, 10, 15);
INSERT INTO `range_temp`(`id`, `mintemp`, `maxtemp`) VALUES(6, 15, 20);
INSERT INTO `range_temp`(`id`, `mintemp`, `maxtemp`) VALUES(7, 20, 25);
INSERT INTO `range_temp`(`id`, `mintemp`, `maxtemp`) VALUES(8, 25, 30);
INSERT INTO `range_temp`(`id`, `mintemp`, `maxtemp`) VALUES(9, 30, 35);
INSERT INTO `range_temp`(`id`, `mintemp`, `maxtemp`) VALUES(10, 35, 50);
