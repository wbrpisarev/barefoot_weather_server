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
-- Структура таблицы `range_sensation`
--



DROP TABLE IF EXISTS `range_sensation`;
CREATE TABLE IF NOT EXISTS `range_sensation` (
  `id` TINYINT NOT NULL AUTO_INCREMENT,
  `mincoeff` DOUBLE NOT NULL,
  `maxcoeff` DOUBLE NOT NULL,
  `sensation_ru` VARCHAR(100) NOT NULL,
  `sensation_uk` VARCHAR(100) NOT NULL,
  `sensation_en` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mincoeff` (`mincoeff`),
  KEY `maxcoeff` (`maxcoeff`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Дамп данных таблицы `range_sensation`
--

INSERT INTO `range_sensation`(`id`, `mincoeff`, `maxcoeff`, `sensation_ru`, `sensation_uk`, `sensation_en`) VALUES(1, 10.0, 10.25, 'ледяная (тяжело терпеть)', 'крижана (важко терпіти)', 'ice (hard to tolerate)');
INSERT INTO `range_sensation`(`id`, `mincoeff`, `maxcoeff`, `sensation_ru`, `sensation_uk`, `sensation_en`) VALUES(2, 10.25, 11.0, 'ледяная', 'крижана', 'ice');
INSERT INTO `range_sensation`(`id`, `mincoeff`, `maxcoeff`, `sensation_ru`, `sensation_uk`, `sensation_en`) VALUES(3, 11.0, 12.0, 'холодная', 'холодна', 'cold');
INSERT INTO `range_sensation`(`id`, `mincoeff`, `maxcoeff`, `sensation_ru`, `sensation_uk`, `sensation_en`) VALUES(4, 12.0, 13.0, 'довольно холодная', 'досить холодна', 'quite cold');
INSERT INTO `range_sensation`(`id`, `mincoeff`, `maxcoeff`, `sensation_ru`, `sensation_uk`, `sensation_en`) VALUES(5, 13.0, 14.0, 'прохладная', 'прохолодна', 'cool');
INSERT INTO `range_sensation`(`id`, `mincoeff`, `maxcoeff`, `sensation_ru`, `sensation_uk`, `sensation_en`) VALUES(6, 14.0, 15.0, 'нейтральная', 'нейтральна', 'neutral');
INSERT INTO `range_sensation`(`id`, `mincoeff`, `maxcoeff`, `sensation_ru`, `sensation_uk`, `sensation_en`) VALUES(7, 15.0, 16.0, 'теплая', 'тепла', 'warm');
INSERT INTO `range_sensation`(`id`, `mincoeff`, `maxcoeff`, `sensation_ru`, `sensation_uk`, `sensation_en`) VALUES(8, 16.0, 17.0, 'довольно горячая', 'досить гаряча', 'pretty hot');
INSERT INTO `range_sensation`(`id`, `mincoeff`, `maxcoeff`, `sensation_ru`, `sensation_uk`, `sensation_en`) VALUES(9, 17.0, 18.0, 'горячая', 'гаряча', 'hot');
INSERT INTO `range_sensation`(`id`, `mincoeff`, `maxcoeff`, `sensation_ru`, `sensation_uk`, `sensation_en`) VALUES(10, 18.0, 18.75, 'очень горячая', 'дуже гаряча', 'very hot');
INSERT INTO `range_sensation`(`id`, `mincoeff`, `maxcoeff`, `sensation_ru`, `sensation_uk`, `sensation_en`) VALUES(11, 18.75, 19.0, 'раскаленная (тяжело терпеть)', 'розпечена (важко терпіти)', 'red-hot (hard to tolerate)');
