-- MySQL dump 10.13  Distrib 8.0.29, for macos12 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `Order`
--

DROP TABLE IF EXISTS `Order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Order` (
  `idOrder` int NOT NULL,
  `client_id` int NOT NULL,
  `idRestaurant` int NOT NULL,
  `date` datetime NOT NULL,
  `idOrderStatut` int NOT NULL,
  `alreadyPaid` tinyint NOT NULL,
  `priceHT` double NOT NULL,
  `taxe` double NOT NULL,
  `needDelivery` tinyint NOT NULL,
  `idDeliveryGuy` int NOT NULL,
  `pickUpDate` datetime NOT NULL,
  `deliveryDate` datetime NOT NULL,
  `idPizzaGuy` int NOT NULL,
  PRIMARY KEY (`idOrder`),
  UNIQUE KEY `idOrder_UNIQUE` (`idOrder`),
  KEY `client_id_idx` (`client_id`),
  KEY `idRestaurant_idx` (`idRestaurant`),
  KEY `idDeliveryGuy_idx` (`idDeliveryGuy`),
  KEY `idOrderStatut_idx` (`idOrderStatut`),
  KEY `idPizzaGuy_idx` (`idPizzaGuy`),
  CONSTRAINT `client_id` FOREIGN KEY (`client_id`) REFERENCES `Client` (`client_id`),
  CONSTRAINT `idDeliveryGuy` FOREIGN KEY (`idDeliveryGuy`) REFERENCES `DeliveryGuy` (`idDeliveryGuy`),
  CONSTRAINT `idOrderStatut` FOREIGN KEY (`idOrderStatut`) REFERENCES `OrderStatut` (`idOrderStatut`),
  CONSTRAINT `idPizzaGuy` FOREIGN KEY (`idPizzaGuy`) REFERENCES `PizzaGuy` (`idPizzaGuy`),
  CONSTRAINT `idRestaurant` FOREIGN KEY (`idRestaurant`) REFERENCES `Restaurant` (`idRestaurant`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Order`
--

LOCK TABLES `Order` WRITE;
/*!40000 ALTER TABLE `Order` DISABLE KEYS */;
INSERT INTO `Order` VALUES (202205301,7545687,75008,'2022-05-30 12:22:22',5,0,12,20,1,75123,'2022-05-30 12:30:00','2022-05-30 12:45:00',666887),(202205302,7577889,75009,'2022-05-30 12:12:28',5,1,14,20,1,75453,'2022-05-30 12:21:17','2022-05-30 12:32:45',742546);
/*!40000 ALTER TABLE `Order` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-02 11:50:08
