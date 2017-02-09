-- MySQL dump 10.13  Distrib 5.7.16, for Linux (x86_64)
--
-- Host: localhost    Database: walter
-- ------------------------------------------------------
-- Server version	5.7.16-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Lleva`
--

DROP TABLE IF EXISTS `Lleva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Lleva` (
  `hora_SITUACION` time NOT NULL DEFAULT '00:00:00',
  `nombre_OBJETO` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`hora_SITUACION`,`nombre_OBJETO`),
  KEY `nombre_OBJETO` (`nombre_OBJETO`),
  CONSTRAINT `Lleva_ibfk_1` FOREIGN KEY (`hora_SITUACION`) REFERENCES `Situacion` (`hora`),
  CONSTRAINT `Lleva_ibfk_2` FOREIGN KEY (`nombre_OBJETO`) REFERENCES `Objeto` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Lleva`
--

LOCK TABLES `Lleva` WRITE;
/*!40000 ALTER TABLE `Lleva` DISABLE KEYS */;
/*!40000 ALTER TABLE `Lleva` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Objeto`
--

DROP TABLE IF EXISTS `Objeto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Objeto` (
  `nombre` varchar(20) NOT NULL DEFAULT '',
  `nombre_contenedor_Objeto` varchar(30) NOT NULL DEFAULT '',
  `tamaño` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`nombre`,`nombre_contenedor_Objeto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Objeto`
--

LOCK TABLES `Objeto` WRITE;
/*!40000 ALTER TABLE `Objeto` DISABLE KEYS */;
/*!40000 ALTER TABLE `Objeto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Persona`
--

DROP TABLE IF EXISTS `Persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Persona` (
  `nombre` varchar(20) NOT NULL DEFAULT '',
  `apellidos` varchar(20) NOT NULL DEFAULT '',
  `trabajo` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`nombre`,`apellidos`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Persona`
--

LOCK TABLES `Persona` WRITE;
/*!40000 ALTER TABLE `Persona` DISABLE KEYS */;
/*!40000 ALTER TABLE `Persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Situacion`
--

DROP TABLE IF EXISTS `Situacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Situacion` (
  `hora` time NOT NULL DEFAULT '00:00:00',
  `lugar` varchar(35) DEFAULT NULL,
  `vestuario` varchar(30) DEFAULT NULL,
  `mercancia` varchar(30) DEFAULT NULL,
  `nombre_Persona` varchar(20) NOT NULL DEFAULT '',
  `apellidos_Persona` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`hora`,`nombre_Persona`,`apellidos_Persona`),
  KEY `nombre_Persona` (`nombre_Persona`,`apellidos_Persona`),
  CONSTRAINT `Situacion_ibfk_1` FOREIGN KEY (`nombre_Persona`, `apellidos_Persona`) REFERENCES `Persona` (`nombre`, `apellidos`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Situacion`
--

LOCK TABLES `Situacion` WRITE;
/*!40000 ALTER TABLE `Situacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `Situacion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-01-16 19:29:34
