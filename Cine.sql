CREATE DATABASE  IF NOT EXISTS `cartelera` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci */;
USE `cartelera`;
-- MariaDB dump 10.19  Distrib 10.4.28-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: cartelera
-- ------------------------------------------------------
-- Server version	10.4.28-MariaDB

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
-- Table structure for table `tbl_cat_pelicula`
--

DROP TABLE IF EXISTS `tbl_cat_pelicula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_cat_pelicula` (
  `Pelicula_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Pelicula_Nombre` varchar(70) DEFAULT NULL,
  `Pelicula_Precio` int(11) DEFAULT NULL,
  `Pelicula_Activo` int(11) DEFAULT NULL,
  PRIMARY KEY (`Pelicula_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cat_pelicula`
--

LOCK TABLES `tbl_cat_pelicula` WRITE;
/*!40000 ALTER TABLE `tbl_cat_pelicula` DISABLE KEYS */;
INSERT INTO `tbl_cat_pelicula` VALUES (1,'Break The Silence:The Movie',250,1),(2,'Burn The Stage:The Movie',300,1),(3,'Bring The Soul:The Movie',250,1),(4,'Permission To Dance On Stage',300,1),(5,' Demon Slayer:Rumbo al entrenamiento de los pilares',67,1),(6,'Despicable Me 4',55,1),(7,'Wonka',57,1),(8,'¡Patos!',72,1),(9,'Aquaman 2',75,1),(10,'Amor y Palomitas:Yo Antes de Ti',75,1),(11,'Red',78,1),(12,'Amor y Palomitas: Diario de una Pasion',85,1);
/*!40000 ALTER TABLE `tbl_cat_pelicula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ope_ticket`
--

DROP TABLE IF EXISTS `tbl_ope_ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_ope_ticket` (
  `Ticket_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Ticket_Nombre` varchar(70) DEFAULT NULL,
  `Ticket_CanEntradas` int(11) DEFAULT NULL,
  `Ticket_Total` int(11) DEFAULT NULL,
  `Ticket_PagaCon` int(11) DEFAULT NULL,
  `Ticket_Cambio` int(11) DEFAULT NULL,
  `Ticket_PeliculaId` int(11) DEFAULT NULL,
  `Ticket_Activo` int(11) DEFAULT NULL,
  PRIMARY KEY (`Ticket_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ope_ticket`
--

LOCK TABLES `tbl_ope_ticket` WRITE;
/*!40000 ALTER TABLE `tbl_ope_ticket` DISABLE KEYS */;
INSERT INTO `tbl_ope_ticket` VALUES (1,'Aket',1,300,300,0,2,1);
/*!40000 ALTER TABLE `tbl_ope_ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'cartelera'
--

--
-- Dumping routines for database 'cartelera'
--
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AddTicket` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AddTicket`(
	_Nombre varchar(100),
    _CanEntradas int,
    _Total int,
    _PagaCon int,
    _Cambio int,
    _PeliculaId int
)
BEGIN
	INSERT INTO tbl_ope_ticket VALUES(NULL, _Nombre, _CanEntradas, _Total, _PagaCon,
    _Cambio, _PeliculaId, 1);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Add_Ticket` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Add_Ticket`(
	_Nombre varchar(100),
    _CanEntradas int,
    _Total int,
    _PagaCon int,
    _Cambio int,
    _PeliculaId int
)
BEGIN
	INSERT INTO tbl_ope_ticket VALUES(NULL, _Nombre, _CanEntradas, _Total, _PagaCon,
    _Cambio, _PeliculaId, 1);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ConsultarVentas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ConsultarVentas`()
BEGIN
	SELECT 
	tk.Ticket_Id,
    tk.Ticket_Nombre,
    pe.Pelicula_Nombre,
    pe.Pelicula_Precio,
    tk.Ticket_CanEntradas,
    tk.Ticket_Total
FROM tbl_ope_ticket tk
INNER JOIN tbl_cat_pelicula pe on bo.Tiket_Pelicula_Id = pe.Pelicula_Id
WHERE pe.Pelicula_Activo = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Consultar_Ventas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Consultar_Ventas`()
BEGIN
	SELECT 
	tk.Ticket_Id,
    tk.Ticket_Nombre,
    pe.Pelicula_Nombre,
    pe.Pelicula_Precio,
    tk.Ticket_CanEntradas,
    tk.Ticket_Total
FROM tbl_ope_ticket tk
INNER JOIN tbl_cat_pelicula pe on tk.Ticket_PeliculaId = pe.Pelicula_Id
WHERE pe.Pelicula_Activo = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-17 19:07:43
