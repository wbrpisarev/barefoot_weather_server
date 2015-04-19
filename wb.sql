-- MySQL dump 10.13  Distrib 5.1.69, for redhat-linux-gnu (x86_64)
--
-- Host: localhost    Database: wb
-- ------------------------------------------------------
-- Server version	5.1.69

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `email` varchar(200) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (3,'test@testdomain.com','test');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback_weather`
--

DROP TABLE IF EXISTS `feedback_weather`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback_weather` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `surface_id` tinyint(4) NOT NULL,
  `temp_c` double NOT NULL,
  `coeff` double NOT NULL,
  `location` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `surface_id` (`surface_id`),
  KEY `lacation` (`location`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback_weather`
--

LOCK TABLES `feedback_weather` WRITE;
/*!40000 ALTER TABLE `feedback_weather` DISABLE KEYS */;
INSERT INTO `feedback_weather` VALUES (1,0,8,16,'Donetsk,Ukraine'),(2,0,8,16,'Donetsk,Ukraine'),(3,0,8,16,'Donetsk,Ukraine'),(4,0,25,16,'Donetsk,Ukraine'),(5,2,-8,12,'Donetsk,Ukraine'),(14,0,10,16,'Novosibirsk'),(15,0,20,15,'Novosibirsk'),(16,0,8,15,'Novosibirsk'),(17,2,6,15,'Novosibirsk'),(18,2,6,15,'Novosibirsk'),(19,0,12,15,'Novosibirsk'),(20,1,2,12,'Novosibirsk'),(21,0,4,15,'Novosibirsk'),(22,0,4,15,'Novosibirsk'),(23,0,-9,15,'Novosibirsk'),(24,0,4,15,'Novosibirsk'),(25,0,4,15,'Novosibirsk'),(26,0,-2,15,'Novosibirsk'),(27,0,1,15,'Novosibirsk');
/*!40000 ALTER TABLE `feedback_weather` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `links`
--

DROP TABLE IF EXISTS `links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `links` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `uri` varchar(200) NOT NULL,
  `desc_ru` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `desc_uk` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `desc_en` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uri` (`uri`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `links`
--

LOCK TABLES `links` WRITE;
/*!40000 ALTER TABLE `links` DISABLE KEYS */;
INSERT INTO `links` VALUES (1,'http://dirtysoles.1bb.ru/','Крупнейший русскоязычный форум посвященный босоногому образу жизни, организованный петербургской танцовщицей Ольгой Гавва, ходящей босиком круглый год.','Найбільший російськомовний форум присвячений босоногому способу життя, організований петербурзькою танцівницею  Ольгою Гавва, що ходить босоніж цілий рік.','The largest Russian-language forum dedicated to barefoot lifestyle, organized by the St. Petersburg dancer Olga Gavva that walks barefoot all year round.'),(2,'http://vk.com/bosykom','Открытая группа ВК, посвященная хождению босиком, где можно познакомиться с единомышленниками по босоногому хобби, поделиться опытом в соц. сети без доп. регистраций.','Відкрита група ВК, присвячена ходіння босоніж, де можна познайомитися з однодумцями по босоногому хобі, поділитися досвідом в соц. мережі без доп. реєстрацій.','Public Group VC dedicated to walking barefoot, where you can meet like-minded people on barefoot hobby, to share their experiences in the social. network without additional. registrations.'),(3,'http://rbfeet.com/','Сайт является официальным информационным и пропагандистским органом общественной организации «Некоммерческий Негосударственный социально-Культурный Проект «АССОЦИАЦИЯ БОСОНОГИХ» (Новосибирск).','Сайт є офіційним інформаційним і пропагандистським органом громадської організації «Некомерційний Недержавний соціально-Культурний Проект« АСОЦІАЦІЯ БОСОНОГИХ »(Новосибірськ).','The site is the official information and propaganda organ of the NGO \"Non-governmental non-profit socio-cultural project\" ASSOCIATION of BAREFOOTS \"(Novosibirsk).'),(4,'http://www.barefooters.org/','Сайт международного общества босоногого образа жизни (SBL). Общество поддерживает личную свободу ходить босиком каждого и стремится исправить мифы и заблуждения о ходьбе босиком.','Сайт міжнародного товариства босоногого способу життя (SBL). Суспільство підтримує особисту свободу ходити босоніж кожного і прагне виправити міфи і помилки про ходьбі босоніж.','Website of the International Society barefoot lifestyle (SBL). Society supports personal freedom to walk barefoot each and seeks to correct the myths and misconceptions about walking barefoot.');
/*!40000 ALTER TABLE `links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `range_sensation`
--

DROP TABLE IF EXISTS `range_sensation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `range_sensation` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `mincoeff` double NOT NULL,
  `maxcoeff` double NOT NULL,
  `sensation_ru` varchar(100) NOT NULL,
  `sensation_uk` varchar(100) NOT NULL,
  `sensation_en` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mincoeff` (`mincoeff`),
  KEY `maxcoeff` (`maxcoeff`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `range_sensation`
--

LOCK TABLES `range_sensation` WRITE;
/*!40000 ALTER TABLE `range_sensation` DISABLE KEYS */;
INSERT INTO `range_sensation` VALUES (1,10,10.25,'ледяная (тяжело терпеть)','крижана (важко терпіти)','ice (hard to tolerate)'),(2,10.25,11,'ледяная','крижана','ice'),(3,11,12,'холодная','холодна','cold'),(4,12,13,'довольно холодная','досить холодна','quite cold'),(5,13,14,'прохладная','прохолодна','cool'),(6,14,15,'нейтральная','нейтральна','neutral'),(7,15,16,'теплая','тепла','warm'),(8,16,17,'довольно горячая','досить гаряча','pretty hot'),(9,17,18,'горячая','гаряча','hot'),(10,18,18.75,'очень горячая','дуже гаряча','very hot'),(11,18.75,19,'раскаленная (тяжело терпеть)','розпечена (важко терпіти)','red-hot (hard to tolerate)');
/*!40000 ALTER TABLE `range_sensation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `range_temp`
--

DROP TABLE IF EXISTS `range_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `range_temp` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `mintemp` tinyint(4) NOT NULL,
  `maxtemp` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mintemp` (`mintemp`),
  KEY `maxtemp` (`maxtemp`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `range_temp`
--

LOCK TABLES `range_temp` WRITE;
/*!40000 ALTER TABLE `range_temp` DISABLE KEYS */;
INSERT INTO `range_temp` VALUES (1,-50,-5),(2,-5,0),(3,0,5),(4,5,10),(5,10,15),(6,15,20),(7,20,25),(8,25,30),(9,30,35),(10,35,50);
/*!40000 ALTER TABLE `range_temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surface`
--

DROP TABLE IF EXISTS `surface`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surface` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `caption_ru` varchar(50) NOT NULL,
  `caption_uk` varchar(50) NOT NULL,
  `caption_en` varchar(50) NOT NULL,
  `desc_ru` varchar(255) NOT NULL,
  `desc_uk` varchar(255) NOT NULL,
  `desc_en` varchar(255) NOT NULL,
  `mintemp` tinyint(4) NOT NULL,
  `maxtemp` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mintemp` (`mintemp`),
  KEY `maxtemp` (`maxtemp`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surface`
--

LOCK TABLES `surface` WRITE;
/*!40000 ALTER TABLE `surface` DISABLE KEYS */;
INSERT INTO `surface` VALUES (1,'cухой асфальт','сухий асфальт','dry asphalt','Асфальт - твердая искусственная поверхность из естественных материалов с разными тактильными свойствами: ровный, с вкраплениями камешков, с буграми и трещинами. При ходьбе босиком по асфальту подошвы пачкаются внешней пылью.','Асфальт - тверда штучна поверхня з природних матеріалів з різними тактильними властивостями: рівний, з вкрапленнями камінчиків, з буграми і тріщинами. При ходьбі босоніж по асфальту підошви брудняться зовнішньої пилом.','Asphalt - hard artificial surface of natural materials with different tactile properties: flat, interspersed with stones, with mounds and cracks. When walking barefoot on asphalt soles spoiled external dust.',-50,50),(2,'мокрый асфальт','мокрий асфальт','wet asphalt','Мокрый асфальт - асфальт с дополнительными тактильными свойствами, вызванными влагой. Под подошвами может ощущаться размокшие пыль и песок. При ходьбе босиком подошвы пачкаются этими прилипающими частичками.','Мокрий асфальт - асфальт з додатковими тактильними властивостями, викликаними вологою. Під підошвами може відчуватися розмокші пил і пісок. При ходьбі босоніж підошви брудняться цими що прилипають частинками.','Wet asphalt - asphalt with additional tactile properties caused by moisture. Under the soles can be felt sop dust and sand. When walking barefoot soles spoiled these adhering particles.',0,50),(3,'утоптанный снег','утоптаний сніг','trodden snow','Утоптанный снег - относительно твердая естественная поверхность из замершей воды. Обладает свойствами льда: бывает скользкой. При ходьбе подошвы не пачкаются. Внимание! При низких температурах может вызвать обморожение.','Утоптаний сніг - відносно тверда природна поверхня з завмерлої води. Має властивості льоду: буває слизькою. При ходьбі підошва не брудняться. Увага! При низьких температурах може викликати обмороження.','Trodden snow - a relatively hard natural surface water from non-viable. Has the properties of ice: the case slippery. When walking, the soles are not spoiled. Attention! At low temperatures can cause frostbite.',-50,5),(4,'мокрый грунт','мокрий грунт','wet soil','Мокрый грунт - естественная мягкая поверхность, состоящая из почвы, глины, песка, частичек опавших листьев, размокших из-за воды. При ходьбе босиком подошвы ног могут сильно пачкаться.','Мокрий грунт - природна м\'яка поверхня, що складається з грунту, глини, піску, частинок опалого листя, розмоклих через води. При ходьбі босоніж підошви ніг можуть сильно бруднитися.','Wet soil - natural soft surface consisting of soil, clay, sand, particles of dead leaves, soggy because of the water. When walking barefoot soles of the feet can be very dirty.',0,50),(5,'cухой асфальт (в тени)','сухий асфальт (в тіні)','dry asphalt (in the shade)','Асфальт - твердая искусственная поверхность из естественных материалов с разными тактильными свойствами: ровный, с вкраплениями камешков, с буграми и трещинами. При ходьбе босиком по асфальту подошвы пачкаются внешней пылью.','Асфальт - тверда штучна поверхня з природних матеріалів з різними тактильними властивостями: рівний, з вкрапленнями камінчиків, з буграми і тріщинами. При ходьбі босоніж по асфальту підошви брудняться зовнішньої пилом.','Asphalt - hard artificial surface of natural materials with different tactile properties: flat, interspersed with stones, with mounds and cracks. When walking barefoot on asphalt soles spoiled external dust.',-50,50);
/*!40000 ALTER TABLE `surface` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-11-10 13:53:26
