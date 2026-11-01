-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: marketplace
-- ------------------------------------------------------
-- Server version	8.0.46

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
-- Table structure for table `user_parent`
--

DROP TABLE IF EXISTS `user_parent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_parent` (
  `id` int NOT NULL AUTO_INCREMENT,
  `student_id` bigint NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `email` varchar(255) NOT NULL,
  `faculty` varchar(100) NOT NULL,
  `campus` enum('Rangsit Center','SIIT Bangkradi Campus','Tha Prachan Campu','Lampang Center','Pattaya Center') NOT NULL,
  `eKYC_status` enum('Pending','Verified','Rejected') NOT NULL,
  `avg_rating` decimal(2,1) NOT NULL DEFAULT '0.0',
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_user_student_id` (`student_id`),
  UNIQUE KEY `uq_user_username` (`username`),
  UNIQUE KEY `uq_user_phone_number` (`phone_number`),
  UNIQUE KEY `uq_user_email` (`email`),
  CONSTRAINT `chk_avg_rating` CHECK ((`avg_rating` between 0.0 and 5.0))
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_parent`
--

LOCK TABLES `user_parent` WRITE;
/*!40000 ALTER TABLE `user_parent` DISABLE KEYS */;
INSERT INTO `user_parent` VALUES (6,6700000000,'admin01','$2b$10$VSEXgWK7QMDseWty7RZHIOdqV40lEDBttm/NUnO9eO6vAn48k1M7y','admin01','0123456789','admin01@dome.tu.ac.th','CPE','Rangsit Center','Pending',0.0,'2026-10-26 04:43:55'),(8,6700000001,'admin02','$2b$10$FwE5TEP57qDT1qOBvIAu3.GoIjDgmWV2YRv9OkHjYHBNNDuTXq6HC','admin02','0811111111','admin02@dome.tu.ac.th','CPE','Rangsit Center','Pending',0.0,'2026-10-26 04:48:30'),(9,6711111111,'user01','$2b$10$19j8m1Z2FfD6mEXlE2uqbOuNFtTwTIh0KgeqrTbbw87ZYoQbW..qC','user01','0822222222','user01@dome.tu.ac.th','DE','Rangsit Center','Verified',0.0,'2026-10-26 04:52:31'),(10,6722222222,'user02','$2b$10$3naWeS.83v8a5RR1n58rE.echzu30YM/BZt0UslexuFeoCoefIc0.','user02','0833333333','user02@dome.tu.ac.th','DE','Rangsit Center','Rejected',0.0,'2026-10-26 04:56:26'),(11,6733333333,'user03','$2b$10$1gF.XGWGxZGTZv58fAke1eKV9VqY7t8kPEOZV49X2CJJhOH/GKq3W','user03','0844444444','user03@dome.tu.ac.th','BA','SIIT Bangkradi Campus','Verified',0.0,'2026-10-26 14:07:09'),(12,6712345678,'user04','$2b$10$1MZCruM/evH8S76nMTQ9luM7DtCtITuBWuRXY9jdeCDdIjNxB1Gp.','user04','0855555555','user04@dome.tu.ac.th','SIIT','SIIT Bangkradi Campus','Pending',0.0,'2026-10-27 15:38:00'),(15,1111111111,'user05','$2b$10$CEI3bbKmypgMp0YY9X8k3e0aWfju9fv5fDIN2aclfb1leZ1Zq3QjS','user05','1111111111','user05@dome.tu.ac.th','SIIT','Rangsit Center','Pending',0.0,'2026-10-27 16:07:39'),(17,1234567890,'aa','$2b$10$xf0ZAS2MKJ3sbUtnASl53u2KfDREaHvZ/Jg5SmW/6DDR7E/ltFijO','aa','1234567777','aa@dome.tu.ac.th','SIIT','Rangsit Center','Pending',0.0,'2026-10-27 16:10:35');
/*!40000 ALTER TABLE `user_parent` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-10-27 18:11:29
