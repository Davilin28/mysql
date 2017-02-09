-- MySQL dump 10.13  Distrib 5.5.46, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: Aparato_electronico
-- ------------------------------------------------------
-- Server version	5.5.46-0ubuntu0.14.04.2

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
-- Table structure for table `Aparato_electronico`
--

DROP TABLE IF EXISTS `Aparato_electronico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Aparato_electronico` (
  `codigo_unico` smallint(2) NOT NULL DEFAULT '0',
  `nombre_TIPO` varchar(8) NOT NULL DEFAULT '',
  `caracteristicas_TIPO` varchar(20) NOT NULL DEFAULT '',
  `descripcion` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`codigo_unico`,`nombre_TIPO`,`caracteristicas_TIPO`),
  KEY `nombre_TIPO` (`nombre_TIPO`,`caracteristicas_TIPO`),
  CONSTRAINT `Aparato_electronico_ibfk_1` FOREIGN KEY (`nombre_TIPO`, `caracteristicas_TIPO`) REFERENCES `Tipo` (`nombre`, `caracteristicas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Aparato_electronico`
--

LOCK TABLES `Aparato_electronico` WRITE;
/*!40000 ALTER TABLE `Aparato_electronico` DISABLE KEYS */;
/*!40000 ALTER TABLE `Aparato_electronico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Componente`
--

DROP TABLE IF EXISTS `Componente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Componente` (
  `cif_Fabricante` smallint(8) NOT NULL DEFAULT '0',
  `nombre` varchar(10) NOT NULL DEFAULT '',
  `especificacion` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`cif_Fabricante`,`nombre`),
  CONSTRAINT `Componente_ibfk_1` FOREIGN KEY (`cif_Fabricante`) REFERENCES `Fabricante` (`CIF`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Componente`
--

LOCK TABLES `Componente` WRITE;
/*!40000 ALTER TABLE `Componente` DISABLE KEYS */;
/*!40000 ALTER TABLE `Componente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fabricante`
--

DROP TABLE IF EXISTS `Fabricante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fabricante` (
  `CIF` smallint(8) NOT NULL DEFAULT '0',
  `domicilio_social` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`CIF`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fabricante`
--

LOCK TABLES `Fabricante` WRITE;
/*!40000 ALTER TABLE `Fabricante` DISABLE KEYS */;
/*!40000 ALTER TABLE `Fabricante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tipo`
--

DROP TABLE IF EXISTS `Tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tipo` (
  `nombre` varchar(8) NOT NULL DEFAULT '',
  `caracteristicas` varchar(20) NOT NULL DEFAULT '',
  `nombre_GEN_TIPO` varchar(20) NOT NULL DEFAULT '',
  `caracteristicas_GEN_TIPO` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`nombre`,`caracteristicas`,`nombre_GEN_TIPO`,`caracteristicas_GEN_TIPO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tipo`
--

LOCK TABLES `Tipo` WRITE;
/*!40000 ALTER TABLE `Tipo` DISABLE KEYS */;
/*!40000 ALTER TABLE `Tipo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-01-16 11:17:01
