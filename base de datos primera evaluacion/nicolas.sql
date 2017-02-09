-- MySQL dump 10.13  Distrib 5.7.16, for Linux (x86_64)
--
-- Host: localhost    Database: nicolas
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
-- Table structure for table `Contacto`
--

DROP TABLE IF EXISTS `Contacto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Contacto` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` char(30) NOT NULL,
  `apellidos` char(30) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Contacto`
--

LOCK TABLES `Contacto` WRITE;
/*!40000 ALTER TABLE `Contacto` DISABLE KEYS */;
/*!40000 ALTER TABLE `Contacto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Famoso`
--

DROP TABLE IF EXISTS `Famoso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Famoso` (
  `ID_Contacto` int(11) NOT NULL AUTO_INCREMENT,
  `apodo` char(30) DEFAULT NULL,
  `numfamoso` int(11) NOT NULL,
  PRIMARY KEY (`ID_Contacto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Famoso`
--

LOCK TABLES `Famoso` WRITE;
/*!40000 ALTER TABLE `Famoso` DISABLE KEYS */;
/*!40000 ALTER TABLE `Famoso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Politico`
--

DROP TABLE IF EXISTS `Politico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Politico` (
  `ID_Contacto` int(11) NOT NULL AUTO_INCREMENT,
  `rango` char(30) NOT NULL,
  `partido` char(30) NOT NULL,
  PRIMARY KEY (`ID_Contacto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Politico`
--

LOCK TABLES `Politico` WRITE;
/*!40000 ALTER TABLE `Politico` DISABLE KEYS */;
/*!40000 ALTER TABLE `Politico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Realeza`
--

DROP TABLE IF EXISTS `Realeza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Realeza` (
  `ID_Contacto` int(11) NOT NULL AUTO_INCREMENT,
  `ocupacion` char(30) DEFAULT NULL,
  PRIMARY KEY (`ID_Contacto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Realeza`
--

LOCK TABLES `Realeza` WRITE;
/*!40000 ALTER TABLE `Realeza` DISABLE KEYS */;
/*!40000 ALTER TABLE `Realeza` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evento`
--

DROP TABLE IF EXISTS `evento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `evento` (
  `hora` time NOT NULL,
  `fecha` date NOT NULL,
  `lugar` char(30) NOT NULL,
  PRIMARY KEY (`hora`,`fecha`,`lugar`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evento`
--

LOCK TABLES `evento` WRITE;
/*!40000 ALTER TABLE `evento` DISABLE KEYS */;
/*!40000 ALTER TABLE `evento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `presenta`
--

DROP TABLE IF EXISTS `presenta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `presenta` (
  `ID_presentador_Contacto` int(20) NOT NULL,
  `ID_presentado_contacto` int(20) NOT NULL,
  PRIMARY KEY (`ID_presentador_Contacto`,`ID_presentado_contacto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `presenta`
--

LOCK TABLES `presenta` WRITE;
/*!40000 ALTER TABLE `presenta` DISABLE KEYS */;
/*!40000 ALTER TABLE `presenta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-01-16 19:25:30
