-- MySQL dump 10.13  Distrib 9.0.1, for macos14.4 (x86_64)
--
-- Host: localhost    Database: todo
-- ------------------------------------------------------
-- Server version	9.0.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `database`
--

DROP TABLE IF EXISTS `database`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `database` (
  `id` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `database`
--

LOCK TABLES `database` WRITE;
/*!40000 ALTER TABLE `database` DISABLE KEYS */;
/*!40000 ALTER TABLE `database` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `list`
--

DROP TABLE IF EXISTS `list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `list` (
  `idx` int NOT NULL,
  `title` varchar(100) NOT NULL,
  PRIMARY KEY (`idx`),
  KEY `list_idx_IDX` (`idx`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `list`
--

LOCK TABLES `list` WRITE;
/*!40000 ALTER TABLE `list` DISABLE KEYS */;
/*!40000 ALTER TABLE `list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `todolist`
--

DROP TABLE IF EXISTS `todolist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `todolist` (
  `idx` int NOT NULL,
  `listId` int NOT NULL,
  `contents` varchar(100) NOT NULL,
  PRIMARY KEY (`idx`),
  KEY `todolist_idx_IDX` (`idx`) USING BTREE,
  CONSTRAINT `todolist_list_FK` FOREIGN KEY (`idx`) REFERENCES `list` (`idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `todolist`
--

LOCK TABLES `todolist` WRITE;
/*!40000 ALTER TABLE `todolist` DISABLE KEYS */;
/*!40000 ALTER TABLE `todolist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `refresh_token` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'imaneya','$2a$10$eyOJa6T42MOaUzE0rpJxKegKZKM8WY85mQ1CcYD9lEuatQo.gHOwa','eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJpbWFuZXlhIiwiZXhwIjoxNzI5NzM4NTQ4LCJpYXQiOjE3Mjk3Mzg0Njh9.Ha3HjDcAAta2KitAlSC68zKc3pdRAp2T5uGDUng5ksy2ieC2EIfkWIr6gfE7F0cf__f0r9lRVHU6d19qrS7xPA'),(2,'imaneya2','$2a$10$KuxKvcOdb/1QvopWT4tju.6zdsmMhy8IYTXNFTb7AHZAmBJ41T/la','eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJpbWFuZXlhMiIsImV4cCI6MTcyOTcyNDQxOSwiaWF0IjoxNzI5NzI0MzM5fQ.36HCfauL8e49PeLEjDtGUIjZVGf8V9E0j76lrqWbZgoZDiZmSjlAwYtq_9-FW5uwdhRf7HiN7L7jvuJan0mxjg'),(3,'imaneya3','$2a$10$duPzUjDibWHi5dEyYGhEGu7vgneegi5wp73BHytG6H/NX4paZftPm','eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJpbWFuZXlhMyIsImV4cCI6MTcyOTcyNTMwMywiaWF0IjoxNzI5NzI1MjIzfQ.VO6O3ody5oQmGGQHRUZB2JZ-FcT_zRIYpDghicm6RDoIAiHYm3VjN7oxbdsrv11QxJOvrm2GVadoPACvC3iz7A'),(23,'imaneya4','$2a$10$qfzl86Srkw.BA4BSxdBYWeHmHQaZ21QWe43x.SEDonwxxGO/KhOEW','eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJpbWFuZXlhNCIsImV4cCI6MTcyOTcyNjU2OCwiaWF0IjoxNzI5NzI2NDg4fQ.3fcJspa6UIgxAM7oap0nlDjFEJbGusBXUremDU83TdgVD-J2B2T-VC00qSDtD6S0our-UMfz9M0nc3TK5hikMA');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user2`
--

DROP TABLE IF EXISTS `user2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user2` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `id` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `tel` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`idx`),
  KEY `user_idx_IDX` (`idx`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user2`
--

LOCK TABLES `user2` WRITE;
/*!40000 ALTER TABLE `user2` DISABLE KEYS */;
/*!40000 ALTER TABLE `user2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'todo'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-25  9:26:47
