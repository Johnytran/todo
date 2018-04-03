-- MySQL dump 10.13  Distrib 5.5.57, for debian-linux-gnu (x86_64)
--
-- Host: 0.0.0.0    Database: data
-- ------------------------------------------------------
-- Server version	5.5.57-0ubuntu0.14.04.1

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
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images` (
  `image_id` int(11) NOT NULL AUTO_INCREMENT,
  `image_file_name` varchar(256) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `caption` varchar(128) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`image_id`),
  UNIQUE KEY `image_file_name` (`image_file_name`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (1,'dummy-640x400-AzukiBeans-plain.jpg','2017-12-06 23:24:05','',1),(2,'dummy-640x400-Cherry-plain.jpg','2017-12-06 23:24:05','',1),(3,'dummy-640x400-Chocolate-plain.jpg','2017-12-06 23:24:58','',1),(4,'dummy-640x400-Eggs-plain.jpg','2017-12-06 23:24:58','',1),(5,'dummy-640x400-Fish-plain.jpg','2017-12-06 23:25:38','',1),(6,'dummy-640x400-FrozenRaspberry-plain.jpg','2017-12-06 23:25:38','',1),(7,'dummy-640x400-Kiwi-plain.jpg','2017-12-06 23:26:00','',1),(8,'dummy-640x400-KiwiSolo-plain.jpg','2017-12-06 23:26:00','',1),(9,'dummy-640x400-Lecker-plain.jpg','2017-12-06 23:26:29','',1),(10,'dummy-640x400-MandarinOrange-plain.jpg','2017-12-06 23:26:29','',1),(11,'dummy-640x400-Orange-plain.jpg','2017-12-06 23:26:52','',1),(12,'dummy-640x400-Spicery-plain.jpg','2017-12-06 23:26:52','',1),(13,'dummy-640x400-Spreewald-plain.jpg','2017-12-06 23:29:15','',1),(14,'dummy-640x400-Spuma-plain.jpg','2017-12-06 23:29:15','',1),(15,'dummy-640x400-Strawberry-plain.jpg','2017-12-06 23:29:37','',1),(16,'dummy-640x400-Wine-plain.jpg','2017-12-06 23:29:37','',1);
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-20  3:38:25
