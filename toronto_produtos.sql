CREATE DATABASE  IF NOT EXISTS `toronto` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `toronto`;
-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: 35.168.38.246    Database: toronto
-- ------------------------------------------------------
-- Server version	8.4.13-0ubuntu0.26.04.2

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
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos` (
  `id_produto` int NOT NULL,
  `preco_produto` decimal(10,2) DEFAULT NULL,
  `descricao_produto` text,
  `imagem_produto` varchar(500) DEFAULT NULL,
  `som_produto` varchar(500) DEFAULT NULL,
  `cartegoria_produto` int DEFAULT NULL,
  `cor_produto` varchar(50) DEFAULT NULL,
  `nome_produto` varchar(200) DEFAULT NULL,
  `sku` varchar(500) DEFAULT NULL,
  `estoque_produto` int DEFAULT NULL,
  `altura_produto` decimal(10,2) DEFAULT NULL,
  `largura_produto` decimal(10,2) DEFAULT NULL,
  `profundidade_produto` decimal(10,2) DEFAULT NULL,
  `peso_produto` decimal(10,2) DEFAULT NULL,
  `destque_produto` tinyint(1) DEFAULT NULL,
  `ativo_produto` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `categoria_produto` int DEFAULT NULL,
  PRIMARY KEY (`id_produto`),
  KEY `fk_categoria_produto` (`cartegoria_produto`),
  KEY `fk_categoria_produto_atual` (`categoria_produto`),
  CONSTRAINT `fk_categoria_produto_atual` FOREIGN KEY (`categoria_produto`) REFERENCES `categoria_produto` (`id_categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-11-19 10:35:18
