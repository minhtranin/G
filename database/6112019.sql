-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: g
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `adonis_schema`
--

DROP TABLE IF EXISTS `adonis_schema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adonis_schema` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `batch` int(11) DEFAULT NULL,
  `migration_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adonis_schema`
--

LOCK TABLES `adonis_schema` WRITE;
/*!40000 ALTER TABLE `adonis_schema` DISABLE KEYS */;
INSERT INTO `adonis_schema` VALUES (1,'1564200486207_config_commissions_schema',1,'2019-07-27 04:31:58'),(2,'1564730748308_combos_schema',2,'2019-08-04 08:32:02'),(3,'1564806384044_currency_exchanges_schema',2,'2019-08-04 08:32:02'),(4,'1564806562454_withdraws_schema',2,'2019-08-04 08:32:02'),(5,'1564806820152_customer_banks_schema',2,'2019-08-04 08:32:02'),(6,'1564807019158_add_field_orders_schema',2,'2019-08-04 08:32:02'),(7,'1564812402086_shoppingcarts_schema',2,'2019-08-04 08:32:02'),(8,'1564821100271_shoppingcarts_schema',2,'2019-08-04 08:32:02'),(9,'1564824770168_combos_schema',2,'2019-08-04 08:32:02'),(10,'1564972299782_packages_schema',3,'2019-08-05 03:39:50'),(11,'1564974498646_products_schema',3,'2019-08-05 03:39:50'),(12,'1564990784848_promotions_schema',4,'2019-08-05 09:33:29'),(13,'1564995650084_promotions_schema',4,'2019-08-05 09:33:29'),(14,'1565059117281_product_commisions_schema',5,'2019-08-06 03:07:38'),(15,'1565150172699_shoppingcarts_schema',6,'2019-08-07 04:13:08'),(16,'1565319161724_add_fields_transactions_schema',7,'2019-08-10 08:06:56'),(17,'1565347337138_add_fields_comissions_schema',7,'2019-08-10 08:06:56'),(18,'1565406420379_field_order_details_schema',7,'2019-08-10 08:06:56'),(19,'1565417716764_add_commissions_schema',7,'2019-08-10 08:06:56'),(20,'1565591441615_create_data_hook_alepays_schema',8,'2019-08-12 06:58:38'),(21,'1566287951492_icb_news_schema',9,'2019-08-20 08:12:19'),(22,'1566372825750_add_field_show_schema',10,'2019-08-21 08:10:22'),(23,'1566793354460_add_fiedls_withdraws_schema',11,'2019-08-26 07:19:40'),(24,'1566803323240_add_fiedd_code_withdraws_schema',11,'2019-08-26 07:19:40'),(25,'1566965047923_levels_schema',12,'2019-08-28 04:26:17'),(26,'1567569228505_add_customer_code_schema',13,'2019-09-04 04:12:48'),(27,'1570460891113_sendgirds_schema',14,'2019-10-10 08:55:50');
/*!40000 ALTER TABLE `adonis_schema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agency`
--

DROP TABLE IF EXISTS `agency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agency` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `agency_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_code` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `agencys_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agency`
--

LOCK TABLES `agency` WRITE;
/*!40000 ALTER TABLE `agency` DISABLE KEYS */;
INSERT INTO `agency` VALUES (1,'Tuoi Tre Software','03889123451','agency+1@gmail.com','Vietnam','TP. Ho Chi Minh','12/2 , Bình Thạnh','TT23132132123133','/uploads/agency/tuoi-tre-software1563422498454.jpeg','2019-07-18 03:58:01','2019-07-18 04:01:38'),(2,'test agency','096745756','dsfdsf@fdf.com','American Samoa','Nu\'uuli','123 abc','7464666','/uploads/agency/test-agency1564290230962.jpeg','2019-07-28 05:03:50','2019-07-28 05:04:27');
/*!40000 ALTER TABLE `agency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorys`
--

DROP TABLE IF EXISTS `categorys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorys`
--

LOCK TABLES `categorys` WRITE;
/*!40000 ALTER TABLE `categorys` DISABLE KEYS */;
/*!40000 ALTER TABLE `categorys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `combos`
--

DROP TABLE IF EXISTS `combos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `combos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `combo_name` varchar(255) DEFAULT NULL,
  `combo_description` text,
  `combo_status` int(11) DEFAULT NULL,
  `product_of_combo` text,
  `price` double DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `discounts` double DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `combos`
--

LOCK TABLES `combos` WRITE;
/*!40000 ALTER TABLE `combos` DISABLE KEYS */;
INSERT INTO `combos` VALUES (1,'PERSONAL','<p><span style=\"color: rgb(84,84,84);background-color: rgb(255,255,255);font-size: 14px;font-family: NoirPro, sans-serif;\">Special HGP – Cancer Prevention</span></p>\r\n<p><span style=\"color: rgb(84,84,84);background-color: rgb(255,255,255);font-size: 14px;font-family: NoirPro, sans-serif;\">Premium HGP – Cancer Prevention &amp; Detox Holiday</span></p>\r\n<p><span style=\"color: rgb(84,84,84);background-color: rgb(255,255,255);font-size: 14px;font-family: NoirPro, sans-serif;\">Basic HGP – Cancer Prevention</span></p>\r\n',1,'[1,3,8]',5000,1,10,'2019-08-04 15:28:52','2019-08-09 02:23:12');
/*!40000 ALTER TABLE `combos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commissions`
--

DROP TABLE IF EXISTS `commissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `to_customer_id` int(11) NOT NULL,
  `from_customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `value` double NOT NULL DEFAULT '0',
  `level_f` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `level_commissions` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `status` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=213 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commissions`
--

LOCK TABLES `commissions` WRITE;
/*!40000 ALTER TABLE `commissions` DISABLE KEYS */;
INSERT INTO `commissions` VALUES (59,1,8,1,100,'1',2,95,'0','combo','2019-08-14 02:25:24','2019-08-14 02:25:24'),(60,1,8,1,150,'1',2,96,'1','package','2019-08-14 02:35:26','2019-09-07 08:09:32'),(61,8,3,1,150,'1',2,97,'1','package','2019-08-17 02:36:52','2019-09-12 09:36:38'),(62,8,3,1,100,'1',2,97,'1','combo','2019-08-17 02:36:52','2019-09-12 06:57:50'),(63,1,3,1,0,'2',2,97,'1','combo','2019-08-17 02:36:52','2019-09-12 06:57:52'),(64,8,3,3,150,'1',2,97,'1','package','2019-08-17 02:36:52','2019-09-12 06:57:57'),(65,1,8,3,150,'1',2,157,'0','package','2019-08-21 03:41:59','2019-08-21 03:41:59'),(66,1,8,3,150,'1',2,157,'1','package','2019-08-21 03:41:59','2019-09-07 08:05:10'),(67,1,8,3,150,'1',2,157,'0','package','2019-08-21 03:41:59','2019-08-21 03:41:59'),(68,1,8,3,150,'1',2,172,'1','package','2019-08-21 04:14:47','2019-09-07 08:05:05'),(69,1,8,3,150,'1',2,172,'1','package','2019-08-21 04:14:47','2019-08-22 04:24:40'),(70,1,8,3,150,'1',2,172,'1','package','2019-08-21 04:14:47','2019-08-26 04:25:31'),(71,1,8,1,100,'1',2,190,'1','combo','2019-08-21 09:13:32','2019-08-26 04:25:27'),(72,1,8,3,150,'1',2,192,'1','package','2019-08-21 09:15:59','2019-08-26 04:25:23'),(73,1,8,1,100,'1',2,194,'1','combo','2019-08-21 09:17:12','2019-08-24 05:12:53'),(74,1,8,1,100,'1',2,194,'1','combo','2019-08-21 09:17:12','2019-08-22 04:23:03'),(75,1,8,1,150,'1',2,195,'1','package','2019-08-21 09:31:46','2019-08-22 04:24:05'),(76,1,8,3,150,'1',2,196,'1','package','2019-08-21 09:48:56','2019-08-22 04:22:56'),(77,1,8,1,150,'1',2,197,'1','package','2019-08-22 02:33:19','2019-08-22 04:21:56'),(78,1,8,1,100,'1',2,198,'1','combo','2019-08-22 02:55:24','2019-08-22 14:17:40'),(79,1,8,3,150,'1',2,199,'1','package','2019-08-26 06:24:57','2019-09-07 08:05:24'),(80,1,8,3,150,'1',2,199,'1','package','2019-08-26 06:24:57','2019-08-27 09:51:08'),(81,1227,1228,1,150,'1',2,200,'0','package','2019-08-28 09:32:12','2019-08-28 09:32:12'),(82,1226,1228,1,100,'2',3,200,'0','package','2019-08-28 09:32:12','2019-08-28 09:32:12'),(83,1227,1228,1,150,'1',2,200,'0','package','2019-08-28 09:32:12','2019-08-28 09:32:12'),(84,1227,1228,3,150,'1',2,201,'0','package','2019-08-29 02:51:45','2019-08-29 02:51:45'),(85,1227,1228,3,150,'1',2,202,'0','package','2019-08-29 02:55:40','2019-08-29 02:55:40'),(86,1225,1231,3,50,'1',4,203,'0','package','2019-08-29 08:38:45','2019-08-29 08:38:45'),(87,1225,1231,3,50,'1',4,203,'0','package','2019-08-29 08:38:45','2019-08-29 08:38:45'),(89,1227,1228,3,100,'1',2,204,'0','package','2019-08-29 12:03:51','2019-08-29 12:03:51'),(90,1226,1228,3,130,'2',3,204,'0','package','2019-08-29 12:03:51','2019-08-29 12:03:51'),(91,1225,1228,3,20,'3',4,204,'1','package','2019-08-29 12:03:51','2019-09-03 03:38:57'),(92,1225,1228,1,150,'3',4,209,'0','package','2019-09-06 05:02:18','2019-09-06 05:02:18'),(93,1227,1228,1,100,'1',2,209,'0','package','2019-09-06 05:02:18','2019-09-06 05:02:18'),(102,1247,1248,8,50,'1',1,210,'0','package','2019-09-10 04:09:51','2019-09-10 04:09:51'),(103,1246,1248,8,50,'2',2,210,'0','package','2019-09-10 04:09:51','2019-09-10 04:09:51'),(104,1245,1248,8,30,'3',3,210,'0','package','2019-09-10 04:09:51','2019-09-10 04:09:51'),(105,1244,1248,8,20,'4',4,210,'0','package','2019-09-10 04:09:51','2019-09-10 04:09:51'),(106,769,1248,8,100,'5',5,210,'0','package','2019-09-10 04:09:51','2019-09-10 04:09:51'),(107,1246,1247,8,100,'1',2,211,'1','package','2019-09-11 07:33:55','2019-09-11 07:36:00'),(108,1246,1247,3,100,'1',2,211,'1','package','2019-09-11 07:33:55','2019-09-11 07:36:04'),(109,1245,1247,8,30,'2',3,211,'1','package','2019-09-11 07:33:55','2019-09-11 07:36:15'),(110,769,1247,8,100,'4',5,211,'1','package','2019-09-11 07:33:55','2019-09-11 07:36:49'),(111,1245,1247,3,30,'2',3,211,'1','package','2019-09-11 07:33:55','2019-09-11 07:36:22'),(112,1244,1247,8,20,'3',4,211,'1','package','2019-09-11 07:33:55','2019-09-11 07:36:35'),(113,769,1247,3,100,'4',5,211,'1','package','2019-09-11 07:33:55','2019-09-11 07:36:46'),(114,1244,1247,3,20,'3',4,211,'1','package','2019-09-11 07:33:55','2019-09-11 07:36:40'),(115,769,1249,3,250,'1',5,212,'1','package','2019-09-11 07:48:27','2019-09-11 07:48:42'),(116,1244,1250,1,20,'2',4,213,'1','package','2019-09-11 07:59:18','2019-09-11 08:30:06'),(117,769,1250,1,100,'3',5,213,'1','package','2019-09-11 07:59:18','2019-09-11 08:30:03'),(118,1245,1250,1,130,'1',3,213,'1','package','2019-09-11 07:59:18','2019-09-11 08:30:01'),(119,1245,1250,3,130,'1',3,214,'0','package','2019-09-11 08:40:01','2019-09-11 08:40:01'),(120,1244,1250,3,20,'2',4,214,'0','package','2019-09-11 08:40:01','2019-09-11 08:40:01'),(121,769,1250,3,100,'3',5,214,'0','package','2019-09-11 08:40:01','2019-09-11 08:40:01'),(126,1250,1252,1,130,'1',3,216,'0','package','2019-09-12 03:36:07','2019-09-12 03:36:07'),(127,1245,1252,1,30,'2',3,216,'0','package','2019-09-12 03:36:07','2019-09-12 03:36:07'),(128,1244,1252,1,20,'3',4,216,'0','package','2019-09-12 03:36:07','2019-09-12 03:36:07'),(129,769,1252,1,0,'4',5,216,'0','package','2019-09-12 03:36:07','2019-09-12 03:36:07'),(130,1252,1253,3,130,'1',3,217,'0','package','2019-09-12 03:39:56','2019-09-12 03:39:56'),(131,1250,1253,3,30,'2',3,217,'0','package','2019-09-12 03:39:56','2019-09-12 03:39:56'),(132,1245,1253,3,30,'3',3,217,'0','package','2019-09-12 03:39:56','2019-09-12 03:39:56'),(133,769,1253,3,0,'5',5,217,'0','package','2019-09-12 03:39:56','2019-09-12 03:39:56'),(134,1244,1253,3,20,'4',4,217,'0','package','2019-09-12 03:39:56','2019-09-12 03:39:56'),(155,1252,1253,8,130,'1',3,219,'0','package','2019-09-12 09:29:51','2019-09-12 09:29:51'),(156,1250,1253,8,0,'2',3,219,'0','package','2019-09-12 09:29:51','2019-09-12 09:29:51'),(157,1245,1253,8,0,'3',3,219,'0','package','2019-09-12 09:29:51','2019-09-12 09:29:51'),(158,1244,1253,8,20,'4',4,219,'0','package','2019-09-12 09:29:51','2019-09-12 09:29:51'),(159,769,1253,8,100,'5',5,219,'0','package','2019-09-12 09:29:51','2019-09-12 09:29:51'),(160,1250,1251,3,130,'1',3,215,'0','package','2019-09-18 02:27:46','2019-09-18 02:27:46'),(161,1245,1251,3,0,'2',3,215,'0','package','2019-09-18 02:27:46','2019-09-18 02:27:46'),(162,1244,1251,3,20,'3',4,215,'0','package','2019-09-18 02:27:46','2019-09-18 02:27:46'),(163,769,1251,3,100,'4',5,215,'0','package','2019-09-18 02:27:46','2019-09-18 02:27:46'),(164,1263,1264,3,50,'1',2,226,'0','package','2019-09-25 04:48:58','2019-09-25 04:48:58'),(165,1262,1264,3,50,'2',3,226,'0','package','2019-09-25 04:48:58','2019-09-25 04:48:58'),(166,1261,1264,3,30,'3',4,226,'0','package','2019-09-25 04:48:58','2019-09-25 04:48:58'),(167,1257,1264,3,20,'4',5,226,'0','package','2019-09-25 04:48:58','2019-09-25 04:48:58'),(168,769,1264,3,0,'5',6,226,'0','package','2019-09-25 04:48:58','2019-09-25 04:48:58'),(169,1263,1264,1,50,'1',2,227,'1','package','2019-09-25 06:12:07','2019-09-25 06:16:09'),(170,1262,1264,1,50,'2',3,227,'1','package','2019-09-25 06:12:07','2019-09-25 06:16:14'),(171,1261,1264,1,30,'3',4,227,'1','package','2019-09-25 06:12:07','2019-09-25 06:16:25'),(172,1257,1264,1,-130,'4',1,227,'0','package','2019-09-25 06:12:07','2019-09-25 06:12:07'),(173,769,1264,1,150,'5',5,227,'0','package','2019-09-25 06:12:07','2019-09-25 06:12:07'),(174,1263,1264,3,50,'1',2,228,'1','package','2019-09-25 06:19:10','2019-09-25 06:19:23'),(175,1262,1264,3,50,'2',3,228,'1','package','2019-09-25 06:19:10','2019-09-25 06:19:26'),(176,1261,1264,3,30,'3',4,228,'1','package','2019-09-25 06:19:10','2019-09-25 06:19:31'),(177,769,1264,3,20,'4',5,228,'1','package','2019-09-25 06:19:10','2019-09-25 06:19:39'),(178,1263,1264,3,100,'1',2,229,'1','package','2019-09-25 06:23:22','2019-09-25 06:24:28'),(179,1262,1264,3,30,'2',3,229,'1','package','2019-09-25 06:23:22','2019-09-25 06:24:31'),(180,1261,1264,3,20,'3',4,229,'1','package','2019-09-25 06:23:22','2019-09-25 06:24:33'),(181,769,1264,3,100,'4',5,229,'1','package','2019-09-25 06:23:22','2019-09-25 06:24:37'),(182,769,1265,1,250,'1',5,230,'1','package','2019-09-25 06:48:13','2019-09-25 06:48:45'),(183,1265,1266,3,250,'1',5,231,'1','package','2019-09-25 06:52:35','2019-09-25 08:31:30'),(184,769,1266,3,0,'2',5,231,'1','package','2019-09-25 06:52:35','2019-09-25 08:31:32'),(185,1262,1267,1,130,'1',3,232,'1','package','2019-09-25 09:07:22','2019-09-25 09:22:27'),(186,1261,1267,1,20,'2',4,232,'1','package','2019-09-25 09:07:22','2019-09-25 09:22:30'),(187,769,1267,1,100,'3',5,232,'1','package','2019-09-25 09:07:22','2019-09-25 09:22:36'),(188,1268,1269,8,130,'1',3,233,'1','package','2019-09-25 10:02:17','2019-09-25 10:04:49'),(189,1262,1269,8,0,'2',3,233,'1','package','2019-09-25 10:02:17','2019-09-25 10:04:55'),(190,1261,1269,8,20,'3',4,233,'1','package','2019-09-25 10:02:17','2019-09-25 10:04:57'),(191,769,1269,8,100,'4',5,233,'1','package','2019-09-25 10:02:17','2019-09-25 10:05:00'),(192,1247,1270,8,50,'1',1,234,'1','package','2019-10-03 03:50:09','2019-10-03 03:50:27'),(193,1246,1270,8,50,'2',2,234,'1','package','2019-10-03 03:50:09','2019-10-03 03:50:30'),(194,1245,1270,8,30,'3',3,234,'1','package','2019-10-03 03:50:09','2019-10-03 03:50:33'),(195,1244,1270,8,20,'4',4,234,'1','package','2019-10-03 03:50:09','2019-10-03 03:50:36'),(196,769,1270,8,100,'5',5,234,'1','package','2019-10-03 03:50:09','2019-10-03 03:50:38'),(197,1247,1270,8,100,'1',2,235,'1','package','2019-10-03 03:53:30','2019-10-03 03:54:00'),(198,1246,1270,8,0,'2',2,235,'1','package','2019-10-03 03:53:30','2019-10-03 03:54:02'),(199,1245,1270,8,30,'3',3,235,'1','package','2019-10-03 03:53:30','2019-10-03 03:54:10'),(200,1244,1270,8,20,'4',4,235,'1','package','2019-10-03 03:53:30','2019-10-03 03:54:12'),(201,769,1270,8,100,'5',5,235,'1','package','2019-10-03 03:53:30','2019-10-03 03:54:14'),(202,1247,1270,8,130,'1',3,236,'0','package','2019-10-03 03:57:23','2019-10-03 03:57:23'),(203,1246,1270,8,0,'2',2,236,'0','package','2019-10-03 03:57:23','2019-10-03 03:57:23'),(204,1245,1270,8,30,'3',3,236,'0','package','2019-10-03 03:57:23','2019-10-03 03:57:23'),(205,1244,1270,8,20,'4',4,236,'0','package','2019-10-03 03:57:23','2019-10-03 03:57:23'),(206,769,1270,8,100,'5',5,236,'0','package','2019-10-03 03:57:23','2019-10-03 03:57:23'),(207,1244,1414,3,150,'1',4,253,'0','package','2019-10-29 05:54:51','2019-10-29 05:54:51'),(208,769,1414,3,100,'2',5,253,'0','package','2019-10-29 05:54:51','2019-10-29 05:54:51'),(209,1244,1414,1,150,'1',4,253,'0','package','2019-10-29 05:54:51','2019-10-29 05:54:51'),(210,769,1414,1,100,'2',5,253,'0','package','2019-10-29 05:54:51','2019-10-29 05:54:51'),(211,1244,1414,8,150,'1',4,253,'0','package','2019-10-29 05:54:51','2019-10-29 05:54:51'),(212,769,1414,8,100,'2',5,253,'0','package','2019-10-29 05:54:51','2019-10-29 05:54:51');
/*!40000 ALTER TABLE `commissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conditions`
--

DROP TABLE IF EXISTS `conditions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conditions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conditions`
--

LOCK TABLES `conditions` WRITE;
/*!40000 ALTER TABLE `conditions` DISABLE KEYS */;
/*!40000 ALTER TABLE `conditions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config_commissions`
--

DROP TABLE IF EXISTS `config_commissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `config_commissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `level_type` varchar(255) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config_commissions`
--

LOCK TABLES `config_commissions` WRITE;
/*!40000 ALTER TABLE `config_commissions` DISABLE KEYS */;
INSERT INTO `config_commissions` VALUES (1,'F1',15,'2019-07-27 04:32:01','2019-07-27 04:32:01'),(2,'F2',10,'2019-07-27 04:32:01','2019-07-27 04:32:01'),(3,'F3',9,'2019-07-27 04:32:01','2019-07-27 04:32:01'),(4,'F4',8,'2019-07-27 04:32:01','2019-07-27 04:32:01'),(5,'F5',7,'2019-07-27 04:32:01','2019-07-27 04:32:01'),(6,'F6',6,'2019-07-27 04:32:01','2019-07-27 04:32:01'),(7,'F7',5,'2019-07-27 04:32:01','2019-07-27 04:32:01'),(8,'F8',1,'2019-07-27 04:32:01','2019-07-27 04:32:01'),(9,'F9',1,'2019-07-27 04:32:01','2019-07-27 04:32:01'),(10,'F10',1,'2019-07-27 04:32:01','2019-07-27 04:32:01');
/*!40000 ALTER TABLE `config_commissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currency_exchanges`
--

DROP TABLE IF EXISTS `currency_exchanges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `currency_exchanges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from_currency` varchar(255) DEFAULT NULL,
  `from_currency_value` double DEFAULT NULL,
  `to_currency` varchar(255) DEFAULT NULL,
  `to_currency_value` double DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currency_exchanges`
--

LOCK TABLES `currency_exchanges` WRITE;
/*!40000 ALTER TABLE `currency_exchanges` DISABLE KEYS */;
INSERT INTO `currency_exchanges` VALUES (1,'USD',1,'VND',23255.814,'2019-08-03 00:00:00','2019-08-03 00:00:00'),(8,'USD',12,'VND',32432,'2019-08-22 07:14:27','2019-08-22 07:14:27');
/*!40000 ALTER TABLE `currency_exchanges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_banks`
--

DROP TABLE IF EXISTS `customer_banks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_banks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `account_address` varchar(255) DEFAULT NULL,
  `account_code` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_banks`
--

LOCK TABLES `customer_banks` WRITE;
/*!40000 ALTER TABLE `customer_banks` DISABLE KEYS */;
INSERT INTO `customer_banks` VALUES (9,8,'sdfsd','dsfsd','sdfdsf','dsf','2019-08-20 04:04:58','2019-08-20 04:04:58'),(10,8,'abc','32432432432432','HCM','ABC DEF','2019-10-07 10:06:52','2019-10-07 10:06:52');
/*!40000 ALTER TABLE `customer_banks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_logs`
--

DROP TABLE IF EXISTS `customer_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned NOT NULL,
  `content` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `route` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `date_action` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_log_actions_user_id_foreign` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_logs`
--

LOCK TABLES `customer_logs` WRITE;
/*!40000 ALTER TABLE `customer_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_tokens`
--

DROP TABLE IF EXISTS `customer_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_tokens` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) unsigned NOT NULL,
  `access_token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `firebase_token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expired_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `device_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'WEB',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_app_tokens_user_app_id_foreign` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=207 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_tokens`
--

LOCK TABLES `customer_tokens` WRITE;
/*!40000 ALTER TABLE `customer_tokens` DISABLE KEYS */;
INSERT INTO `customer_tokens` VALUES (1,1,'icarebase-vpJdiFNKduTegIHc8Fc1QdTJuVipNSGzTjSKp7ea',NULL,'2019-07-25 07:48:51','WEB','2019-07-24 03:09:09','2019-07-24 03:09:09'),(2,4,'icarebase-vpJdiFNKduTegIHc8Fc1QdTJuVipNSGzffvbG',NULL,'2019-07-25 07:48:51','WEB','2019-07-24 03:09:09','2019-07-24 03:09:09'),(3,5,'icarebase-1ZkzDOM2a31PgNXpHjSZ93UJDZPWv3hC9ebjlbQ1',NULL,'2019-07-28 05:28:33','WEB','2019-07-28 05:28:33','2019-07-28 05:28:33'),(4,6,'icarebase-6s8vfhVDVPlFAA83z3JCmnF1VMfni10x8gg8ZwTd',NULL,'2019-07-28 08:04:28','WEB','2019-07-28 08:04:28','2019-07-28 08:04:28'),(46,1230,'icarebase-BNtKPdNcYNfelg7PcfV1Hl3yg5b9utvShbNGMngy',NULL,'2019-08-28 09:40:33','WEB','2019-08-28 09:40:33','2019-08-28 09:40:33'),(50,1232,'icarebase-AVIW9nKCt3mWUqkJLCUhVDysVOrY8SaIIlB6JsSD',NULL,'2019-08-29 08:16:32','WEB','2019-08-29 08:16:32','2019-08-29 08:16:32'),(52,1233,'icarebase-z8gsWb91rP4purBy8jkp6OtLlDFGYGS2WFdAdjQz',NULL,'2019-08-29 08:19:03','WEB','2019-08-29 08:19:03','2019-08-29 08:19:03'),(54,1234,'icarebase-uqyYgHvI7M9UNSnif2n9Zvc73iuBfEigPkWETfm6',NULL,'2019-08-30 01:50:49','WEB','2019-08-30 01:50:49','2019-08-30 01:50:49'),(60,1239,'icarebase-WRglzgzB0xvjFR4w0J6REuvNhcsEaF7Lva3oMvsK',NULL,'2019-08-30 10:32:43','WEB','2019-08-30 10:32:43','2019-08-30 10:32:43'),(63,1241,'icarebase-1ZENmWo3sXgmjqqlEKB18XgyOpMJj52SqQijHLyj',NULL,'2019-08-31 01:40:15','WEB','2019-08-31 01:40:15','2019-08-31 01:40:15'),(65,1235,'icarebase-D7EAdeAZvfbnKBXgzyPXdUtrxCjDhmVuV8ljIHAV',NULL,'2019-08-31 01:44:48','WEB','2019-08-31 01:44:48','2019-08-31 01:44:48'),(69,1242,'icarebase-X3fNsCijbywFcPS0YDLbzIgSXcbGZcN4cA1n1f57',NULL,'2019-09-04 03:44:04','WEB','2019-09-04 03:44:04','2019-09-04 03:44:04'),(72,1243,'icarebase-YIpmq2Zc0cSjxseQBrfcK4NA9nSbJ4JKRyPFabJB',NULL,'2019-09-04 07:27:38','WEB','2019-09-04 07:27:38','2019-09-04 07:27:38'),(82,1228,'icarebase-pN9ORj8QhuCEzribVeFrc3mVrGcOO1tPyXJwpFs4',NULL,'2019-09-06 04:58:23','WEB','2019-09-06 04:58:23','2019-09-06 04:58:23'),(99,3,'icarebase-TwufuTVKbymA1K4pwSTm8tnRnTVv1vpVJt9yvQwP',NULL,'2019-09-11 02:38:29','WEB','2019-09-11 02:38:29','2019-09-11 02:38:29'),(121,1254,'icarebase-Gnt2xUvtSWr6jhmdEQyLEJx4S3RZo9gYphjxcGVn',NULL,'2019-09-12 09:59:51','WEB','2019-09-12 09:59:50','2019-09-12 09:59:50'),(132,1256,'icarebase-j8DA6lqGrL5wumqJX9QZqYYXBs0AALV27CN0nF1O',NULL,'2019-09-19 08:44:04','WEB','2019-09-19 08:44:04','2019-09-19 08:44:04'),(135,1249,'icarebase-YAlUOTidy71KqQcpe9o7IUMKdo36rgmElnmqHiQF',NULL,'2019-09-23 03:27:18','WEB','2019-09-23 03:27:18','2019-09-23 03:27:18'),(141,1257,'icarebase-1sVS0xDH9SjwK2ffr3i0HoWY2ke7w0Ba1aeglAIX',NULL,'2019-09-25 03:19:27','WEB','2019-09-25 03:19:27','2019-09-25 03:19:27'),(144,1259,'icarebase-WDSXRs7VNJlJ9kKNVaEt8bQISaI6HPpGA6AenY2J',NULL,'2019-09-25 04:00:04','WEB','2019-09-25 04:00:04','2019-09-25 04:00:04'),(145,1260,'icarebase-6Hqj5P1CD8jC0tLMHGpvXzCPl9exWJfpIbn4nGzy',NULL,'2019-09-25 04:02:04','WEB','2019-09-25 04:02:04','2019-09-25 04:02:04'),(159,1269,'icarebase-V3AaBFda2RFNZCIDcrYYwRAy6SnP86sLFqZBEu3Q',NULL,'2019-09-25 09:51:17','WEB','2019-09-25 09:51:17','2019-09-25 09:51:17'),(161,1261,'icarebase-XLfnetUtcblChKhFl3izgOINKK9kdy8RMqiEbK0B',NULL,'2019-09-26 04:30:51','WEB','2019-09-26 04:30:51','2019-09-26 04:30:51'),(162,1270,'icarebase-KCua6KU3o1dUkFpz5B3qdOU5Wmdpd2eeaOvHq46G',NULL,'2019-10-03 03:32:25','WEB','2019-10-03 03:32:25','2019-10-03 03:32:25'),(164,1564,'icarebase-TuoHhsPjEbUe1J2AmHnb2N1KGdT2IZFanxXp0eIV',NULL,'2019-10-07 07:22:42','WEB','2019-10-07 07:22:42','2019-10-07 07:22:42'),(170,1565,'icarebase-lWKxfR1GuosBVpsnQFnGLRch1Ij6CU6wpAP6epZ3',NULL,'2019-10-09 02:30:20','WEB','2019-10-09 02:30:20','2019-10-09 02:30:20'),(175,1566,'icarebase-BX7QWtsKwwShHNPU3b8JWHWQA0TrbjZfl4eM5l9B',NULL,'2019-10-18 07:04:33','WEB','2019-10-18 07:04:33','2019-10-18 07:04:33'),(176,8,'icarebase-V3rZP5dtKs6ITKGn5Utl019J6Qs39oL809fPNLXx',NULL,'2019-10-24 07:00:08','WEB','2019-10-24 07:00:08','2019-10-24 07:00:08'),(178,760,'icarebase-DjMovyfNLSO3H8D8vu1DI6kmbaHNA7eVQUyAkW6N',NULL,'2019-10-24 07:42:35','WEB','2019-10-24 07:42:35','2019-10-24 07:42:35'),(179,1567,'GCOM-oESjRfUdOrLehy4457miUDx0zZLY34DKZYvWocxg',NULL,'2019-12-02 12:40:31','WEB','2019-12-02 12:40:31','2019-12-02 12:40:31'),(180,1568,'GCOM-V4tR4k2kwVlXpJlAs4RLc3aWxruFku1TSLx2IDg6',NULL,'2019-12-02 12:44:22','WEB','2019-12-02 12:44:22','2019-12-02 12:44:22'),(181,1569,'GCOM-3HlocQxTWgpSvsrTUKOJnXGZFEqIWSOGA7iZZ8dO',NULL,'2019-12-02 13:21:45','WEB','2019-12-02 13:21:45','2019-12-02 13:21:45'),(182,1570,'GCOM-npux8sMVI9UEwHNDcUp9fxbfg6chUWADWFVZXbqo',NULL,'2019-12-02 13:24:39','WEB','2019-12-02 13:24:39','2019-12-02 13:24:39'),(183,1571,'GCOM-wxADWlZpXJK5Td2XN3VsHr9UWJHGod7820hBFH9S',NULL,'2019-12-02 13:26:51','WEB','2019-12-02 13:26:51','2019-12-02 13:26:51'),(184,1572,'GCOM-Evs14AWYE4OxZMCnopdQT5AWpu4hztbpr0IOnEWU',NULL,'2019-12-02 13:28:41','WEB','2019-12-02 13:28:41','2019-12-02 13:28:41'),(185,1573,'GCOM-oMAArmerXepZ8lDhdZwO9xpuyjTqYkB4VrQKdRcI',NULL,'2019-12-02 13:32:59','WEB','2019-12-02 13:32:59','2019-12-02 13:32:59'),(186,1574,'GCOM-r9Pstvcm7SxhyJXabGbkjx3grb2CPOSGvQrZ2k8s',NULL,'2019-12-02 13:35:19','WEB','2019-12-02 13:35:19','2019-12-02 13:35:19'),(187,1575,'GCOM-NgLmdSKULWDVXaDhMf0FOAA3IGcns52EL4IQkaSu',NULL,'2019-12-02 13:42:43','WEB','2019-12-02 13:42:43','2019-12-02 13:42:43'),(188,1576,'GCOM-Hiww8Gl7szVuVMFVLw3AuOK2EsriPwx7VLrWcV88',NULL,'2019-12-02 17:21:23','WEB','2019-12-02 17:21:23','2019-12-02 17:21:23'),(189,1577,'GCOM-nSjtk61qxCApO1UcFsANAT2yN1CwNd4IpCcUWtQo',NULL,'2019-12-02 17:22:58','WEB','2019-12-02 17:22:58','2019-12-02 17:22:58'),(190,1578,'GCOM-LnpsXYg1NwLx4raV71m919zO6SeI1IozIogWaqqJ',NULL,'2019-12-03 14:25:39','WEB','2019-12-03 14:25:39','2019-12-03 14:25:39'),(191,1579,'GCOM-GRnNTjkkAD8iKmbKKQG4PmdAUN6aQqiWBvGIUcX3',NULL,'2019-12-03 14:40:25','WEB','2019-12-03 14:40:25','2019-12-03 14:40:25'),(192,1580,'GCOM-JWUTFac8qo3cBxZKn8gzAOFfI8Oh1a7JMQgZ0QEu',NULL,'2019-12-03 14:42:29','WEB','2019-12-03 14:42:29','2019-12-03 14:42:29'),(193,1581,'GCOM-9I7txvb60423pDz6G11F8Pdj3q3HnMJwVpZSIt6r',NULL,'2019-12-03 14:45:07','WEB','2019-12-03 14:45:07','2019-12-03 14:45:07'),(194,1582,'GCOM-roBHRBaxKypv0jF2ii4P0TQVjN4dy0IIpDZSvCy4',NULL,'2019-12-03 15:04:11','WEB','2019-12-03 15:04:11','2019-12-03 15:04:11'),(195,1583,'GCOM-IJwTgZRS8V88RYyVHF2sfADkK78FrKWYgbr4bgTu',NULL,'2019-12-03 15:13:05','WEB','2019-12-03 15:13:05','2019-12-03 15:13:05'),(197,1584,'GCOM-CNyW2VR24DtQFBTPk4MWzTus0AyhGeatiqUJIIG4',NULL,'2019-12-03 15:37:20','WEB','2019-12-03 15:37:20','2019-12-03 15:37:20'),(198,1588,'GCOM-h9GTgj6P5Vs4cDRFDxDRDVd66jmQsnxD1dy0oYr6',NULL,'2019-12-04 04:08:21','WEB','2019-12-04 04:08:21','2019-12-04 04:08:21'),(199,1589,'GCOM-LzTieo9ZWdrJMndJiIZnEJIfy3yYmYruSzEwtKk4',NULL,'2019-12-04 04:13:38','WEB','2019-12-04 04:13:38','2019-12-04 04:13:38'),(200,1590,'GCOM-7FmgXq8Ui1tgokLqSPui9hoZ9JvqSK5l5oli45aa',NULL,'2019-12-04 04:39:57','WEB','2019-12-04 04:39:57','2019-12-04 04:39:57'),(201,1591,'GCOM-AmLAaOdaZFBKAOnVkccRprSUH0ewJON8LigvQ0FP',NULL,'2019-12-06 02:42:37','WEB','2019-12-06 02:42:37','2019-12-06 02:42:37'),(202,1592,'GCOM-EHlXpfywuMEGYW51eDaXMesRuMA1pFbAsNmZLUXD',NULL,'2019-12-06 02:43:38','WEB','2019-12-06 02:43:38','2019-12-06 02:43:38'),(203,1593,'GCOM-nneQUTRQBaqFoPbSANAO4UYV5Cvjn9SRBrlt9cm0',NULL,'2019-12-06 02:49:58','WEB','2019-12-06 02:49:58','2019-12-06 02:49:58'),(204,1594,'GCOM-3hl9653aF8JZAQ0SVaXd8eGzcBiI00Ip4l0W8l7R',NULL,'2019-12-06 02:51:10','WEB','2019-12-06 02:51:10','2019-12-06 02:51:10'),(206,1595,'GCOM-2mQC59yjL1pTdUb9sgOBSF2JpYx0oyZH65XNtsIO',NULL,'2019-12-06 03:48:45','WEB','2019-12-06 03:48:45','2019-12-06 03:48:45');
/*!40000 ALTER TABLE `customer_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fullname` varchar(105) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `first_login` timestamp NULL DEFAULT NULL,
  `language` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'male/female',
  `tow_factor_auth` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_tow_factor_auth` int(11) DEFAULT '0',
  `sponsorKey` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sponsor_id` int(11) DEFAULT '0',
  `type_ref` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'customer|agency',
  `level_commissions` int(11) DEFAULT NULL COMMENT '''{     1 : ''Subscriber'',     2 : ''Customer'',     3 : ''Community Ambassador'',     4 : ''Sales Member'',     5 : ''Manager''   }''',
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` int(2) NOT NULL DEFAULT '0',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `avatar` varchar(245) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `customers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=1596 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1595,'TCM','0971725797','minhtc97@gmail.com',NULL,'$2a$10$UGGqkxyVB5.nDewcsAYP6uxKAbt/hf7.4m74v6SK3mPtcIesEhlB6',NULL,NULL,'en',NULL,'ICBJFLKPFG90RDNV',NULL,NULL,'K5IG6U3HJBUDIUKWOZ2XSRKLPBGUYYJK',0,'38',0,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,'2019-12-06 03:12:52','2019-12-06 03:47:17',NULL);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_hook_alepays`
--

DROP TABLE IF EXISTS `data_hook_alepays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_hook_alepays` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `objects` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_hook_alepays`
--

LOCK TABLES `data_hook_alepays` WRITE;
/*!40000 ALTER TABLE `data_hook_alepays` DISABLE KEYS */;
INSERT INTO `data_hook_alepays` VALUES (66,1,'{\"transactionInfo\":{\"transactionCode\":\"ALE001T0Q\",\"orderCode\":\"ICBRP00051\",\"amount\":125581395.6,\"currency\":\"VND\",\"buyerEmail\":\"huynhkha8295@gmail.com\",\"buyerPhone\":\"094375347543\",\"cardNumber\":\"411111-XXXX-1111\",\"buyerName\":\"huynh kha\",\"status\":\"000\",\"message\":\"Thành công\",\"installment\":false,\"is3D\":true,\"month\":0,\"bankCode\":\"SACOMBANK\",\"bankName\":\"NH TMCP Sài Gòn Th??ng Tín\",\"bankHotline\":\"1900 5555 88 - 08 526 6060\",\"method\":\"VISA\",\"transactionTime\":1566361011917,\"successTime\":1566361015947,\"merchantFee\":10000,\"payerFee\":10000,\"requestAmount\":125581395.6,\"requestCurrency\":\"VND\",\"exchangeRate\":1,\"withdrawn\":false,\"reason\":\"Giao d?ch thành công\"}}',NULL,NULL),(67,1,'{\"transactionInfo\":{\"transactionCode\":\"ALE001T27\",\"orderCode\":\"ICBRP00059\",\"amount\":116279070,\"currency\":\"VND\",\"buyerEmail\":\"huynhkha8295@gmail.com\",\"buyerPhone\":\"094375347543\",\"cardNumber\":\"411111-XXXX-1111\",\"buyerName\":\"huynh kha\",\"status\":\"000\",\"message\":\"Thành công\",\"installment\":false,\"is3D\":true,\"month\":0,\"bankCode\":\"SACOMBANK\",\"bankName\":\"NH TMCP Sài Gòn Th??ng Tín\",\"bankHotline\":\"1900 5555 88 - 08 526 6060\",\"method\":\"VISA\",\"transactionTime\":1566378936266,\"successTime\":1566378941442,\"merchantFee\":10000,\"payerFee\":10000,\"requestAmount\":116279069.99999999,\"requestCurrency\":\"VND\",\"exchangeRate\":1,\"withdrawn\":false,\"reason\":\"Giao d?ch thành công\"}}',NULL,NULL),(68,1,'{\"transactionInfo\":{\"transactionCode\":\"ALE001T28\",\"orderCode\":\"ICBRP00061\",\"amount\":41860465.2,\"currency\":\"VND\",\"buyerEmail\":\"huynhkha8295@gmail.com\",\"buyerPhone\":\"094375347543\",\"cardNumber\":\"411111-XXXX-1111\",\"buyerName\":\"huynh kha\",\"status\":\"000\",\"message\":\"Thành công\",\"installment\":false,\"is3D\":true,\"month\":0,\"bankCode\":\"SACOMBANK\",\"bankName\":\"NH TMCP Sài Gòn Th??ng Tín\",\"bankHotline\":\"1900 5555 88 - 08 526 6060\",\"method\":\"VISA\",\"transactionTime\":1566379085196,\"successTime\":1566379089050,\"merchantFee\":10000,\"payerFee\":10000,\"requestAmount\":41860465.199999996,\"requestCurrency\":\"VND\",\"exchangeRate\":1,\"withdrawn\":false,\"reason\":\"Giao d?ch thành công\"}}',NULL,NULL),(69,1,'{\"transactionInfo\":{\"transactionCode\":\"ALE001T2B\",\"orderCode\":\"ICBRP00063\",\"amount\":232558140,\"currency\":\"VND\",\"buyerEmail\":\"huynhkha8295@gmail.com\",\"buyerPhone\":\"094375347543\",\"cardNumber\":\"411111-XXXX-1111\",\"buyerName\":\"huynh kha\",\"status\":\"000\",\"message\":\"Thành công\",\"installment\":false,\"is3D\":true,\"month\":0,\"bankCode\":\"SACOMBANK\",\"bankName\":\"NH TMCP Sài Gòn Th??ng Tín\",\"bankHotline\":\"1900 5555 88 - 08 526 6060\",\"method\":\"VISA\",\"transactionTime\":1566379158504,\"successTime\":1566379162464,\"merchantFee\":10000,\"payerFee\":10000,\"requestAmount\":232558139.99999997,\"requestCurrency\":\"VND\",\"exchangeRate\":1,\"withdrawn\":false,\"reason\":\"Giao d?ch thành công\"}}',NULL,NULL),(70,1,'{\"transactionInfo\":{\"transactionCode\":\"ALE001T2C\",\"orderCode\":\"ICBRP00064\",\"amount\":30232558.2,\"currency\":\"VND\",\"buyerEmail\":\"huynhkha8295@gmail.com\",\"buyerPhone\":\"094375347543\",\"cardNumber\":\"411111-XXXX-1111\",\"buyerName\":\"huynh kha\",\"status\":\"000\",\"message\":\"Thành công\",\"installment\":false,\"is3D\":true,\"month\":0,\"bankCode\":\"SACOMBANK\",\"bankName\":\"NH TMCP Sài Gòn Th??ng Tín\",\"bankHotline\":\"1900 5555 88 - 08 526 6060\",\"method\":\"VISA\",\"transactionTime\":1566380032773,\"successTime\":1566380037538,\"merchantFee\":10000,\"payerFee\":10000,\"requestAmount\":30232558.2,\"requestCurrency\":\"VND\",\"exchangeRate\":1,\"withdrawn\":false,\"reason\":\"Giao d?ch thành công\"}}',NULL,NULL),(71,1,'{\"transactionInfo\":{\"transactionCode\":\"ALE001T2M\",\"orderCode\":\"ICBRP00065\",\"amount\":41860465.2,\"currency\":\"VND\",\"buyerEmail\":\"nguyentandat43@gmail.com\",\"buyerPhone\":\"094375347543\",\"cardNumber\":\"411111-XXXX-1111\",\"buyerName\":\"huynh kha\",\"status\":\"000\",\"message\":\"Thành công\",\"installment\":false,\"is3D\":true,\"month\":0,\"bankCode\":\"SACOMBANK\",\"bankName\":\"NH TMCP Sài Gòn Th??ng Tín\",\"bankHotline\":\"1900 5555 88 - 08 526 6060\",\"method\":\"VISA\",\"transactionTime\":1566381059926,\"successTime\":1566381064699,\"merchantFee\":10000,\"payerFee\":10000,\"requestAmount\":41860465.199999996,\"requestCurrency\":\"VND\",\"exchangeRate\":1,\"withdrawn\":false,\"reason\":\"Giao d?ch thành công\"}}',NULL,NULL),(72,1,'{\"transactionInfo\":{\"transactionCode\":\"ALE001T3Y\",\"orderCode\":\"ICBRP00066\",\"amount\":30232558.2,\"currency\":\"VND\",\"buyerEmail\":\"huynhkha8295@gmail.com\",\"buyerPhone\":\"094375347543\",\"cardNumber\":\"411111-XXXX-1111\",\"buyerName\":\"huynh kha\",\"status\":\"000\",\"message\":\"Thành công\",\"installment\":false,\"is3D\":true,\"month\":0,\"bankCode\":\"SACOMBANK\",\"bankName\":\"NH TMCP Sài Gòn Th??ng Tín\",\"bankHotline\":\"1900 5555 88 - 08 526 6060\",\"method\":\"VISA\",\"transactionTime\":1566441321684,\"successTime\":1566441329075,\"merchantFee\":10000,\"payerFee\":10000,\"requestAmount\":30232558.2,\"requestCurrency\":\"VND\",\"exchangeRate\":1,\"withdrawn\":false,\"reason\":\"Giao d?ch thành công\"}}',NULL,NULL),(73,1,'{\"transactionInfo\":{\"transactionCode\":\"ALE001T40\",\"orderCode\":\"ICBRP00067\",\"amount\":113883721.16,\"currency\":\"VND\",\"buyerEmail\":\"nguyentandat43@gmail.com\",\"buyerPhone\":\"094375347543\",\"cardNumber\":\"411111-XXXX-1111\",\"buyerName\":\"huynh kha\",\"status\":\"000\",\"message\":\"Thành công\",\"installment\":false,\"is3D\":true,\"month\":0,\"bankCode\":\"SACOMBANK\",\"bankName\":\"NH TMCP Sài Gòn Th??ng Tín\",\"bankHotline\":\"1900 5555 88 - 08 526 6060\",\"method\":\"VISA\",\"transactionTime\":1566442652804,\"successTime\":1566442657505,\"merchantFee\":10000,\"payerFee\":10000,\"requestAmount\":113883721.15799999,\"requestCurrency\":\"VND\",\"exchangeRate\":1,\"withdrawn\":false,\"reason\":\"Giao d?ch thành công\"}}',NULL,NULL),(74,1,'{\"transactionInfo\":{\"transactionCode\":\"ALE001ZFA\",\"orderCode\":\"ICBRP00109\",\"amount\":23255814,\"currency\":\"VND\",\"buyerEmail\":\"huynhkha8295@gmail.com\",\"buyerPhone\":\"094375347543\",\"cardNumber\":\"411111-XXXX-1111\",\"buyerName\":\"huynh kha\",\"status\":\"000\",\"message\":\"Thành công\",\"installment\":false,\"is3D\":true,\"month\":0,\"bankCode\":\"SACOMBANK\",\"bankName\":\"NH TMCP Sài Gòn Th??ng Tín\",\"bankHotline\":\"1900 5555 88 - 08 526 6060\",\"method\":\"VISA\",\"transactionTime\":1571583068087,\"successTime\":1571583072678,\"merchantFee\":10000,\"payerFee\":10000,\"requestAmount\":23255814,\"requestCurrency\":\"VND\",\"exchangeRate\":1,\"withdrawn\":false,\"reason\":\"Giao d?ch thành công\"},\"checksum\":\"bf21051fb15038abee1a6489df9287af\"}',NULL,NULL),(75,1,'{\"transactionInfo\":{\"transactionCode\":\"ALE001ZFA\",\"orderCode\":\"ICBRP00109\",\"amount\":23255814,\"currency\":\"VND\",\"buyerEmail\":\"huynhkha8295@gmail.com\",\"buyerPhone\":\"094375347543\",\"cardNumber\":\"411111-XXXX-1111\",\"buyerName\":\"huynh kha\",\"status\":\"000\",\"message\":\"Thành công\",\"installment\":false,\"is3D\":true,\"month\":0,\"bankCode\":\"SACOMBANK\",\"bankName\":\"NH TMCP Sài Gòn Th??ng Tín\",\"bankHotline\":\"1900 5555 88 - 08 526 6060\",\"method\":\"VISA\",\"transactionTime\":1571583068087,\"successTime\":1571583072678,\"merchantFee\":10000,\"payerFee\":10000,\"requestAmount\":23255814,\"requestCurrency\":\"VND\",\"exchangeRate\":1,\"withdrawn\":false,\"reason\":\"Giao d?ch thành công\"},\"checksum\":\"bf21051fb15038abee1a6489df9287af\"}',NULL,NULL),(76,1,'{\"transactionInfo\":{\"transactionCode\":\"ALE001ZFA\",\"orderCode\":\"ICBRP00109\",\"amount\":23255814,\"currency\":\"VND\",\"buyerEmail\":\"huynhkha8295@gmail.com\",\"buyerPhone\":\"094375347543\",\"cardNumber\":\"411111-XXXX-1111\",\"buyerName\":\"huynh kha\",\"status\":\"000\",\"message\":\"Thành công\",\"installment\":false,\"is3D\":true,\"month\":0,\"bankCode\":\"SACOMBANK\",\"bankName\":\"NH TMCP Sài Gòn Th??ng Tín\",\"bankHotline\":\"1900 5555 88 - 08 526 6060\",\"method\":\"VISA\",\"transactionTime\":1571583068087,\"successTime\":1571583072678,\"merchantFee\":10000,\"payerFee\":10000,\"requestAmount\":23255814,\"requestCurrency\":\"VND\",\"exchangeRate\":1,\"withdrawn\":false,\"reason\":\"Giao d?ch thành công\"},\"checksum\":\"bf21051fb15038abee1a6489df9287af\"}',NULL,NULL);
/*!40000 ALTER TABLE `data_hook_alepays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `export_reports`
--

DROP TABLE IF EXISTS `export_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `export_reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `file_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `export_reports`
--

LOCK TABLES `export_reports` WRITE;
/*!40000 ALTER TABLE `export_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `export_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `features`
--

DROP TABLE IF EXISTS `features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `features` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `year` year(4) DEFAULT NULL,
  `kilometer` int(11) DEFAULT NULL,
  `fuelmeter` varchar(50) DEFAULT NULL,
  `engine` varchar(50) DEFAULT NULL,
  `transmision` varchar(50) DEFAULT NULL,
  `drivetrain` varchar(50) DEFAULT NULL,
  `seats` int(11) DEFAULT NULL,
  `excolor` varchar(50) DEFAULT NULL,
  `incolor` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `features`
--

LOCK TABLES `features` WRITE;
/*!40000 ALTER TABLE `features` DISABLE KEYS */;
/*!40000 ALTER TABLE `features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icb_news`
--

DROP TABLE IF EXISTS `icb_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `icb_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '1 display , 2 hidden',
  `intro` text,
  `content` longtext,
  `level_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icb_news`
--

LOCK TABLES `icb_news` WRITE;
/*!40000 ALTER TABLE `icb_news` DISABLE KEYS */;
INSERT INTO `icb_news` VALUES (1,'testdsadasd','testdsadasd','/uploads/news/testdsadasd1566623248772.png',0,'asdasdsa','<p>dsadasdasd</p>\n',1,'2019-08-24 04:38:00','2019-08-24 05:07:28'),(7,'abcc','abcc','/uploads/news/abcc1566623027717.png',1,'dasdsad','<p>dasdasdasdsad</p>\n',2,'2019-08-24 05:03:47','2019-09-06 08:55:01'),(8,'asdasd','asdasd','/uploads/news/asdasd1566623228560.png',1,'asdasdas','<p>asdasdasd</p>\n',1,'2019-08-24 05:07:08','2019-09-06 08:51:44');
/*!40000 ALTER TABLE `icb_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ip_restrictions`
--

DROP TABLE IF EXISTS `ip_restrictions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ip_restrictions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_address` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ip_restrictions`
--

LOCK TABLES `ip_restrictions` WRITE;
/*!40000 ALTER TABLE `ip_restrictions` DISABLE KEYS */;
/*!40000 ALTER TABLE `ip_restrictions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `levels`
--

DROP TABLE IF EXISTS `levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `levels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `level` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `levels`
--

LOCK TABLES `levels` WRITE;
/*!40000 ALTER TABLE `levels` DISABLE KEYS */;
INSERT INTO `levels` VALUES (27,4,'Regional Director','#9013fe','2019-09-07 03:42:13','2019-09-25 06:07:11'),(28,3,'Manager','#f5a623','2019-09-07 03:42:38','2019-09-25 06:07:03'),(29,2,'Sales Member','#4a90e2','2019-09-07 03:43:14','2019-09-25 06:06:55'),(30,1,'Community Ambassador','#417505','2019-09-07 03:43:44','2019-09-25 06:06:48'),(31,0,'Subscriber','#417000','2019-09-07 03:43:44','2019-09-25 06:06:48'),(33,5,'Strategy Partner','#d0021b','2019-09-25 06:07:45','2019-09-25 06:07:45');
/*!40000 ALTER TABLE `levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mail_logs`
--

DROP TABLE IF EXISTS `mail_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mail_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `views` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail_logs`
--

LOCK TABLES `mail_logs` WRITE;
/*!40000 ALTER TABLE `mail_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `mail_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double NOT NULL,
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `attribute` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'male|female',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `province` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `company` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'combo,package',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=556 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_details`
--

LOCK TABLES `order_details` WRITE;
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
INSERT INTO `order_details` VALUES (188,93,1,1,3000,'Note for this detail order',NULL,3000,'2019-08-13 09:43:19','2019-08-13 09:43:19',' Base','Icare','09091231234','icarebase@gmail.com','male','22 Nguyen Cong Tru, Quan 1','Ho Chi Minh','Vietnam','1990-10-10','Icarebase Company','combo','Package 1111'),(189,94,1,1,3000,'Note for this detail order',NULL,3000,'2019-08-13 10:49:32','2019-08-13 10:49:32',' Base','Icare','09091231234','icarebase@gmail.com','male','22 Nguyen Cong Tru, Quan 1','Ho Chi Minh','Vietnam','1990-10-10','Icarebase Company','package','Package 1111'),(190,95,1,1,3000,'Note for this detail order',NULL,3000,'2019-08-14 02:05:34','2019-08-14 02:05:34',' Base','Icare','09091231234','icarebase@gmail.com','male','22 Nguyen Cong Tru, Quan 1','Ho Chi Minh','Vietnam','1990-10-10','Icarebase Company','combo','Package 1111'),(191,96,1,1,3000,'Note for this detail order',NULL,3000,'2019-08-14 02:34:43','2019-08-14 02:34:43',' Base','Icare','09091231234','icarebase@gmail.com','male','22 Nguyen Cong Tru, Quan 1','Ho Chi Minh','Vietnam','1990-10-10','Icarebase Company','package','Package 1111'),(192,97,1,1,1300,'Empty',NULL,1300,'2019-08-17 02:33:54','2019-08-17 02:33:54','Phuc','Le','0909545966','vinhphuc591@gmail.com','male','A805 Tecco, 287 Phan Van Hớn','Hồ Chí Minh','Vietnam','2019-08-17','TTS','package','Special HGP – Cancer Prevention'),(193,97,1,1,5000,'Empty',NULL,5000,'2019-08-17 02:33:54','2019-08-17 02:33:54','Phuc','Le','0909545966','vinhphuc591@gmail.com','male','A805 Tecco, 287 Phan Van Hớn','Hồ Chí Minh','Vietnam','2019-08-17','TTS','combo','PERSONAL'),(194,97,3,1,1800,'Empty',NULL,1800,'2019-08-17 02:33:54','2019-08-17 02:33:54','Phuc','Le','0909545966','vinhphuc591@gmail.com','male','A805 Tecco, 287 Phan Van Hớn','Hồ Chí Minh','Vietnam','2019-08-17','TTS','package','Premium HGP – Cancer Prevention & Detox Holiday'),(195,98,3,1,1800,NULL,NULL,1800,'2019-08-21 02:59:55','2019-08-21 02:59:55','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(196,98,3,1,1800,NULL,NULL,1800,'2019-08-21 02:59:55','2019-08-21 02:59:55','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(197,98,3,1,1800,NULL,NULL,1800,'2019-08-21 02:59:55','2019-08-21 02:59:55','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(198,99,3,1,1800,NULL,NULL,1800,'2019-08-21 03:00:11','2019-08-21 03:00:11','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(199,99,3,1,1800,NULL,NULL,1800,'2019-08-21 03:00:11','2019-08-21 03:00:11','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(200,99,3,1,1800,NULL,NULL,1800,'2019-08-21 03:00:11','2019-08-21 03:00:11','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(201,100,3,1,1800,NULL,NULL,1800,'2019-08-21 03:01:30','2019-08-21 03:01:30','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(202,100,3,1,1800,NULL,NULL,1800,'2019-08-21 03:01:30','2019-08-21 03:01:30','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(203,100,3,1,1800,NULL,NULL,1800,'2019-08-21 03:01:30','2019-08-21 03:01:30','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(204,101,3,1,1800,NULL,NULL,1800,'2019-08-21 03:03:26','2019-08-21 03:03:26','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(205,101,3,1,1800,NULL,NULL,1800,'2019-08-21 03:03:26','2019-08-21 03:03:26','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(206,101,3,1,1800,NULL,NULL,1800,'2019-08-21 03:03:26','2019-08-21 03:03:26','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(207,102,3,1,1800,NULL,NULL,1800,'2019-08-21 03:06:34','2019-08-21 03:06:34','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(208,102,3,1,1800,NULL,NULL,1800,'2019-08-21 03:06:34','2019-08-21 03:06:34','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(209,102,3,1,1800,NULL,NULL,1800,'2019-08-21 03:06:34','2019-08-21 03:06:34','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(210,103,3,1,1800,NULL,NULL,1800,'2019-08-21 03:06:34','2019-08-21 03:06:34','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(211,103,3,1,1800,NULL,NULL,1800,'2019-08-21 03:06:34','2019-08-21 03:06:34','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(212,103,3,1,1800,NULL,NULL,1800,'2019-08-21 03:06:34','2019-08-21 03:06:34','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(213,104,3,1,1800,NULL,NULL,1800,'2019-08-21 03:14:01','2019-08-21 03:14:01','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(214,105,3,1,1800,NULL,NULL,1800,'2019-08-21 03:14:01','2019-08-21 03:14:01','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(215,104,3,1,1800,NULL,NULL,1800,'2019-08-21 03:14:01','2019-08-21 03:14:01','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(216,105,3,1,1800,NULL,NULL,1800,'2019-08-21 03:14:01','2019-08-21 03:14:01','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(217,104,3,1,1800,NULL,NULL,1800,'2019-08-21 03:14:01','2019-08-21 03:14:01','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(218,105,3,1,1800,NULL,NULL,1800,'2019-08-21 03:14:01','2019-08-21 03:14:01','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(219,106,3,1,1800,NULL,NULL,1800,'2019-08-21 03:14:38','2019-08-21 03:14:38','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(220,107,3,1,1800,NULL,NULL,1800,'2019-08-21 03:14:38','2019-08-21 03:14:38','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(221,106,3,1,1800,NULL,NULL,1800,'2019-08-21 03:14:38','2019-08-21 03:14:38','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(222,108,3,1,1800,NULL,NULL,1800,'2019-08-21 03:14:38','2019-08-21 03:14:38','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(223,107,3,1,1800,NULL,NULL,1800,'2019-08-21 03:14:38','2019-08-21 03:14:38','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(224,106,3,1,1800,NULL,NULL,1800,'2019-08-21 03:14:38','2019-08-21 03:14:38','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(225,108,3,1,1800,NULL,NULL,1800,'2019-08-21 03:14:38','2019-08-21 03:14:38','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(226,107,3,1,1800,NULL,NULL,1800,'2019-08-21 03:14:38','2019-08-21 03:14:38','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(227,108,3,1,1800,NULL,NULL,1800,'2019-08-21 03:14:38','2019-08-21 03:14:38','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(228,109,3,1,1800,NULL,NULL,1800,'2019-08-21 03:14:57','2019-08-21 03:14:57','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(229,109,3,1,1800,NULL,NULL,1800,'2019-08-21 03:14:57','2019-08-21 03:14:57','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(230,109,3,1,1800,NULL,NULL,1800,'2019-08-21 03:14:57','2019-08-21 03:14:57','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(231,110,3,1,1800,NULL,NULL,1800,'2019-08-21 03:14:57','2019-08-21 03:14:57','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(232,111,3,1,1800,NULL,NULL,1800,'2019-08-21 03:14:57','2019-08-21 03:14:57','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(233,110,3,1,1800,NULL,NULL,1800,'2019-08-21 03:14:57','2019-08-21 03:14:57','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(234,111,3,1,1800,NULL,NULL,1800,'2019-08-21 03:14:57','2019-08-21 03:14:57','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(235,110,3,1,1800,NULL,NULL,1800,'2019-08-21 03:14:57','2019-08-21 03:14:57','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(236,111,3,1,1800,NULL,NULL,1800,'2019-08-21 03:14:57','2019-08-21 03:14:57','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(237,112,3,1,1800,NULL,NULL,1800,'2019-08-21 03:18:11','2019-08-21 03:18:11','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(238,112,3,1,1800,NULL,NULL,1800,'2019-08-21 03:18:11','2019-08-21 03:18:11','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(239,112,3,1,1800,NULL,NULL,1800,'2019-08-21 03:18:11','2019-08-21 03:18:11','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(240,113,3,1,1800,NULL,NULL,1800,'2019-08-21 03:19:07','2019-08-21 03:19:07','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(241,113,3,1,1800,NULL,NULL,1800,'2019-08-21 03:19:07','2019-08-21 03:19:07','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(242,113,3,1,1800,NULL,NULL,1800,'2019-08-21 03:19:07','2019-08-21 03:19:07','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(243,114,3,1,1800,NULL,NULL,1800,'2019-08-21 03:20:24','2019-08-21 03:20:24','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(244,114,3,1,1800,NULL,NULL,1800,'2019-08-21 03:20:24','2019-08-21 03:20:24','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(245,114,3,1,1800,NULL,NULL,1800,'2019-08-21 03:20:24','2019-08-21 03:20:24','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(246,115,3,1,1800,NULL,NULL,1800,'2019-08-21 03:20:57','2019-08-21 03:20:57','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(247,116,3,1,1800,NULL,NULL,1800,'2019-08-21 03:20:57','2019-08-21 03:20:57','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(248,115,3,1,1800,NULL,NULL,1800,'2019-08-21 03:20:57','2019-08-21 03:20:57','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(249,117,3,1,1800,NULL,NULL,1800,'2019-08-21 03:20:57','2019-08-21 03:20:57','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(250,116,3,1,1800,NULL,NULL,1800,'2019-08-21 03:20:57','2019-08-21 03:20:57','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(251,115,3,1,1800,NULL,NULL,1800,'2019-08-21 03:20:57','2019-08-21 03:20:57','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(252,117,3,1,1800,NULL,NULL,1800,'2019-08-21 03:20:57','2019-08-21 03:20:57','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(253,116,3,1,1800,NULL,NULL,1800,'2019-08-21 03:20:57','2019-08-21 03:20:57','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(254,117,3,1,1800,NULL,NULL,1800,'2019-08-21 03:20:57','2019-08-21 03:20:57','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(255,118,3,1,1800,NULL,NULL,1800,'2019-08-21 03:21:40','2019-08-21 03:21:40','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(256,119,3,1,1800,NULL,NULL,1800,'2019-08-21 03:21:40','2019-08-21 03:21:40','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(257,118,3,1,1800,NULL,NULL,1800,'2019-08-21 03:21:40','2019-08-21 03:21:40','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(258,119,3,1,1800,NULL,NULL,1800,'2019-08-21 03:21:40','2019-08-21 03:21:40','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(259,120,3,1,1800,NULL,NULL,1800,'2019-08-21 03:21:40','2019-08-21 03:21:40','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(260,118,3,1,1800,NULL,NULL,1800,'2019-08-21 03:21:40','2019-08-21 03:21:40','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(261,119,3,1,1800,NULL,NULL,1800,'2019-08-21 03:21:40','2019-08-21 03:21:40','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(262,120,3,1,1800,NULL,NULL,1800,'2019-08-21 03:21:40','2019-08-21 03:21:40','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(263,121,3,1,1800,NULL,NULL,1800,'2019-08-21 03:21:40','2019-08-21 03:21:40','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(264,120,3,1,1800,NULL,NULL,1800,'2019-08-21 03:21:40','2019-08-21 03:21:40','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(265,121,3,1,1800,NULL,NULL,1800,'2019-08-21 03:21:40','2019-08-21 03:21:40','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(266,121,3,1,1800,NULL,NULL,1800,'2019-08-21 03:21:40','2019-08-21 03:21:40','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(267,122,3,1,1800,NULL,NULL,1800,'2019-08-21 03:22:10','2019-08-21 03:22:10','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(268,122,3,1,1800,NULL,NULL,1800,'2019-08-21 03:22:10','2019-08-21 03:22:10','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(269,122,3,1,1800,NULL,NULL,1800,'2019-08-21 03:22:10','2019-08-21 03:22:10','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(270,123,3,1,1800,NULL,NULL,1800,'2019-08-21 03:22:10','2019-08-21 03:22:10','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(271,124,3,1,1800,NULL,NULL,1800,'2019-08-21 03:22:10','2019-08-21 03:22:10','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(272,125,3,1,1800,NULL,NULL,1800,'2019-08-21 03:22:10','2019-08-21 03:22:10','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(273,126,3,1,1800,NULL,NULL,1800,'2019-08-21 03:22:10','2019-08-21 03:22:10','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(274,123,3,1,1800,NULL,NULL,1800,'2019-08-21 03:22:10','2019-08-21 03:22:10','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(275,124,3,1,1800,NULL,NULL,1800,'2019-08-21 03:22:10','2019-08-21 03:22:10','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(276,125,3,1,1800,NULL,NULL,1800,'2019-08-21 03:22:10','2019-08-21 03:22:10','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(277,126,3,1,1800,NULL,NULL,1800,'2019-08-21 03:22:10','2019-08-21 03:22:10','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(278,123,3,1,1800,NULL,NULL,1800,'2019-08-21 03:22:10','2019-08-21 03:22:10','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(279,125,3,1,1800,NULL,NULL,1800,'2019-08-21 03:22:10','2019-08-21 03:22:10','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(280,126,3,1,1800,NULL,NULL,1800,'2019-08-21 03:22:10','2019-08-21 03:22:10','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(281,124,3,1,1800,NULL,NULL,1800,'2019-08-21 03:22:10','2019-08-21 03:22:10','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(282,127,3,1,1800,NULL,NULL,1800,'2019-08-21 03:24:25','2019-08-21 03:24:25','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(283,127,3,1,1800,NULL,NULL,1800,'2019-08-21 03:24:25','2019-08-21 03:24:25','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(284,127,3,1,1800,NULL,NULL,1800,'2019-08-21 03:24:25','2019-08-21 03:24:25','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(285,128,3,1,1800,NULL,NULL,1800,'2019-08-21 03:24:25','2019-08-21 03:24:25','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(286,128,3,1,1800,NULL,NULL,1800,'2019-08-21 03:24:25','2019-08-21 03:24:25','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(287,128,3,1,1800,NULL,NULL,1800,'2019-08-21 03:24:25','2019-08-21 03:24:25','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(288,129,3,1,1800,NULL,NULL,1800,'2019-08-21 03:24:25','2019-08-21 03:24:25','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(289,129,3,1,1800,NULL,NULL,1800,'2019-08-21 03:24:25','2019-08-21 03:24:25','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(290,130,3,1,1800,NULL,NULL,1800,'2019-08-21 03:24:25','2019-08-21 03:24:25','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(291,131,3,1,1800,NULL,NULL,1800,'2019-08-21 03:24:25','2019-08-21 03:24:25','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(292,132,3,1,1800,NULL,NULL,1800,'2019-08-21 03:24:25','2019-08-21 03:24:25','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(293,129,3,1,1800,NULL,NULL,1800,'2019-08-21 03:24:25','2019-08-21 03:24:25','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(294,130,3,1,1800,NULL,NULL,1800,'2019-08-21 03:24:25','2019-08-21 03:24:25','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(295,131,3,1,1800,NULL,NULL,1800,'2019-08-21 03:24:25','2019-08-21 03:24:25','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(296,132,3,1,1800,NULL,NULL,1800,'2019-08-21 03:24:25','2019-08-21 03:24:25','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(297,130,3,1,1800,NULL,NULL,1800,'2019-08-21 03:24:25','2019-08-21 03:24:25','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(298,131,3,1,1800,NULL,NULL,1800,'2019-08-21 03:24:25','2019-08-21 03:24:25','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(299,132,3,1,1800,NULL,NULL,1800,'2019-08-21 03:24:25','2019-08-21 03:24:25','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(300,133,3,1,1800,NULL,NULL,1800,'2019-08-21 03:24:25','2019-08-21 03:24:25','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(301,133,3,1,1800,NULL,NULL,1800,'2019-08-21 03:24:25','2019-08-21 03:24:25','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(302,133,3,1,1800,NULL,NULL,1800,'2019-08-21 03:24:26','2019-08-21 03:24:26','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(303,134,3,1,1800,NULL,NULL,1800,'2019-08-21 03:25:00','2019-08-21 03:25:00','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(304,134,3,1,1800,NULL,NULL,1800,'2019-08-21 03:25:00','2019-08-21 03:25:00','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(305,134,3,1,1800,NULL,NULL,1800,'2019-08-21 03:25:00','2019-08-21 03:25:00','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(306,135,3,1,1800,NULL,NULL,1800,'2019-08-21 03:25:00','2019-08-21 03:25:00','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(307,136,3,1,1800,NULL,NULL,1800,'2019-08-21 03:25:00','2019-08-21 03:25:00','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(308,136,3,1,1800,NULL,NULL,1800,'2019-08-21 03:25:00','2019-08-21 03:25:00','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(309,137,3,1,1800,NULL,NULL,1800,'2019-08-21 03:25:00','2019-08-21 03:25:00','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(310,135,3,1,1800,NULL,NULL,1800,'2019-08-21 03:25:00','2019-08-21 03:25:00','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(311,138,3,1,1800,NULL,NULL,1800,'2019-08-21 03:25:00','2019-08-21 03:25:00','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(312,136,3,1,1800,NULL,NULL,1800,'2019-08-21 03:25:00','2019-08-21 03:25:00','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(313,137,3,1,1800,NULL,NULL,1800,'2019-08-21 03:25:00','2019-08-21 03:25:00','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(314,140,3,1,1800,NULL,NULL,1800,'2019-08-21 03:25:00','2019-08-21 03:25:00','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(315,135,3,1,1800,NULL,NULL,1800,'2019-08-21 03:25:00','2019-08-21 03:25:00','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(316,141,3,1,1800,NULL,NULL,1800,'2019-08-21 03:25:00','2019-08-21 03:25:00','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(317,139,3,1,1800,NULL,NULL,1800,'2019-08-21 03:25:00','2019-08-21 03:25:00','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(318,138,3,1,1800,NULL,NULL,1800,'2019-08-21 03:25:00','2019-08-21 03:25:00','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(319,137,3,1,1800,NULL,NULL,1800,'2019-08-21 03:25:00','2019-08-21 03:25:00','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(320,140,3,1,1800,NULL,NULL,1800,'2019-08-21 03:25:00','2019-08-21 03:25:00','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(321,141,3,1,1800,NULL,NULL,1800,'2019-08-21 03:25:00','2019-08-21 03:25:00','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(322,139,3,1,1800,NULL,NULL,1800,'2019-08-21 03:25:00','2019-08-21 03:25:00','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(323,138,3,1,1800,NULL,NULL,1800,'2019-08-21 03:25:00','2019-08-21 03:25:00','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(324,140,3,1,1800,NULL,NULL,1800,'2019-08-21 03:25:00','2019-08-21 03:25:00','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(325,139,3,1,1800,NULL,NULL,1800,'2019-08-21 03:25:00','2019-08-21 03:25:00','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(326,141,3,1,1800,NULL,NULL,1800,'2019-08-21 03:25:00','2019-08-21 03:25:00','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(327,142,3,1,1800,NULL,NULL,1800,'2019-08-21 03:25:58','2019-08-21 03:25:58','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(328,142,3,1,1800,NULL,NULL,1800,'2019-08-21 03:25:58','2019-08-21 03:25:58','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(329,142,3,1,1800,NULL,NULL,1800,'2019-08-21 03:25:58','2019-08-21 03:25:58','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(330,143,3,1,1800,NULL,NULL,1800,'2019-08-21 03:26:37','2019-08-21 03:26:37','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(331,143,3,1,1800,NULL,NULL,1800,'2019-08-21 03:26:37','2019-08-21 03:26:37','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(332,143,3,1,1800,NULL,NULL,1800,'2019-08-21 03:26:37','2019-08-21 03:26:37','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(333,144,3,1,1800,NULL,NULL,1800,'2019-08-21 03:28:47','2019-08-21 03:28:47','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(334,144,3,1,1800,NULL,NULL,1800,'2019-08-21 03:28:47','2019-08-21 03:28:47','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(335,144,3,1,1800,NULL,NULL,1800,'2019-08-21 03:28:47','2019-08-21 03:28:47','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(336,145,3,1,1800,NULL,NULL,1800,'2019-08-21 03:29:02','2019-08-21 03:29:02','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(337,145,3,1,1800,NULL,NULL,1800,'2019-08-21 03:29:02','2019-08-21 03:29:02','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(338,145,3,1,1800,NULL,NULL,1800,'2019-08-21 03:29:02','2019-08-21 03:29:02','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(339,146,3,1,1800,NULL,NULL,1800,'2019-08-21 03:29:37','2019-08-21 03:29:37','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(340,146,3,1,1800,NULL,NULL,1800,'2019-08-21 03:29:37','2019-08-21 03:29:37','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(341,147,3,1,1800,NULL,NULL,1800,'2019-08-21 03:29:37','2019-08-21 03:29:37','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(342,146,3,1,1800,NULL,NULL,1800,'2019-08-21 03:29:37','2019-08-21 03:29:37','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(343,147,3,1,1800,NULL,NULL,1800,'2019-08-21 03:29:37','2019-08-21 03:29:37','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(344,147,3,1,1800,NULL,NULL,1800,'2019-08-21 03:29:37','2019-08-21 03:29:37','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(345,148,3,1,1800,NULL,NULL,1800,'2019-08-21 03:30:31','2019-08-21 03:30:31','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(346,148,3,1,1800,NULL,NULL,1800,'2019-08-21 03:30:31','2019-08-21 03:30:31','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(347,148,3,1,1800,NULL,NULL,1800,'2019-08-21 03:30:31','2019-08-21 03:30:31','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(348,149,3,1,1800,NULL,NULL,1800,'2019-08-21 03:30:31','2019-08-21 03:30:31','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(349,149,3,1,1800,NULL,NULL,1800,'2019-08-21 03:30:31','2019-08-21 03:30:31','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(350,150,3,1,1800,NULL,NULL,1800,'2019-08-21 03:30:31','2019-08-21 03:30:31','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(351,150,3,1,1800,NULL,NULL,1800,'2019-08-21 03:30:31','2019-08-21 03:30:31','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(352,149,3,1,1800,NULL,NULL,1800,'2019-08-21 03:30:31','2019-08-21 03:30:31','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(353,150,3,1,1800,NULL,NULL,1800,'2019-08-21 03:30:31','2019-08-21 03:30:31','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(354,151,3,1,1800,NULL,NULL,1800,'2019-08-21 03:32:30','2019-08-21 03:32:30','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(355,151,3,1,1800,NULL,NULL,1800,'2019-08-21 03:32:30','2019-08-21 03:32:30','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(356,151,3,1,1800,NULL,NULL,1800,'2019-08-21 03:32:30','2019-08-21 03:32:30','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(357,152,3,1,1800,NULL,NULL,1800,'2019-08-21 03:35:18','2019-08-21 03:35:18','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(358,153,3,1,1800,NULL,NULL,1800,'2019-08-21 03:35:18','2019-08-21 03:35:18','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(359,152,3,1,1800,NULL,NULL,1800,'2019-08-21 03:35:18','2019-08-21 03:35:18','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(360,153,3,1,1800,NULL,NULL,1800,'2019-08-21 03:35:18','2019-08-21 03:35:18','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(361,152,3,1,1800,NULL,NULL,1800,'2019-08-21 03:35:18','2019-08-21 03:35:18','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(362,153,3,1,1800,NULL,NULL,1800,'2019-08-21 03:35:18','2019-08-21 03:35:18','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(363,154,3,1,1800,NULL,NULL,1800,'2019-08-21 03:35:47','2019-08-21 03:35:47','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(364,154,3,1,1800,NULL,NULL,1800,'2019-08-21 03:35:47','2019-08-21 03:35:47','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(365,155,3,1,1800,NULL,NULL,1800,'2019-08-21 03:35:47','2019-08-21 03:35:47','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(366,154,3,1,1800,NULL,NULL,1800,'2019-08-21 03:35:47','2019-08-21 03:35:47','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(367,155,3,1,1800,NULL,NULL,1800,'2019-08-21 03:35:47','2019-08-21 03:35:47','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(368,155,3,1,1800,NULL,NULL,1800,'2019-08-21 03:35:47','2019-08-21 03:35:47','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(369,156,3,1,1800,NULL,NULL,1800,'2019-08-21 03:37:56','2019-08-21 03:37:56','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(370,156,3,1,1800,NULL,NULL,1800,'2019-08-21 03:37:56','2019-08-21 03:37:56','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(371,156,3,1,1800,NULL,NULL,1800,'2019-08-21 03:37:56','2019-08-21 03:37:56','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(372,157,3,1,1800,NULL,NULL,1800,'2019-08-21 03:40:10','2019-08-21 03:40:10','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(373,157,3,1,1800,NULL,NULL,1800,'2019-08-21 03:40:10','2019-08-21 03:40:10','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(374,157,3,1,1800,NULL,NULL,1800,'2019-08-21 03:40:10','2019-08-21 03:40:10','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(375,158,3,1,1800,NULL,NULL,1800,'2019-08-21 03:56:02','2019-08-21 03:56:02','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(376,158,3,1,1800,NULL,NULL,1800,'2019-08-21 03:56:02','2019-08-21 03:56:02','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(377,158,3,1,1800,NULL,NULL,1800,'2019-08-21 03:56:02','2019-08-21 03:56:02','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(378,159,3,1,1800,NULL,NULL,1800,'2019-08-21 03:57:10','2019-08-21 03:57:10','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(379,159,3,1,1800,NULL,NULL,1800,'2019-08-21 03:57:10','2019-08-21 03:57:10','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(380,160,3,1,1800,NULL,NULL,1800,'2019-08-21 03:57:10','2019-08-21 03:57:10','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(381,159,3,1,1800,NULL,NULL,1800,'2019-08-21 03:57:10','2019-08-21 03:57:10','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(382,160,3,1,1800,NULL,NULL,1800,'2019-08-21 03:57:10','2019-08-21 03:57:10','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(383,160,3,1,1800,NULL,NULL,1800,'2019-08-21 03:57:10','2019-08-21 03:57:10','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(384,161,3,1,1800,NULL,NULL,1800,'2019-08-21 03:57:18','2019-08-21 03:57:18','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(385,162,3,1,1800,NULL,NULL,1800,'2019-08-21 03:57:18','2019-08-21 03:57:18','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(386,161,3,1,1800,NULL,NULL,1800,'2019-08-21 03:57:18','2019-08-21 03:57:18','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(387,162,3,1,1800,NULL,NULL,1800,'2019-08-21 03:57:18','2019-08-21 03:57:18','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(388,161,3,1,1800,NULL,NULL,1800,'2019-08-21 03:57:18','2019-08-21 03:57:18','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(389,162,3,1,1800,NULL,NULL,1800,'2019-08-21 03:57:18','2019-08-21 03:57:18','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(390,163,3,1,1800,NULL,NULL,1800,'2019-08-21 03:57:42','2019-08-21 03:57:42','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(391,163,3,1,1800,NULL,NULL,1800,'2019-08-21 03:57:42','2019-08-21 03:57:42','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(392,163,3,1,1800,NULL,NULL,1800,'2019-08-21 03:57:42','2019-08-21 03:57:42','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(393,164,3,1,1800,NULL,NULL,1800,'2019-08-21 03:59:15','2019-08-21 03:59:15','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(394,164,3,1,1800,NULL,NULL,1800,'2019-08-21 03:59:15','2019-08-21 03:59:15','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(395,164,3,1,1800,NULL,NULL,1800,'2019-08-21 03:59:15','2019-08-21 03:59:15','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(396,165,3,1,1800,NULL,NULL,1800,'2019-08-21 03:59:33','2019-08-21 03:59:33','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(397,165,3,1,1800,NULL,NULL,1800,'2019-08-21 03:59:33','2019-08-21 03:59:33','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(398,165,3,1,1800,NULL,NULL,1800,'2019-08-21 03:59:33','2019-08-21 03:59:33','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(399,166,3,1,1800,NULL,NULL,1800,'2019-08-21 04:01:23','2019-08-21 04:01:23','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(400,166,3,1,1800,NULL,NULL,1800,'2019-08-21 04:01:23','2019-08-21 04:01:23','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(401,166,3,1,1800,NULL,NULL,1800,'2019-08-21 04:01:23','2019-08-21 04:01:23','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(402,167,3,1,1800,NULL,NULL,1800,'2019-08-21 04:02:11','2019-08-21 04:02:11','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(403,168,3,1,1800,NULL,NULL,1800,'2019-08-21 04:02:11','2019-08-21 04:02:11','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(404,167,3,1,1800,NULL,NULL,1800,'2019-08-21 04:02:11','2019-08-21 04:02:11','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(405,168,3,1,1800,NULL,NULL,1800,'2019-08-21 04:02:11','2019-08-21 04:02:11','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(406,167,3,1,1800,NULL,NULL,1800,'2019-08-21 04:02:11','2019-08-21 04:02:11','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(407,168,3,1,1800,NULL,NULL,1800,'2019-08-21 04:02:11','2019-08-21 04:02:11','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(408,169,3,1,1800,NULL,NULL,1800,'2019-08-21 04:05:37','2019-08-21 04:05:37','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(409,169,3,1,1800,NULL,NULL,1800,'2019-08-21 04:05:37','2019-08-21 04:05:37','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(410,169,3,1,1800,NULL,NULL,1800,'2019-08-21 04:05:37','2019-08-21 04:05:37','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(411,170,3,1,1800,NULL,NULL,1800,'2019-08-21 04:06:39','2019-08-21 04:06:39','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(412,170,3,1,1800,NULL,NULL,1800,'2019-08-21 04:06:39','2019-08-21 04:06:39','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(413,170,3,1,1800,NULL,NULL,1800,'2019-08-21 04:06:39','2019-08-21 04:06:39','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(414,171,3,1,1800,NULL,NULL,1800,'2019-08-21 04:06:51','2019-08-21 04:06:51','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(415,171,3,1,1800,NULL,NULL,1800,'2019-08-21 04:06:51','2019-08-21 04:06:51','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(416,171,3,1,1800,NULL,NULL,1800,'2019-08-21 04:06:51','2019-08-21 04:06:51','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(417,172,3,1,1800,NULL,NULL,1800,'2019-08-21 04:14:16','2019-08-21 04:14:16','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(418,172,3,1,1800,NULL,NULL,1800,'2019-08-21 04:14:16','2019-08-21 04:14:16','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(419,172,3,1,1800,NULL,NULL,1800,'2019-08-21 04:14:16','2019-08-21 04:14:16','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(420,173,3,1,1800,NULL,NULL,1800,'2019-08-21 04:22:37','2019-08-21 04:22:37','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(421,174,3,1,1800,NULL,NULL,1800,'2019-08-21 04:22:37','2019-08-21 04:22:37','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(422,173,3,1,1800,NULL,NULL,1800,'2019-08-21 04:22:37','2019-08-21 04:22:37','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(423,175,3,1,1800,NULL,NULL,1800,'2019-08-21 04:22:37','2019-08-21 04:22:37','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(424,174,3,1,1800,NULL,NULL,1800,'2019-08-21 04:22:37','2019-08-21 04:22:37','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(425,173,3,1,1800,NULL,NULL,1800,'2019-08-21 04:22:37','2019-08-21 04:22:37','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(426,176,3,1,1800,NULL,NULL,1800,'2019-08-21 04:22:37','2019-08-21 04:22:37','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(427,175,3,1,1800,NULL,NULL,1800,'2019-08-21 04:22:37','2019-08-21 04:22:37','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(428,174,3,1,1800,NULL,NULL,1800,'2019-08-21 04:22:37','2019-08-21 04:22:37','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(429,175,3,1,1800,NULL,NULL,1800,'2019-08-21 04:22:37','2019-08-21 04:22:37','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(430,176,3,1,1800,NULL,NULL,1800,'2019-08-21 04:22:37','2019-08-21 04:22:37','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(431,176,3,1,1800,NULL,NULL,1800,'2019-08-21 04:22:37','2019-08-21 04:22:37','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(432,177,3,1,1800,NULL,NULL,1800,'2019-08-21 04:24:57','2019-08-21 04:24:57','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(433,177,3,1,1800,NULL,NULL,1800,'2019-08-21 04:24:57','2019-08-21 04:24:57','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(434,177,3,1,1800,NULL,NULL,1800,'2019-08-21 04:24:57','2019-08-21 04:24:57','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(435,178,3,1,1800,NULL,NULL,1800,'2019-08-21 04:24:57','2019-08-21 04:24:57','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(436,178,3,1,1800,NULL,NULL,1800,'2019-08-21 04:24:57','2019-08-21 04:24:57','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(437,178,3,1,1800,NULL,NULL,1800,'2019-08-21 04:24:57','2019-08-21 04:24:57','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(438,179,3,1,1800,NULL,NULL,1800,'2019-08-21 04:25:12','2019-08-21 04:25:12','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(439,179,3,1,1800,NULL,NULL,1800,'2019-08-21 04:25:12','2019-08-21 04:25:12','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(440,180,3,1,1800,NULL,NULL,1800,'2019-08-21 04:25:12','2019-08-21 04:25:12','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(441,179,3,1,1800,NULL,NULL,1800,'2019-08-21 04:25:12','2019-08-21 04:25:12','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(442,180,3,1,1800,NULL,NULL,1800,'2019-08-21 04:25:12','2019-08-21 04:25:12','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(443,180,3,1,1800,NULL,NULL,1800,'2019-08-21 04:25:12','2019-08-21 04:25:12','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(444,181,3,1,1800,NULL,NULL,1800,'2019-08-21 04:25:35','2019-08-21 04:25:35','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(445,182,3,1,1800,NULL,NULL,1800,'2019-08-21 04:25:35','2019-08-21 04:25:35','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(446,181,3,1,1800,NULL,NULL,1800,'2019-08-21 04:25:35','2019-08-21 04:25:35','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(447,182,3,1,1800,NULL,NULL,1800,'2019-08-21 04:25:35','2019-08-21 04:25:35','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(448,181,3,1,1800,NULL,NULL,1800,'2019-08-21 04:25:35','2019-08-21 04:25:35','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(449,182,3,1,1800,NULL,NULL,1800,'2019-08-21 04:25:35','2019-08-21 04:25:35','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(450,183,3,1,1800,NULL,NULL,1800,'2019-08-21 04:26:15','2019-08-21 04:26:15','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(451,183,3,1,1800,NULL,NULL,1800,'2019-08-21 04:26:15','2019-08-21 04:26:15','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(452,183,3,1,1800,NULL,NULL,1800,'2019-08-21 04:26:15','2019-08-21 04:26:15','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(453,184,3,1,1800,NULL,NULL,1800,'2019-08-21 04:34:12','2019-08-21 04:34:12','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(454,184,3,1,1800,NULL,NULL,1800,'2019-08-21 04:34:12','2019-08-21 04:34:12','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(455,184,3,1,1800,NULL,NULL,1800,'2019-08-21 04:34:12','2019-08-21 04:34:12','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(456,185,3,1,1800,NULL,NULL,1800,'2019-08-21 04:34:30','2019-08-21 04:34:30','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(457,185,3,1,1800,NULL,NULL,1800,'2019-08-21 04:34:30','2019-08-21 04:34:30','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(458,185,3,1,1800,NULL,NULL,1800,'2019-08-21 04:34:30','2019-08-21 04:34:30','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(459,186,3,1,1800,NULL,NULL,1800,'2019-08-21 04:35:08','2019-08-21 04:35:08','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(460,186,3,1,1800,NULL,NULL,1800,'2019-08-21 04:35:08','2019-08-21 04:35:08','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(461,186,3,1,1800,NULL,NULL,1800,'2019-08-21 04:35:08','2019-08-21 04:35:08','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(462,187,3,1,1800,NULL,NULL,1800,'2019-08-21 04:37:54','2019-08-21 04:37:54','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(463,187,3,1,1800,NULL,NULL,1800,'2019-08-21 04:37:54','2019-08-21 04:37:54','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(464,187,3,1,1800,NULL,NULL,1800,'2019-08-21 04:37:54','2019-08-21 04:37:54','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(465,188,3,1,1800,NULL,NULL,1800,'2019-08-21 04:39:22','2019-08-21 04:39:22','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(466,188,3,1,1800,NULL,NULL,1800,'2019-08-21 04:39:22','2019-08-21 04:39:22','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(467,188,3,1,1800,NULL,NULL,1800,'2019-08-21 04:39:22','2019-08-21 04:39:22','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(468,189,3,1,1800,NULL,NULL,1800,'2019-08-21 04:39:47','2019-08-21 04:39:47','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(469,189,3,1,1800,NULL,NULL,1800,'2019-08-21 04:39:47','2019-08-21 04:39:47','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(470,189,3,1,1800,NULL,NULL,1800,'2019-08-21 04:39:47','2019-08-21 04:39:47','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Vietnam','2019-08-06',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(471,190,1,1,5000,NULL,NULL,5000,'2019-08-21 09:13:02','2019-08-21 09:13:02','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Albania','2019-08-21',NULL,'combo','PERSONAL'),(472,191,3,1,1800,NULL,NULL,1800,'2019-08-21 09:15:33','2019-08-21 09:15:33','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Albania','2019-08-20',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(473,192,3,1,1800,NULL,NULL,1800,'2019-08-21 09:15:33','2019-08-21 09:15:33','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Albania','2019-08-20',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(474,193,1,1,5000,NULL,NULL,5000,'2019-08-21 09:16:42','2019-08-21 09:16:42','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Albania','2019-08-21',NULL,'combo','PERSONAL'),(475,193,1,1,5000,NULL,NULL,5000,'2019-08-21 09:16:42','2019-08-21 09:16:42','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Albania','2019-08-21',NULL,'combo','PERSONAL'),(476,194,1,1,5000,NULL,NULL,5000,'2019-08-21 09:16:42','2019-08-21 09:16:42','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Albania','2019-08-21',NULL,'combo','PERSONAL'),(477,194,1,1,5000,NULL,NULL,5000,'2019-08-21 09:16:42','2019-08-21 09:16:42','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Albania','2019-08-21',NULL,'combo','PERSONAL'),(478,195,1,1,1300,NULL,NULL,1300,'2019-08-21 09:31:16','2019-08-21 09:31:16','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Albania','2019-08-21',NULL,'package','Special HGP – Cancer Prevention'),(479,196,3,1,1800,NULL,NULL,1800,'2019-08-21 09:48:26','2019-08-21 09:48:26','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Albania','2019-08-21',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(480,197,1,1,1300,NULL,NULL,1300,'2019-08-22 02:32:30','2019-08-22 02:32:30','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Albania','1991-05-09',NULL,'package','Special HGP – Cancer Prevention'),(481,198,1,1,5000,NULL,NULL,5000,'2019-08-22 02:54:46','2019-08-22 02:54:46','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Albania','2019-08-22',NULL,'combo','PERSONAL'),(484,199,3,1,1800,NULL,NULL,1800,'2019-08-26 04:43:05','2019-08-26 04:43:05','kha 01','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Albania','2019-08-12',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(485,199,3,1,1800,NULL,NULL,1800,'2019-08-26 04:43:05','2019-08-26 04:43:05','kha 02','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Elbasan','Albania','2019-05-08',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(486,200,1,1,1300,NULL,NULL,1300,'2019-08-28 08:53:51','2019-08-28 08:53:51','Con','Thằng','111111','ifgf1_con@gmail.com','male','11111','H? Chí Minh','Vietnam',NULL,NULL,'package','Special HGP – Cancer Prevention'),(487,200,1,1,1300,NULL,NULL,1300,'2019-08-28 08:53:51','2019-08-28 08:53:51','Mẹ','Bà','2222222','ifgf_me@gmail.com','female','11111','H? Chí Minh','Vietnam',NULL,NULL,'package','Special HGP – Cancer Prevention'),(488,200,1,1,1300,NULL,NULL,1300,'2019-08-28 08:53:51','2019-08-28 08:53:51','Ba','Ông','333333','ifgf1_ba@gmail.com','male','11111','H? Chí Minh','Vietnam','1970-04-28',NULL,'package','Special HGP – Cancer Prevention'),(489,201,3,1,1800,'Empty',NULL,1800,'2019-08-29 02:46:52','2019-08-29 02:46:52','Phuc','Le','123456789','vinhphuc591@gmail.com','male','A805 Tecco, 287 Phan Van Hớn','Hồ Chí Minh','Vietnam','2019-08-07','12356789','package','Premium HGP – Cancer Prevention & Detox Holiday'),(490,202,3,1,1800,'Empty',NULL,1800,'2019-08-29 02:55:22','2019-08-29 02:55:22','Phuc','Le','123456789','vinhphuc591@gmail.com','male','A805 Tecco, 287 Phan Van Hớn','Hồ Chí Minh','Vietnam','2019-08-01','1234567','package','Premium HGP – Cancer Prevention & Detox Holiday'),(491,203,3,1,1800,NULL,NULL,1800,'2019-08-29 08:35:32','2019-08-29 08:35:32','CUS','IFG','1111','ifgcus@gmail.com','male','11111','H? Chí Minh','Vietnam','1985-08-01',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(492,203,3,1,1800,NULL,NULL,1800,'2019-08-29 08:35:32','2019-08-29 08:35:32','CUS','IFG','1111','ifgcus@gmail.com','male','11111','H? Chí Minh','Vietnam','1970-08-29',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(493,204,3,1,1800,'Empty',NULL,1800,'2019-08-29 09:28:00','2019-08-29 09:28:00','Phuc','Le','1234567','vinhphuc591@gmail.com','male','A805 Tecco, 287 Phan Van Hớn','Hồ Chí Minh','Vietnam','2019-08-23',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(494,205,1,1,5000,NULL,NULL,5000,'2019-08-31 01:55:46','2019-08-31 01:55:46','kha','huynh','09873442343','huynhkha8395@gmail.com','male','123abc','Lai Châu','Vietnam','2019-08-19',NULL,'combo','PERSONAL'),(495,206,1,1,5000,NULL,NULL,5000,'2019-09-04 07:33:01','2019-09-04 07:33:01','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Điện biên','Vietnam','2019-08-11',NULL,'combo','PERSONAL'),(496,207,1,1,1300,NULL,NULL,1300,'2019-09-06 03:49:24','2019-09-06 03:49:24','kha','huynh 1300','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Điện Biên','Vietnam','1996-07-01',NULL,'package','Special HGP – Cancer Prevention'),(497,207,3,1,1800,NULL,NULL,1800,'2019-09-06 03:49:24','2019-09-06 03:49:24','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Điện Biên','Vietnam','1997-09-01',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(498,208,1,1,5000,NULL,NULL,5000,'2019-09-06 04:12:34','2019-09-06 04:12:34','kha','huynh','094375347543','huynhkha8895@gmail.com','male','sadasdasd','Điện Biên','Vietnam','2019-09-25',NULL,'combo','PERSONAL'),(499,208,1,1,5000,NULL,NULL,5000,'2019-09-06 04:12:34','2019-09-06 04:12:34','kha','huynh','094375347543','huynhkha8895@gmail.com','male','sadasdasd','Hồ Chí Minh','Vietnam','2019-09-10',NULL,'combo','PERSONAL'),(500,208,3,1,1800,NULL,NULL,1800,'2019-09-06 04:12:34','2019-09-06 04:12:34','kha','huynh','094375347543','huynhkha8895@gmail.com','male','sadasdasd','Điện biên','Vietnam','2019-08-29',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(501,209,1,1,1300,NULL,NULL,1300,'2019-09-06 04:59:52','2019-09-06 04:59:52','IFG VN','F1 PKG 1300 ONLY','5555','ifgf1@gmail.com','male','11111','Hồ Chí Minh','Vietnam','1989-09-06',NULL,'package','Special HGP – Cancer Prevention'),(502,210,8,1,1000,NULL,NULL,1000,'2019-09-09 04:27:49','2019-09-09 04:27:49','Cus FULL Case ','IFG','111','ifgcus@gmail.com','male','1111','Hồ Chí Minh','Vietnam','1960-09-09',NULL,'package','Basic HGP – Cancer Prevention'),(503,211,8,1,1000,NULL,NULL,1000,'2019-09-11 07:33:13','2019-09-11 07:33:13','LV1 mua gói 02','IFG','111','ifglv1@gmail.com','male','111','Hồ Chí Minh','Vietnam','1950-09-11',NULL,'package','Basic HGP – Cancer Prevention'),(504,211,3,1,1800,NULL,NULL,1800,'2019-09-11 07:33:13','2019-09-11 07:33:13','LV1','IFG MUA','111','ifglv1@gmail.com','male','111','Hồ Chí Minh','Vietnam','1950-09-11',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(505,212,3,1,1800,NULL,NULL,1800,'2019-09-11 07:47:11','2019-09-11 07:47:11','LV5','CUS','888','cus2lv5@gmail.com','male','1111','Hồ Chí Minh','Vietnam','1950-09-11',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(506,213,1,1,1300,NULL,NULL,1300,'2019-09-11 07:53:28','2019-09-11 07:53:28','2 LV3','CUS 2','909692565','cus2lv3@gmail.com','male','111','Hồ Chí Minh','Vietnam','1970-09-11',NULL,'package','Special HGP – Cancer Prevention'),(507,214,3,1,1800,NULL,NULL,1800,'2019-09-11 08:39:35','2019-09-11 08:39:35','2 LV3','CUS 2','909692565','cus2lv3@gmail.com','male','111','Hồ Chí Minh','Vietnam','1993-09-08',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(508,215,3,1,1800,NULL,NULL,1800,'2019-09-12 03:13:08','2019-09-12 03:13:08','2 LV3','Cus 2 CUS (LV3)','1111','cus2cus3tolv3@gmail.com','male','111','´Ali Khayl','Afghanistan','1980-09-11',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(509,216,1,1,1300,NULL,NULL,1300,'2019-09-12 03:34:25','2019-09-12 03:34:25','LV3 (2 lan)','CUS 2 to','111','cus32tolv32@gmail.com','male','111','Kabul','Afghanistan','1973-09-05',NULL,'package','Special HGP – Cancer Prevention'),(510,217,3,1,1800,NULL,NULL,1800,'2019-09-12 03:39:29','2019-09-12 03:39:29','Cus to 3 LV3','Cus to 3 LV3','111','cus3lv3@gmail.com','male','111','Wahran','Algeria','1973-09-12',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(511,218,1,1,1300,NULL,NULL,1300,'2019-09-12 03:41:07','2019-09-12 03:41:07','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Điện Biên','Vietnam','2019-09-10',NULL,'package','Special HGP – Cancer Prevention'),(512,218,1,1,1300,NULL,NULL,1300,'2019-09-12 03:41:07','2019-09-12 03:41:07','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Điện Biên','Vietnam','2019-09-11',NULL,'package','Special HGP – Cancer Prevention'),(513,219,8,1,1000,NULL,NULL,1000,'2019-09-12 03:42:26','2019-09-12 03:42:26','Cus to 3 LV3','Cus to 3 LV3','111','cus3lv3@gmail.com','male','111','Wahran','Algeria','2019-06-12',NULL,'package','Basic HGP – Cancer Prevention'),(514,220,3,1,5000,'Empty',NULL,5000,'2019-09-12 05:59:46','2019-09-12 05:59:46','Anh','Cuong','978197083','coccachua@gmail.com','male','160 Minh Mang','Hồ Chí Minh','Vietnam','2019-09-11','localitytravel','package','PERSONAL'),(515,220,1,1,5000,'Empty',NULL,5000,'2019-09-12 05:59:46','2019-09-12 05:59:46','Anh','Cuong','978197083','coccachua@gmail.com','male','160 Minh Mang','Hồ Chí Minh','Vietnam','2019-09-11','localitytravel','combo','PERSONAL'),(516,221,1,1,1300,NULL,NULL,1300,'2019-09-12 08:52:27','2019-09-12 08:52:27','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Điện Biên','Vietnam','2019-09-12',NULL,'package','Special HGP – Cancer Prevention'),(517,222,1,1,5000,NULL,NULL,5000,'2019-09-12 09:17:30','2019-09-12 09:17:30','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Điện Biên','Vietnam','2019-09-17',NULL,'combo','PERSONAL'),(518,223,8,1,1000,NULL,NULL,1000,'2019-09-13 08:14:19','2019-09-13 08:14:19','No REF','Test','11111','testnocode@gmail.com','male','111','Kabul','Afghanistan','2019-05-01',NULL,'package','Basic HGP – Cancer Prevention'),(519,224,3,1,1800,NULL,NULL,1800,'2019-09-13 08:34:15','2019-09-13 08:34:15','Edit REF','No','1111','noeditref@gmail.com','male','111','Kabul','Afghanistan','2000-06-13',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(520,225,1,1,1300,NULL,NULL,1300,'2019-09-19 08:30:30','2019-09-19 08:30:30','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Điện Biên','Vietnam','2019-09-19','gggg','package','Special HGP – Cancer Prevention'),(521,226,3,1,1800,NULL,NULL,1800,'2019-09-25 04:47:54','2019-09-25 04:47:54','Cus - Sub','LV1','111','lv1@2gmail.com','male','1111','Satif','Algeria','1970-09-25',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(522,227,1,1,1300,NULL,NULL,1300,'2019-09-25 06:11:36','2019-09-25 06:11:36','Cus - Sub','LV1','111','lv1@2gmail.com','male','1111','Satif','Algeria','2000-05-25',NULL,'package','Special HGP – Cancer Prevention'),(523,228,3,1,1800,NULL,NULL,1800,'2019-09-25 06:18:27','2019-09-25 06:18:27','Cus - Sub','LV1','111','lv1@2gmail.com','male','1111','Satif','Algeria','1960-09-25',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(524,229,3,1,1800,NULL,NULL,1800,'2019-09-25 06:21:42','2019-09-25 06:21:42','Cus - Sub','LV1','111','lv1@2gmail.com','male','1111','Satif','Algeria','1970-09-25',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(525,230,1,1,1300,NULL,NULL,1300,'2019-09-25 06:47:17','2019-09-25 06:47:17','Customer','IFG to','111','ifg2c@2gmail.com','male','111','Canillo','Andorra','1970-09-25',NULL,'package','Special HGP – Cancer Prevention'),(526,231,3,1,1800,NULL,NULL,1800,'2019-09-25 06:52:15','2019-09-25 06:52:15','2C','IFG 2C','1111','ifg2c2c@gmail.com','male','1111','Achin','Afghanistan','1990-06-25',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(527,232,1,1,1300,NULL,NULL,1300,'2019-09-25 09:05:43','2019-09-25 09:05:43','Cus','LV3','111','lv3c@2gmail.com','male','111','Kabul','Afghanistan','1970-09-03',NULL,'package','Special HGP – Cancer Prevention'),(528,233,8,1,1000,NULL,NULL,1000,'2019-09-25 10:00:49','2019-09-25 10:00:49','To LV3 to 2','Level 3','111','lv32c@gmail.com','male','111','Kabul','Afghanistan','1970-09-24',NULL,'package','Basic HGP – Cancer Prevention'),(529,234,8,1,1000,NULL,NULL,1000,'2019-10-03 03:49:41','2019-10-03 03:49:41','Test 02-10','OK','3333','oktest001@2gmail.com','male','111','Achin','Afghanistan','1990-10-02',NULL,'package','Basic HGP – Cancer Prevention'),(530,235,8,1,1000,NULL,NULL,1000,'2019-10-03 03:53:05','2019-10-03 03:53:05','Test 02-10','OK','3333','oktest001@2gmail.com','male','111','Achin','Afghanistan','2018-11-27',NULL,'package','Basic HGP – Cancer Prevention'),(531,236,8,1,1000,NULL,NULL,1000,'2019-10-03 03:56:48','2019-10-03 03:56:48','Test 02-10','OK','3333','oktest001@2gmail.com','male','111','Achin','Afghanistan','1917-10-03',NULL,'package','Basic HGP – Cancer Prevention'),(532,237,1,1,5000,NULL,NULL,5000,'2019-10-13 01:56:27','2019-10-13 01:56:27','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Điện Biên','Vietnam','2019-09-24',NULL,'combo','PERSONAL'),(533,238,8,1,1000,NULL,NULL,1000,'2019-10-13 01:56:54','2019-10-13 01:56:54','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Điện Biên','Vietnam','2019-10-13',NULL,'package','Basic HGP – Cancer Prevention'),(534,239,8,1,1000,NULL,NULL,1000,'2019-10-13 01:57:21','2019-10-13 01:57:21','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Điện Biên','Vietnam','2019-10-13',NULL,'package','Basic HGP – Cancer Prevention'),(535,240,8,1,1000,NULL,NULL,1000,'2019-10-20 14:47:21','2019-10-20 14:47:21','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Điện Biên','Vietnam','2019-10-13',NULL,'package','Basic HGP – Cancer Prevention'),(536,241,1,1,5000,NULL,NULL,5000,'2019-10-20 14:52:07','2019-10-20 14:52:07','kha','huynh','094375347543','huynhkha8295@gmail.com','male','sadasdasd','Điện Biên','Vietnam','2019-10-20',NULL,'combo','PERSONAL'),(537,242,1,2,3000,'Note for this detail order',NULL,6000,'2019-10-23 15:16:06','2019-10-23 15:16:06',' Base','Icare','09091231234','icarebase@gmail.com','male','22 Nguyen Cong Tru, Quan 1','Ho Chi Minh','Vietnam','1990-10-10','Icarebase Company','combo','Package 1111'),(538,243,1,2,3000,'Note for this detail order',NULL,6000,'2019-10-23 15:22:58','2019-10-23 15:22:58',' Base','Icare','09091231234','icarebase@gmail.com','male','22 Nguyen Cong Tru, Quan 1','Ho Chi Minh','Vietnam','1990-10-10','Icarebase Company','combo','Package 1111'),(539,244,8,1,1000,NULL,NULL,1000,'2019-10-24 07:18:19','2019-10-24 07:18:19','Hugo','Mr','901682839','icarebasemarketing@gmail.com','male','1111','Hồ Chí Minh','Vietnam','1980-10-24',NULL,'package','Basic HGP – Cancer Prevention'),(540,245,8,1,1000,NULL,NULL,1000,'2019-10-24 07:43:43','2019-10-24 07:43:43','Hugo','Martino','0901682839','icarebase@gmail.com','male','60 Nguyen Dinh Chieu, Dakao, Distric 1','Ho Chi Minh','Vietnam','1980-10-24',NULL,'package','Basic HGP – Cancer Prevention'),(541,246,8,1,1000,NULL,NULL,1000,'2019-10-24 09:06:10','2019-10-24 09:06:10','Admin','iCareBase','0901682839','icarebase@gmail.com','male','60 Nguyen Dinh Chieu, Dakao, Distric 1','Ho Chi Minh','Vietnam','2018-12-01',NULL,'package','Basic HGP – Cancer Prevention'),(542,247,8,1,1000,NULL,NULL,1000,'2019-10-24 09:29:18','2019-10-24 09:29:18','Admin','iCareBase','0901682839','icarebase@gmail.com','male','60 Nguyen Dinh Chieu, Dakao, Distric 1','Ho Chi Minh','Vietnam','1990-06-24',NULL,'package','Basic HGP – Cancer Prevention'),(543,248,8,1,1000,NULL,NULL,1000,'2019-10-24 09:31:19','2019-10-24 09:31:19','Admin 2','iCareBase','0901682839','icarebase@gmail.com','male','60 Nguyen Dinh Chieu, Dakao, Distric 1','Ho Chi Minh','Vietnam','2000-04-24',NULL,'package','Basic HGP – Cancer Prevention'),(544,248,8,1,1000,NULL,NULL,1000,'2019-10-24 09:31:19','2019-10-24 09:31:19','Admin 01','iCareBase','0901682839','icarebase@gmail.com','male','60 Nguyen Dinh Chieu, Dakao, Distric 1','Ho Chi Minh','Vietnam','2000-04-24',NULL,'package','Basic HGP – Cancer Prevention'),(545,249,1,2,3000,'Note for this detail order',NULL,6000,'2019-10-28 04:58:43','2019-10-28 04:58:43',' Base','Icare','09091231234','icarebase@gmail.com','male','22 Nguyen Cong Tru, Quan 1','Ho Chi Minh','Vietnam','1990-10-10','Icarebase Company','combo','Package 1111'),(546,250,8,1,1000,NULL,NULL,1000,'2019-10-29 01:03:50','2019-10-29 01:03:50','Marketing','iCareBase','901682839','icarebasemarketing@gmail.com','male','1111','Hồ Chí Minh','Vietnam','2010-04-29',NULL,'package','Basic HGP – Cancer Prevention'),(547,251,1,1,1500,NULL,NULL,1500,'2019-10-29 01:05:42','2019-10-29 01:05:42','Marketing','iCareBase','901682839','icarebasemarketing@gmail.com','male','1111','Hồ Chí Minh','Vietnam','2019-07-03',NULL,'package','Special HGP – Cancer Prevention'),(548,251,8,1,1000,NULL,NULL,1000,'2019-10-29 01:05:42','2019-10-29 01:05:42','Marketing','iCareBase','901682839','icarebasemarketing@gmail.com','male','1111','Hồ Chí Minh','Vietnam','2019-07-03',NULL,'package','Basic HGP – Cancer Prevention'),(549,252,1,2,3000,'Note for this detail order',NULL,6000,'2019-10-29 04:30:45','2019-10-29 04:30:45',' Base','Icare','09091231234','icarebase@gmail.com','male','22 Nguyen Cong Tru, Quan 1','Ho Chi Minh','Vietnam','1990-10-10','Icarebase Company','combo','Package 1111'),(550,253,3,1,2500,NULL,NULL,2500,'2019-10-29 05:49:23','2019-10-29 05:49:23','Marketing Gói 2500','iCareBase','901682839','icarebasemarketing@gmail.com','male','1111','Hồ Chí Minh','Vietnam','2000-01-05',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(551,253,1,1,1500,NULL,NULL,1500,'2019-10-29 05:49:24','2019-10-29 05:49:24','Marketing Gói 1500','iCareBase','901682839','icarebasemarketing@gmail.com','male','1111','Hồ Chí Minh','Vietnam','2000-01-05',NULL,'package','Special HGP – Cancer Prevention'),(552,253,8,1,1000,NULL,NULL,1000,'2019-10-29 05:49:24','2019-10-29 05:49:24','Marketing Gói 1000','iCareBase','901682839','icarebasemarketing@gmail.com','male','1111','Hồ Chí Minh','Vietnam','2000-05-29',NULL,'package','Basic HGP – Cancer Prevention'),(553,254,3,1,2500,NULL,NULL,2500,'2019-10-29 08:13:39','2019-10-29 08:13:39','2500','Gói','901682839','icarebasemarketing@gmail.com','male','1111','Hồ Chí Minh','Vietnam','2010-06-29',NULL,'package','Premium HGP – Cancer Prevention & Detox Holiday'),(554,254,1,1,1500,NULL,NULL,1500,'2019-10-29 08:13:39','2019-10-29 08:13:39','1500','Gói','901682839','icarebasemarketing@gmail.com','male','1111','Hồ Chí Minh','Vietnam','1979-05-29',NULL,'package','Special HGP – Cancer Prevention'),(555,254,8,1,1000,NULL,NULL,1000,'2019-10-29 08:13:39','2019-10-29 08:13:39','1000','Gói','901682839','icarebasemarketing@gmail.com','male','1111','Hồ Chí Minh','Vietnam','1970-05-29',NULL,'package','Basic HGP – Cancer Prevention');
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `status` int(11) NOT NULL,
  `order_code` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int(11) NOT NULL,
  `agency_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `promotion_code` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `promotion_value` double DEFAULT NULL,
  `total_pay` double NOT NULL DEFAULT '0',
  `total_commission` double DEFAULT NULL,
  `type_buy` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'combo|package',
  `node` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `gross_profit` double DEFAULT NULL,
  `payment_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'point,alepay,eth',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payment_view` int(11) DEFAULT '1' COMMENT '1 Show , 0 not display',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=255 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (95,2,'ICB00095',8,NULL,1,NULL,0,3000,NULL,NULL,'Paid 50% For Order with : ICB20190801',NULL,'alepay','2019-08-14 02:05:34','2019-09-03 03:07:10',1),(96,1,'ICB00096',8,NULL,1,NULL,0,3000,NULL,NULL,'Paid 50% For Order with : ICB20190801',NULL,'alepay','2019-08-14 02:34:43','2019-08-14 02:35:26',1),(97,2,'ICB00097',3,NULL,1,NULL,NULL,8100,NULL,NULL,NULL,NULL,'admin','2019-08-17 02:33:54','2019-09-03 03:07:21',1),(98,2,'ICB00098',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'cod','2019-08-21 02:59:55','2019-08-21 02:59:55',1),(99,2,'ICB00099',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'cod','2019-08-21 03:00:11','2019-08-21 03:00:11',1),(100,2,'ICB00100',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'cod','2019-08-21 03:01:30','2019-08-21 03:01:30',1),(101,2,'ICB00101',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'cod','2019-08-21 03:03:26','2019-08-21 03:03:26',1),(102,2,'ICB00102',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'cod','2019-08-21 03:06:34','2019-08-21 03:06:34',1),(103,2,'ICB00103',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'cod','2019-08-21 03:06:34','2019-08-21 03:06:34',1),(104,2,'ICB00104',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'banktransf','2019-08-21 03:14:01','2019-08-21 03:14:01',1),(105,2,'ICB00105',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'banktransf','2019-08-21 03:14:01','2019-08-21 03:14:01',1),(106,2,'ICB00106',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'cod','2019-08-21 03:14:38','2019-08-21 03:14:38',1),(107,2,'ICB00107',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'cod','2019-08-21 03:14:38','2019-08-21 03:14:38',1),(108,2,'ICB00108',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'cod','2019-08-21 03:14:38','2019-08-21 03:14:38',1),(109,2,'ICB00109',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'banktransf','2019-08-21 03:14:57','2019-08-21 03:14:57',1),(110,2,'ICB00110',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'banktransf','2019-08-21 03:14:57','2019-08-21 03:14:57',1),(111,2,'ICB00111',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'banktransf','2019-08-21 03:14:57','2019-08-21 03:14:57',1),(112,2,'ICB00112',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'cod','2019-08-21 03:18:11','2019-08-21 03:18:11',1),(113,2,'ICB00113',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'cod','2019-08-21 03:19:07','2019-08-21 03:19:07',1),(114,2,'ICB00114',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'banktransf','2019-08-21 03:20:24','2019-08-21 03:20:24',1),(115,2,'ICB00115',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'cod','2019-08-21 03:20:57','2019-08-21 03:20:57',1),(116,2,'ICB00116',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'cod','2019-08-21 03:20:57','2019-08-21 03:20:57',1),(117,2,'ICB00117',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'cod','2019-08-21 03:20:57','2019-08-21 03:20:57',1),(118,2,'ICB00118',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'cod','2019-08-21 03:21:40','2019-08-21 03:21:40',1),(119,2,'ICB00119',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'cod','2019-08-21 03:21:40','2019-08-21 03:21:40',1),(120,2,'ICB00120',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'cod','2019-08-21 03:21:40','2019-08-21 03:21:40',1),(121,2,'ICB00121',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'cod','2019-08-21 03:21:40','2019-08-21 03:21:40',1),(122,2,'ICB00122',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'cod','2019-08-21 03:22:10','2019-08-21 03:22:10',1),(123,2,'ICB00123',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'cod','2019-08-21 03:22:10','2019-08-21 03:22:10',1),(124,2,'ICB00124',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'cod','2019-08-21 03:22:10','2019-08-21 03:22:10',1),(125,2,'ICB00125',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'cod','2019-08-21 03:22:10','2019-08-21 03:22:10',1),(126,2,'ICB00126',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'cod','2019-08-21 03:22:10','2019-08-21 03:22:10',1),(127,2,'ICB00127',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'cod','2019-08-21 03:24:25','2019-08-21 03:24:25',1),(128,2,'ICB00128',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'cod','2019-08-21 03:24:25','2019-08-21 03:24:25',1),(129,2,'ICB00129',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'cod','2019-08-21 03:24:25','2019-08-21 03:24:25',1),(130,2,'ICB00130',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'cod','2019-08-21 03:24:25','2019-08-21 03:24:25',1),(131,2,'ICB00131',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'cod','2019-08-21 03:24:25','2019-08-21 03:24:25',1),(132,2,'ICB00132',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'cod','2019-08-21 03:24:25','2019-08-21 03:24:25',1),(133,2,'ICB00133',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'cod','2019-08-21 03:24:25','2019-08-21 03:24:25',1),(134,2,'ICB00134',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'cod','2019-08-21 03:25:00','2019-08-21 03:25:00',1),(135,2,'ICB00135',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'cod','2019-08-21 03:25:00','2019-08-21 03:25:00',1),(136,2,'ICB00136',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'cod','2019-08-21 03:25:00','2019-08-21 03:25:00',1),(137,2,'ICB00137',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'cod','2019-08-21 03:25:00','2019-08-21 03:25:00',1),(138,2,'ICB00138',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'cod','2019-08-21 03:25:00','2019-08-21 03:25:00',1),(139,2,'ICB00139',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'cod','2019-08-21 03:25:00','2019-08-21 03:25:00',1),(140,2,'ICB00140',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'cod','2019-08-21 03:25:00','2019-08-21 03:25:00',1),(141,2,'ICB00141',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'cod','2019-08-21 03:25:00','2019-08-21 03:25:00',1),(142,2,'ICB00142',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'cod','2019-08-21 03:25:58','2019-08-21 03:25:58',1),(143,2,'ICB00143',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'cod','2019-08-21 03:26:37','2019-08-21 03:26:37',1),(144,2,'ICB00144',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'cod','2019-08-21 03:28:47','2019-08-21 03:28:47',1),(145,2,'ICB00145',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'cod','2019-08-21 03:29:02','2019-08-21 03:29:02',1),(146,2,'ICB00146',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'cod','2019-08-21 03:29:37','2019-08-21 03:29:37',1),(147,2,'ICB00147',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'cod','2019-08-21 03:29:37','2019-08-21 03:29:37',1),(148,2,'ICB00148',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'cod','2019-08-21 03:30:31','2019-08-21 03:30:31',1),(149,2,'ICB00149',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'cod','2019-08-21 03:30:31','2019-08-21 03:30:31',1),(150,2,'ICB00150',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'cod','2019-08-21 03:30:31','2019-08-21 03:30:31',1),(151,2,'ICB00151',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'banktransf','2019-08-21 03:32:30','2019-08-21 03:32:30',1),(152,2,'ICB00152',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'alepay','2019-08-21 03:35:18','2019-08-21 03:35:18',1),(153,2,'ICB00153',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'alepay','2019-08-21 03:35:18','2019-08-21 03:35:18',1),(154,2,'ICB00154',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'cod','2019-08-21 03:35:47','2019-08-21 03:35:47',1),(155,2,'ICB00155',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'cod','2019-08-21 03:35:47','2019-08-21 03:35:47',1),(156,2,'ICB00156',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'alepay','2019-08-21 03:37:56','2019-08-21 03:37:56',1),(157,1,'ICB00157',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'alepay','2019-08-21 03:40:10','2019-08-21 03:41:59',1),(158,2,'ICB00158',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'alepay','2019-08-21 03:56:02','2019-08-21 03:56:02',1),(159,2,'ICB00159',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'cod','2019-08-21 03:57:10','2019-08-21 03:57:10',1),(160,2,'ICB00160',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'cod','2019-08-21 03:57:10','2019-08-21 03:57:10',1),(161,2,'ICB00161',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'alepay','2019-08-21 03:57:18','2019-08-21 03:57:18',1),(162,2,'ICB00162',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'alepay','2019-08-21 03:57:18','2019-08-21 03:57:18',1),(163,2,'ICB00163',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'alepay','2019-08-21 03:57:42','2019-08-21 03:57:42',1),(164,2,'ICB00164',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'cod','2019-08-21 03:59:15','2019-08-21 03:59:15',1),(165,2,'ICB00165',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'alepay','2019-08-21 03:59:33','2019-08-21 03:59:33',1),(166,2,'ICB00166',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'alepay','2019-08-21 04:01:23','2019-08-21 04:01:23',1),(167,2,'ICB00167',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'alepay','2019-08-21 04:02:11','2019-08-21 04:02:11',1),(168,2,'ICB00168',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'alepay','2019-08-21 04:02:11','2019-08-21 04:02:11',1),(169,2,'ICB00169',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'alepay','2019-08-21 04:05:37','2019-08-21 04:05:37',1),(170,2,'ICB00170',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'cod','2019-08-21 04:06:39','2019-08-21 04:06:39',1),(171,2,'ICB00171',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'alepay','2019-08-21 04:06:51','2019-08-21 04:06:51',1),(172,1,'ICB00172',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'alepay','2019-08-21 04:14:16','2019-08-21 04:14:47',1),(173,2,'ICB00173',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'banktransf','2019-08-21 04:22:37','2019-08-21 04:22:37',1),(174,2,'ICB00174',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'banktransf','2019-08-21 04:22:37','2019-08-21 04:22:37',1),(175,2,'ICB00175',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'banktransf','2019-08-21 04:22:37','2019-08-21 04:22:37',1),(176,2,'ICB00176',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'banktransf','2019-08-21 04:22:37','2019-08-21 04:22:37',1),(177,2,'ICB00177',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'banktransf','2019-08-21 04:24:57','2019-08-21 04:24:57',1),(178,2,'ICB00178',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'banktransf','2019-08-21 04:24:57','2019-08-21 04:24:57',1),(179,2,'ICB00179',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'alepay','2019-08-21 04:25:12','2019-08-21 04:25:12',1),(180,2,'ICB00180',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'alepay','2019-08-21 04:25:12','2019-08-21 04:25:12',1),(181,2,'ICB00181',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'alepay','2019-08-21 04:25:35','2019-08-21 04:25:35',1),(182,2,'ICB00182',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'alepay','2019-08-21 04:25:35','2019-08-21 04:25:35',1),(183,2,'ICB00183',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'alepay','2019-08-21 04:26:15','2019-08-21 04:26:15',1),(184,2,'ICB00184',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'cod','2019-08-21 04:34:12','2019-08-21 04:34:12',1),(185,2,'ICB00185',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'alepay','2019-08-21 04:34:30','2019-08-21 04:34:30',1),(186,2,'ICB00186',8,NULL,1,NULL,0,5400,NULL,NULL,NULL,NULL,'banktransf','2019-08-21 04:35:08','2019-08-21 04:35:08',1),(187,2,'ICB00187',8,NULL,1,'ICBDC20190806',103,5297,NULL,NULL,NULL,NULL,'cod','2019-08-21 04:37:54','2019-08-21 04:37:54',1),(188,2,'ICB00188',8,NULL,1,'ICBDC20190806',103,5297,NULL,NULL,NULL,NULL,'banktransf','2019-08-21 04:39:22','2019-08-21 04:39:22',1),(189,2,'ICB00189',8,NULL,1,'ICBDC20190806',103,5297,NULL,NULL,NULL,NULL,'alepay','2019-08-21 04:39:47','2019-08-21 08:50:38',0),(190,1,'ICB00190',8,NULL,1,NULL,0,5000,NULL,NULL,NULL,NULL,'alepay','2019-08-21 09:13:02','2019-08-21 09:13:32',1),(191,2,'ICB00191',8,NULL,1,NULL,0,1800,NULL,NULL,NULL,NULL,'alepay','2019-08-21 09:15:33','2019-08-21 09:15:33',1),(192,1,'ICB00192',8,NULL,1,NULL,0,1800,NULL,NULL,NULL,NULL,'alepay','2019-08-21 09:15:33','2019-08-21 09:15:59',1),(193,2,'ICB00193',8,NULL,1,NULL,0,10000,NULL,NULL,NULL,NULL,'alepay','2019-08-21 09:16:42','2019-08-21 09:16:42',1),(194,1,'ICB00194',8,NULL,1,NULL,0,10000,NULL,NULL,NULL,NULL,'alepay','2019-08-21 09:16:42','2019-08-21 09:27:44',0),(195,1,'ICB00195',8,NULL,1,NULL,0,1300,NULL,NULL,NULL,NULL,'alepay','2019-08-21 09:31:16','2019-08-21 09:31:59',0),(196,1,'ICB00196',8,NULL,1,NULL,0,1800,NULL,NULL,NULL,NULL,'alepay','2019-08-21 09:48:26','2019-08-21 09:48:56',1),(197,1,'ICB00197',8,NULL,1,NULL,0,1300,NULL,NULL,NULL,NULL,'alepay','2019-08-22 02:32:30','2019-08-22 02:33:19',1),(198,2,'ICB00198',8,NULL,1,'ICBDC20190806',103,4897,NULL,NULL,NULL,NULL,'alepay','2019-08-22 02:54:46','2019-08-22 09:37:28',1),(199,1,'ICB00199',8,NULL,1,NULL,NULL,3600,NULL,NULL,NULL,NULL,'admin','2019-08-26 04:42:12','2019-08-26 06:24:57',0),(200,1,'ICB00200',1228,NULL,1,NULL,0,3900,NULL,NULL,NULL,NULL,'banktransf','2019-08-28 08:53:51','2019-08-28 09:32:12',1),(201,1,'ICB00201',1228,NULL,1,NULL,NULL,1800,NULL,NULL,'test',NULL,'admin','2019-08-29 02:46:52','2019-08-29 02:51:45',0),(202,1,'ICB00202',1228,NULL,1,NULL,NULL,1800,NULL,NULL,'test',NULL,'admin','2019-08-29 02:55:22','2019-08-29 02:55:40',0),(203,1,'ICB00203',1231,NULL,1,NULL,0,3600,NULL,NULL,NULL,NULL,'banktransf','2019-08-29 08:35:32','2019-08-29 08:38:44',1),(204,1,'ICB00204',1228,NULL,1,NULL,NULL,1800,NULL,NULL,'test',NULL,'admin','2019-08-29 09:28:00','2019-08-29 12:03:51',0),(205,2,'ICB00205',1235,NULL,1,NULL,0,5000,NULL,NULL,NULL,NULL,'cod','2019-08-31 01:55:46','2019-08-31 01:55:46',1),(206,2,'ICB00206',8,NULL,1,NULL,0,5000,NULL,NULL,NULL,NULL,'banktransf','2019-09-04 07:33:01','2019-09-04 07:33:01',1),(207,2,'ICB00207',8,NULL,1,NULL,0,3100,NULL,NULL,NULL,NULL,'banktransf','2019-09-06 03:49:24','2019-09-06 03:49:24',1),(208,2,'ICB00208',1238,NULL,3,NULL,0,11800,NULL,NULL,NULL,NULL,'cod','2019-09-06 04:12:34','2019-09-06 04:12:34',1),(209,1,'ICB00209',1228,NULL,1,NULL,0,1300,NULL,NULL,NULL,NULL,'cod','2019-09-06 04:59:52','2019-09-06 05:02:18',1),(210,1,'ICB00210',1248,NULL,1,NULL,0,1000,NULL,NULL,NULL,NULL,'cod','2019-09-09 04:27:49','2019-09-10 04:09:50',1),(211,1,'ICB00211',1247,NULL,2,NULL,0,2800,NULL,NULL,NULL,NULL,'cod','2019-09-11 07:33:13','2019-09-11 07:33:54',1),(212,1,'ICB00212',1249,NULL,1,NULL,0,1800,NULL,NULL,NULL,NULL,'banktransf','2019-09-11 07:47:11','2019-09-11 07:48:27',1),(213,1,'ICB00213',1250,NULL,1,NULL,0,1300,NULL,NULL,NULL,NULL,'cod','2019-09-11 07:53:28','2019-09-11 07:59:17',1),(214,1,'ICB00214',1250,NULL,1,NULL,0,1800,NULL,NULL,NULL,NULL,'cod','2019-09-11 08:39:35','2019-09-11 08:40:01',1),(215,1,'ICB00215',1251,NULL,1,NULL,0,1800,NULL,NULL,NULL,NULL,'cod','2019-09-12 03:13:08','2019-09-18 02:27:46',1),(216,1,'ICB00216',1252,NULL,1,NULL,0,1300,NULL,NULL,NULL,NULL,'cod','2019-09-12 03:34:25','2019-09-12 03:36:07',1),(217,1,'ICB00217',1253,NULL,1,NULL,0,1800,NULL,NULL,NULL,NULL,'cod','2019-09-12 03:39:29','2019-09-12 03:39:56',1),(218,2,'ICB00218',8,NULL,2,NULL,0,2600,NULL,NULL,NULL,NULL,'alepay','2019-09-12 03:41:07','2019-09-12 03:41:07',1),(219,2,'ICB00219',1253,NULL,1,NULL,0,1000,NULL,NULL,NULL,NULL,'cod','2019-09-12 03:42:26','2019-09-12 07:51:40',1),(220,2,'ICB00220',3,NULL,1,NULL,NULL,10000,NULL,NULL,NULL,NULL,'admin','2019-09-12 05:59:46','2019-09-12 05:59:46',0),(221,2,'ICB00221',8,NULL,1,NULL,0,1300,NULL,NULL,NULL,NULL,'cod','2019-09-12 08:52:27','2019-09-12 08:52:27',1),(222,2,'ICB00222',8,NULL,1,NULL,0,5000,NULL,NULL,NULL,NULL,'cod','2019-09-12 09:17:30','2019-09-12 09:17:30',1),(223,1,'ICB00223',1255,NULL,1,NULL,0,1000,NULL,NULL,NULL,NULL,'cod','2019-09-13 08:14:19','2019-09-13 08:20:21',1),(224,1,'ICB00224',1256,NULL,1,NULL,0,1800,NULL,NULL,NULL,NULL,'cod','2019-09-13 08:34:15','2019-09-13 08:36:35',1),(225,2,'ICB00225',8,NULL,1,NULL,0,1300,NULL,NULL,NULL,NULL,'banktransf','2019-09-19 08:30:30','2019-09-19 08:30:30',1),(226,1,'ICB00226',1264,NULL,1,'JHFSDJAD',100,1700,NULL,NULL,NULL,NULL,'cod','2019-09-25 04:47:54','2019-09-25 04:48:58',1),(227,1,'ICB00227',1264,NULL,1,NULL,0,1300,NULL,NULL,NULL,NULL,'cod','2019-09-25 06:11:36','2019-09-25 06:12:07',1),(228,1,'ICB00228',1264,NULL,1,NULL,0,1800,NULL,NULL,NULL,NULL,'cod','2019-09-25 06:18:27','2019-09-25 06:19:10',1),(229,1,'ICB00229',1264,NULL,1,NULL,0,1800,NULL,NULL,NULL,NULL,'banktransf','2019-09-25 06:21:42','2019-09-25 06:23:22',1),(230,1,'ICB00230',1265,NULL,1,NULL,0,1300,NULL,NULL,NULL,NULL,'cod','2019-09-25 06:47:17','2019-09-25 06:48:13',1),(231,1,'ICB00231',1266,NULL,1,NULL,0,1800,NULL,NULL,NULL,NULL,'banktransf','2019-09-25 06:52:15','2019-09-25 06:52:35',1),(232,1,'ICB00232',1267,NULL,1,NULL,0,1300,NULL,NULL,NULL,NULL,'cod','2019-09-25 09:05:43','2019-09-25 09:07:22',1),(233,1,'ICB00233',1269,NULL,1,NULL,0,1000,NULL,NULL,NULL,NULL,'cod','2019-09-25 10:00:49','2019-09-25 10:02:17',1),(234,1,'ICB00234',1270,NULL,1,NULL,0,1000,NULL,NULL,NULL,NULL,'cod','2019-10-03 03:49:41','2019-10-03 03:50:09',1),(235,1,'ICB00235',1270,NULL,1,NULL,0,1000,NULL,NULL,NULL,NULL,'cod','2019-10-03 03:53:05','2019-10-03 03:53:30',1),(236,1,'ICB00236',1270,NULL,1,NULL,0,1000,NULL,NULL,NULL,NULL,'cod','2019-10-03 03:56:48','2019-10-03 03:57:23',1),(237,2,'ICB00237',8,NULL,1,NULL,0,5000,NULL,NULL,NULL,NULL,'cod','2019-10-13 01:56:27','2019-10-13 01:56:27',1),(238,2,'ICB00238',8,NULL,1,NULL,0,1000,NULL,NULL,NULL,NULL,'banktransf','2019-10-13 01:56:54','2019-10-13 01:56:54',1),(239,2,'ICB00239',8,NULL,1,NULL,0,1000,NULL,NULL,NULL,NULL,'alepay','2019-10-13 01:57:21','2019-10-13 01:57:21',1),(240,2,'ICB00240',8,NULL,1,NULL,0,1000,NULL,NULL,NULL,NULL,'alepay','2019-10-20 14:47:21','2019-10-20 14:47:21',1),(241,2,'ICB00241',8,NULL,1,NULL,0,5000,NULL,NULL,NULL,NULL,'alepay','2019-10-20 14:52:07','2019-10-20 14:52:07',1),(242,1,'ICB00242',3,NULL,1,'ICB20190801',400000,400000,NULL,NULL,'Paid 50% For Order with : ICB20190801',NULL,'alepay','2019-10-23 15:16:06','2019-10-23 15:16:06',0),(243,1,'ICB00243',3,NULL,1,'ICB20190801',400000,400000,NULL,NULL,'Paid 50% For Order with : ICB20190801',NULL,'alepay','2019-10-23 15:22:58','2019-10-23 15:22:58',0),(244,2,'ICB00244',1414,NULL,1,NULL,0,1000,NULL,NULL,NULL,NULL,'cod','2019-10-24 07:18:19','2019-10-24 07:18:19',1),(245,2,'ICB00245',760,NULL,1,NULL,0,1000,NULL,NULL,NULL,NULL,'cod','2019-10-24 07:43:43','2019-10-24 07:43:43',1),(246,2,'ICB00246',760,NULL,1,NULL,0,1000,NULL,NULL,NULL,NULL,'cod','2019-10-24 09:06:10','2019-10-24 09:06:10',1),(247,2,'ICB00247',760,NULL,1,NULL,0,1000,NULL,NULL,NULL,NULL,'cod','2019-10-24 09:29:18','2019-10-24 09:29:18',1),(248,2,'ICB00248',760,NULL,2,NULL,0,2000,NULL,NULL,NULL,NULL,'cod','2019-10-24 09:31:19','2019-10-24 09:31:19',1),(249,1,'ICB00249',3,NULL,1,'ICB20190801',400000,400000,NULL,NULL,'Paid 50% For Order with : ICB20190801',NULL,'alepay','2019-10-28 04:58:43','2019-10-28 04:58:43',0),(250,2,'ICB00250',1414,NULL,1,NULL,0,1000,NULL,NULL,NULL,NULL,'cod','2019-10-29 01:03:50','2019-10-29 01:03:50',1),(251,2,'ICB00251',1414,NULL,2,NULL,0,2500,NULL,NULL,NULL,NULL,'cod','2019-10-29 01:05:42','2019-10-29 01:05:42',1),(252,1,'ICB00252',3,NULL,1,'ICB20190801',400000,400000,NULL,NULL,'Paid 50% For Order with : ICB20190801',NULL,'alepay','2019-10-29 04:30:45','2019-10-29 04:30:45',0),(253,1,'ICB00253',1414,NULL,3,NULL,0,5000,NULL,NULL,NULL,NULL,'cod','2019-10-29 05:49:23','2019-10-29 05:54:51',1),(254,2,'ICB00254',1414,NULL,3,NULL,0,5000,NULL,NULL,NULL,NULL,'cod','2019-10-29 08:13:39','2019-10-29 08:13:39',1);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'admin',
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=178 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
INSERT INTO `password_resets` VALUES (81,'ifgcus@gmail.com','KeGWEVNGqnM0ffm91mt4K4lF5DqBuMYikCUSQJwOWBmMgQWLul3GQxGMNfJ7','customer_active',NULL,'2019-09-09 04:18:20','2019-09-09 04:18:20'),(82,'cus2lv5@gmail.com','juM09b2KcCOdsKqrC3f3EY1YcXS7yO7U9GW2iTu4gTWqOaDeTrcttL6w9MOo','customer_active',NULL,'2019-09-11 07:45:02','2019-09-11 07:45:02'),(83,'cus2lv5@gmail.com','hZvjucSOlmzKmJU8UjWChr5lHDjoAGdMSoMF7UKAsCCapIAZA1tv5sZU4ygf','customer_active',NULL,'2019-09-11 07:45:47','2019-09-11 07:45:47'),(84,'cus2lv3@gmail.com','ceAuaX3oGJWbLQqSsbu0Q1ZwSkFo1SVeJe8bEdrGQlb0tnHEttaYeu4OnIJX','customer_active',NULL,'2019-09-11 07:51:16','2019-09-11 07:51:16'),(85,'cus2cus3tolv3@gmail.com','XS9QhCDZCtUVWSsxUcOrg2FCwiYHO5dO7xI1xwmJ3b5jDF6LstpunvCHs1NW','customer_active',NULL,'2019-09-11 08:42:45','2019-09-11 08:42:45'),(86,'cus32tolv32@gmail.com','FZuimnLUY8IbWZDFdT25zX7k962L0oijQqnXTJ5wjG9QrrkUkUiqJY80cpM5','customer_active',NULL,'2019-09-12 03:30:25','2019-09-12 03:30:25'),(87,'cus3lv3@gmail.com','fJk80CZPQznqO46ALWEf9QuFNApv9U93gn9qzV1WH4ZgWhNTbHvHCzMRLt0i','customer_active',NULL,'2019-09-12 03:38:11','2019-09-12 03:38:11'),(88,'sadasd@dsad.asdsa','qkCnmxA2smLbpyPX2VNmSvSAiajKUlPfDOsGqdWBIoBAdBgxwHbRSDQIBfzL','customer_active',NULL,'2019-09-12 09:59:50','2019-09-12 09:59:50'),(89,'testnocode@gmail.com','DH0t0PWJTOpuQMRjh6WoM5VPVy5FX4eym1VXHh2k3O1sNDYlh19IHtDMrBi3','customer_active',NULL,'2019-09-13 07:59:54','2019-09-13 07:59:54'),(90,'noeditref@gmail.com','Bt5Q0Hq2tLkkfoi46uMUsUwhHc94EGCzRjvsKhDldBB8xOORWHVWoAEOfCyZ','customer_active',NULL,'2019-09-13 08:32:21','2019-09-13 08:32:21'),(91,'plv4@2gmail.com','yf6Xtcy7FxJrIli4Z9s5ivDTWKLKCkImpjazrsMyPAk4BEbmAocOE1Zt7xsU','customer_active',NULL,'2019-09-25 03:19:27','2019-09-25 03:19:27'),(92,'nonono@2gmail.com','bfUjfyuwv6mq0Dpy4ZSaaZLjtZ6Ar9reNbYO3B4Zn8VAQUr01moRJa2uasE0','customer_active',NULL,'2019-09-25 03:50:47','2019-09-25 03:50:47'),(93,'nonono@2gmail.com','HhsjjESKvWoTa9srru14mGblRmoGwqUgSVMkWGXX39N2maevgVPwn1GpU7uv','customer_active',NULL,'2019-09-25 03:57:43','2019-09-25 03:57:43'),(94,'nono2link@2gmail.com','M7MUO5bhq8K0XpgySRyiCVzjA2Pl28rLmc4o8aKLvsGzXNl1wVFV78q6RXH7','customer_active',NULL,'2019-09-25 04:00:04','2019-09-25 04:00:04'),(95,'nono2code@2gmail.com','jJlR66eDv0WtzlTZ7nWZ6wZLO7S237tpkDJs3EjW1lp96Y5e1H1J4tOLhiql','customer_active',NULL,'2019-09-25 04:02:04','2019-09-25 04:02:04'),(96,'lv4@2gmail.com','ELjtfmnGwxTetWWs04lakBhNAuGiTVGytMd5aImYt11La7rcIaydLkReks3e','customer_active',NULL,'2019-09-25 04:21:13','2019-09-25 04:21:13'),(97,'lv3@2gmail.com','J0N304B5Cv8UA2L8iIR7KLPZk5wlFWZGqFPLp4CmFfQEHyyUt6JeZ25PY5jy','customer_active',NULL,'2019-09-25 04:28:21','2019-09-25 04:28:21'),(98,'lv2@2gmail.com','3pBFLbESbI7d2VJ8zlg5VJp1IanfKTCCPSm9gWLGXyAGplLDUllVwKmGH7GD','customer_active',NULL,'2019-09-25 04:30:59','2019-09-25 04:30:59'),(99,'lv1@2gmail.com','Jy50yT8qGIfGSARVyziCMxKgCt2wUQXO4hEsXbyOG4Fb1HYhYpDENTYEoEy1','customer_active',NULL,'2019-09-25 04:34:42','2019-09-25 04:34:42'),(100,'ifg2c@2gmail.com','6hETUvQPd1ESQd4U37L5ibW8NvLznu3lkT2xAcgjKkulh90OGoA3XHd96gId','customer_active',NULL,'2019-09-25 06:26:24','2019-09-25 06:26:24'),(101,'ifg2c2c@gmail.com','jIMSzQdDxvHvvySnlWq5IC81WdDL8sprZuFRiWcd8p0UXBO5Ek3MfPXxVd7b','customer_active',NULL,'2019-09-25 06:50:14','2019-09-25 06:50:14'),(102,'lv3c@2gmail.com','Uh3JXa8kbDalEx58xLPYsCNupedn1Mtx668PxliVyvduWz2jW16Dq92Z3lMp','customer_active',NULL,'2019-09-25 09:04:09','2019-09-25 09:04:09'),(103,'lv32@2gmail.com','MUKWQ0gbWUUZI7yHcmatrHSl8rMg0nqS9VGiioKHSllyJoW8xn0nzsDaxuTi','customer_active',NULL,'2019-09-25 09:24:58','2019-09-25 09:24:58'),(104,'lv32c@gmail.com','3F9XvKi294JS7heUsBFj4ESLx61oG5lYwIA11RZ5MxpSQll059cO6PYNOt9o','customer_active',NULL,'2019-09-25 09:51:17','2019-09-25 09:51:17'),(105,'oktest001@2gmail.com','SgsqkgJNcAuUujJmlMYE6fgbV0LBnUTFIvZ6w3JCYd1IXyznccs8XzETAv6J','customer_active',NULL,'2019-10-03 03:32:25','2019-10-03 03:32:25'),(106,'oktest001@2gmail.com','Xq2frHwKwzgVwUb3Vk4jKDExifBWK8G1uyBppDIEHVX7TYIJUSSnAdnEciP3','customer_active',NULL,'2019-10-03 03:42:22','2019-10-03 03:42:22'),(107,'icarebasemarketing@gmail.com','SB69OHBldOydqlaHYiwpgU98NSpaZR1yaH3Ew4V1kCoiREXFSWYGS3enRXNK','customer',NULL,'2019-10-04 02:28:51','2019-10-04 02:28:51'),(108,'icarebasemarketing@gmail.com','Kz38VIVq3JiF6PU0mvHiHnHFSc9ZGXqHzsptitwNzILby7qjSz2pUVlPInnp','customer',NULL,'2019-10-04 04:08:34','2019-10-04 04:08:34'),(109,'icarebasemarketing@gmail.com','5E5hNQTqTKrNA2TFFXbPDvUNreP5AcoAHmT6QPe3nRnHzIAuwIMRvruJ3oFN','customer',NULL,'2019-10-04 04:33:55','2019-10-04 04:33:55'),(110,'icarebasemarketing@gmail.com','LIMS6h8vk92Zh1JndrjPrWIhvLXE74P3psrEQ4DViG1DH90p7pbhdEs8J7S0','customer',NULL,'2019-10-04 04:50:32','2019-10-04 04:50:32'),(111,'sadasdddd@sadsa.dsa','YfFfFwhiAvNzO2n1YpOlS1Yhf82jE6KDY6qaFnAI16mcvLFbKekttCZDAVFb','customer_active',NULL,'2019-10-07 07:22:42','2019-10-07 07:22:42'),(112,'nguyentandat43@gmail.com','voHRmMLMq2UHvxJeVpv7rwHUVMADef7ffGHYM8Mjai28W1IszThRIvLTCWC4','admin',NULL,'2019-10-07 16:46:26','2019-10-07 16:46:26'),(113,'nguyentandat43@gmail.com','npOzZUFsXpfLKX3y4FV645EjAltibHe8Z2UDaRbfQDxz9G4m8JuItMAMOXA4','admin',NULL,'2019-10-07 16:47:16','2019-10-07 16:47:16'),(115,'huynhkha8295+1@gmail.com','u8iMYUV3eLruj64XIvVWuWLXzytTdO8lruCZxvLtazpofeD2SB90D3cwb3NT','customer_active',NULL,'2019-10-09 02:30:20','2019-10-09 02:30:20'),(116,'icarebasemarketing@gmail.com','5L3YCdd73eWkPlnbbkxkEKZKozoqqh77cqflSeDHStfIx2wUFTqBooIXvjvv','customer',NULL,'2019-10-09 07:33:43','2019-10-09 07:33:43'),(117,'icarebasemarketing@gmail.com','95CPw8IlHh0Hb89xCeLbFE23f5AzluTjIpOVSEaYTAbiyUPp3TBNuuSnyp9Z','customer',NULL,'2019-10-09 07:39:39','2019-10-09 07:39:39'),(118,'icarebasemarketing@gmail.com','2atgcQY1pxuyWtPCVrDqFC4RguDGjd2B9QmNoQDrbSfFjE4pYRE0AgFgEkc8','customer',NULL,'2019-10-09 07:42:02','2019-10-09 07:42:02'),(119,'icarebasemarketing@gmail.com','EGXkATdMbP3oHlDy7xCEdON1JVpEkoNONu2Su3uZuc1LEfuxvdWi3PahvofN','customer',NULL,'2019-10-09 07:42:07','2019-10-09 07:42:07'),(120,'icarebasemarketing@gmail.com','aGoOx6uG7WBHQOMpWlrwIsZqwGVXqZYKJ7B0RjiS7elEAoXm4bxBFo3bHK2q','customer',NULL,'2019-10-09 07:42:11','2019-10-09 07:42:11'),(121,'icarebasemarketing@gmail.com','Lpev4gSYCUCo5LPoTG0bxJV2D65FfQAkikjPrHeOCFR60RYhmlG2oZO3wwlw','customer',NULL,'2019-10-09 07:42:23','2019-10-09 07:42:23'),(122,'icarebasemarketing@gmail.com','1u36QAAaq3HaBjcv6M4uJtleZR3OiRczMA83Lm6mHz2NqkG0cuHCzG4yE34v','customer',NULL,'2019-10-09 07:42:38','2019-10-09 07:42:38'),(123,'icarebasemarketing@gmail.com','C10EkTt0qdeMdTLVqmpNa4X1aTQJQnPauubDA1RvCC7osZW5sSm0qrN9VpSz','customer',NULL,'2019-10-09 07:42:59','2019-10-09 07:42:59'),(124,'icarebasemarketing@gmail.com','QrGIsRupQxX7JL7IcBrlZ3kNSVxQlwEaA5ZtiHcz2jPCb7vkqEkhHm2RGNWL','customer',NULL,'2019-10-09 07:43:30','2019-10-09 07:43:30'),(125,'nguyentandat43@gmail.com','ppjgJfJp7jZwfVACAo4MR4kda1DsOis8PoPJUUWOrqQ1ZEwxIZLTdCqHVIkk','admin',NULL,'2019-10-09 07:44:41','2019-10-09 07:44:41'),(126,'huynhkha8295@gmail.com','j3zpPjHDfYxA5UQf30LmrYblGVMcsVhqOssgjQZTkK89gj4oNE5TXURtdMo1','admin',NULL,'2019-10-10 09:18:27','2019-10-10 09:18:27'),(127,'huynhkha8295@gmail.com','gqpLVCH9jtvuzGEK0c88Or4uAHJ1DDXJF2feOzLWjzPmI69Wgs4aVBl5qsmq','admin',NULL,'2019-10-10 09:18:27','2019-10-10 09:18:27'),(128,'nguyentandat43@gmail.com','T9S9ihvaH0Gx26KQtUgmVwu8tH94mQA4MU7DUHkSBu2rhWfSEOsDqvrIiKhx','admin',NULL,'2019-10-10 09:32:27','2019-10-10 09:32:27'),(129,'nguyentandat43@gmail.com','SwXMaVDhGgwJu1rmFoDYitWeEdeW1v4Ew4c5TG5oNamWQjLKaIUWkZpuWVo0','customer',NULL,'2019-10-10 09:33:40','2019-10-10 09:33:40'),(130,'nguyentandat43@gmail.com','aWu4LNjU1WVIPOmcJJyoAMbd8RZdfJ9PvqAI7MiFx0Y9wVBJoNgtirhNlDzk','customer',NULL,'2019-10-10 09:35:18','2019-10-10 09:35:18'),(131,'nguyentandat43@gmail.com','0BR4iU3mKmZkesyYdW8jgruLaKh5zE7c7bBnFCX9zyuHvnQP0D8eo9RimtDW','customer',NULL,'2019-10-10 09:36:07','2019-10-10 09:36:07'),(132,'nguyentandat43@gmail.com','9L2L2QJgczAICqBbP9oJnikua6hZbUeNSrtmu91juEe367b3qSMZ3olzqkvo','customer',NULL,'2019-10-10 09:39:10','2019-10-10 09:39:10'),(133,'nguyentandat43@gmail.com','vARy9vVrhNfgOVCrulUGrMUPPti3yT4vBbBXEKS8jyZYtG4bgS1nbcbsir5J','customer',NULL,'2019-10-10 09:39:45','2019-10-10 09:39:45'),(134,'nguyentandat43@gmail.com','E2shEetpTFZ4nvrGvbD5ib3BD4zEKuEv79PmuQJnotEZN5RNq6IkZCzDE4qs','customer',NULL,'2019-10-10 09:39:53','2019-10-10 09:39:53'),(135,'nguyentandat43@gmail.com','Y52bCPYna3q758KZHhThdnrPBJwEURmkS6QBpdLfgcqC1o7ISDVMieGiNn2O','customer',NULL,'2019-10-10 09:40:28','2019-10-10 09:40:28'),(136,'nguyentandat43@gmail.com','7v13Emr8GqAXpBZ6d84533pFNdJsoRvENAXBjURSu62fLZjRBY51OHIyGfH5','customer',NULL,'2019-10-10 09:41:15','2019-10-10 09:41:15'),(137,'nguyentandat43@gmail.com','nMkfAw8hXh473VbUPGpJMCV8qqQlnGElEWNm8tGN8erDR3l8WIZ4qdtllVJT','customer',NULL,'2019-10-10 09:41:31','2019-10-10 09:41:31'),(138,'nguyentandat43@gmail.com','QdhspMWb9ed1xW3Ewyqs9wRoxd24vmtdHH7pNknMEtjL4LbnDapFUq2ZNZfc','customer',NULL,'2019-10-10 09:52:50','2019-10-10 09:52:50'),(139,'huynhkha8295@gmail.com','qBdWBF7W4Ng88nAZ4bIgqSg2QtOXO6xctmdAta4z2e0lA6f4uiv3cq3fBT2u','customer',NULL,'2019-10-10 09:58:38','2019-10-10 09:58:38'),(141,'homeshopvn@gmail.com','ZcnOxoVARB6lcu4wzz11JHKtg6vSxq2esBehQbOLFej03xOVEOOA57FXy51m','customer_active',NULL,'2019-10-18 07:04:33','2019-10-18 07:04:33'),(142,'homeshopvn@gmail.com','OkGgNxYGnwRCoZQ7dj6BcLlfVXvbRbX7FtHo8XbtduvzIOXEqfNen6RGheXD','customer',NULL,'2019-10-18 07:28:09','2019-10-18 07:28:09'),(143,'homeshopvn@gmail.com','CPIaJ0ZeX0hjygSTfAeiyoIBhlJD5CGjCgowcNOZocjt4o8F3Xap3qWZn1Uw','customer',NULL,'2019-10-18 07:39:11','2019-10-18 07:39:11'),(144,'icarebase@gmail.com','IpOxheHe4RHQqFWQhB6W5etebn7Vcnp3UdNVMjTohHrsfwnm2K9inorD6VlX','admin',NULL,'2019-10-24 05:58:56','2019-10-24 05:58:56'),(146,'icarebasemarketing@gmail.com','fQuZnuA3vWbEtGDqdKXB7vdR4EiwyXWuIGX2P9uSc9ISLYTrPoGBPmzziMvp','customer',NULL,'2019-10-24 06:20:37','2019-10-24 06:20:37'),(147,'icarebasemarketing@gmail.com','gIq82pCkouDB3qEgR2mjjIFZIPGnuYni12cCtKeffRfJT22dWwMnBV6L4h18','customer',NULL,'2019-10-24 06:29:58','2019-10-24 06:29:58'),(148,'icarebase@gmail.com','HW1nLUZTyz3mPufiMROiJo7xgijYYvTco8MESWPaMm9l3lCb6rLK8eWNaCji','customer',NULL,'2019-10-24 07:29:00','2019-10-24 07:29:00'),(149,'icarebase@gmail.com','Pyy75SG2tSYjjNOW5umzfhrFwtsJWz2ADkSo0xwR4Qt7kSjXaFZ44bV4Ezna','customer',NULL,'2019-10-24 07:33:49','2019-10-24 07:33:49'),(150,'minhtrannd97@gmail.com','nCcs8ektLIahc60mj4MgweTpq75945wHts9vW0o9OWNq4jLXjB5Btn7DbBXy','customer_active',NULL,'2019-12-02 12:40:31','2019-12-02 12:40:31'),(151,'minhtrannd97@gmail.com','uZVSwawkdD2eroOnLclrWVcDn4eMox1gB1fHZ21TYNy38euRGgu9tgcyCYb1','customer_active',NULL,'2019-12-02 12:43:15','2019-12-02 12:43:15'),(152,'minhtcps08807@gmail.com','tJANEXmXpflTtn4ZpH2dtPlsgMbs2xlNGHSRQNG8HInfNlV2knaeU8oiwm5z','customer_active',NULL,'2019-12-02 12:44:22','2019-12-02 12:44:22'),(153,'minhtc97@gmail.com','crxbw2sD0TzzsaPTiy4tJQ9yRjc6wWDubimYsMac1ibr08hl2KCVUfrw2c1L','customer_active',NULL,'2019-12-02 13:21:45','2019-12-02 13:21:45'),(154,'minhtc97@gmail.com','MS5aAhtEVQzxzcNR7nw6EhE5yWe8eOBHJwNKxkG7zOVlKR74Rygc8KXhyeac','customer_active',NULL,'2019-12-02 13:24:39','2019-12-02 13:24:39'),(155,'minhtc97@gmail.com','vCski5lAdEdZ4OZQQVRO2cvrX58ZPKnNECsPGYDe8D70Dbw87JmY377mekGU','customer_active',NULL,'2019-12-02 13:26:51','2019-12-02 13:26:51'),(156,'minhtrannd97@gmail.com','N2n1zkpCTV6ZccnNgMA9XSF1zR7uLhX2ryvZkdvroXvEW1RWFzItfbhfEAF0','customer_active',NULL,'2019-12-02 13:28:41','2019-12-02 13:28:41'),(157,'minhtc97@gmail.com','ZSYFjri48r1nxMyh1GM9wNEeCuev7BaBsTxxRxjOzvD5HoYszGwkFwBXqZux','customer_active',NULL,'2019-12-02 13:32:59','2019-12-02 13:32:59'),(160,'minhtec97@gmail.com','4S8kit5oVrMAaLGHIYViGxaiV7HIj39uzCzJVEXeCA9plT8uMCrl0BvSN8oL','customer_active',NULL,'2019-12-02 17:21:23','2019-12-02 17:21:23'),(161,'minhtec932327@gmail.com','T1Qidkbr3EajNAiMtSkvOMZx2glc3KdrFcEYqu20HQLUEFNbfPDV0h2dpaB1','customer_active',NULL,'2019-12-02 17:22:58','2019-12-02 17:22:58'),(162,'minhtc97@gmail.com','qoe83J7b6TxcIdVCsqao4vkPHEFf1Oi9hF1ZwugMqeY5FIHAbGeGnkciFTRz','customer_active',NULL,'2019-12-03 14:25:39','2019-12-03 14:25:39'),(163,'minhtc97@gmail.com','Z4zn5j7T89da7nKb2P4M81OClrJsYt3BHsXDLoUTwh0nDcXTzIikZHPqa6ox','customer_active',NULL,'2019-12-03 14:40:25','2019-12-03 14:40:25'),(164,'minhtc97@gmail.com','W6ta7yoB2RKZAGeCnhVALaaf2Vium2qGS0j3EBJ1uTveRQSknOzhvJ66UgmB','customer_active',NULL,'2019-12-03 14:42:29','2019-12-03 14:42:29'),(165,'minhtc97@gmail.com','JQSKs1Ttbyp6brortJW1Z3E7tpd1Z5E8V8PDHNf3I1xnQ9m9PNaEzD1slKkt','customer_active',NULL,'2019-12-03 14:45:07','2019-12-03 14:45:07'),(166,'minhtc97@gmail.com','wfwTwEJhKfXk2HBANlYS7KDwosLB7ZpvI71SMXrnlDoXE4y86Fo8lXEIjuzH','customer_active',NULL,'2019-12-03 15:04:11','2019-12-03 15:04:11'),(167,'minhtc97@gmail.com','PlnVLvtkmmK1BGLLabFeHcHEGOUYxGYAc3Jd2uvfpxHLwjeTwK5QfdpI22V9','customer_active',NULL,'2019-12-03 15:13:05','2019-12-03 15:13:05'),(168,'minhtc97@gmail.com','FxtPDMGSov6Vej4dkveayHafRDMe7RzqtVk4OCSRaTOYBj0zYxBY9rjbK8f2','customer_active',NULL,'2019-12-03 15:32:58','2019-12-03 15:32:58'),(169,'minhtc97@gmail.com','bGsYJ0p5OuH6vwh1H6E088mWQ5cpXkwhoGkoA6rEaWoSgq2E2paP3aFd8yCv','customer_active',NULL,'2019-12-04 04:08:21','2019-12-04 04:08:21'),(170,'minhtc97@gmail.com','fjsr9L1mWzyP1T0RVg1XxyGllitso1W0FJi36VobKi3lHbhMkycrR2PqNw2O','customer_active',NULL,'2019-12-04 04:13:38','2019-12-04 04:13:38'),(171,'minhtc97@gmail.com','G6LqHw5QPdsZL2o6vwuqawRHBstm6Qxa1pp4o2eoZb2eRNXvRIoGOoBuLbAB','customer_active',NULL,'2019-12-04 04:39:57','2019-12-04 04:39:57'),(172,'minhtc97@gmail.com','pD9fXjhHAfhkWSo2p5OenuyyIYQVesh1jxXgpCwbOdoFgZXZGUUSr6A4kbjv','customer_active',NULL,'2019-12-06 02:42:37','2019-12-06 02:42:37'),(173,'minhtc97@gmail.com','6KFYlYaj5aF0FhTaAqRBff99jmYihogv0c5ycoqn5F2v3hGnlf4V2Pzsj9k1','customer_active',NULL,'2019-12-06 02:43:38','2019-12-06 02:43:38'),(174,'minhtc97@gmail.com','Og4hLMmdra6NV4yHufIg0lUoFntr14AWPRz2ciUF5P1JynBoGOYifrIBA3qr','customer_active',NULL,'2019-12-06 02:49:58','2019-12-06 02:49:58'),(175,'minhtc97@gmail.com','cveTwG4GfIE3QKJ8aYvxRMLHJ32nplLCAvfaSDPyGxi0aZhLaU7OXIoN9KR5','customer_active',NULL,'2019-12-06 02:51:10','2019-12-06 02:51:10'),(176,'minhtc97@gmail.com','GB2SssVcp9l0dFC78WeAlFhQN2zciB0cgsb7I6PFkl1htcYavoiz1bsyaHv3','customer_active',NULL,'2019-12-06 03:12:52','2019-12-06 03:12:52');
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_groups`
--

DROP TABLE IF EXISTS `permission_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permission_groups` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_groups`
--

LOCK TABLES `permission_groups` WRITE;
/*!40000 ALTER TABLE `permission_groups` DISABLE KEYS */;
INSERT INTO `permission_groups` VALUES (1,'Dashboard','Dashboard','2019-07-06 17:00:00','2019-07-06 17:00:00'),(2,'Sales','Orders & packages','2019-07-06 17:00:00','2019-07-06 17:00:00'),(3,'Agency','Agency','2019-07-06 17:00:00','2019-07-06 17:00:00'),(4,'Customers','Customers','2019-07-06 17:00:00','2019-07-06 17:00:00'),(5,'Users','Users & Roles','2019-07-06 17:00:00','2019-07-06 17:00:00'),(6,'Settings','Payments & Systems','2019-07-06 17:00:00','2019-07-06 17:00:00'),(7,'Reports','Reports','2019-07-06 17:00:00','2019-07-06 17:00:00'),(8,'Combo','Combo','2019-07-06 17:00:00','2019-07-06 17:00:00'),(9,'Exchange Rate Currency','Exchange Rate Currency','2019-07-06 17:00:00','2019-07-06 17:00:00'),(10,'Promotion','Promotion','2019-07-06 17:00:00','2019-07-06 17:00:00');
/*!40000 ALTER TABLE `permission_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permission_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permission_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=782 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_role`
--

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` VALUES (479,30,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(480,29,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(481,15,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(482,35,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(483,34,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(484,29,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(485,10,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(486,31,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(487,34,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(488,16,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(489,11,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(490,35,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(491,34,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(492,29,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(493,13,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(494,35,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(495,1,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(496,25,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(497,12,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(498,11,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(499,35,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(500,34,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(501,14,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(502,11,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(503,2,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(504,26,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(505,30,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(506,12,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(507,11,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(508,35,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(509,15,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(510,12,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(511,3,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(512,30,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(513,31,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(514,12,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(515,11,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(516,16,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(517,30,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(518,4,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(519,31,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(520,13,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(521,30,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(522,5,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(523,12,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(524,25,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(525,31,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(526,13,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(527,14,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(528,31,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(529,6,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(530,30,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(531,26,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(532,13,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(533,14,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(534,13,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(535,15,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(536,7,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(537,31,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(538,14,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(539,15,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(540,14,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(541,16,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(542,8,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(543,13,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(544,15,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(545,16,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(546,15,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(547,25,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(548,9,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(549,16,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(550,14,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(551,25,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(552,16,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(553,26,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(554,10,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(555,25,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(556,15,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(557,26,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(558,25,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(559,29,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(560,26,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(561,16,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(562,26,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(563,34,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(564,25,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(565,35,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(566,26,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(567,11,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(568,12,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(569,30,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(570,31,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(571,13,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(572,14,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(573,15,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(574,16,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(575,25,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(576,26,4,'2019-08-01 12:04:17','2019-08-01 12:04:17'),(674,1,1,'2019-08-08 15:37:10','2019-08-08 15:37:10'),(675,2,1,'2019-08-08 15:37:10','2019-08-08 15:37:10'),(676,3,1,'2019-08-08 15:37:10','2019-08-08 15:37:10'),(677,4,1,'2019-08-08 15:37:10','2019-08-08 15:37:10'),(678,5,1,'2019-08-08 15:37:10','2019-08-08 15:37:10'),(679,6,1,'2019-08-08 15:37:10','2019-08-08 15:37:10'),(680,7,1,'2019-08-08 15:37:10','2019-08-08 15:37:10'),(681,8,1,'2019-08-08 15:37:10','2019-08-08 15:37:10'),(682,9,1,'2019-08-08 15:37:10','2019-08-08 15:37:10'),(683,10,1,'2019-08-08 15:37:10','2019-08-08 15:37:10'),(684,29,1,'2019-08-08 15:37:10','2019-08-08 15:37:10'),(685,34,1,'2019-08-08 15:37:10','2019-08-08 15:37:10'),(686,35,1,'2019-08-08 15:37:10','2019-08-08 15:37:10'),(687,48,1,'2019-08-08 15:37:10','2019-08-08 15:37:10'),(688,49,1,'2019-08-08 15:37:10','2019-08-08 15:37:10'),(689,50,1,'2019-08-08 15:37:10','2019-08-08 15:37:10'),(690,11,1,'2019-08-08 15:37:10','2019-08-08 15:37:10'),(691,12,1,'2019-08-08 15:37:10','2019-08-08 15:37:10'),(692,30,1,'2019-08-08 15:37:10','2019-08-08 15:37:10'),(693,31,1,'2019-08-08 15:37:10','2019-08-08 15:37:10'),(694,13,1,'2019-08-08 15:37:10','2019-08-08 15:37:10'),(695,14,1,'2019-08-08 15:37:10','2019-08-08 15:37:10'),(696,15,1,'2019-08-08 15:37:10','2019-08-08 15:37:10'),(697,16,1,'2019-08-08 15:37:10','2019-08-08 15:37:10'),(698,17,1,'2019-08-08 15:37:10','2019-08-08 15:37:10'),(699,18,1,'2019-08-08 15:37:10','2019-08-08 15:37:10'),(700,19,1,'2019-08-08 15:37:10','2019-08-08 15:37:10'),(701,20,1,'2019-08-08 15:37:10','2019-08-08 15:37:10'),(702,21,1,'2019-08-08 15:37:10','2019-08-08 15:37:10'),(703,22,1,'2019-08-08 15:37:10','2019-08-08 15:37:10'),(704,23,1,'2019-08-08 15:37:10','2019-08-08 15:37:10'),(705,24,1,'2019-08-08 15:37:10','2019-08-08 15:37:10'),(706,25,1,'2019-08-08 15:37:10','2019-08-08 15:37:10'),(707,26,1,'2019-08-08 15:37:10','2019-08-08 15:37:10'),(708,27,1,'2019-08-08 15:37:10','2019-08-08 15:37:10'),(709,28,1,'2019-08-08 15:37:10','2019-08-08 15:37:10'),(710,32,1,'2019-08-08 15:37:10','2019-08-08 15:37:10'),(711,33,1,'2019-08-08 15:37:10','2019-08-08 15:37:10'),(712,36,1,'2019-08-08 15:37:10','2019-08-08 15:37:10'),(713,37,1,'2019-08-08 15:37:10','2019-08-08 15:37:10'),(714,38,1,'2019-08-08 15:37:10','2019-08-08 15:37:10'),(715,39,1,'2019-08-08 15:37:10','2019-08-08 15:37:10'),(716,40,1,'2019-08-08 15:37:10','2019-08-08 15:37:10'),(717,41,1,'2019-08-08 15:37:10','2019-08-08 15:37:10'),(718,42,1,'2019-08-08 15:37:10','2019-08-08 15:37:10'),(719,43,1,'2019-08-08 15:37:10','2019-08-08 15:37:10'),(720,44,1,'2019-08-08 15:37:10','2019-08-08 15:37:10'),(721,45,1,'2019-08-08 15:37:10','2019-08-08 15:37:10'),(722,46,1,'2019-08-08 15:37:10','2019-08-08 15:37:10'),(723,47,1,'2019-08-08 15:37:10','2019-08-08 15:37:10'),(767,1,5,'2019-09-13 09:36:11','2019-09-13 09:36:11'),(768,2,5,'2019-09-13 09:36:11','2019-09-13 09:36:11'),(769,3,5,'2019-09-13 09:36:11','2019-09-13 09:36:11'),(770,34,5,'2019-09-13 09:36:11','2019-09-13 09:36:11'),(771,35,5,'2019-09-13 09:36:11','2019-09-13 09:36:11'),(772,48,5,'2019-09-13 09:36:11','2019-09-13 09:36:11'),(773,49,5,'2019-09-13 09:36:11','2019-09-13 09:36:11'),(774,13,5,'2019-09-13 09:36:11','2019-09-13 09:36:11'),(775,25,5,'2019-09-13 09:36:11','2019-09-13 09:36:11'),(776,27,5,'2019-09-13 09:36:11','2019-09-13 09:36:11'),(777,28,5,'2019-09-13 09:36:11','2019-09-13 09:36:11'),(778,32,5,'2019-09-13 09:36:11','2019-09-13 09:36:11'),(779,33,5,'2019-09-13 09:36:11','2019-09-13 09:36:11'),(780,44,5,'2019-09-13 09:36:11','2019-09-13 09:36:11'),(781,46,5,'2019-09-13 09:36:11','2019-09-13 09:36:11');
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `permission_group_id` int(11) NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'dashboardView','Dashboard View',1,NULL,'2019-07-06 17:00:00','2019-07-06 17:00:00'),(2,'saleOrderView','Sales Orders View',2,NULL,'2019-07-06 17:00:00','2019-07-06 17:00:00'),(3,'saleOrderUpdate','Sales Orders Update',2,NULL,'2019-07-06 17:00:00','2019-07-06 17:00:00'),(4,'salePackageView','Sales Package View',2,NULL,'2019-07-06 17:00:00','2019-07-06 17:00:00'),(5,'salePackageCreate','Sales Package Create',2,NULL,'2019-07-06 17:00:00','2019-07-06 17:00:00'),(6,'salePackageUpdate','Sales Package Update',2,NULL,'2019-07-06 17:00:00','2019-07-06 17:00:00'),(7,'salePackageDelete','Sales Package Delete',2,NULL,'2019-07-06 17:00:00','2019-07-06 17:00:00'),(8,'salePackageCategoryView','Sales Package Category View',2,NULL,'2019-07-06 17:00:00','2019-07-06 17:00:00'),(9,'salePackageCategoryCreate','Sales Package Category Create',2,NULL,'2019-07-06 17:00:00','2019-07-06 17:00:00'),(10,'salePackageCategoryUpdate','Sales Package Category Update',2,NULL,'2019-07-06 17:00:00','2019-07-06 17:00:00'),(11,'agencyView','Agency View',3,NULL,'2019-07-06 17:00:00','2019-07-06 17:00:00'),(12,'agencyUpdate','Agency Updade',3,NULL,'2019-07-06 17:00:00','2019-07-06 17:00:00'),(13,'customerView','Customer View',4,NULL,'2019-07-06 17:00:00','2019-07-06 17:00:00'),(14,'customerCreate','Customer Create',4,NULL,'2019-07-06 17:00:00','2019-07-06 17:00:00'),(15,'customerUpdate','Customer Update',4,NULL,'2019-07-06 17:00:00','2019-07-06 17:00:00'),(16,'customerDelete','Customer Delete',4,NULL,'2019-07-06 17:00:00','2019-07-06 17:00:00'),(17,'userView','User View',5,NULL,'2019-07-06 17:00:00','2019-07-06 17:00:00'),(18,'userCreate','User Create',5,NULL,'2019-07-06 17:00:00','2019-07-06 17:00:00'),(19,'userUpdate','User Update',5,NULL,'2019-07-06 17:00:00','2019-07-06 17:00:00'),(20,'userDelete','User Delete',5,NULL,'2019-07-06 17:00:00','2019-07-06 17:00:00'),(21,'userRoleView','User Role View',5,NULL,'2019-07-06 17:00:00','2019-07-06 17:00:00'),(22,'userRoleCreate','User Role Create',5,NULL,'2019-07-06 17:00:00','2019-07-06 17:00:00'),(23,'userRoleUpdate','User Role Update',5,NULL,'2019-07-06 17:00:00','2019-07-06 17:00:00'),(24,'userRoleDelete','User Role Delete',5,NULL,'2019-07-06 17:00:00','2019-07-06 17:00:00'),(25,'settingPaymentView','Setting Payment View',6,NULL,'2019-07-06 17:00:00','2019-07-06 17:00:00'),(26,'settingSystemView','Setting System View',6,NULL,'2019-07-06 17:00:00','2019-07-06 17:00:00'),(27,'reportView','Report View',7,NULL,'2019-07-06 17:00:00','2019-07-06 17:00:00'),(28,'reportViewDetail','Report View Detail',7,NULL,'2019-07-06 17:00:00','2019-07-06 17:00:00'),(29,'salePackageCategoryDelete','Sales Package Category Delete',2,NULL,'2019-07-06 17:00:00','2019-07-06 17:00:00'),(30,'agencyCreate','Agency Create',3,NULL,'2019-07-16 17:00:00','2019-07-16 17:00:00'),(31,'agencyDelete','Agency Delete',3,NULL,'2019-07-16 17:00:00','2019-07-16 17:00:00'),(32,'paymentsReport','Payments Report',7,NULL,'2019-07-06 17:00:00','2019-07-06 17:00:00'),(33,'commissionsReport','Commissions Report',7,NULL,'2019-07-06 17:00:00','2019-07-06 17:00:00'),(34,'saleOrderDetail','Sales Order Detail View',2,NULL,'2019-07-06 17:00:00','2019-07-06 17:00:00'),(35,'reportTransactionHistory','Report Transaction History',2,NULL,'2019-07-06 17:00:00','2019-07-06 17:00:00'),(36,'comboView','Combo View',8,NULL,'2019-07-16 17:00:00','2019-07-16 17:00:00'),(37,'comboCreate','Combo Create',8,NULL,'2019-07-16 17:00:00','2019-07-16 17:00:00'),(38,'comboUpdate','Combo Update',8,NULL,'2019-07-16 17:00:00','2019-07-16 17:00:00'),(39,'comboDelete','Combo Delete',8,NULL,'2019-07-16 17:00:00','2019-07-16 17:00:00'),(40,'exchangeRateView','Exchange Rate View',9,NULL,'2019-07-16 17:00:00','2019-07-16 17:00:00'),(41,'exchangeRateCreate','Exchange Rate Create',9,NULL,'2019-07-16 17:00:00','2019-07-16 17:00:00'),(42,'exchangeRateUpdate','Exchange Rate Update',9,NULL,'2019-07-16 17:00:00','2019-07-16 17:00:00'),(43,'exchangeRateDelete','Exchange Rate Delete',9,NULL,'2019-07-16 17:00:00','2019-07-16 17:00:00'),(44,'promotionView','Promotion View',10,'Promotion View','2019-07-16 17:00:00','2019-07-16 17:00:00'),(45,'promotionCreate','Promotion Create',10,'Promotion Create','2019-07-16 17:00:00','2019-07-16 17:00:00'),(46,'promotionUpdate','Promotion Update',10,'Promotion Update','2019-07-16 17:00:00','2019-07-16 17:00:00'),(47,'promotionDelete','Promotion Delete',10,'Promotion Delete','2019-07-16 17:00:00','2019-07-16 17:00:00'),(48,'saleOrderCreate','Sales Orders Create',2,NULL,'2019-07-06 17:00:00','2019-07-06 17:00:00'),(49,'saleOrderDetail','Sales Orders Detail',2,NULL,'2019-07-06 17:00:00','2019-07-06 17:00:00'),(50,'saleOrderDelete','Sales Orders Delete',2,NULL,'2019-07-06 17:00:00','2019-07-06 17:00:00');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_customer` int(11) DEFAULT NULL,
  `id_category` int(11) DEFAULT NULL,
  `id_features` int(11) DEFAULT NULL,
  `id_condition` int(11) DEFAULT NULL,
  `images` longtext,
  `title` varchar(100) DEFAULT NULL,
  `description` varchar(150) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `to_exchange` int(11) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `facebook` tinyint(4) DEFAULT NULL,
  `type_post` tinyint(4) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_categories`
--

DROP TABLE IF EXISTS `product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_categories`
--

LOCK TABLES `product_categories` WRITE;
/*!40000 ALTER TABLE `product_categories` DISABLE KEYS */;
INSERT INTO `product_categories` VALUES (2,'GenoPAC','2JllCpyCCy','GenoPAC','2019-07-05 03:29:58','2019-10-16 09:26:27');
/*!40000 ALTER TABLE `product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_commisions`
--

DROP TABLE IF EXISTS `product_commisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_commisions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `level_type` int(11) NOT NULL,
  `value` int(11) DEFAULT '0',
  `type` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=538 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_commisions`
--

LOCK TABLES `product_commisions` WRITE;
/*!40000 ALTER TABLE `product_commisions` DISABLE KEYS */;
INSERT INTO `product_commisions` VALUES (243,2,3,100,'package',NULL,'2019-08-07 02:36:09','2019-08-07 02:36:09'),(244,2,5,30,'package',NULL,'2019-08-07 02:36:09','2019-08-07 02:36:09'),(245,2,1,250,'package',NULL,'2019-08-07 02:36:09','2019-08-07 02:36:09'),(246,2,4,50,'package',NULL,'2019-08-07 02:36:09','2019-08-07 02:36:09'),(247,2,2,150,'package',NULL,'2019-08-07 02:36:09','2019-08-07 02:36:09'),(248,2,5,30,'package',NULL,'2019-08-07 02:36:09','2019-08-07 02:36:09'),(249,2,3,100,'package',NULL,'2019-08-07 02:36:09','2019-08-07 02:36:09'),(250,2,4,50,'package',NULL,'2019-08-07 02:36:09','2019-08-07 02:36:09'),(251,2,5,30,'package',NULL,'2019-08-07 02:36:09','2019-08-07 02:36:09'),(267,10,1,213,'package',NULL,'2019-08-07 02:38:00','2019-08-07 02:38:00'),(268,10,2,33,'package',NULL,'2019-08-07 02:38:00','2019-08-07 02:38:00'),(269,10,3,22,'package',NULL,'2019-08-07 02:38:00','2019-08-07 02:38:00'),(270,10,4,12,'package',NULL,'2019-08-07 02:38:00','2019-08-07 02:38:00'),(271,10,5,3232,'package',NULL,'2019-08-07 02:38:00','2019-08-07 02:38:00'),(428,2,1,213,'combo',NULL,'2019-09-03 09:59:07','2019-09-03 09:59:07'),(429,2,2,333,'combo',NULL,'2019-09-03 09:59:07','2019-09-03 09:59:07'),(430,2,3,3322,'combo',NULL,'2019-09-03 09:59:07','2019-09-03 09:59:07'),(431,2,4,112,'combo',NULL,'2019-09-03 09:59:07','2019-09-03 09:59:07'),(432,2,5,3123,'combo',NULL,'2019-09-03 09:59:07','2019-09-03 09:59:07'),(433,2,6,423432,'combo',NULL,'2019-09-03 09:59:07','2019-09-03 09:59:07'),(517,1,1,0,'combo',NULL,'2019-09-25 03:47:42','2019-09-25 03:47:42'),(518,1,2,50,'combo',NULL,'2019-09-25 03:47:42','2019-09-25 03:47:42'),(519,1,3,100,'combo',NULL,'2019-09-25 03:47:42','2019-09-25 03:47:42'),(520,1,4,130,'combo',NULL,'2019-09-25 03:47:42','2019-09-25 03:47:42'),(521,1,5,150,'combo',NULL,'2019-09-25 03:47:42','2019-09-25 03:47:42'),(522,1,6,250,'combo',NULL,'2019-09-25 03:47:42','2019-09-25 03:47:42'),(523,8,1,50,'package',NULL,'2019-09-25 06:20:06','2019-09-25 06:20:06'),(524,8,2,100,'package',NULL,'2019-09-25 06:20:06','2019-09-25 06:20:06'),(525,8,3,130,'package',NULL,'2019-09-25 06:20:06','2019-09-25 06:20:06'),(526,8,4,150,'package',NULL,'2019-09-25 06:20:06','2019-09-25 06:20:06'),(527,8,5,250,'package',NULL,'2019-09-25 06:20:06','2019-09-25 06:20:06'),(528,1,1,50,'package',NULL,'2019-09-25 06:20:20','2019-09-25 06:20:20'),(529,1,2,100,'package',NULL,'2019-09-25 06:20:20','2019-09-25 06:20:20'),(530,1,3,130,'package',NULL,'2019-09-25 06:20:20','2019-09-25 06:20:20'),(531,1,4,150,'package',NULL,'2019-09-25 06:20:20','2019-09-25 06:20:20'),(532,1,5,250,'package',NULL,'2019-09-25 06:20:20','2019-09-25 06:20:20'),(533,3,1,50,'package',NULL,'2019-09-25 06:20:34','2019-09-25 06:20:34'),(534,3,2,100,'package',NULL,'2019-09-25 06:20:34','2019-09-25 06:20:34'),(535,3,3,130,'package',NULL,'2019-09-25 06:20:35','2019-09-25 06:20:35'),(536,3,4,150,'package',NULL,'2019-09-25 06:20:35','2019-09-25 06:20:35'),(537,3,5,250,'package',NULL,'2019-09-25 06:20:35','2019-09-25 06:20:35');
/*!40000 ALTER TABLE `product_commisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `package_code` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `price` double NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_sale` double DEFAULT NULL,
  `agency_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `package_category_id` int(11) NOT NULL,
  `wasSale` int(11) NOT NULL DEFAULT '0',
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Special HGP – Cancer Prevention','ICPC256456','Special HGP – Cancer Prevention: COMBO: SPECIAL PACKAGE FOR INDIVIDUAL AND FAMILY\n','<p><strong>COMBO: SPECIAL PACKAGE FOR INDIVIDUAL AND FAMILY</strong></p>\n<ol>\n<li><strong>GenoPAC Cancer &amp; Disease risk test &amp; analysis (26 types in Male and 27 types in Women),</strong></li>\n<li><strong>General health test and survey,</strong></li>\n<li><strong>Health consulting program with doctors from Thailand,</strong></li>\n</ol>\n<ul>\n<li>Genetic counseling</li>\n<li>Psychological counseling</li>\n<li>Healthcare solutions counseling</li>\n<li>Dietary and nutraceuticals counseling</li>\n</ul>\n<h4><strong>The first step towards Cancer &amp; Disease  prevention.</strong></h4>\n<h4>Please begin with <strong>\"Special or Premium HGP Package\" in Human Genome Program.</strong></h4>\n<p>iCareBasewill take one step forward to personal and tailored medicine, by identifying the risk of developing various cancers and diseases</p>\n<p></p>\n<img src=\"https://icarebase.com/wp-content/uploads/2019/01/healthcare-tech-300x165.jpg\" alt=\"\" style=\"float:none;height: ;width: \"/>\n<h3><strong>Why Human Genome Program?</strong></h3>\n<p><strong>Do you wish to understand? Your genes!!!  Knowledge will make difference…</strong></p>\n<p><strong>Genome Bioinformatics \"Human Genome Program\" - The age of preventive medicine.</strong></p>\n<p>Now is the time to analyze the genes of individuals and make health management in advance.  In order to maintain a high level of health, you need to identify important health-related  factors and consider how those factors will affect an individual\'s physical, emotional, and  social health functioning.</p>\n<p>The \"Human Genome Program” analyzes the individual genes involved in cancer and disease and presents comprehensive solutions for your health and a active life.</p>\n<p></p>\n<img src=\"https://icarebase.com/wp-content/uploads/2018/12/5b-300x225.jpg\" alt=\"\" style=\"float:none;height: ;width: \"/>\n<h3><strong>Who needs Human Genome Program?</strong></h3>\n<h4>Individual with family history</h4>\n<p>In case family members are concerned about the high incidence of cancer or heredity disease  you can be tested together, checked for risks and managed early.</p>\n<h4>Individual seeks for health checkup</h4>\n<p>A health checkup conducted at a hospital is a test to diagnose current problems on the blood by collecting  blood. GenoPAC testing analyzes the unchanging genes from birth to predict cancers or diseases that are genetically at risk, even if there are no current problems. Therefore, it is another form of health  checkup in the sense that it confirms the genetic health that was born and not the present condition.</p>\n<h4>Anyone interested in health care</h4>\n<p>If you are concerned about your health and wish to effectively manage your lifestyle,  you can use your personalized genetic tests to focus more on the areas of risk.</p>\n<h3><strong>What is GenoPAC Cancer &amp; Disease?</strong></h3>\n<p></p>\n<img src=\"https://icarebase.com/wp-content/uploads/2019/01/GENOPAC-CANCER-DISEASE-1-1024x878.png\" alt=\"\" style=\"float:none;height: ;width: \"/>\n<p>&nbsp;</p>\n',2500,'/uploads/products/special-hgp-–-cancer-prevention1565255830098.jpeg',1500,NULL,2,2,0,1,'2019-07-05 03:44:58','2019-10-17 04:17:11'),(3,'Premium HGP – Cancer Prevention & Detox Holiday','ICPC20190806','Premium HGP – Cancer Prevention & Detox Holiday: COMBO: PREMIUM PACKAGE FOR INDIVIDUAL AND FAMILY','<p><strong>COMBO: PREMIUM PACKAGE FOR INDIVIDUAL AND FAMILY</strong></p>\n<ol>\n<li><strong>GenoPAC Cancer &amp; Disease risk test &amp; analysis (26 types in Male and 27 types in Women),</strong></li>\n<li><strong>General health test and survey,</strong></li>\n<li><strong>Health consulting program with doctors from Thailand,</strong></li>\n</ol>\n<ul>\n<li>Genetic counseling,</li>\n<li>Psychological counseling,</li>\n<li>Healthcare solutions counseling,</li>\n<li>Dietary and nutraceuticals counseling.</li>\n</ul>\n<ol>\n<li><strong>A 3-Day Health Wellness and Detox Holiday.</strong></li>\n</ol>\n<h4><strong>The first step towards Cancer &amp; Disease  prevention.</strong></h4>\n<h4>Please begin with <strong>\"Special or Premium HGP Package\" in Human Genome Program.</strong></h4>\n<p>iCareBasewill take one step forward to personal and tailored medicine, by identifying the risk of developing various cancers and diseases</p>\n<img src=\"https://icarebase.com/wp-content/uploads/2019/01/healthcare-tech-300x165.jpg\" alt=\"\" style=\"float:none;height: ;width: \"/>\n<h3><strong>Why Human Genome Program?</strong></h3>\n<p><strong>Do you wish to understand? Your genes!!!  Knowledge will make difference…</strong></p>\n<p><strong>Genome Bioinformatics \"Human Genome Program\" - The age of preventive medicine.</strong></p>\n<p>Now is the time to analyze the genes of individuals and make health management in advance.  In order to maintain a high level of health, you need to identify important health-related  factors and consider how those factors will affect an individual\'s physical, emotional, and  social health functioning.</p>\n<p>The \"Human Genome Program” analyzes the individual genes involved in cancer and disease and presents comprehensive solutions for your health and a active life.</p>\n<p></p>\n<h3><strong>Who needs Human Genome Program?</strong></h3>\n<h4>Individual with family history</h4>\n<p>In case family members are concerned about the high incidence of cancer or heredity disease  you can be tested together, checked for risks and managed early.</p>\n<h4>Individual seeks for health checkup</h4>\n<p>A health checkup conducted at a hospital is a test to diagnose current problems on the blood by collecting  blood. GenoPAC testing analyzes the unchanging genes from birth to predict cancers or diseases that are genetically at risk, even if there are no current problems. Therefore, it is another form of health  checkup in the sense that it confirms the genetic health that was born and not the present condition.</p>\n<h4>Anyone interested in health care</h4>\n<p>If you are concerned about your health and wish to effectively manage your lifestyle,  you can use your personalized genetic tests to focus more on the areas of risk.</p>\n<p></p>\n<h3><strong>What is GenoPAC Cancer &amp; Disease?</strong></h3>\n<p></p>\n<img src=\"https://icarebase.com/wp-content/uploads/2019/01/GENOPAC-CANCER-DISEASE-1-1024x878.png\" alt=\"undefined\" style=\"float:none;height: auto;width: auto\"/>\n<p></p>\n',3000,'/uploads/products/premium-hgp-–-cancer-prevention-detox-holiday1565255778511.jpeg',2500,NULL,3,2,0,1,'2019-08-05 03:43:02','2019-10-17 04:19:12'),(8,'Basic HGP – Cancer Prevention','sad','GenoPAC Cancer & Disease risk test & analysis','<p><strong>COMBO 03: BASIC PACKAGE FOR INDIVIDUAL AND FAMILY</strong></p>\n<ol>\n<li><strong>GenoPAC Cancer &amp; Disease risk test &amp; analysis (26 types in Male and 27 types in Women),</strong></li>\n<li><strong>Health consulting program with doctors from Thailand,</strong></li>\n</ol>\n<ul>\n<li>Genetic counseling</li>\n<li>Psychological counseling</li>\n<li>Healthcare solutions counseling</li>\n<li>Dietary and nutraceuticals counseling</li>\n</ul>\n<h4><strong>The first step towards Cancer &amp; Disease  prevention.</strong></h4>\n<h4>Please begin with <strong>\"Basic, Special or Premium HGP Package\" in Human Genome Program.</strong></h4>\n<p>iCareBase will take one step forward to personal and tailored medicine, by identifying the risk of developing various cancers and diseases</p>\n<p></p>\n<img src=\"https://icarebase.com/wp-content/uploads/2019/01/healthcare-tech-300x165.jpg\" alt=\"\" style=\"float:none;height: ;width: \"/>\n<h3><strong>Why Human Genome Program?</strong></h3>\n<p><strong>Do you wish to understand? Your genes!!!  Knowledge will make difference…</strong></p>\n<p><strong>Genome Bioinformatics \"Human Genome Program\" - The age of preventive medicine.</strong></p>\n<p>Now is the time to analyze the genes of individuals and make health management in advance.  In order to maintain a high level of health, you need to identify important health-related  factors and consider how those factors will affect an individual\'s physical, emotional, and  social health functioning.</p>\n<p>The \"Human Genome Program” analyzes the individual genes involved in cancer and disease and presents comprehensive solutions for your health and a active life.</p>\n<p></p>\n<img src=\"https://icarebase.com/wp-content/uploads/2018/12/5b-300x225.jpg\" alt=\"\" style=\"float:none;height: ;width: \"/>\n<h3><strong>Who needs Human Genome Program?</strong></h3>\n<h4>Individual with family history</h4>\n<p>In case family members are concerned about the high incidence of cancer or heredity disease  you can be tested together, checked for risks and managed early.</p>\n<h4>Individual seeks for health checkup</h4>\n<p>A health checkup conducted at a hospital is a test to diagnose current problems on the blood by collecting  blood. GenoPAC testing analyzes the unchanging genes from birth to predict cancers or diseases that are genetically at risk, even if there are no current problems. Therefore, it is another form of health  checkup in the sense that it confirms the genetic health that was born and not the present condition.</p>\n<h4>Anyone interested in health care</h4>\n<p>If you are concerned about your health and wish to effectively manage your lifestyle,  you can use your personalized genetic tests to focus more on the areas of risk.</p>\n<h3><strong>What is GenoPAC Cancer &amp; Disease?</strong></h3>\n<p></p>\n<img src=\"https://icarebase.com/wp-content/uploads/2019/01/GENOPAC-CANCER-DISEASE-1-1024x878.png\" alt=\"\" style=\"float:none;height: ;width: \"/>\n<p>&nbsp;</p>\n',2000,'/uploads/products/basic-hgp-–-cancer-prevention1565255872586.jpeg',1000,NULL,1,2,0,1,'2019-08-05 08:07:03','2019-10-16 09:28:04');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotions`
--

DROP TABLE IF EXISTS `promotions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promotions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL COMMENT 'product|combo',
  `value` double DEFAULT NULL,
  `type_value` varchar(255) DEFAULT NULL COMMENT 'price|percent',
  `status` int(11) DEFAULT NULL,
  `description` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotions`
--

LOCK TABLES `promotions` WRITE;
/*!40000 ALTER TABLE `promotions` DISABLE KEYS */;
INSERT INTO `promotions` VALUES (1,'Discount 20% For all product','ICBDC20190806','2019-08-03 11:09:09','2019-09-01 11:09:09','totalorder',103,'price',1,'<p>Discount 20% For all product</p>\n','2019-08-10 08:55:43','2019-08-10 12:47:08'),(3,'test','SADASDSA','2019-08-10 11:09:09','2019-09-16 11:09:09','totalorder',4,'price',1,'<p>dsfdsfdf</p>\n','2019-08-10 12:43:45','2019-08-10 12:45:24'),(4,'sdasd','dsdsd','2019-08-10 19:44:23','2019-08-17 19:44:23','totalorder',32,'price',1,'<p>ád</p>\n','2019-08-10 12:44:36','2019-08-10 12:44:46'),(5,'Discount $100','JHFSDJAD','2019-09-24 11:47:01','2019-09-28 11:47:01','totalorder',100,'price',1,'<p>Discount $100</p>\n','2019-09-25 04:47:37','2019-09-25 04:47:37');
/*!40000 ALTER TABLE `promotions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_user`
--

DROP TABLE IF EXISTS `role_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_user`
--

LOCK TABLES `role_user` WRITE;
/*!40000 ALTER TABLE `role_user` DISABLE KEYS */;
INSERT INTO `role_user` VALUES (4,5,1),(48,8,2),(50,1,1),(51,9,1),(54,11,1),(56,10,1),(57,6,1),(58,4,1),(59,12,5),(60,13,1);
/*!40000 ALTER TABLE `role_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Super Admin',NULL,'Manage all systems in the admin.','2019-07-07 05:21:02','2019-08-08 15:37:10'),(2,'Member',NULL,'Manage all system in the admin!','2019-07-07 07:39:33','2019-07-07 07:39:33'),(4,'test role',NULL,'descriptiom','2019-07-28 05:10:37','2019-07-28 05:10:37'),(5,'Ke Toan',NULL,'Phòng Kế Toán','2019-09-13 09:29:29','2019-09-13 09:29:29');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sendgirds`
--

DROP TABLE IF EXISTS `sendgirds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sendgirds` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `alias` varchar(255) DEFAULT NULL,
  `to_email` varchar(255) DEFAULT NULL,
  `template_id` varchar(255) DEFAULT NULL,
  `drawData` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sendgirds`
--

LOCK TABLES `sendgirds` WRITE;
/*!40000 ALTER TABLE `sendgirds` DISABLE KEYS */;
INSERT INTO `sendgirds` VALUES (1,'template_customer_forgot_password',NULL,'d-e7c34a0e55ed4e878fa3bca2ad04e684','{{full_name}}\r\n{{token}}\r\n{{CUSTOMER_LINK_RESET_PASSWORD}}','2019-10-10 00:00:00','2019-10-10 00:00:00'),(2,'template_customer_active_account',NULL,'d-c4c753223e1a4118b0cffdd3680abd24','{{full_name}}\r\n{{token}}\r\n{{CUSTOMER_LINK_ACTIVE_ACCOUNT}}','2019-10-10 00:00:00','2019-10-10 00:00:00'),(3,'template_admin_forgot_password',NULL,'d-10120a9eaebf475a85216b6cef0438be','{{full_name}}\r\n{{token}}\r\n{{ADMIN_LINK_RESET_PASSWORD}}','2019-10-10 00:00:00','2019-10-10 00:00:00'),(4,'template_order_new',NULL,'d-e6cdbd18f4104ea997822cb94c2c480c','{{full_name}}\r\n{{orderCode}}\r\n{{orderValue}}\r\n{{{items}}}','2019-10-10 00:00:00','2019-10-10 00:00:00'),(5,'template_reciept_success',NULL,'d-d980969af50743b693c5064751a26a93','{{full_name}}\r\n{{orderCode}}\r\n{{recieptValue}}','2019-10-10 00:00:00','2019-10-10 00:00:00'),(6,'template_user_invite_friend',NULL,'d-5681dfb370c34f54b0a9a38d53df5fcd','{{full_name}}\r\n{{refCode}}\r\n{{CUSTOMER_LINK_REF}}','2019-10-10 00:00:00','2019-10-10 00:00:00');
/*!40000 ALTER TABLE `sendgirds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `skey` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'admin/customer',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`skey`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (7,'smtp_host','smtp.gmail.com','smtp_email','admin','2019-07-04 17:00:00','2019-07-04 17:00:00'),(8,'smtp_port','587','smtp_email','admin','2019-07-04 17:00:00','2019-07-04 17:00:00'),(17,'payment_name','Admin Icarebase','payment','admin','2019-07-09 05:50:41','2019-07-09 05:50:41'),(18,'payment_email','admin.icarebase@gmail.com','payment','admin','2019-07-09 05:50:41','2019-07-09 05:50:41'),(19,'payment_wallet_address','0xd60F83DB228365559662FE35C3AA565f380D0597','payment','admin','2019-07-09 05:50:41','2019-07-09 05:50:41'),(28,'company_name','iCareBase','company','admin','2019-08-26 04:20:49','2019-08-26 04:20:49'),(29,'company_decription','iCareBase','company','admin','2019-08-26 04:20:49','2019-08-26 04:20:49'),(30,'company_hotline','0888-60-9999','company','admin','2019-08-26 04:20:49','2019-08-26 04:20:49'),(31,'company_email','icarebase@gmail.com','company','admin','2019-08-26 04:20:49','2019-08-26 04:20:49'),(68,'name','iCareBase System','site','admin','2019-09-13 08:27:59','2019-09-13 08:27:59'),(69,'description','Manage System iCareBase!','site','admin','2019-09-13 08:27:59','2019-09-13 08:27:59'),(70,'keywords','iCareBase','site','admin','2019-09-13 08:27:59','2019-09-13 08:27:59'),(71,'summary','Manage System iCareBase','site','admin','2019-09-13 08:27:59','2019-09-13 08:27:59'),(72,'sponsor_id','769','site','admin','2019-09-13 08:27:59','2019-09-13 08:27:59'),(73,'default_lv','0','site','admin','2019-09-13 08:27:59','2019-09-13 08:27:59');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shoppingcarts`
--

DROP TABLE IF EXISTS `shoppingcarts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shoppingcarts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `os_device` varchar(255) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `total` double DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL COMMENT 'package|combo',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL COMMENT 'male|female',
  `address` varchar(255) DEFAULT NULL,
  `province` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` varchar(255) DEFAULT NULL,
  `company` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoppingcarts`
--

LOCK TABLES `shoppingcarts` WRITE;
/*!40000 ALTER TABLE `shoppingcarts` DISABLE KEYS */;
/*!40000 ALTER TABLE `shoppingcarts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint(20) unsigned DEFAULT NULL,
  `tracsaction_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `payment_method` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'deposit,order,withdraw',
  `amount` double NOT NULL DEFAULT '0',
  `fee` double NOT NULL COMMENT 'for withdraw',
  `txhash` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `curencyPOINT` double DEFAULT NULL,
  `curencyVND` double DEFAULT NULL,
  `curencyUSD` double DEFAULT NULL,
  `address_wallet` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1 Successed, 2 Faield',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `dropColumn` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `transactions_user_id_foreign` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (32,8,'ICBRP00032',95,'cash','admin',0,0,NULL,NULL,46511628,2000,NULL,1,'2019-08-14 02:24:44','2019-08-14 02:24:44',NULL),(34,8,'ICBRP00034',96,'alepay','user',0,0,NULL,NULL,69767442,3000,NULL,1,'2019-08-14 02:34:43','2019-08-14 02:35:26',NULL),(36,3,'ICBRP00036',97,'banktransfer','admin',0,0,NULL,NULL,141860465.39999998,6100,NULL,1,'2019-08-17 02:36:52','2019-08-17 02:36:52',NULL),(38,8,'ICBRP00038',153,'alepay','user',0,0,NULL,NULL,125581395.6,5400,NULL,0,'2019-08-21 03:35:18','2019-08-21 03:35:18',NULL),(39,8,'ICBRP00039',156,'alepay','user',0,0,NULL,NULL,125581395.6,5400,NULL,0,'2019-08-21 03:37:56','2019-08-21 03:37:56',NULL),(40,8,'ICBRP00040',157,'alepay','user',0,0,NULL,NULL,125581395.6,5400,NULL,1,'2019-08-21 03:40:10','2019-08-21 03:41:59',NULL),(41,8,'ICBRP00041',158,'alepay','user',0,0,NULL,NULL,125581395.6,5400,NULL,0,'2019-08-21 03:56:02','2019-08-21 03:56:02',NULL),(42,8,'ICBRP00042',161,'alepay','user',0,0,NULL,NULL,125581395.6,5400,NULL,0,'2019-08-21 03:57:18','2019-08-21 03:57:18',NULL),(43,8,'ICBRP00043',162,'alepay','user',0,0,NULL,NULL,125581395.6,5400,NULL,0,'2019-08-21 03:57:18','2019-08-21 03:57:18',NULL),(45,8,'ICBRP00045',165,'alepay','user',0,0,NULL,NULL,125581395.6,5400,NULL,0,'2019-08-21 03:59:33','2019-08-21 03:59:33',NULL),(46,8,'ICBRP00046',166,'alepay','user',0,0,NULL,NULL,125581395.6,5400,NULL,0,'2019-08-21 04:01:23','2019-08-21 04:01:23',NULL),(47,8,'ICBRP00047',167,'alepay','user',0,0,NULL,NULL,125581395.6,5400,NULL,0,'2019-08-21 04:02:11','2019-08-21 04:02:11',NULL),(48,8,'ICBRP00048',168,'alepay','user',0,0,NULL,NULL,125581395.6,5400,NULL,0,'2019-08-21 04:02:11','2019-08-21 04:02:11',NULL),(49,8,'ICBRP00049',169,'alepay','user',0,0,NULL,NULL,125581395.6,5400,NULL,0,'2019-08-21 04:05:37','2019-08-21 04:05:37',NULL),(50,8,'ICBRP00050',171,'alepay','user',0,0,NULL,NULL,125581395.6,5400,NULL,0,'2019-08-21 04:06:51','2019-08-21 04:06:51',NULL),(51,8,'ICBRP00051',172,'alepay','user',0,0,NULL,NULL,125581395.6,5400,NULL,1,'2019-08-21 04:14:16','2019-08-21 04:14:47',NULL),(52,8,'ICBRP00052',179,'alepay','user',0,0,NULL,NULL,125581395.6,5400,NULL,0,'2019-08-21 04:25:12','2019-08-21 04:25:12',NULL),(53,8,'ICBRP00053',180,'alepay','user',0,0,NULL,NULL,125581395.6,5400,NULL,0,'2019-08-21 04:25:12','2019-08-21 04:25:12',NULL),(54,8,'ICBRP00054',181,'alepay','user',0,0,NULL,NULL,125581395.6,5400,NULL,0,'2019-08-21 04:25:35','2019-08-21 04:25:35',NULL),(55,8,'ICBRP00055',182,'alepay','user',0,0,NULL,NULL,125581395.6,5400,NULL,0,'2019-08-21 04:25:35','2019-08-21 04:25:35',NULL),(56,8,'ICBRP00056',183,'alepay','user',0,0,NULL,NULL,125581395.6,5400,NULL,0,'2019-08-21 04:26:15','2019-08-21 04:26:15',NULL),(57,8,'ICBRP00057',185,'alepay','user',0,0,NULL,NULL,125581395.6,5400,NULL,0,'2019-08-21 04:34:30','2019-08-21 04:34:30',NULL),(58,8,'ICBRP00058',189,'alepay','user',0,0,NULL,NULL,123186046.75799999,5297,NULL,0,'2019-08-21 04:39:47','2019-08-21 04:39:47',NULL),(59,8,'ICBRP00059',190,'alepay','user',0,0,NULL,NULL,116279069.99999999,5000,NULL,1,'2019-08-21 09:13:02','2019-08-21 09:13:32',NULL),(60,8,'ICBRP00060',191,'alepay','user',0,0,NULL,NULL,41860465.199999996,1800,NULL,0,'2019-08-21 09:15:33','2019-08-21 09:15:33',NULL),(61,8,'ICBRP00061',192,'alepay','user',0,0,NULL,NULL,41860465.199999996,1800,NULL,1,'2019-08-21 09:15:33','2019-08-21 09:15:59',NULL),(62,8,'ICBRP00062',193,'alepay','user',0,0,NULL,NULL,232558139.99999997,10000,NULL,0,'2019-08-21 09:16:42','2019-08-21 09:16:42',NULL),(63,8,'ICBRP00063',194,'alepay','user',0,0,NULL,NULL,232558139.99999997,10000,NULL,1,'2019-08-21 09:16:42','2019-08-21 09:17:12',NULL),(64,8,'ICBRP00064',195,'alepay','user',0,0,NULL,NULL,30232558.2,1300,NULL,1,'2019-08-21 09:31:16','2019-08-21 09:31:46',NULL),(65,8,'ICBRP00065',196,'alepay','user',0,0,NULL,NULL,41860465.199999996,1800,NULL,1,'2019-08-21 09:48:26','2019-08-21 09:48:56',NULL),(66,8,'ICBRP00066',197,'alepay','user',0,0,NULL,NULL,30232558.2,1300,NULL,1,'2019-08-22 02:32:30','2019-08-22 02:33:19',NULL),(67,8,'ICBRP00067',198,'alepay','user',0,0,NULL,NULL,113883721.15799999,4897,NULL,1,'2019-08-22 02:54:46','2019-08-22 02:55:24',NULL),(68,8,'ICBRP00068',199,'alepay','user',0,0,NULL,NULL,83720930.39999999,3600,NULL,0,'2019-08-26 04:42:12','2019-08-26 04:42:12',NULL),(69,8,'ICBRP00069',199,'cash','admin',0,0,NULL,NULL,83720930.39999999,3600,NULL,1,'2019-08-26 06:24:56','2019-08-26 06:24:56',NULL),(70,1228,'ICBRP00070',200,'cash','admin',0,0,NULL,NULL,90697674.6,3900,NULL,1,'2019-08-28 09:32:12','2019-08-28 09:32:12',NULL),(71,1228,'ICBRP00071',201,'cash','admin',0,0,NULL,NULL,41860465.199999996,1800,NULL,1,'2019-08-29 02:51:44','2019-08-29 02:51:44',NULL),(72,1228,'ICBRP00072',202,'cash','admin',0,0,NULL,NULL,41860465.199999996,1800,NULL,1,'2019-08-29 02:55:40','2019-08-29 02:55:40',NULL),(73,1231,'ICBRP00073',203,'cash','admin',0,0,NULL,NULL,83720930.39999999,3600,NULL,1,'2019-08-29 08:38:44','2019-08-29 08:38:44',NULL),(75,1228,'ICBRP00075',204,'banktransfer','admin',0,0,NULL,NULL,41860465.199999996,1800,NULL,1,'2019-08-29 12:03:51','2019-08-29 12:03:51',NULL),(76,1228,'ICBRP00076',209,'banktransfer','admin',0,0,NULL,NULL,30232558.2,1300,NULL,1,'2019-09-06 05:02:18','2019-09-06 05:02:18',NULL),(77,1248,'ICBRP00077',210,'banktransfer','admin',0,0,NULL,NULL,20930232.599999998,900,NULL,1,'2019-09-09 09:00:29','2019-09-09 09:00:29',NULL),(80,1248,'ICBRP00080',210,'banktransfer','admin',0,0,NULL,NULL,2325581.4,100,NULL,1,'2019-09-10 04:09:50','2019-09-10 04:09:50',NULL),(81,1247,'ICBRP00081',211,'cash','admin',0,0,NULL,NULL,65116279.199999996,2800,NULL,1,'2019-09-11 07:33:54','2019-09-11 07:33:54',NULL),(82,1249,'ICBRP00082',212,'cash','admin',0,0,NULL,NULL,41860465.199999996,1800,NULL,1,'2019-09-11 07:48:27','2019-09-11 07:48:27',NULL),(83,1250,'ICBRP00083',213,'banktransfer','admin',0,0,NULL,NULL,30232558.2,1300,NULL,1,'2019-09-11 07:59:17','2019-09-11 07:59:17',NULL),(84,1250,'ICBRP00084',214,'cash','admin',0,0,NULL,NULL,41860465.199999996,1800,NULL,1,'2019-09-11 08:40:01','2019-09-11 08:40:01',NULL),(86,1252,'ICBRP00086',216,'cash','admin',0,0,NULL,NULL,30232558.2,1300,NULL,1,'2019-09-12 03:36:07','2019-09-12 03:36:07',NULL),(87,1253,'ICBRP00087',217,'cash','admin',0,0,NULL,NULL,41860465.199999996,1800,NULL,1,'2019-09-12 03:39:56','2019-09-12 03:39:56',NULL),(88,8,'ICBRP00088',218,'alepay','user',0,0,NULL,NULL,60465116.4,2600,NULL,0,'2019-09-12 03:41:07','2019-09-12 03:41:07',NULL),(93,1253,'ICBRP00093',219,'cash','admin',0,0,NULL,NULL,23255814,1000,NULL,1,'2019-09-12 09:29:51','2019-09-12 09:29:51',NULL),(94,1255,'ICBRP00094',223,'cash','admin',0,0,NULL,NULL,23255814,1000,NULL,1,'2019-09-13 08:20:21','2019-09-13 08:20:21',NULL),(95,1256,'ICBRP00095',224,'cash','admin',0,0,NULL,NULL,41860465.199999996,1800,NULL,1,'2019-09-13 08:36:35','2019-09-13 08:36:35',NULL),(96,1251,'ICBRP00096',215,'banktransfer','admin',0,0,NULL,NULL,41860465.199999996,1800,NULL,1,'2019-09-18 02:27:46','2019-09-18 02:27:46',NULL),(97,1264,'ICBRP00097',226,'cash','admin',0,0,NULL,NULL,39534883.8,1700,NULL,1,'2019-09-25 04:48:58','2019-09-25 04:48:58',NULL),(98,1264,'ICBRP00098',227,'banktransfer','admin',0,0,NULL,NULL,30232558.2,1300,NULL,1,'2019-09-25 06:12:07','2019-09-25 06:12:07',NULL),(99,1264,'ICBRP00099',228,'cash','admin',0,0,NULL,NULL,41860465.199999996,1800,NULL,1,'2019-09-25 06:19:09','2019-09-25 06:19:09',NULL),(100,1264,'ICBRP00100',229,'banktransfer','admin',0,0,NULL,NULL,41860465.199999996,1800,NULL,1,'2019-09-25 06:23:22','2019-09-25 06:23:22',NULL),(101,1265,'ICBRP00101',230,'banktransfer','admin',0,0,NULL,NULL,30232558.2,1300,NULL,1,'2019-09-25 06:48:13','2019-09-25 06:48:13',NULL),(102,1266,'ICBRP00102',231,'cash','admin',0,0,NULL,NULL,41860465.199999996,1800,NULL,1,'2019-09-25 06:52:35','2019-09-25 06:52:35',NULL),(103,1267,'ICBRP00103',232,'cash','admin',0,0,NULL,NULL,30232558.2,1300,NULL,1,'2019-09-25 09:07:22','2019-09-25 09:07:22',NULL),(104,1269,'ICBRP00104',233,'cash','admin',0,0,NULL,NULL,23255814,1000,NULL,1,'2019-09-25 10:02:16','2019-09-25 10:02:16',NULL),(105,1270,'ICBRP00105',234,'cash','admin',0,0,NULL,NULL,23255814,1000,NULL,1,'2019-10-03 03:50:08','2019-10-03 03:50:08',NULL),(106,1270,'ICBRP00106',235,'cash','admin',0,0,NULL,NULL,23255814,1000,NULL,1,'2019-10-03 03:53:29','2019-10-03 03:53:29',NULL),(107,1270,'ICBRP00107',236,'cash','admin',0,0,NULL,NULL,23255814,1000,NULL,1,'2019-10-03 03:57:23','2019-10-03 03:57:23',NULL),(108,8,'ICBRP00108',239,'alepay','user',0,0,NULL,NULL,23255814,1000,NULL,0,'2019-10-13 01:57:21','2019-10-13 01:57:21',NULL),(109,8,'ICBRP00109',240,'alepay','user',0,0,NULL,NULL,23255814,1000,NULL,0,'2019-10-20 14:47:21','2019-10-20 14:47:21',NULL),(110,8,'ICBRP00110',241,'alepay','user',0,0,NULL,NULL,116279069.99999999,5000,NULL,0,'2019-10-20 14:52:07','2019-10-20 14:52:07',NULL),(111,3,'ICBRP00111',243,'banktransfer','admin',0,0,NULL,NULL,23255814,1000,NULL,1,'2019-10-23 15:24:05','2019-10-23 15:24:05',NULL),(112,3,'ICBRP00112',249,'banktransfer','admin',0,0,NULL,NULL,93023256,4000,NULL,1,'2019-10-28 05:00:25','2019-10-28 05:00:25',NULL),(113,1414,'ICBRP00113',253,'banktransfer','admin',0,0,NULL,NULL,116279069.99999999,5000,NULL,1,'2019-10-29 05:54:49','2019-10-29 05:54:49',NULL);
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_tokens`
--

DROP TABLE IF EXISTS `user_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `access_token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_tokens`
--

LOCK TABLES `user_tokens` WRITE;
/*!40000 ALTER TABLE `user_tokens` DISABLE KEYS */;
INSERT INTO `user_tokens` VALUES (41,13,'icarebase-lUfM96W97SurEYMvWbtsvH6fDmB3x9DPJVyvoW23','2019-09-19 07:28:47','2019-09-19 07:28:47','2019-09-19 07:28:47'),(50,1,'icarebase-tZzfWjkXCLzaFmgfGHm1Ii1VEVRBeMbWD8kvdMRe','2019-10-12 10:43:39','2019-10-12 10:43:39','2019-10-12 10:43:39'),(54,4,'icarebase-75Fj4Gd8khamqFSJeiPjQWzE7T6BzCl6fXBpiLCV','2019-10-29 06:11:04','2019-10-29 06:11:04','2019-10-29 06:11:04');
/*!40000 ALTER TABLE `user_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `last_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Nguyen','Dat','0388912345','nguyentandat43@gmail.com','datnguyen','$2a$10$i6QKf/ElJqZ.wb/Eb4aCg.8t7B4nxRR22tuLH7O6Ywx8hAqSK/SCq','en',NULL,'Vietnam','TP. Ho Chi Minh','12/2 , Bình Thạnh',NULL,'3322445566',NULL,'2019-07-16 02:28:11'),(4,'Admin','iCareBase','0388912345','icarebase@gmail.com','icarebase','$2a$10$YvhWZ2vCUUbUwIl4XPBqpOB25CxPCQ8X61q89bJRrsigAKGZ6CFHu','en',NULL,'Vietnam','TP. Ho Chi Minh','60 NDC',NULL,'3322445566','2019-07-07 06:42:43','2019-10-24 06:16:58'),(6,'Nguyen','Datds','0388912345','nguyentanda1asdf1t43+1@gmail.com','icarebase1111sd','$2a$10$I5nszTczUeXcd3FwVOGGxOotOh0haExfRpkSt1ID7p6YMr9cnFzHO','en',NULL,'Vietnam','TP. Ho Chi Minh','12/2 , Bình Thạnh','/uploads/users/icarebase1111sd1562906579350.png','3322445566','2019-07-12 03:57:41','2019-07-12 04:42:59'),(8,'Nguyen','Datds11111222','0388912345','nguyentanda1dasdf1t43+1@gmail.com','icarebase1111dsd','$2a$10$2x5zUBGEms7TfFJaCZjDa.dIvdSMJw7xylQAgb10vUehs03fZAY92','en',NULL,'Vietnam','TP. Ho Chi Minh','12/2 , Bình Thạnh','/uploads/users/icarebase1111dsd1562906922518.png','3322445566','2019-07-12 04:03:23','2019-07-12 04:48:42'),(9,'kha','huynh','098756464','huynhkha8295@gmail.com','huynhkha','$2a$10$RxtUXCdBUkeljYDzir9mIOItSPxB0haXD2FFKqlYSCnOb68aEAh56','en',NULL,'Algeria','Annabah','dsjfghdsjhf','/uploads/users/huynhkha1564289501973.jpeg','95485743574','2019-07-28 04:51:42','2019-07-28 04:54:29'),(10,'Anh','Cuong','0978197083','coccachua@gmail.com','coccachua','$2a$10$fMa.DZitzzfIeCoucmhGdOv0QWmsuT0QPWVne.b2/sgrkAbJ1FWc6','en',NULL,'Vietnam','Thừa Thiên Huế','160 Minh Mang','/uploads/users/coccachua1565663940262.png','2831089820380912','2019-08-13 02:39:00','2019-08-28 02:23:26'),(11,'kha','huynh','093423432432','huynhkha8395@gmail.com','huynhkha123','$2a$10$0RwY6HCehT0ShwOokWoDnOrsYJZzAlhYJTz0XgW/J/UcIYPDl9Lo6','en',NULL,'Vietnam','Phú Thọ','123 a bc','/uploads/users/huynhkha1231566793673600.jpeg','324234324234324','2019-08-26 04:27:53','2019-08-26 04:27:53'),(12,'Toán','Kế','1','ifgketoan@gmail.com','ketoan','$2a$10$89ZDpbwvbYaDTThvMYtURuG1nFgnyTecx23aDMTaPY6FulzARi9Gm','en',NULL,'Afghanistan','Qandahar','1',NULL,'1111','2019-09-13 09:30:19','2019-09-13 09:30:19'),(13,'kha','huynh','0923432432','huynhkha8895@gmail.com','huynhkha123453453454','$2a$10$sdCyw7a7wMcvWtxo96ss6OkRZhlAdK8mx082IGwLVAlawx9wm2G1a','en',NULL,'Vietnam','Tuyên Quang','abcdef','/uploads/users/huynhkha1234534534541568878117175.jpeg','324324324','2019-09-19 07:28:37','2019-09-19 07:28:37');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vietnam_cities`
--

DROP TABLE IF EXISTS `vietnam_cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vietnam_cities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Auto increase ID',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'City Name',
  `full_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'City Fullname',
  `code` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'City Code',
  PRIMARY KEY (`id`),
  KEY `uniq_city` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vietnam_cities`
--

LOCK TABLES `vietnam_cities` WRITE;
/*!40000 ALTER TABLE `vietnam_cities` DISABLE KEYS */;
INSERT INTO `vietnam_cities` VALUES (1,'Hà Nội',NULL,'hnc'),(2,'Hà Giang',NULL,'hag'),(3,'Cao Bằng',NULL,'cb'),(4,'Bắc Kạn',NULL,'bk'),(5,'Tuyên Quang',NULL,'tq'),(6,'Lào Cai',NULL,'lc'),(7,'Điện Biên',NULL,'db'),(8,'Lai Châu',NULL,'lc'),(9,'Sơn La',NULL,'sl'),(10,'Yên Bái',NULL,'yb'),(11,'Hòa Bình',NULL,'hb'),(12,'Thái Nguyên',NULL,'tn'),(13,'Lạng Sơn',NULL,'ls'),(14,'Quảng Ninh',NULL,'qni'),(15,'Bắc Giang',NULL,'bg'),(16,'Phú Thọ',NULL,'pt'),(17,'Vĩnh Phúc',NULL,'vp'),(18,'Bắc Ninh',NULL,'bn'),(19,'Hải Dương',NULL,'hd'),(20,'Hải Phòng',NULL,'hp'),(21,'Hưng Yên',NULL,'hy'),(22,'Thái Bình',NULL,'tb'),(23,'Hà Nam',NULL,'hn'),(24,'Nam Định',NULL,'nd'),(25,'Ninh Bình',NULL,'nb'),(26,'Thanh Hóa',NULL,'th'),(27,'Nghệ An',NULL,'na'),(28,'Hà Tĩnh',NULL,'ht'),(29,'Quảng Bình',NULL,'qb'),(30,'Quảng Trị',NULL,'qt'),(31,'Thừa Thiên Huế',NULL,'tth'),(32,'Đà Nẵng',NULL,'dnc'),(33,'Quảng Nam',NULL,'qna'),(34,'Quảng Ngãi',NULL,'qn'),(35,'Bình Định',NULL,'bdi'),(36,'Phú Yên',NULL,'py'),(37,'Khánh Hòa',NULL,'kh'),(38,'Ninh Thuận',NULL,'nt'),(39,'Bình Thuận',NULL,'bt'),(40,'Kon Tum',NULL,'kt'),(41,'Gia Lai',NULL,'gl'),(42,'Đắk Lắk',NULL,'dl'),(43,'Đắk Nông',NULL,'dn'),(44,'Lâm Đồng',NULL,'ld'),(45,'Bình Phước',NULL,'bp'),(46,'Tây Ninh',NULL,'tni'),(47,'Bình Dương',NULL,'bd'),(48,'Đồng Nai',NULL,'dna'),(49,'Bà Rịa - Vũng Tàu',NULL,'br'),(50,'Hồ Chí Minh',NULL,'hcm'),(51,'Long An',NULL,'la'),(52,'Tiền Giang',NULL,'tg'),(53,'Bến Tre',NULL,'btr'),(54,'Trà Vinh',NULL,'tv'),(55,'Vĩnh Long',NULL,'vl'),(56,'Đồng Tháp',NULL,'dt'),(57,'An Giang',NULL,'ag'),(58,'Kiên Giang',NULL,'kg'),(59,'Cần Thơ',NULL,'ct'),(60,'Hậu Giang',NULL,'hg'),(61,'Sóc Trăng',NULL,'st'),(62,'Bạc Liêu',NULL,'bl'),(63,'Cà Mau',NULL,'cm');
/*!40000 ALTER TABLE `vietnam_cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `withdraws`
--

DROP TABLE IF EXISTS `withdraws`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `withdraws` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `payment_withdraw` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `account_code` varchar(255) DEFAULT NULL,
  `account_address` varchar(255) DEFAULT NULL COMMENT 'branch account',
  `date_completed` timestamp NULL DEFAULT NULL,
  `file_transaction` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL COMMENT 'completed|pending|failed',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `withdraws`
--

LOCK TABLES `withdraws` WRITE;
/*!40000 ALTER TABLE `withdraws` DISABLE KEYS */;
INSERT INTO `withdraws` VALUES (1,'ICBWD00001',8,32,'đâs fdsf sdfdsfd','request_customer','2019-09-19 03:18:46','2019-09-19 07:50:37','sadsad','sadsad','ádas','sadsad','2019-09-19 07:50:37','/uploads/withdraws/icbwd000011568879273674.jpeg','completed'),(2,'ICBWD00002',1261,120,'Đã thanh toán','request_customer','2019-09-26 04:27:52','2019-09-26 04:30:16','Test','88888','ACB','111','2019-09-26 04:30:16',NULL,'completed'),(3,'ICBWD00003',1261,120,'Lên nhé','request_customer','2019-09-26 04:28:02','2019-09-26 04:35:15','Test','88888','ACB','111','2019-09-26 04:35:15',NULL,'completed'),(4,'ICBWD00004',1261,120,'Lấy 3000 luôn nhé','request_customer','2019-09-26 04:43:05','2019-09-26 04:43:05','111','1111','1111','111',NULL,NULL,'pending'),(5,'ICBWD00005',8,213,'32132','request_customer','2019-10-08 03:30:30','2019-10-08 03:30:30','abc','32432432432432','ABC DEF','HCM',NULL,NULL,'pending'),(6,'ICBWD00006',8,213,'32132','request_customer','2019-10-08 03:30:44','2019-10-08 03:30:44','abc','32432432432432','ABC DEF','HCM',NULL,NULL,'pending'),(7,'ICBWD00007',8,12,'3213','request_customer','2019-10-08 07:22:30','2019-10-08 07:22:30','abc','32432432432432','ABC DEF','HCM',NULL,NULL,'pending'),(8,'ICBWD00008',8,200,'Note request withdraw.','request_customer','2019-10-08 07:24:43','2019-10-08 07:24:43','Nguyen Van Bede','33302423904884029','Vietcombank','PGD. Phu Nhuan',NULL,NULL,'pending'),(9,'ICBWD00009',8,123,'Empty','request_customer','2019-10-08 07:27:36','2019-10-08 07:27:36','abc','32432432432432','ABC DEF','HCM',NULL,NULL,'pending'),(10,'ICBWD00010',8,123,'Empty','request_customer','2019-10-08 07:28:07','2019-10-08 07:28:07','sdfsd','dsfsd','dsf','sdfdsf',NULL,NULL,'pending'),(11,'ICBWD00011',8,120,'Empty','request_customer','2019-10-08 07:29:43','2019-10-08 07:29:43','abc','32432432432432','ABC DEF','HCM',NULL,NULL,'pending'),(12,'ICBWD00012',8,120,'Empty','request_customer','2019-10-08 07:29:50','2019-10-08 07:29:50','abc','32432432432432','ABC DEF','HCM',NULL,NULL,'pending'),(13,'ICBWD00013',8,120,'Empty','request_customer','2019-10-08 07:29:52','2019-10-08 07:29:52','abc','32432432432432','ABC DEF','HCM',NULL,NULL,'pending'),(14,'ICBWD00014',8,120,'Empty','request_customer','2019-10-08 07:29:53','2019-10-08 07:29:53','abc','32432432432432','ABC DEF','HCM',NULL,NULL,'pending'),(15,'ICBWD00015',8,120,'Empty','request_customer','2019-10-08 07:29:54','2019-10-08 07:29:54','abc','32432432432432','ABC DEF','HCM',NULL,NULL,'pending'),(16,'ICBWD00016',8,120,'Empty','request_customer','2019-10-08 07:29:55','2019-10-08 07:29:55','abc','32432432432432','ABC DEF','HCM',NULL,NULL,'pending'),(17,'ICBWD00017',8,120,'Empty','request_customer','2019-10-08 07:29:55','2019-10-08 07:29:55','abc','32432432432432','ABC DEF','HCM',NULL,NULL,'pending'),(18,'ICBWD00018',8,120,'Empty','request_customer','2019-10-08 07:29:56','2019-10-08 07:29:56','abc','32432432432432','ABC DEF','HCM',NULL,NULL,'pending'),(19,'ICBWD00019',8,121,'Empty','request_customer','2019-10-08 07:32:11','2019-10-08 07:32:11','abc','32432432432432','ABC DEF','HCM',NULL,NULL,'pending'),(20,'ICBWD00020',8,123,'Empty','request_customer','2019-10-08 07:32:48','2019-10-08 07:32:48','abc','32432432432432','ABC DEF','HCM',NULL,NULL,'pending'),(21,'ICBWD00021',8,120,'Empty','request_customer','2019-10-08 07:35:39','2019-10-08 07:35:39','abc','32432432432432','ABC DEF','HCM',NULL,NULL,'pending'),(22,'ICBWD00022',8,120,'Empty','request_customer','2019-10-08 07:35:39','2019-10-08 07:35:39','abc','32432432432432','ABC DEF','HCM',NULL,NULL,'pending'),(23,'ICBWD00023',8,123,'Empty','request_customer','2019-10-08 07:36:13','2019-10-08 07:36:13','abc','32432432432432','ABC DEF','HCM',NULL,NULL,'pending'),(24,'ICBWD00024',8,200,'555','request_customer','2019-10-10 01:15:51','2019-10-10 01:24:23','QEQ','32432','234234','234324','2019-10-10 01:24:23','/uploads/withdraws/icbwd000241570670231585.jpeg','completed'),(25,'ICBWD00025',8,300,'Empty','request_customer','2019-10-10 01:25:21','2019-10-10 01:34:14','sada','sada','sad','asd','2019-10-10 01:34:14','/uploads/withdraws/icbwd000251570670741531.png','pedding'),(26,'ICBWD00026',8,100,'Empty','request_customer','2019-10-10 03:57:23','2019-10-10 04:14:27','abc','32432432432432','ABC DEF','HCM','2019-10-10 04:14:27',NULL,'completed'),(27,'ICBWD00027',8,12,'Empty','request_customer','2019-10-10 04:11:27','2019-10-10 04:14:06','abc','32432432432432','ABC DEF','HCM','2019-10-10 04:14:06',NULL,'completed'),(28,'ICBWD00028',8,12,'Empty','request_customer','2019-10-10 04:18:08','2019-10-10 04:18:08','abc','32432432432432','ABC DEF','HCM',NULL,NULL,'pending'),(29,'ICBWD00029',8,123,'Empty','request_customer','2019-10-10 04:20:35','2019-10-10 04:20:35','abc','32432432432432','ABC DEF','HCM',NULL,NULL,'pending');
/*!40000 ALTER TABLE `withdraws` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'g'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-06 22:16:02
