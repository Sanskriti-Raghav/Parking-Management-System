CREATE DATABASE  IF NOT EXISTS `gopark` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `gopark`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: gopark
-- ------------------------------------------------------
-- Server version	8.0.38

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
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `name` varchar(30) DEFAULT NULL,
  `pwd` varchar(30) DEFAULT NULL,
  `vehno` varchar(10) NOT NULL,
  `vehtype` int DEFAULT NULL,
  `level` int DEFAULT NULL,
  `slot` char(3) DEFAULT NULL,
  PRIMARY KEY (`vehno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `park`
--

DROP TABLE IF EXISTS `park`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `park` (
  `level` int DEFAULT NULL,
  `slot` char(3) NOT NULL,
  `vehtype` int DEFAULT NULL,
  `avail` char(1) DEFAULT NULL,
  PRIMARY KEY (`slot`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `park`
--

LOCK TABLES `park` WRITE;
/*!40000 ALTER TABLE `park` DISABLE KEYS */;
INSERT INTO `park` VALUES (1,'A01',4,'Y'),(1,'A02',4,'Y'),(1,'A03',4,'Y'),(1,'A04',4,'Y'),(1,'A05',4,'Y'),(1,'A06',4,'Y'),(1,'A07',4,'Y'),(1,'A08',4,'Y'),(1,'A09',4,'Y'),(1,'A10',4,'Y'),(1,'A11',2,'Y'),(1,'A12',2,'Y'),(1,'A13',2,'Y'),(1,'A14',2,'Y'),(1,'A15',2,'Y'),(1,'A16',2,'Y'),(1,'A17',2,'Y'),(1,'A18',2,'Y'),(1,'A19',2,'Y'),(1,'A20',2,'Y'),(2,'B01',2,'Y'),(2,'B02',2,'Y'),(2,'B03',2,'Y'),(2,'B04',2,'Y'),(2,'B05',2,'Y'),(2,'B06',2,'Y'),(2,'B07',2,'Y'),(2,'B08',2,'Y'),(2,'B09',2,'Y'),(2,'B10',2,'Y'),(2,'B11',2,'Y'),(2,'B12',2,'Y'),(2,'B13',2,'Y'),(2,'B14',2,'Y'),(2,'B15',2,'Y'),(2,'B16',2,'Y'),(2,'B17',2,'Y'),(2,'B18',2,'Y'),(2,'B19',2,'Y'),(2,'B20',2,'Y'),(2,'B21',2,'Y'),(2,'B22',2,'Y'),(2,'B23',2,'Y'),(2,'B24',2,'Y'),(2,'B25',2,'Y'),(2,'B26',2,'Y'),(2,'B27',2,'Y'),(2,'B28',2,'Y'),(2,'B29',2,'Y'),(2,'B30',2,'Y'),(2,'B31',2,'Y'),(2,'B32',2,'Y'),(2,'B33',2,'Y'),(2,'B34',2,'Y'),(2,'B35',2,'Y'),(2,'B36',2,'Y'),(2,'B37',2,'Y'),(2,'B38',2,'Y'),(2,'B39',2,'Y'),(2,'B40',2,'Y');
/*!40000 ALTER TABLE `park` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `name` varchar(30) DEFAULT NULL,
  `phone` bigint NOT NULL,
  `pwd` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('Kriti',9876543210,'kriti@123');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-23  6:40:17
