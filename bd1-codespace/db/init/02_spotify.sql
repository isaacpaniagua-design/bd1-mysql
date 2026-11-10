-- Base de práctica: spotify
CREATE DATABASE IF NOT EXISTS spotify;
USE spotify;


-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: spotify
-- ------------------------------------------------------
-- Server version	8.2.0

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
-- Table structure for table `artistas`
--

DROP TABLE IF EXISTS `artistas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artistas` (
  `codigoArtista` int NOT NULL,
  `nacionalidad` varchar(50) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `añoInicio` int NOT NULL,
  PRIMARY KEY (`codigoArtista`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artistas`
--

LOCK TABLES `artistas` WRITE;
/*!40000 ALTER TABLE `artistas` DISABLE KEYS */;
INSERT INTO `artistas` VALUES (1,'Estados Unidos','Linkin Park','Banda',1996),(2,'Inglaterra','Coldplay','Banda',1996),(3,'Australia','AC/DC','Banda',1973),(4,'México','Banda MS','Banda',2003),(5,'México','La Arrolladora Banda El Limón','Banda',1965),(6,'México','Banda El Recodo','Banda',1938),(7,'Finlandia','Stratovarius','Banda',1986),(8,'Reino Unido','Iron Maiden','Banda',1975),(9,'Reino Unido','Queen','Banda',1970),(10,'México','Maná','Banda',1986),(11,'Estados Unidos','Post Malone','Solista',1995),(12,'Reino Unido','Sam Smith','Solista',2012),(13,'Puerto Rico','Bad Bunny','Solista',2013),(14,'México','Kennia OS','Solista',2018),(15,'Puerto Rico','Ozuna','Solista',2012),(16,'Colombia','Karol G','Solista',2006),(17,'Suecia','Avicii','DJ',2011),(18,'Francia','David Guetta','DJ',1980),(19,'Estados Unidos','Marshmello','DJ',2015),(20,'México','Vicente Fernández','Solista',1954),(21,'Estados Unidos','Guns N\' Roses','Banda',1985),(22,'Estados Unidos','DaBaby','Solista',2015),(23,'Estadounidense','Taylor Swift','Solista',2006),(24,'Coreano','BTS','Grupo',2013);
/*!40000 ALTER TABLE `artistas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colaboraciones`
--

DROP TABLE IF EXISTS `colaboraciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colaboraciones` (
  `codigoColaboracion` int NOT NULL,
  `esPrincipal` tinyint(1) NOT NULL,
  `codigoArtista` int NOT NULL,
  `codigoContenido` int NOT NULL,
  PRIMARY KEY (`codigoColaboracion`),
  KEY `FK_Colaboraciones_Artistas` (`codigoArtista`),
  KEY `FK_Colaboraciones_Contenidos` (`codigoContenido`),
  CONSTRAINT `FK_Colaboraciones_Artistas` FOREIGN KEY (`codigoArtista`) REFERENCES `artistas` (`codigoArtista`),
  CONSTRAINT `FK_Colaboraciones_Contenidos` FOREIGN KEY (`codigoContenido`) REFERENCES `contenidos` (`codigoContenido`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colaboraciones`
--

LOCK TABLES `colaboraciones` WRITE;
/*!40000 ALTER TABLE `colaboraciones` DISABLE KEYS */;
INSERT INTO `colaboraciones` VALUES (1,1,14,1),(2,1,14,2),(3,1,14,3),(4,0,22,5),(5,1,14,5),(6,1,14,4),(7,0,13,4),(8,1,14,6),(9,1,3,7),(10,1,3,8),(11,1,3,9),(12,1,3,10),(13,1,3,11),(14,1,3,12),(15,1,1,13),(16,1,1,14),(17,1,1,15),(18,1,11,16),(19,1,11,17),(20,0,22,17),(21,1,11,18),(22,1,11,19);
/*!40000 ALTER TABLE `colaboraciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contenidos`
--

DROP TABLE IF EXISTS `contenidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contenidos` (
  `codigoContenido` int NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `duracion` decimal(8,2) NOT NULL,
  `codigoLista` int NOT NULL,
  PRIMARY KEY (`codigoContenido`),
  KEY `FK_Contenidos_Listas` (`codigoLista`),
  CONSTRAINT `FK_Contenidos_Listas` FOREIGN KEY (`codigoLista`) REFERENCES `listas` (`codigoLista`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contenidos`
--

LOCK TABLES `contenidos` WRITE;
/*!40000 ALTER TABLE `contenidos` DISABLE KEYS */;
INSERT INTO `contenidos` VALUES (1,'Future Nostalgia','Canción',3.04,1),(2,'Don\'t start now','Canción',3.03,1),(3,'Levitating','Canción',3.23,1),(4,'Un Día (One Day)','Canción',3.51,2),(5,'Levitating (feat. DaBaby)','Canción',3.23,2),(6,'Cool','Canción',3.29,2),(7,'Highway to Hell','Canción',3.28,3),(8,'Girls Got Rhythm','Canción',3.23,3),(9,'Walk All Over You','Canción',5.10,3),(10,'T.N.T.','Canción',5.01,4),(11,'Rock \'N\' Roll Singer','Canción',5.03,4),(12,'The Jack','Canción',5.52,4),(13,'Papercut','Canción',3.04,5),(14,'In the End','Canción',3.36,5),(15,'Crawling','Canción',3.28,5),(16,'Hollywood\'s Bleeding','Canción',2.36,6),(17,'Enemies (feat. DaBaby)','Canción',3.16,6),(18,'Circles','Canción',3.35,6),(19,'Goodbyes','Canción',2.54,6),(20,'Lavender Haze','Episodio',2.14,7),(21,'I think he knows','Capitulo',3.23,8),(22,'Trivia: Seesaw','Episodio',3.20,9),(23,'Like','Capitulo',4.15,9);
/*!40000 ALTER TABLE `contenidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `influencias`
--

DROP TABLE IF EXISTS `influencias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `influencias` (
  `codigoInfluencia` int NOT NULL,
  `codigoArtista` int NOT NULL,
  `codigoArtistaInfluenciado` int NOT NULL,
  PRIMARY KEY (`codigoInfluencia`),
  KEY `FK_Influencias_Artistas` (`codigoArtista`),
  KEY `FK_Influencias_Artistas1` (`codigoArtistaInfluenciado`),
  CONSTRAINT `FK_Influencias_Artistas` FOREIGN KEY (`codigoArtista`) REFERENCES `artistas` (`codigoArtista`),
  CONSTRAINT `FK_Influencias_Artistas1` FOREIGN KEY (`codigoArtistaInfluenciado`) REFERENCES `artistas` (`codigoArtista`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `influencias`
--

LOCK TABLES `influencias` WRITE;
/*!40000 ALTER TABLE `influencias` DISABLE KEYS */;
INSERT INTO `influencias` VALUES (1,14,22),(2,14,13),(3,22,14),(4,13,14),(5,11,22),(6,22,11),(7,14,23);
/*!40000 ALTER TABLE `influencias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listas`
--

DROP TABLE IF EXISTS `listas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `listas` (
  `codigoLista` int NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `añoGrabacion` int NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `codigoArtista` int NOT NULL,
  PRIMARY KEY (`codigoLista`),
  CONSTRAINT `FK_Listas_Artistas` FOREIGN KEY (`codigoLista`) REFERENCES `artistas` (`codigoArtista`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listas`
--

LOCK TABLES `listas` WRITE;
/*!40000 ALTER TABLE `listas` DISABLE KEYS */;
INSERT INTO `listas` VALUES (1,'Future Nostalgia',2020,'Álbum',14),(2,'Future Nostalgia: the moonlight edition',2021,'Álbum',14),(3,'Highway to Hell',1979,'Álbum',3),(4,'High Voltage',1976,'Álbum',3),(5,'Hybrid Theory',2000,'Álbum',1),(6,'Hollywood\'s Bleeding',2019,'Álbum',11),(7,'Midnights',2022,'Podcast',23),(8,'Lover',2019,'Audiolibro',23),(9,'Bulletproof',2022,'Podcast',24),(10,'2 Cool 4 Skool',2013,'Audiolibro',24);
/*!40000 ALTER TABLE `listas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `miembros`
--

DROP TABLE IF EXISTS `miembros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `miembros` (
  `codigoMiembro` int NOT NULL,
  `fechaInicioColaboracion` date NOT NULL,
  `fechaFinColaboracion` date DEFAULT NULL,
  `codigoArtista` int NOT NULL,
  `codigoPersona` int NOT NULL,
  PRIMARY KEY (`codigoMiembro`),
  KEY `FK_Miembros_Artistas` (`codigoArtista`),
  KEY `FK_Miembros_Personas` (`codigoPersona`),
  CONSTRAINT `FK_Miembros_Artistas` FOREIGN KEY (`codigoArtista`) REFERENCES `artistas` (`codigoArtista`),
  CONSTRAINT `FK_Miembros_Personas` FOREIGN KEY (`codigoPersona`) REFERENCES `personas` (`codigoPersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `miembros`
--

LOCK TABLES `miembros` WRITE;
/*!40000 ALTER TABLE `miembros` DISABLE KEYS */;
INSERT INTO `miembros` VALUES (1,'1996-01-01','2017-07-20',1,1),(2,'1996-01-01',NULL,1,2),(3,'1996-01-01',NULL,1,3),(4,'1996-01-01',NULL,1,4),(5,'1996-01-01',NULL,1,5),(6,'1996-01-01',NULL,2,6),(7,'1996-01-01',NULL,2,7),(8,'1998-01-01',NULL,2,8),(9,'1973-01-01',NULL,3,9),(10,'1980-02-20',NULL,3,10),(11,'1974-01-01','1980-02-19',3,11),(12,'1973-01-01',NULL,3,12),(13,'2003-01-01','2006-01-01',4,13),(14,'2004-01-01',NULL,4,14),(15,'2003-01-01','2014-01-01',4,15),(16,'2003-01-01',NULL,4,16),(17,'2016-01-01',NULL,5,17),(18,'2001-01-01','2007-01-01',5,18),(19,'2014-01-01',NULL,5,19),(20,'2007-01-01',NULL,5,20),(21,'1998-01-01','2009-01-01',6,21),(22,'2008-01-01','2012-01-01',6,22),(23,'2001-01-01',NULL,6,23),(24,'1985-01-01','2008-01-01',7,24),(25,'1994-01-01',NULL,7,25),(26,'2005-01-01',NULL,7,26),(27,'2008-01-01',NULL,7,27),(28,'1975-01-01','1993-01-01',8,28),(29,'1982-01-01',NULL,8,29),(30,'1975-01-01',NULL,8,30),(31,'1975-01-01','1976-01-01',8,31),(32,'1995-01-01',NULL,11,32),(33,'2012-01-01',NULL,12,33),(34,'2013-01-01',NULL,13,34),(35,'2015-01-01',NULL,14,51),(36,'2012-01-01',NULL,15,36),(37,'2006-01-01',NULL,16,37),(38,'2011-01-01',NULL,17,38),(39,'1980-01-01',NULL,18,39),(40,'2015-01-01',NULL,19,40),(41,'1954-01-01',NULL,20,41),(42,'1969-08-23','1986-08-01',9,43),(43,'1971-03-01','2009-01-01',9,44),(44,'1971-01-01','2009-01-01',9,45),(45,'1970-01-01','2006-01-01',9,46),(46,'1976-01-01',NULL,10,47),(47,'1980-01-01',NULL,10,48),(48,'1994-01-01',NULL,10,49),(49,'1991-01-01','1994-01-01',10,50);
/*!40000 ALTER TABLE `miembros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personas`
--

DROP TABLE IF EXISTS `personas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personas` (
  `codigoPersona` int NOT NULL,
  `nombreCompleto` varchar(200) NOT NULL,
  `nacionalidad` varchar(50) NOT NULL,
  `fechaNacimiento` date NOT NULL,
  PRIMARY KEY (`codigoPersona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personas`
--

LOCK TABLES `personas` WRITE;
/*!40000 ALTER TABLE `personas` DISABLE KEYS */;
INSERT INTO `personas` VALUES (1,'Chester Charles Bennington','Estados Unidos','1976-03-20'),(2,'Michael Kenji Shinoda','Estados Unidos','1977-02-11'),(3,'Robert Gregory Bourdon','Estados Unidos','1979-01-20'),(4,'David Michael Farrell','Estados Unidos','1977-02-08'),(5,'Bradford Phillip Delson','Estados Unidos','1977-12-01'),(6,'Christopher Anthony John Martin','Reino Unido','1977-03-02'),(7,'Guy Rupert Berryman','Reino Unido','1978-04-12'),(8,'Philip Christopher Hammond Harvey','Reino Unido','1976-08-29'),(9,'Angus Mckinnon Young','Australia','1955-03-31'),(10,'Brian Francis Johnson De Luca','Reino Unido','1947-10-05'),(11,'Ronald Belford Scott','Escocia','1946-07-09'),(12,'Dave Evans','Australia','1953-07-20'),(13,'Julio César Álvarez Montelongo','México','1983-04-11'),(14,'Alan Manuel Ramírez Salcido','México','1986-11-13'),(15,'Sergio Lizarraga','México','1982-05-09'),(16,'Oswaldo Silvas Carreón','México','1977-05-16'),(17,'Jorge Luis Medina Ramos','México','1973-11-19'),(18,'Germán Montero','México','1979-05-21'),(19,'Vincen Melendres García','México','1995-01-04'),(20,'José Isidro Beltrán Cuen','México','1986-02-13'),(21,'Luis Antonio López','México','1979-11-21'),(22,'Luis Alfonso Partida','México','1989-11-16'),(23,'Joel Lizárraga','México','1973-12-15'),(24,'Timo Tapio Tolkki','Finlandia','1966-03-03'),(25,'Timo Antero Kotipelto','Finlandia','1969-03-15'),(26,'Lauri Porra','Finlandia','1977-12-13'),(27,'Matias Kupiainen','Finlandia','1983-05-11'),(28,'Paul Bruce Dickinson','Reino Unido','1958-08-07'),(29,'Michael Henry McBrain','Reino Unido','1952-06-05'),(30,'David Michael Murray','Reino Unido','1956-12-23'),(31,'Paul Mario Day','Inglaterra','1956-04-19'),(32,'Austin Richard Post','Estados Unidos','1995-07-04'),(33,'Samuel Frederick Smith','Reino Unido','1992-05-19'),(34,'Benito Antonio Martínez Ocasi','Puerto Rico','1994-03-10'),(35,'Dua Lipa','Reino Unido','1995-08-22'),(36,'Juan Carlos Ozuna Rosado','Puerco Rico','1992-03-12'),(37,'Carolina Giraldo Navarro','Colombia','1991-02-14'),(38,'Tim Bergling','Suecia','1989-09-08'),(39,'Pierre David Guetta','Francia','1967-11-07'),(40,'Christopher Comstock','Estados Unidos','1992-05-19'),(41,'Vicente Fernández Gómez','México','1940-02-17'),(42,'Jonathan Lyndale Kirk','Estados Unidos','1991-12-22'),(43,'Farrokh Bulsara; Freddie Mercury\n','Reino Unido','1969-08-23'),(44,'Brian Harold May\n','Reino Unido','1971-07-19'),(45,'John Richard Deacon\n','Reino Unido','1951-08-19'),(46,'Roger Taylor\n','Reino Unido','1949-07-26'),(47,'José Fernando Emilio Olvera Sierra\n','México','1959-12-08'),(48,'Alejandro Gonzalez','México','1969-02-24'),(49,'Sergio Vallín\n','México','1972-05-26'),(50,'César López\n','México','1968-03-22'),(51,'Kenia Guadalupe Flores Osuna','México','1999-07-15');
/*!40000 ALTER TABLE `personas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'spotify'
--

--
-- Dumping routines for database 'spotify'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-18  9:50:21
