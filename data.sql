-- MySQL dump 10.13  Distrib 8.0.25, for macos11 (x86_64)
--
-- Host: localhost    Database: exercise
-- ------------------------------------------------------
-- Server version	8.3.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `confections`
--

DROP TABLE IF EXISTS `confections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `confections` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `cname` varchar(255) DEFAULT NULL,
  `prizewinning` bit(1) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `confections`
--

LOCK TABLES `confections` WRITE;
/*!40000 ALTER TABLE `confections` DISABLE KEYS */;
INSERT INTO `confections` VALUES (1,'Süni',_binary '\0','mixed'),(2,'Sajtos pogácsa salty',_binary '\0','biscuit'),(3,'Gesztenyealagút',_binary '\0','mixed'),(4,'Diós-mákos',_binary '\0','roll'),(5,'Sajttorta (málnás)',_binary '\0','cake'),(6,'Citrom',_binary '\0','cake'),(7,'Eszterházy cake',_binary '\0','slice'),(8,'Rákóczi-túrós',_binary '\0','pie'),(9,'Meggyes kocka creamy',_binary '\0','cake'),(10,'Legényfogó',_binary '','cake'),(11,'Alpesi karamell cake',_binary '\0','slice'),(12,'Kókuszcsók sweet',_binary '\0','biscuit'),(13,'Habos mákos',_binary '\0','pie'),(14,'Szilvás',_binary '\0','pie'),(15,'Juhtúrós párna salty',_binary '\0','biscuit'),(16,'Mákos guba cake',_binary '\0','slice'),(17,'Néró sweet',_binary '\0','biscuit'),(18,'Sacher cake',_binary '\0','slice'),(19,'Citrom cake',_binary '\0','slice'),(20,'Ribizlihabos-almás réteges special',_binary '','cake'),(21,'Három kívánság',_binary '','cake'),(22,'Dobos',_binary '\0','cake'),(23,'Epres mascarpone cake',_binary '\0','slice'),(24,'Csokoládémousse',_binary '\0','cake'),(25,'Oroszkrém',_binary '\0','cake'),(26,'Medvetalp',_binary '\0','mixed'),(27,'Trüffel',_binary '\0','cake'),(28,'Tejszínes gyümölcsös (meggy)',_binary '\0','cake'),(29,'Mákos-szilvalekváros',_binary '\0','roll'),(30,'Ribizlihabos-﻿almá﻿s réteges tortaszelet cake',_binary '\0','slice'),(31,'Marcipános vágott sweet',_binary '\0','biscuit'),(32,'Indiáner',_binary '\0','mixed'),(33,'Meggyes',_binary '\0','pie'),(34,'Mákos',_binary '\0','roll'),(35,'Sós karamella',_binary '\0','cake'),(36,'Legényfogó cake',_binary '\0','slice'),(37,'Rigó Jancsi',_binary '\0','cake'),(38,'Tejszínes gyümölcsös (erdei gyümölcs)',_binary '\0','cake'),(39,'Ez+Az (csokoládé és gesztenye)',_binary '\0','cake'),(40,'Málnás mascarpone',_binary '\0','cake'),(41,'Dobos cake',_binary '\0','slice'),(42,'Ferrero',_binary '\0','cake'),(43,'Vegyes házi pitefalatok',_binary '\0','pie'),(44,'Ökörszem sweet',_binary '\0','biscuit'),(45,'Danubius kocka creamy',_binary '\0','cake'),(46,'Sajtkrémmel töltött fánkocska salty',_binary '\0','biscuit'),(47,'Túrókrém gyümölccsel díszítve cake',_binary '\0','slice'),(48,'Almás',_binary '\0','pie'),(49,'Mignon',_binary '\0','mixed'),(50,'Csokoládémousse fényes csokoládéval',_binary '\0','cake'),(51,'Vágott sós (sós omlós) salty',_binary '\0','biscuit'),(52,'Nagyi sós salty',_binary '\0','biscuit'),(53,'Vegyes sós salty',_binary '\0','biscuit'),(54,'Somlói cake',_binary '\0','slice'),(55,'Tiramisu cake',_binary '\0','slice'),(56,'Hegyvidék cake',_binary '\0','slice'),(57,'Szedres csokoládé cake',_binary '\0','slice'),(58,'Pogácsák mixeden salty',_binary '\0','biscuit'),(59,'Lúdláb',_binary '\0','cake'),(60,'Sacher',_binary '\0','cake'),(61,'Eszterházy',_binary '\0','cake'),(62,'Zalavári gesztenye cake',_binary '\0','slice'),(63,'Gesztenyegolyó',_binary '\0','mixed'),(64,'Pisztáciás-málnás mascarpone cake',_binary '\0','slice'),(65,'Habos mákos',_binary '\0','mixed'),(66,'Franciakrémes',_binary '\0','pastry'),(67,'Gesztenye kocka creamy',_binary '\0','cake'),(68,'Pisztáciás-málnás mascarpone',_binary '\0','cake'),(69,'Málnás kocka creamy',_binary '\0','cake'),(70,'Sajttorta (málnás) cake',_binary '\0','slice'),(71,'Túrókrém gyümölccsel',_binary '\0','cake'),(72,'Csokis kaland special',_binary '','cake'),(73,'Somlói',_binary '\0','cake'),(74,'Palermo',_binary '\0','cake'),(75,'Szilvalekváros',_binary '\0','roll'),(76,'Ünnepi diótorta grillázzsal',_binary '\0','cake'),(77,'Oroszkrém cake',_binary '\0','slice'),(78,'Mini zserbó sweet',_binary '\0','biscuit'),(79,'Sajtos masni salty',_binary '\0','biscuit'),(80,'Zserbó',_binary '\0','pie'),(81,'Tejszínes gyümölcsös (málna)',_binary '\0','cake'),(82,'Marcipános csokoládé',_binary '\0','cake'),(83,'Csokis kaland cake',_binary '\0','slice'),(84,'Marcipán tekercs sweet',_binary '\0','biscuit'),(85,'Képviselőfánk',_binary '\0','mixed'),(86,'Epres omlett',_binary '\0','mixed'),(87,'Mini linzer sweet',_binary '\0','biscuit'),(88,'Linzerkarika',_binary '\0','mixed'),(89,'Szedres csokoládé',_binary '\0','cake'),(90,'Narancsív sweet',_binary '\0','biscuit'),(91,'Gesztenyepüré',_binary '\0','mixed'),(92,'Palermo creamy',_binary '\0','cake'),(93,'Csokis néró sweet',_binary '\0','biscuit'),(94,'Flódni',_binary '\0','pie'),(95,'Mézeskalács',_binary '\0','cake'),(96,'Olívás pogácsa salty',_binary '\0','biscuit'),(97,'Florentin sweet',_binary '\0','biscuit'),(98,'Tiramisu',_binary '\0','cake'),(99,'Zoli kedvence (vágott édes tea) sweet',_binary '\0','biscuit'),(100,'Erdei gyümölcs kocka creamy',_binary '\0','cake'),(101,'Rákóczi-túrós cake',_binary '\0','slice'),(102,'Mézeskrémes',_binary '\0','pie'),(103,'Trüffel cake',_binary '\0','slice'),(104,'Szilvás papucs sweet',_binary '\0','biscuit'),(105,'Zalavári gesztenye',_binary '','cake'),(106,'Danubius',_binary '\0','cake'),(107,'Alpesi karamell',_binary '\0','cake'),(108,'Puncs',_binary '\0','cake'),(109,'Gesztenye szív',_binary '\0','mixed'),(110,'Ez+Az (csokoládé és gesztenye) cake',_binary '\0','slice'),(111,'Tökmagos félhold salty',_binary '\0','biscuit'),(112,'Burgonyás pogácsa salty',_binary '\0','biscuit'),(113,'Somlói galuska',_binary '\0','mixed'),(114,'Puncs cake',_binary '\0','slice'),(115,'Lekváros vágott sweet',_binary '\0','biscuit'),(116,'Oreo',_binary '\0','cake'),(117,'Vintage',_binary '\0','cake'),(118,'Rigó Jancsi creamy',_binary '\0','cake'),(119,'Feketeerdő',_binary '\0','cake'),(120,'Kókuszos vágott sweet',_binary '\0','biscuit'),(121,'Feketeerdő cake',_binary '\0','slice'),(122,'Moscauer sweet',_binary '\0','biscuit'),(123,'Diós',_binary '\0','roll'),(124,'Rákóczi-túrós',_binary '\0','cake'),(125,'Három kívánság special',_binary '\0','cake'),(126,'Gesztenyés-karamellás',_binary '\0','roll'),(127,'Gesztenyés szív sweet',_binary '\0','biscuit'),(128,'Ropi salty',_binary '\0','biscuit'),(129,'Paleolit étcsokoládé special',_binary '\0','cake'),(130,'Túrós',_binary '\0','pie'),(131,'Ischler',_binary '\0','mixed'),(132,'Lúdláb cake',_binary '\0','slice'),(133,'Csokoládémousse cake',_binary '\0','slice'),(134,'Dió',_binary '\0','cake'),(135,'Krémes',_binary '\0','pastry'),(136,'Mini ischler sweet',_binary '\0','biscuit'),(137,'Paleolit étcsokoládé cake',_binary '\0','slice'),(138,'Tejfölös túrós hajtogatott salty',_binary '\0','biscuit'),(139,'Mákos guba',_binary '\0','cake');
/*!40000 ALTER TABLE `confections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_messages`
--

DROP TABLE IF EXISTS `contact_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_messages` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `message` text,
  `sender_name` varchar(255) DEFAULT NULL,
  `sent_at` datetime(6) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_messages`
