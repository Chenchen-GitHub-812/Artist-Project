CREATE DATABASE  IF NOT EXISTS `artistproject` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `artistproject`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: artistproject
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `orderdetails`
--

DROP TABLE IF EXISTS `orderdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderdetails` (
  `order_number` varchar(10) NOT NULL,
  `painting_id` varchar(10) NOT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`order_number`,`painting_id`),
  KEY `fk_orderdetails_paintings1_idx` (`painting_id`),
  CONSTRAINT `fk_orderdetails_orders1` FOREIGN KEY (`order_number`) REFERENCES `orders` (`order_number`),
  CONSTRAINT `fk_orderdetails_paintings1` FOREIGN KEY (`painting_id`) REFERENCES `paintings` (`painting_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetails`
--

LOCK TABLES `orderdetails` WRITE;
/*!40000 ALTER TABLE `orderdetails` DISABLE KEYS */;
INSERT INTO `orderdetails` VALUES ('OR0001','PT0001',3500),('OR0002','PT0002',2000),('OR0003','PT0003',2000),('OR0004','PT0004',2000),('OR0005','PT0005',2200),('OR0006','PT0010',3000),('OR0007','PT0062',2000),('OR0008','PT0011',2200),('OR0009','PT0012',11000),('OR0010','PT0013',2000),('OR0011','PT0014',2000),('OR0012','PT0015',1500),('OR0013','PT0002',1000),('OR0014','PT0007',1000),('OR0015','PT0007',1000),('OR0016','PT0007',1000),('OR0017','PT0007',1000),('OR0018','PT0007',1000),('OR0019','PT0007',1000),('OR0020','PT0007',1000),('OR0021','PT0006',500),('OR0021','PT0008',1000),('OR0022','PT0002',1000),('OR0022','PT0006',500),('OR0022','PT0008',1000),('OR0023','PT0002',1000),('OR0023','PT0006',500),('OR0023','PT0008',1000);
/*!40000 ALTER TABLE `orderdetails` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-28 10:26:15
