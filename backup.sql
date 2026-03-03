-- MySQL dump 10.13  Distrib 8.0.37, for Win64 (x86_64)
--
-- Host: localhost    Database: hoteldb
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.28-MariaDB

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
-- Table structure for table `adicionais`
--

DROP TABLE IF EXISTS `adicionais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adicionais` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adicionais`
--

LOCK TABLES `adicionais` WRITE;
/*!40000 ALTER TABLE `adicionais` DISABLE KEYS */;
INSERT INTO `adicionais` VALUES (1,'Vinho',4000.00),(2,'Cesta chocolate',197.99),(3,'Tadalafila',20.00),(4,'Vodka',3000.00),(5,'Whisky',2000.00),(6,'Tábua de frios',300.00);
/*!40000 ALTER TABLE `adicionais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `cpf` varchar(255) NOT NULL,
  `telefone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `fk_funcoes` int(11) DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cpf` (`cpf`),
  UNIQUE KEY `email` (`email`),
  KEY `fk_funcoes` (`fk_funcoes`),
  CONSTRAINT `clientes_ibfk_1` FOREIGN KEY (`fk_funcoes`) REFERENCES `funcoes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Nome100%atualizado','123.456.789-40','telefone100%atualizado','email100%atualizado','321',1),(3,'Nome100%atualizado5','123.456.789-10','telefone100%atualizado5','Uira@gmail.com','$2y$10$RKJBxqG/cc5k5GxbQTAiTu4WlQc.BsnfwWYPZFyKqB43osCGTGShG',1),(5,'Nome100%atualizado5','123.456.789-12','telefone100%atualizado5','Uira3000@gmail.com','$2y$10$e9S3qiwtiJAZmpgAH.K5Ku5QE59xTntAfG4CPr8X7l2chjZwR5hXq',NULL),(9,'Pamela','123.456.789-30','(30) 98765-4321','Pamela2@gmail.com','$2y$10$yoKbSTHX.xORCWqKxa0DQOJEcb8NL09db1nNKLuSujedN0aogUfTC',1),(11,'Uira','123.456.789-99','(99) 98765-4321','Uira9@gmail.com','$2y$10$gkZu0SYKHGzlgOcJgwmsqe301O02pGIWBVbBh3a.2iyu.sRsBKy5G',NULL),(13,'Uira','123.456.789-98 ','(89) 98765-4321','Uira5@gmail.com','$2y$10$n6GIXYnLyDoPj7el3h9Xy.yVsPEvyioZQfPZlN.7EHHMBkGL4LDcK',1),(14,'Kevin','111.111.111-11','(11) 1111-1111','Kevin@gmail.com','$2y$10$Xcmb7MRyDydWrNDe8/qxde7HIhGGA.0ng4C8Tw4vx6sKt5UJZNW5u',1),(15,'q','q','q','q@h','$2y$10$1z0AZnEufV6oza3baB6qUem8QcyQzWMAGq5c5WlHND6qIKP5nE/9u',NULL),(16,'Bruna','222.222.222-22','(22) 2222-2222','Bruna@gmail.com','$2y$10$C.ySnyXqlc6ZCP7nwx.Y3uJc0PFsAKnWtnPMrcrhuQuAl7OgHDzs2',1),(17,'Vitão','444.444.444-44','(44) 4444-4444','Vitao@gmail.com','$2y$10$xm5VHzmQXmhgm4cMC85CpO0Z0K31mtxWX7P0pTUMFQajbQuENaDWC',1),(19,'Vitão','55','55','Vitao1@gmail.com','$2y$10$CVRum3YW6x70pHQ3JrG/DeZCNWscstAG4Hqwc0ZDXXtmrwtSIYxJO',1),(20,'Vitão','66','66','Vitao3@gmail.com','$2y$10$djYmAAaEQSBYCAUEpaWwqO6Qg/G3MaHfXDqJdloZilEumyObTdQaq',1),(22,'Mateus','5555','14555','Mateus@gmail.com','$2y$10$vs1e5/10EKvX78YZZpDaDe57/E54fBVRSbM0WSdPHQ4n5mIIOI/6C',1),(23,'Jeff','101.101.101.-10','(10) 1010-1010','Jeff@gmail.com','$2y$10$7yLCmgTscXCbXgHXpp/qQOSn5GUoGAloIfnmVfagyGVMdHpUG3J06',1),(26,'Mateus','1','1','Mateus1@gmail.com','$2y$10$k/9xyizYRiaGt8or849aNuVjZeu9Js7QfOgxaYb4m6dky0e5E0S4C',1),(27,'FakeDoUira','0','0','Uira2000@gmail.com','$2y$10$8J9IMmX2ZQzzCAALYYREv.LL9jiBFzP/1zz2ngOGk0wZFIZRzcJFW',1),(28,'','','','','$2y$10$1HVu.ORlWOatr13J9f4Wh.PzIQlC8p7Ae1ZbuqKdHMAibLu1sN3ya',1),(43,'Uira','12345678900','11987654321','Uira2@gmail.com','$2b$10$8rN01hgNuMy4l3A2OEJ.xOVPIa/rnzuaksvIqzCWijOTsJGmmXX66',1),(59,'Uira','CPF','11987654321','EMAIL','$2b$10$vLyiXCKp89AGevCYcj6/r.wCBoTlw6WnIk2BQGutZyLltp0/pg3i6',1),(62,'FelipeVibeCode','222.2222.222.22','(22) 22222-2222','FelipeVibeCode@gmail.com','$2b$10$NaDzNzmjhdCaLJN5QaKI4.Q28wuSNQBsZ7s/NeqHQC/497ZtlRBlG',1),(63,'JeffRayner','333.333.333-33','33 33333-3333','JeffRayner@gmail.com','$2b$10$FAUvgYo./CpWlqn2zH5J5OqDnpyahc8R3qDvn5YzPio.xoz41bZmK',1);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcoes`
