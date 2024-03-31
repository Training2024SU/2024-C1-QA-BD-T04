-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: libreriabuscalibre
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
-- Table structure for table `libro`
--

DROP TABLE IF EXISTS `libro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `libro` (
  `ISBN` varchar(10) NOT NULL,
  `titulo` varchar(45) NOT NULL,
  `numero_paginas` varchar(45) DEFAULT NULL,
  `nombre_editorial` varchar(50) NOT NULL,
  PRIMARY KEY (`ISBN`),
  KEY `nombre_editorial_idx` (`nombre_editorial`),
  CONSTRAINT `nombre_editorial` FOREIGN KEY (`nombre_editorial`) REFERENCES `editorial` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libro`
--

LOCK TABLES `libro` WRITE;
/*!40000 ALTER TABLE `libro` DISABLE KEYS */;
INSERT INTO `libro` VALUES ('0000000001','Cien años de soledad','368','Babel Libros'),('0000000002','Harry Potter y la piedra filosofal','332','Gato Malo'),('0000000003','1Q84','1157','Planeta'),('0000000004','Americanah','588','Ediciones SM'),('0000000005','La casa de los espíritus','536','Babel Libros'),('0000000006','It','1104','Gato Malo'),('0000000007','El Hobbit','350','Planeta'),('0000000008','Los miserables','1488','Ediciones SM'),('0000000009','Guerra y Paz','1225','Babel Libros'),('0000000010','Don Quijote de la Mancha','863','Gato Malo'),('0000000011','Moby Dick','720','Planeta'),('0000000012','Jane Eyre','624','Ediciones SM'),('0000000013','Harry Potter y la cámara secreta','368','Babel Libros'),('0000000014','El Resplandor','544','Gato Malo'),('0000000015','Crimen y castigo','666','Planeta'),('0000000016','El código Da Vinci','696','Ediciones SM'),('0000000017','El juego del ángel','864','Babel Libros'),('0000000018','1984','336','Gato Malo'),('0000000019','La chica del tren','496','Planeta'),('0000000020','La Sombra del Viento','600','Ediciones SM');
/*!40000 ALTER TABLE `libro` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-29 16:34:20
