-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: real_estate
-- ------------------------------------------------------
-- Server version	5.7.22-log

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
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board` (
  `board_seq` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `context` text,
  `region_do_val` int(11) DEFAULT NULL,
  `region_si_val` int(11) DEFAULT NULL,
  `region_gu_val` int(11) DEFAULT NULL,
  PRIMARY KEY (`board_seq`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (3,'test',NULL,1,1,1),(4,'test',NULL,1,2,3),(5,'test123',NULL,1,1,2),(6,'2개 첨부',NULL,1,1,1);
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `region_do`
--

DROP TABLE IF EXISTS `region_do`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `region_do` (
  `region_do` varchar(45) NOT NULL,
  `region_do_val` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`region_do_val`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='주소 : 도';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `region_do`
--

LOCK TABLES `region_do` WRITE;
/*!40000 ALTER TABLE `region_do` DISABLE KEYS */;
INSERT INTO `region_do` VALUES ('경기도',1),('강원도',2),('인천/서울',3),('경상도',4),('충청도',5),('전라도',6);
/*!40000 ALTER TABLE `region_do` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `region_gu`
--

DROP TABLE IF EXISTS `region_gu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `region_gu` (
  `region_do_val` int(11) DEFAULT NULL,
  `region_si_val` int(11) DEFAULT NULL,
  `region_gu` varchar(45) DEFAULT NULL,
  `region_gu_val` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`region_gu_val`),
  KEY `region_si_val_idx` (`region_si_val`,`region_do_val`),
  CONSTRAINT `region_si_val` FOREIGN KEY (`region_si_val`, `region_do_val`) REFERENCES `region_si` (`region_si_val`, `region_do_val`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `region_gu`
--

LOCK TABLES `region_gu` WRITE;
/*!40000 ALTER TABLE `region_gu` DISABLE KEYS */;
INSERT INTO `region_gu` VALUES (1,1,'원미구',1),(1,1,'오정구',2),(1,2,'--',3);
/*!40000 ALTER TABLE `region_gu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `region_si`
--

DROP TABLE IF EXISTS `region_si`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `region_si` (
  `region_do_val` int(11) NOT NULL,
  `region_si` varchar(45) DEFAULT NULL,
  `region_si_val` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`region_si_val`,`region_do_val`),
  KEY `region_do_val_idx` (`region_do_val`),
  CONSTRAINT `region_do_val` FOREIGN KEY (`region_do_val`) REFERENCES `region_do` (`region_do_val`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `region_si`
--

LOCK TABLES `region_si` WRITE;
/*!40000 ALTER TABLE `region_si` DISABLE KEYS */;
INSERT INTO `region_si` VALUES (1,'부천시',1),(1,'시흥시',2);
/*!40000 ALTER TABLE `region_si` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sale_type`
--

DROP TABLE IF EXISTS `sale_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sale_type` (
  `val` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`val`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale_type`
--

LOCK TABLES `sale_type` WRITE;
/*!40000 ALTER TABLE `sale_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `sale_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upload`
--

DROP TABLE IF EXISTS `upload`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upload` (
  `upload_seq` int(11) NOT NULL AUTO_INCREMENT,
  `board_seq` int(11) NOT NULL,
  `upload_src` text,
  `upload_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`upload_seq`),
  KEY `board_seq_idx` (`board_seq`),
  CONSTRAINT `board_seq` FOREIGN KEY (`board_seq`) REFERENCES `board` (`board_seq`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upload`
--

LOCK TABLES `upload` WRITE;
/*!40000 ALTER TABLE `upload` DISABLE KEYS */;
INSERT INTO `upload` VALUES (1,3,'C:\\eGovFrame-3.6.0\\real-estate\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\real_estate_adm\\resources\\upload\\88d01e84fbb448edbf582afe28df3db6','인연.png'),(2,5,'C:\\eGovFrame-3.6.0\\real-estate\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\real_estate_adm\\resources\\upload\\347654706c6f42b5a2af3c7d19e5ea06.png','인연.png'),(3,6,'C:\\eGovFrame-3.6.0\\real-estate\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\real_estate_adm\\resources\\upload\\0ff779bd4109478db9fa2c09b91fe220.png','인연.png'),(4,6,'C:\\eGovFrame-3.6.0\\real-estate\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\real_estate_adm\\resources\\upload\\ce20bc2bc4c54c6fa68e64223b9094d6.jpg','예비군 교육훈련 소집통지서.jpg');
/*!40000 ALTER TABLE `upload` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-08-30 18:29:56