--

DROP TABLE IF EXISTS `funcoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcoes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcoes`
--

LOCK TABLES `funcoes` WRITE;
/*!40000 ALTER TABLE `funcoes` DISABLE KEYS */;
INSERT INTO `funcoes` VALUES (1,'cliente'),(2,'user'),(3,'');
/*!40000 ALTER TABLE `funcoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imagens`
--

DROP TABLE IF EXISTS `imagens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `imagens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `caminho` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagens`
--

LOCK TABLES `imagens` WRITE;
/*!40000 ALTER TABLE `imagens` DISABLE KEYS */;
INSERT INTO `imagens` VALUES (1,'Foto 2','C:users/fotos/foto2.jpg'),(2,'faf967a6228014a36559c5c6a62310ef.jpg','//uploads//faf967a6228014a36559c5c6a62310ef.jpg'),(3,'8e91e0d247eaaa4967dfa1047d62f165.jpg','//uploads//8e91e0d247eaaa4967dfa1047d62f165.jpg'),(4,'5288325fd4ffb2d518dc9cd3156fd728.jpg','//uploads//5288325fd4ffb2d518dc9cd3156fd728.jpg'),(5,'041f793a153ba0576e27e35241e8adaa.jpg','//uploads//041f793a153ba0576e27e35241e8adaa.jpg'),(6,'ff9aeb6b3aac1bfa01026a6e4841f2ff.jpg','//uploads//ff9aeb6b3aac1bfa01026a6e4841f2ff.jpg'),(7,'7c5416ff7e8ca77e143fef28b9b9e69c.jpg','//uploads//7c5416ff7e8ca77e143fef28b9b9e69c.jpg'),(8,'c41ec0bddc10d26b9799c72b156245ff.jpg','//uploads//c41ec0bddc10d26b9799c72b156245ff.jpg');
/*!40000 ALTER TABLE `imagens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imagens_quartos`
--

DROP TABLE IF EXISTS `imagens_quartos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `imagens_quartos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_imagens` int(11) NOT NULL,
  `fk_quartos` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `fk_imagens` (`fk_imagens`,`fk_quartos`),
  KEY `fk_quartos` (`fk_quartos`),
  CONSTRAINT `imagens_quartos_ibfk_1` FOREIGN KEY (`fk_imagens`) REFERENCES `imagens` (`id`),
  CONSTRAINT `imagens_quartos_ibfk_2` FOREIGN KEY (`fk_quartos`) REFERENCES `quartos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagens_quartos`
--

LOCK TABLES `imagens_quartos` WRITE;
/*!40000 ALTER TABLE `imagens_quartos` DISABLE KEYS */;
INSERT INTO `imagens_quartos` VALUES (1,1,1),(2,2,26),(3,3,27),(4,4,28),(5,5,37),(6,6,38),(7,7,39),(8,8,39);
/*!40000 ALTER TABLE `imagens_quartos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data` datetime NOT NULL DEFAULT current_timestamp(),
  `pagamento` enum('Débito','Crédito','Dinheiro','Pix') DEFAULT NULL,
  `fk_usuarios` int(11) NOT NULL DEFAULT 3,
  `fk_clientes` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_usuarios` (`fk_usuarios`),
  KEY `fk_clientes` (`fk_clientes`),
  CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`fk_usuarios`) REFERENCES `usuarios` (`id`),
  CONSTRAINT `pedidos_ibfk_2` FOREIGN KEY (`fk_clientes`) REFERENCES `clientes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (5,'2025-09-11 14:17:46','Crédito',3,1),(6,'2025-09-24 14:25:45','Débito',3,3),(7,'2025-09-24 14:26:24','Pix',3,5),(8,'2025-09-24 14:27:51','Dinheiro',3,13),(9,'2025-09-24 14:27:51','Débito',3,11),(10,'2025-09-24 14:28:22','Pix',3,9),(33,'2025-10-15 16:39:20','Pix',3,3),(34,'2025-10-15 16:39:36','Pix',3,3),(35,'2025-10-30 16:47:44','Pix',3,3),(36,'2025-10-30 16:47:52','Pix',3,3),(37,'2025-10-31 14:10:06','Pix',3,3),(57,'2025-10-31 17:16:06','Pix',3,16),(58,'2025-10-31 17:16:57','Pix',3,16),(59,'2025-10-31 17:17:07','Pix',3,16),(60,'2025-10-31 17:18:32','Pix',3,16),(61,'2025-10-31 17:22:23','Pix',3,16),(62,'2025-10-31 17:28:16','Pix',3,16),(63,'2025-11-03 13:45:44','Pix',3,16),(64,'2025-11-03 13:51:44','Pix',3,16),(65,'2025-11-03 13:57:58','Pix',3,16),(66,'2025-11-03 13:59:57','Pix',3,16),(67,'2025-11-03 14:01:45','Pix',3,16),(68,'2025-11-03 14:02:45','Pix',3,16),(69,'2025-11-03 14:04:55','Pix',3,16),(70,'2025-11-03 14:15:34','Pix',3,16),(71,'2025-11-03 14:50:15','Pix',3,16),(72,'2025-11-03 14:53:20','Débito',3,16),(73,'2025-11-03 14:57:51','Débito',3,16),(74,'2025-11-03 14:59:00','Crédito',3,16),(75,'2025-11-03 15:00:22','Crédito',3,16),(76,'2025-11-03 15:00:32','Crédito',3,16),(77,'2025-11-03 15:02:21','Crédito',3,16),(78,'2025-11-03 15:03:05','Débito',3,16),(79,'2025-11-03 15:03:32','Débito',3,16),(80,'2025-11-03 15:05:29','Débito',3,16),(81,'2025-11-03 15:09:17','Débito',3,16),(82,'2026-02-19 16:48:57','Pix',3,3),(83,'2026-02-19 17:07:06','Pix',3,3),(84,'2026-02-19 17:08:05','Pix',3,3),(85,'2026-02-19 17:09:31','Pix',3,3),(86,'2026-02-19 17:21:53','Pix',3,3),(87,'2026-02-19 17:24:10','Pix',3,3),(88,'2026-02-19 17:26:48','Pix',3,3),(89,'2026-02-26 14:04:37','Pix',3,3),(90,'2026-02-26 14:07:36','Pix',3,3),(91,'2026-02-26 14:21:01','Pix',3,3),(92,'2026-02-26 14:23:21','Pix',3,3),(93,'2026-02-26 14:31:47','Pix',3,3),(94,'2026-02-26 14:36:16','Pix',3,3);
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quartos`
--

DROP TABLE IF EXISTS `quartos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quartos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `numero` varchar(255) NOT NULL,
  `qtd_cama_casal` int(11) NOT NULL,
  `qtd_cama_solteiro` int(11) NOT NULL,
  `preco` double(10,2) NOT NULL,
  `disponivel` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quartos`
--

LOCK TABLES `quartos` WRITE;
/*!40000 ALTER TABLE `quartos` DISABLE KEYS */;
INSERT INTO `quartos` VALUES (1,'Suite Basic','10',1,1,1000.00,1),(4,'Suite Basic','20',1,1,1000.00,1),(5,'Suite Master','30',1,2,2500.00,1),(6,'Suite Master','40',1,2,2500.00,1),(7,'Suite Deluxe','50',2,1,5000.00,1),(8,'Suite Deluxe','60',2,1,5000.00,1),(9,'Quarto kids','1',2,0,2500.00,1),(11,'Quarto kids','1',2,0,2500.00,1),(12,'Quarto kids','1',2,0,2500.00,1),(13,'Quarto Postman','1',2,0,2500.00,1),(14,'Quarto Corinthians','21',1,2,20.00,1),(15,'1','1',1,1,1.00,0),(16,'Quarto Pamella','12',1,1,1000.00,0),(17,'Quarto Uira','10',1,1,12.00,0),(18,'2','2',3,4,3.00,0),(19,'Quarto 1','12',1,1,1000.00,0),(20,'2','2',2,2,2.00,0),(21,'1','1',1,1,1.00,1),(22,'trem','55',2,2,100.00,1),(23,'trem','55',2,2,100.00,1),(24,'trem','55',2,2,100.00,1),(25,'trem','55',2,2,100.00,1),(26,'trem','55',2,2,100.00,1),(27,'trem','55',2,2,100.00,1),(28,'trem','55',2,2,100.00,1),(29,'1','1',1,1,1.00,1),(30,'2','2',2,2,2.00,0),(31,'Quarto Jeff ','100',1,2,212.00,1),(32,'Quarto Pablo','1222',1,1,200.00,0),(33,'Quarto Sucesso','12222',1,1,12.00,1),(34,'Quarto sucesso certeza','12',1,1,12.00,1),(35,'Quarto sucesso certeza','1',1,1,1.00,1),(36,'João Victor Souza','12',12,1,1.00,0),(37,'Quarto sucesso certeza','45',12,12,21.00,1),(38,'Quarto Teste 30','1',1,1,1.00,1),(39,'Quarto teste final','1',1,1,1.00,1);
/*!40000 ALTER TABLE `quartos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservas`
--

DROP TABLE IF EXISTS `reservas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fim` datetime DEFAULT NULL,
  `inicio` datetime DEFAULT NULL,
  `fk_pedidos` int(11) NOT NULL,
  `fk_quartos` int(11) NOT NULL,
  `fk_adicionais` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_pedidos` (`fk_pedidos`),
  KEY `fk_quartos` (`fk_quartos`),
  KEY `fk_adicionais` (`fk_adicionais`),
  CONSTRAINT `reservas_ibfk_1` FOREIGN KEY (`fk_pedidos`) REFERENCES `pedidos` (`id`),
  CONSTRAINT `reservas_ibfk_2` FOREIGN KEY (`fk_quartos`) REFERENCES `quartos` (`id`),
  CONSTRAINT `reservas_ibfk_3` FOREIGN KEY (`fk_adicionais`) REFERENCES `adicionais` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservas`
--

LOCK TABLES `reservas` WRITE;
/*!40000 ALTER TABLE `reservas` DISABLE KEYS */;
INSERT INTO `reservas` VALUES (1,'2025-12-13 12:00:00','2025-12-12 14:00:00',5,8,6),(2,'2025-12-14 12:00:00','2025-12-13 14:00:00',6,1,1),(3,'2025-12-15 12:00:00','2025-12-14 14:00:00',7,4,2),(4,'2025-12-16 12:00:00','2025-12-15 14:00:00',8,5,3),(5,'2025-12-17 12:00:00','2025-12-16 14:00:00',9,6,4),(6,'2025-12-18 12:00:00','2025-12-17 14:00:00',10,7,5),(7,'2025-12-19 12:00:00','2025-12-18 14:00:00',5,8,6),(8,'0000-00-00 00:00:00','0000-00-00 00:00:00',33,1,2),(9,'0000-00-00 00:00:00','0000-00-00 00:00:00',33,4,2),(10,'0000-00-00 00:00:00','0000-00-00 00:00:00',33,6,2),(11,'0000-00-00 00:00:00','0000-00-00 00:00:00',34,1,2),(12,'0000-00-00 00:00:00','0000-00-00 00:00:00',34,4,2),(13,'0000-00-00 00:00:00','0000-00-00 00:00:00',34,6,2),(14,'0000-00-00 00:00:00','0000-00-00 00:00:00',35,1,2),(15,'0000-00-00 00:00:00','0000-00-00 00:00:00',35,4,2),(16,'0000-00-00 00:00:00','0000-00-00 00:00:00',35,6,2),(17,'0000-00-00 00:00:00','0000-00-00 00:00:00',36,1,2),(18,'0000-00-00 00:00:00','0000-00-00 00:00:00',36,4,2),(19,'0000-00-00 00:00:00','0000-00-00 00:00:00',36,6,2),(20,'0000-00-00 00:00:00','0000-00-00 00:00:00',37,1,2),(21,'0000-00-00 00:00:00','0000-00-00 00:00:00',37,4,2),(22,'0000-00-00 00:00:00','0000-00-00 00:00:00',37,6,2),(23,'2025-11-20 00:00:00','2025-11-01 00:00:00',57,6,2),(24,'2025-11-20 00:00:00','2025-11-01 00:00:00',58,6,2),(25,'2025-11-20 00:00:00','2025-11-01 00:00:00',59,6,2),(26,'2025-11-20 00:00:00','2025-11-01 00:00:00',60,6,2),(27,'2025-11-20 00:00:00','2025-11-01 00:00:00',61,1,2),(28,'2025-11-20 00:00:00','2025-11-01 00:00:00',61,4,2),(29,'2025-11-21 00:00:00','2025-11-01 00:00:00',62,8,2),(30,'2025-12-02 00:00:00','2025-11-21 00:00:00',63,23,2),(31,'2025-11-21 00:00:00','2025-11-06 00:00:00',63,7,2),(32,'2025-11-21 00:00:00','2025-11-06 00:00:00',63,9,2),(33,'2025-11-20 00:00:00','2025-11-06 00:00:00',64,11,2),(34,'2025-11-20 00:00:00','2025-11-06 00:00:00',64,22,2),(35,'2025-11-20 00:00:00','2025-11-06 00:00:00',64,23,2),(36,'2025-11-22 00:00:00','2025-11-06 00:00:00',65,5,2),(37,'2025-11-22 00:00:00','2025-11-06 00:00:00',65,12,2),(38,'2025-11-07 00:00:00','2025-11-05 00:00:00',66,14,2),(39,'2025-11-07 00:00:00','2025-11-05 00:00:00',66,21,2),(40,'2025-11-14 00:00:00','2025-11-04 00:00:00',67,13,2),(41,'2025-11-22 00:00:00','2025-11-13 00:00:00',68,21,2),(42,'2025-11-20 00:00:00','2025-11-14 00:00:00',69,13,2),(43,'2025-11-05 00:00:00','2025-11-04 00:00:00',70,21,2),(44,'2025-11-05 00:00:00','2025-11-04 00:00:00',70,14,2),(45,'2025-11-07 00:00:00','2025-11-06 00:00:00',71,26,2),(46,'2025-11-07 00:00:00','2025-11-05 00:00:00',72,27,2),(47,'2025-11-07 00:00:00','2025-11-05 00:00:00',72,28,2),(48,'2025-11-20 00:00:00','2025-11-14 00:00:00',73,24,2),(49,'2025-11-20 00:00:00','2025-11-14 00:00:00',73,25,2),(50,'2025-11-22 00:00:00','2025-11-19 00:00:00',74,26,2),(51,'2025-11-22 00:00:00','2025-11-19 00:00:00',74,27,2),(52,'2025-11-14 00:00:00','2025-11-07 00:00:00',75,24,2),(53,'2025-11-14 00:00:00','2025-11-07 00:00:00',76,24,2),(54,'2025-11-14 00:00:00','2025-11-08 00:00:00',77,26,2),(55,'2025-11-14 00:00:00','2025-11-08 00:00:00',78,26,2),(56,'2025-11-06 00:00:00','2025-11-05 00:00:00',79,7,2),(57,'2025-11-06 00:00:00','2025-11-05 00:00:00',80,9,2),(58,'2025-11-06 00:00:00','2025-11-05 00:00:00',80,11,2),(59,'2025-11-05 00:00:00','2025-11-04 00:00:00',81,7,2),(60,'2025-11-05 00:00:00','2025-11-04 00:00:00',81,9,2),(71,'2024-07-10 00:00:00','2024-07-01 00:00:00',5,1,1),(72,'2024-07-01 00:00:00','2024-07-10 00:00:00',88,30,NULL),(73,'2024-07-01 00:00:00','2024-07-10 00:00:00',88,29,NULL),(74,'2024-07-01 00:00:00','2024-07-10 00:00:00',89,30,NULL),(75,'2024-07-01 00:00:00','2024-07-10 00:00:00',89,29,NULL),(76,'2024-07-01 00:00:00','2024-07-10 00:00:00',90,30,NULL),(77,'2024-07-01 00:00:00','2024-07-10 00:00:00',90,29,NULL),(78,NULL,NULL,91,30,NULL),(79,NULL,NULL,91,29,NULL),(80,'2024-07-01 00:00:00','2024-07-10 00:00:00',92,30,NULL),(81,'2024-07-01 00:00:00','2024-07-10 00:00:00',92,29,NULL),(82,'2024-07-01 14:00:00','2024-07-10 12:00:00',93,30,NULL),(83,'2024-07-01 14:00:00','2024-07-10 12:00:00',93,29,NULL),(84,'2024-07-01 14:00:00','2024-07-10 12:00:00',94,30,1),(85,'2024-07-01 14:00:00','2024-07-10 12:00:00',94,29,1);
/*!40000 ALTER TABLE `reservas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `fk_funcoes` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_funcoes` (`fk_funcoes`),
  CONSTRAINT `fk_funcoes` FOREIGN KEY (`fk_funcoes`) REFERENCES `funcoes` (`id`),
  CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`fk_funcoes`) REFERENCES `funcoes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (3,'João','caf1a3dfb505ffed0d024130f58c5cfa','Souza@gmail.com',1),(4,'Sara','$2y$10$CGoMrao4/XG.qtB1EVKeg.ICONEXofr3MN8.rbhf813Npeib9f.Mm','Sara@gmail.com',2),(5,'Pamella Pereto','321','Pamel@gmail.com',1);
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

-- Dump completed on 2026-02-26 16:47:47
