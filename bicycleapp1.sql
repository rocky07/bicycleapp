-- MySQL dump 10.13  Distrib 5.5.49, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: bicycleapp
-- ------------------------------------------------------
-- Server version	5.5.49-0ubuntu0.14.04.1

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
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderedby` int(11) DEFAULT NULL,
  `productid` int(11) DEFAULT NULL,
  `batchid` int(11) DEFAULT NULL,
  `purchasedate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `price` int(11) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `ordernotes` text,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,1,1,'2017-03-10 10:53:53',1,'Delivered',NULL,1),(2,2,1,1,'2017-03-10 10:12:23',1,'Delivered',NULL,1);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `description` text,
  `reviews` text,
  `information` text,
  `category` int(11) DEFAULT NULL,
  `tags` varchar(100) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `brand` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_brand_id` (`brand`),
  KEY `fk_size_id` (`size`),
  KEY `category` (`category`),
  CONSTRAINT `fk_brand_id` FOREIGN KEY (`brand`) REFERENCES `product_brand` (`id`),
  CONSTRAINT `fk_size_id` FOREIGN KEY (`size`) REFERENCES `product_size` (`id`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category`) REFERENCES `product_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,111,5,0,'red','descritption','reviews','information',1,'tags',1,1,'title 1'),(2,111,5,0,'red','descritption','reviews','information',1,'tags',1,1,'title 1'),(3,111,5,0,'red','descritption','reviews','information',1,'tags',1,1,'title 1'),(4,111,5,0,'red','descritption','reviews','information',1,'tags',1,1,'title 1'),(5,111,5,0,'red','descritption','reviews','information',1,'tags',1,1,'title 1'),(6,111,5,0,'red','descritption','reviews','information',1,'tags',1,1,'title 1'),(7,111,5,0,'red','descritption','reviews','information',2,'tags',1,1,'title 1'),(8,111,5,0,'red','descritption','reviews','information',2,'tags',1,1,'title 1'),(9,111,5,0,'red','descritption','reviews','information',2,'tags',1,1,'title 1'),(10,111,5,0,'red','descritption','reviews','information',2,'tags',1,1,'title 1'),(11,111,5,0,'red','descritption','reviews','information',2,'tags',1,1,'title 1'),(12,111,5,0,'red','descritption','reviews','information',2,'tags',1,1,'title 1');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_brand`
--

DROP TABLE IF EXISTS `product_brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brand` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_brand`
--

LOCK TABLES `product_brand` WRITE;
/*!40000 ALTER TABLE `product_brand` DISABLE KEYS */;
INSERT INTO `product_brand` VALUES (1,'bsa'),(2,'bikea');
/*!40000 ALTER TABLE `product_brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_category`
--

DROP TABLE IF EXISTS `product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent` int(11) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_category`
--

LOCK TABLES `product_category` WRITE;
/*!40000 ALTER TABLE `product_category` DISABLE KEYS */;
INSERT INTO `product_category` VALUES (1,NULL,'On-Road'),(2,NULL,'OFF-Road'),(3,NULL,'X-Road'),(4,NULL,'BMX'),(5,3,'Aero Race'),(6,3,'city'),(7,3,'comfort'),(8,3,'cruiser'),(9,3,'endurance');
/*!40000 ALTER TABLE `product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_images`
--

DROP TABLE IF EXISTS `product_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `product_images_ibfk_1` FOREIGN KEY (`id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_images`
--

LOCK TABLES `product_images` WRITE;
/*!40000 ALTER TABLE `product_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_size`
--

DROP TABLE IF EXISTS `product_size`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_size` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `size` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_size`
--

LOCK TABLES `product_size` WRITE;
/*!40000 ALTER TABLE `product_size` DISABLE KEYS */;
INSERT INTO `product_size` VALUES (1,'XL'),(2,'S'),(3,'M'),(4,'L');
/*!40000 ALTER TABLE `product_size` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'sa','asd','rtyr',NULL),(2,'rakesh','rakeshr.21@gmail.com','Global12$',NULL),(3,'as','te','sd',NULL),(6,'4','42@ds.com','mtqspgigsh1bqb1ctlf7r108qs',NULL),(7,'sd','42@ds.com','s2uuo2ofbikr5859hrmhd182ua',NULL),(8,'sd','42@ds.com','fgkio75jts1ukv7mat250a8r78',NULL),(9,NULL,NULL,NULL,NULL),(11,'65','62@test.com','3dardq3i7pano7hqu23u0auf70',NULL),(12,'65','62@test.com','hm9no722v45hhg55v760jmn8r3',NULL),(13,NULL,NULL,NULL,NULL),(14,'4','42@ds.com','39iocj1uv2b4s2df80ssod5hak',NULL),(15,'i','i@test.com','ke2tea0q4sgdd1jefov4lidmi1',NULL),(16,'s9','9@test.com','jadnob1ul38sr7bvr50epgfbbi','USER');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_details`
--

DROP TABLE IF EXISTS `user_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_details` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `country` varchar(100) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `company_name` varchar(100) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `zip` int(11) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `second_address` varchar(500) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `user` bigint(20) DEFAULT NULL,
  `ordernotes` text,
  PRIMARY KEY (`id`),
  KEY `fk1` (`user`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_details`
--

LOCK TABLES `user_details` WRITE;
/*!40000 ALTER TABLE `user_details` DISABLE KEYS */;
INSERT INTO `user_details` VALUES (1,NULL,'65','6','6','6','6','6',6,'6',NULL,'62@test.com',12,NULL),(2,NULL,'65','6','6','6','6','6',6,'6',NULL,'62@test.com',13,NULL),(3,NULL,'65','6','6','6','6','6',6,'6',NULL,'62@test.com',NULL,NULL),(4,'India (IN)','4','4','4','44','4','44',44,'9897',NULL,'42@ds.com',14,NULL),(5,'IN','i','i','i','i','i','i',8,'@',NULL,'i@test.com',15,'ssss'),(6,'IN','s9','9','9','9','9','9',99,'9',NULL,'9@test.com',16,'asasa');
/*!40000 ALTER TABLE `user_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `productid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `productid` (`productid`),
  CONSTRAINT `wishlist_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `product` (`id`),
  CONSTRAINT `wishlist_ibfk_2` FOREIGN KEY (`productid`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlist`
--

LOCK TABLES `wishlist` WRITE;
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
INSERT INTO `wishlist` VALUES (1,1,2),(5,2,2),(6,2,1);
/*!40000 ALTER TABLE `wishlist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-12  8:39:25
