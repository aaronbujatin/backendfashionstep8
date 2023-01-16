-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: fashionstep3
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `customer_sequence`
--

DROP TABLE IF EXISTS `customer_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_sequence`
--

LOCK TABLES `customer_sequence` WRITE;
/*!40000 ALTER TABLE `customer_sequence` DISABLE KEYS */;
INSERT INTO `customer_sequence` VALUES (2);
/*!40000 ALTER TABLE `customer_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_sequence`
--

DROP TABLE IF EXISTS `order_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_sequence`
--

LOCK TABLES `order_sequence` WRITE;
/*!40000 ALTER TABLE `order_sequence` DISABLE KEYS */;
INSERT INTO `order_sequence` VALUES (2);
/*!40000 ALTER TABLE `order_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_sequence`
--

DROP TABLE IF EXISTS `product_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_sequence`
--

LOCK TABLES `product_sequence` WRITE;
/*!40000 ALTER TABLE `product_sequence` DISABLE KEYS */;
INSERT INTO `product_sequence` VALUES (23);
/*!40000 ALTER TABLE `product_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_customer`
--

DROP TABLE IF EXISTS `tbl_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_customer` (
  `customer_id` bigint NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `card_details` varchar(255) DEFAULT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_customer`
--

LOCK TABLES `tbl_customer` WRITE;
/*!40000 ALTER TABLE `tbl_customer` DISABLE KEYS */;
INSERT INTO `tbl_customer` VALUES (1,'Rizal','3231312312','Lebron James','lebron@gmail.com','111222333');
/*!40000 ALTER TABLE `tbl_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_order`
--

DROP TABLE IF EXISTS `tbl_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_order` (
  `order_id` bigint NOT NULL,
  `order_qty` int NOT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_price` double NOT NULL,
  `total_purchase` double NOT NULL,
  `customer_id` bigint DEFAULT NULL,
  `id` bigint DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `FKiyncvcnqydtjsl8aqpc47nuv8` (`customer_id`),
  KEY `FK63jpg1p31x7cwsv02dhw2qmis` (`id`),
  CONSTRAINT `FK63jpg1p31x7cwsv02dhw2qmis` FOREIGN KEY (`id`) REFERENCES `tbl_product` (`id`),
  CONSTRAINT `FKiyncvcnqydtjsl8aqpc47nuv8` FOREIGN KEY (`customer_id`) REFERENCES `tbl_customer` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_order`
--

LOCK TABLES `tbl_order` WRITE;
/*!40000 ALTER TABLE `tbl_order` DISABLE KEYS */;
INSERT INTO `tbl_order` VALUES (1,4,'Nike Air Max 90',15000,60000,1,7);
/*!40000 ALTER TABLE `tbl_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_product`
--

DROP TABLE IF EXISTS `tbl_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_product` (
  `id` bigint NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `product_desc` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_price` double NOT NULL,
  `product_stock` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_product`
--

LOCK TABLES `tbl_product` WRITE;
/*!40000 ALTER TABLE `tbl_product` DISABLE KEYS */;
INSERT INTO `tbl_product` VALUES (1,'kids','https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/4a4d90ae-1a11-4fb3-ad29-587d41cdeb89/dynamo-go-younger-easy-on-off-shoes-dCf2Zv.png','All kids are different. That’s why Shoe customizes the fit so that every kid can run, jump and play freely.','Nike Dynamo go',8000,'20'),(2,'kids','https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/ede8b66e-4c60-4cdb-948a-62144e593f42/air-jordan-1-low-se-older-shoes-fK3XTW.png','This mid-heeled lace-up sandal is made from blue straw.  It has a frilly appearance.','Nike Air Low SE',9000,'20'),(3,'kids','https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/7061b7c5-3d61-4966-b53e-057f8ef97219/dynamo-go-se-easy-on-off-shoes-HM4Sl8.png','This low-heeled lace-up sandal is made from dinosaur print fabric designed in red, brown, vivid blue, and white.  It has a sporty appearance.','Air Jordan Flex SE',1000,'20'),(4,'kids','https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/8eff937a-9504-4bb9-ae8f-0902b8eb2d5c/revolution-6-shoes-517kFQ.png','This low-heeled buckled sandal is made from vivid turquoise satin.  It has a sporty appearance..','Nike Air Revolution 6',11000,'20'),(5,'women','https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/90b11864-9cc4-4ede-a787-f50eadb7b1cb/air-force-1-low-undefeated-shoes-TsqZFv.png','This high-heeled hook-and-eye sandal is made from dark turquoise silk.  It has a sleek appearance.  It is accented with a fabric flower.','Nike Air Low Undefeated',16000,'20'),(6,'men','https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/90b11864-9cc4-4ede-a787-f50eadb7b1cb/air-force-1-low-undefeated-shoes-TsqZFv.png','This high-heeled hook-and-eye sandal is made from dark turquoise silk.  It has a sleek appearance.  It is accented with a fabric flower.','Nike Air Force Lvl8',16000,'20'),(7,'men','https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/bf923df4-2992-41c4-92b3-6e033beb4c2e/air-max-90-shoes-K0Hf12.png','This high-heeled buckled shoe is made from light brown and dark gray zebra-stripe print fabric.  It has a streamlined appearance.  It is accented with sequins.','Nike Air Max 90',15000,'16'),(8,'men','https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/b0dcd29c-9fe8-44fd-9b4d-a821cea0cacb/air-jordan-1-mid-shoes-SQf7DM.png','This high-heeled buckled shoe is made from light purple velvet.  It has a sporty appearance.  It is accented with gold chains and a large bow.','Air Jordam 1 Mid',15000,'20'),(9,'men','https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/8733687c-f56b-482f-96e0-832830a8bd9c/infinity-react-3-road-running-shoes-mMGgGZ.png','This low-heeled buckled sandal is made from gray canvas.  It has a streamlined appearance.','Nike Air Infinity 3',8000,'20'),(10,'men','https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/e0244d8e-e42e-43d8-9326-7227720680d6/air-max-90-gtx-shoes-h08kfP.png','This mid-heeled hook-and-eye ankle-length boot is made from white straw.  It has a rounded appearance..','Nike Air Max Gtx 90',8500,'20'),(11,'men','https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/7f8ee038-906a-47a9-8296-be17b4bdda94/air-jordan-1-retro-high-og-shoes-G8hcQx.png','This low-heeled hook-and-eye sandal is made from pink and vivid aqua cheetah-spot print fabric.  It has a frilly appearance.','Nike Air Jordan 1',9550,'20'),(12,'women','https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/de3253e0-57ef-42ac-a56e-3fb72d046868/pegasus-39-road-running-shoes-0ksHjP.png','This mid-heeled lace-up shoe is made from dark turquoise denim.  It has a sporty appearance.','Nike Pegasus 39',10550,'20'),(13,'women','https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/e84d7e3d-2b5e-460e-bda3-cb8a1ac2a6e9/infinity-react-3-road-running-shoes-3Vn30D.png','This low-heeled hook-and-eye sandal is made from pink and light purple zebra-stripe print fabric.  It has a frilly appearance.  It is accented with copper chains and gold studs.','Nike Infinity 3',12550,'20'),(14,'women','https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/30b7b666-f83a-4cf6-8e21-a453e96d38e5/air-max-sc-shoes-FVn5sK.png','This low-heeled hook-and-eye sandal is made from pink and light purple zebra-stripe print fabric.  It has a frilly appearance.  It is accented with copper chains and gold studs.','Nike Air SXC',14550,'20'),(15,'women','https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/92e1c971-8212-4458-9840-4d54f3c020b2/revolution-6-next-nature-road-running-shoes-vjrrwc.png','This low-heeled hook-and-eye sandal is made from pink and light purple zebra-stripe print fabric.  It has a frilly appearance.  It is accented with copper chains and gold studs.','Nike Revolution 6',13350,'20'),(16,'women','https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/9bba439b-411e-4e1a-9a1d-b00776aa7fe4/air-force-1-07-lx-shoes-9ngpX4.png','This low-heeled hook-and-eye sandal is made from pink and light purple zebra-stripe print fabric.  It has a frilly appearance.  It is accented with copper chains and gold studs.','Nike Air Force 7',14350,'20'),(17,'women','https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/602c0596-f58a-4435-9b82-ff00a99542f6/metcon-8-training-shoes-vkQ0TS.png','This low-heeled hook-and-eye sandal is made from pink and light purple zebra-stripe print fabric.  It has a frilly appearance.  It is accented with copper chains and gold studs.','Nike Metcoin 7',14000,'20'),(18,'women','https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/4d5c2c32-19ea-4f4a-9888-b6ecf491df19/waffle-debut-shoes-JG8KbZ.png','This low-heeled hook-and-eye sandal is made from pink and light purple zebra-stripe print fabric.  It has a frilly appearance.  It is accented with copper chains and gold studs.','Nike Waffle Debut',14000,'20'),(19,'women','https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/b741d768-6471-4817-be25-998b356d5b0d/dunk-low-ll-shoes-D67kNC.png','This high-heeled hook-and-eye sandal is made from dark turquoise silk.  It has a sleek appearance.  It is accented with a fabric flower.','Nike Dunk Low 2',14000,'20'),(20,'women','https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/574e1115-d8ff-4f73-bcbd-caa9c684e6ae/air-force-1-pltaform-lv8-shoes-nghH66.png','This high-heeled hook-and-eye sandal is made from dark turquoise silk.  It has a sleek appearance.  It is accented with a fabric flower.','Nike Air Force Lvl2',14000,'20'),(21,'women','https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/2f73d3f2-c659-43a1-811a-ff5b218aa992/air-huarache-se-shoes-1JLhLB.png','This high-heeled hook-and-eye sandal is made from dark turquoise silk.  It has a sleek appearance.  It is accented with a fabric flower.','Nike Air Huarache',15000,'20'),(22,'women','https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/b49e0a0b-3a9a-4dc7-ba7c-33fc24147dfb/air-max-90-futura-se-shoes-gnGWKH.png','This high-heeled hook-and-eye sandal is made from dark turquoise silk.  It has a sleek appearance.  It is accented with a fabric flower.','Nike Air Max 90 Funtura',16000,'20');
/*!40000 ALTER TABLE `tbl_product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-16 16:02:52
