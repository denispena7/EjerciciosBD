-- MySQL dump 10.13  Distrib 8.0.35, for Win64 (x86_64)
--
-- Host: localhost    Database: ejercicio3
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `ejercicio3`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ejercicio3` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `ejercicio3`;

--
-- Table structure for table `asignaturas`
--

DROP TABLE IF EXISTS `asignaturas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asignaturas` (
  `idAsignatura` int NOT NULL AUTO_INCREMENT,
  `nombreAsignatura` varchar(45) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `nemoAsignatura` int DEFAULT NULL,
  `cursoAsignatura` int NOT NULL,
  `abreviaturaAsignatura` varchar(3) COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`idAsignatura`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asignaturas`
--

LOCK TABLES `asignaturas` WRITE;
/*!40000 ALTER TABLE `asignaturas` DISABLE KEYS */;
INSERT INTO `asignaturas` VALUES (1,'Redes',1,1,'R'),(2,'Base de datos',1,1,'BD'),(3,'Sistemas Informáticos',1,1,'SI'),(4,'Administración de Sistemas',2,2,'AD'),(5,'Desarrollo Android',2,2,'DA'),(6,'Desarrollo Web',2,2,'DW');
/*!40000 ALTER TABLE `asignaturas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ciclos`
--

DROP TABLE IF EXISTS `ciclos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ciclos` (
  `idCiclo` int NOT NULL AUTO_INCREMENT,
  `nombreCiclo` varchar(45) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `fechaFin` date DEFAULT NULL,
  `fechaInicio` date DEFAULT NULL,
  PRIMARY KEY (`idCiclo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciclos`
--

LOCK TABLES `ciclos` WRITE;
/*!40000 ALTER TABLE `ciclos` DISABLE KEYS */;
INSERT INTO `ciclos` VALUES (1,'DAM','2024-01-30','2025-01-30'),(2,'DAW','2023-01-30','2024-01-30'),(3,'ASIR','2022-01-30','2023-01-30');
/*!40000 ALTER TABLE `ciclos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pertenencias`
--

DROP TABLE IF EXISTS `pertenencias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pertenencias` (
  `idPertenencia` int NOT NULL AUTO_INCREMENT,
  `duracion` int DEFAULT NULL,
  `idAsignaturaFK` int DEFAULT NULL,
  `idCicloFK` int DEFAULT NULL,
  PRIMARY KEY (`idPertenencia`),
  KEY `idAsignaturaFK` (`idAsignaturaFK`),
  KEY `idCicloFK` (`idCicloFK`),
  CONSTRAINT `pertenencias_ibfk_1` FOREIGN KEY (`idAsignaturaFK`) REFERENCES `asignaturas` (`idAsignatura`),
  CONSTRAINT `pertenencias_ibfk_2` FOREIGN KEY (`idCicloFK`) REFERENCES `ciclos` (`idCiclo`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pertenencias`
--

LOCK TABLES `pertenencias` WRITE;
/*!40000 ALTER TABLE `pertenencias` DISABLE KEYS */;
INSERT INTO `pertenencias` VALUES (1,5,1,3),(2,6,2,1),(3,7,3,2),(4,8,4,3),(5,9,5,1),(6,4,6,2);
/*!40000 ALTER TABLE `pertenencias` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-01 10:35:03
SELECT * FROM ciclos;