--

LOCK TABLES `contact_messages` WRITE;
/*!40000 ALTER TABLE `contact_messages` DISABLE KEYS */;
INSERT INTO `contact_messages` VALUES (1,'majorvidosa@gmail.com','Long live the powerbase.','Major Vidosa','2024-12-01 01:10:54.001025','Powerbase'),(2,'majorvidosa@gmail.com','Long live the P.A. Scheme','Major Vidosa','2024-12-01 01:12:48.277912','P.A. Scheme'),(3,'','','Guest','2024-12-01 01:13:49.716668',''),(4,NULL,'Long live the commandos','Guest','2024-12-01 02:27:37.061484','Commandos'),(5,NULL,'','MGV','2024-12-01 02:28:15.398003',''),(6,NULL,'Long live PA','Guest','2024-12-01 02:34:42.504342','PA');
/*!40000 ALTER TABLE `contact_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contents`
--

DROP TABLE IF EXISTS `contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contents` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `confid` bigint DEFAULT NULL,
  `free` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKk60p1imaxor6qjorooy8irifg` (`confid`),
  CONSTRAINT `FKk60p1imaxor6qjorooy8irifg` FOREIGN KEY (`confid`) REFERENCES `confections` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contents`
--

LOCK TABLES `contents` WRITE;
/*!40000 ALTER TABLE `contents` DISABLE KEYS */;
INSERT INTO `contents` VALUES (1,26,'G'),(2,26,'G'),(3,37,'L'),(4,83,'HC'),(5,91,'G'),(6,137,'G'),(7,60,'Te'),(8,129,'HC'),(9,122,'To'),(10,90,'G'),(11,26,'To'),(12,94,'L'),(13,46,'É'),(14,72,'HC'),(15,114,'Te'),(16,63,'To'),(17,12,'Te'),(18,128,'É'),(19,51,'É'),(20,109,'To'),(21,109,'G'),(22,97,'G'),(23,97,'To'),(24,24,'L'),(25,91,'To'),(26,137,'L'),(27,84,'G'),(28,30,'HC'),(29,108,'Te'),(30,84,'To'),(31,6,'L'),(32,108,'L'),(33,12,'L'),(34,79,'É'),(35,72,'G'),(36,118,'L'),(37,60,'L'),(38,52,'É'),(39,137,'HC'),(40,114,'L'),(41,90,'To'),(42,20,'HC'),(43,63,'G'),(44,129,'G'),(45,129,'L'),(46,15,'É');
/*!40000 ALTER TABLE `contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prices`
--

DROP TABLE IF EXISTS `prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prices` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `confid` bigint DEFAULT NULL,
  `price` double DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKtpgx8kcpvafqc11vcdv5uuvrr` (`confid`),
  CONSTRAINT `FKtpgx8kcpvafqc11vcdv5uuvrr` FOREIGN KEY (`confid`) REFERENCES `confections` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=209 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prices`
--

LOCK TABLES `prices` WRITE;
/*!40000 ALTER TABLE `prices` DISABLE KEYS */;
INSERT INTO `prices` VALUES (1,32,500,'pce'),(2,32,500,'pce'),(3,76,10900,'16 slices'),(4,106,4300,'8 slices'),(5,88,300,'pce'),(6,116,16200,'24 slices'),(7,135,250,'pce'),(8,127,4400,'kg'),(9,50,13400,'24 slices'),(10,70,700,'pce'),(11,31,5200,'kg'),(12,96,3300,'kg'),(13,116,5700,'8 slices'),(14,22,9000,'16 slices'),(15,138,4400,'kg'),(16,112,2900,'kg'),(17,58,3200,'kg'),(18,98,10400,'16 slices'),(19,75,2100,'bar'),(20,24,11400,'24 slices'),(21,62,600,'pce'),(22,61,8400,'16 slices'),(23,105,10900,'16 slices'),(24,20,4700,'8 slices'),(25,123,1800,'bar'),(26,60,8200,'16 slices'),(27,24,3900,'8 slices'),(28,38,4300,'8 slices'),(29,126,2100,'bar'),(30,64,750,'pce'),(31,109,300,'pce'),(32,89,13200,'24 slices'),(33,98,15400,'24 slices'),(34,24,7400,'16 slices'),(35,76,5700,'8 slices'),(36,131,250,'pce'),(37,50,9200,'16 slices'),(38,55,600,'pce'),(39,87,3400,'kg'),(40,4,3500,'wreath'),(41,8,400,'pce'),(42,100,450,'pce'),(43,129,5300,'8 slices'),(44,35,4700,'8 slices'),(45,47,490,'pce'),(46,89,9000,'16 slices'),(47,111,3300,'kg'),(48,94,400,'pce'),(49,42,16200,'24 slices'),(50,80,350,'pce'),(51,134,4700,'8 slices'),(52,128,4000,'kg'),(53,90,5200,'kg'),(54,39,13200,'24 slices'),(55,71,7400,'16 slices'),(56,17,3400,'kg'),(57,68,18400,'24 slices'),(58,81,8200,'16 slices'),(59,134,9000,'16 slices'),(60,108,11400,'24 slices'),(61,97,5200,'kg'),(62,81,4300,'8 slices'),(63,44,3800,'kg'),(64,72,5700,'8 slices'),(65,49,250,'pce'),(66,48,350,'pce'),(67,14,350,'pce'),(68,107,12200,'24 slices'),(69,27,15400,'24 slices'),(70,106,12100,'24 slices'),(71,74,7400,'16 slices'),(72,40,5700,'8 slices'),(73,133,450,'pce'),(74,77,490,'pce'),(75,22,13200,'24 slices'),(76,119,9000,'16 slices'),(77,120,3400,'kg'),(78,105,5700,'8 slices'),(79,119,13200,'24 slices'),(80,99,4600,'kg'),(81,61,12200,'24 slices'),(82,93,4200,'kg'),(83,59,13200,'24 slices'),(84,82,5700,'8 slices'),(85,56,600,'pce'),(86,23,550,'pce'),(87,81,12100,'24 slices'),(88,67,500,'pce'),(89,68,6400,'8 slices'),(90,38,8200,'16 slices'),(91,139,4700,'8 slices'),(92,30,530,'pce'),(93,95,16200,'24 slices'),(94,101,400,'pce'),(95,65,400,'pce'),(96,10,12100,'24 slices'),(97,59,9000,'16 slices'),(98,119,4700,'8 slices'),(99,82,16200,'24 slices'),(100,3,3300,'kg'),(101,104,4200,'kg'),(102,110,530,'pce'),(103,1,300,'pce'),(104,25,8200,'16 slices'),(105,40,16200,'24 slices'),(106,36,490,'pce'),(107,124,3900,'8 slices'),(108,16,530,'pce'),(109,29,3500,'wreath'),(110,116,10900,'16 slices'),(111,71,3900,'8 slices'),(112,2,500,'pce'),(113,71,11400,'24 slices'),(114,10,4300,'8 slices'),(115,108,3900,'8 slices'),(116,69,450,'pce'),(117,39,9000,'16 slices'),(118,25,4300,'8 slices'),(119,107,8400,'16 slices'),(120,5,9000,'12 slices'),(121,106,8200,'16 slices'),(122,114,450,'pce'),(123,26,400,'pce'),(124,82,10900,'16 slices'),(125,28,8200,'16 slices'),(126,42,10900,'16 slices'),(127,35,13200,'24 slices'),(128,74,3900,'8 slices'),(129,19,450,'pce'),(130,25,12100,'24 slices'),(131,125,5700,'8 slices'),(132,95,5700,'8 slices'),(133,34,1700,'bar'),(134,121,530,'pce'),(135,76,16200,'24 slices'),(136,13,400,'pce'),(137,60,12100,'24 slices'),(138,33,350,'pce'),(139,132,530,'pce'),(140,117,9900,'16 slices'),(141,27,10400,'16 slices'),(142,18,490,'pce'),(143,124,7400,'16 slices'),(144,122,5200,'kg'),(145,59,4700,'8 slices'),(146,124,11400,'24 slices'),(147,134,13200,'24 slices'),(148,45,450,'pce'),(149,63,350,'pce'),(150,6,3900,'8 slices'),(151,28,4300,'8 slices'),(152,37,3900,'8 slices'),(153,52,5000,'kg'),(154,61,4500,'8 slices'),(155,86,600,'pce'),(156,6,7400,'16 slices'),(157,37,7400,'16 slices'),(158,11,490,'pce'),(159,108,7400,'16 slices'),(160,35,9000,'16 slices'),(161,107,4500,'8 slices'),(162,6,11400,'24 slices'),(163,79,4000,'kg'),(164,60,4300,'8 slices'),(165,21,5700,'8 slices'),(166,28,12100,'24 slices'),(167,15,5000,'kg'),(168,21,5700,'8 slices'),(169,37,11400,'24 slices'),(170,74,11400,'24 slices'),(171,103,650,'pce'),(172,43,4200,'kg'),(173,12,3400,'kg'),(174,27,5400,'8 slices'),(175,7,490,'pce'),(176,84,5200,'kg'),(177,115,3600,'kg'),(178,51,4000,'kg'),(179,118,450,'pce'),(180,41,530,'pce'),(181,135,400,'pce'),(182,73,5400,'8 slices'),(183,10,8200,'16 slices'),(184,98,5400,'8 slices'),(185,113,850,'pce'),(186,130,350,'pce'),(187,39,4700,'8 slices'),(188,136,3400,'kg'),(189,83,650,'pce'),(190,91,800,'200 g'),(191,46,5200,'kg'),(192,102,330,'pce'),(193,95,10900,'16 slices'),(194,54,580,'pce'),(195,57,530,'pce'),(196,22,4700,'8 slices'),(197,92,450,'pce'),(198,68,12400,'16 slices'),(199,42,5700,'8 slices'),(200,40,10900,'16 slices'),(201,9,450,'pce'),(202,78,4200,'kg'),(203,85,500,'pce'),(204,137,600,'pce'),(205,50,4900,'8 slices'),(206,38,12100,'24 slices'),(207,53,4200,'kg'),(208,89,4700,'8 slices');
/*!40000 ALTER TABLE `prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` enum('ROLE_ADMIN','ROLE_USER','ROLE_VISITOR') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'ROLE_VISITOR'),(2,'ROLE_USER'),(3,'ROLE_ADMIN');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_roles` (
  `user_id` bigint NOT NULL,
  `role_id` bigint NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKh8ciramu9cc9q3qcqiv4ue8a6` (`role_id`),
  CONSTRAINT `FKh8ciramu9cc9q3qcqiv4ue8a6` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  CONSTRAINT `FKhfh9dx7w3ubf1co1vdev94g3f` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES (1,3);
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKr43af9ap4edm43mmtq01oddj6` (`username`),
  UNIQUE KEY `UK6dotkott2kjsp8vw4d0m25fb7` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'majorvidosa@gmail.com','Major','Vidosa','$2a$10$vGY7TKBPzePX7MrOXUt2EeQ58QPiRZx5brH0tx4xyqm/CJ2yKqapG','MGV');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-01  3:15:24
