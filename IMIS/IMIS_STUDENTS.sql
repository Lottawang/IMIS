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
-- Table structure for table `STUDENTS`
--

DROP TABLE IF EXISTS `STUDENTS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `STUDENTS` (
  `STU_ID` int(9) NOT NULL,
  `STU_FNAME` varchar(45) NOT NULL,
  `STU_MNAME` varchar(45) DEFAULT NULL,
  `STU_LNAME` varchar(45) NOT NULL,
  `GENDER` varchar(45) NOT NULL DEFAULT 'MALE',
  `EMALL` varchar(45) NOT NULL,
  `TELEPHONE` varchar(45) DEFAULT NULL,
  `STU_STA_NUM` int(11) NOT NULL,
  `SEM_REGISTER_NUM` int(11) NOT NULL,
  `STATUS_NUM` int(11) NOT NULL,
  `COUNTRY` varchar(45) NOT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`STU_ID`),
  KEY `STU_STA_NUM_idx` (`STU_STA_NUM`),
  KEY `SEM_REGISTER_NUM_idx` (`SEM_REGISTER_NUM`),
  KEY `STATUS_NUM_idx` (`STATUS_NUM`),
  KEY `USER_ID_idx` (`USER_ID`),
  CONSTRAINT `SEM_REGISTER_NUM` FOREIGN KEY (`SEM_REGISTER_NUM`) REFERENCES `SEMESTER_REGISTERED` (`SEM_REGISTER_NUM`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `STATUS_NUM` FOREIGN KEY (`STATUS_NUM`) REFERENCES `INTERN_STATUS` (`STATUS_NUM`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `STU_STA_NUM` FOREIGN KEY (`STU_STA_NUM`) REFERENCES `STU_STATUS` (`STU_STATUS-NUM`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `students_ibfk_1` FOREIGN KEY (`USER_ID`) REFERENCES `USERS` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STUDENTS`
--

LOCK TABLES `STUDENTS` WRITE;
/*!40000 ALTER TABLE `STUDENTS` DISABLE KEYS */;
INSERT INTO `STUDENTS` VALUES (104487172,'CHENHAI',NULL,'HU','MALE','CHENHAIHU@GMAIL.COM','1234567',1,2,2,'CHINA',NULL),(104489085,'ZHOUWU',NULL,'ZIHUANG','MALE','ZHOUWU@GMAIL.COM','1234589',2,2,2,'INDIA',NULL);
/*!40000 ALTER TABLE `STUDENTS` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-03-31 14:17:06
