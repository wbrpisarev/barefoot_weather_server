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
-- Структура таблицы `links`
--



DROP TABLE IF EXISTS `links`;
CREATE TABLE IF NOT EXISTS `links` (
  `id` TINYINT NOT NULL AUTO_INCREMENT,
  `uri` VARCHAR(200)  NOT NULL,
  `desc_ru` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `desc_uk` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `desc_en` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uri` (`uri`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Дамп данных таблицы `links`
--


INSERT INTO `links` (`id`, `uri`, `desc_ru`, `desc_uk`, `desc_en`) VALUES(1, 'http://dirtysoles.1bb.ru/', 'Крупнейший русскоязычный форум посвященный босоногому образу жизни, организованный петербургской танцовщицей Ольгой Гавва, ходящей босиком круглый год.', 'Найбільший російськомовний форум присвячений босоногому способу життя, організований петербурзькою танцівницею  Ольгою Гавва, що ходить босоніж цілий рік.', 'The largest Russian-language forum dedicated to barefoot lifestyle, organized by the St. Petersburg dancer Olga Gavva that walks barefoot all year round.');
INSERT INTO `links` (`id`, `uri`, `desc_ru`, `desc_uk`, `desc_en`) VALUES(2, 'http://vk.com/bosykom', 'Открытая группа ВК, посвященная хождению босиком, где можно познакомиться с единомышленниками по босоногому хобби, поделиться опытом в соц. сети без доп. регистраций.', 'Відкрита група ВК, присвячена ходіння босоніж, де можна познайомитися з однодумцями по босоногому хобі, поділитися досвідом в соц. мережі без доп. реєстрацій.', 'Public Group VC dedicated to walking barefoot, where you can meet like-minded people on barefoot hobby, to share their experiences in the social. network without additional. registrations.');
INSERT INTO `links` (`id`, `uri`, `desc_ru`, `desc_uk`, `desc_en`) VALUES(3, 'http://rbfeet.com/', 'Сайт является официальным информационным и пропагандистским органом общественной организации «Некоммерческий Негосударственный социально-Культурный Проект «АССОЦИАЦИЯ БОСОНОГИХ» (Новосибирск).', 'Сайт є офіційним інформаційним і пропагандистським органом громадської організації «Некомерційний Недержавний соціально-Культурний Проект« АСОЦІАЦІЯ БОСОНОГИХ »(Новосибірськ).', 'The site is the official information and propaganda organ of the NGO "Non-governmental non-profit socio-cultural project" ASSOCIATION of BAREFOOTS "(Novosibirsk).');
INSERT INTO `links` (`id`, `uri`, `desc_ru`, `desc_uk`, `desc_en`) VALUES(4, 'http://www.barefooters.org/', 'Сайт международного общества босоногого образа жизни (SBL). Общество поддерживает личную свободу ходить босиком каждого и стремится исправить мифы и заблуждения о ходьбе босиком.', 'Сайт міжнародного товариства босоногого способу життя (SBL). Суспільство підтримує особисту свободу ходити босоніж кожного і прагне виправити міфи і помилки про ходьбі босоніж.', 'Website of the International Society barefoot lifestyle (SBL). Society supports personal freedom to walk barefoot each and seeks to correct the myths and misconceptions about walking barefoot.');
