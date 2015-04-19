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
-- Структура таблицы `feedback_weather`
--



DROP TABLE IF EXISTS `feedback_weather`;
CREATE TABLE IF NOT EXISTS `feedback_weather` (
  `id` TINYINT NOT NULL AUTO_INCREMENT,
  `surface_id` TINYINT NOT NULL,
  `temp_c` DOUBLE NOT NULL,
  `coeff` DOUBLE NOT NULL,
  `location`  VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `surface_id` (`surface_id`),
  KEY `lacation` (`location`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Дамп данных таблицы `feedback_weather`
--



