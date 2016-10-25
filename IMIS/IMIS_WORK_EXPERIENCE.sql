-- MySQL dump 10.13  Distrib 5.7.9, for osx10.9 (x86_64)
--
-- Host: 127.0.0.1    Database: IMIS
-- ------------------------------------------------------
-- Server version	5.7.11

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
-- Table structure for table `WORK_EXPERIENCE`
--

DROP TABLE IF EXISTS `WORK_EXPERIENCE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WORK_EXPERIENCE` (
  `EXPERIENCE_NUM` int(11) NOT NULL,
  `COMPANY` varchar(45) DEFAULT NULL,
  `LOCATION(COUNTRY)` varchar(45) DEFAULT NULL,
  `BEGINDATE` date DEFAULT NULL,
  `ENDDATE` date DEFAULT NULL,
  `POSITION` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`EXPERIENCE_NUM`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WORK_EXPERIENCE`
--

LOCK TABLES `WORK_EXPERIENCE` WRITE;
/*!40000 ALTER TABLE `WORK_EXPERIENCE` DISABLE KEYS */;
INSERT INTO `WORK_EXPERIENCE` VALUES (1,'FACKBOOK','AMERICA','2013-07-01','2014-06-30','WEB DEVELOPER'),(2,'APPLE','AMERICA','2013-07-01','2014-06-30','SOFTWARE ENGINEER'),(3,'LINKIN','AMERICA','2012-01-01','2014-05-30','TEST ENGINEER'),(4,'BAIDU','CHINA','2014-01-01','2015-01-01','IOS ENGINEER'),(5,'GOOGLE','INDIA','2013-08-01','2015-08-01','WEB DEVELOPER'),(6,'GOOGLE','INDIA','2011-03-01','2013-05-30','ANDROID DEVELOPER');
/*!40000 ALTER TABLE `WORK_EXPERIENCE` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-03-31 14:17:07