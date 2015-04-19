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
-- Структура таблицы `surface`
--



DROP TABLE IF EXISTS `surface`;
CREATE TABLE IF NOT EXISTS `surface` (
  `id` TINYINT NOT NULL AUTO_INCREMENT,
  `caption_ru` VARCHAR(50)  NOT NULL,
  `caption_uk` VARCHAR(50)  NOT NULL,
  `caption_en` VARCHAR(50)  NOT NULL,
  `desc_ru` VARCHAR(255)  NOT NULL,
  `desc_uk` VARCHAR(255)  NOT NULL,
  `desc_en` VARCHAR(255)  NOT NULL,
  `mintemp` TINYINT NOT NULL,
  `maxtemp` TINYINT NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mintemp` (`mintemp`),
  KEY `maxtemp` (`maxtemp`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Дамп данных таблицы `surface`
--

INSERT INTO `surface` (`id`, `caption_ru`, `caption_uk`, `caption_en`, `desc_ru`, `desc_uk`, `desc_en`, `mintemp`, `maxtemp`) VALUES(1, 'cухой асфальт', 'сухий асфальт', 'dry asphalt', 'Асфальт - твердая искусственная поверхность из естественных материалов с разными тактильными свойствами: ровный, с вкраплениями камешков, с буграми и трещинами. При ходьбе босиком по асфальту подошвы пачкаются внешней пылью.', 'Асфальт - тверда штучна поверхня з природних матеріалів з різними тактильними властивостями: рівний, з вкрапленнями камінчиків, з буграми і тріщинами. При ходьбі босоніж по асфальту підошви брудняться зовнішньої пилом.', 'Asphalt - hard artificial surface of natural materials with different tactile properties: flat, interspersed with stones, with mounds and cracks. When walking barefoot on asphalt soles spoiled external dust.', -50, 50);
INSERT INTO `surface` (`id`, `caption_ru`, `caption_uk`, `caption_en`, `desc_ru`, `desc_uk`, `desc_en`, `mintemp`, `maxtemp`) VALUES(2, 'мокрый асфальт', 'мокрий асфальт', 'wet asphalt', 'Мокрый асфальт - асфальт с дополнительными тактильными свойствами, вызванными влагой. Под подошвами может ощущаться размокшие пыль и песок. При ходьбе босиком подошвы пачкаются этими прилипающими частичками.', 'Мокрий асфальт - асфальт з додатковими тактильними властивостями, викликаними вологою. Під підошвами може відчуватися розмокші пил і пісок. При ходьбі босоніж підошви брудняться цими що прилипають частинками.', 'Wet asphalt - asphalt with additional tactile properties caused by moisture. Under the soles can be felt sop dust and sand. When walking barefoot soles spoiled these adhering particles.', 0, 50);
INSERT INTO `surface` (`id`, `caption_ru`, `caption_uk`, `caption_en`, `desc_ru`, `desc_uk`, `desc_en`, `mintemp`, `maxtemp`) VALUES(3, 'утоптанный снег', 'утоптаний сніг', 'trodden snow', 'Утоптанный снег - относительно твердая естественная поверхность из замершей воды. Обладает свойствами льда: бывает скользкой. При ходьбе подошвы не пачкаются. Внимание! При низких температурах может вызвать обморожение.', 'Утоптаний сніг - відносно тверда природна поверхня з завмерлої води. Має властивості льоду: буває слизькою. При ходьбі підошва не брудняться. Увага! При низьких температурах може викликати обмороження.', 'Trodden snow - a relatively hard natural surface water from non-viable. Has the properties of ice: the case slippery. When walking, the soles are not spoiled. Attention! At low temperatures can cause frostbite.', -50, 5);
INSERT INTO `surface` (`id`, `caption_ru`, `caption_uk`, `caption_en`, `desc_ru`, `desc_uk`, `desc_en`, `mintemp`, `maxtemp`) VALUES(4, 'мокрый грунт', 'мокрий грунт', 'wet soil', 'Мокрый грунт - естественная мягкая поверхность, состоящая из почвы, глины, песка, частичек опавших листьев, размокших из-за воды. При ходьбе босиком подошвы ног могут сильно пачкаться.', 'Мокрий грунт - природна м\'яка поверхня, що складається з грунту, глини, піску, частинок опалого листя, розмоклих через води. При ходьбі босоніж підошви ніг можуть сильно бруднитися.', 'Wet soil - natural soft surface consisting of soil, clay, sand, particles of dead leaves, soggy because of the water. When walking barefoot soles of the feet can be very dirty.', 0, 50);
INSERT INTO `surface` (`id`, `caption_ru`, `caption_uk`, `caption_en`, `desc_ru`, `desc_uk`, `desc_en`, `mintemp`, `maxtemp`) VALUES(5, 'cухой асфальт (в тени)', 'сухий асфальт (в тіні)', 'dry asphalt (in the shade)', 'Асфальт - твердая искусственная поверхность из естественных материалов с разными тактильными свойствами: ровный, с вкраплениями камешков, с буграми и трещинами. При ходьбе босиком по асфальту подошвы пачкаются внешней пылью.', 'Асфальт - тверда штучна поверхня з природних матеріалів з різними тактильними властивостями: рівний, з вкрапленнями камінчиків, з буграми і тріщинами. При ходьбі босоніж по асфальту підошви брудняться зовнішньої пилом.', 'Asphalt - hard artificial surface of natural materials with different tactile properties: flat, interspersed with stones, with mounds and cracks. When walking barefoot on asphalt soles spoiled external dust.', -50, 50);
