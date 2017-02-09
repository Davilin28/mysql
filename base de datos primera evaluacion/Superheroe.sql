-- MySQL dump 10.13  Distrib 5.5.46, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: Superheroes
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
-- Table structure for table `Escenario`
--

DROP TABLE IF EXISTS `Escenario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Escenario` (
  `ID` smallint(5) NOT NULL AUTO_INCREMENT,
  `tiempo` time DEFAULT NULL,
  `riesgo` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Escenario`
--

LOCK TABLES `Escenario` WRITE;
/*!40000 ALTER TABLE `Escenario` DISABLE KEYS */;
/*!40000 ALTER TABLE `Escenario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Objeto`
--

DROP TABLE IF EXISTS `Objeto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Objeto` (
  `codigo` smallint(5) NOT NULL DEFAULT '0',
  `ID_Escenario` smallint(5) NOT NULL AUTO_INCREMENT,
  `nombre_PERSONAJE` varchar(5) NOT NULL DEFAULT '',
  `hora_minuto_segundo` time DEFAULT NULL,
  PRIMARY KEY (`codigo`,`ID_Escenario`,`nombre_PERSONAJE`),
  KEY `fk1_Objeto` (`ID_Escenario`),
  KEY `fk2_Objeto` (`nombre_PERSONAJE`),
  CONSTRAINT `fk1_Objeto` FOREIGN KEY (`ID_Escenario`) REFERENCES `Escenario` (`ID`),
  CONSTRAINT `fk2_Objeto` FOREIGN KEY (`nombre_PERSONAJE`) REFERENCES `Personaje` (`nombre`)
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
-- Table structure for table `Personaje`
--

DROP TABLE IF EXISTS `Personaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Personaje` (
  `nombre` varchar(10) NOT NULL DEFAULT '',
  `ID_Escenario` smallint(5) NOT NULL AUTO_INCREMENT,
  `nombre_dominante_PERSONAJE` varchar(20) NOT NULL DEFAULT '',
  `habilidad` smallint(5) DEFAULT NULL,
  `fuerza` smallint(5) DEFAULT NULL,
  `inteligencia` smallint(5) DEFAULT NULL,
  PRIMARY KEY (`nombre`,`ID_Escenario`,`nombre_dominante_PERSONAJE`),
  KEY `fk1_Personaje` (`ID_Escenario`),
  CONSTRAINT `fk1_Personaje` FOREIGN KEY (`ID_Escenario`) REFERENCES `Escenario` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Personaje`
--

LOCK TABLES `Personaje` WRITE;
/*!40000 ALTER TABLE `Personaje` DISABLE KEYS */;
/*!40000 ALTER TABLE `Personaje` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-01-16 11:15:51
