CREATE DATABASE  IF NOT EXISTS `vestibulare` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `vestibulare`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: vestibulare
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Miguel'),(2,'Arthur'),(3,'Heitor'),(4,'Théo'),(5,'Davi'),(6,'Bernardo'),(7,'Gael'),(8,'Gabriel'),(9,'Pedro'),(10,'Samuel'),(11,'Benício'),(12,'Lucas'),(13,'Benjamin'),(14,'Matheus'),(15,'Joaquim'),(16,'Lorenzo'),(17,'Ravi'),(18,'Rafael'),(19,'Isaac'),(20,'Nicolas'),(21,'Anthony'),(22,'Noah'),(23,'Henrique'),(24,'Murilo'),(25,'Lucca'),(26,'Guilherme'),(27,'Gustavo'),(28,'João Miguel'),(29,'Felipe'),(30,'Daniel'),(31,'João Pedro'),(32,'Leonardo'),(33,'Pietro'),(34,'Vicente'),(35,'Bryan'),(36,'Pedro Henrique'),(37,'Bento'),(38,'João'),(39,'Levi'),(40,'Antônio'),(41,'Eduardo'),(42,'Emanuel'),(43,'Enzo'),(44,'Caleb'),(45,'Davi Lucca'),(46,'Caio'),(47,'Enzo Gabriel'),(48,'João Lucas'),(49,'Augusto'),(50,'Vitor'),(51,'Valentim'),(52,'Henry'),(53,'Enrico'),(54,'Francisco'),(55,'Theodoro'),(56,'Vinícius'),(57,'Cauã'),(58,'Otávio'),(59,'Matteo'),(60,'João Gabriel'),(61,'João Guilherme'),(62,'Davi Lucas'),(63,'Thomas'),(64,'Yan'),(65,'Luiz Miguel'),(66,'João Vitor'),(67,'Nathan'),(68,'José'),(69,'Oliver'),(70,'Yuri'),(71,'Rael'),(72,'Erick'),(73,'Thiago'),(74,'Ryan'),(75,'Luan'),(76,'Anthony Gabriel'),(77,'Breno'),(78,'Mathias'),(79,'Arthur Miguel'),(80,'Tomás'),(81,'Raul'),(82,'Derick'),(83,'Martin'),(84,'Ícaro'),(85,'Arthur Gabriel'),(86,'Otto'),(87,'Luiz Felipe'),(88,'Pedro Lucas'),(89,'Kauê'),(90,'Davi Miguel'),(91,'Luiz Henrique'),(92,'Josué'),(93,'Arthur Henrique'),(94,'Dante'),(95,'Thales'),(96,'Yago'),(97,'José Miguel'),(98,'Estevão'),(99,'Ruan'),(100,'Rodrigo'),(101,'Nome de meninas'),(102,'Helena'),(103,'Alice'),(104,'Laura'),(105,'Manuela'),(106,'Isabella'),(107,'Sophia'),(108,'Luísa'),(109,'Heloísa'),(110,'Liz'),(111,'Cecília'),(112,'Eloá'),(113,'Júlia'),(114,'Valentina'),(115,'Lívia'),(116,'Maitê'),(117,'Maria Luísa'),(118,'Antonella'),(119,'Lorena'),(120,'Giovanna'),(121,'Elisa'),(122,'Maria Júlia'),(123,'Lara'),(124,'Maria Clara'),(125,'Mariana'),(126,'Beatriz'),(127,'Ísis'),(128,'Ayla'),(129,'Sarah'),(130,'Maria Eduarda'),(131,'Aurora'),(132,'Esther'),(133,'Isadora'),(134,'Catarina'),(135,'Emanuelly'),(136,'Melissa'),(137,'Alícia'),(138,'Maria Cecília'),(139,'Lavínia'),(140,'Maria Alice'),(141,'Marina'),(142,'Maria'),(143,'Luna'),(144,'Ana Clara'),(145,'Rebeca'),(146,'Yasmin'),(147,'Agatha'),(148,'Clara'),(149,'Ana Luísa'),(150,'Maria Helena'),(151,'Rafaela'),(152,'Ana Júlia'),(153,'Olívia'),(154,'Ana Laura'),(155,'Gabriela'),(156,'Maya'),(157,'Isabelly'),(158,'Ana Liz'),(159,'Stella'),(160,'Alana'),(161,'Letícia'),(162,'Vitória'),(163,'Bella'),(164,'Mirella'),(165,'Milena'),(166,'Nicole'),(167,'Clarice'),(168,'Emilly'),(169,'Ana'),(170,'Mariah'),(171,'Maria Fernanda'),(172,'Melina'),(173,'Bianca'),(174,'Laís'),(175,'Maria Liz'),(176,'Ana Beatriz'),(177,'Maria Vitória'),(178,'Maria Laura'),(179,'Malu'),(180,'Maria Valentina'),(181,'Betina'),(182,'Maria Flor'),(183,'Pietra'),(184,'Larissa'),(185,'Maria Heloísa'),(186,'Carolina'),(187,'Eduarda'),(188,'Louise'),(189,'Elis'),(190,'Joana'),(191,'Ana Lívia'),(192,'Ana Vitória'),(193,'Ana Cecília'),(194,'Pérola'),(195,'Melinda'),(196,'Heloise'),(197,'Hadassa'),(198,'Analu'),(199,'Jade'),(200,'Gabrielly'),(201,'Fernanda');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-01  9:22:04
