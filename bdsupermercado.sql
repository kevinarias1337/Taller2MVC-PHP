-- MariaDB dump 10.17  Distrib 10.4.10-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: bdsupermercado
-- ------------------------------------------------------
-- Server version	10.4.10-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tblcategorias`
--

DROP TABLE IF EXISTS `tblcategorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblcategorias` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcategorias`
--

LOCK TABLES `tblcategorias` WRITE;
/*!40000 ALTER TABLE `tblcategorias` DISABLE KEYS */;
INSERT INTO `tblcategorias` VALUES (1,'Lacteos'),(3,'Cárnicos');
/*!40000 ALTER TABLE `tblcategorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblproductos`
--

DROP TABLE IF EXISTS `tblproductos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblproductos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `idcategoria` int(10) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `precio` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idcategoria` (`idcategoria`),
  CONSTRAINT `tblproductos_ibfk_1` FOREIGN KEY (`idcategoria`) REFERENCES `tblcategorias` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblproductos`
--

LOCK TABLES `tblproductos` WRITE;
/*!40000 ALTER TABLE `tblproductos` DISABLE KEYS */;
INSERT INTO `tblproductos` VALUES (2,3,'Jamon',2500),(3,1,'Leche',1900);
/*!40000 ALTER TABLE `tblproductos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblventas`
--

DROP TABLE IF EXISTS `tblventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblventas` (
  `idventa` int(11) NOT NULL AUTO_INCREMENT,
  `idproducto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  PRIMARY KEY (`idventa`),
  KEY `idproducto` (`idproducto`),
  CONSTRAINT `tblventas_ibfk_1` FOREIGN KEY (`idproducto`) REFERENCES `tblproductos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblventas`
--

LOCK TABLES `tblventas` WRITE;
/*!40000 ALTER TABLE `tblventas` DISABLE KEYS */;
INSERT INTO `tblventas` VALUES (1,2,1,2500),(9,2,2,5000),(13,3,3,5700);
/*!40000 ALTER TABLE `tblventas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-29  0:11:24
