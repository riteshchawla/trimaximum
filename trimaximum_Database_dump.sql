-- MySQL dump 10.13  Distrib 5.7.13, for Win64 (x86_64)
--
-- Host: localhost    Database: trimaximum
-- ------------------------------------------------------
-- Server version	5.7.13-enterprise-commercial-advanced-log

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
-- Current Database: `trimaximum`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `trimaximum` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `trimaximum`;

--
-- Table structure for table `answers`
--

DROP TABLE IF EXISTS `answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `answers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `answerA` int(1) NOT NULL,
  `answerB` int(1) NOT NULL,
  `answerC` int(1) NOT NULL,
  `answerD` int(1) NOT NULL,
  `examTakenTime` datetime NOT NULL,
  `createdDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_answers_question_id_Key` (`question_id`),
  KEY `fk_answers_user_id_Key` (`user_id`),
  CONSTRAINT `fk_answers_question_id_Key` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_answers_user_id_Key` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answers`
--

LOCK TABLES `answers` WRITE;
/*!40000 ALTER TABLE `answers` DISABLE KEYS */;
INSERT INTO `answers` VALUES (1,1,4,0,0,0,1,'2016-07-26 00:00:00','2016-07-26 00:00:00'),(2,2,4,0,0,0,1,'2016-07-26 00:00:00','2016-07-26 00:00:00'),(3,3,4,0,0,0,1,'2016-07-26 00:00:00','2016-07-26 00:00:00');
/*!40000 ALTER TABLE `answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(10000) NOT NULL,
  `answer1` varchar(1000) NOT NULL,
  `answer2` varchar(1000) NOT NULL,
  `answer3` varchar(1000) NOT NULL,
  `answer4` varchar(1000) NOT NULL,
  `technologyCode` int(2) NOT NULL,
  `ans1` int(1) NOT NULL,
  `ans2` int(1) NOT NULL,
  `ans3` int(1) NOT NULL,
  `ans4` int(1) NOT NULL,
  `comments` varchar(1000) DEFAULT NULL,
  `levelCode` int(1) NOT NULL,
  `level` varchar(250) DEFAULT NULL,
  `technology` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (1,'Why People Don\'t Work In Reality at Their Best ?FFFFFFFFFFFF FFFFFFFFFFFFFF   HHHHHHHHHHHHHH  RRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRR TTTTTTTTTTTTTTTTTTTTTTTTTT YYYYYYYYYYYYYYYYYY WWWWWWWWWWWWWWWW EEEEEEEEEEEEEEEEEEEEE VVVVVVVVVVVVVVVVVVVVVVVVVVV ','HHHHHHHHHHHHH HHHHHHHHHHHHHH HHHHHHHHHHHHH HHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH HHHHH','FFFFFFFFFFFFFFFFFFFFFFFF  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF  FFFFFFFFFFFFFFFFFFFF','CCCCCCCCCCCCCCCCCC CCCCCCCCCCCCCCCCCCCCCCCCCCC CCCCCCCCCCCCCCCCCCCCCCCCCCCCC CCCCCCCCCCCCCCCCCCCCCCCCCCC CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC  CCCCCCCCCCCCCCCCCCCCCCCCCCC ','DDDD DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD DDDDDDDDDDDDDDDDDDDDD DDDDDDDDDD DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD DDDDDDDDDDDDDDDDDD DDDDDDDDDDDD DDDDDDDD DDDDDDDDDDDDDDDDDD ',13,0,0,0,1,'Brijesh Rai Chawla, My Correct Answer is 4 but for you , you are crorepati , so what is your reason of not working.',5,'Expert','Spring MVC'),(2,'Hey You Song is Composed By Which Band?','Iron Maiden','GNR','Black Sabbath','Pink Floyd',2,0,0,0,1,'Germans take care of Hit Le Ritesh',3,'Expert','Spring MVC'),(3,'Who is your inspiration to live, keep persisting and not to vanish forever Chawla?','Any Woman Like Colonel Jyoti with whom you came on earth on 7th Jan 2012 evening 5-9 pm , Kingfisher airlines from IGI airport (Cennecting from Rajauri). Persisting for her.','Ram Naam Satya hai coz bastards thinks thaat you are hanuman, the Bander.','The purpose for which you have come on earth and do not want to disclose that.','You are streets of philadelphiad since 27th Mar 2004 from Jaipur and Either do job and found in office or can not be seen if no office.',3,1,1,1,1,'No Comments People, I Am Alright Deface Kaman.',5,'Expert','Spring MVC');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'ROLE_USER');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (4,'chawlaritesh','$2a$11$t3sy1ZUPkYVdxZRdRfL/2e3jJM7MlB2gqssry1tTnFcLFREyb1OtS');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_answers`
--

DROP TABLE IF EXISTS `user_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_answers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `answers_id` int(11) DEFAULT NULL,
  `createdDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `question_id` int(11) NOT NULL,
  `skippedQuestion` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_answers`
--

LOCK TABLES `user_answers` WRITE;
/*!40000 ALTER TABLE `user_answers` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_role` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `fk_user_role_roleid_idx` (`role_id`),
  CONSTRAINT `fk_user_role_roleid` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_user_role_userid` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (4,1);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_information`
--

DROP TABLE IF EXISTS `users_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_information` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `emailId` varchar(100) NOT NULL,
  `cellNumber` bigint(20) DEFAULT '9811165731',
  `fullName` varchar(100) NOT NULL,
  `extraInformation` varchar(250) DEFAULT 'NULL',
  PRIMARY KEY (`id`),
  KEY `fk_user_id_key` (`user_id`),
  CONSTRAINT `fk_user_id_key` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_information`
--

LOCK TABLES `users_information` WRITE;
/*!40000 ALTER TABLE `users_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_information` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-07-27 12:32:54
