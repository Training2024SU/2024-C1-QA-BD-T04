-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: clinica_bd
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
-- Table structure for table `tb_medico_procedimiento`
--

DROP TABLE IF EXISTS `tb_medico_procedimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_medico_procedimiento` (
  `id_medico_procedimiento` int NOT NULL,
  `tb_procedimiento_id_procedimiento` int NOT NULL,
  `tb_medico_id_medico` int NOT NULL,
  PRIMARY KEY (`id_medico_procedimiento`),
  KEY `fk_tb_medico_procedimiento_tb_procedimiento1_idx` (`tb_procedimiento_id_procedimiento`),
  KEY `fk_tb_medico_procedimiento_tb_medico1_idx` (`tb_medico_id_medico`),
  CONSTRAINT `fk_tb_medico_procedimiento_tb_medico1` FOREIGN KEY (`tb_medico_id_medico`) REFERENCES `tb_medico` (`id_medico`),
  CONSTRAINT `fk_tb_medico_procedimiento_tb_procedimiento1` FOREIGN KEY (`tb_procedimiento_id_procedimiento`) REFERENCES `tb_procedimiento` (`id_procedimiento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_medico_procedimiento`
--

LOCK TABLES `tb_medico_procedimiento` WRITE;
/*!40000 ALTER TABLE `tb_medico_procedimiento` DISABLE KEYS */;
INSERT INTO `tb_medico_procedimiento` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5);
/*!40000 ALTER TABLE `tb_medico_procedimiento` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-31 14:57:24
