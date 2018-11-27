-- MySQL dump 10.13  Distrib 8.0.13, for Linux (x86_64)
--
-- Host: localhost    Database: condominio
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cat_catalogo`
--

DROP TABLE IF EXISTS `cat_catalogo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cat_catalogo` (
  `PK_cat_catalogo` int(11) NOT NULL AUTO_INCREMENT,
  `Concepto` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `Costo` decimal(8,2) NOT NULL,
  `Descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `Estatus` tinyint(1) NOT NULL DEFAULT '0',
  `Fecha_Alta` timestamp NOT NULL,
  `Fecha_Modificacion` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`PK_cat_catalogo`),
  UNIQUE KEY `Concepto_UNIQUE` (`Concepto`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_catalogo`
--

LOCK TABLES `cat_catalogo` WRITE;
/*!40000 ALTER TABLE `cat_catalogo` DISABLE KEYS */;
INSERT INTO `cat_catalogo` VALUES (1,'Mantenimiento',5500.00,NULL,1,'2018-11-23 20:09:54','2018-11-23 20:11:37'),(2,'Areas Comunes',1500.00,NULL,1,'2018-11-23 20:09:54','2018-11-23 20:11:37'),(3,'Gas',300.00,'1 KG',1,'2018-11-23 20:09:54','2018-11-23 20:11:37'),(4,'Agua',100.00,'1 Litro',1,'2018-11-23 20:09:54','2018-11-23 20:11:37'),(5,'Internet',1000.00,'1 Mes 100Gbs',1,'2018-11-23 20:09:54','2018-11-23 20:11:37');
/*!40000 ALTER TABLE `cat_catalogo` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Sgbd`@`localhost`*/ /*!50003 TRIGGER `new_cat_catalogo` BEFORE INSERT ON `cat_catalogo` FOR EACH ROW BEGIN
		SET NEW.Fecha_Alta = CURRENT_TIMESTAMP;
	END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Sgbd`@`localhost`*/ /*!50003 TRIGGER `update_cat_catalogo` BEFORE UPDATE ON `cat_catalogo` FOR EACH ROW BEGIN
		SET NEW.Fecha_Modificacion = CURRENT_TIMESTAMP;
	END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `cat_edificio`
--

DROP TABLE IF EXISTS `cat_edificio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cat_edificio` (
  `PK_edificio` int(11) NOT NULL AUTO_INCREMENT,
  `Edificio` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `Descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `Estatus` tinyint(1) NOT NULL DEFAULT '0',
  `Fecha_Alta` timestamp NOT NULL,
  `Fecha_Modificacion` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`PK_edificio`),
  UNIQUE KEY `Edificio_UNIQUE` (`Edificio`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_edificio`
--

LOCK TABLES `cat_edificio` WRITE;
/*!40000 ALTER TABLE `cat_edificio` DISABLE KEYS */;
INSERT INTO `cat_edificio` VALUES (1,'Torre Norte',NULL,1,'2018-11-14 18:12:13','2018-11-14 18:12:36'),(2,'Torre Sur',NULL,1,'2018-11-14 18:12:13','2018-11-14 18:12:36'),(3,'Torre Este',NULL,1,'2018-11-14 18:12:13','2018-11-14 18:12:36'),(4,'Torre Oeste',NULL,1,'2018-11-14 18:12:13','2018-11-14 18:12:36');
/*!40000 ALTER TABLE `cat_edificio` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Sgbd`@`localhost`*/ /*!50003 TRIGGER `new_cat_edificio` BEFORE INSERT ON `cat_edificio` FOR EACH ROW BEGIN  
			SET NEW.Fecha_Alta = CURRENT_TIMESTAMP;
		END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Sgbd`@`localhost`*/ /*!50003 TRIGGER `update_cat_edificio` BEFORE UPDATE ON `cat_edificio` FOR EACH ROW BEGIN  
			SET NEW.Fecha_Modificacion = CURRENT_TIMESTAMP;
		END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `cat_espacio`
--

DROP TABLE IF EXISTS `cat_espacio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cat_espacio` (
  `PK_espacio` int(11) NOT NULL AUTO_INCREMENT,
  `Identificador` int(11) NOT NULL,
  `Piso` char(3) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `FK_edificio` int(11) NOT NULL,
  `FK_tipo` int(11) NOT NULL,
  `Descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `Estatus` tinyint(1) NOT NULL DEFAULT '0',
  `Fecha_Alta` timestamp NOT NULL,
  `Fecha_Modificacion` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`PK_espacio`),
  KEY `CAT_Edificio_CAT_Departamento_idx` (`FK_edificio`),
  KEY `CAT_Tipo_CAT_CAT_Espacio_idx` (`FK_tipo`),
  CONSTRAINT `CAT_Edificio_CAT_Espacio` FOREIGN KEY (`FK_edificio`) REFERENCES `cat_edificio` (`pk_edificio`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `CAT_Tipo_CAT_CAT_Espacio` FOREIGN KEY (`FK_tipo`) REFERENCES `cat_tipo_espacio` (`pk_cat_tipo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_espacio`
--

LOCK TABLES `cat_espacio` WRITE;
/*!40000 ALTER TABLE `cat_espacio` DISABLE KEYS */;
INSERT INTO `cat_espacio` VALUES (1,5739,'39',3,3,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(2,4618,'27',1,2,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(3,1860,'32',4,1,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(4,8637,'39',3,3,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(5,9202,'9',4,4,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(6,7542,'26',2,2,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(7,8619,'49',2,2,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(8,9361,'16',2,4,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(9,9649,'38',4,1,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(10,7547,'28',3,3,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(11,1947,'30',1,3,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(12,5646,'46',3,2,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(13,4807,'48',4,4,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(14,2273,'8',2,4,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(15,5878,'23',1,2,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(16,4725,'39',3,4,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(17,3712,'17',3,4,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(18,3030,'19',3,3,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(19,2368,'49',4,1,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(20,7983,'10',4,4,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(21,3675,'15',1,3,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(22,1516,'8',3,2,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(23,3079,'45',3,4,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(24,4216,'10',3,4,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(25,3860,'44',4,3,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(26,2686,'19',4,4,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(27,1388,'6',3,1,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(28,5740,'37',4,3,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(29,8004,'23',3,1,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(30,6138,'27',4,3,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(31,3717,'42',2,4,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(32,4147,'32',3,2,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(33,2861,'1',1,2,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(34,1822,'49',3,1,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(35,8595,'46',1,1,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(36,7368,'34',4,3,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(37,3501,'48',3,4,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(38,6429,'2',4,1,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(39,7367,'36',4,1,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(40,6518,'50',3,1,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(41,3111,'48',4,3,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(42,7906,'5',2,4,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(43,5820,'7',1,1,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(44,9164,'21',1,2,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(45,9634,'22',3,4,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(46,7267,'43',3,1,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(47,7101,'9',4,4,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(48,9508,'37',3,3,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(49,9068,'38',3,3,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(50,5714,'27',2,3,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(51,1620,'36',3,3,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(52,3785,'46',3,1,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(53,5467,'1',3,1,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(54,8417,'15',3,3,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(55,5996,'34',4,3,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(56,5363,'36',4,4,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(57,9968,'45',3,2,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(58,3855,'33',1,2,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(59,8887,'24',1,4,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(60,1948,'2',4,2,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(61,5645,'48',1,2,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(62,4385,'40',1,2,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(63,1848,'36',3,3,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(64,5223,'44',4,3,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(65,2523,'23',2,2,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(66,6803,'21',1,1,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(67,6436,'7',2,2,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(68,1163,'27',4,4,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(69,6760,'33',4,4,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(70,5156,'45',2,2,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(71,2467,'50',4,3,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(72,6470,'15',2,2,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(73,1863,'10',1,3,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(74,2882,'26',4,2,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(75,9110,'24',1,4,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(76,1339,'27',2,1,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(77,3766,'38',1,4,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(78,4054,'15',1,2,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(79,9197,'19',2,4,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(80,3789,'8',4,4,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(81,2784,'38',3,4,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(82,8543,'48',1,3,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(83,2494,'42',3,4,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(84,9985,'11',4,4,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(85,8013,'31',2,4,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(86,2296,'23',2,3,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(87,8905,'3',1,4,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(88,4216,'40',3,2,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(89,8725,'30',3,3,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(90,9453,'43',4,1,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(91,2779,'24',1,1,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(92,6282,'42',1,4,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(93,9144,'50',2,4,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(94,3895,'17',3,3,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(95,3937,'9',2,3,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(96,1942,'9',3,3,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(97,7789,'38',4,1,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(98,8628,'46',2,3,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(99,6551,'20',3,1,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40'),(100,5929,'6',3,2,NULL,1,'2018-11-14 18:22:48','2018-11-14 18:23:40');
/*!40000 ALTER TABLE `cat_espacio` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Sgbd`@`localhost`*/ /*!50003 TRIGGER `new_cat_espacio` BEFORE INSERT ON `cat_espacio` FOR EACH ROW BEGIN  
			SET NEW.Fecha_Alta = CURRENT_TIMESTAMP;
		END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Sgbd`@`localhost`*/ /*!50003 TRIGGER `update_cat_espacio` BEFORE UPDATE ON `cat_espacio` FOR EACH ROW BEGIN  
			SET NEW.Fecha_Modificacion = CURRENT_TIMESTAMP;
		END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `cat_permiso`
--

DROP TABLE IF EXISTS `cat_permiso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cat_permiso` (
  `PK_permiso` int(11) NOT NULL AUTO_INCREMENT,
  `Permiso` varchar(30) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `Descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `Estatus` tinyint(1) NOT NULL DEFAULT '0',
  `Fecha_Alta` timestamp NOT NULL,
  `Fecha_Modificacion` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`PK_permiso`),
  UNIQUE KEY `Permiso_UNIQUE` (`Permiso`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_permiso`
--

LOCK TABLES `cat_permiso` WRITE;
/*!40000 ALTER TABLE `cat_permiso` DISABLE KEYS */;
INSERT INTO `cat_permiso` VALUES (14,'Autorizar Visitas',NULL,1,'2018-11-16 20:37:17','2018-11-16 23:27:51'),(15,'Consultar Vista',NULL,1,'2018-11-16 20:37:17','2018-11-16 23:27:51'),(16,'Administrar Visitas','Manipular Visitas',1,'2018-11-16 20:37:17','2018-11-16 23:27:51'),(17,'Crear Quejas',NULL,1,'2018-11-16 20:37:17','2018-11-16 23:27:51'),(18,'Consultar Quejas',NULL,1,'2018-11-16 20:37:17','2018-11-16 23:27:51'),(19,'Administrar Quejas','Manipular y gestionar las quejas',1,'2018-11-16 20:37:17','2018-11-16 23:27:51'),(20,'Consultar Cuentas',NULL,1,'2018-11-16 20:37:17','2018-11-16 23:27:51'),(21,'Administrar Cuentas','Crear, modificar y consultar cuentas',1,'2018-11-16 20:37:17','2018-11-16 23:27:51'),(22,'Administar Perfil','Visualizar datos de perfil personal y poder modificarlos',1,'2018-11-16 20:37:17','2018-11-16 23:27:51'),(23,'Consultar perfil','Consultar informacion fundamental',1,'2018-11-16 20:37:17','2018-11-16 23:27:51'),(24,'Adminstar perfiles','Consultar y modificar perfiles',1,'2018-11-16 20:37:17','2018-11-16 23:27:51'),(25,'Controlar Visitas Recurrentes','Registar, consultar y Modificar visitas recurrentes del usuario',1,'2018-11-16 20:37:17','2018-11-16 23:27:51'),(26,'Administar Visitas Recurrentes','Consultar y manipular visitas recurrentes de  todos los usuarios',1,'2018-11-16 20:37:17','2018-11-16 23:27:51'),(27,'Administrar Recidente','Agregar, Modificar  y Consultar Recidentes',1,'2018-11-16 23:27:24','2018-11-16 23:27:51'),(28,'Administrar Repositorio','Agregar, Consultar y Elimnar Archvos',1,'2018-11-16 23:27:24','2018-11-16 23:27:51'),(29,'Consultar Repositorio',NULL,1,'2018-11-16 23:27:24','2018-11-16 23:27:51'),(30,'Administar Mensajes','Crear, Mandar, Consultar Mensajes',1,'2018-11-16 23:27:24','2018-11-16 23:27:51'),(31,'Recibir y Consultar Mensajes',NULL,1,'2018-11-16 23:27:24','2018-11-16 23:27:51'),(32,'Administrar Permisos','Consultar y Asignar Permisos',1,'2018-11-16 23:27:24','2018-11-16 23:27:51');
/*!40000 ALTER TABLE `cat_permiso` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Sgbd`@`localhost`*/ /*!50003 TRIGGER `new_cat_permiso` BEFORE INSERT ON `cat_permiso` FOR EACH ROW BEGIN  
			SET NEW.Fecha_Alta = CURRENT_TIMESTAMP;
		END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Sgbd`@`localhost`*/ /*!50003 TRIGGER `update_cat_permiso` BEFORE UPDATE ON `cat_permiso` FOR EACH ROW BEGIN  
			SET NEW.Fecha_Modificacion = CURRENT_TIMESTAMP;
		END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `cat_rol`
--

DROP TABLE IF EXISTS `cat_rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cat_rol` (
  `PK_cat_rol` int(11) NOT NULL AUTO_INCREMENT,
  `Rol` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `Descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `Estatus` tinyint(1) NOT NULL DEFAULT '0',
  `Fecha_Alta` timestamp NOT NULL,
  `Fecha_Modificacion` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`PK_cat_rol`),
  UNIQUE KEY `Rol_UNIQUE` (`Rol`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_rol`
--

LOCK TABLES `cat_rol` WRITE;
/*!40000 ALTER TABLE `cat_rol` DISABLE KEYS */;
INSERT INTO `cat_rol` VALUES (1,'Administrador',NULL,1,'2018-11-17 00:12:13','2018-11-20 19:39:35'),(2,'Recepcion',NULL,1,'2018-11-17 00:12:13','2018-11-20 19:39:35'),(3,'Recidente',NULL,1,'2018-11-17 00:12:13','2018-11-20 19:39:35');
/*!40000 ALTER TABLE `cat_rol` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Sgbd`@`localhost`*/ /*!50003 TRIGGER `new_cat_rol` BEFORE INSERT ON `cat_rol` FOR EACH ROW BEGIN  
			SET NEW.Fecha_Alta = CURRENT_TIMESTAMP;
		END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Sgbd`@`localhost`*/ /*!50003 TRIGGER `update_cat_rol` BEFORE UPDATE ON `cat_rol` FOR EACH ROW BEGIN  
			SET NEW.Fecha_Modificacion = CURRENT_TIMESTAMP;
		END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `cat_tipo_espacio`
--

DROP TABLE IF EXISTS `cat_tipo_espacio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cat_tipo_espacio` (
  `PK_cat_tipo` int(11) NOT NULL AUTO_INCREMENT,
  `Tipo` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `Descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `Estatus` tinyint(1) NOT NULL DEFAULT '0',
  `Fecha_Alta` timestamp NOT NULL,
  `Fecha_Modificacion` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`PK_cat_tipo`),
  UNIQUE KEY `Tipo_UNIQUE` (`Tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_tipo_espacio`
--

LOCK TABLES `cat_tipo_espacio` WRITE;
/*!40000 ALTER TABLE `cat_tipo_espacio` DISABLE KEYS */;
INSERT INTO `cat_tipo_espacio` VALUES (1,'Departamento',NULL,1,'2018-11-14 18:01:53','2018-11-14 18:02:24'),(2,'Penthouse',NULL,1,'2018-11-14 18:01:53','2018-11-14 18:02:24'),(3,'Terrasa',NULL,1,'2018-11-14 18:01:53','2018-11-14 18:02:24'),(4,'Sala de Uso Comun',NULL,1,'2018-11-14 18:01:53','2018-11-14 18:02:24');
/*!40000 ALTER TABLE `cat_tipo_espacio` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Sgbd`@`localhost`*/ /*!50003 TRIGGER `new_cat_tipo_espacio` BEFORE INSERT ON `cat_tipo_espacio` FOR EACH ROW BEGIN  
			SET NEW.Fecha_Alta = CURRENT_TIMESTAMP;
		END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Sgbd`@`localhost`*/ /*!50003 TRIGGER `update_cat_tipo_espacio` BEFORE UPDATE ON `cat_tipo_espacio` FOR EACH ROW BEGIN  
			SET NEW.Fecha_Modificacion = CURRENT_TIMESTAMP;
		END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `cat_tipo_mensaje`
--

DROP TABLE IF EXISTS `cat_tipo_mensaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cat_tipo_mensaje` (
  `PK_tipo` int(11) NOT NULL AUTO_INCREMENT,
  `Tipo_mensaje` varchar(21) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `Estatus` tinyint(1) NOT NULL DEFAULT '0',
  `Fecha_Alta` timestamp NOT NULL,
  `Fecha_Modificacion` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`PK_tipo`),
  UNIQUE KEY `Tipo_mensaje_UNIQUE` (`Tipo_mensaje`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_tipo_mensaje`
--

LOCK TABLES `cat_tipo_mensaje` WRITE;
/*!40000 ALTER TABLE `cat_tipo_mensaje` DISABLE KEYS */;
INSERT INTO `cat_tipo_mensaje` VALUES (1,'Urgente',1,'2018-11-27 01:04:34','2018-11-27 01:05:00'),(2,'Informativo',1,'2018-11-27 01:04:34','2018-11-27 01:05:00'),(3,'Alerta',1,'2018-11-27 01:04:34','2018-11-27 01:05:00'),(4,'Notificacion',1,'2018-11-27 01:04:34','2018-11-27 01:05:00');
/*!40000 ALTER TABLE `cat_tipo_mensaje` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Sgbd`@`localhost`*/ /*!50003 TRIGGER `new_cat_tipo_mensaje` BEFORE INSERT ON `cat_tipo_mensaje` FOR EACH ROW BEGIN 
			SET NEW.Fecha_Alta = CURRENT_TIMESTAMP;
		END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Sgbd`@`localhost`*/ /*!50003 TRIGGER `update_cat_tipo_mensaje` BEFORE UPDATE ON `cat_tipo_mensaje` FOR EACH ROW BEGIN  
			SET NEW.Fecha_Modificacion = CURRENT_TIMESTAMP;
		END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `cat_tipo_persona`
--

DROP TABLE IF EXISTS `cat_tipo_persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cat_tipo_persona` (
  `PK_cat_tipo` int(11) NOT NULL AUTO_INCREMENT,
  `Tipo` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `Descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `Estatus` tinyint(1) NOT NULL DEFAULT '0',
  `Fecha_Alta` timestamp NOT NULL,
  `Fecha_Modificacion` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`PK_cat_tipo`),
  UNIQUE KEY `Tipo_UNIQUE` (`Tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_tipo_persona`
--

LOCK TABLES `cat_tipo_persona` WRITE;
/*!40000 ALTER TABLE `cat_tipo_persona` DISABLE KEYS */;
INSERT INTO `cat_tipo_persona` VALUES (1,'Propietario',NULL,1,'2018-11-14 01:18:42','2018-11-14 01:20:40'),(2,'Inquilino',NULL,1,'2018-11-14 01:18:42','2018-11-14 01:20:40'),(3,'Familia',NULL,1,'2018-11-14 01:18:42','2018-11-14 01:20:40'),(4,'Personal',NULL,1,'2018-11-14 01:18:42','2018-11-14 01:20:40'),(5,'Visita Recurrente',NULL,1,'2018-11-14 01:18:42','2018-11-14 01:20:40'),(6,'Recepcionista',NULL,1,'2018-11-14 16:34:29','2018-11-14 16:35:07'),(7,'Administrador',NULL,1,'2018-11-20 23:56:13',NULL);
/*!40000 ALTER TABLE `cat_tipo_persona` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Sgbd`@`localhost`*/ /*!50003 TRIGGER `new_cat_tipo_persona` BEFORE INSERT ON `cat_tipo_persona` FOR EACH ROW BEGIN  
			SET NEW.Fecha_Alta = CURRENT_TIMESTAMP;
		END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Sgbd`@`localhost`*/ /*!50003 TRIGGER `update_cat_tipo_persona` BEFORE UPDATE ON `cat_tipo_persona` FOR EACH ROW BEGIN  
			SET NEW.Fecha_Modificacion = CURRENT_TIMESTAMP;
		END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `cuenta`
--

DROP TABLE IF EXISTS `cuenta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cuenta` (
  `PK_cuenta` int(11) NOT NULL AUTO_INCREMENT,
  `FK_usuario` int(11) NOT NULL,
  `Descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `Estatus` tinyint(1) NOT NULL DEFAULT '0',
  `Fecha_Alta` timestamp NOT NULL,
  `Fecha_Modificacion` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`PK_cuenta`),
  KEY `Usuario_Cuenta_idx` (`FK_usuario`),
  CONSTRAINT `Usuario_Cuenta` FOREIGN KEY (`FK_usuario`) REFERENCES `usuario` (`pk_usuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuenta`
--

LOCK TABLES `cuenta` WRITE;
/*!40000 ALTER TABLE `cuenta` DISABLE KEYS */;
INSERT INTO `cuenta` VALUES (1,6,NULL,1,'2018-11-23 23:25:37',NULL);
/*!40000 ALTER TABLE `cuenta` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Sgbd`@`localhost`*/ /*!50003 TRIGGER `new_cuenta` BEFORE INSERT ON `cuenta` FOR EACH ROW BEGIN
		SET NEW.Fecha_Alta = CURRENT_TIMESTAMP;
	END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Sgbd`@`localhost`*/ /*!50003 TRIGGER `update_cuenta` BEFORE UPDATE ON `cuenta` FOR EACH ROW BEGIN
		SET NEW.Fecha_Modificacion = CURRENT_TIMESTAMP;
	END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `documento`
--

DROP TABLE IF EXISTS `documento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `documento` (
  `PK_documento` int(11) NOT NULL AUTO_INCREMENT,
  `Token` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `Ruta` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `Estatus` tinyint(1) NOT NULL DEFAULT '0',
  `Fecha_Alta` timestamp NOT NULL,
  `Fecha_Modificacion` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`PK_documento`),
  UNIQUE KEY `Token_UNIQUE` (`Token`),
  UNIQUE KEY `Patch_UNIQUE` (`Ruta`)
) ENGINE=InnoDB AUTO_INCREMENT=999 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documento`
--

LOCK TABLES `documento` WRITE;
/*!40000 ALTER TABLE `documento` DISABLE KEYS */;
INSERT INTO `documento` VALUES (1,'6533cdd6dbdd8e4306269c21147df567','http://dummyimage.com/173x103.png/dddddd/000000',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(2,'93b7adc4264a6ca77c14c6d65cc3e83e','http://dummyimage.com/131x211.png/5fa2dd/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(3,'e5437a9974659b564050de244f63e564','http://dummyimage.com/163x130.png/cc0000/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(4,'3ce47dc87ad91340cdccdd38468a0562','http://dummyimage.com/228x220.png/cc0000/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(5,'e7277b8c1472ab60113ad0c24be55182','http://dummyimage.com/231x130.png/5fa2dd/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(6,'2ae3ffdb7ada38a4790c6871bd424096','http://dummyimage.com/233x124.png/dddddd/000000',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(7,'ce2c76baf37aa686d390427e1ae10049','http://dummyimage.com/232x231.png/5fa2dd/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(8,'63391ae731ca1d731f8644551ef0a37c','http://dummyimage.com/112x165.png/dddddd/000000',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(9,'8c0d243c3cf2edd19357ad01087932a7','http://dummyimage.com/143x182.png/ff4444/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(10,'63d19561aed887367cf9bce00a76af10','http://dummyimage.com/197x120.png/dddddd/000000',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(11,'4478abf4f6d558b4ab5026fea946981c','http://dummyimage.com/152x197.png/cc0000/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(12,'413f6cffa9e80d2dd46913a74cf428b3','http://dummyimage.com/164x230.png/ff4444/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(13,'be8760666b67dad0c26bb151244d83b6','http://dummyimage.com/238x209.png/ff4444/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(14,'7001003db0d77984cbd9544a40c23827','http://dummyimage.com/206x104.png/dddddd/000000',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(15,'a33174da8044ae4a74aec049a918674b','http://dummyimage.com/248x194.png/5fa2dd/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(16,'9ba166a364aebeb4b42ee4a188a1e9f3','http://dummyimage.com/216x125.png/dddddd/000000',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(17,'94bd70f7018438ed1adfc39f016a2280','http://dummyimage.com/196x243.png/ff4444/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(18,'39350e9a0c00f55f8194ee5def08b18d','http://dummyimage.com/118x236.png/dddddd/000000',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(19,'e7cec8ad49684ca0dba9065803124219','http://dummyimage.com/101x109.png/5fa2dd/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(20,'bca6c4163d426527db712e0af3b5eea4','http://dummyimage.com/100x239.png/dddddd/000000',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(21,'1e47366cd54508ff83d425ea5b61fda9','http://dummyimage.com/124x151.png/dddddd/000000',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(22,'f312c56cb3abb611dc3b002bd5154234','http://dummyimage.com/149x171.png/5fa2dd/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(23,'fd258df2308a29d138994151f85bfe08','http://dummyimage.com/103x231.png/5fa2dd/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(24,'88b5b67f890fe31836bebf7753451d2a','http://dummyimage.com/158x159.png/5fa2dd/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(25,'da0f67a7f2bc4e4ba51b6ba676f2f184','http://dummyimage.com/133x198.png/dddddd/000000',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(26,'4d202cba9f874144b8feddc5e4194112','http://dummyimage.com/124x125.png/cc0000/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(27,'b77dd0b5ca10ae1d1a6335dd50110113','http://dummyimage.com/134x161.png/cc0000/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(28,'c31b1068b5c68c28ff70671eb9503df1','http://dummyimage.com/116x102.png/dddddd/000000',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(29,'1c0ef583cc941dd398a86c0b64bc3b65','http://dummyimage.com/116x200.png/cc0000/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(30,'965cf42826176c0675d5eaeea4f69238','http://dummyimage.com/182x144.png/cc0000/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(31,'3e7319938ae0e4e1777499062ee09f2e','http://dummyimage.com/142x100.png/5fa2dd/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(32,'750b247cf977bc38f336b609106eed40','http://dummyimage.com/117x115.png/dddddd/000000',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(33,'5fd7af6729cefa18033e23d0fc672e1e','http://dummyimage.com/196x171.png/dddddd/000000',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(34,'73d56a186eeec39dc3a3ba09f8573604','http://dummyimage.com/193x214.png/5fa2dd/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(35,'1fbceb1b22018c40079cb67a59cd4505','http://dummyimage.com/173x141.png/dddddd/000000',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(36,'909168e3df37a5b943dc4f063468bfc7','http://dummyimage.com/188x181.png/cc0000/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(37,'6d9dc82a1e0f8cbe6748ef8748ddbec4','http://dummyimage.com/243x248.png/ff4444/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(38,'8e1674e14fecab39af456636ff2b00ba','http://dummyimage.com/153x131.png/dddddd/000000',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(39,'d754390d48b65850d4f7c5a7118a494c','http://dummyimage.com/202x133.png/ff4444/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(40,'2032660d2056b4e8207910387f82f6b6','http://dummyimage.com/131x188.png/5fa2dd/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(41,'d91bf8b85738e9a4f58b190d704d007f','http://dummyimage.com/111x231.png/ff4444/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(42,'1cc17fa0f801c251ab22879eb7d087c3','http://dummyimage.com/192x164.png/dddddd/000000',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(43,'f7035ad068b3e6841e80b7f9691795a6','http://dummyimage.com/209x250.png/ff4444/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(44,'97932413bad28a1a95a6079f136d7955','http://dummyimage.com/122x117.png/dddddd/000000',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(45,'68bb8651cf0f5db416cafb6d5374ab3b','http://dummyimage.com/223x146.png/dddddd/000000',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(46,'0cb2f8cf83f9375862ae29e98ad03f0f','http://dummyimage.com/122x207.png/ff4444/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(48,'1327c7e7b04f9f5c18c466f1b9d66b9e','http://dummyimage.com/175x121.png/5fa2dd/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(49,'7e2fea56f1053f51b8393de92e753e28','http://dummyimage.com/183x213.png/dddddd/000000',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(50,'b3f5e35705fbe05f396e3a57718a97b9','http://dummyimage.com/129x220.png/cc0000/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(51,'3fe59cf47fb9cfed75e6ba50f157a35b','http://dummyimage.com/200x210.png/ff4444/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(52,'26760a5a9b6a2c830e97144cc0b760eb','http://dummyimage.com/104x145.png/ff4444/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(53,'1d13fb51d03892b1a1b3c0b7ada8d4c7','http://dummyimage.com/235x157.png/5fa2dd/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(54,'1f75416fadf267d9e833fb4ed6ec2dcc','http://dummyimage.com/197x132.png/ff4444/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(55,'da095d27cefe97ed65ee6be5b310546f','http://dummyimage.com/126x214.png/ff4444/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(56,'3265a601a0acf1ae76c4172b922e9c8f','http://dummyimage.com/236x248.png/ff4444/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(57,'64dbc080872a45d4e829799c3bca1fa7','http://dummyimage.com/165x107.png/dddddd/000000',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(58,'d20754fccc73c65b3bfd47cee1ad9e5b','http://dummyimage.com/248x197.png/5fa2dd/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(59,'809414ab6d9773e526fcb30e102d14d7','http://dummyimage.com/162x165.png/dddddd/000000',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(60,'17d123250ad88aba2adeb3e53e502cd6','http://dummyimage.com/243x145.png/dddddd/000000',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(61,'cd13e319d3a3afa708e85849fa8884bf','http://dummyimage.com/230x129.png/5fa2dd/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(62,'92504f152b3edb807c30387f28e86acf','http://dummyimage.com/182x140.png/ff4444/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(63,'5386373daec7c4c54e36e5e6e3026193','http://dummyimage.com/234x177.png/5fa2dd/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(64,'a7541ab56ec3ba74dfc6f966131d325c','http://dummyimage.com/231x230.png/dddddd/000000',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(65,'5d3474af954a3549ede97ac64a68cb50','http://dummyimage.com/110x228.png/cc0000/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(66,'129e669c88d3649af29f47901d272267','http://dummyimage.com/130x231.png/dddddd/000000',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(67,'853886a3377d7ed57f42b34fb5657914','http://dummyimage.com/236x207.png/cc0000/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(68,'b8a510f793c673c48f4956ac46dade3e','http://dummyimage.com/183x121.png/5fa2dd/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(69,'5b60fee4dbec5e39cebe444fe82dc1d7','http://dummyimage.com/207x225.png/5fa2dd/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(70,'cd59a28cb0519c5c952390f3b0ab4de3','http://dummyimage.com/122x227.png/cc0000/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(71,'22ce34cff6ae1b910b0a2e3dc4ad5101','http://dummyimage.com/242x198.png/ff4444/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(72,'490f353519f01d921ebc45094d5808da','http://dummyimage.com/148x193.png/ff4444/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(73,'f5dc5b8b2a8005b7e902706c2158cac2','http://dummyimage.com/234x241.png/cc0000/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(74,'2b8b2e3ce4962b5618982e08da3fc25e','http://dummyimage.com/243x201.png/cc0000/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(75,'de5dbb95de7abd6666a3f1fb99e4936a','http://dummyimage.com/102x195.png/cc0000/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(76,'6fcada6802f57472554db930bfc6e588','http://dummyimage.com/167x115.png/dddddd/000000',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(77,'912cf3c94e206f2c607673716153173b','http://dummyimage.com/205x218.png/5fa2dd/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(78,'9dc7f76afc789b929d2a2862133f7143','http://dummyimage.com/179x107.png/cc0000/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(79,'889d0f54ddda69abf34955748836a070','http://dummyimage.com/189x230.png/5fa2dd/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(80,'19cd6dae486ab6fef7b743094347bde2','http://dummyimage.com/228x214.png/ff4444/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(81,'63ab74a6d59e95adbc9c06dd05e2f296','http://dummyimage.com/181x248.png/ff4444/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(82,'9716d08855fc42d962666bdfc84b3512','http://dummyimage.com/138x213.png/cc0000/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(83,'f868baa5cc5374b4d59ec1c14f17e6fa','http://dummyimage.com/180x142.png/5fa2dd/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(84,'be1d7a3c3c0bc571efc59ba3ddbb6e68','http://dummyimage.com/162x201.png/dddddd/000000',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(85,'80b5f2d6e4164a27e2c4bd9653313541','http://dummyimage.com/225x216.png/cc0000/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(86,'6f7db7add22bce73228b28da42057c81','http://dummyimage.com/201x189.png/dddddd/000000',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(87,'7d94c3eae26480fbe3949aa8a66d50f8','http://dummyimage.com/234x152.png/ff4444/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(88,'30c452d9b4634cff876811bde8fc0db5','http://dummyimage.com/136x200.png/dddddd/000000',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(89,'0b9218c7673ce71c128964aa461c2a0d','http://dummyimage.com/183x131.png/ff4444/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(90,'b395b043cc2cf108bc0e7a9377b46c05','http://dummyimage.com/228x164.png/ff4444/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(91,'316580bba4ad7bcee5c14089f21fbaaf','http://dummyimage.com/114x145.png/ff4444/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(92,'8404d70d45738c50ff2c0f89ba88a350','http://dummyimage.com/242x186.png/cc0000/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(93,'2a96d86189b6750b73cc5297da3451d6','http://dummyimage.com/112x212.png/5fa2dd/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(94,'c583e3d442382d9b96635c8d7a1b142c','http://dummyimage.com/151x176.png/dddddd/000000',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(95,'110ec2e2dcd116a693ef536f40cfc3bd','http://dummyimage.com/204x193.png/5fa2dd/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(96,'95ec5d270322e19fe5ffbe3dfe2063cd','http://dummyimage.com/196x177.png/5fa2dd/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(97,'1877b6eed3dfbea76414c6c6c0e35ef5','http://dummyimage.com/164x119.png/dddddd/000000',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(98,'23aaeeee25c9da6d4533d38dc67476c2','http://dummyimage.com/180x174.png/dddddd/000000',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(99,'621d093c26d31519c7ea0c64319f123e','http://dummyimage.com/215x102.png/dddddd/000000',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(100,'df900f36da9783377cb7d858bcbd1866','http://dummyimage.com/223x137.png/5fa2dd/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(101,'682c0bc4aa28831f5fd3750379dc9637','http://dummyimage.com/152x146.png/ff4444/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(102,'075a247a037c9402a726ded02b8d3fb7','http://dummyimage.com/152x177.png/dddddd/000000',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(103,'1296ad757df536b507f654d9da43cf1e','http://dummyimage.com/171x172.png/cc0000/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(104,'742b62c565b201c3946c36f0a0b23696','http://dummyimage.com/143x222.png/ff4444/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(105,'da1987596bbf0e743590215a9956659d','http://dummyimage.com/214x122.png/cc0000/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(106,'10aa35d954f7dbae9ab1e4e5fd91075d','http://dummyimage.com/179x100.png/cc0000/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(107,'2f48b329bfe3c23172403e513b1f78ba','http://dummyimage.com/176x178.png/dddddd/000000',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(108,'80770e9b852b8223696b33b31f4a44a2','http://dummyimage.com/198x216.png/cc0000/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(109,'de2daced1c779b7132885b241dcd1148','http://dummyimage.com/201x162.png/cc0000/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(110,'fb41ed8e8c64ed3502d016b45d79ad8e','http://dummyimage.com/246x225.png/ff4444/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(111,'05a4ea3928a758a92aae0c9e6b6ea933','http://dummyimage.com/126x195.png/5fa2dd/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(112,'5492d02a9bbc78ec53c16f09a8c2be4d','http://dummyimage.com/233x246.png/cc0000/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(113,'d74d5d00ef85bf28337bda49904ff1af','http://dummyimage.com/180x185.png/cc0000/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(114,'9f1cddbaaf9329b619899165a9ab22ed','http://dummyimage.com/196x226.png/dddddd/000000',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(115,'01265cc913765621eccbb54ebc1f942b','http://dummyimage.com/191x140.png/5fa2dd/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(116,'f1668f42862c4a983d8770d6bba81e8e','http://dummyimage.com/247x248.png/cc0000/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(117,'dabc50ab1af82d9296c7ed623ad61b51','http://dummyimage.com/119x169.png/cc0000/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(118,'b7dd5b9595cfda1adc269762f4ed5044','http://dummyimage.com/230x163.png/cc0000/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(119,'bc1d3cdac38f37ae68b5a87bba894867','http://dummyimage.com/210x136.png/cc0000/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(120,'e78ab93ab4f5afd7047a41a4b5f84596','http://dummyimage.com/153x219.png/5fa2dd/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(121,'081fb5913bb1598078b6c0784cd51a27','http://dummyimage.com/171x146.png/ff4444/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(122,'889fd041bcc6dda78b24ab5bc0d15e03','http://dummyimage.com/121x128.png/ff4444/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(123,'99a89d378505859961172b028f34def0','http://dummyimage.com/226x146.png/ff4444/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(124,'0fcce0ac6f568643ac21f31826a4fe17','http://dummyimage.com/108x250.png/5fa2dd/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(125,'180214fff89ddb25ae305060f190dbcd','http://dummyimage.com/167x124.png/ff4444/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(126,'a0d26db8bc960f4cf89a600699657e42','http://dummyimage.com/217x176.png/ff4444/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(127,'df4b7dc5b44fa9062b1b7260ace11048','http://dummyimage.com/183x146.png/5fa2dd/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(128,'fad69f294379555857ebd9d1a2689eef','http://dummyimage.com/240x224.png/5fa2dd/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(129,'06a1fd14aace2fae4cc3db28c69b80f2','http://dummyimage.com/236x242.png/ff4444/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(130,'bbde037aeaf0a66c4124ffc5805e1725','http://dummyimage.com/241x185.png/cc0000/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(131,'a8add17b00e3553ce460d28f2eed1667','http://dummyimage.com/239x102.png/5fa2dd/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(132,'db3bc03454bc004eb5e23d64f588b84a','http://dummyimage.com/144x119.png/cc0000/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(133,'a237b527a94a55e13feaab5c20ce1215','http://dummyimage.com/132x126.png/5fa2dd/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(134,'563f29dcf7e2b202efc8023d39fe4963','http://dummyimage.com/170x206.png/cc0000/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(135,'ad4c57ad99ca3ea1b05e0ae8c652bdc6','http://dummyimage.com/198x188.png/5fa2dd/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(136,'d2460617fac0806a2f81c38fe0478084','http://dummyimage.com/116x201.png/ff4444/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(137,'65de228d435e601e0da8e8d4917c5ac6','http://dummyimage.com/181x186.png/ff4444/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(138,'d833ab467d291b32001ee65d0839e30a','http://dummyimage.com/194x128.png/dddddd/000000',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(139,'57c400496a32c355e296a5ca415b097d','http://dummyimage.com/199x196.png/5fa2dd/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(140,'7e003083c9d00fe8912575f132761499','http://dummyimage.com/116x248.png/cc0000/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(141,'e2b3870ccd8dde2052f23d6b11e3512f','http://dummyimage.com/216x158.png/cc0000/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(142,'4b4b6ff9b8cc5398c1b39b5f387a03b2','http://dummyimage.com/167x236.png/5fa2dd/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(143,'5eb3befd1da38c88557e5cd655969d55','http://dummyimage.com/102x250.png/cc0000/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(144,'a37d1f697053b18f29ef521565df37ff','http://dummyimage.com/249x112.png/dddddd/000000',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(145,'449033a034c340a1a66e554cc45f0d6a','http://dummyimage.com/105x246.png/cc0000/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(146,'aca3957d3efc3983b8a6e803eb79b1bf','http://dummyimage.com/246x101.png/ff4444/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(147,'7727337b8f0c7c9317871c2fbc616071','http://dummyimage.com/203x212.png/dddddd/000000',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(148,'5d335f59080803d245be0ab0278dd141','http://dummyimage.com/192x102.png/cc0000/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(149,'7e718982176c7c83afb62a95a355a3e5','http://dummyimage.com/134x216.png/5fa2dd/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(150,'36c3077c60b4192317dbb500bba3a821','http://dummyimage.com/216x170.png/cc0000/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(151,'d0bd0f4e7a89f481f492526ac8d42ffb','http://dummyimage.com/164x209.png/cc0000/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(152,'02eebd8a8d6bf2bf717b591e268b7a42','http://dummyimage.com/166x246.png/5fa2dd/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(153,'12f1cf7ed44e65f91877bb7c0384a456','http://dummyimage.com/192x138.png/ff4444/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(154,'91611ea5748b2e9b8823498ab6cddfcf','http://dummyimage.com/228x178.png/5fa2dd/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(155,'480654c8b9bc791a6121dca529e7e7b2','http://dummyimage.com/212x118.png/dddddd/000000',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(156,'bd7f1b3bc733437d285bb3102292a120','http://dummyimage.com/196x100.png/cc0000/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(157,'572491016562d9f4ed2594ac6dbfd700','http://dummyimage.com/154x213.png/5fa2dd/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(158,'9f0a02ba25523ec6d763033ed02dcaaa','http://dummyimage.com/238x233.png/cc0000/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(159,'3ddc077790ebac474315ad3f72b5fe5a','http://dummyimage.com/205x100.png/cc0000/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(160,'ca49d8223253e0a0c0f53223d9709f3c','http://dummyimage.com/101x107.png/dddddd/000000',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(161,'2328a0fb7ae8c632a5ce5d010d868d21','http://dummyimage.com/231x191.png/dddddd/000000',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(162,'d797ea05dee0e49923b63524d1145ee0','http://dummyimage.com/180x178.png/cc0000/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(163,'2c21c26460acf89c1a2c4c87abbfbc8c','http://dummyimage.com/178x114.png/dddddd/000000',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(164,'5178881fde8df936ba9df4ae070422c1','http://dummyimage.com/128x153.png/cc0000/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(165,'f4b396291f177c4111262d69ff95344c','http://dummyimage.com/126x245.png/5fa2dd/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(166,'d29230995b7e161a625c90aa8ec70b30','http://dummyimage.com/244x232.png/cc0000/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(167,'81c1f12355818e03e7f4acb1f444377f','http://dummyimage.com/198x130.png/dddddd/000000',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(168,'902f58320c4a0acfdda56eda3d841f44','http://dummyimage.com/161x132.png/ff4444/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(169,'dc6551c451c42f5b75c52ca436ef7af9','http://dummyimage.com/183x143.png/ff4444/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(170,'1742ad26934f820daac6405ced84095d','http://dummyimage.com/165x227.png/dddddd/000000',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(171,'5e3a52a90caa8e23005c5f51d81e88ed','http://dummyimage.com/246x229.png/cc0000/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(172,'999782396267c080f0d9e3525a8fc2c4','http://dummyimage.com/184x202.png/ff4444/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(173,'4b15dfc26181bdec226cf65f1e9bfb45','http://dummyimage.com/123x124.png/dddddd/000000',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(174,'c4b035558ba3c773b7341c9fce647377','http://dummyimage.com/115x221.png/5fa2dd/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(175,'a5a3a74484bd74d5e8a628388a058eef','http://dummyimage.com/220x134.png/5fa2dd/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(176,'d45d5f3bb7a72178404e9682e927e1a1','http://dummyimage.com/104x104.png/ff4444/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(177,'52a4c3473cd05da7f4a712258f3d7843','http://dummyimage.com/249x110.png/5fa2dd/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(178,'fd68157aa64d09f06aad93775f27b648','http://dummyimage.com/223x214.png/cc0000/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(179,'18f6b462983f583b70dce4178c9a2b78','http://dummyimage.com/109x203.png/5fa2dd/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(180,'f7c9ad7768941b7247c2c6890a6c7b41','http://dummyimage.com/234x222.png/5fa2dd/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(181,'770f9fde1b446aee217db39fd8079fdd','http://dummyimage.com/248x201.png/5fa2dd/ffffff',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(182,'9f040ad60814cc6334b189b7d38bf536','http://dummyimage.com/243x132.png/dddddd/000000',1,'2018-11-26 21:08:06','2018-11-26 21:09:10'),(183,'0e30c1d808e98c7ee091e9241122aff8','http://dummyimage.com/190x213.png/cc0000/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(184,'58cc938ff41b43c690e712b46745675c','http://dummyimage.com/241x221.png/ff4444/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(185,'e99065323428a69b7aa0e31af97a1d76','http://dummyimage.com/132x185.png/5fa2dd/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(186,'bc33ea1e98e61030c6fe564db7ac18ad','http://dummyimage.com/158x161.png/dddddd/000000',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(187,'7087901a2a94a15661377b2f15928b58','http://dummyimage.com/244x219.png/ff4444/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(188,'7b2cb5f22d80e023828e7337e04ccfa1','http://dummyimage.com/244x225.png/cc0000/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(189,'337e7d79c4d574f95fc7d6e2d777d6ba','http://dummyimage.com/133x129.png/ff4444/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(190,'4e555484bed473b8e31cb1db02348827','http://dummyimage.com/237x124.png/ff4444/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(191,'57949a442e3c0ee5d94cc2daba817a5e','http://dummyimage.com/231x190.png/ff4444/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(192,'67b85c64adad68e0094c9033065b5a31','http://dummyimage.com/243x209.png/dddddd/000000',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(193,'c12813c78d9b615f5d6ca06b0ca8dae1','http://dummyimage.com/131x172.png/5fa2dd/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(194,'b1eba612fa4e992abdd5632c4a2bde36','http://dummyimage.com/110x220.png/cc0000/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(195,'308221a45d49973715d23930127c7bdd','http://dummyimage.com/109x237.png/5fa2dd/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(196,'4e2509606b917cae3098c8fe810f6ec6','http://dummyimage.com/147x147.png/5fa2dd/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(197,'9bb62ac66fc595e8fe051598d53176fb','http://dummyimage.com/110x154.png/5fa2dd/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(198,'d2c413e07b069ce6ec1a5a40f5192553','http://dummyimage.com/162x207.png/dddddd/000000',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(199,'153945e1a75e7d36e6350f14efb1b21f','http://dummyimage.com/130x108.png/ff4444/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(200,'02f37e5f611764128f0d85d0145721a9','http://dummyimage.com/124x242.png/ff4444/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(201,'b61b58c879a2aa1988308d4f3c2120f7','http://dummyimage.com/234x156.png/ff4444/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(202,'45023928435707cb9c91a49cf9f8f544','http://dummyimage.com/211x241.png/dddddd/000000',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(203,'9130a1bc51d057dfc593368ce777e826','http://dummyimage.com/246x235.png/5fa2dd/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(204,'bda0a721f8c750d81ade03591f9116b2','http://dummyimage.com/195x110.png/5fa2dd/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(205,'38c4e94e2d80be9e16849ab35684a175','http://dummyimage.com/115x112.png/5fa2dd/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(206,'5ad947670d06fb7cf4ec23084ec22b47','http://dummyimage.com/133x200.png/cc0000/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(207,'9449a0ec0a456b1b9f7bf6878fc2fe0c','http://dummyimage.com/109x232.png/ff4444/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(208,'1ce888ba3aeef8cef4cdffcb3228dc15','http://dummyimage.com/189x187.png/ff4444/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(209,'1ba6c063b879b4a905f869caeb4880ad','http://dummyimage.com/146x221.png/ff4444/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(210,'efea77f45861af2a9605407537247870','http://dummyimage.com/148x117.png/cc0000/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(211,'52d70120ddaacfacccd57cd7de6162cd','http://dummyimage.com/136x137.png/ff4444/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(212,'d184734af1cb601dd39fb53becd4d551','http://dummyimage.com/218x170.png/cc0000/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(213,'701a771cfe87358eccfdee0598da6bd8','http://dummyimage.com/231x231.png/cc0000/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(214,'8690d90fe7ecf50441c9e7be3a5ae5be','http://dummyimage.com/157x248.png/dddddd/000000',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(215,'a3083387690ce59704ecc82379a9e2e8','http://dummyimage.com/196x207.png/5fa2dd/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(216,'d44d46ef67f9aad8e3953ba496b4be35','http://dummyimage.com/122x242.png/ff4444/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(217,'86e66ba7ad7f733758f77594825868c5','http://dummyimage.com/122x244.png/dddddd/000000',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(218,'03f6f5db060863b45e136af0e835b21c','http://dummyimage.com/244x168.png/ff4444/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(219,'c99a9359447643721d5fd83e5600e0d4','http://dummyimage.com/170x175.png/ff4444/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(220,'2efc815f9c7dacde86ec4310a78a6e00','http://dummyimage.com/190x161.png/5fa2dd/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(221,'0ff8406570c4effe2e0cb5648a5ac0cc','http://dummyimage.com/122x160.png/5fa2dd/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(222,'5361a436066d9cba93170d09f9a6068c','http://dummyimage.com/230x106.png/5fa2dd/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(223,'cd1e05c93f613a84e16195c278c02d4b','http://dummyimage.com/112x192.png/5fa2dd/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(224,'5d56df89a77c3489f4c454c40543dd78','http://dummyimage.com/220x232.png/5fa2dd/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(225,'61d2f5563d72a0d6526aa9e865d72116','http://dummyimage.com/189x101.png/cc0000/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(226,'2e8c21eb371eda961d41367ae43bfab6','http://dummyimage.com/139x149.png/cc0000/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(227,'ffb189bc72ad2731383cf5a265c39b1d','http://dummyimage.com/112x142.png/dddddd/000000',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(228,'2614b210a98342bcefd428141ae2bf61','http://dummyimage.com/211x247.png/ff4444/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(229,'6005fb1f68a2cbf2f4d4cc56080d526d','http://dummyimage.com/175x149.png/cc0000/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(231,'56c4869bea6bb4a9a6653436f091fe90','http://dummyimage.com/240x140.png/5fa2dd/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(232,'8ba66bf5ef487bf3ccafbdcb9c38461a','http://dummyimage.com/134x192.png/dddddd/000000',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(233,'fdf9deaf3acafca6f2c5d2e0be1b7bbd','http://dummyimage.com/158x163.png/ff4444/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(234,'e67ff68b9389e2952bb3d832301dc4ec','http://dummyimage.com/172x181.png/cc0000/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(235,'33f0f82152df7d33b1f9ae22f2ed9f90','http://dummyimage.com/246x105.png/cc0000/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(236,'a438a1753b4e8d236d52c5fde868a906','http://dummyimage.com/158x200.png/ff4444/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(237,'080e0a688c221985ec2a25049d3782e4','http://dummyimage.com/171x210.png/5fa2dd/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(238,'01e5dd283a3c8382f1cb15fcbffc3a0b','http://dummyimage.com/146x235.png/ff4444/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(239,'015e38fd110b737eec353928927599cd','http://dummyimage.com/180x125.png/cc0000/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(240,'c5f184961acbb8e5157f7777ac2a86d9','http://dummyimage.com/138x243.png/5fa2dd/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(241,'6ea475df01a939a1774ae29f49b7de85','http://dummyimage.com/186x142.png/cc0000/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(242,'bbd7247a76cd7dc1c0d89fdb2d50b7ce','http://dummyimage.com/141x189.png/cc0000/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(243,'08c0a117d2dea27c797b189f07f3b59b','http://dummyimage.com/144x241.png/dddddd/000000',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(244,'719379ee8dae781a4bda504fdc7d2cce','http://dummyimage.com/133x120.png/cc0000/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(245,'65aa57bef398684a0178d859b0620595','http://dummyimage.com/232x147.png/5fa2dd/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(246,'92733f3a99f7f58bb48cc449407e21c5','http://dummyimage.com/184x144.png/5fa2dd/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(247,'9b1f383a043933cee47d7d326ad3a52a','http://dummyimage.com/242x220.png/dddddd/000000',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(248,'78bfa470fa1567ba9e9c3e516d4c3f70','http://dummyimage.com/249x137.png/dddddd/000000',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(249,'24d128fae15bca6550599fe3e32eb27b','http://dummyimage.com/231x223.png/dddddd/000000',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(250,'8838be52108d912ed413370346f5cb21','http://dummyimage.com/178x116.png/cc0000/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(251,'cb3c51d8fdc84d7be8b153ee4fafd42e','http://dummyimage.com/155x129.png/dddddd/000000',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(252,'e0ccc72d6616c4c0efb5cc0c8cd47103','http://dummyimage.com/163x139.png/cc0000/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(253,'eaec4e07cd89822a3d80dfa3f71930ae','http://dummyimage.com/164x183.png/5fa2dd/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(254,'470c100f4bf751396a7ae170461f83df','http://dummyimage.com/167x140.png/ff4444/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(255,'0dde7fba8b3b7df28ee9377792bccecb','http://dummyimage.com/222x159.png/cc0000/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(256,'efe36d9e72458a79b05da7992f770475','http://dummyimage.com/227x114.png/ff4444/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(257,'1c548eed70546a552479bfef2cd55a0b','http://dummyimage.com/150x125.png/5fa2dd/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(258,'8ece67c07ceaf510bd43d46e5b0f092f','http://dummyimage.com/112x193.png/ff4444/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(259,'c5cb3948e2509c800ea6a34c2295979d','http://dummyimage.com/107x145.png/5fa2dd/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(260,'544dc1b04c304b3cb5fdab27d68da20b','http://dummyimage.com/248x231.png/5fa2dd/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(261,'dc3f9c2dfc261d3c590cc6dd55b7d6ff','http://dummyimage.com/152x144.png/dddddd/000000',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(262,'10654989f450d46bbdd6442005087651','http://dummyimage.com/249x158.png/ff4444/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(263,'d9108f52c352875c2ec50a1b0f417cc1','http://dummyimage.com/130x201.png/dddddd/000000',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(264,'079a3efca47e19454a8543c67a5d98f1','http://dummyimage.com/228x117.png/cc0000/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(265,'022e836303ad88693a870c06ea947da7','http://dummyimage.com/138x163.png/ff4444/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(266,'dd4204d78d534c6291fe54f1bc21ee86','http://dummyimage.com/111x230.png/5fa2dd/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(267,'bce10e82821466df0410ec444c4e6a73','http://dummyimage.com/144x153.png/dddddd/000000',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(268,'1608ce9b0c466da82ab68ce874b4e1fc','http://dummyimage.com/237x234.png/ff4444/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(269,'c2641655f5dccf69eac4a0a3444e218a','http://dummyimage.com/232x199.png/dddddd/000000',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(270,'eae7c3d15fc3c86c7d1feb8e4f38fe96','http://dummyimage.com/129x192.png/cc0000/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(271,'f5640d00956b5a93b6e45d535286bf64','http://dummyimage.com/171x247.png/dddddd/000000',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(272,'889256f71cfc58bbec616623d3085748','http://dummyimage.com/187x206.png/cc0000/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(273,'ef2b0fd0146680f3ecc5f21a1b8e0e5a','http://dummyimage.com/118x143.png/ff4444/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(274,'386f19a66794499e4313fcf33bcb12fa','http://dummyimage.com/221x250.png/5fa2dd/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(275,'261d31a92a3eb560cda79a5f7db96374','http://dummyimage.com/137x206.png/ff4444/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(276,'da0cee508c96538f4b5ffca80e191afb','http://dummyimage.com/118x158.png/ff4444/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(277,'e09aed3613061c6aa311027fbd821557','http://dummyimage.com/237x145.png/cc0000/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(278,'ec6e54ddc7757c671890dc1a666a7f07','http://dummyimage.com/237x146.png/cc0000/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(279,'eef54ec9d970af41ec225a9857130534','http://dummyimage.com/127x181.png/5fa2dd/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(280,'950436c3c7c488621dbca6a7f38df1be','http://dummyimage.com/103x148.png/ff4444/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(281,'feff4ad9515b2a9b2b690459b10983a0','http://dummyimage.com/184x166.png/ff4444/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(282,'5445d6a85a1136a50b5a6fb1936c8a8a','http://dummyimage.com/131x142.png/dddddd/000000',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(283,'d470160dca11bca7db132668492f30db','http://dummyimage.com/124x225.png/ff4444/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(284,'1c1cab9f7ff2ae5cb9bda483d46c77af','http://dummyimage.com/142x161.png/ff4444/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(285,'95e877fcbf93d7be2381fafb9f57a4f4','http://dummyimage.com/242x222.png/dddddd/000000',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(286,'146024d2fd46305c79aaf501fafffd57','http://dummyimage.com/154x242.png/5fa2dd/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(287,'500a9000442d4e9bbf72b97b1e66bb66','http://dummyimage.com/228x116.png/cc0000/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(288,'574fcbbb89f792d589827a3aa3172ca0','http://dummyimage.com/119x168.png/5fa2dd/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(289,'73b2930a4f61557faf8d5cc2ef1e2f5d','http://dummyimage.com/190x145.png/cc0000/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(290,'93775e0b35f48f1e306368e0df136068','http://dummyimage.com/240x188.png/dddddd/000000',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(291,'706673cd8920ccf09166bc0f551a5949','http://dummyimage.com/172x221.png/cc0000/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(292,'73f16690d818514da54b88b49ba74dd7','http://dummyimage.com/208x211.png/ff4444/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(293,'6adaff6b19feac07286d3c24ae443ece','http://dummyimage.com/194x204.png/dddddd/000000',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(294,'e40720bba4bb4d3c70d6a7174088fd64','http://dummyimage.com/218x240.png/dddddd/000000',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(295,'bd5eaac3dce7aac821788d3adb21a935','http://dummyimage.com/108x130.png/ff4444/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(296,'f08af05ec81bb8f6f880b15f83103dee','http://dummyimage.com/128x160.png/5fa2dd/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(297,'5f8d3b5c0baf5d3dc2aa191e2435d0e6','http://dummyimage.com/152x126.png/ff4444/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(298,'cb77259608f748a05fcefc9be42a5d14','http://dummyimage.com/149x221.png/ff4444/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(299,'003255fb9b594f7d678ed6e140c78bcd','http://dummyimage.com/234x220.png/5fa2dd/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(300,'3296711d87607f25a5a39d23a9c89fe0','http://dummyimage.com/154x243.png/cc0000/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(301,'1d50b02089a06c20237f66236aed0001','http://dummyimage.com/249x118.png/ff4444/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(302,'92290be6537ce2256fba8ceebacc9d7c','http://dummyimage.com/144x123.png/dddddd/000000',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(303,'da1ccfe55b318ca3dab8fd8a52357184','http://dummyimage.com/156x129.png/5fa2dd/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(304,'b6fdda564dfdb2423de6e378d3b773b2','http://dummyimage.com/110x236.png/dddddd/000000',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(305,'e7b5766c3b67e6d87a29256572c1f4ac','http://dummyimage.com/247x230.png/5fa2dd/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(306,'477b103ae9603d791309ca469ec1659f','http://dummyimage.com/230x189.png/5fa2dd/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(307,'256aa83d2c27277a7d76bf9d27197c64','http://dummyimage.com/125x153.png/5fa2dd/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(308,'bebe82bdaf8cb672b2a009736724ffed','http://dummyimage.com/236x201.png/cc0000/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(309,'95aec2f56fa589d6cf7adef7f3428a48','http://dummyimage.com/184x121.png/ff4444/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(310,'5b895c2e69a0a2d55503852a8a62ea5e','http://dummyimage.com/136x195.png/5fa2dd/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(311,'2517c7ff0b04f2c66c54c476d08764a8','http://dummyimage.com/174x154.png/cc0000/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(312,'4bca3ea289a01c125f55c9931f0ad509','http://dummyimage.com/177x142.png/cc0000/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(313,'879f5648474d36ab5b321e2449669f2b','http://dummyimage.com/174x111.png/cc0000/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(314,'9d3836e5ed61872c4636a9266f9717e9','http://dummyimage.com/199x166.png/cc0000/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(315,'7b63920d89e250b18831f34f88a04753','http://dummyimage.com/153x196.png/dddddd/000000',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(316,'936c61743f9147881073c992b4c5f3d1','http://dummyimage.com/121x163.png/5fa2dd/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(317,'7018b9340667fdc6927db76ec28e59b0','http://dummyimage.com/162x146.png/5fa2dd/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(318,'5de7b5f1f45eef475d995825beb33054','http://dummyimage.com/242x199.png/cc0000/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(319,'635f292e38c416d38d39c604a6745615','http://dummyimage.com/106x234.png/5fa2dd/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(320,'a20bb6d619fd13f1db0bd6ad0944e195','http://dummyimage.com/154x100.png/5fa2dd/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(321,'98de98570f88d0e443e900aae891e27d','http://dummyimage.com/124x209.png/5fa2dd/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(322,'180a7367b766230ffde40d4bb76fc0f3','http://dummyimage.com/215x123.png/ff4444/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(323,'99dba5940952e6bcb76dc803b3938efd','http://dummyimage.com/139x181.png/cc0000/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(324,'310af331bbec08446e345e71c699e383','http://dummyimage.com/113x212.png/cc0000/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(325,'d6adcafbec135a25a9633e5ea2c6dbc5','http://dummyimage.com/205x149.png/ff4444/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(326,'4e5782aa5ad1349aab3b34d0cdc9a0bf','http://dummyimage.com/250x213.png/cc0000/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(327,'d7e100295c51b0132ea1257e8e7191a1','http://dummyimage.com/214x111.png/5fa2dd/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(328,'b371b5dc7b4937f7525e515d67098888','http://dummyimage.com/168x108.png/dddddd/000000',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(329,'65c332184a15685499c96a1ca6017c6c','http://dummyimage.com/154x202.png/5fa2dd/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(330,'bd2c0b8143e4ca1c3d0f6e28a9afba00','http://dummyimage.com/171x174.png/dddddd/000000',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(331,'966123ac3f5273d0d569891443845be5','http://dummyimage.com/189x185.png/cc0000/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(332,'25be284b8335fa65de1ce4524738e228','http://dummyimage.com/145x250.png/cc0000/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(333,'ba8b1eea17f396cc2bbb702302b16386','http://dummyimage.com/208x138.png/5fa2dd/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(334,'d38556e9e346523e6c5847c9c2f8b8eb','http://dummyimage.com/134x148.png/ff4444/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(335,'38f02f048a3a3544465c3e399a8af199','http://dummyimage.com/208x122.png/dddddd/000000',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(336,'a316b03241f3b394fa1fc23cdc82b6d8','http://dummyimage.com/118x161.png/dddddd/000000',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(337,'912f2a240a7dca6cbc084559d202e647','http://dummyimage.com/129x111.png/5fa2dd/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(338,'2456bc426b35d128446f533de45ee6e2','http://dummyimage.com/175x171.png/ff4444/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(339,'3f43a6698f94e68f4f8b4965e5ddf90e','http://dummyimage.com/193x183.png/dddddd/000000',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(340,'6938337aac1ac159d87b4386dad3771b','http://dummyimage.com/167x247.png/dddddd/000000',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(341,'9bb503c6b2f5762121b6580c20644c92','http://dummyimage.com/179x135.png/dddddd/000000',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(342,'1413c62b2d3ba83a75e397d61b917e7c','http://dummyimage.com/181x201.png/cc0000/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(343,'016da116a16100ae47bb3db83824d429','http://dummyimage.com/130x103.png/cc0000/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(344,'713ce76fbe78c975b844812ee15f3ffa','http://dummyimage.com/129x102.png/cc0000/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(345,'39bce275f3c03bf7fc1d9f111e5badeb','http://dummyimage.com/132x234.png/cc0000/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(346,'8918d7f58d3ef87ad5cdd43c622c387d','http://dummyimage.com/231x207.png/5fa2dd/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(347,'df5e988c7f32b955c3ad97471d98fceb','http://dummyimage.com/181x173.png/ff4444/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(348,'5263edec204c4484f11d89d22d36a567','http://dummyimage.com/213x116.png/5fa2dd/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(349,'ff02aca6285944e4fb086af28d838111','http://dummyimage.com/245x149.png/cc0000/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(350,'82d424e1aff6e55c32e0b393c589caae','http://dummyimage.com/140x139.png/ff4444/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(351,'a74321c92416e6287aff0ed8290c00eb','http://dummyimage.com/155x143.png/ff4444/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(352,'8f6295f0b7863946b9d969ff41bc3015','http://dummyimage.com/173x108.png/ff4444/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(353,'ea29db21207bfb041ceabeccc575c71f','http://dummyimage.com/243x186.png/ff4444/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(354,'0cd764c388c14a2c458626bcf58d9289','http://dummyimage.com/132x202.png/ff4444/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(355,'fb75af4b51380cb93179394b7331f9e0','http://dummyimage.com/146x239.png/cc0000/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(356,'f3d38b9aeb99cfca85f800d93f551e9f','http://dummyimage.com/162x233.png/ff4444/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(357,'4e57f39dabe5cf836e68b0d4d7a14301','http://dummyimage.com/150x201.png/ff4444/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(358,'85d0198c3a4ae29ab38c56629025afd2','http://dummyimage.com/218x151.png/5fa2dd/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(359,'cfafd24eb85813f911054145cb2630d4','http://dummyimage.com/225x186.png/ff4444/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(360,'87816bb0004e6cb4a3d2b32b9c09d91f','http://dummyimage.com/232x182.png/cc0000/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(361,'20001c4f26a8711b519a3e35f2628276','http://dummyimage.com/187x199.png/5fa2dd/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(362,'a39ae81ed5d473470d7f8d07703d782b','http://dummyimage.com/237x186.png/ff4444/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(363,'19170660cb0eb86c627f9cad93765c5e','http://dummyimage.com/133x125.png/dddddd/000000',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(364,'90a0b4d854a19427e48f017a8ec56b14','http://dummyimage.com/108x133.png/cc0000/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(365,'ecdb98d93fba5c134c324c6c49f354ce','http://dummyimage.com/247x189.png/dddddd/000000',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(366,'58101fcaab610ad7e49941028835bf52','http://dummyimage.com/115x175.png/ff4444/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(367,'4c7229f64f14c6a8b515bb53fa43f24b','http://dummyimage.com/192x241.png/5fa2dd/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(368,'67e9e92ae64ce3a1b50fb1a7350420e5','http://dummyimage.com/109x144.png/ff4444/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(369,'72a3b5603634d96a8e00aa764971a354','http://dummyimage.com/235x159.png/dddddd/000000',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(370,'93c76b52afb9e52c391237a8d38ab0ee','http://dummyimage.com/173x148.png/5fa2dd/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(372,'87e9446ec1bace61be85bbfecec70c3e','http://dummyimage.com/122x171.png/ff4444/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(373,'56790e1d33ae2f8cb083adced8da2d21','http://dummyimage.com/190x244.png/ff4444/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(374,'a862b19c8f12dce24265d72cf6abcbed','http://dummyimage.com/147x247.png/ff4444/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(375,'8a936b54694e9f96a943660b5a3f197c','http://dummyimage.com/144x216.png/cc0000/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(376,'2d4bf0ce74811cef435924e497176d54','http://dummyimage.com/186x161.png/cc0000/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(377,'88686a71db0f1f5b1dc552bad4dbb22c','http://dummyimage.com/156x196.png/5fa2dd/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(378,'fa3a3a77cfdadae5ab1974c3cd5bd43d','http://dummyimage.com/116x241.png/cc0000/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(379,'1905b75d8f6edafdbcf6e2d52e513ad3','http://dummyimage.com/108x248.png/ff4444/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(380,'70b1201cf819dd166b142402d81ccd16','http://dummyimage.com/189x223.png/5fa2dd/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(381,'ae59277819f94ddf90521ce68395b1a5','http://dummyimage.com/123x246.png/ff4444/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(382,'1001e4a4fdddc7735d71152a8e5fff4d','http://dummyimage.com/155x176.png/dddddd/000000',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(383,'a0c0a4032cb4e617e9562a75bcf49352','http://dummyimage.com/163x249.png/cc0000/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(384,'86d23fcf4dd714e656fe543d7ee9c4b0','http://dummyimage.com/197x185.png/dddddd/000000',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(385,'c6dc28e49722048c55f0a61d230a9563','http://dummyimage.com/135x162.png/cc0000/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(386,'38df27ea0d756a78a101c4eafbbabcc3','http://dummyimage.com/234x164.png/ff4444/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(387,'a8e76f3bd8fc0c3c0e624b2f28048e3e','http://dummyimage.com/208x107.png/cc0000/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(388,'8571264fd713213c8d689102788a20bd','http://dummyimage.com/124x133.png/cc0000/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(389,'9af6def6368c9f2ecc724bdff21ed4a0','http://dummyimage.com/128x142.png/dddddd/000000',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(390,'8d9d5b0b4b2ed26b29911ae32657c518','http://dummyimage.com/151x102.png/cc0000/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(391,'0c0b9f98c9c6fdc61a880ac6d2ef62a5','http://dummyimage.com/245x127.png/ff4444/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(392,'0612b0d6fff362b0f0473f9c45c7a5cf','http://dummyimage.com/190x117.png/ff4444/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(393,'79a7968dcb159096e751eb4820d45da0','http://dummyimage.com/129x226.png/cc0000/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(394,'972757d05c29e1b5ced947d5c3cd7291','http://dummyimage.com/175x152.png/dddddd/000000',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(395,'7fef54c9d4f5b70281a3a0084b1d385a','http://dummyimage.com/105x118.png/dddddd/000000',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(396,'7cd6c29fe6c71237d0ba699105d45dfd','http://dummyimage.com/170x182.png/dddddd/000000',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(397,'7c2fe82b902f535051301a0e50c77824','http://dummyimage.com/221x147.png/dddddd/000000',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(398,'52655bc1217fe3f879c3c0daff491e38','http://dummyimage.com/162x167.png/5fa2dd/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(399,'96d7d3b214e93be4077a512f4ebaf0ee','http://dummyimage.com/149x229.png/cc0000/ffffff',1,'2018-11-26 21:08:07','2018-11-26 21:09:10'),(400,'337081e4d2bf13b3355881656382be61','http://dummyimage.com/172x152.png/ff4444/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(401,'e45a205fa4d3d5b9731b5a889467b998','http://dummyimage.com/182x179.png/dddddd/000000',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(402,'f311d3b572017176d2bdde81552a1e62','http://dummyimage.com/193x129.png/dddddd/000000',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(403,'8adbc9f2cbfc154b683b48350963ba2b','http://dummyimage.com/146x175.png/cc0000/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(404,'4617da53360ca7e6cb4210ddf478c13a','http://dummyimage.com/245x174.png/dddddd/000000',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(405,'84a49a74b53fa840488a587b7c8cc773','http://dummyimage.com/224x184.png/ff4444/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(406,'480f8ab9e122ed009179826502d9443f','http://dummyimage.com/101x240.png/dddddd/000000',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(407,'e298506d9a0e379cffea6b1e0f599ff6','http://dummyimage.com/187x219.png/5fa2dd/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(408,'2d8eedcfa307652bbd2f2a1f782db069','http://dummyimage.com/185x132.png/ff4444/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(409,'9e4c1cab5e17c8a2506973ec8ce5eef2','http://dummyimage.com/175x172.png/dddddd/000000',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(410,'de65d4f3af37c6c396a83e8721ea917c','http://dummyimage.com/220x117.png/5fa2dd/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(411,'0c5a1afa7163465c6185d02d01e95cd7','http://dummyimage.com/218x134.png/5fa2dd/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(412,'60fd68694044ff9e0981ccccb5c8ebf1','http://dummyimage.com/118x197.png/dddddd/000000',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(413,'470e1d4a2d0f4c216972d54913495a34','http://dummyimage.com/172x243.png/cc0000/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(414,'1e65f6b5feb5737938030943d59312e6','http://dummyimage.com/182x167.png/ff4444/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(415,'4352cfff64ff9b038b1afde1ecccc45c','http://dummyimage.com/142x220.png/dddddd/000000',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(416,'82aa2d6bfa6d1a7e1d54dfaa3ab28c6a','http://dummyimage.com/195x153.png/ff4444/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(417,'336633f658496c8eab284cce5e20a673','http://dummyimage.com/141x211.png/ff4444/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(418,'56e1c7f8f47cb8567ea0a2352dd2e21f','http://dummyimage.com/177x213.png/cc0000/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(419,'de834cf3fa0242166309a6b686edafd1','http://dummyimage.com/175x115.png/dddddd/000000',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(420,'bbcb485b70ce4be6a990f4cae803e8c4','http://dummyimage.com/232x233.png/ff4444/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(421,'d88cf25c55a9cb356c2b26ab59d2f8d7','http://dummyimage.com/107x167.png/5fa2dd/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(422,'e97fb7e50e6325d4798f27e244dd2e2f','http://dummyimage.com/178x231.png/ff4444/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(423,'9194f7f31d3afbbb7f7afce3e14580a4','http://dummyimage.com/103x144.png/5fa2dd/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(424,'8f8a101f578cd85885a36d636747b549','http://dummyimage.com/181x223.png/ff4444/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(425,'afb52c6e06581d1a2d59c123c1416c0e','http://dummyimage.com/173x183.png/cc0000/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(426,'42bb746fc14c522d66b546b9921c7e9b','http://dummyimage.com/152x185.png/5fa2dd/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(427,'94fce47089d47b113cc0f6d29ef3c751','http://dummyimage.com/243x138.png/ff4444/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(428,'110ff5d529c0dd8ad17a77aaf7e49490','http://dummyimage.com/247x152.png/dddddd/000000',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(429,'899e7a8a7b5092cf26290ed0037ab71d','http://dummyimage.com/203x248.png/5fa2dd/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(430,'a66d7976ebe8b1d3d7a3e6a99c7e0bf7','http://dummyimage.com/240x178.png/ff4444/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(431,'dcd402bbf70922e31c8c8e10c3757fd9','http://dummyimage.com/202x137.png/ff4444/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(432,'c001af4a42fc1b99ddbec5c4d8a19311','http://dummyimage.com/191x125.png/dddddd/000000',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(433,'c0ebb228c43e3e8c7de35e5b533fc9dc','http://dummyimage.com/106x118.png/ff4444/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(434,'aff38d2b38c837869f8f31a59f0d2ef2','http://dummyimage.com/165x102.png/ff4444/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(435,'10f8b752db8f41d92f8d298338a0c713','http://dummyimage.com/153x209.png/5fa2dd/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(436,'5d77ca15a30742de295a6d7c2a5f0646','http://dummyimage.com/225x169.png/ff4444/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(437,'8ef88abb71a298fa8e074a632936e616','http://dummyimage.com/191x127.png/cc0000/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(438,'7735b58ac0f5695f7b1267c7140920fe','http://dummyimage.com/219x148.png/cc0000/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(439,'2ce6bad45bc39c6535f54dc21ed7f5b4','http://dummyimage.com/223x127.png/dddddd/000000',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(440,'f4644f09f4b876aac9c56decaaba8590','http://dummyimage.com/237x198.png/5fa2dd/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(441,'ae70b5eeb48acdfdb07c36a1186160d3','http://dummyimage.com/234x110.png/dddddd/000000',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(442,'3a7899c550a039e143829b05118d233f','http://dummyimage.com/207x140.png/dddddd/000000',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(443,'324de1416806d77f0f79bfecdd89425f','http://dummyimage.com/187x224.png/dddddd/000000',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(444,'f4e083b8bfaf6e39a3ed25a0d7feba48','http://dummyimage.com/111x235.png/5fa2dd/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(445,'0b1161aa7bb957755848d57ab168e248','http://dummyimage.com/168x150.png/5fa2dd/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(446,'153da88c24731e6d0d3fd4edea758830','http://dummyimage.com/123x184.png/cc0000/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(447,'379fde7e5bdf33d20f9ed418e6092570','http://dummyimage.com/154x173.png/5fa2dd/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(448,'7f153125d9ea892bdf95ad05496d9b5d','http://dummyimage.com/245x223.png/cc0000/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(449,'4fb57309e7ce197b6856f89e9382e44b','http://dummyimage.com/204x205.png/cc0000/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(450,'4636151757b749c6be97d5df2de063d3','http://dummyimage.com/224x138.png/dddddd/000000',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(451,'470d8181fe904a624025c512f5fde65b','http://dummyimage.com/219x181.png/5fa2dd/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(452,'cef9b93d5264324e15ba486041ac88a2','http://dummyimage.com/131x121.png/cc0000/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(453,'97b7ce4accb59b1488c2b33444e3d3fa','http://dummyimage.com/203x206.png/cc0000/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(454,'560ca24b535ee605a96b950537380318','http://dummyimage.com/216x214.png/dddddd/000000',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(455,'95f15b47243cb0b720e772c7fd9b143e','http://dummyimage.com/232x105.png/dddddd/000000',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(456,'3407d48fcc40367e5ba8d82ef5ee53b7','http://dummyimage.com/104x151.png/cc0000/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(457,'9bdcf5870fa96dbea8c90c2279f15b96','http://dummyimage.com/141x176.png/dddddd/000000',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(458,'2c64b3b865aa73a0b63b43769ee80fda','http://dummyimage.com/231x175.png/5fa2dd/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(459,'792fd04d4dad1c3975f5c897917e50fc','http://dummyimage.com/101x235.png/ff4444/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(460,'67041c23bda6900c809b3a90b0fb0bd1','http://dummyimage.com/115x132.png/5fa2dd/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(461,'a03410f39bb750685e505f9c6789e805','http://dummyimage.com/119x187.png/5fa2dd/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(462,'c04f8825676aac2b5b59ef73eab820cc','http://dummyimage.com/200x248.png/cc0000/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(463,'4944b46ded0ca8ea8627606bf6b62a37','http://dummyimage.com/192x190.png/ff4444/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(464,'3e59ab02af6a0bc175ab7ea4f3640d26','http://dummyimage.com/119x153.png/dddddd/000000',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(465,'092004ba0985509ba135f9397f8d8d0f','http://dummyimage.com/142x124.png/dddddd/000000',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(466,'a57a7367e0db5da63d896695f611b4a9','http://dummyimage.com/239x127.png/cc0000/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(467,'3e1657703b707d7bf3279c9fe7ee39a6','http://dummyimage.com/196x142.png/5fa2dd/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(468,'f03078a0b631998443d56ae9f27fa783','http://dummyimage.com/183x210.png/5fa2dd/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(469,'fdd49c4d0ae14f92168bcaeddde142c6','http://dummyimage.com/185x230.png/ff4444/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(470,'b351e1d6ed146b9229aa82bfbe7f77eb','http://dummyimage.com/192x184.png/ff4444/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(471,'a7971bf6ae36fe024d5a80a9b2882de3','http://dummyimage.com/245x148.png/5fa2dd/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(472,'40aea24b3615fc6c2fb799cd4ae51762','http://dummyimage.com/198x182.png/ff4444/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(473,'bd05d366a5a26eda903aeff4a252c7bd','http://dummyimage.com/134x133.png/cc0000/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(474,'db137f546e83e9a8ff992416bb411483','http://dummyimage.com/214x223.png/ff4444/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(475,'76bcc3b6deffded0182507dd654c2799','http://dummyimage.com/129x203.png/cc0000/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(476,'ea9394008e6e2f68b9c0e37b929ef097','http://dummyimage.com/212x243.png/ff4444/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(477,'e13e52aa8c58cf2935cdb57296795b83','http://dummyimage.com/153x199.png/cc0000/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(478,'5f7f8983153248748940732640e1c6e1','http://dummyimage.com/111x104.png/ff4444/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(479,'21440a47fec637e6ddcba16df67cf8a3','http://dummyimage.com/179x114.png/ff4444/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(480,'356f52675380a0b435e851c5e7e257a6','http://dummyimage.com/249x196.png/dddddd/000000',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(481,'8ce856e70b6fff2a02ac5866e6a91765','http://dummyimage.com/106x103.png/cc0000/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(482,'d36dc5a6309530026b2bbae9d3de0911','http://dummyimage.com/207x103.png/5fa2dd/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(483,'af2ef6eaa16d153577f20390b790af03','http://dummyimage.com/202x160.png/5fa2dd/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(484,'ef5c836c2af367af1e4082e92e8a5263','http://dummyimage.com/127x149.png/dddddd/000000',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(485,'4f0304c5fea6b4e756253b154b2cadcd','http://dummyimage.com/137x171.png/ff4444/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(486,'957c1feba9afc87a15328d7961203712','http://dummyimage.com/177x111.png/cc0000/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(487,'ba80a35fcb471cf4bc8a9788d80bb67c','http://dummyimage.com/141x214.png/ff4444/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(488,'ae378279aa0361ed6c488a8466ed22e5','http://dummyimage.com/101x111.png/dddddd/000000',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(489,'fa1130ff728c70239feeca72b47e44c0','http://dummyimage.com/222x127.png/ff4444/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(490,'302debc6b753c44db51e598e19caf4e7','http://dummyimage.com/217x162.png/dddddd/000000',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(491,'807008326d5ff4925383887ea62192a7','http://dummyimage.com/140x241.png/cc0000/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(492,'e0040e70e92cb192fb8ec5f5d6afa792','http://dummyimage.com/100x201.png/5fa2dd/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(493,'9b8f591f6fd91a7d9d7ab5a1e0a3d87c','http://dummyimage.com/145x200.png/cc0000/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(494,'418e314e9a01306233c08bbeb97ffc13','http://dummyimage.com/247x234.png/cc0000/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(495,'36d9bcc0f9ca5deb5fb79acf907d0075','http://dummyimage.com/175x133.png/dddddd/000000',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(496,'63c3b156148fd6ea874c03473450d819','http://dummyimage.com/233x183.png/cc0000/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(497,'d25f59d9a4657fa9ea17cc439beae185','http://dummyimage.com/149x206.png/dddddd/000000',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(498,'b88c50f9396a6bc820f69ddc3052cb71','http://dummyimage.com/144x238.png/ff4444/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(499,'37f508143338ef5dac7375437ff6a1e6','http://dummyimage.com/200x155.png/5fa2dd/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(500,'98d22dff4236d1aa330284158cf23848','http://dummyimage.com/233x186.png/5fa2dd/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(501,'0f4459bfe0f15a6f730a0b361f849ae8','http://dummyimage.com/196x158.png/cc0000/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(502,'8e9bd367ee32652f0bad3c748fd82a54','http://dummyimage.com/177x149.png/5fa2dd/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(503,'2866db62548b5dee1eddbd03848b1a80','http://dummyimage.com/112x186.png/cc0000/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(504,'085c4f2d2358ee1b0d2d93948bd2945b','http://dummyimage.com/100x162.png/dddddd/000000',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(505,'1bed104d4327dec5722c3ec95d05a5f7','http://dummyimage.com/139x249.png/dddddd/000000',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(506,'1336599412c11f2f99cb0956915f551b','http://dummyimage.com/158x133.png/cc0000/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(507,'a9c04e0a60607e640d3503fe2c94588c','http://dummyimage.com/158x155.png/dddddd/000000',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(508,'188802bb5a4741e9c79478cd8504d21d','http://dummyimage.com/174x209.png/dddddd/000000',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(509,'73aa76126fb645ba45c2f71ac646d8e3','http://dummyimage.com/158x163.png/cc0000/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(510,'390fe3eb5ca149a99ea276eb55901f45','http://dummyimage.com/194x202.png/5fa2dd/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(511,'9aa4447e23563b535f15fa977821d272','http://dummyimage.com/115x172.png/cc0000/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(512,'1586daf63aaae4d95fb062a76b57bb1f','http://dummyimage.com/120x132.png/5fa2dd/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(513,'ae2c108d15fe6e58034aa378f40e8153','http://dummyimage.com/154x214.png/cc0000/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(514,'7759b5012feda80f88983457923aee6f','http://dummyimage.com/238x220.png/5fa2dd/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(515,'88eb89795c47e388cd8556dbdde9892e','http://dummyimage.com/130x217.png/ff4444/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(516,'dace7df28f9e1b9a5ef91c902158fd4f','http://dummyimage.com/206x164.png/dddddd/000000',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(517,'e91bcb00fa1b938df539d161de6bfa34','http://dummyimage.com/166x114.png/cc0000/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(518,'594311e2a7a42515ef5ec929c7ba357d','http://dummyimage.com/186x247.png/dddddd/000000',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(519,'1e23bf0be8dabd1d6a05fa4785087999','http://dummyimage.com/217x218.png/cc0000/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(520,'77bf82ad10cb7fa8048029ab6e3d86ac','http://dummyimage.com/104x170.png/5fa2dd/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(521,'4832eeb205de2afb7ec0890899e83702','http://dummyimage.com/163x158.png/cc0000/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(522,'0d0b5bc8f7a9563bf211b00b9580aa41','http://dummyimage.com/130x238.png/dddddd/000000',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(523,'198b6ba7bf76a9c5a985fe159b1662d6','http://dummyimage.com/137x113.png/5fa2dd/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(524,'3773985fa04724fb3b82546be43f0c7a','http://dummyimage.com/170x138.png/5fa2dd/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(525,'65045361a2a917a6821b8461869ed941','http://dummyimage.com/230x129.png/cc0000/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(526,'4262c5ce6795309be494b60b7bef11c0','http://dummyimage.com/233x161.png/cc0000/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(527,'4f25edb01f7a2e3f335b4dd5cd21c397','http://dummyimage.com/149x199.png/dddddd/000000',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(528,'22c1880d2358a681f56da388e06a821b','http://dummyimage.com/193x158.png/5fa2dd/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(529,'85a3808b9cdcb5c357a01d38771aebf3','http://dummyimage.com/127x172.png/cc0000/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(530,'1b32b3b2961388bebbe4dcbb9e182dc4','http://dummyimage.com/113x241.png/5fa2dd/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(531,'959d08e45b684ef15dbf15c12c10b320','http://dummyimage.com/104x112.png/cc0000/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(532,'d1ec7fcf06792c6860cf83bf418f7dd7','http://dummyimage.com/209x131.png/cc0000/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(533,'8f5fb9adab5af3498217ded6299ef361','http://dummyimage.com/126x228.png/dddddd/000000',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(534,'98fc343c7650fdf6bdbdbeb98c47120f','http://dummyimage.com/108x120.png/dddddd/000000',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(535,'c534e3d5a984b9328816131e3089b34e','http://dummyimage.com/130x122.png/ff4444/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(536,'4cb759cf4e8f53576e50cd8929020b20','http://dummyimage.com/179x225.png/dddddd/000000',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(537,'2bd7033898c6110dc1e597e5416978d2','http://dummyimage.com/187x237.png/cc0000/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(538,'91aec3ec4c5ec4eed4a49cc8a507ad21','http://dummyimage.com/115x200.png/dddddd/000000',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(539,'0ec744773015756b365f8282e8c4d07e','http://dummyimage.com/200x117.png/cc0000/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(540,'4cff48dd512f41aac001a8a4d9ba5f36','http://dummyimage.com/172x192.png/5fa2dd/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(541,'002e409747eeada2c051a1337f9ad678','http://dummyimage.com/222x205.png/cc0000/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(542,'1d8a05127bb4ffb5a579bd087f773810','http://dummyimage.com/115x184.png/5fa2dd/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(543,'0893a8c159ed397bf750e627b0c0f6e5','http://dummyimage.com/101x111.png/cc0000/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(544,'84a42852e4ee83c5b2015d80e9d45fb7','http://dummyimage.com/121x183.png/dddddd/000000',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(545,'9cbebb7ee5e127e3b01d75ccd5fd64a8','http://dummyimage.com/220x103.png/dddddd/000000',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(546,'fc1c0305cc46c7cc406636011b9e6fb8','http://dummyimage.com/142x108.png/ff4444/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(547,'f2e7b11618ba5cbcd0a1cbd925973647','http://dummyimage.com/145x231.png/dddddd/000000',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(548,'a02b04afb38661bf89bc8ec893da9ade','http://dummyimage.com/247x243.png/cc0000/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(549,'f6d3603aedc63bf1550b3436f301f42f','http://dummyimage.com/200x135.png/dddddd/000000',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(550,'019811baacf274821b86302c84bb32b5','http://dummyimage.com/201x235.png/cc0000/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(551,'14f55bb9e432c2b3a3ee5b93121c7ccf','http://dummyimage.com/133x152.png/cc0000/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(552,'9523a2e313ec2604e649b6a7d8e54e26','http://dummyimage.com/204x218.png/dddddd/000000',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(553,'d5a5f9cc26fe5cdbe29a6127ad711b68','http://dummyimage.com/196x149.png/dddddd/000000',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(554,'d32b553ebdf42bd373d4e709450311a7','http://dummyimage.com/250x104.png/cc0000/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(555,'2540de2c548f2130421dd655eda2b7ca','http://dummyimage.com/130x205.png/ff4444/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(556,'07820ea1cdd2a992bce1d1f863e99893','http://dummyimage.com/232x226.png/dddddd/000000',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(557,'e7a0616921d4587d64545b72eabeaaae','http://dummyimage.com/105x143.png/5fa2dd/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(558,'2430c040fb8a6a541ba6baf33719d78a','http://dummyimage.com/168x204.png/cc0000/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(559,'fd162783cd6364c753a5aeb170f82d34','http://dummyimage.com/240x139.png/ff4444/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(560,'a8bbba57999304d1e1186f1ecdfeb539','http://dummyimage.com/100x187.png/ff4444/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(561,'d3e2f0029e9ab945dc9cc8bb7dd2d753','http://dummyimage.com/224x171.png/5fa2dd/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(562,'4884f2ecb9f926efe562efcb8471e636','http://dummyimage.com/238x194.png/ff4444/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(563,'3220314ee8d01ddb977c96b025c49b6a','http://dummyimage.com/216x199.png/cc0000/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(564,'230a7e0d3f818aadb8f5e9522a857e09','http://dummyimage.com/213x191.png/dddddd/000000',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(565,'277908d3e1eeb1f9f212bee3fec7e884','http://dummyimage.com/115x165.png/dddddd/000000',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(566,'321ef41f85b5cc98cdfe4c873350f77f','http://dummyimage.com/220x204.png/ff4444/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(567,'8a844c97cd57de8a3ae68554d177f271','http://dummyimage.com/162x142.png/cc0000/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(568,'54d4c6bc3770c4f455db95c4c978af07','http://dummyimage.com/186x171.png/5fa2dd/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(569,'823e644c66ba488cfaeb2a05e91fbe2e','http://dummyimage.com/180x218.png/dddddd/000000',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(570,'e052df0d1430a79069a342b5b5630d40','http://dummyimage.com/177x147.png/cc0000/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(571,'d913b37b8f343ce6b1e556f56c3e8eeb','http://dummyimage.com/144x244.png/dddddd/000000',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(572,'5e76f152cea96e786f7a38dd9eb433db','http://dummyimage.com/244x160.png/ff4444/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(573,'4d309c3e7a1ea70610bd63275fc2bc5b','http://dummyimage.com/138x224.png/dddddd/000000',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(574,'08d152235a6a9f1c2a83aad3dd70fa45','http://dummyimage.com/123x216.png/5fa2dd/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(575,'0418055bc2a95ae55fdd4fe53a571dfb','http://dummyimage.com/169x243.png/dddddd/000000',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(576,'c411a522693bbeecbac3e8e51d5019bb','http://dummyimage.com/154x172.png/dddddd/000000',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(577,'4f5c24455422942087622f5ee0551834','http://dummyimage.com/204x206.png/dddddd/000000',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(578,'543f678ed86ab8efad1b4315d7f6e1b4','http://dummyimage.com/205x166.png/dddddd/000000',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(579,'af85016c6f22b43b1099e14c24195b56','http://dummyimage.com/140x207.png/ff4444/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(580,'a79cee7996677dd3801c4d70cc1afc83','http://dummyimage.com/153x234.png/cc0000/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(581,'143cb05b90b7a65225fd94253ac7bf85','http://dummyimage.com/121x218.png/5fa2dd/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(582,'bcbd65184198cd5d3732d3eded21319d','http://dummyimage.com/172x234.png/ff4444/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(583,'d0f23f116bc09d041e0682247e708841','http://dummyimage.com/106x250.png/cc0000/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(584,'43b74b694b2bbe88ac8a430a53e518be','http://dummyimage.com/191x227.png/cc0000/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(585,'5617df86551bf536717c599ddb0de941','http://dummyimage.com/130x167.png/ff4444/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(586,'b79c4272edc01599af395bac8968b87d','http://dummyimage.com/120x203.png/dddddd/000000',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(587,'a1b63c6279c170ed6f7a2e185400c77d','http://dummyimage.com/178x158.png/cc0000/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(588,'71b20e268077d93801462290fa647218','http://dummyimage.com/146x215.png/dddddd/000000',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(589,'b7af76d7901f8165f8546f508af9ae00','http://dummyimage.com/197x223.png/cc0000/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(590,'ee1fa647663406dde0a32d6f8609ff3f','http://dummyimage.com/219x173.png/5fa2dd/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(591,'d3b34960bf56c3569e9fd360aeed3039','http://dummyimage.com/158x159.png/ff4444/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(592,'037e030f8fe194285454b663e17a0328','http://dummyimage.com/135x125.png/ff4444/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(593,'dbbabc615f1b108b7960358a5015f0c6','http://dummyimage.com/179x199.png/cc0000/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(594,'512fc5067f3461759401908bee692f85','http://dummyimage.com/214x172.png/ff4444/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(595,'6dcd51fed03a26431274e5031a442f11','http://dummyimage.com/159x206.png/dddddd/000000',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(596,'94dfbcb8c2af872c58fec59db79aacff','http://dummyimage.com/108x142.png/cc0000/ffffff',1,'2018-11-26 21:08:08','2018-11-26 21:09:10'),(597,'7580d56cb415855e691aba56ed560911','http://dummyimage.com/104x203.png/ff4444/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(598,'6c6a70c88e9257e44851229dfd68639d','http://dummyimage.com/190x229.png/ff4444/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(599,'43a8d8842bc77703f4e528f0a11e3c2b','http://dummyimage.com/171x218.png/dddddd/000000',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(600,'5f3ee378f3aab8980541a7de05838a2c','http://dummyimage.com/250x193.png/dddddd/000000',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(601,'5ef5ddafc76dd9a79ab05051362a6047','http://dummyimage.com/135x160.png/ff4444/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(602,'9ee839749ab4f68a59d6d45ff59268f0','http://dummyimage.com/183x203.png/ff4444/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(603,'da2a980d3b49c77bd1939d6fd7e7a6a0','http://dummyimage.com/152x104.png/5fa2dd/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(604,'db094d92b474b51eea0983e88820b4f9','http://dummyimage.com/249x185.png/dddddd/000000',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(605,'69f662d44ac962ece4083fe7ab8441ed','http://dummyimage.com/241x162.png/5fa2dd/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(606,'24775944db4c8819fb0705c81dd414fd','http://dummyimage.com/241x231.png/dddddd/000000',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(607,'0e97d88fcd8cbd3b14fc6d6b8f7701a4','http://dummyimage.com/228x178.png/ff4444/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(608,'e71f7d826132259f255ebc4505c3a742','http://dummyimage.com/139x171.png/5fa2dd/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(609,'6ede20b7acc4537e81ad507c0b9eb9aa','http://dummyimage.com/239x121.png/5fa2dd/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(610,'135f57654854c35b6891487dd9fb3068','http://dummyimage.com/115x131.png/5fa2dd/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(611,'a6b4c1f04c626d30fc71544397cf8413','http://dummyimage.com/124x111.png/dddddd/000000',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(612,'129416589a24e53498b1874b6f6cba24','http://dummyimage.com/174x179.png/cc0000/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(613,'5e48ee046ad0f9fb19e349f6d6d0a52e','http://dummyimage.com/155x184.png/5fa2dd/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(614,'4e28a9ff50978bcfc588ddf18fccae7e','http://dummyimage.com/119x232.png/ff4444/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(615,'973e9aaa585a1692d3cd0a556d32a167','http://dummyimage.com/144x114.png/5fa2dd/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(616,'b90573b5fa1de836312d119a987a6572','http://dummyimage.com/238x120.png/cc0000/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(617,'73ebe9fe0e0d476bd22f5aceb9786144','http://dummyimage.com/224x112.png/ff4444/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(618,'9a66071428fc2610fd469ac15d8c25af','http://dummyimage.com/171x209.png/ff4444/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(619,'ee05b441c5576f11572dfb70810cce92','http://dummyimage.com/121x126.png/dddddd/000000',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(620,'1c9136357931436165bd65f5e0d2b986','http://dummyimage.com/121x145.png/ff4444/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(621,'5e2a86fd38d4c989112edf61fb370892','http://dummyimage.com/162x102.png/5fa2dd/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(622,'2d49623248672466f376e24ada6cc671','http://dummyimage.com/131x104.png/ff4444/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(623,'9da392c574d7217cf882e309a101b44c','http://dummyimage.com/204x165.png/cc0000/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(624,'b73a881a3ca46a7c60e8a4b1bec80bfc','http://dummyimage.com/222x206.png/5fa2dd/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(625,'4249f2b76fcf863cd689e19f43dd5a3b','http://dummyimage.com/125x112.png/5fa2dd/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(626,'1be5cda67339cc37e4453142a27a5d4f','http://dummyimage.com/239x248.png/dddddd/000000',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(627,'73b15a87adbaabcc15d1a26d4b78dd0e','http://dummyimage.com/190x160.png/ff4444/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(628,'1db7d9024fe14fde3c92bcda8c7fd134','http://dummyimage.com/210x213.png/ff4444/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(629,'1cb39cafb90b6aaed380ce39e54d9cae','http://dummyimage.com/214x141.png/dddddd/000000',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(630,'5568d5af36e3c9a76761db621fc596d9','http://dummyimage.com/142x166.png/ff4444/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(631,'d36528e5c7ab68f1f7ebfb4c1fce4d48','http://dummyimage.com/105x171.png/5fa2dd/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(632,'76bedd7bc47f41dfdadf876fa7d12c7d','http://dummyimage.com/150x119.png/dddddd/000000',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(633,'d33b06e9cec3553147e874411d69c7a4','http://dummyimage.com/178x177.png/ff4444/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(634,'7ade2531388afa66474fb8cab896cc25','http://dummyimage.com/188x224.png/dddddd/000000',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(635,'563f66dff36b085a2b4f249a131f81bf','http://dummyimage.com/109x230.png/5fa2dd/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(636,'9bf6f562fa73913fd38208c2a81faaae','http://dummyimage.com/152x180.png/ff4444/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(637,'6b6948b132490e7692ba0a2222f8eab9','http://dummyimage.com/197x208.png/ff4444/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(639,'2f08f81c41d765afb4db4a227322b408','http://dummyimage.com/233x107.png/dddddd/000000',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(640,'ea1777867654159a1e8fc4fac19f5867','http://dummyimage.com/100x176.png/cc0000/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(641,'e44e5b50ea2892b96ae74bce5f3af647','http://dummyimage.com/127x144.png/cc0000/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(642,'2ffe754cdaf7d5b2a4f23189b182ffb3','http://dummyimage.com/180x233.png/dddddd/000000',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(643,'4a9190fe9c4b861ec4cfb2b4cec85e7e','http://dummyimage.com/237x215.png/ff4444/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(644,'1ec32b3ee9a462ea13519129e25fc328','http://dummyimage.com/112x171.png/cc0000/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(645,'9c1ebc559007ed342cb2f15d9a519d98','http://dummyimage.com/239x126.png/ff4444/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(646,'b3eb62224f8c601317143523d4109f05','http://dummyimage.com/250x117.png/5fa2dd/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(647,'260dc75aa3b15110abdd8b42e637152c','http://dummyimage.com/104x116.png/5fa2dd/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(648,'e1a50a53cbeb4219cbfcfed277289143','http://dummyimage.com/247x241.png/cc0000/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(649,'e5f5805ef0f3ea85a5bd33d414018d84','http://dummyimage.com/190x118.png/ff4444/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(650,'15422225cec10a61923e7380474ffb65','http://dummyimage.com/140x250.png/ff4444/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(651,'5b3a096b968e4af4d1853d0cb878086d','http://dummyimage.com/206x155.png/dddddd/000000',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(652,'81cec054e2ffd012d512fd3b7f069e80','http://dummyimage.com/237x172.png/dddddd/000000',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(653,'a05c3fac241c7edff8a55d949c4b0abb','http://dummyimage.com/172x155.png/5fa2dd/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(654,'28989168407932e15f409b4866e12dcb','http://dummyimage.com/219x147.png/cc0000/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(655,'a932cd2713ae5fcc7ca0be3f9741e7d7','http://dummyimage.com/172x170.png/dddddd/000000',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(656,'421229fe0b1ad39b4df4f3dd5fb6d26a','http://dummyimage.com/246x139.png/dddddd/000000',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(657,'914a4084eebcea860235ca59915c64e9','http://dummyimage.com/112x162.png/ff4444/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(658,'0c9cb25b245a4e21faef07adea5e435a','http://dummyimage.com/146x154.png/5fa2dd/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(659,'6ae7583cf79b9811fe65b7cbe3d913ee','http://dummyimage.com/124x238.png/dddddd/000000',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(660,'c54b62d391df9b34dc230f6b4a5342c6','http://dummyimage.com/137x126.png/5fa2dd/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(661,'4fbbd0ba22e274685d96bd5ebdef5a6c','http://dummyimage.com/244x238.png/dddddd/000000',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(662,'91bac137d4f3c7524de2dfb23d22c712','http://dummyimage.com/145x151.png/cc0000/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(663,'4832cde604fb7cc9db6a82ec4fdfc09f','http://dummyimage.com/149x103.png/cc0000/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(664,'bc13e74a8c938c51c7d372aaf2a06d24','http://dummyimage.com/207x185.png/5fa2dd/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(665,'cd637abea190e651b5d2f76de02aed96','http://dummyimage.com/219x242.png/ff4444/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(666,'95cdba4cb5a2ed25552c204116c72c95','http://dummyimage.com/166x250.png/ff4444/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(667,'8d8d5f1522e983903c87e35889edab50','http://dummyimage.com/229x219.png/ff4444/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(668,'cd09b54e9cedbec56ae1ce373f08236e','http://dummyimage.com/186x202.png/dddddd/000000',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(669,'e9fffb46d2a410fe2c5868ebb17825f7','http://dummyimage.com/240x126.png/5fa2dd/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(670,'799dd7763d6727f072bcf1b345096dd8','http://dummyimage.com/107x110.png/ff4444/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(671,'6341dff9c5b4d2f1c3c194c53aa904f2','http://dummyimage.com/204x135.png/ff4444/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(672,'4b60f0eba020ed8f52b4d6224e92432b','http://dummyimage.com/230x121.png/5fa2dd/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(673,'3672f3d61b84bd0d01efc90def70272f','http://dummyimage.com/108x191.png/5fa2dd/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(674,'26f85409eba4eb15535a9d11f3c95a45','http://dummyimage.com/154x235.png/ff4444/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(675,'7ac4e15221b60c43b790faea76e8fb90','http://dummyimage.com/239x177.png/dddddd/000000',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(676,'49a68ff5ef2c3d5f848a07d27545039f','http://dummyimage.com/202x168.png/ff4444/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(677,'327764be19b11f0d80f71673a73f72ba','http://dummyimage.com/195x188.png/dddddd/000000',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(678,'0b7ea98d0160b8da20b23ad3b1baa57c','http://dummyimage.com/248x250.png/cc0000/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(679,'3ab9dbe95011869966ad2d12ede31dcf','http://dummyimage.com/221x161.png/dddddd/000000',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(680,'ef5756f656f6d0d8f025cf78aac2b377','http://dummyimage.com/130x172.png/ff4444/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(681,'03b47b9b65729660db30cb3729e72119','http://dummyimage.com/178x125.png/cc0000/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(682,'94dd2d7ae994885c1aa3a498df61226a','http://dummyimage.com/144x154.png/dddddd/000000',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(683,'d5ae5a2c69de2c7f36f2d653d48079f9','http://dummyimage.com/100x231.png/5fa2dd/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(684,'f4b7bd00e3eedd066140504e5b91adf4','http://dummyimage.com/115x143.png/dddddd/000000',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(685,'89525d3c5acddf9b51f06d4329a8d55d','http://dummyimage.com/168x130.png/5fa2dd/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(686,'f6888e1d217e73a1107016f31e8ba398','http://dummyimage.com/143x241.png/5fa2dd/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(687,'1b5e9c67d83eb08209d0c638651c47e5','http://dummyimage.com/220x175.png/ff4444/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(688,'4e87f7e52c72660dd39a17a367a6f3c9','http://dummyimage.com/132x195.png/cc0000/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(689,'cf65a42a87a8be8983bb1a8b060650ec','http://dummyimage.com/134x166.png/5fa2dd/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(690,'0d67e62c29a396527b176ff46e9cb93f','http://dummyimage.com/140x220.png/dddddd/000000',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(691,'37544b61bd95deffde266287ec01d30b','http://dummyimage.com/145x195.png/5fa2dd/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(692,'8f0f9367998e077c35beba3856b34899','http://dummyimage.com/204x103.png/5fa2dd/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(693,'2a8549151b040875af5765387332e6b5','http://dummyimage.com/217x137.png/dddddd/000000',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(694,'d3c05ab2f74a9396b44d8a5f17b26ac6','http://dummyimage.com/158x172.png/ff4444/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(695,'87776441c55b617b952cba88f37a95cf','http://dummyimage.com/115x143.png/cc0000/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(696,'eb9b5ab30b0f49c0097de4cf6b84d67c','http://dummyimage.com/177x173.png/cc0000/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(697,'4514d1a8fb1cdaa0600f0db248675f13','http://dummyimage.com/108x153.png/5fa2dd/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(698,'75aa8be0945363b16eca7b56767a9b72','http://dummyimage.com/107x199.png/dddddd/000000',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(699,'7ed19e403593eac54f9be2ff96977853','http://dummyimage.com/242x129.png/cc0000/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(700,'70bacba583ff5000a35a76257865e388','http://dummyimage.com/113x185.png/dddddd/000000',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(701,'c2136777a924cb4bac65770959bf0fcf','http://dummyimage.com/130x161.png/ff4444/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(702,'3b2333ed39b53a807dfebd619952dd17','http://dummyimage.com/201x206.png/5fa2dd/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(703,'ae5968ccd7a3f17311c5373c49a0cfb5','http://dummyimage.com/109x158.png/ff4444/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(704,'3612f0fd63b32e7c5fc1ce847eb12319','http://dummyimage.com/134x200.png/dddddd/000000',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(705,'753a4887fa19f6a22f9515f496b937f9','http://dummyimage.com/131x184.png/dddddd/000000',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(706,'3e30802898691d5b72e5d976d37ade8c','http://dummyimage.com/241x232.png/ff4444/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(707,'5f7947a0f8d23ced90226e947fde77fb','http://dummyimage.com/109x228.png/ff4444/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(708,'7ca4a58ec1d318278545689efa769cdf','http://dummyimage.com/183x172.png/5fa2dd/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(709,'0b4279bbacce4e6e6be0bd6027bb4201','http://dummyimage.com/123x174.png/ff4444/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(710,'76ef8b4ff0ec2972209626f70879a303','http://dummyimage.com/206x171.png/cc0000/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(711,'5fdc26439d8e977a6a90260e67a3ecce','http://dummyimage.com/119x149.png/cc0000/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(712,'ceabf4d1b7758219da01a1c8743783df','http://dummyimage.com/101x247.png/dddddd/000000',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(713,'2eb8692de47adab6783a896d0714d3b7','http://dummyimage.com/239x233.png/cc0000/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(714,'dbaf7cf0442d4be0a5d7a4c8b93ff51e','http://dummyimage.com/236x115.png/ff4444/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(715,'211b58cb0f645a2add3fd85f12390ca2','http://dummyimage.com/175x158.png/5fa2dd/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(716,'4c60068dd7e62fbaa4c5217c576aa19c','http://dummyimage.com/233x247.png/cc0000/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(717,'1568d267efb6db53e2b4fa1bdb8d58b7','http://dummyimage.com/109x248.png/ff4444/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(718,'f9c7ed2b676ea418b630ef68407737b9','http://dummyimage.com/140x129.png/cc0000/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(719,'25a3997550ddad73fa853f4b1dbbeaf2','http://dummyimage.com/113x129.png/5fa2dd/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(720,'6e4c65fd0d2bd464f6a97897b7d934e2','http://dummyimage.com/222x150.png/5fa2dd/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(721,'edd4aa8b52cf5a1b7b96ec2e94d3d07f','http://dummyimage.com/245x114.png/dddddd/000000',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(722,'69f26ba2b7b6f0d30d8ec6adc5f42eb3','http://dummyimage.com/133x170.png/dddddd/000000',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(723,'9322d23966047252ce475ce63b73bc39','http://dummyimage.com/226x179.png/5fa2dd/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(724,'22ac23a6c5eefc9abdbd7cba02223dba','http://dummyimage.com/221x159.png/5fa2dd/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(725,'27744f84e4018a452eb3aebc1cbf3930','http://dummyimage.com/221x213.png/cc0000/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(726,'2d0877e3f20b6bf6168493c556cd0bad','http://dummyimage.com/117x241.png/cc0000/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(727,'e77ab552b533d54f6b31e30c2d2e92da','http://dummyimage.com/118x219.png/5fa2dd/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(728,'27684f5914dd2a83897822fe834e606b','http://dummyimage.com/125x247.png/dddddd/000000',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(729,'6bd5bdac862c016c09b942c1fb8dae1d','http://dummyimage.com/195x184.png/5fa2dd/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(730,'4c27d4aa421705a97bfbd46a0b692464','http://dummyimage.com/223x121.png/5fa2dd/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(731,'30a07e3480eede28bed4832697659033','http://dummyimage.com/150x136.png/ff4444/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(732,'81deec8e891f32f3a4faa8a7ec726c1a','http://dummyimage.com/211x132.png/ff4444/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(733,'ba11f02b57348638d7f37e08a284bd01','http://dummyimage.com/221x129.png/5fa2dd/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(734,'bab4a13e553101b9b43810de4624e6df','http://dummyimage.com/199x176.png/5fa2dd/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(735,'faba0b979cd611f562291575a8ec4704','http://dummyimage.com/120x238.png/5fa2dd/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(736,'0e6a051ce3602a2b29647fcddd89b7f7','http://dummyimage.com/170x250.png/5fa2dd/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(737,'ffb2d27ec404bdaaf33db1c86468b73b','http://dummyimage.com/120x116.png/dddddd/000000',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(738,'f607a75ae27150ea282b08ca911a4ab4','http://dummyimage.com/137x102.png/dddddd/000000',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(739,'bf6961ae5484e6e221d6edcebe5774c7','http://dummyimage.com/224x153.png/ff4444/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(740,'e3ff14db18482135df305eb4bdf9b9e1','http://dummyimage.com/171x195.png/5fa2dd/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(741,'28cb0e2978eac24b89e5980c8b20fc41','http://dummyimage.com/181x196.png/5fa2dd/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(742,'0fd61b4065a41f09a428ab5de5707dc4','http://dummyimage.com/153x105.png/dddddd/000000',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(743,'57d192bc2a459f623e19eef5e12ec2e7','http://dummyimage.com/214x170.png/dddddd/000000',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(744,'3ce162d9410220986589658b8ca7977c','http://dummyimage.com/154x216.png/dddddd/000000',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(745,'04ab9566b6934eace2c8b9fb266a0450','http://dummyimage.com/103x177.png/dddddd/000000',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(746,'e568bf08b5057f6286b67351d4d6d27a','http://dummyimage.com/121x111.png/ff4444/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(747,'89b88bfea4c724679ac2172f74011470','http://dummyimage.com/240x118.png/5fa2dd/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(748,'363260f8f33fabe3e985855ab73361a2','http://dummyimage.com/111x214.png/ff4444/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(749,'de99d6c85c3e4d6998c8beb45ba7fab4','http://dummyimage.com/233x149.png/ff4444/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(750,'c6edc2f05fecbc17e9d7fa4a862dd4bb','http://dummyimage.com/103x228.png/5fa2dd/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(751,'b813d4d0a01c44945c37156fbb50a7f8','http://dummyimage.com/141x133.png/cc0000/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(752,'5271a0f2c23e41b66434d8da12d312b6','http://dummyimage.com/230x250.png/cc0000/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(753,'71055da8915a4cc0aff31327113b4793','http://dummyimage.com/236x209.png/cc0000/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(754,'ac731219babe328b5c62ec733705f683','http://dummyimage.com/120x211.png/dddddd/000000',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(755,'c2f4e04279bb237dc2e8969a23fc496b','http://dummyimage.com/222x197.png/cc0000/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(756,'c3ff620b5e5e98eac84c0d54e6e6be78','http://dummyimage.com/144x203.png/ff4444/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(757,'17e628f3e5d680a0445a517b2cc62265','http://dummyimage.com/173x134.png/dddddd/000000',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(758,'3ad4ae8fe014f8bf461d05b339207c6f','http://dummyimage.com/126x242.png/cc0000/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(759,'315018629431d2b2b6e103ff904f3a48','http://dummyimage.com/103x149.png/ff4444/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(760,'a440dc6ffe95971354ad496ae1697719','http://dummyimage.com/161x138.png/ff4444/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(761,'ce5965edf739b800507bbd75f8eb4380','http://dummyimage.com/200x130.png/5fa2dd/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(762,'63386582e12f36bd81fd4d61929acaa5','http://dummyimage.com/207x185.png/dddddd/000000',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(764,'95c12554323f5273ad5499ecefc84360','http://dummyimage.com/124x158.png/5fa2dd/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(765,'825bc65ec5c447e84f8363fa4a44c76a','http://dummyimage.com/184x118.png/cc0000/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(766,'745e907ce0972f1096b5b60a64329dec','http://dummyimage.com/118x236.png/cc0000/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(767,'b3ec5d081081ca94ba0a19fa0eb29f4d','http://dummyimage.com/206x103.png/ff4444/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(768,'74de31310f313b5664a7c23e624333e8','http://dummyimage.com/104x122.png/dddddd/000000',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(769,'e4299b64672692d844345b05401f7fc4','http://dummyimage.com/211x207.png/cc0000/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(770,'777ba4498f4387b1543326cd31ebaed2','http://dummyimage.com/178x190.png/cc0000/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(771,'7cee208ff8412991d6c377dce11a5d56','http://dummyimage.com/133x134.png/ff4444/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(772,'14d0af8be7f86ec7b22f58201b3c54da','http://dummyimage.com/201x133.png/dddddd/000000',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(773,'fdbd86b5ff21d4425904e4733b4b4af2','http://dummyimage.com/201x164.png/ff4444/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(774,'20b1ca1247da486c0c35cb918ec973fa','http://dummyimage.com/120x129.png/cc0000/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(775,'6adf24a4ef8c49c884ef4d2ac556255d','http://dummyimage.com/177x140.png/ff4444/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(776,'533d7e4ced74dfc70df912c6adc6db3c','http://dummyimage.com/216x154.png/5fa2dd/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(777,'672106df8fc3a67e0a2b024840fb04b3','http://dummyimage.com/178x149.png/cc0000/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(778,'b6f80fd790b9fffeeaec55a3ae8deaa1','http://dummyimage.com/105x232.png/ff4444/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(779,'c9cdf3997dc24b3ce2960933bff4dcba','http://dummyimage.com/220x218.png/dddddd/000000',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(780,'404cf448a548e9ee8401241bc793ec58','http://dummyimage.com/134x242.png/5fa2dd/ffffff',1,'2018-11-26 21:08:09','2018-11-26 21:09:10'),(781,'f35cb257ea7a11d6272468b92fdebc1d','http://dummyimage.com/221x221.png/ff4444/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(782,'28d07612f5503d7eab55d6a96b102ff7','http://dummyimage.com/110x194.png/dddddd/000000',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(783,'4eb1566719a665ef972ee5c524539afc','http://dummyimage.com/244x135.png/ff4444/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(784,'6538da66c367c31b86f8caf628446d4a','http://dummyimage.com/193x212.png/5fa2dd/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(785,'323440c3916a5d7406209ac458efe412','http://dummyimage.com/137x160.png/5fa2dd/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(786,'242a1ee3783107fb3a307020273d7ea7','http://dummyimage.com/136x185.png/cc0000/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(787,'6774d1b7e493bed9945a2e0e961aa3cf','http://dummyimage.com/147x218.png/dddddd/000000',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(788,'a9327cff89340779497636e66145a0f8','http://dummyimage.com/170x152.png/dddddd/000000',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(789,'d1f5dbbe266c1725a2845ac94a3c66f7','http://dummyimage.com/223x194.png/cc0000/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(790,'3340b2c8ac7b9dcf118f886b034d273c','http://dummyimage.com/103x141.png/dddddd/000000',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(791,'851367d6e9d72dcc385706a939486749','http://dummyimage.com/102x111.png/5fa2dd/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(792,'b23d1217438e6096ca4a440ac7e83050','http://dummyimage.com/222x228.png/cc0000/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(793,'d654505009d0e976da875c89aeaebb11','http://dummyimage.com/208x227.png/5fa2dd/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(794,'0d337c714d90da08aaa65d308209ba35','http://dummyimage.com/226x128.png/dddddd/000000',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(795,'aa0c86c07d9912f4e713a6307c46a144','http://dummyimage.com/121x236.png/ff4444/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(796,'b4becb6969b5193e4b096bdc7de55fe3','http://dummyimage.com/159x110.png/dddddd/000000',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(797,'38fac75af3c826c594d14ff3073e6623','http://dummyimage.com/190x204.png/dddddd/000000',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(798,'4f258833cda9858223be0b04ed061962','http://dummyimage.com/104x198.png/ff4444/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(799,'17fadce9abf7b74b18a891ca6bcbdb19','http://dummyimage.com/234x248.png/dddddd/000000',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(800,'db8f106ce8f88f299c720957e6027f00','http://dummyimage.com/223x165.png/5fa2dd/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(801,'fa28963b4ab153c65cb1fc846415a4f8','http://dummyimage.com/118x156.png/5fa2dd/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(802,'d053d08da2a4f78e611df2e064e6da51','http://dummyimage.com/176x103.png/ff4444/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(803,'00b8efcb57317fb5281543168bc28ba4','http://dummyimage.com/188x111.png/dddddd/000000',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(804,'fe22902ae9d6d552e3fd5f819d561ec6','http://dummyimage.com/238x117.png/dddddd/000000',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(805,'754a6624f57e68337608ed55501c1ae5','http://dummyimage.com/223x205.png/5fa2dd/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(806,'b36b37431f76ba74be17be76a948656e','http://dummyimage.com/210x132.png/5fa2dd/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(807,'3af3650dcb06eb014dcd7a52384e4343','http://dummyimage.com/171x117.png/dddddd/000000',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(808,'6d372691072106f75dbc6c3f533769be','http://dummyimage.com/217x220.png/cc0000/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(809,'8e146f9512c2e307e19a94916e6d0b16','http://dummyimage.com/181x236.png/5fa2dd/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(810,'b637acba279e25a22d49649e625a3439','http://dummyimage.com/156x186.png/cc0000/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(811,'41622d5123736415901f716346172299','http://dummyimage.com/230x143.png/dddddd/000000',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(812,'a9b0a1447128e70121a1b88baa86a473','http://dummyimage.com/217x200.png/5fa2dd/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(813,'417e68f0bf25352d6a5bc29fb09ee423','http://dummyimage.com/233x135.png/5fa2dd/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(814,'854df56350067daa096c60b93cdba537','http://dummyimage.com/145x160.png/dddddd/000000',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(815,'8a775def2d32aff10738e9b131af0615','http://dummyimage.com/170x183.png/cc0000/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(816,'ed0b385d6936af160634329b52934155','http://dummyimage.com/243x113.png/dddddd/000000',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(817,'cb3e3ae54928a9706e2930060d3e3b06','http://dummyimage.com/196x194.png/5fa2dd/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(818,'76f25adfaa6d101e8e94a9a6a30b2945','http://dummyimage.com/112x199.png/5fa2dd/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(819,'1310b69294bcf40d16e8af7271921f8d','http://dummyimage.com/197x134.png/ff4444/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(820,'1661cbdfa213dda44086b104ab0296ce','http://dummyimage.com/233x216.png/dddddd/000000',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(821,'dc513518bc7dcb6995adc65aa49e122f','http://dummyimage.com/158x223.png/cc0000/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(822,'29b180110ebb1954696403a08765f4d7','http://dummyimage.com/194x233.png/dddddd/000000',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(823,'a51a8d1226d7a50e51ac31446ff9d7a1','http://dummyimage.com/129x195.png/cc0000/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(824,'08f72bee15e8548ca15942b081245506','http://dummyimage.com/239x122.png/dddddd/000000',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(825,'25c2b2d7a0a04de17b04374ca40c09e2','http://dummyimage.com/135x163.png/ff4444/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(826,'bda71fe0b8bd8da0ae948995b8e997ce','http://dummyimage.com/105x106.png/5fa2dd/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(827,'85cfb3acbab08f06e9ebc31c0d688d45','http://dummyimage.com/228x183.png/ff4444/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(828,'01652e797f4741e6aee8130b691adb46','http://dummyimage.com/146x145.png/cc0000/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(829,'49b694bb663399abc2fb90ec7c78c76d','http://dummyimage.com/237x201.png/5fa2dd/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(830,'c2636a6e0aaad36a28e9dbaf53d745e4','http://dummyimage.com/238x171.png/cc0000/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(831,'01af5fd30afb9e1bc0446b2b80819d33','http://dummyimage.com/110x144.png/ff4444/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(832,'a894efc5ebc522a574b7098fdc5f4d70','http://dummyimage.com/182x112.png/ff4444/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(833,'3945de9eb875ba83d3c7b7b6ef3acc06','http://dummyimage.com/135x163.png/5fa2dd/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(834,'8197777fb728f0be64df570c9aab1b78','http://dummyimage.com/206x179.png/cc0000/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(835,'158611f98b7a5e69e6d81e0bec9ecdc5','http://dummyimage.com/212x135.png/dddddd/000000',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(836,'65e36514f973984277e38d0ebc3ff57d','http://dummyimage.com/195x216.png/dddddd/000000',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(837,'6920d23aeb68da4471e7d4a4c6c6cf3b','http://dummyimage.com/177x154.png/cc0000/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(838,'ab89ddfd6a22da05b806c9e8e7865453','http://dummyimage.com/210x182.png/5fa2dd/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(839,'618933a3f1176df86ef124a02d531710','http://dummyimage.com/170x208.png/dddddd/000000',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(840,'27b5917a73fc0933397c741c190625b8','http://dummyimage.com/210x137.png/ff4444/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(841,'b16889003843d21d231e39cfc04e1a7f','http://dummyimage.com/165x240.png/5fa2dd/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(842,'3057f5684c520e7fcfc8c97b5c228662','http://dummyimage.com/111x140.png/dddddd/000000',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(843,'186a2bd68fdb7c74613759c48290a2c7','http://dummyimage.com/172x206.png/5fa2dd/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(844,'9407cb4db7d1d200bd16bfb87cd0e3bc','http://dummyimage.com/178x112.png/dddddd/000000',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(845,'0e5309c3627b089210cd31d089d446ea','http://dummyimage.com/222x249.png/dddddd/000000',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(846,'365e76654b217f95e050df01b7516f87','http://dummyimage.com/153x125.png/5fa2dd/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(847,'b99622adc40fc68a886ae314f0ab932d','http://dummyimage.com/120x152.png/ff4444/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(848,'eec6d449567a536454f251e64184c337','http://dummyimage.com/135x179.png/ff4444/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(849,'2ea103f1ebd14b6ffa7b7ae0690b797c','http://dummyimage.com/180x228.png/dddddd/000000',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(850,'914a14353b37a5389be0819aff3e33bf','http://dummyimage.com/230x249.png/dddddd/000000',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(851,'12bce185d2533dbe76f91e86ffd96740','http://dummyimage.com/115x207.png/cc0000/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(852,'f82fb94bf067dac5679fbcfccd8fdf68','http://dummyimage.com/150x111.png/cc0000/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(853,'a1b25c0d7fdd892feb94bc49d48c6c15','http://dummyimage.com/167x163.png/dddddd/000000',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(854,'cced00d63644760654e8ef3e0ae4f020','http://dummyimage.com/180x213.png/ff4444/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(855,'223572e83cdcb9ff1a35c5483fb44512','http://dummyimage.com/243x142.png/ff4444/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(856,'06d56ceec86855c2616a896ff635112f','http://dummyimage.com/163x189.png/cc0000/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(857,'0459920fcddf97cb40238d875938d02f','http://dummyimage.com/114x155.png/5fa2dd/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(858,'12c97f09f86279a0bd22eb9767f53b77','http://dummyimage.com/241x160.png/ff4444/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(859,'783ba07f4e2c553007a2cb1d0491c547','http://dummyimage.com/126x193.png/5fa2dd/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(860,'c3fbd018e706c3fe190880cbd13703ec','http://dummyimage.com/173x146.png/ff4444/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(861,'dcc8f68dcf681a8fb57f0426319a227e','http://dummyimage.com/215x146.png/5fa2dd/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(862,'5011b94f7c96d1e18f7b79382c47cf54','http://dummyimage.com/221x121.png/cc0000/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(863,'3af4da5a1abe1f96501048c221753715','http://dummyimage.com/211x161.png/dddddd/000000',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(864,'7ad57fd532aa7d3160d03325ccb490e2','http://dummyimage.com/165x156.png/5fa2dd/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(865,'14db27740fee44b9902c08315dda4dff','http://dummyimage.com/173x171.png/ff4444/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(866,'337ee0e2dc90393443aba8b215a8a7c3','http://dummyimage.com/188x229.png/cc0000/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(867,'41d4e8f7f07fc8c80b481a3214712efd','http://dummyimage.com/133x206.png/dddddd/000000',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(868,'57fc3f9c12988d031fa7901127910cdb','http://dummyimage.com/208x240.png/cc0000/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(869,'6230bb617b3665cd73ab6bad05e3696d','http://dummyimage.com/123x239.png/dddddd/000000',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(870,'fe589f5ee4c6990e70f40b3fbfce99d4','http://dummyimage.com/243x166.png/cc0000/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(871,'7a508c432c92b87305b02ce58d23315d','http://dummyimage.com/124x158.png/ff4444/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(872,'637637c4e9a4dab8be4247dc7c975d44','http://dummyimage.com/109x204.png/dddddd/000000',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(873,'4b7bbb2c9a5081c3ac560d4b35c7c60c','http://dummyimage.com/175x216.png/dddddd/000000',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(874,'25719b6f8b79975cc2f8039fd13939bb','http://dummyimage.com/198x148.png/ff4444/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(875,'dc44884584e8e43832b2fbaccb82e6ea','http://dummyimage.com/244x141.png/cc0000/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(876,'bb8f19f75f2e55c7e8307bee070c089f','http://dummyimage.com/227x133.png/cc0000/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(877,'28c642e1ceb514934dfffba1bde85129','http://dummyimage.com/199x164.png/cc0000/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(878,'c71b163fe3f1bfad95788668b33b4f87','http://dummyimage.com/174x214.png/ff4444/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(879,'e1c543e8d6947161c2856ee5fa69bdcc','http://dummyimage.com/134x143.png/5fa2dd/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(880,'183b5ad50f7240a3e46be453a4beceb6','http://dummyimage.com/157x114.png/cc0000/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(881,'0f7b2c794fff087823f4bbc279dfa543','http://dummyimage.com/208x123.png/5fa2dd/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(882,'14cf4110ce131c6a644f25f609c47aa0','http://dummyimage.com/148x121.png/5fa2dd/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(883,'9b1681ed3612816eabfc1cf9a77b4e2c','http://dummyimage.com/117x242.png/ff4444/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(884,'793b5bcda4347077a58a8f2115afe7a1','http://dummyimage.com/240x152.png/cc0000/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(885,'2c6acc77686edae70ff386bbb78cc628','http://dummyimage.com/138x164.png/cc0000/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(886,'46b5f9ef9ef4e91a636e116f5b3db21f','http://dummyimage.com/179x153.png/5fa2dd/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(887,'a8cb173187d9d925d224d15e12388eff','http://dummyimage.com/236x193.png/cc0000/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(888,'19a043adc9477712228e61c0c6818910','http://dummyimage.com/188x179.png/5fa2dd/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(889,'0b4f896f4fd7027ee6e971042681f329','http://dummyimage.com/224x238.png/ff4444/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(890,'d0016a2a3888798c485fc8810f98b2a7','http://dummyimage.com/133x203.png/dddddd/000000',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(891,'b05689a97d944d0277bbecbc1981354e','http://dummyimage.com/171x240.png/5fa2dd/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(892,'b736f084d042a61faee42c5886db2344','http://dummyimage.com/207x189.png/ff4444/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(893,'db52a99527da10a988dc770fc9c39676','http://dummyimage.com/180x127.png/dddddd/000000',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(894,'e9fba42277eaaef21842f8990bbabef1','http://dummyimage.com/120x212.png/ff4444/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(895,'4b36cf21f746ce67c237d1e9ba373476','http://dummyimage.com/154x221.png/dddddd/000000',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(896,'31cd3f3eeb8fb30773045023ff9c30af','http://dummyimage.com/213x146.png/cc0000/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(897,'607a97ba37d253db453a3b2e3c58227e','http://dummyimage.com/170x131.png/ff4444/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(898,'7da0548a23f550976237ac50c8f09fc9','http://dummyimage.com/122x187.png/dddddd/000000',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(899,'543b43e1fd85988b03abe65826dd2c2f','http://dummyimage.com/183x156.png/cc0000/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(900,'4b45e8007dab9fcb588482e62b0d05b7','http://dummyimage.com/192x139.png/ff4444/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(901,'575817a0612f7568edc2b6f4c429f98a','http://dummyimage.com/139x157.png/5fa2dd/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(902,'5bf898af27b9aa8988700cefe53a9b1c','http://dummyimage.com/119x208.png/5fa2dd/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(903,'dc6710cc195599c90c6083aa006edbef','http://dummyimage.com/153x127.png/5fa2dd/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(904,'af6111a412ab4d55c814d36f04ba41aa','http://dummyimage.com/164x221.png/dddddd/000000',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(905,'533ae8d6cd5c9efc968f44de005346dc','http://dummyimage.com/179x217.png/cc0000/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(906,'a78d02bad199bb2e4e562f64059e2cb2','http://dummyimage.com/100x222.png/ff4444/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(907,'3f92a321b9c3801a2ad716d369999502','http://dummyimage.com/148x216.png/cc0000/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(908,'032c0e6efd46464ce04426e9cd1270a4','http://dummyimage.com/182x188.png/dddddd/000000',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(909,'de336d44e2f1cdc04763b95b5975c142','http://dummyimage.com/198x212.png/ff4444/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(910,'bafa8629a16492c6adb82b5d7b8e6436','http://dummyimage.com/115x100.png/5fa2dd/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(911,'a3b4c961e663636c48356169efcabbce','http://dummyimage.com/248x129.png/5fa2dd/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(912,'f80e2e41c8026cb2c4b69025fe26b10c','http://dummyimage.com/109x228.png/cc0000/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(913,'ab8abc2df66ca6cd2d0c601c1812473d','http://dummyimage.com/179x137.png/5fa2dd/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(914,'15b09d24e723c602f776835d6eb386cf','http://dummyimage.com/190x168.png/ff4444/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(915,'061378fbdf14e6104607464a49e0c264','http://dummyimage.com/142x113.png/ff4444/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(916,'e03c83acb830c5bd6a503121addc28dc','http://dummyimage.com/227x222.png/5fa2dd/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(917,'3176241f33021f9b61fdf532b2968b78','http://dummyimage.com/178x107.png/ff4444/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(918,'c0615487bd0de5736bc7fc4e37577c21','http://dummyimage.com/156x124.png/ff4444/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(919,'5e64129f4f72d77d66938bebaf494f5a','http://dummyimage.com/134x114.png/ff4444/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(920,'0aad084751d36fa8b905929b07fbed96','http://dummyimage.com/114x225.png/dddddd/000000',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(921,'065d3cbca9a6c06f6bd6d5b72ea9f38d','http://dummyimage.com/206x136.png/dddddd/000000',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(922,'e5c98c69fb4eb4b4c730779536b539fa','http://dummyimage.com/128x109.png/ff4444/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(923,'4f768cc2875d6af36cdad2d9268e3c64','http://dummyimage.com/112x150.png/dddddd/000000',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(924,'eb371b28101a1d87c25e2af02db14827','http://dummyimage.com/209x143.png/ff4444/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(925,'1170209835b7a5bdf406009d2af4ddfe','http://dummyimage.com/213x114.png/cc0000/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(926,'7850c4179fbb7aab980ca1f41178698a','http://dummyimage.com/134x249.png/5fa2dd/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(927,'0be010e99dd6516e4da2d78c1f9a3c5d','http://dummyimage.com/111x127.png/dddddd/000000',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(928,'70d4fd546c1ef7ed7f82b059abb882a8','http://dummyimage.com/128x110.png/cc0000/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(929,'9cef533443aa1c9379154b287002401c','http://dummyimage.com/192x243.png/5fa2dd/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(930,'35fe5c6ab1922c9bbb4613a14669ac7c','http://dummyimage.com/134x181.png/cc0000/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(931,'75718da92df0339da3cb1d0a18b2846b','http://dummyimage.com/249x173.png/dddddd/000000',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(932,'5568663d091559c337ec0a2bddd30084','http://dummyimage.com/122x250.png/5fa2dd/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(933,'87d95322121b68e8670c93d788be4e9e','http://dummyimage.com/130x185.png/dddddd/000000',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(934,'236634b40332b94e663407a5ef782167','http://dummyimage.com/166x107.png/cc0000/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(935,'f43fd33031ec9aaa9bfeb599311ad72f','http://dummyimage.com/246x215.png/5fa2dd/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(936,'278ea34fcb03e5278085a3f89f6e23cc','http://dummyimage.com/238x218.png/5fa2dd/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(937,'52290d2462086190d5c3174cbbaf8760','http://dummyimage.com/140x224.png/ff4444/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(938,'4083611bd179474348c267e0bffb4994','http://dummyimage.com/126x117.png/ff4444/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(939,'5bcbb51dcdc34e909f93abcbb4d7a6ea','http://dummyimage.com/193x221.png/ff4444/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(940,'9f51f9a3066e9f8dc9b2ab2d3f19b66c','http://dummyimage.com/189x160.png/5fa2dd/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(941,'b6a849e10a605a351516d71b5d185cfb','http://dummyimage.com/135x223.png/ff4444/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(942,'39810c0cc808f06587d022ebd7bfebda','http://dummyimage.com/191x214.png/ff4444/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(943,'09c8dd9220bf6c279ce9b743378bc9fc','http://dummyimage.com/153x128.png/cc0000/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(944,'90794319a0f4f16321bd84d824758dd8','http://dummyimage.com/105x142.png/dddddd/000000',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(945,'703726cb41d5ff5ccf3f3e85574c01e4','http://dummyimage.com/142x106.png/dddddd/000000',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(946,'9655dffede3f536f4200863f0660f805','http://dummyimage.com/149x196.png/cc0000/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(947,'d2f5707d5a502ab498b219cea3ac48e1','http://dummyimage.com/110x229.png/ff4444/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(948,'3583022d4bd0fe8a6f3c096299b64e89','http://dummyimage.com/199x208.png/dddddd/000000',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(949,'e3a11cd467906bb4e26235244d255a33','http://dummyimage.com/242x136.png/cc0000/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(950,'1f6c24f489bc7e876079df0049b161c4','http://dummyimage.com/181x187.png/cc0000/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(951,'3ea9aa96066f40470580ded700c67373','http://dummyimage.com/127x131.png/dddddd/000000',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(952,'66b73fada0d1aabe2448ef9a2bef31eb','http://dummyimage.com/175x143.png/ff4444/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(953,'e5e6c47806ba9377f1b9f10fb3134905','http://dummyimage.com/219x132.png/cc0000/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(954,'63bd9097be62ded6a2180d99be1dbc6e','http://dummyimage.com/208x195.png/dddddd/000000',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(955,'edee8f97101f11defa0d82b292cec43a','http://dummyimage.com/154x188.png/dddddd/000000',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(956,'6028883bdbae66c8110ddd5f687cf388','http://dummyimage.com/123x144.png/ff4444/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(957,'6fd080c30f5c0426301067ce09e7c5c1','http://dummyimage.com/246x209.png/ff4444/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(958,'7a8b6121833b89de7fd2a0ca84c818a8','http://dummyimage.com/150x170.png/ff4444/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(959,'00ec88697af49f733c5273cc69edf0f3','http://dummyimage.com/139x209.png/ff4444/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(960,'f8c31ab371ccbcfde789ad9eabe3e9d4','http://dummyimage.com/136x160.png/cc0000/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(961,'d06d3fff87d557124a16a007d73fa1ef','http://dummyimage.com/107x207.png/dddddd/000000',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(962,'85543a940390bbf07e345b1743b62b13','http://dummyimage.com/147x234.png/5fa2dd/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(963,'6057462ff21c80f92cae228d56d8fd9d','http://dummyimage.com/202x106.png/cc0000/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(964,'6eddf36523abcc46ce928d2f623de37b','http://dummyimage.com/110x155.png/5fa2dd/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(965,'bcd97c680a7bbcab84ffedfc82c24bb0','http://dummyimage.com/224x235.png/dddddd/000000',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(966,'29f89c3586aee1e3e83fba7342cf4871','http://dummyimage.com/244x172.png/dddddd/000000',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(967,'378f8918881b0113b8f75778bba032ea','http://dummyimage.com/181x236.png/dddddd/000000',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(968,'f6841093cbeb5e4dc905995447f82bcb','http://dummyimage.com/200x144.png/dddddd/000000',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(969,'890bd5b4622186848f6aea974ecadf32','http://dummyimage.com/217x173.png/dddddd/000000',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(970,'ca75901cf31dda78b861a585aa4c6bcf','http://dummyimage.com/222x106.png/dddddd/000000',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(971,'bab3759516de6c9b546d5ed00bdaf5fc','http://dummyimage.com/246x152.png/dddddd/000000',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(972,'537cc3ed3bff8270cc4dc49d9312310e','http://dummyimage.com/102x189.png/cc0000/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(973,'43b115cde87ac44419c856a5fb661947','http://dummyimage.com/121x176.png/dddddd/000000',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(974,'82508a03459b70b28efd5b1bcf39ebc7','http://dummyimage.com/182x248.png/dddddd/000000',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(975,'8eea13e35b80a067341be595d5c079e9','http://dummyimage.com/121x223.png/5fa2dd/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(976,'fb1babb794fe75e264cb2b5a2923d9de','http://dummyimage.com/243x220.png/ff4444/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(977,'63ac83fcfaba86d2830a56afeb3c78ca','http://dummyimage.com/188x232.png/cc0000/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(978,'221ac409fb9ddd2df06d9dd7f594fa46','http://dummyimage.com/108x110.png/ff4444/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(979,'7d5529fafa09cf0d1bb621f566775ca1','http://dummyimage.com/166x119.png/cc0000/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(980,'66178c9bb9dbc09148d11e264160cf5e','http://dummyimage.com/228x244.png/5fa2dd/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(981,'9f11ca75b5f8af7b53b1818dbc8eaa60','http://dummyimage.com/234x130.png/dddddd/000000',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(982,'f2a1fd3705c7758cf69f642c90971c8d','http://dummyimage.com/119x152.png/dddddd/000000',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(983,'51112b6bc0b5b57dde28f34e0f75fbbd','http://dummyimage.com/190x245.png/cc0000/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(984,'a960076a3edc7226fb04588285160e9a','http://dummyimage.com/172x177.png/ff4444/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(985,'98a3a665a40a8b57b96adb7bec000920','http://dummyimage.com/195x212.png/ff4444/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(986,'f2588b0d46e75711b439db1dd83fc68b','http://dummyimage.com/227x174.png/5fa2dd/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(987,'116c8dfd3644b433db9454aadffd9401','http://dummyimage.com/244x194.png/cc0000/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(988,'cd69956d96e1c09b68b9f948ff1bdfa7','http://dummyimage.com/201x102.png/dddddd/000000',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(989,'ac365673cd9b80e02f3c9ba7977a5400','http://dummyimage.com/198x128.png/dddddd/000000',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(990,'bdc43af3b1c5fa0a4d92c5bbd8ea6275','http://dummyimage.com/187x214.png/ff4444/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(991,'26dd04c9148df6ed691d3a83451b5c6e','http://dummyimage.com/213x168.png/dddddd/000000',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(992,'08d4f499690bca8f5c60d1ecb62eb0dd','http://dummyimage.com/160x230.png/cc0000/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(993,'72e418ae70f22af97b2227c49ea5ab0a','http://dummyimage.com/248x167.png/ff4444/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(994,'64c4e8a7fd026c9ace61d807f486d654','http://dummyimage.com/170x116.png/cc0000/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(995,'3b77124ea92a3191a9eeeef0cb9350f1','http://dummyimage.com/200x181.png/dddddd/000000',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(996,'07eed59a4c2d603317f25a08688bd453','http://dummyimage.com/164x151.png/5fa2dd/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(997,'d75e858fa6720d6bd4d9f5273bf5f7ec','http://dummyimage.com/176x102.png/ff4444/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10'),(998,'bd48bcadac46601a124c41ab38835ff6','http://dummyimage.com/186x145.png/ff4444/ffffff',1,'2018-11-26 21:08:10','2018-11-26 21:09:10');
/*!40000 ALTER TABLE `documento` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Sgbd`@`localhost`*/ /*!50003 TRIGGER `new_documento` BEFORE INSERT ON `documento` FOR EACH ROW BEGIN 
			SET NEW.Fecha_Alta = CURRENT_TIMESTAMP;
		END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Sgbd`@`localhost`*/ /*!50003 TRIGGER `new_documento_url` BEFORE INSERT ON `documento` FOR EACH ROW BEGIN
			DECLARE corto char(32);
            SELECT MD5(NEW.Ruta) INTO corto;
			SET NEW.Token = corto;
		END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Sgbd`@`localhost`*/ /*!50003 TRIGGER `update_documento` BEFORE UPDATE ON `documento` FOR EACH ROW BEGIN  
			SET NEW.Fecha_Modificacion = CURRENT_TIMESTAMP;
		END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `log_acceso`
--

DROP TABLE IF EXISTS `log_acceso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `log_acceso` (
  `FK_usuario` int(11) NOT NULL,
  `Estatus` tinyint(1) NOT NULL DEFAULT '0',
  `Fecha_Alta` timestamp NOT NULL,
  `Fecha_Modificacion` timestamp NULL DEFAULT NULL,
  `Descripcion` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  KEY `Usuario_Logs_Acceso_idx` (`FK_usuario`),
  CONSTRAINT `Usuario_Log_Acceso` FOREIGN KEY (`FK_usuario`) REFERENCES `usuario` (`pk_usuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_acceso`
--

LOCK TABLES `log_acceso` WRITE;
/*!40000 ALTER TABLE `log_acceso` DISABLE KEYS */;
INSERT INTO `log_acceso` VALUES (1,1,'2018-11-22 17:33:31',NULL,'Cambio de Email del usuario.'),(1,1,'2018-11-22 17:33:31',NULL,'Cambio de nombre del usuario.'),(2,1,'2018-11-22 17:33:31',NULL,'Cambio de Email del usuario.'),(2,1,'2018-11-22 17:33:31',NULL,'Cambio de nombre del usuario.'),(3,1,'2018-11-22 17:33:31',NULL,'Cambio de Email del usuario.'),(3,1,'2018-11-22 17:33:31',NULL,'Cambio de nombre del usuario.'),(4,1,'2018-11-22 17:33:31',NULL,'Cambio de Email del usuario.'),(4,1,'2018-11-22 17:33:31',NULL,'Cambio de nombre del usuario.'),(5,1,'2018-11-22 17:33:31',NULL,'Cambio de Email del usuario.'),(5,1,'2018-11-22 17:33:31',NULL,'Cambio de nombre del usuario.'),(1,1,'2018-11-22 17:53:14',NULL,'Cambio de Telefono del usuario.'),(1,1,'2018-11-22 17:58:22',NULL,'Cambio de Email del usuario.'),(1,1,'2018-11-22 17:58:22',NULL,'Cambio de Telefono del usuario.'),(6,1,'2018-11-23 00:22:47',NULL,'Usuario dado de alta.'),(6,1,'2018-11-23 00:26:41',NULL,'Cuenta activada.'),(6,1,'2018-11-23 00:29:03',NULL,'Contraseña Cambiada.'),(7,1,'2018-11-23 01:32:14',NULL,'Usuario dado de alta.'),(7,1,'2018-11-23 01:41:19',NULL,'Cambio de Email.'),(7,1,'2018-11-23 01:41:19',NULL,'Cambio de Telefono.'),(7,1,'2018-11-23 01:41:19',NULL,'Cambio de nombre.'),(7,1,'2018-11-23 01:42:41',NULL,'Cuenta activada.'),(7,1,'2018-11-23 01:44:06',NULL,'Contraseña Cambiada.'),(7,1,'2018-11-23 18:19:08',NULL,'Cuenta desactivada.'),(7,1,'2018-11-23 18:20:24',NULL,'Cuenta activada.');
/*!40000 ALTER TABLE `log_acceso` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Sgbd`@`localhost`*/ /*!50003 TRIGGER `new_log_acceso` BEFORE INSERT ON `log_acceso` FOR EACH ROW BEGIN
			SET NEW.Estatus = TRUE;
            SET NEW.Fecha_Alta = CURRENT_TIMESTAMP;
		END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Sgbd`@`localhost`*/ /*!50003 TRIGGER `update_log_acceso` BEFORE UPDATE ON `log_acceso` FOR EACH ROW BEGIN
            SET NEW.Fecha_Modificacion = CURRENT_TIMESTAMP;
		END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `mensaje`
--

DROP TABLE IF EXISTS `mensaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `mensaje` (
  `PK_mensaje` int(11) NOT NULL AUTO_INCREMENT,
  `FK_usuario` int(11) NOT NULL COMMENT 'Persona que crea',
  `Titulo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `FK_tipo` int(11) NOT NULL,
  `Mensaje` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `Estatus` tinyint(4) DEFAULT '0',
  `Fecha_Alta` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Fecha_Modificacion` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`PK_mensaje`),
  KEY `Tipo_Mensaje_idx` (`FK_tipo`),
  KEY `Usuario_Mensaje_idx` (`FK_usuario`),
  CONSTRAINT `Tipo_Mensaje` FOREIGN KEY (`FK_tipo`) REFERENCES `cat_tipo_mensaje` (`pk_tipo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Usuario_Mensaje` FOREIGN KEY (`FK_usuario`) REFERENCES `usuario` (`pk_usuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mensaje`
--

LOCK TABLES `mensaje` WRITE;
/*!40000 ALTER TABLE `mensaje` DISABLE KEYS */;
/*!40000 ALTER TABLE `mensaje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `persona` (
  `PK_persona` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `Apellido_paterno` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `Apellido_materno` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `FK_tipo` int(11) NOT NULL,
  `Estatus` tinyint(1) NOT NULL DEFAULT '0',
  `Telefono` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `Email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `Fecha_Alta` timestamp NOT NULL,
  `Fecha_Modificacion` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`PK_persona`),
  UNIQUE KEY `Email_UNIQUE` (`Email`),
  KEY `Cat_Tipo_Persona_idx` (`FK_tipo`),
  CONSTRAINT `Cat_Tipo_Persona_Persona` FOREIGN KEY (`FK_tipo`) REFERENCES `cat_tipo_persona` (`pk_cat_tipo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` VALUES (1,'Chloe','Evans','Stafford',3,1,'5552543890','et@sedest.co.uk','2018-11-14 16:45:37','2018-11-22 17:33:31'),(2,'Mariko','Duffy','Taylor',3,1,NULL,NULL,'2018-11-14 16:45:37','2018-11-21 22:50:05'),(3,'Raymond','Booker','Tucker',4,1,NULL,NULL,'2018-11-14 16:45:37','2018-11-14 16:46:49'),(4,'Brenda','Wilcox','Horton',3,1,NULL,NULL,'2018-11-14 16:45:37','2018-11-14 16:46:49'),(5,'Blaze','Christian','Le',4,1,NULL,NULL,'2018-11-14 16:45:37','2018-11-14 16:46:49'),(6,'Brady','Pratt','Odom',3,1,NULL,NULL,'2018-11-14 16:45:37','2018-11-21 22:50:05'),(7,'Ryder','Marquez','Wood',6,1,'5552172270','est.vitae.sodales@ac.ca','2018-11-14 16:45:37','2018-11-22 17:33:31'),(8,'Finn','Cooke','Wallace',6,1,NULL,NULL,'2018-11-14 16:45:37','2018-11-14 16:46:49'),(9,'George','Mclean','Rojas',1,1,NULL,NULL,'2018-11-14 16:45:37','2018-11-21 22:50:05'),(10,'Allegra','Dean','Byrd',4,1,NULL,NULL,'2018-11-14 16:45:37','2018-11-14 16:46:49'),(11,'Nora','Benton','Reynolds',5,1,NULL,NULL,'2018-11-14 16:45:37','2018-11-14 16:46:49'),(12,'Kathleen','Williams','Moreno',3,1,NULL,NULL,'2018-11-14 16:45:37','2018-11-14 16:46:49'),(13,'Joan','Schmidt','Hartman',3,1,NULL,NULL,'2018-11-14 16:45:37','2018-11-21 22:50:05'),(14,'April','Lyons','Hays',2,1,'5581291744','luctus@enimEtiamgravida.com','2018-11-14 16:45:37','2018-11-22 17:33:31'),(15,'Orlando','Simmons','Burke',6,1,NULL,NULL,'2018-11-14 16:45:37','2018-11-14 16:46:49'),(16,'Xaviera','Morgan','Marshall',2,1,'5568457136','at.velit@nectellusNunc.edu','2018-11-14 16:45:37','2018-11-22 17:33:31'),(17,'Wallace','Peterson','Jensen',4,1,'5585092167','ullamcorper@ridiculus.edu','2018-11-14 16:45:37','2018-11-22 17:33:33'),(18,'Camille','Walsh','Velasquez',3,1,NULL,NULL,'2018-11-14 16:45:37','2018-11-14 16:46:49'),(19,'Gisela','Solomon','Meyers',2,1,NULL,NULL,'2018-11-14 16:45:37','2018-11-14 16:46:49'),(20,'Adria','Mitchell','Alvarado',5,0,NULL,NULL,'2018-11-14 16:45:37','2018-11-21 18:22:16'),(21,'Benedict','Eaton','Richard',6,1,NULL,NULL,'2018-11-14 16:45:37','2018-11-14 16:46:49'),(22,'Sheila','Colon','Aguirre',2,1,NULL,NULL,'2018-11-14 16:45:37','2018-11-21 22:50:05'),(23,'Virginia','Byrd','Barr',1,1,NULL,NULL,'2018-11-14 16:45:37','2018-11-14 16:46:49'),(24,'Adrian','Wolf','Boyer',1,1,NULL,NULL,'2018-11-14 16:45:37','2018-11-14 16:46:49'),(25,'Ulla','Best','Wise',4,1,NULL,NULL,'2018-11-14 16:45:37','2018-11-21 22:50:05'),(26,'Darryl','Cooper','Best',5,1,NULL,NULL,'2018-11-14 16:45:37','2018-11-14 16:46:49'),(27,'Britanney','Gordon','Cochran',6,1,NULL,NULL,'2018-11-14 16:45:37','2018-11-14 16:46:49'),(28,'Jeremy','Medina','Guzman',3,1,NULL,NULL,'2018-11-14 16:45:37','2018-11-14 16:46:49'),(29,'Kimberley','Atkinson','Hopkins',4,1,NULL,NULL,'2018-11-14 16:45:37','2018-11-14 16:46:49'),(30,'Shellie','Munoz','Sparks',2,0,NULL,NULL,'2018-11-14 16:45:37','2018-11-21 18:22:16'),(31,'Quyn','Barker','Waters',3,1,NULL,NULL,'2018-11-14 16:45:38','2018-11-14 16:46:49'),(32,'Randall','Jefferson','Zimmerman',4,1,NULL,NULL,'2018-11-14 16:45:38','2018-11-14 16:46:49'),(33,'Kaden','Lane','Olsen',2,1,NULL,NULL,'2018-11-14 16:45:38','2018-11-14 16:46:49'),(34,'Grant','Mcknight','Witt',4,1,NULL,NULL,'2018-11-14 16:45:38','2018-11-14 16:46:49'),(35,'Courtney','Webster','Albert',3,1,NULL,NULL,'2018-11-14 16:45:38','2018-11-14 16:46:49'),(36,'Rashad','Jones','Velez',3,1,NULL,NULL,'2018-11-14 16:45:38','2018-11-14 16:46:49'),(37,'Len','Daugherty','Woodard',3,1,NULL,NULL,'2018-11-14 16:45:38','2018-11-14 16:46:49'),(38,'Maxwell','Shaw','Rich',5,1,NULL,NULL,'2018-11-14 16:45:38','2018-11-14 16:46:49'),(39,'Zorita','Huff','Barnett',5,1,NULL,NULL,'2018-11-14 16:45:38','2018-11-21 22:50:05'),(40,'Teegan','Compton','Lancaster',2,1,NULL,NULL,'2018-11-14 16:45:38','2018-11-14 16:46:49'),(41,'Moana','Nash','Fernandez',4,1,NULL,NULL,'2018-11-14 16:45:38','2018-11-14 16:46:49'),(42,'Doris','Buchanan','Clarke',5,1,NULL,NULL,'2018-11-14 16:45:38','2018-11-14 16:46:49'),(43,'Shelly','Cross','Pierce',2,1,NULL,NULL,'2018-11-14 16:45:38','2018-11-14 16:46:49'),(44,'Cora','Holloway','Rutledge',1,1,NULL,NULL,'2018-11-14 16:45:38','2018-11-14 16:46:49'),(45,'Aimee','Travis','Potter',4,1,NULL,NULL,'2018-11-14 16:45:38','2018-11-14 16:46:49'),(46,'Kennan','Cain','Nichols',3,1,NULL,NULL,'2018-11-14 16:45:38','2018-11-14 16:46:49'),(47,'Dennis','Lewis','Harrington',6,1,NULL,NULL,'2018-11-14 16:45:38','2018-11-14 16:46:49'),(48,'Sylvester','Horn','Yang',5,1,NULL,NULL,'2018-11-14 16:45:38','2018-11-21 22:50:05'),(49,'Sara','Farrell','Jones',1,1,NULL,NULL,'2018-11-14 16:45:38','2018-11-14 16:46:49'),(50,'Kasimir','Gibbs','Preston',2,1,NULL,NULL,'2018-11-14 16:45:38','2018-11-14 16:46:49'),(51,'Hu','Griffith','Martin',5,1,NULL,NULL,'2018-11-14 16:45:38','2018-11-14 16:46:49'),(52,'Guy','Bowers','Livingston',1,1,NULL,NULL,'2018-11-14 16:45:38','2018-11-14 16:46:49'),(53,'Anthony','Armstrong','Russo',3,1,NULL,NULL,'2018-11-14 16:45:38','2018-11-14 16:46:49'),(54,'Chastity','Howard','Shannon',1,1,NULL,NULL,'2018-11-14 16:45:38','2018-11-14 16:46:49'),(55,'Xyla','Hinton','Faulkner',5,1,NULL,NULL,'2018-11-14 16:45:38','2018-11-14 16:46:49'),(56,'Axel','Flynn','Hobbs',5,1,NULL,NULL,'2018-11-14 16:45:38','2018-11-14 16:46:49'),(57,'Thomas','Cherry','Case',6,1,NULL,NULL,'2018-11-14 16:45:38','2018-11-14 16:46:49'),(58,'Zephr','Rodgers','Love',6,1,NULL,NULL,'2018-11-14 16:45:38','2018-11-14 16:46:49'),(59,'Herman','Romero','Jacobs',6,1,NULL,NULL,'2018-11-14 16:45:38','2018-11-14 16:46:49'),(60,'Tiger','Stafford','Hill',6,1,NULL,NULL,'2018-11-14 16:45:38','2018-11-14 16:46:49'),(61,'Oprah','Carroll','Thomas',4,1,NULL,NULL,'2018-11-14 16:45:38','2018-11-14 16:46:49'),(62,'Zorita','Beasley','Holloway',6,1,NULL,NULL,'2018-11-14 16:45:38','2018-11-14 16:46:49'),(63,'Cherokee','Riggs','Hood',5,1,NULL,NULL,'2018-11-14 16:45:38','2018-11-21 22:50:05'),(64,'Len','Mclean','Livingston',5,1,NULL,NULL,'2018-11-14 16:45:38','2018-11-14 16:46:49'),(65,'Garrett','Stein','Robles',1,1,NULL,NULL,'2018-11-14 16:45:38','2018-11-14 16:46:49'),(66,'Reese','Spears','Abbott',4,1,NULL,NULL,'2018-11-14 16:45:38','2018-11-14 16:46:49'),(67,'Caldwell','Neal','Navarro',3,1,NULL,NULL,'2018-11-14 16:45:38','2018-11-14 16:46:49'),(68,'Gary','Sexton','Tran',2,1,NULL,NULL,'2018-11-14 16:45:38','2018-11-14 16:46:49'),(69,'Baxter','Kirby','Sears',5,1,NULL,NULL,'2018-11-14 16:45:38','2018-11-14 16:46:49'),(70,'Justin','Sheppard','Burgess',1,1,NULL,NULL,'2018-11-14 16:45:38','2018-11-21 22:50:05'),(71,'Yuli','Moses','Saunders',4,1,NULL,NULL,'2018-11-14 16:45:38','2018-11-14 16:46:49'),(72,'Paki','Warner','Hays',5,1,NULL,NULL,'2018-11-14 16:45:38','2018-11-14 16:46:49'),(73,'Honorato','Serrano','Thomas',6,1,NULL,NULL,'2018-11-14 16:45:38','2018-11-14 16:46:49'),(74,'Beatrice','Bowen','Berger',2,1,NULL,NULL,'2018-11-14 16:45:38','2018-11-14 16:46:49'),(75,'Azalia','Wheeler','Pennington',4,1,NULL,NULL,'2018-11-14 16:45:38','2018-11-14 16:46:49'),(76,'Amber','Oliver','Hunt',2,1,NULL,NULL,'2018-11-14 16:45:38','2018-11-21 22:50:05'),(77,'Alisa','Rosario','Frazier',3,0,NULL,NULL,'2018-11-14 16:45:38','2018-11-21 18:22:16'),(78,'Clarke','Rose','Hull',4,1,NULL,NULL,'2018-11-14 16:45:38','2018-11-14 16:46:49'),(79,'Wilma','Melendez','Hensley',1,1,NULL,NULL,'2018-11-14 16:45:38','2018-11-21 22:50:05'),(80,'Meredith','Brown','Mays',4,0,NULL,NULL,'2018-11-14 16:45:38','2018-11-21 18:22:16'),(81,'Penelope','Day','Kaufman',5,1,NULL,NULL,'2018-11-14 16:45:38','2018-11-14 16:46:49'),(82,'Serina','Schneider','Barron',3,1,NULL,NULL,'2018-11-14 16:45:38','2018-11-14 16:46:49'),(83,'Destiny','Daniels','Montgomery',6,0,NULL,NULL,'2018-11-14 16:45:38','2018-11-21 18:22:16'),(84,'Cassady','Gilliam','Perkins',4,0,NULL,NULL,'2018-11-14 16:45:38','2018-11-21 18:22:16'),(85,'Clare','Rocha','Guzman',4,1,NULL,NULL,'2018-11-14 16:45:38','2018-11-14 16:46:49'),(86,'Casey','Santiago','Taylor',4,0,NULL,NULL,'2018-11-14 16:45:38','2018-11-21 18:22:16'),(87,'Renee','Brady','Jordan',4,1,NULL,NULL,'2018-11-14 16:45:38','2018-11-14 16:46:49'),(88,'Ray','Bradshaw','Best',1,0,NULL,NULL,'2018-11-14 16:45:38','2018-11-21 18:22:16'),(89,'Veronica','Davidson','Phillips',6,1,NULL,NULL,'2018-11-14 16:45:38','2018-11-14 16:46:49'),(90,'Odessa','Russell','Cunningham',4,1,NULL,NULL,'2018-11-14 16:45:38','2018-11-14 16:46:49'),(91,'Juliet','Mayo','Garza',6,1,NULL,NULL,'2018-11-14 16:45:38','2018-11-14 16:46:49'),(92,'Karen','Phelps','Bentley',6,1,NULL,NULL,'2018-11-14 16:45:38','2018-11-21 22:50:05'),(93,'Abbot','Osborn','Stephens',2,1,NULL,NULL,'2018-11-14 16:45:38','2018-11-14 16:46:49'),(94,'Joshua','Bryan','Bernard',6,1,NULL,NULL,'2018-11-14 16:45:38','2018-11-14 16:46:49'),(95,'Aiko','Parks','Morrison',6,0,NULL,NULL,'2018-11-14 16:45:38','2018-11-21 18:22:16'),(96,'Chester','Mckee','Rosario',2,1,NULL,NULL,'2018-11-14 16:45:38','2018-11-14 16:46:49'),(97,'Zenaida','Glover','Giles',5,1,NULL,NULL,'2018-11-14 16:45:38','2018-11-14 16:46:49'),(98,'Jolene','Clark','Peters',2,1,NULL,NULL,'2018-11-14 16:45:38','2018-11-14 16:46:49'),(99,'Hayley','Ochoa','Roman',5,1,NULL,NULL,'2018-11-14 16:45:38','2018-11-14 16:46:49'),(100,'Clementine','Mosley','Mccall',5,0,NULL,NULL,'2018-11-14 16:45:38','2018-11-21 18:22:16'),(101,'Violet','Good','Henry',4,0,NULL,'et.nunc@Nulla.edu','2018-11-21 00:25:55',NULL),(102,'Lance','Maynard','Levy',6,0,NULL,'nibh.enim.gravida@aarcu.ca','2018-11-21 00:25:55','2018-11-21 18:22:16'),(103,'Theodore','Barrera','Merritt',4,0,NULL,'molestie.pharetra@Aliquamornarelibero.edu','2018-11-21 00:25:55',NULL),(104,'Isabella','Dale','Mcdonald',7,1,NULL,'Curabitur.ut@Duis.co.uk','2018-11-21 00:25:55','2018-11-21 22:50:05'),(105,'Kane','Holcomb','Moss',5,0,NULL,'ultrices.a.auctor@tempusmauriserat.co.uk','2018-11-21 00:25:55',NULL),(106,'Caesar','Glenn','Rutledge',3,1,NULL,'eu.placerat@arcuacorci.com','2018-11-21 00:25:55','2018-11-21 22:50:05'),(107,'Sylvester','Madden','Chavez',5,1,NULL,'Etiam@acipsum.co.uk','2018-11-21 00:25:55','2018-11-21 22:50:05'),(108,'Eve','Harmon','Alexander',2,1,NULL,'mattis.Integer.eu@duiCum.com','2018-11-21 00:25:55','2018-11-21 22:50:05'),(109,'Allegra','Tran','Alvarez',2,0,NULL,'dolor@Cras.co.uk','2018-11-21 00:25:55','2018-11-21 18:22:16'),(110,'Avye','Adkins','Velez',3,0,NULL,'erat.Sed@acorciUt.co.uk','2018-11-21 00:25:55',NULL),(111,'Patience','Malone','Walter',6,0,NULL,'ligula.Donec@estNunc.net','2018-11-21 00:25:55',NULL),(112,'Ivory','Lopez','Acosta',6,1,NULL,'a@auctornonfeugiat.ca','2018-11-21 00:25:55','2018-11-21 22:50:05'),(113,'Oscar','Ball','Mcmillan',4,0,NULL,'Nullam@Sedeunibh.ca','2018-11-21 00:25:55',NULL),(114,'Kennan','Ballard','Weeks',5,1,NULL,'augue@Nuncmauris.com','2018-11-21 00:25:55','2018-11-21 22:50:05'),(115,'Eagan','Justice','Martinez',4,1,NULL,'malesuada.Integer.id@elitNulla.net','2018-11-21 00:25:55','2018-11-21 22:50:05'),(116,'Lillith','Hammond','Vaughan',2,1,NULL,'mollis.Duis@utsem.org','2018-11-21 00:25:55','2018-11-21 22:50:05'),(117,'Xenos','Deleon','Stone',2,1,NULL,'Aliquam@nislNulla.com','2018-11-21 00:25:55','2018-11-21 22:50:05'),(118,'Blair','Madden','Joyner',3,0,NULL,'adipiscing.enim@In.edu','2018-11-21 00:25:55','2018-11-21 18:22:16'),(119,'Adria','Mathis','Vinson',3,1,NULL,'varius.et@tristique.co.uk','2018-11-21 00:25:55','2018-11-21 22:50:05'),(120,'Charles','Cleveland','Pearson',5,0,NULL,'Phasellus.vitae.mauris@tempor.co.uk','2018-11-21 00:25:55','2018-11-21 18:22:16'),(121,'Jose','Sawyer','Figueroa',7,1,'1234567890','pacheco@gmail.com','2018-11-21 00:25:55','2018-11-23 01:41:19'),(122,'Hector','Estes','Williamson',4,1,NULL,'lectus.justo.eu@mieleifendegestas.co.uk','2018-11-21 00:25:55','2018-11-21 22:50:05'),(123,'Stuart','Perry','Burnett',6,1,NULL,'ac@orcilobortis.com','2018-11-21 00:25:55','2018-11-21 22:50:05'),(124,'Hilel','Benjamin','Hughes',5,1,NULL,'diam.at.pretium@eratvolutpatNulla.ca','2018-11-21 00:25:55','2018-11-21 22:50:05'),(125,'Allen','Rogers','Silva',3,1,NULL,'accumsan.interdum.libero@semvitae.net','2018-11-21 00:25:55','2018-11-21 22:50:05'),(126,'Avye','Melton','Chaney',6,1,NULL,'in.dolor.Fusce@libero.net','2018-11-21 00:25:55','2018-11-21 22:50:05'),(127,'Macy','Hayden','Hatfield',3,1,NULL,'amet.metus@lectus.edu','2018-11-21 00:25:55','2018-11-21 22:50:05'),(128,'Ciaran','Stanley','Thompson',4,0,NULL,'In.ornare@elitdictum.org','2018-11-21 00:25:55',NULL),(129,'Noble','Baldwin','Herring',4,0,NULL,'quis.tristique@Donec.net','2018-11-21 00:25:55',NULL),(130,'Kiara','Bartlett','Miles',1,0,NULL,'mi.enim.condimentum@IntegerurnaVivamus.org','2018-11-21 00:25:55',NULL),(131,'Vladimir','Munoz','Johns',5,1,NULL,'eu.accumsan@Fuscefermentum.org','2018-11-21 00:25:55','2018-11-21 22:50:05'),(132,'Ariana','Pace','Stevenson',4,1,NULL,'sollicitudin.commodo.ipsum@semperpretium.ca','2018-11-21 00:25:55','2018-11-21 22:50:05'),(133,'Linus','Gould','Roberson',1,1,NULL,'mauris@nequepellentesquemassa.co.uk','2018-11-21 00:25:55','2018-11-21 22:50:05'),(134,'Joelle','Walker','Cantu',2,1,NULL,'amet@porttitorinterdumSed.net','2018-11-21 00:25:55','2018-11-21 22:50:05'),(135,'Brynne','Buchanan','Burch',1,1,NULL,'tempor.diam.dictum@SuspendissesagittisNullam.ca','2018-11-21 00:25:55','2018-11-21 22:50:05'),(136,'Allen','Lyons','Thomas',1,0,NULL,'nascetur@velpedeblandit.edu','2018-11-21 00:25:55',NULL),(137,'Aristotle','Wilkins','Vasquez',6,0,NULL,'porta@anequeNullam.co.uk','2018-11-21 00:25:55',NULL),(138,'Brent','Hoover','Vincent',5,1,NULL,'augue.ac@risusInmi.co.uk','2018-11-21 00:25:55','2018-11-21 22:50:05'),(139,'Lawrence','Richardson','Woods',5,1,NULL,'Proin.sed@lorem.net','2018-11-21 00:25:55','2018-11-21 22:50:05'),(140,'Jaime','Rutledge','Salas',6,1,NULL,'eu.odio@semmolestie.edu','2018-11-21 00:25:55','2018-11-21 22:50:05'),(141,'Henry','Morales','Dunlap',1,1,'5545624358','drago@algo.com','2018-11-21 00:25:55','2018-11-22 17:58:22'),(142,'Ishmael','Mccullough','Langley',3,0,NULL,'Proin@sit.net','2018-11-21 00:25:55',NULL),(143,'Zephr','Carrillo','Wagner',3,1,NULL,'mattis.Integer@pedeblanditcongue.org','2018-11-21 00:25:55','2018-11-21 22:50:05'),(144,'Abigail','Harrington','Carey',5,0,NULL,'cursus.diam@Aeneangravida.org','2018-11-21 00:25:55',NULL),(145,'Tyrone','Petersen','Marks',5,1,NULL,'facilisis.lorem@ligulatortordictum.org','2018-11-21 00:25:55','2018-11-21 22:50:05'),(146,'Charity','Molina','Frazier',6,1,NULL,'at.lacus@diamloremauctor.ca','2018-11-21 00:25:55','2018-11-21 22:50:05'),(147,'Nigel','Trevino','Langley',1,1,NULL,'pellentesque.Sed@risusMorbimetus.net','2018-11-21 00:25:55','2018-11-21 22:50:05'),(148,'Wendy','Holt','Leblanc',6,0,NULL,'cursus.et@nasceturridiculus.edu','2018-11-21 00:25:55',NULL),(149,'Nora','Horn','Mccarthy',4,1,NULL,'Donec.felis.orci@purusac.net','2018-11-21 00:25:55','2018-11-21 22:50:05'),(150,'Ulysses','Gill','Drake',1,1,'5584069988','in.lobortis@sapienCras.net','2018-11-21 00:25:55','2018-11-22 17:33:31'),(151,'Noble','Ochoa','Hickman',5,1,NULL,'eget@loremsitamet.com','2018-11-21 00:25:55','2018-11-21 22:50:05'),(152,'Harding','Vance','English',1,0,NULL,'malesuada.fringilla.est@velitCraslorem.org','2018-11-21 00:25:55',NULL),(153,'Cody','Smith','Jarvis',1,1,NULL,'Nunc.sollicitudin@necurnaet.edu','2018-11-21 00:25:55','2018-11-21 22:50:05'),(154,'Cherokee','Middleton','Chase',2,1,NULL,'arcu.Vestibulum.ut@Pellentesquehabitant.co.uk','2018-11-21 00:25:55','2018-11-21 22:50:05'),(155,'Caesar','Boyle','Combs',3,0,NULL,'eget.metus@turpisegestasFusce.co.uk','2018-11-21 00:25:55',NULL),(156,'Bianca','Curry','Good',4,1,NULL,'quis@ametluctusvulputate.org','2018-11-21 00:25:55','2018-11-21 22:50:05'),(157,'Derek','Cohen','Daniel',5,0,NULL,'scelerisque@bibendumullamcorperDuis.net','2018-11-21 00:25:55','2018-11-21 18:22:16'),(158,'Brock','Benson','Cash',2,0,NULL,'purus.Duis.elementum@Cumsociis.edu','2018-11-21 00:25:55',NULL),(159,'Tanek','Glover','Stanley',4,0,NULL,'a.felis@pedemalesuada.com','2018-11-21 00:25:55',NULL),(160,'Kevin','Blackwell','Hall',5,0,NULL,'dui.augue.eu@eu.com','2018-11-21 00:25:55',NULL),(161,'Marvin','Graves','Pacheco',6,0,NULL,'sodales.elit@Namconsequat.ca','2018-11-21 00:25:55',NULL),(162,'Violet','Jenkins','Blankenship',1,1,'5500391304','ac.sem@interdum.edu','2018-11-21 00:25:55','2018-11-22 17:33:31'),(163,'Donna','Hancock','Morrison',3,0,NULL,'Quisque.tincidunt@liberoMorbiaccumsan.org','2018-11-21 00:25:55',NULL),(164,'Pearl','Workman','Oliver',5,1,NULL,'et@quamPellentesquehabitant.ca','2018-11-21 00:25:55','2018-11-21 22:50:05'),(165,'Zahir','Nelson','Winters',2,0,NULL,'eros.Nam@molestie.ca','2018-11-21 00:25:55',NULL),(166,'Lee','Hodge','Coleman',3,1,NULL,'lorem.lorem.luctus@lectus.com','2018-11-21 00:25:55','2018-11-21 22:50:05'),(167,'Ivory','Contreras','Burke',3,0,NULL,'sagittis@congueIn.com','2018-11-21 00:25:55',NULL),(168,'Berk','Watts','Noel',6,1,NULL,'tellus@placeratCras.co.uk','2018-11-21 00:25:55','2018-11-21 22:50:05'),(169,'Cole','Villarreal','Matthews',3,0,NULL,'eu.augue.porttitor@ametultricies.org','2018-11-21 00:25:55','2018-11-21 18:22:16'),(170,'Carly','Lara','Torres',1,1,NULL,'in.tempus.eu@Integervitaenibh.edu','2018-11-21 00:25:55','2018-11-21 22:50:05'),(171,'Lesley','Stevens','Dickson',1,0,NULL,'tellus.eu.augue@quis.org','2018-11-21 00:25:55',NULL),(172,'Chiquita','Kirk','Steele',2,0,NULL,'Donec.nibh@acfermentum.co.uk','2018-11-21 00:25:55',NULL),(173,'Ciaran','Wade','Finley',7,0,NULL,'eget@imperdiet.com','2018-11-21 00:25:55',NULL),(174,'Fitzgerald','Collins','Woods',6,0,NULL,'vel.lectus@turpis.edu','2018-11-21 00:25:55',NULL),(175,'Britanni','Cain','Parks',5,0,NULL,'sit.amet.orci@odioAliquam.co.uk','2018-11-21 00:25:55',NULL),(176,'Len','Lucas','Parks',4,1,NULL,'Aliquam.erat.volutpat@luctus.co.uk','2018-11-21 00:25:55','2018-11-21 22:50:05'),(177,'Ronan','Chang','Peterson',1,0,NULL,'Nam@mollis.co.uk','2018-11-21 00:25:55','2018-11-21 18:22:16'),(178,'Eaton','Hanson','Robbins',1,1,NULL,'urna.et@estMauriseu.edu','2018-11-21 00:25:55','2018-11-21 22:50:05'),(179,'Linus','Hendricks','Watkins',5,1,NULL,'ac.mattis.velit@felis.com','2018-11-21 00:25:55','2018-11-21 22:50:05'),(180,'Faith','Bradshaw','Hahn',3,1,NULL,'tempor@egetlacusMauris.ca','2018-11-21 00:25:55','2018-11-21 22:50:05'),(181,'Wynter','Cervantes','House',4,1,NULL,'Duis@in.net','2018-11-21 00:25:55','2018-11-21 22:50:05'),(182,'Ginger','Combs','Hendricks',5,0,NULL,'per.conubia@Loremipsumdolor.edu','2018-11-21 00:25:55','2018-11-21 18:22:16'),(183,'Kameko','Sloan','Combs',6,0,NULL,'eleifend.egestas.Sed@pharetranibhAliquam.ca','2018-11-21 00:25:55','2018-11-21 18:22:16'),(184,'Martha','Hess','Raymond',6,1,NULL,'neque.non@vulputate.co.uk','2018-11-21 00:25:55','2018-11-21 22:50:05'),(185,'Victor','Ayers','Vaughan',3,1,NULL,'neque@eratinconsectetuer.org','2018-11-21 00:25:55','2018-11-21 22:50:05'),(186,'Susan','Shepard','Adams',3,1,NULL,'Duis.mi@felisorci.org','2018-11-21 00:25:55','2018-11-21 22:50:05'),(187,'Travis','Barlow','Rowland',7,1,'5589799321','tellus.sem.mollis@Sed.co.uk','2018-11-21 00:25:55','2018-11-22 17:33:31'),(188,'Blake','Wolf','Nieves',2,1,NULL,'augue@adipiscing.edu','2018-11-21 00:25:55','2018-11-21 22:50:05'),(189,'Ursa','Hammond','Le',4,0,NULL,'varius.et.euismod@ligulatortordictum.net','2018-11-21 00:25:55',NULL),(190,'Giacomo','Campbell','Gibson',2,0,NULL,'lacinia.orci@ipsum.ca','2018-11-21 00:25:55','2018-11-21 18:22:16'),(191,'Blaze','Walter','Howe',3,1,NULL,'Curabitur.vel@mollislectuspede.net','2018-11-21 00:25:55','2018-11-21 22:50:05'),(192,'Iliana','Wong','Downs',4,0,NULL,'Vestibulum.ante@etnuncQuisque.net','2018-11-21 00:25:55',NULL),(193,'Reuben','Cruz','Sweet',5,1,NULL,'nunc.est.mollis@nisl.ca','2018-11-21 00:25:55','2018-11-21 22:50:05'),(194,'Nehru','Raymond','Brennan',2,1,NULL,'iaculis.quis.pede@ligulaNullam.ca','2018-11-21 00:25:55','2018-11-21 22:50:05'),(195,'Charles','Mcguire','Foster',2,0,NULL,'ut@euultricessit.org','2018-11-21 00:25:55','2018-11-21 18:22:16'),(196,'Kato','Hensley','Mcfarland',7,1,NULL,'erat.in@nunc.net','2018-11-21 00:25:55','2018-11-21 22:50:05'),(197,'Latifah','Kirkland','Calderon',6,1,'5575093800','Sed.congue@mauriseu.edu','2018-11-21 00:25:55','2018-11-22 17:33:31'),(198,'Iola','Wise','Ryan',7,0,NULL,'eleifend.egestas.Sed@pedenonummyut.com','2018-11-21 00:25:55','2018-11-21 18:22:16'),(199,'Phoebe','Craft','Cohen',6,1,NULL,'commodo@Pellentesqueutipsum.ca','2018-11-21 00:25:55','2018-11-21 22:50:05'),(200,'Jerry','Lott','Molina',7,1,NULL,NULL,'2018-11-21 00:25:55','2018-11-22 18:36:18');
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Sgbd`@`localhost`*/ /*!50003 TRIGGER `new_persona` BEFORE INSERT ON `persona` FOR EACH ROW BEGIN  
			SET NEW.Fecha_Alta = CURRENT_TIMESTAMP;
		END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Sgbd`@`localhost`*/ /*!50003 TRIGGER `update_persona` BEFORE UPDATE ON `persona` FOR EACH ROW BEGIN
			DECLARE neto int;
			IF NEW.Email IS NULL THEN
				SELECT COUNT(*) INTO neto FROM usuario WHERE FK_persona  = NEW.PK_persona;
                IF neto IS NULL OR neto > 0 THEN
					signal sqlstate '45000' set message_text = 'USE0005. Los usuarios requieren un email.';
                END IF;
            END IF;
			SET NEW.Fecha_Modificacion = CURRENT_TIMESTAMP;
		END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Sgbd`@`localhost`*/ /*!50003 TRIGGER `update_persona_log` AFTER UPDATE ON `persona` FOR EACH ROW BEGIN
			DECLARE user_key int(11);
            SELECT pk_usuario INTO user_key FROM usuario WHERE FK_persona = NEW.PK_persona;
            
			IF user_key IS NOT NULL AND user_key > 0 AND OLD.Email != NEW.Email THEN
				INSERT INTO log_acceso(FK_usuario ,Descripcion) VALUES (user_key, 'Cambio de Email.');
			END IF;
            IF user_key IS NOT NULL AND user_key > 0 AND OLD.Telefono != NEW.Telefono THEN
				INSERT INTO log_acceso(FK_usuario ,Descripcion) VALUES (user_key, 'Cambio de Telefono.');
			END IF;
            
            IF OLD.Nombre != NEW.Nombre OR OLD.Apellido_paterno != NEW.Apellido_paterno OR OLD.Apellido_materno != NEW.Apellido_materno THEN
				IF user_key IS NOT NULL AND user_key > 0 THEN
					INSERT INTO log_acceso(FK_usuario ,Descripcion) VALUES (user_key, 'Cambio de nombre.');
				END IF;
            END IF;
		END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `queja`
--

DROP TABLE IF EXISTS `queja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `queja` (
  `PK_quejas` int(11) NOT NULL AUTO_INCREMENT,
  `Titulo` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `FK_usuario` int(11) NOT NULL,
  `Descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `Estatus` tinyint(1) NOT NULL DEFAULT '0',
  `Fecha_Alta` timestamp NOT NULL,
  `Fecha_Modificacion` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`PK_quejas`),
  KEY `Usuario_Quejas_idx` (`FK_usuario`),
  CONSTRAINT `Usuario_Quejas` FOREIGN KEY (`FK_usuario`) REFERENCES `usuario` (`pk_usuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `queja`
--

LOCK TABLES `queja` WRITE;
/*!40000 ALTER TABLE `queja` DISABLE KEYS */;
INSERT INTO `queja` VALUES (1,'adipiscing lacus. Ut nec urna',7,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at',0,'2018-11-26 19:50:34',NULL),(2,'ac facilisis facilisis, magna tellus',6,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin',0,'2018-11-26 19:50:34',NULL),(3,'Mauris vel turpis. Aliquam adipiscing',1,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras',0,'2018-11-26 19:50:34',NULL),(4,'volutpat ornare, facilisis eget, ipsum.',6,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada',0,'2018-11-26 19:50:34',NULL),(5,'Nam ligula elit, pretium et,',1,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus.',0,'2018-11-26 19:50:34',NULL),(6,'id sapien. Cras dolor dolor,',5,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis',0,'2018-11-26 19:50:34',NULL),(7,'sagittis augue, eu tempor erat',5,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida',0,'2018-11-26 19:50:34',NULL),(8,'turpis. In condimentum. Donec at',6,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam',0,'2018-11-26 19:50:34',NULL),(9,'mollis. Integer tincidunt aliquam arcu.',6,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus',0,'2018-11-26 19:50:34',NULL),(10,'magnis dis parturient montes, nascetur',2,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida',0,'2018-11-26 19:50:34',NULL),(11,'dui. Cras pellentesque. Sed dictum.',7,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque',0,'2018-11-26 19:50:34',NULL),(12,'libero. Morbi accumsan laoreet ipsum.',5,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus',0,'2018-11-26 19:50:34',NULL),(13,'ante ipsum primis in faucibus',4,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam',0,'2018-11-26 19:50:34',NULL),(14,'amet luctus vulputate, nisi sem',5,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet',0,'2018-11-26 19:50:34',NULL),(15,'sit amet lorem semper auctor.',1,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat.',0,'2018-11-26 19:50:34',NULL),(16,'mauris, rhoncus id, mollis nec,',1,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt pede',0,'2018-11-26 19:50:35',NULL),(17,'luctus felis purus ac tellus.',7,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras',0,'2018-11-26 19:50:35',NULL),(18,'et, rutrum eu, ultrices sit',6,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a,',0,'2018-11-26 19:50:35',NULL),(19,'fringilla, porttitor vulputate, posuere vulputate,',5,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat.',0,'2018-11-26 19:50:35',NULL),(20,'Aliquam ultrices iaculis odio. Nam',7,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a,',0,'2018-11-26 19:50:35',NULL),(21,'nec ante blandit viverra. Donec',1,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at',0,'2018-11-26 19:50:35',NULL),(22,'nibh dolor, nonummy ac, feugiat',2,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam',0,'2018-11-26 19:50:35',NULL),(23,'Sed eu nibh vulputate mauris',6,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus.',0,'2018-11-26 19:50:35',NULL),(24,'montes, nascetur ridiculus mus. Proin',6,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt pede',0,'2018-11-26 19:50:35',NULL),(25,'ut ipsum ac mi eleifend',7,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida',0,'2018-11-26 19:50:35',NULL),(26,'malesuada fames ac turpis egestas.',6,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida',0,'2018-11-26 19:50:35',NULL),(27,'luctus felis purus ac tellus.',2,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna.',0,'2018-11-26 19:50:35',NULL),(28,'sem. Nulla interdum. Curabitur dictum.',1,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et',0,'2018-11-26 19:50:35',NULL),(29,'Etiam gravida molestie arcu. Sed',1,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec',0,'2018-11-26 19:50:35',NULL),(30,'eu nibh vulputate mauris sagittis',7,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam',0,'2018-11-26 19:50:35',NULL),(31,'eget laoreet posuere, enim nisl',5,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et',0,'2018-11-26 19:50:35',NULL),(32,'dui, semper et, lacinia vitae,',2,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor.',0,'2018-11-26 19:50:35',NULL),(33,'dapibus ligula. Aliquam erat volutpat.',3,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum',0,'2018-11-26 19:50:35',NULL),(34,'sed dolor. Fusce mi lorem,',2,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa',0,'2018-11-26 19:50:35',NULL),(35,'dapibus rutrum, justo. Praesent luctus.',4,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut',0,'2018-11-26 19:50:35',NULL),(36,'Nulla tempor augue ac ipsum.',5,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada',0,'2018-11-26 19:50:35',NULL),(37,'Nulla tempor augue ac ipsum.',3,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien,',0,'2018-11-26 19:50:35',NULL),(38,'eget tincidunt dui augue eu',5,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa',0,'2018-11-26 19:50:35',NULL),(39,'Sed eu eros. Nam consequat',3,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt pede ac urna. Ut',0,'2018-11-26 19:50:35',NULL),(40,'ornare, elit elit fermentum risus,',5,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat.',0,'2018-11-26 19:50:35',NULL),(41,'vulputate, nisi sem semper erat,',4,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam',0,'2018-11-26 19:50:35',NULL),(42,'sed consequat auctor, nunc nulla',7,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna',0,'2018-11-26 19:50:35',NULL),(43,'dui lectus rutrum urna, nec',5,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id,',0,'2018-11-26 19:50:35',NULL),(44,'placerat, augue. Sed molestie. Sed',2,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada',0,'2018-11-26 19:50:35',NULL),(45,'non, luctus sit amet, faucibus',6,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien,',0,'2018-11-26 19:50:35',NULL),(46,'cursus. Nunc mauris elit, dictum',1,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum',0,'2018-11-26 19:50:35',NULL),(47,'adipiscing ligula. Aenean gravida nunc',3,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada',0,'2018-11-26 19:50:35',NULL),(48,'scelerisque neque. Nullam nisl. Maecenas',2,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut',0,'2018-11-26 19:50:35',NULL),(49,'egestas. Aliquam fringilla cursus purus.',5,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna',0,'2018-11-26 19:50:35',NULL),(50,'ligula. Nullam enim. Sed nulla',5,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin',0,'2018-11-26 19:50:35',NULL),(51,'lacinia orci, consectetuer euismod est',5,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet',0,'2018-11-26 19:50:35',NULL),(52,'Pellentesque ut ipsum ac mi',5,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer',0,'2018-11-26 19:50:35',NULL),(53,'turpis. Nulla aliquet. Proin velit.',6,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor.',0,'2018-11-26 19:50:35',NULL),(54,'sed leo. Cras vehicula aliquet',2,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida',0,'2018-11-26 19:50:35',NULL),(55,'non nisi. Aenean eget metus.',2,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque',0,'2018-11-26 19:50:35',NULL),(56,'blandit at, nisi. Cum sociis',2,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor.',0,'2018-11-26 19:50:35',NULL),(57,'quis massa. Mauris vestibulum, neque',5,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt pede ac urna. Ut',0,'2018-11-26 19:50:35',NULL),(58,'lorem ac risus. Morbi metus.',3,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt pede ac urna.',0,'2018-11-26 19:50:35',NULL),(59,'ac sem ut dolor dapibus',3,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam',0,'2018-11-26 19:50:35',NULL),(60,'risus. Nunc ac sem ut',5,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus.',0,'2018-11-26 19:50:35',NULL),(61,'quis diam luctus lobortis. Class',5,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin',0,'2018-11-26 19:50:35',NULL),(62,'ultrices iaculis odio. Nam interdum',7,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus.',0,'2018-11-26 19:50:35',NULL),(63,'hendrerit neque. In ornare sagittis',3,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis',0,'2018-11-26 19:50:35',NULL),(64,'eleifend non, dapibus rutrum, justo.',4,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor.',0,'2018-11-26 19:50:35',NULL),(65,'dictum. Phasellus in felis. Nulla',3,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin',0,'2018-11-26 19:50:35',NULL),(66,'venenatis vel, faucibus id, libero.',7,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum',0,'2018-11-26 19:50:35',NULL),(67,'fames ac turpis egestas. Aliquam',2,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing',0,'2018-11-26 19:50:35',NULL),(68,'fames ac turpis egestas. Aliquam',6,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam',0,'2018-11-26 19:50:35',NULL),(69,'faucibus orci luctus et ultrices',3,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a,',0,'2018-11-26 19:50:35',NULL),(70,'accumsan interdum libero dui nec',5,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada',0,'2018-11-26 19:50:35',NULL),(71,'varius. Nam porttitor scelerisque neque.',1,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna.',0,'2018-11-26 19:50:35',NULL),(72,'purus. Nullam scelerisque neque sed',5,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis',0,'2018-11-26 19:50:35',NULL),(73,'Nam consequat dolor vitae dolor.',7,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum',0,'2018-11-26 19:50:35',NULL),(74,'id, ante. Nunc mauris sapien,',6,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum',0,'2018-11-26 19:50:35',NULL),(75,'urna. Vivamus molestie dapibus ligula.',2,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non,',0,'2018-11-26 19:50:35',NULL),(76,'sit amet nulla. Donec non',3,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at',0,'2018-11-26 19:50:35',NULL),(77,'feugiat tellus lorem eu metus.',7,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet',0,'2018-11-26 19:50:35',NULL),(78,'Donec consectetuer mauris id sapien.',6,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus.',0,'2018-11-26 19:50:35',NULL),(79,'Morbi accumsan laoreet ipsum. Curabitur',7,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt pede ac urna.',0,'2018-11-26 19:50:35',NULL),(80,'a, magna. Lorem ipsum dolor',7,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque',0,'2018-11-26 19:50:35',NULL),(81,'massa. Integer vitae nibh. Donec',6,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt',0,'2018-11-26 19:50:35',NULL),(82,'faucibus id, libero. Donec consectetuer',1,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien,',0,'2018-11-26 19:50:35',NULL),(83,'in, tempus eu, ligula. Aenean',3,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus',0,'2018-11-26 19:50:35',NULL),(84,'felis, adipiscing fringilla, porttitor vulputate,',5,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et',0,'2018-11-26 19:50:35',NULL),(85,'Fusce mi lorem, vehicula et,',4,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna',0,'2018-11-26 19:50:35',NULL),(86,'dictum placerat, augue. Sed molestie.',3,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque',0,'2018-11-26 19:50:35',NULL),(87,'tristique neque venenatis lacus. Etiam',2,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet',0,'2018-11-26 19:50:35',NULL),(88,'tellus. Suspendisse sed dolor. Fusce',6,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna.',0,'2018-11-26 19:50:35',NULL),(89,'sagittis. Duis gravida. Praesent eu',4,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt pede ac',0,'2018-11-26 19:50:35',NULL),(90,'scelerisque neque sed sem egestas',1,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et',0,'2018-11-26 19:50:35',NULL),(91,'ut, pellentesque eget, dictum placerat,',5,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a,',0,'2018-11-26 19:50:35',NULL),(92,'adipiscing. Mauris molestie pharetra nibh.',4,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus.',0,'2018-11-26 19:50:35',NULL),(93,'magnis dis parturient montes, nascetur',7,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis',0,'2018-11-26 19:50:35',NULL),(94,'elit elit fermentum risus, at',1,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin',0,'2018-11-26 19:50:35',NULL),(95,'Nunc mauris sapien, cursus in,',6,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt pede ac urna. Ut',0,'2018-11-26 19:50:35',NULL),(96,'a, malesuada id, erat. Etiam',1,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque',0,'2018-11-26 19:50:35',NULL),(97,'Maecenas mi felis, adipiscing fringilla,',6,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut',0,'2018-11-26 19:50:35',NULL),(98,'dolor egestas rhoncus. Proin nisl',7,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing',0,'2018-11-26 19:50:35',NULL),(99,'pretium et, rutrum non, hendrerit',6,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque',0,'2018-11-26 19:50:35',NULL),(100,'luctus sit amet, faucibus ut,',1,'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien,',0,'2018-11-26 19:50:35',NULL);
/*!40000 ALTER TABLE `queja` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Sgbd`@`localhost`*/ /*!50003 TRIGGER `new_queja` BEFORE INSERT ON `queja` FOR EACH ROW BEGIN  
			SET NEW.Fecha_Alta = CURRENT_TIMESTAMP;
		END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Sgbd`@`localhost`*/ /*!50003 TRIGGER `update_queja` BEFORE UPDATE ON `queja` FOR EACH ROW BEGIN  
			SET NEW.Fecha_Modificacion = CURRENT_TIMESTAMP;
		END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `recupera_cuenta`
--

DROP TABLE IF EXISTS `recupera_cuenta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `recupera_cuenta` (
  `PK_recupera` int(11) NOT NULL AUTO_INCREMENT,
  `FK_usuario` int(11) NOT NULL,
  `Token` char(128) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `Estatus` tinyint(1) NOT NULL DEFAULT '0',
  `Fecha_Alta` timestamp NOT NULL,
  `Fecha_Modificacion` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`PK_recupera`),
  UNIQUE KEY `Token_UNIQUE` (`Token`),
  KEY `Usuario_Recupera_Cuenta_idx` (`FK_usuario`),
  CONSTRAINT `Usuario_Recupera_Cuenta` FOREIGN KEY (`FK_usuario`) REFERENCES `usuario` (`pk_usuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recupera_cuenta`
--

LOCK TABLES `recupera_cuenta` WRITE;
/*!40000 ALTER TABLE `recupera_cuenta` DISABLE KEYS */;
INSERT INTO `recupera_cuenta` VALUES (1,7,'ad5e6cc26006e1bb7f145437e0d9217cfc07ad70d6873365260bba54039a0a584d88cffd931adce59ed41e8a0229217edddbdd6f95523b466277ec076033d3a7',0,'2018-11-23 18:19:08','2018-11-23 18:20:24');
/*!40000 ALTER TABLE `recupera_cuenta` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Sgbd`@`localhost`*/ /*!50003 TRIGGER `new_recupera_cuenta` BEFORE INSERT ON `recupera_cuenta` FOR EACH ROW BEGIN
		DECLARE neto int;
        DECLARE QR CHAR(128);
		SELECT COUNT(*) INTO neto FROM recupera_cuenta WHERE FK_usuario=1 AND Estatus=TRUE;
		IF neto > 0 THEN
			signal sqlstate '45000' set message_text = 'USE0006. Usuario con recuperacion ya activa.';
		END IF;
        SELECT SHA2(CONCAT(NEW.PK_recupera,'*',NEW.FK_usuario),512) INTO QR;
        SET NEW.Token = QR;
        SET NEW.Estatus = TRUE;
		SET NEW.Fecha_Alta = CURRENT_TIMESTAMP;
	END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Sgbd`@`localhost`*/ /*!50003 TRIGGER `UPDATE_recupera_cuenta` BEFORE UPDATE ON `recupera_cuenta` FOR EACH ROW BEGIN
			SET NEW.Fecha_Modificacion = CURRENT_TIMESTAMP;
        END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `ref_cat_espacio_persona`
--

DROP TABLE IF EXISTS `ref_cat_espacio_persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ref_cat_espacio_persona` (
  `FK_persona` int(11) NOT NULL,
  `FK_departamento` int(11) NOT NULL,
  `Estatus` tinyint(1) NOT NULL DEFAULT '0',
  `Fecha_Alta` timestamp NOT NULL,
  `Fecha_Modificacion` timestamp NULL DEFAULT NULL,
  KEY `Persona_habitante_idx` (`FK_persona`),
  KEY `Departamento_Habitante_idx` (`FK_departamento`),
  CONSTRAINT `CAT_Espacio_Habitante` FOREIGN KEY (`FK_departamento`) REFERENCES `cat_espacio` (`pk_espacio`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Persona_Habitante` FOREIGN KEY (`FK_persona`) REFERENCES `persona` (`pk_persona`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_cat_espacio_persona`
--

LOCK TABLES `ref_cat_espacio_persona` WRITE;
/*!40000 ALTER TABLE `ref_cat_espacio_persona` DISABLE KEYS */;
INSERT INTO `ref_cat_espacio_persona` VALUES (23,44,1,'2018-11-15 17:33:16',NULL),(23,78,1,'2018-11-15 17:33:43',NULL),(23,3,1,'2018-11-15 17:34:06',NULL),(88,67,1,'2018-11-15 17:35:14',NULL),(88,99,1,'2018-11-15 17:35:35',NULL),(88,57,0,'2018-11-15 17:35:58','2018-11-15 17:41:57'),(88,57,1,'2018-11-15 17:42:41',NULL),(16,65,1,'2018-11-15 17:46:08',NULL),(16,2,1,'2018-11-15 17:47:29',NULL),(19,34,1,'2018-11-15 17:47:47',NULL),(19,67,1,'2018-11-15 17:47:59',NULL),(16,44,1,'2018-11-15 17:49:35',NULL),(16,78,1,'2018-11-15 17:49:43',NULL),(1,44,1,'2018-11-15 18:03:52',NULL),(2,44,1,'2018-11-15 18:03:58',NULL),(3,44,1,'2018-11-15 18:04:01',NULL),(3,4,0,'2018-11-15 18:04:10','2018-11-15 18:15:57');
/*!40000 ALTER TABLE `ref_cat_espacio_persona` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Sgbd`@`localhost`*/ /*!50003 TRIGGER `new_ref_cat_espacio_personal` BEFORE INSERT ON `ref_cat_espacio_persona` FOR EACH ROW BEGIN 
			DECLARE neto INT;
            DECLARE tag varchar(25);
            DECLARE msg text;
			SELECT COUNT(*) INTO neto
            FROM ref_cat_espacio_persona
            WHERE estatus = TRUE AND FK_departamento = NEW.FK_departamento AND FK_persona = NEW.FK_persona;
            IF NETO > 0 THEN
				signal sqlstate '45000' set message_text = 'DEP0001. Persona ya registrada en el departamento.';
			ELSE 
				SELECT cat_tipo_persona.tipo INTO tag
				FROM cat_tipo_persona
				INNER JOIN persona ON persona.FK_tipo = cat_tipo_persona.pk_cat_tipo
				WHERE persona.pk_persona = NEW.FK_persona AND persona.Estatus = TRUE AND cat_tipo_persona.Estatus = TRUE;
                IF tag IS NULL then
					signal sqlstate '45000' set message_text = 'PER0001. Persona no encontrada.';
				END IF;
                
				IF tag = 'Propietario' OR tag = 'Inquilino' OR tag = 'Familia' THEN
					IF tag = 'Propietario' OR tag = 'Inquilino' THEN
						SELECT COUNT(ref_cat_espacio_persona.FK_persona) INTO neto
						FROM ref_cat_espacio_persona
						INNER JOIN persona ON persona.PK_persona = ref_cat_espacio_persona.FK_persona
						INNER JOIN cat_tipo_persona ON cat_tipo_persona.PK_cat_tipo = persona.FK_tipo
						WHERE ref_cat_espacio_persona.FK_departamento=NEW.FK_departamento
							AND ref_cat_espacio_persona.Estatus = TRUE
							AND persona.Estatus = TRUE
							AND cat_tipo_persona.Estatus = TRUE
							AND cat_tipo_persona.Tipo = tag
						COLLATE 'utf8mb4_0900_ai_ci';
						IF neto > 0 THEN
							SELECT concat('DEP0002. Departamento con registro de ',tag,' activo.') INTO msg;
							signal sqlstate '45000' set message_text = msg;
						END IF;
					ELSE
						SELECT COUNT(ref_cat_espacio_persona.fk_persona) INTO neto
                        FROM ref_cat_espacio_persona
                        INNER JOIN persona ON persona.PK_persona = ref_cat_espacio_persona.FK_persona
                        INNER JOIN cat_tipo_persona ON cat_tipo_persona.PK_cat_tipo = persona.FK_tipo
                        WHERE ref_cat_espacio_persona.fk_departamento = NEW.FK_departamento
							AND ref_cat_espacio_persona.Estatus = TRUE
                            AND persona.Estatus = TRUE
                            AND cat_tipo_persona.Estatus = true
                            AND (cat_tipo_persona.Tipo = 'Propietario' or cat_tipo_persona.Tipo = 'Inquilino');
                        IF neto < 1 THEN
							signal sqlstate '45000' set message_text = 'DEP0003. Departamento sin responsable.';
                        END IF;
                    END IF;
                    SET NEW.Fecha_Alta = CURRENT_TIMESTAMP;
				ELSE
					signal sqlstate '45000' set message_text = 'DEP0004. Persona no asociable a un departamento.';
                END IF;
                
            END IF;
            
		END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Sgbd`@`localhost`*/ /*!50003 TRIGGER `update_ref_cat_espacio_persona` BEFORE UPDATE ON `ref_cat_espacio_persona` FOR EACH ROW BEGIN 
			DECLARE neto INT;
            DECLARE tag varchar(25);
            DECLARE msg text;
            IF NEW.Estatus != FALSE THEN
				SELECT COUNT(*) INTO neto
				FROM ref_cat_espacio_persona
				WHERE estatus = TRUE AND FK_departamento = NEW.FK_departamento AND FK_persona = NEW.FK_persona;
				IF NETO > 0 THEN
					signal sqlstate '45000' set message_text = 'DEP0001. Persona ya registrada en el departamento.';
				ELSE 
					SELECT cat_tipo_persona.tipo INTO tag
					FROM cat_tipo_persona
					INNER JOIN persona ON persona.FK_tipo = cat_tipo_persona.pk_cat_tipo
					WHERE persona.pk_persona = NEW.FK_persona AND persona.Estatus = TRUE AND cat_tipo_persona.Estatus = TRUE;
					IF tag IS NULL then
						signal sqlstate '45000' set message_text = 'PER0001. Persona no encontrada.';
					END IF;
					
					IF tag = 'Propietario' OR tag = 'Inquilino' OR tag = 'Familia' THEN
						IF tag = 'Propietario' OR tag = 'Inquilino' THEN
							SELECT COUNT(ref_cat_espacio_persona.FK_persona) INTO neto
							FROM ref_cat_espacio_persona
							INNER JOIN persona ON persona.PK_persona = ref_cat_espacio_persona.FK_persona
							INNER JOIN cat_tipo_persona ON cat_tipo_persona.PK_cat_tipo = persona.FK_tipo
							WHERE ref_cat_espacio_persona.FK_departamento=NEW.FK_departamento
								AND ref_cat_espacio_persona.Estatus = TRUE
								AND persona.Estatus = TRUE
								AND cat_tipo_persona.Estatus = TRUE
								AND cat_tipo_persona.Tipo = tag
							COLLATE 'utf8mb4_0900_ai_ci';
							IF neto > 0 THEN
								SELECT concat('DEP0002. Departamento con registro de ',tag,' activo.') INTO msg;
								signal sqlstate '45000' set message_text = msg;
							END IF;
						ELSE
							SELECT COUNT(ref_cat_espacio_persona.fk_persona) INTO neto
							FROM ref_cat_espacio_persona
							INNER JOIN persona ON persona.PK_persona = ref_cat_espacio_persona.FK_persona
							INNER JOIN cat_tipo_persona ON cat_tipo_persona.PK_cat_tipo = persona.FK_tipo
							WHERE ref_cat_espacio_persona.fk_departamento = NEW.FK_departamento
								AND ref_cat_espacio_persona.Estatus = TRUE
								AND persona.Estatus = TRUE
								AND cat_tipo_persona.Estatus = true
								AND (cat_tipo_persona.Tipo = 'Propietario' or cat_tipo_persona.Tipo = 'Inquilino');
							IF neto < 1 THEN
								signal sqlstate '45000' set message_text = 'DEP0003. Departamento sin responsable.';
							END IF;
						END IF;
                        SET NEW.Fecha_Modificacion = CURRENT_TIMESTAMP;
					ELSE
						signal sqlstate '45000' set message_text = 'DEP0004. Persona no asociable a un departamento.';
					END IF;
					
				END IF;
            END IF;
            
		END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `ref_cat_permiso_cat_rol`
--

DROP TABLE IF EXISTS `ref_cat_permiso_cat_rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ref_cat_permiso_cat_rol` (
  `FK_rol` int(11) NOT NULL,
  `FK_permiso` int(11) NOT NULL,
  UNIQUE KEY `FK_rol_FK_permiso_UNIQUE` (`FK_rol`,`FK_permiso`),
  KEY `CAT_Rol_REF_idx` (`FK_rol`),
  KEY `CAT_Permiso_REF_idx` (`FK_permiso`),
  CONSTRAINT `CAT_Permiso_REF` FOREIGN KEY (`FK_permiso`) REFERENCES `cat_permiso` (`pk_permiso`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `CAT_Rol_REF` FOREIGN KEY (`FK_rol`) REFERENCES `cat_rol` (`pk_cat_rol`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_cat_permiso_cat_rol`
--

LOCK TABLES `ref_cat_permiso_cat_rol` WRITE;
/*!40000 ALTER TABLE `ref_cat_permiso_cat_rol` DISABLE KEYS */;
INSERT INTO `ref_cat_permiso_cat_rol` VALUES (1,16),(1,19),(1,21),(1,25),(1,26),(1,27),(1,28),(1,30),(1,32),(2,14),(2,16),(2,29),(2,31),(3,14),(3,15),(3,17),(3,18),(3,20),(3,22),(3,25),(3,29),(3,31);
/*!40000 ALTER TABLE `ref_cat_permiso_cat_rol` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Sgbd`@`localhost`*/ /*!50003 TRIGGER `new_ref_cat_permiso_cat_rol` BEFORE INSERT ON `ref_cat_permiso_cat_rol` FOR EACH ROW BEGIN  
			DECLARE est_uno, est_dos tinyint(1);
            SELECT estatus INTO est_uno FROM cat_rol WHERE pk_cat_rol=1;
			SELECT estatus INTO est_dos FROM cat_permiso WHERE pk_permiso=1;
			IF est_uno != 1 or est_dos != 1 THEN
				signal sqlstate '45000' set message_text = 'ROL0001. Datos no disponibles o Incorrectos.';
            END IF;
		END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `ref_cuenta_cat_catalogo`
--

DROP TABLE IF EXISTS `ref_cuenta_cat_catalogo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ref_cuenta_cat_catalogo` (
  `FK_cuenta` int(11) NOT NULL,
  `FK_catalogo` int(11) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Estatus` tinyint(1) NOT NULL DEFAULT '0',
  `Fecha_Alta` timestamp NOT NULL,
  `Fecha_Modificacion` timestamp NULL DEFAULT NULL,
  KEY `Cuenta_REF_idx` (`FK_cuenta`),
  KEY `Catalogo_REF_idx` (`FK_catalogo`),
  CONSTRAINT `Catalogo_REF` FOREIGN KEY (`FK_catalogo`) REFERENCES `cat_catalogo` (`pk_cat_catalogo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Cuenta_REF` FOREIGN KEY (`FK_cuenta`) REFERENCES `cuenta` (`pk_cuenta`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_cuenta_cat_catalogo`
--

LOCK TABLES `ref_cuenta_cat_catalogo` WRITE;
/*!40000 ALTER TABLE `ref_cuenta_cat_catalogo` DISABLE KEYS */;
INSERT INTO `ref_cuenta_cat_catalogo` VALUES (1,1,1,1,'2018-11-24 01:11:56',NULL),(1,2,1,1,'2018-11-24 01:11:56',NULL);
/*!40000 ALTER TABLE `ref_cuenta_cat_catalogo` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Sgbd`@`localhost`*/ /*!50003 TRIGGER `new_ref_cuenta_cat_catalogo` BEFORE INSERT ON `ref_cuenta_cat_catalogo` FOR EACH ROW BEGIN
		DECLARE est_u, est_d tinyint(1);
        SELECT Estatus INTO est_u FROM cuenta WHERE PK_cuenta = NEW.FK_cuenta;
        SELECT Estatus INTO est_d FROM cat_catalogo WHERE PK_cat_catalogo = NEW.FK_catalogo;
        IF est_u = 0 OR est_d = 0 OR est_u = FALSE OR est_d = FALSE THEN
			signal sqlstate '45000' set message_text = 'CUE0001. Daos no disponibles.';
        END IF;
        IF NEW.Cantidad = 0 THEN
			signal sqlstate '45000' set message_text = 'CUE0002. Definir una cantidad.';
        END IF;
		SET NEW.Estatus = TRUE;
		SET NEW.Fecha_Alta = CURRENT_TIMESTAMP;
	END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Sgbd`@`localhost`*/ /*!50003 TRIGGER `update_ref_cuenta_cat_catalogo` BEFORE UPDATE ON `ref_cuenta_cat_catalogo` FOR EACH ROW BEGIN
		SET NEW.Fecha_Modificacion = CURRENT_TIMESTAMP;
	END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `ref_documento_mensaje`
--

DROP TABLE IF EXISTS `ref_documento_mensaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ref_documento_mensaje` (
  `FK_documento` int(11) NOT NULL,
  `FK_mensaje` int(11) NOT NULL,
  KEY `Mensaje_REF_Documento_idx` (`FK_mensaje`),
  KEY `Documento_REF_idx` (`FK_documento`),
  CONSTRAINT `Documento_REF` FOREIGN KEY (`FK_documento`) REFERENCES `documento` (`pk_documento`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Mensaje_REF_Documento` FOREIGN KEY (`FK_mensaje`) REFERENCES `mensaje` (`pk_mensaje`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_documento_mensaje`
--

LOCK TABLES `ref_documento_mensaje` WRITE;
/*!40000 ALTER TABLE `ref_documento_mensaje` DISABLE KEYS */;
/*!40000 ALTER TABLE `ref_documento_mensaje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ref_documento_quejas`
--

DROP TABLE IF EXISTS `ref_documento_quejas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ref_documento_quejas` (
  `FK_documento` int(11) NOT NULL,
  `FK_Queja` int(11) NOT NULL,
  UNIQUE KEY `FK_documento_FK_Queja_UNIQUE` (`FK_documento`,`FK_Queja`),
  KEY `Quejas_Evidencia_idx` (`FK_Queja`),
  KEY `Documento_Evidencia_idx` (`FK_documento`),
  CONSTRAINT `Documento_Evidencia` FOREIGN KEY (`FK_documento`) REFERENCES `documento` (`pk_documento`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Quejas_Evidencia` FOREIGN KEY (`FK_Queja`) REFERENCES `queja` (`pk_quejas`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_documento_quejas`
--

LOCK TABLES `ref_documento_quejas` WRITE;
/*!40000 ALTER TABLE `ref_documento_quejas` DISABLE KEYS */;
INSERT INTO `ref_documento_quejas` VALUES (1,5),(1,11),(2,14),(1,15),(2,15),(2,18),(1,24),(2,34),(3,36);
/*!40000 ALTER TABLE `ref_documento_quejas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ref_mensaje_usuario`
--

DROP TABLE IF EXISTS `ref_mensaje_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ref_mensaje_usuario` (
  `FK_usuario` int(11) NOT NULL,
  `FK_mensaje` int(11) NOT NULL,
  `Estatus` tinyint(4) DEFAULT '0',
  KEY `Mensaje_REF_idx` (`FK_mensaje`),
  KEY `Usuario_REF_idx` (`FK_usuario`),
  CONSTRAINT `Mensaje_REF` FOREIGN KEY (`FK_mensaje`) REFERENCES `mensaje` (`pk_mensaje`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Usuario_REF` FOREIGN KEY (`FK_usuario`) REFERENCES `usuario` (`pk_usuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ref_mensaje_usuario`
--

LOCK TABLES `ref_mensaje_usuario` WRITE;
/*!40000 ALTER TABLE `ref_mensaje_usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `ref_mensaje_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repositorio`
--

DROP TABLE IF EXISTS `repositorio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `repositorio` (
  `PK_repositorio` int(11) NOT NULL AUTO_INCREMENT,
  `FK_usuario` int(11) NOT NULL,
  `Ruta` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `Titulo` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `Descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  `estatus` tinyint(1) NOT NULL DEFAULT '0',
  `Fecha_Alta` timestamp NOT NULL,
  `Fecha_Modificacion` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`PK_repositorio`),
  KEY `Usuario_Repositorio_idx` (`FK_usuario`),
  CONSTRAINT `Usuario_Repositorio` FOREIGN KEY (`FK_usuario`) REFERENCES `usuario` (`pk_usuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2394 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repositorio`
--

LOCK TABLES `repositorio` WRITE;
/*!40000 ALTER TABLE `repositorio` DISABLE KEYS */;
/*!40000 ALTER TABLE `repositorio` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Sgbd`@`localhost`*/ /*!50003 TRIGGER `new_repositorio` BEFORE INSERT ON `repositorio` FOR EACH ROW BEGIN
			DECLARE tag varchar(20);
			SELECT rol INTO tag
            FROM usuario
            INNER JOIN cat_rol
				ON PK_cat_rol = fk_rol
			WHERE pk_usuario = NEW.FK_usuario
				AND usuario.Estatus = TRUE
                AND cat_rol.Estatus = TRUE;
			IF tag != 'Administrador' THEN
				signal sqlstate '45000' set message_text = 'REP0001. Usuario no autorizado.';
            END IF;
			SET NEW.Fecha_Alta = CURRENT_TIMESTAMP;
		END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Sgbd`@`localhost`*/ /*!50003 TRIGGER `update_repositorio` BEFORE UPDATE ON `repositorio` FOR EACH ROW BEGIN  
			SET NEW.Fecha_Modificacion = CURRENT_TIMESTAMP;
		END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `usuario` (
  `PK_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `Password` char(128) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `FK_persona` int(11) NOT NULL,
  `FK_rol` int(11) NOT NULL,
  `Estatus` tinyint(1) NOT NULL DEFAULT '0',
  `Activa` tinyint(1) NOT NULL DEFAULT '0',
  `Fecha_Alta` timestamp NOT NULL,
  `Fecha_Modificacion` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`PK_usuario`),
  UNIQUE KEY `FK_persona_UNIQUE` (`FK_persona`),
  KEY `Persona_Usuario_idx` (`FK_persona`),
  KEY `CAT_ROL_Usuario_idx` (`FK_rol`),
  CONSTRAINT `CAT_ROL_Usuario` FOREIGN KEY (`FK_rol`) REFERENCES `cat_rol` (`pk_cat_rol`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Persona_Usuario` FOREIGN KEY (`FK_persona`) REFERENCES `persona` (`pk_persona`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'badee1a48939e3e41b2a52ecca53df9122dde90c28c3b8b73f21ccac82677c5c0742076fd5f967a4b91f1de59adc0f04a1633f6ab960d091fa19275ffd38a7f6',141,3,1,0,'2018-11-21 22:53:16',NULL),(2,'5cd8483fa1576d0a40268aea8bdc6f63f1b6829993b1747829b2f9dbf3f098273e7a9d61b3742d8eb368cf910d58a184baa3de57e67f37e6b1ce95b0b5ae2af1',187,1,1,0,'2018-11-21 22:53:16',NULL),(3,'3428c4b4c49c3b6a3f11ef7abb2fa5d5d9d25c490bebe1a09325c425dae84753a71f24370412fb4befee9cb0f5a4ebc122fce9847c1e24a46f9990f639ee3ebf',150,3,1,0,'2018-11-21 22:53:16',NULL),(4,'10ed05b3d0c645247ebbe384488b8c9f437934a12c6bda794656ea3a3f8ed337de608668ec7195eddd62b3f311dcb9857147908bd4c669a05ddab9615ba8f1ae',197,2,1,0,'2018-11-21 22:53:16',NULL),(5,'95fc8ad2cfd3b7361ab0004022136ee105c7287eb18f71504261e5095a495fb7cd8d4573134dbca2ca633bbf5c9b22fb19bd223ae4bd73d94a59d89399eaf9c1',162,3,1,0,'2018-11-21 22:53:16',NULL),(6,'3e181adf07facec554d18f62196fdee70195d311741e512ce01fc0e5dc6a20984e0cecb61dd75b0883dcc70745a2574792aa6ff902dba7d4b70a0681c9ad4322',104,1,1,1,'2018-11-23 00:22:47','2018-11-23 00:29:03'),(7,'9120cd5faef07a08e971ff024a3fcbea1e3a6b44142a6d82ca28c6c42e4f852595bcf53d81d776f10541045abdb7c37950629415d0dc66c8d86c64a5606d32de',121,1,1,1,'2018-11-23 01:32:14','2018-11-23 18:20:24');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Sgbd`@`localhost`*/ /*!50003 TRIGGER `new_usuario` BEFORE INSERT ON `usuario` FOR EACH ROW BEGIN 
			DECLARE est_per, est_tip tinyint(1);
            DECLARE longitud int;
            DECLARE e_mail varchar(100);
            DECLARE tipo_rol varchar(25);
            DECLARE tag_rol varchar(20);
            DECLARE pass char(128);
			SELECT
				cat_tipo_persona.estatus, persona.estatus, email, tipo
                INTO est_tip, est_per, e_mail, tipo_rol
			FROM persona
			INNER JOIN cat_tipo_persona
				ON cat_tipo_persona.pk_cat_tipo = persona.fk_tipo
			WHERE pk_persona=NEW.FK_persona;
            IF est_tip != 1 OR est_per != 1 THEN
				signal sqlstate '45000' set message_text = 'USE0001. Datos no disponibles.';
			ELSEIF e_mail IS NULL THEN
				signal sqlstate '45000' set message_text = 'USE0002. Usuario sin email.';
			ELSEIF tipo_rol != 'Propietario' AND tipo_rol != 'Inquilino' AND tipo_rol != 'Recepcionista' AND tipo_rol != 'Administrador' THEN
				signal sqlstate '45000' set message_text = 'USE0003. Persona no autorizada.';
			ELSE
				IF tipo_rol = 'Propietario' OR tipo_rol = 'Inquilino' THEN
					SELECT Rol INTO tag_rol FROM cat_rol WHERE PK_cat_rol = NEW.FK_rol;
                    IF tag_rol != 'Recidente' THEN
						signal sqlstate '45000' set message_text = 'USE0004. Persona no autorizada para el tipo de rol.';
                    END IF;
				ELSEIF tipo_rol = 'Recepcionista' THEN
					SELECT Rol INTO tag_rol FROM cat_rol WHERE PK_cat_rol = NEW.FK_rol;
                    IF tag_rol != 'Recepcion' THEN
						signal sqlstate '45000' set message_text = 'USE0004. Persona no autorizada para el tipo de rol.';
                    END IF;
                ELSE
					SELECT Rol INTO tag_rol FROM cat_rol WHERE PK_cat_rol = NEW.FK_rol;
                    IF tag_rol != 'Administrador' THEN
						signal sqlstate '45000' set message_text = 'USE0004. Persona no autorizada para el tipo de rol.';
                    END IF;
                END IF;
				SET NEW.Fecha_Alta = CURRENT_TIMESTAMP;
                SET NEW.Estatus = TRUE;
                SET NEW.Activa = FALSE;
                SELECT LENGTH(NEW.Password) INTO longitud;
                IF longitud != 128 THEN
					SELECT SHA2(NEW.Password,512) INTO pass;
					SET NEW.Password = pass;
                END IF;
            END IF;
		END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Sgbd`@`localhost`*/ /*!50003 TRIGGER `new_usuario_log` AFTER INSERT ON `usuario` FOR EACH ROW BEGIN
			INSERT INTO log_acceso(FK_usuario ,Descripcion) VALUES (NEW.PK_usuario, 'Usuario dado de alta.');
		END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Sgbd`@`localhost`*/ /*!50003 TRIGGER `update_usuario` BEFORE UPDATE ON `usuario` FOR EACH ROW BEGIN
        DECLARE longitud int;
        DECLARE pass char(128);
        IF OLD.Password != NEW.Password THEN
			SELECT LENGTH(NEW.Password) INTO longitud;
            IF longitud != 128 THEN
				SELECT SHA2(NEW.Password,512) INTO pass;
				SET NEW.Password = pass;
			END IF;
        END IF;
        SET NEW.Fecha_Modificacion = CURRENT_TIMESTAMP;
        END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Sgbd`@`localhost`*/ /*!50003 TRIGGER `update_usuario_log` AFTER UPDATE ON `usuario` FOR EACH ROW BEGIN
			IF OLD.Password != NEW.Password THEN
				INSERT INTO log_acceso(FK_usuario ,Descripcion) VALUES (NEW.PK_usuario, 'Contraseña Cambiada.');
            END IF;
            IF OLD.Activa != NEW.Activa THEN
				IF NEW.Activa = TRUE OR NEW.Activa = 1 THEN
					INSERT INTO log_acceso(FK_usuario ,Descripcion) VALUES (NEW.PK_usuario, 'Cuenta activada.');
                END IF;
                IF NEW.Activa = FALSE OR NEW.Activa = 0 THEN
					INSERT INTO log_acceso(FK_usuario ,Descripcion) VALUES (NEW.PK_usuario, 'Cuenta desactivada.');
                END IF;
            END IF;
		END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Sgbd`@`localhost`*/ /*!50003 TRIGGER `update_usuario_recuperacion` AFTER UPDATE ON `usuario` FOR EACH ROW BEGIN
			IF OLD.Activa != NEW.Activa THEN
				IF NEW.Activa = FALSE OR NEW.Activa = 0 THEN
					INSERT INTO recupera_cuenta (FK_usuario) VALUES (NEW.PK_usuario);
                END IF;
                IF NEW.Activa = TRUE OR NEW.Activa = 1 THEN
					UPDATE recupera_cuenta SET Estatus = FALSE WHERE FK_usuario = NEW.PK_usuario;
                END IF;
            END IF;
		END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `visita`
--

DROP TABLE IF EXISTS `visita`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `visita` (
  `PK_visita` int(11) NOT NULL AUTO_INCREMENT,
  `Codigo_QR` char(128) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `Nombre` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `Apellido_paterno` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `Apellido_materno` varchar(25) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `Estacionamiento` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `Entrada` timestamp NULL DEFAULT NULL,
  `Salida` timestamp NULL DEFAULT NULL,
  `Estatus` tinyint(1) NOT NULL DEFAULT '0',
  `Fecha_Alta` timestamp NOT NULL,
  `Fecha_Modificacion` timestamp NULL DEFAULT NULL,
  `persona_PK_persona` int(11) NOT NULL,
  PRIMARY KEY (`PK_visita`),
  UNIQUE KEY `Codigo_QR_UNIQUE` (`Codigo_QR`),
  KEY `fk_visita_persona1_idx` (`persona_PK_persona`),
  CONSTRAINT `fk_visita_persona1` FOREIGN KEY (`persona_PK_persona`) REFERENCES `persona` (`pk_persona`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visita`
--

LOCK TABLES `visita` WRITE;
/*!40000 ALTER TABLE `visita` DISABLE KEYS */;
INSERT INTO `visita` VALUES (1,'3efa2480486b11113df5029628a7f77f9be423f7ac2d2427c9e207760f2b41876cd9acb7191b787a9b1f97ce62aa3afe253f2ab23c138d673c93804cc6eace34','Jose Ignacio','Pacheco','Cruz',NULL,'2018-11-15 20:05:38','2018-11-15 20:10:47',0,'2018-11-15 20:02:27','2018-11-15 20:10:47',7),(2,'55213ccc4233ff6f6a5a99c46cbb3dffd30cae5edbf1d61fb3aaffd0a85c1ca68c84340545faf246ceea27985df960e80306cae53d247a28cad59a00858fb555','Jose Ignacio','Pacheco','Cruz',NULL,'2018-11-16 17:58:52','2018-11-16 18:04:31',1,'2018-11-15 20:23:08','2018-11-16 18:04:31',7),(3,'6e83ff205479cc245000fe1e15543f92ea9feef7bde6b1278f29a136c756f23c0431f3d60f8de5a9bd6e8db34f10bc0d80b64bde0501c7a8196cf70294a6ff65','Jose','Pacheco','Cruz',NULL,'2018-11-16 18:24:28','2018-11-16 18:26:11',1,'2018-11-16 18:16:43','2018-11-16 18:26:11',15),(4,'9b5910f4afc88b49019a96670ce26f676843e1ebc31785fb15127d37977c5e7aab9d8e4d25a75042f204d4e02ce31073b28aff6522e8cb5b6b4f94cae1b4098b','Jose Ignacio','Pacheco','Cruz',NULL,'2018-11-16 19:07:30','2018-11-16 19:07:49',1,'2018-11-16 19:01:19','2018-11-16 19:07:49',21),(5,'ce9144938a1135e0bfe7e572a647056d1dbb32181edb132a62cd3712a230852afa1a3a69c1e25f97b46223ed5490ba1d3557fdecb12a76e08f741051cc732c5e','Jose Ignacio','Pacheco','Cruz',NULL,'2018-11-16 19:12:16','2018-11-16 19:14:33',1,'2018-11-16 19:11:17','2018-11-16 19:14:33',30),(6,'15759919277346b6d9ef0ea998d3cf122e103f9e36ce20f1004a1bf8b856f20a1831ff7c597e88d86dd9feee3b0cd8cc0a77b50bb8b277d5245214412d5b81b3','Jose Ignacio','Pacheco','Cruz',NULL,'2018-11-16 19:27:15','2018-11-16 19:28:54',0,'2018-11-16 19:18:04','2018-11-16 19:28:54',40),(7,'871ab41be1bde8fa1db0f8ac41624ea6296f382f5ad41b69d7f5ff7b0c5d591f61a548f0bbb127118c4ea8daaafd74225a683ed39779feb6eeb03fb066414110','Jose Ignacio','Pacheco','Cruz',NULL,'2018-11-16 19:29:23','2018-11-16 19:29:51',0,'2018-11-16 19:29:15','2018-11-16 19:29:51',50);
/*!40000 ALTER TABLE `visita` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Sgbd`@`localhost`*/ /*!50003 TRIGGER `new_visita` BEFORE INSERT ON `visita` FOR EACH ROW BEGIN
			DECLARE QR CHAR(128);
            DECLARE tag VARCHAR(25);
            SELECT cat_tipo_persona.tipo INTO tag
            FROM persona
            INNER JOIN cat_tipo_persona ON cat_tipo_persona.pk_cat_tipo = persona.fk_tipo
            WHERE pk_persona = NEW.persona_PK_persona
				AND persona.estatus=TRUE
                AND cat_tipo_persona.estatus=TRUE;
            
            IF tag = 'Propietario' OR tag = 'Inquilino' OR tag = 'Recepcionista' THEN
				SET NEW.Fecha_Alta = CURRENT_TIMESTAMP;
				SELECT SHA2(CONCAT(NEW.Nombre,'_',NEW.Apellido_paterno,'.',NEW.Fecha_Alta,'*',NEW.PK_visita),512) INTO QR;
				SET NEW.Codigo_QR = QR;
                SET NEW.Estatus = TRUE;
			ELSE
                signal sqlstate '45000' set message_text = 'PER0002. Persona no valida para autorizar visitas.';
            END IF;
		END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Sgbd`@`localhost`*/ /*!50003 TRIGGER `update_visita` BEFORE UPDATE ON `visita` FOR EACH ROW BEGIN
			DECLARE tag VARCHAR(25);
			IF OLD.Entrada IS NOT NULL AND OLD.Entrada != NEW.Entrada THEN
				signal sqlstate '45000' set message_text = 'VIS0001. Ingreso no modificable.';
			ELSEIF OLD.Salida IS NOT NULL AND OLD.Salida != NEW.Salida THEN
				signal sqlstate '45000' set message_text = 'VIS0002. Salida no modificable.';
			ELSE
				IF OLD.persona_PK_persona != NEW.persona_PK_persona THEN
					SELECT cat_tipo_persona.tipo INTO tag
					FROM persona
					INNER JOIN cat_tipo_persona ON cat_tipo_persona.pk_cat_tipo = persona.fk_tipo
					WHERE pk_persona = NEW.persona_PK_persona
						AND persona.estatus=TRUE
						AND cat_tipo_persona.estatus=TRUE;
					IF tag != 'Propietario' AND tag != 'Inquilino' AND tag != 'Recepcionista' THEN
						signal sqlstate '45000' set message_text = 'PER0002. Persona no valida para autorizar visitas.';
                    END IF;
				END IF;
            END IF;
            IF NEW.Salida IS NOT NULL THEN
				SET NEW.Estatus = FALSE;
            END IF;
			SET NEW.Fecha_Modificacion = CURRENT_TIMESTAMP;
		END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping routines for database 'condominio'
--
/*!50003 DROP PROCEDURE IF EXISTS `cursor_ref_cat_espacio_persona` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`Sgbd`@`localhost` PROCEDURE `cursor_ref_cat_espacio_persona`()
BEGIN
	DECLARE pk INT;
	DECLARE cursor_ref_cat_espacio_persona CURSOR FOR
		SELECT PK_persona
        FROM persona INNER JOIN cat_tipo_persona
			ON cat_tipo_persona.pk_cat_tipo = persona.fk_tipo
		WHERE (cat_tipo_persona.tipo = 'Propietario' or cat_tipo_persona.tipo = 'Inquilino' or cat_tipo_persona.tipo = 'Familia') AND cat_tipo_persona.Estatus = TRUE AND persona.Estatus = TRUE
        ORDER BY PK_persona ASC;
	OPEN cursor_ref_cat_espacio_persona;
		cursor_ref_cat_espacio_persona_loop: LOOP
			FETCH cursor_ref_cat_espacio_persona INTO pk;
			INSERT INTO ref_cat_espacio_persona (FK_persona, FK_departamento, Estatus)
				SELECT pk, pk_espacio, 1
				FROM cat_espacio
					INNER JOIN cat_tipo_espacio ON cat_tipo_espacio.PK_cat_tipo = cat_espacio.FK_tipo
				WHERE (cat_tipo_espacio.tipo = 'Departamento' OR cat_tipo_espacio.tipo = 'Penthouse') AND cat_tipo_espacio.Estatus = TRUE AND cat_espacio.Estatus = TRUE
				ORDER BY RAND() LIMIT 1;
        END LOOP cursor_ref_cat_espacio_persona_loop;
    CLOSE cursor_ref_cat_espacio_persona;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-27 16:28:21
