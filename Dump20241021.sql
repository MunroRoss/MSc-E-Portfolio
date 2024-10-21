-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: studentcourses
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `courseteacher`
--

DROP TABLE IF EXISTS `courseteacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courseteacher` (
  `Course_Name` varchar(50) NOT NULL,
  `Teacher_Name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Course_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courseteacher`
--

LOCK TABLES `courseteacher` WRITE;
/*!40000 ALTER TABLE `courseteacher` DISABLE KEYS */;
INSERT INTO `courseteacher` VALUES ('Biology','Mrs Patel'),('Computer Science','Mr Jones'),('Maths','Ms Parker'),('Music','Ms Daniels'),('Physics','Mr Peters');
/*!40000 ALTER TABLE `courseteacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studentcourse`
--

DROP TABLE IF EXISTS `studentcourse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studentcourse` (
  `Student_No` int NOT NULL,
  `Course_Name` varchar(50) NOT NULL,
  `Exam_Board` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Student_No`,`Course_Name`),
  KEY `Course_Name` (`Course_Name`),
  CONSTRAINT `studentcourse_ibfk_1` FOREIGN KEY (`Student_No`) REFERENCES `students` (`Student_No`),
  CONSTRAINT `studentcourse_ibfk_2` FOREIGN KEY (`Course_Name`) REFERENCES `courseteacher` (`Course_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studentcourse`
--

LOCK TABLES `studentcourse` WRITE;
/*!40000 ALTER TABLE `studentcourse` DISABLE KEYS */;
INSERT INTO `studentcourse` VALUES (1001,'Computer Science','BCS'),(1001,'Maths','EdExcel'),(1001,'Physics','OCR'),(1002,'Biology','WJEC'),(1002,'Maths','AQA'),(1002,'Music','AQA'),(1003,'Computer Science','BCS'),(1003,'Maths','EdExcel'),(1003,'Physics','OCR'),(1004,'Biology','WJEC'),(1004,'Maths','AQA'),(1004,'Physics','OCR'),(1005,'Computer Science','BCS'),(1005,'Maths','EdExcel'),(1005,'Music','AQA');
/*!40000 ALTER TABLE `studentcourse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `Student_No` int NOT NULL,
  `Student_Name` varchar(50) DEFAULT NULL,
  `Exam_Score` int DEFAULT NULL,
  `Support` tinyint(1) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  PRIMARY KEY (`Student_No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1001,'Bob Baker',78,0,'2001-08-25'),(1002,'Sally Davies',55,1,'1999-10-02'),(1003,'Mark Hanmill',90,0,'1995-06-05'),(1004,'Anas Ali',70,0,'1980-08-03'),(1005,'Cheuk Yin',45,1,'2002-05-01');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-21 10:39:46
