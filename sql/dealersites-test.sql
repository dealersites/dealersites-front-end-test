-- MySQL dump 10.13  Distrib 5.7.30, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: laravel
-- ------------------------------------------------------
-- Server version	5.7.29

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
-- Table structure for table `loja_enderecos`
--

DROP TABLE IF EXISTS `loja_enderecos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loja_enderecos` (
  `id` bigint(20) unsigned NOT NULL,
  `loja_id` bigint(20) unsigned DEFAULT NULL,
  `street` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `door_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `complement` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `neighborhood` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_map_embed` text COLLATE utf8mb4_unicode_ci,
  `google_link_share` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loja_enderecos`
--

LOCK TABLES `loja_enderecos` WRITE;
/*!40000 ALTER TABLE `loja_enderecos` DISABLE KEYS */;
INSERT INTO `loja_enderecos` VALUES (1,1,'Setor Leste Industrial, Quadra 1','72120-010','Lote 320, SIND QI 1',NULL,'Taguatinga Norte (Taguatinga)','Curitiba','PR','<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3835.009982667737!2d-48.06192498512528!3d-16.01299583263559!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x93598074c7d19567%3A0x55b676e7db8d4504!2sSaga+Volkswagen+-+Gama!5e0!3m2!1spt-BR!2sbr!4v1562595573531!5m2!1spt-BR!2sbr\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>','https://goo.gl/maps/hUmZYNqL3cNUuWZHA'),(2,5,'Rua Barão de Antonina','8053-050','456',NULL,'São Francisco','Curitiba','PR','<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3510.126806931894!2d-81.56606804897726!3d28.38523770189434!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x88dd7ee634caa5f7%3A0xa71e391fd01cf1a0!2sWalt%20Disney%20World%20Resort!5e0!3m2!1spt-BR!2sbr!4v1588808307913!5m2!1spt-BR!2sbr\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>','https://goo.gl/maps/R3BSKUitFKMAZJbd8');
/*!40000 ALTER TABLE `loja_enderecos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loja_telefones`
--

DROP TABLE IF EXISTS `loja_telefones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loja_telefones` (
  `id` bigint(20) unsigned NOT NULL,
  `loja_id` bigint(20) unsigned DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_whatsapp` tinyint(4) NOT NULL DEFAULT '0',
  `is_telegram` tinyint(4) NOT NULL DEFAULT '0',
  `is_skype` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loja_telefones`
--

LOCK TABLES `loja_telefones` WRITE;
/*!40000 ALTER TABLE `loja_telefones` DISABLE KEYS */;
INSERT INTO `loja_telefones` VALUES (1,1,'(99) 99999-9999','Telefone geral',NULL,0,0,0),(2,1,'(88) 88888-8888','Whatsapp geral',NULL,1,0,0),(3,5,'479797744984654','Loja',NULL,0,0,0);
/*!40000 ALTER TABLE `loja_telefones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lojas`
--

DROP TABLE IF EXISTS `lojas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lojas` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cnpj` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `lojas_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lojas`
--

LOCK TABLES `lojas` WRITE;
/*!40000 ALTER TABLE `lojas` DISABLE KEYS */;
INSERT INTO `lojas` VALUES (1,'Loja Demo 1','loja-demo-1','01.104.751/0014-35'),(5,'Loja Demo 2','loja-demo-2','32.735.558/0001-01');
/*!40000 ALTER TABLE `lojas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `external` tinyint(4) NOT NULL DEFAULT '0',
  `parent_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Home','/',0,NULL),(2,'Novos','/novos',0,NULL),(3,'Ofertas','/ofertas',0,NULL),(4,'Vendas Diretas','/vendas-diretas',0,NULL),(5,'Frotistas','/vendas-frotistas',0,4),(6,'Estoque','/estoque',0,NULL),(7,'0Km','/novos',0,6),(8,'Seminovos','/seminovos',0,6),(9,'Teste','/teste',0,NULL),(10,'Detalhes','/detalhes',0,3),(11,'Home','/',0,NULL),(12,'Novos','/novos',0,NULL),(13,'Ofertas','/ofertas',0,NULL),(14,'Detalhes','/detalhes',0,13),(15,'Vendas especiais','/vendas-especiais',0,NULL),(16,'Frotistas','/frotistas',0,15),(17,'Estoque','/estoque',0,NULL),(18,'0Km','/novos',0,17),(19,'Seminovos','/seminovos',0,17),(20,'Home','/',0,NULL),(21,'Novos','/novos',0,NULL),(22,'Ofertas','/ofertas',0,NULL),(23,'Detalhes','/detalhes',0,22),(24,'Vendas especiais','/vendas-especiais',0,NULL),(25,'Frotistas','/frotistas',0,24),(26,'Estoque','/estoque',0,NULL),(27,'0Km','/novos',0,26),(28,'Seminovos','/seminovos',0,26),(29,'Fale Conosco','/contato',0,NULL),(30,'Home','/',0,NULL),(31,'Novos','/novos',0,NULL),(32,'Ofertas','/ofertas',0,NULL),(33,'Detalhes','/detalhes',0,32),(34,'Vendas especiais','/vendas-especiais',0,NULL),(35,'Frotistas','/frotistas',0,34),(36,'Estoque','/estoque',0,NULL),(37,'0Km','/novos',0,36),(38,'Seminovos','/seminovos',0,36),(39,'Contato','/contato',0,NULL),(40,'Produtor Rural','/vendas-produtor-rural',0,4),(41,'PCD','/vendas-pcd',0,4),(42,'Taxistas','/vendas-taxistas',0,4),(43,'Microempresas','/vendas-microempresas',0,4),(44,'Locadoras','/vendas-locadoras',0,4),(45,'Autoescolas','/vendas-auto-escolas',0,4),(46,'Governo','/vendas-governo',0,4),(47,'Serviços','/servicos',0,NULL),(48,'Assistência Técnica','/assistencia-tecnica',0,47),(49,'Peças','/pecas',0,47),(50,'Funilaria e pintura','/funilaria-e-pintura',0,47),(51,'Consórcio','/consorcio',0,47),(52,'Seguros','/seguros',0,47),(53,'Seminovos','/seminovos',0,NULL);
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-20 21:57:34
