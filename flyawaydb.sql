-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: flyawaydb
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookings` (
  `ID` bigint NOT NULL,
  `flightId` bigint DEFAULT NULL,
  `flightName` varchar(225) DEFAULT NULL,
  `firstName` varchar(225) DEFAULT NULL,
  `lastName` varchar(225) DEFAULT NULL,
  `mobileNo` varchar(225) DEFAULT NULL,
  `bookDate` date DEFAULT NULL,
  `emailId` varchar(225) DEFAULT NULL,
  `address` varchar(755) DEFAULT NULL,
  `noOfPerson` bigint DEFAULT NULL,
  `price` bigint DEFAULT NULL,
  `finalPrice` bigint DEFAULT NULL,
  `createdBy` varchar(225) DEFAULT NULL,
  `modifiedBy` varchar(225) DEFAULT NULL,
  `createdDatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedDatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`),
  KEY `FK_a_book` (`flightId`),
  CONSTRAINT `FK_a_book` FOREIGN KEY (`flightId`) REFERENCES `flights` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
INSERT INTO `bookings` VALUES (6,3,'WIZZ AIR','Mihai','Grigoras','+34354657634','2023-03-03','mihaigrigoras.19@gmail.com','Home',100,800,80000,'Mihai','Mihai','2023-03-04 16:27:13','2023-03-03 16:59:48'),(7,3,'WIZZ AIR','Mihai','Grigoras','+34354657634','2023-03-03','mihaigrigoras.19@gmail.com','Home',1000,800,800000,'Mihai','Mihai','2023-03-04 16:27:38','2023-03-03 17:00:55'),(8,6,'RYANAIR62','Mihai','Grigoras','+32435445454','2023-03-04','mihaigrigoras.19@gmail.com','Home',1,60,60,'Mihai','Mihai','2023-03-04 16:27:38','2023-03-04 15:49:17'),(9,6,'RYANAIR62','Test','TestLasstName','+653245465656','2023-03-04','test@email.com','Test',1,60,60,'Testuser','Testuser','2023-03-04 16:19:41','2023-03-04 16:19:41');
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flights`
--

DROP TABLE IF EXISTS `flights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flights` (
  `ID` bigint NOT NULL,
  `flightNo` varchar(225) DEFAULT NULL,
  `fightName` varchar(225) DEFAULT NULL,
  `fromCity` varchar(225) DEFAULT NULL,
  `toCity` varchar(225) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `description` varchar(775) DEFAULT NULL,
  `time` varchar(225) DEFAULT NULL,
  `travelDuraion` varchar(225) DEFAULT NULL,
  `ticketPrice` bigint DEFAULT NULL,
  `airPortName` varchar(225) DEFAULT NULL,
  `createdBy` varchar(225) DEFAULT NULL,
  `modifiedBy` varchar(225) DEFAULT NULL,
  `createdDatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedDatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flights`
--

LOCK TABLES `flights` WRITE;
/*!40000 ALTER TABLE `flights` DISABLE KEYS */;
INSERT INTO `flights` VALUES (3,'WIZ53','WIZZ AIR53','Bucharest','London','2023-03-05','Test','12:00 UTC','3:25',60,'Otopeni','Admin@gmail.com','Admin@gmail.com','2023-03-03 16:28:52','2023-03-04 15:26:11'),(4,'WIZ62','WIZZ AIR62','London','Bucharest','2023-03-08','London to Bucharest with WIZZ Air','14:30 UTC','3:00',50,'London City','Admin@gmail.com','Admin@gmail.com','2023-03-04 15:22:39','2023-03-04 15:25:38'),(5,'QAT43R','QATAR AIRWAYS43','Qatar','New York','2023-03-19','Qatar to New York with QATAR AIRWAYS','08:00 UTC','12:00',800,'Doha International','Admin@gmail.com','Admin@gmail.com','2023-03-04 15:27:37','2023-03-04 15:27:37'),(6,'RYAN62J','RYANAIR62','Paris','Madrid','2023-04-04','Paris to Madrid with RYANAIR','14:30 UTC','2:00',60,'Charles de Gaulle','Admin@gmail.com','Admin@gmail.com','2023-03-04 15:29:30','2023-03-04 15:29:30'),(7,'LUFT83K','LUFTHANSA83','Hong Kong','Berlin','2023-03-24','Hong Kong to Berlin with Lufthansa','23:30 UTC','17:00',1800,'Hong Kong International','Admin@gmail.com','Admin@gmail.com','2023-03-04 15:33:54','2023-03-04 15:33:54'),(8,'AIRF67C','AIR FRANCE67','Cairo','Bogota','2023-08-23','Cairo to Bogota with AIRFRANCE','04:00 UTC','19:00',700,'Cairo International Airport','Admin@gmail.com','Admin@gmail.com','2023-03-04 15:37:18','2023-03-04 15:37:18');
/*!40000 ALTER TABLE `flights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `ID` bigint NOT NULL,
  `firstName` varchar(225) DEFAULT NULL,
  `lastName` varchar(225) DEFAULT NULL,
  `login` varchar(225) DEFAULT NULL,
  `password` varchar(225) DEFAULT NULL,
  `roleId` bigint DEFAULT NULL,
  `createdBy` varchar(225) DEFAULT NULL,
  `modifiedBy` varchar(225) DEFAULT NULL,
  `createdDatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedDatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Admin','Admin','Admin@gmail.com','Admin2023!',1,'root','root','2023-03-04 16:53:16','2023-03-01 19:42:16'),(2,'Mihai','Grigoras','Mihai','1qazXSW@',2,'root','root','2023-03-03 16:15:30','2023-03-03 16:15:30'),(3,'Test','TestLasstName','Testuser','1qazXSW@',2,'root','root','2023-03-04 16:18:50','2023-03-04 16:18:58');
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

-- Dump completed on 2023-03-04 18:56:42
