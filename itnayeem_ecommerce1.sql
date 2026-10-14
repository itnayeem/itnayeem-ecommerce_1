/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.19-MariaDB, for debian-linux-gnu (aarch64)
--
-- Host: localhost    Database: itnayeem_ecommerce1
-- ------------------------------------------------------
-- Server version	10.11.19-MariaDB-ubu2204

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `banner_categories`
--

DROP TABLE IF EXISTS `banner_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `banner_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banner_categories`
--

LOCK TABLES `banner_categories` WRITE;
/*!40000 ALTER TABLE `banner_categories` DISABLE KEYS */;
INSERT INTO `banner_categories` VALUES
(1,'Slider (1060x395)',1,'2023-02-21 03:05:14','2023-10-01 04:15:55'),
(5,'Slider Bottom Ads (425X212px)',1,'2023-11-19 04:36:08','2023-11-19 05:25:34'),
(6,'Footer Top Ads',1,'2023-11-19 05:25:46','2023-11-19 05:25:46'),
(7,'Campaign',1,'2024-07-06 15:42:31','2024-08-17 05:24:42'),
(8,'Customer Review',1,'2024-11-07 10:19:17','2024-11-07 10:24:47');
/*!40000 ALTER TABLE `banner_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banners`
--

DROP TABLE IF EXISTS `banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `banners` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banners`
--

LOCK TABLES `banners` WRITE;
/*!40000 ALTER TABLE `banners` DISABLE KEYS */;
INSERT INTO `banners` VALUES
(26,1,'public/uploads/banner/173643064510ab4f104344643.5f662d7a20a4d (1).jpg','#',1,'2025-01-10 03:50:45','2025-01-10 03:50:45'),
(27,1,'public/uploads/banner/1736430717df319a104344643.5f60f7ffcb5b2.jpg','#',1,'2025-01-10 03:51:57','2025-01-10 03:51:57'),
(28,1,'public/uploads/banner/1736430761296345245_5309304715821845_1940255915122054457_n.jpg','#',1,'2025-01-10 03:52:41','2025-01-10 03:52:41'),
(29,8,'public/uploads/banner/173643113867575302_2472100143020289_2326622559207948288_n.jpg','#',1,'2025-01-10 03:58:58','2025-01-10 03:58:58'),
(31,5,'public/uploads/banner/17364396545f469b104344643.5f662d7a1ff26.jpg','#',1,'2025-01-10 06:20:54','2025-01-10 06:20:54'),
(33,7,'public/uploads/banner/1736441091ads.png','#',1,'2025-01-10 06:38:05','2025-01-10 06:44:52'),
(35,6,'public/uploads/banner/1736441517ads.png','#',1,'2025-01-10 06:51:57','2025-01-10 06:51:57');
/*!40000 ALTER TABLE `banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `brands` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT 'public/uploads/category/default.png',
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands`
--

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign_product`
--

DROP TABLE IF EXISTS `campaign_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `campaign_product` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `campaign_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_product`
--

LOCK TABLES `campaign_product` WRITE;
/*!40000 ALTER TABLE `campaign_product` DISABLE KEYS */;
INSERT INTO `campaign_product` VALUES
(11,13,160,NULL,NULL),
(12,13,161,NULL,NULL),
(13,13,163,NULL,NULL),
(14,13,162,NULL,NULL),
(15,13,165,NULL,NULL);
/*!40000 ALTER TABLE `campaign_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign_reviews`
--

DROP TABLE IF EXISTS `campaign_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `campaign_reviews` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  `campaign_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_reviews`
--

LOCK TABLES `campaign_reviews` WRITE;
/*!40000 ALTER TABLE `campaign_reviews` DISABLE KEYS */;
INSERT INTO `campaign_reviews` VALUES
(23,'public/uploads/campaign/1736442274-2024-07-16-6696757bd2081.jpg',13,'2025-01-10 07:04:34','2025-01-10 07:04:34');
/*!40000 ALTER TABLE `campaign_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaigns`
--

DROP TABLE IF EXISTS `campaigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `campaigns` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `banner_title` text DEFAULT NULL,
  `video` text DEFAULT NULL,
  `banner` text DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `short_description` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `review` text NOT NULL,
  `product_id` int(11) NOT NULL,
  `image_one` text DEFAULT NULL,
  `image_two` text DEFAULT NULL,
  `image_three` text DEFAULT NULL,
  `status` varchar(55) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deadline` datetime DEFAULT current_timestamp(),
  `top_title_1` varchar(255) DEFAULT 'হোম ডেলিভারি ফ্রি',
  `top_title_2` varchar(255) DEFAULT '৩ দিনের জন্য প্রযোজ্য',
  `heading_1` varchar(255) DEFAULT 'প্রিয় মানুষকে মনের মতো সাজিয়ে নিন এই সুন্দর ড্রেস টি গিফট দিয়ে।',
  `feature_1` varchar(255) DEFAULT '১০০% কালার গ্যারান্টি',
  `feature_2` varchar(255) DEFAULT '১০০% কোয়ালিটিফুল',
  `heading_2` varchar(255) DEFAULT 'প্রিমিয়াম কোয়ালিটির নিশ্চয়তা',
  `heading_3` varchar(255) DEFAULT '”দেখতে অসম্ভব সুন্দর এই জামা + ওড়না সেট খুবই প্রিমিয়াম ও আরামদায়ক”',
  `heading_4` varchar(255) DEFAULT 'প্রিয় মানুষকে মনের মতো সাজিয়ে নিন এই সুন্দর ড্রেস টি গিফট দিয়ে।',
  `note` varchar(255) DEFAULT 'দুই সেট অর্ডার করলে সারাদেশে হোম ডেলিভারি ফ্রি।',
  `billing_details` varchar(255) DEFAULT 'একপিচ এর অধিক অর্ডার এর জন্য পরিমান লিখুন ও পছন্দের কালার গুলি সিলেক্ট করুন',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaigns`
--

LOCK TABLES `campaigns` WRITE;
/*!40000 ALTER TABLE `campaigns` DISABLE KEYS */;
INSERT INTO `campaigns` VALUES
(13,'প্রাকৃতিক উপায়ে মেদভুঁড়ি সমস্যার সমাধান','প্রাকৃতিক উপায়ে মেদভুঁড়ি সমস্যার সমাধান','yJg-Y5byMMw','public/uploads/campaign/1736442223-1732186626-51ssibigyqs._ac_uf894,1000_ql80_.jpg','prakrritik-upaze-medvunndi-smszar-smadhan','<p><br></p>','<p>এই জুস টি সেবন করলে ১৫ দিন থেকে এক মাসের ভিতর 10 থেকে 12 কেজি ওজন কমানো সম্ভব , এসিডিটি বা গ্যাস্ট্রিক থেকে মুক্তি পেতে সাহাজ্য করবে। কোষ্ঠকাঠিন্য এবং পেটের যাবতীয় সমস্যা সমাধান করবে আপনার পেট থাকবে ক্লিয়ার মনে রাখবেন পেট ক্লিয়ার থাকলে অনেক কঠিন রোগ থেকে সহজে মুক্তি পাওয়া যায়</p><div><br></div>','50+ review',159,'public/uploads/campaign/1736442270-2024-07-16-6696757bd2081.webp','public/uploads/campaign/1736442272-2024-07-16-6696757bd2081.webp','public/uploads/campaign/1736442273-2024-07-16-6696757bd2081.webp','1','2024-11-21 15:57:07','2025-02-07 14:34:53','2026-05-14 11:57:00','হোম ডেলিভারি ফ্রি','৩ দিনের জন্য প্রযোজ্য','প্রিয় মানুষকে মনের মতো সাজিয়ে নিন এই সুন্দর ড্রেস টি গিফট দিয়ে।','১০০% কালার গ্যারান্টি','১০০% কোয়ালিটিফুল','প্রিমিয়াম কোয়ালিটির নিশ্চয়তা','”দেখতে অসম্ভব সুন্দর এই জামা + ওড়না সেট খুবই প্রিমিয়াম ও আরামদায়ক”','প্রিয় মানুষকে মনের মতো সাজিয়ে নিন এই সুন্দর ড্রেস টি গিফট দিয়ে।','দুই সেট অর্ডার করলে সারাদেশে হোম ডেলিভারি ফ্রি।','একপিচ এর অধিক অর্ডার এর জন্য পরিমান লিখুন ও পছন্দের কালার গুলি সিলেক্ট করুন');
/*!40000 ALTER TABLE `campaigns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT 'public/uploads/category/default.png',
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `front_view` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `meta_keyword` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES
(11,0,'Ghee & Oil','ghee-&-oil','public/uploads/category/1736429456-ghee-concept-shot.webp','Ghee & Oil','<p>Ghee & Oil</p>',1,1,'2025-01-10 03:30:57','2025-01-10 05:56:43',NULL),
(12,0,'Original Organic Honey','original-organic-honey','public/uploads/category/1736429543-het1dosp6u0vqdwz2hpzw9qe2mnc.webp','Original Organic Honey','<p>Original Organic Honey</p>',1,1,'2025-01-10 03:32:23','2025-01-10 04:15:03',NULL),
(13,0,'Nuts & Dates','nuts-&-dates','public/uploads/category/1736429674-images.webp','Nuts & Dates','<p>Nuts & Dates</p>',1,1,'2025-01-10 03:34:34','2025-01-10 06:08:31',NULL),
(14,0,'Organic Spices','organic-spices','public/uploads/category/1736429753-screenshot_2.webp','Organic Spices','<p>Organic Spices</p>',0,1,'2025-01-10 03:35:53','2025-01-10 03:36:22',NULL),
(15,0,'Organic Oil','organic-oil','public/uploads/category/1736429963-organic.webp','Organic Oil','<p>Organic Oil</p>',0,1,'2025-01-10 03:37:46','2025-01-10 03:39:23',NULL),
(16,0,'Rice, Pulse','rice,-pulse','public/uploads/category/1736430103-dal.webp','Rice, Pulse','<p>Rice, Pulse</p>',0,1,'2025-01-10 03:41:43','2025-01-10 03:41:43',NULL),
(17,0,'Super Foods','super-foods','public/uploads/category/1736430207-rice.webp','Super Foods','<p>Super Foods</p>',0,1,'2025-01-10 03:43:27','2025-01-10 06:08:59',NULL),
(18,0,'Sweeteners &  Dairy','sweeteners-&-dairy','public/uploads/category/1736430546-swee.webp','Sweeteners &  Dairy','<p>Sweeteners &  Dairy</p>',0,1,'2025-01-10 03:49:06','2025-01-10 06:09:59',NULL);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `childcategories`
--

DROP TABLE IF EXISTS `childcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `childcategories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `childcategoryName` varchar(255) NOT NULL DEFAULT 'text',
  `slug` varchar(255) NOT NULL DEFAULT 'text',
  `subcategory_id` int(10) unsigned NOT NULL DEFAULT 0,
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_description` longtext DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `childcategories`
--

LOCK TABLES `childcategories` WRITE;
/*!40000 ALTER TABLE `childcategories` DISABLE KEYS */;
/*!40000 ALTER TABLE `childcategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colors`
--

DROP TABLE IF EXISTS `colors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `colors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `colorName` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colors`
--

LOCK TABLES `colors` WRITE;
/*!40000 ALTER TABLE `colors` DISABLE KEYS */;
INSERT INTO `colors` VALUES
(35,'Black','#000000','1','2023-11-03 06:09:13','2023-11-03 06:09:22'),
(36,'Bright Blue','#0096FF','1','2023-11-03 06:09:30','2023-11-03 06:09:38'),
(39,'Coral','#FF7F50','1','2023-11-03 06:10:23','2023-11-03 06:10:31'),
(40,'Gray','#999999','1','2023-11-03 06:10:40','2023-11-03 06:10:48'),
(41,'Green','#008000','1','2023-11-03 06:10:57','2023-11-03 06:11:05'),
(42,'Hot Pink','#FF69B4','1','2023-11-03 06:11:24','2023-11-03 06:11:29'),
(44,'Pink','#FFC0CB','1','2023-11-03 06:12:03','2023-11-03 08:50:43'),
(48,'Magenta','#FF00FF','1','2023-11-03 06:13:28','2023-11-03 06:13:39'),
(49,'Maroon','#990000','1','2023-11-03 06:13:51','2023-11-03 06:14:00'),
(50,'Grass Green','#7CFC00','1','2023-11-03 06:14:14','2023-11-03 06:59:07'),
(51,'Navy','#000080','1','2023-11-03 06:14:30','2023-11-03 06:14:41'),
(52,'Blue','#0000FF','1','2023-11-03 06:15:01','2023-11-03 09:53:12'),
(53,'Olive','#808000','1','2023-11-03 06:15:26','2023-11-03 06:15:37'),
(54,'Orange','#FFA500','1','2023-11-03 06:15:46','2023-11-03 06:15:58'),
(55,'Yellow Orange','#FFAA33','1','2023-11-03 06:16:17','2023-11-03 07:03:16'),
(56,'Orchid','#DA70D6','1','2023-11-03 06:16:35','2023-11-03 06:16:42'),
(58,'Purple Heart','#8b1ec4','1','2023-11-03 06:17:09','2023-11-03 06:17:20'),
(59,'Red','#FF0000','1','2023-11-03 06:17:30','2023-11-03 06:17:42'),
(60,'Canary Yellow','#FFFF8F','1','2023-11-03 06:17:51','2023-11-03 08:24:41'),
(61,'Salmon','#FA8072','1','2023-11-03 06:18:13','2023-11-03 06:18:24'),
(62,'White','#ffffff','1','2023-11-03 06:18:44','2023-11-03 06:18:52'),
(63,'Gold','#FFD700','1','2023-11-03 06:19:02','2023-11-03 07:08:05'),
(64,'Crimson','#DC143C','1','2023-11-03 06:37:11','2023-11-03 09:19:11'),
(65,'Silver','#C0C0C0','1','2023-11-03 06:40:45','2023-11-03 09:11:55'),
(67,'Light Orange','#FFD580','1','2023-11-03 07:13:52','2023-11-03 07:14:03'),
(68,'Navajo White','#FFDEAD','1','2023-11-03 07:15:18','2023-11-03 08:16:20'),
(69,'Pumpkin Orange','#FF7518','1','2023-11-03 07:17:29','2023-11-03 07:17:38'),
(70,'Chocolate','#D2691E','1','2023-11-03 08:01:35','2023-11-03 08:34:09'),
(73,'Biscuit','#FAD7A0','1','2023-11-03 09:09:43','2023-11-03 09:10:20'),
(74,'Off White','#f5f5f5','1','2024-11-10 04:46:40','2024-11-10 04:46:40');
/*!40000 ALTER TABLE `colors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` int(10) unsigned NOT NULL,
  `hotline` varchar(50) DEFAULT NULL,
  `hotmail` varchar(50) DEFAULT NULL,
  `phone` varchar(50) NOT NULL,
  `whatsapp` varchar(200) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL,
  `maplink` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES
(1,'+8801511777744','support@itnayeem.com.bd','+8801511777744','+8801511777744','support@itnayeem.com.bd','Bhabarpara Mujibnagar, Bagoan, Mujib Nagar, 7102, Meherpur, Bangladesh','#',1,'2023-01-22 10:35:29','2025-01-20 13:39:28');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courierapis`
--

DROP TABLE IF EXISTS `courierapis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `courierapis` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(55) DEFAULT NULL,
  `api_key` varchar(155) DEFAULT NULL,
  `secret_key` varchar(155) DEFAULT NULL,
  `url` varchar(99) DEFAULT NULL,
  `token` text DEFAULT NULL,
  `status` varchar(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courierapis`
--

LOCK TABLES `courierapis` WRITE;
/*!40000 ALTER TABLE `courierapis` DISABLE KEYS */;
INSERT INTO `courierapis` VALUES
(1,'steadfast','6bj4tltvc0tot7m1kvyze1aenpprawff','gtealqr9ttcbc4sg4shrissu','https://portal.packzy.com/api/v1/create_order','asdfdsfdsafdsf','1','2024-02-06 11:29:46','2025-01-07 17:26:31'),
(2,'pathao','','','https://api-hermes.pathao.com/aladdin','eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjYxNzVkOWQyODAwNjk2YzU4Y2E1MmZkMGQ5Y2RiZWRkYTBhN2I5YjU0YTIwNTQxNzVhZTVlZjYwNzg2ZTU1MzU1NzYxM2JhZGZhNjcwMzdmIn0.eyJhdWQiOiI0MTkyIiwianRpIjoiNjE3NWQ5ZDI4MDA2OTZjNThjYTUyZmQwZDljZGJlZGRhMGE3YjliNTRhMjA1NDE3NWFlNWVmNjA3ODZlNTUzNTU3NjEzYmFkZmE2NzAzN2YiLCJpYXQiOjE3MDM0MzY4NDQsIm5iZiI6MTcwMzQzNjg0NCwiZXhwIjoxNzExMjEyODQzLCJzdWIiOiIxNzM5MTIiLCJzY29wZXMiOltdfQ.VARDX-r01cIf0uPE_CFItJ44BfyB8-tD0rmXAt9r-DT545rIDKW97VsMWd2jfghQjbnLY8C-nL5yMOCz759IGT-2ApSOCtND1b1Dp_AahtGVDrqKnYn_ZZrWWfdHQ-OYsxGVpH3Cat3kgVafIDcpJJdTTYmtmESrr3dulGCBS4WuyGpNnBnz5TjGk6d3UD83-RG9Ud37x5hSZBJwXM85xrX3AotCo9MhQti7hmsve8Mf4Z2qJSjJBCDPTrjoKDYNsSWqgVtKCYLv3H2mnXu5Ecsp0bxRdTYLzzVZaqF-B8sYYTOeseASgKuE5XQl1NOOCXBr9gBdEC1FD--lpElgG_FeQwvelhpeQ2yyze806ipkY8wNNqEvm9pC9uJ0n7ZmbSezJUYghC7vfi1iEmDOcB9JQxX9WOFi1VKSSOG-u__SQcYRmtAJ8LrTwL8zDMruL4uYFNGe17F-PuRH8ncp_FZK6Q_xuJY7CcDPwCw3E0_SMnmMU7ND25hoUpNly41j9y2G9UaGovfwD-QosPozAqACdRdyqP6cn3icNPY2kp7sSdKLsUIUOZox5ugfjbYC9wC6fzdYED0U85QDA4nPj0NGDVutTcFdED-Yzmmd-VNJVNI9cALfVDfKrpHlWpQMSeeZ7dc16NA0SrayF5DgQbpYg6CbGskmWTCsgmuWFvw','0','2024-02-06 11:29:46','2024-11-13 11:53:59');
/*!40000 ALTER TABLE `courierapis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `create_pages`
--

DROP TABLE IF EXISTS `create_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `create_pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `create_pages`
--

LOCK TABLES `create_pages` WRITE;
/*!40000 ALTER TABLE `create_pages` DISABLE KEYS */;
INSERT INTO `create_pages` VALUES
(2,'Order procedure','order-procedure','Order procedure','IT Nayeem',1,'2023-10-04 07:02:30','2025-01-10 02:57:35'),
(3,'Delivery Rules','delivery-rules','Delivery Rules','IT Nayeem',1,'2023-10-04 07:03:00','2025-01-10 02:57:30'),
(5,'Return Policy','return-policy','Return Policy','IT Nayeem',1,'2023-10-04 07:03:42','2025-01-10 02:57:26'),
(6,'Terms & Conditions','terms-&-conditions','Terms & Conditions','IT Nayeem',1,'2023-10-04 07:04:05','2025-01-10 02:57:22'),
(7,'Privacy Policy','privacy-policy','Privacy Policy','IT Nayeem',1,'2023-10-04 07:04:19','2025-01-10 02:57:18');
/*!40000 ALTER TABLE `create_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(155) NOT NULL,
  `slug` varchar(155) NOT NULL,
  `phone` varchar(55) NOT NULL,
  `email` varchar(55) DEFAULT NULL,
  `district` varchar(100) DEFAULT NULL,
  `area` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `verify` int(11) DEFAULT NULL,
  `forgot` varchar(11) DEFAULT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'public/uploads/default/user.png',
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `status` varchar(55) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES
(106,'MD Mamun Hassan','MD Mamun Hassan','01954578010',NULL,NULL,NULL,NULL,1,NULL,'public/uploads/default/user.png','$2y$10$iW1nEwmWzqmUFLGEae/PKOzQpVKIc392zJRAM2uhzqDXa1.WCydaK',NULL,'active','2025-01-10 07:41:34','2025-01-10 07:41:34'),
(107,'IT Nayeem','it-nayeem','01511777744',NULL,NULL,NULL,NULL,1,NULL,'public/uploads/default/user.png','$2y$10$HUqNPduN8J6Qq7h4DKL6SuLS9tDZDF/wjHEOvA5q/5YFcpq83VOcK',NULL,'active','2025-01-10 07:48:57','2025-01-10 07:48:57'),
(108,'Mobarok Hussain','Mobarok Hussain','01715712941',NULL,NULL,NULL,NULL,1,NULL,'public/uploads/default/user.png','$2y$10$cd3kTI.dN/FjDxiGVS.s/ePDZkuPr4QZ6SUHknxyN79K4tAffyYs2',NULL,'active','2025-02-03 08:42:51','2025-02-03 08:42:51'),
(109,'NU Admission','NU Admission','01403134343',NULL,NULL,NULL,NULL,1,NULL,'public/uploads/default/user.png','$2y$10$eXamdjEFOYsJGea6c9Jg0.p21BsvdSNhKJwvA9zkVSQVTT.k8fARu',NULL,'active','2025-02-06 09:46:59','2025-02-06 09:46:59');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `districts`
--

DROP TABLE IF EXISTS `districts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `districts` (
  `id` int(10) unsigned NOT NULL,
  `area_id` int(11) NOT NULL,
  `area_name` varchar(255) NOT NULL,
  `district` varchar(255) NOT NULL,
  `shippingfee` varchar(255) NOT NULL,
  `partialpayment` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `districts`
--

LOCK TABLES `districts` WRITE;
/*!40000 ALTER TABLE `districts` DISABLE KEYS */;
INSERT INTO `districts` VALUES
(1,112,'Pilkhana','Dhaka','80','200','2021-10-23 19:02:41','2022-12-10 04:25:24'),
(2,1684,'Katasur','Dhaka','80','200','2021-10-24 19:02:41','2022-12-10 04:25:24'),
(3,6,'Shyamoli','Dhaka','80','200','2021-10-25 19:02:40','2022-12-10 04:25:24'),
(4,1685,'Dhanmondi Staff Quarter','Dhaka','80','200','2021-10-26 19:02:40','2022-12-10 04:25:24'),
(5,418,'Dhaka Uddyan','Dhaka','80','200','2021-10-27 19:02:40','2022-12-10 04:25:24'),
(6,7,'Adabor','Dhaka','80','200','2021-10-28 19:02:40','2022-12-10 04:25:24'),
(7,114,'New Market','Dhaka','80','200','2021-10-29 19:02:40','2022-12-10 04:25:24'),
(8,426,'Shekhertek','Dhaka','80','200','2021-10-30 19:02:40','2022-12-10 04:25:24'),
(9,155,'Old Elephant Road','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:24'),
(10,1660,'Dhanmondi - Rd 1','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:24'),
(11,326,'Science Lab','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:24'),
(12,1661,'Dhanmondi - Rd 2','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:24'),
(13,11,'Lalmatia','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:24'),
(14,327,'Sobhanbag','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:24'),
(15,1690,'Arshinagar','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:24'),
(16,145,'Dhaka University','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:24'),
(17,1691,'Washpur','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:24'),
(18,1692,'Garden City','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:24'),
(19,1693,'Boddhovumi','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:24'),
(20,148,'Kazi Nazrul Islam Avenue','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:24'),
(21,1187,'Kaderabad Housing','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:24'),
(22,149,'Kawran Bazar','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:24'),
(23,1662,'Dhanmondi - Rd 4','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:24'),
(24,115,'Azimpur','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:24'),
(25,162,'Shahbag','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:24'),
(26,306,'Monipuripara','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:24'),
(27,309,'Bosila','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:24'),
(28,1663,'Dhanmondi - Rd 4A','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:24'),
(29,19,'Sher-E-Bangla Nagar','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:24'),
(30,116,'Nilkhet','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:24'),
(31,163,'Katabon','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:24'),
(32,1664,'Dhanmondi - Rd 6','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:24'),
(33,164,'Hatirpool','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:24'),
(34,1210,'Eastern Housing (Adabor)','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:24'),
(35,1665,'Dhanmondi - Rd 6','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:24'),
(36,1211,'Teskunipara','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:24'),
(37,1212,'DHAKA TENARI MORE','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:24'),
(38,1666,'Dhanmondi - Rd 3A','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:24'),
(39,1213,'Shahidnagar','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:24'),
(40,95,'Bijoy Shoroni','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:24'),
(41,1667,'Dhanmondi - Rd 6A','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:24'),
(42,1214,'Jhigatola','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:24'),
(43,185,'Elephant Road','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:24'),
(44,96,'Farmgate','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:24'),
(45,1668,'Dhanmondi - Rd 8','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:24'),
(46,1215,'Polashi','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:24'),
(47,186,'Kathalbagan','Dhaka','80','200','2021-10-31 19:02:40','2023-01-07 01:52:02'),
(48,97,'Indira Road','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:24'),
(49,1669,'Dhanmondi - Rd 8A','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:24'),
(50,1216,'Satmoshjid Road','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:24'),
(51,1670,'Dhanmondi - Rd 9','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:24'),
(52,1217,'Shukrabad','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:24'),
(53,188,'Central Road','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:24'),
(54,99,'Tejkunipara','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:24'),
(55,1671,'Dhanmondi - Rd 9A','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:24'),
(56,1218,'BNP Bazar','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:24'),
(57,100,'Razabazar','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:24'),
(58,1672,'Dhanmondi - Rd 10','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:24'),
(59,1673,'Dhanmondi - Rd 12','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:24'),
(60,1139,'Dhaka uddan','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:24'),
(61,101,'Sukrabad','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:24'),
(62,1674,'Dhanmondi - Rd 12A','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:24'),
(63,1140,'Nobodoy','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:24'),
(64,102,'Panthopath','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:24'),
(65,103,'Kalabagan','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:24'),
(66,1675,'Dhanmondi - Rd 15','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:24'),
(67,1141,'Chad Uddan','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:24'),
(68,104,'Green Road','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:24'),
(69,1676,'Dhanmondi - Rd 15 A','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:24'),
(70,1142,'Mohammadia Housing','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:24'),
(71,105,'Manik Mia Avenue','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:24'),
(72,1677,'Dhanmondi - Rd 27','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:24'),
(73,1143,'Ring Road','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:24'),
(74,106,'Asad Avenue','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:24'),
(75,1678,'Dhanmondi - Rd 28','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:24'),
(76,1144,'Tajmahal Road','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:24'),
(77,107,'West Dhanmondi','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:24'),
(78,1679,'Dhanmondi - Rd 29','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:24'),
(79,1145,'Nurjahan Road','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:24'),
(80,133,'Dhakeshwari','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:24'),
(81,108,'Shankar','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(82,1146,'Rajia Sultana Road','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(83,1,'Mohammadpur(Dhaka)','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(84,273,'Zigatola','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(85,109,'Rayer Bazar','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(86,1681,'Zafrabad','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(87,183,'Paribag','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(88,2,'Dhanmondi - Rd 3','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(89,110,'Tallabag','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(90,1682,'Sadek Khan Road','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(91,111,'Hazaribag','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(92,1683,'Sher e Bangla Road','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(93,67,'Nikunja','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(94,1230,'Mahanogor','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(95,1231,'Nimtola','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(96,1232,'Nurerchala','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(97,1571,'Jahangir Gate','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(98,82,'South Badda','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(99,325,'Joar Shahara','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(100,1572,'Nijhum gate','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(101,83,'Merul Badda','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(102,1573,'BAF Bashar (Dhaka cantonment)','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(103,1199,'Apollo','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(104,84,'Niketon','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(105,72,'Bashundhara R/A','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(106,1574,'Zia Colony','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(107,1200,'Nurer Chala','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(108,85,'Banani','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(109,86,'Banani DOHS','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(110,73,'Vatara','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(111,1575,'MES colony','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(112,1201,'Bawaila Para','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(113,87,'Mohakhali','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(114,74,'Nadda','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(115,1202,'Satarkul','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(116,1185,'Kunipara','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(117,88,'Mohakhali DOHS','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(118,1233,'Pastola Bazar','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(119,14,'Gudaraghat (Badda)','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(120,75,'Baridhara','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(121,1206,'Khilbar Tek','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(122,1186,'Babli Masjid','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(123,1234,'Poschim Badda','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(124,76,'Baridhara DOHS','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(125,1235,'Purbo Badda','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(126,77,'Notun Bazar','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(127,91,'Aziz Palli','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(128,1236,'Sat-tola Bazar','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(129,78,'Adarsha Nagar (Badda)','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(130,1317,'Namapara-Khilkhet','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(131,92,'Bashtola','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(132,1237,'Shaheenbagh','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(133,79,'Shahjadpur','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(134,93,'South Baridhara DIT Project','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(135,1238,'Subastu','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(136,21,'Cantonment Post Office','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(137,80,'Uttor Badda','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(138,94,'Aftabnagar','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(139,1239,'ICDDRB','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(140,81,'Middle Badda','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(141,39,'Namapara','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(142,1240,'Satrasta','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(143,1348,'Niketon Bazar','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(144,323,'Nakhalpara','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(145,1268,'Rosulbagh(Mohakhali)','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(146,1241,'Tekpara Adorsonagor','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(147,1242,'Uttar Badda','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(148,1323,'Aftab Nagar','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(149,98,'Tejgaon','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(150,1243,'Wireless','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(151,1244,'Solmaid','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(152,27,'M.E.S','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(153,44,'Kurmitola','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(154,1245,'300 Feet','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(155,45,'Shewra','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(156,1219,'Kalachandpur','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(157,174,'Khilbari Tek (Badda)','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(158,1220,'Jogonnathpur','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(159,1221,'Kuratuli','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(160,1329,'TV gate','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(161,1222,'Alatunnessa School Road','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(162,1224,'Bou Bazar - Mohakhali, Dhaka','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(163,1733,'Nikunja 2','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(164,51,'Kuril','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(165,1225,'Chairman Goli','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(166,1226,'Confidence Tower, Jhilpar','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(167,1227,'Fuji Trade Center','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(168,3,'Gulshan','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(169,1228,'Khil Barirtek','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(170,1229,'Korail','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(171,66,'Khilkhet','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(172,449,'Mirpur Taltola','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(173,1332,'Gudaraghat-Mirpur','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(174,277,'Kalshi','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(175,1333,'Namapara-Mirpur','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(176,1334,'Oxygen','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(177,1600,'Mirpur 60 feet','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(178,8,'Darussalam','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(179,9,'Gabtoli','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(180,1335,'Technical','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(181,1481,'Eastern Housing (Pallabi)','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(182,10,'Pallabi','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(183,1336,'Mirpur 13 /14 / 15','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(184,1337,'Benaroshi Polli','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(185,12,'Mirpur DOHS','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(186,329,'ECB Chattar','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(187,1338,'Beribadh-Mirpur','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(188,13,'Kochukhet','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(189,1339,'Buddhijibi Road','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(190,1340,'Purobi Cinema Hall','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(191,89,'South Monipur','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(192,17,'Agargaon','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(193,1341,'Mondir-Mirpur','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(194,1694,'Mirpur - 6','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(195,90,'Shah Ali Bag','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(196,18,'Monipur','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(197,1342,'Palasnagor','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(198,1343,'Purobi','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(199,20,'Ibrahimpur','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(200,1344,'Rupnagor','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(201,1345,'Senpara','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(202,315,'Mirpur 2','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(203,1131,'Birulia','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(204,1346,'BRTA','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(205,22,'Mirpur Cantonment','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(206,37,'Dewanpara','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(207,1347,'Zoo','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(208,23,'Kafrul','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(209,40,'Mastertek','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(210,1695,'Mirpur - 7','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(211,24,'Vashantek','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(212,41,'Balughat','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(213,1696,'Mirpur - 11','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(214,25,'Manikdi','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(215,42,'Barontek','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(216,1697,'Mirpur - 11.5','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(217,26,'Matikata','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(218,43,'Goltek','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(219,1698,'Mirpur - 12','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(220,28,'Rupnagar Residential Area','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(221,1699,'Mirpur - 13','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(222,1165,'Kallanpur','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(223,29,'Duaripara','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(224,1700,'Mirpur - 15','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(225,1166,'Amin Bazar','Dhaka','150','510','2021-10-31 19:02:40','2022-12-14 10:16:43'),
(226,30,'Rainkhola','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(227,1701,'Mirpur - 14','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(228,1167,'Lalkuthi','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(229,31,'Mirpur Diabari','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(230,1168,'Mirpur 1','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(231,32,'Mazar Road','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(232,1169,'Tolarbag','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(233,33,'Shagufta','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(234,1594,'Arambag (Mirpur)','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(235,1170,'Ahmed Nagar','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(236,1331,'Mirpur 10','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(237,1171,'Paikpara','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(238,1172,'Pirerbag','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(239,35,'Baigertek','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(240,1173,'Taltola (Mirpur)','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(241,36,'Madina nagar','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(242,1174,'MES Colony','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(243,1175,'Zia Colony','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(244,275,'Kazipara','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(245,1176,'Ajiz Market','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(246,276,'Shewrapara','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(247,5,'Kallyanpur','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(248,139,'Fakirapul','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(249,152,'Shantibag','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(250,140,'Kakrail','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(251,153,'Baily Road','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(252,154,'Minto Road','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(253,69,'Hajipara (Rampura)','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(254,141,'Naya Paltan','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(255,142,'Bijoynagar (Paltan)','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(256,156,'Eskaton Garden Road','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(257,143,'Press Club','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(258,144,'High Court','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(259,157,'Eskaton','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(260,158,'Moghbazar','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(261,288,'Purana Paltan','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(262,159,'Mouchak','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(263,334,'Arambag (Motijheel)','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(264,160,'Malibag','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(265,161,'Rampura','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(266,1207,'Buddho Mondir','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(267,1208,'Sipahibag','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(268,1636,'Banasree Block - A','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(269,1209,'TT Para','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(270,1637,'Banasree Block - B','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(271,165,'Bashabo','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(272,1638,'Banasree Block - C','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(273,1132,'Shahjahanpur (Dhaka)','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(274,166,'Khilgaon','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(275,1639,'Banasree Block - D','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(276,1640,'Banasree Block - E','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(277,319,'Siddweswari','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(278,167,'Middle Bashabo','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(279,1641,'Banasree Block - F','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(280,168,'Goran','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(281,1642,'Banasree Block - G','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(282,169,'Madartek','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(283,396,'Nandipara','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(284,1643,'Banasree Block - H','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(285,187,'Malibagh Taltola','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(286,170,'Manik Nagar','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(287,171,'Shahjahanpur','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(288,1644,'Banasree Block - I','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(289,1324,'Gulbagh','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(290,1137,'Haterrjheel','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(291,125,'Tikatuly','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(292,126,'Motijheel','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(293,172,'Banasree (Rampura)','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(294,403,'Gopibag','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(295,1645,'Banasree Block - J','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(296,189,'Sabujbag','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(297,1325,'Meradiya Bazar','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(298,173,'Meradia','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(299,1646,'Banasree Block - K','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(300,190,'Shiddheswari','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(301,1326,'Mirbagh','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(302,1647,'Banasree Block - L','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(303,1327,'Modhubagh','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(304,1328,'Rampura TV center','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(305,1648,'Banasree Block - M','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(306,266,'Shegunbagicha','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(307,177,'Mughdapara','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(308,1649,'Banasree Block - N','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(309,267,'Rajarbag','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(310,1330,'Ulan road','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(311,1223,'Purbo Rampura','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(312,1251,'Chamelibag','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(313,181,'Hatirjheel','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(314,134,'Kamalapur','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(315,182,'Banglamotor','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(316,1128,'Manda(Dhaka)','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(317,1596,'Nazimuddin Road (Malibag)','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(318,150,'Ramna','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(319,137,'Dainik Bangla Mor','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(320,151,'Shantinagar','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(321,1657,'Uttara Sector - 15','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(322,324,'Dokshingaon','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(323,1686,'Uttara Sector - 16','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(324,1152,'Uttara Sector 5','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(325,1687,'Uttara Sector - 17','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(326,1153,'Uttara Sector 14','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(327,1688,'Uttara Sector - 18','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(328,1154,'Uttara Sector 3','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(329,1155,'Uttara Sector 7','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(330,1156,'Uttara Sector 9','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(331,1157,'Uttara Sector 11','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(332,1158,'Nalbhog','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(333,1160,'Phulbaria','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(334,352,'Kamarpara','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(335,1161,'Dhour','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(336,1295,'Ranavola','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(337,1162,'Bhatuliya','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(338,1318,'Ahalia-Uttara','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(339,1320,'Diabari','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(340,1321,'Habib Market-Uttara','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(341,1322,'Pakuria-Uttara','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(342,1163,'Bamnartek','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(343,1164,'Turag','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(344,1650,'Uttara Sector - 1','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(345,34,'Bawnia','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(346,1654,'Uttara Sector - 10','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(347,1655,'Uttara Sector - 12','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(348,1656,'Uttara Sector - 13','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(349,1257,'Kotwali (Puran Dhaka)','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(350,113,'Nawabgonj Puran Dhaka','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(351,1258,'Railway Colony','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(352,1259,'Rajar Dewri','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(353,284,'Sutrapur','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(354,1261,'Sat rowja','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(355,286,'Kamrangichar','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(356,1262,'Tantibazar','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(357,146,'Dhaka Medical','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(358,147,'Bongo Bondhu Avenue','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(359,346,'Armanitola','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(360,349,'Islambag','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(361,354,'Mitford','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(362,117,'Lalbagh','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(363,355,'Shakhari Bazar','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(364,118,'Chawkbazar (Dhaka)','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(365,356,'Katherpol','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(366,316,'Bongshal','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(367,119,'Naya Bazar','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(368,357,'Bangla Bazar','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(369,120,'Tatibazar','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(370,358,'Patuatuly','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(371,121,'Luxmi Bazar','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(372,123,'Puran Dhaka','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(373,124,'Siddique Bazar','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(374,397,'Nazira Bazar','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(375,127,'Nawabpur','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(376,128,'Kaptan Bazar','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(377,263,'Dolaikhal','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(378,1248,'Mahut Tuli','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(379,129,'Gulistan','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(380,406,'Sadarghat (Dhaka)','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(381,1249,'Alubazar','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(382,130,'Bongo Bazar','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(383,407,'Kaltabazar','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(384,1250,'Badam Toli','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(385,131,'Chankarpul','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(386,269,'Babubazar','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(387,270,'Islampur(Dhaka)','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(388,132,'Palashi','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(389,409,'Gandaria','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(390,1595,'Nazimuddin Road (Puran Dhaka)','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(391,271,'Imamgonj','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(392,1252,'Dholaikhal','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(393,272,'Nayabazar','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(394,1253,'Doyagonj','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(395,1254,'Farashgong','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(396,135,'Wari','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(397,136,'Narinda','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(398,184,'Bakshibazar','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(399,1395,'Firozshah','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(400,1396,'GEC','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(401,1397,'Halishahar','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(402,1398,'Halishshar','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(403,1458,'Sadarghat','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(404,1366,'Cadet College','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(405,1367,'Chandgaon','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(406,1368,'Chattogram Airport','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(407,1369,'Chattogram Bandar','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(408,1370,'Chattogram Cantonment','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(409,1371,'Chattogram Chawkbazar','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(410,1431,'Mohard','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(411,1372,'Chattogram Customs Acca','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(412,999,'Sitakundu','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(413,1373,'Chattogram GPO','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(414,1433,'Nasirabad','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(415,1407,'Jalalabad','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(416,1374,'Chattogram New Market','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(417,1434,'North Halishahar','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(418,1375,'Chattogram Oxygen','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(419,1435,'North Kattali','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(420,1349,'Kotwali Chattogram','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(421,1135,'Bondor (Chittagong)','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(422,1376,'Chattogram Politechnic Institute','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(423,1436,'North Katuli','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(424,1437,'Noyabazar','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(425,1350,'Agrabad','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(426,1464,'Sitakunda Barabkunda','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(427,1136,'Barahatia','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(428,1377,'Chattogram Sailors Colony','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(429,1438,'Pahartoli','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(430,1351,'AK Khan','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(431,1465,'Sitakunda Baroidhala','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(432,1378,'Colonel Hat','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(433,1379,'Combined Military Hospital (CMH)','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(434,1439,'Panchlaish','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(435,1352,'Al- Amin Baria Madra','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(436,1466,'Sitakunda Bawashbaria','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(437,1380,'Court Buliding','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(438,1440,'Patenga','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(439,1353,'Al- Amin Baria Madrasa','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(440,1467,'Sitakunda Bhatiari','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(441,1354,'Amin Jute Mills','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(442,1468,'Sitakunda Fouzdarhat','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(443,1122,'Chittagong Sadar','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(444,1382,'Dakkshin Pahartoli','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(445,1355,'Anandabazar','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(446,1469,'Sitakunda Jafrabad','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(447,1383,'Double Mooring','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(448,1443,'Rampur','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(449,1470,'Sitakunda Kumira','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(450,1471,'South Halishahar','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(451,1444,'Rampura TSO','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(452,1358,'Bayezid Bostami','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(453,1473,'Wazedia','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(454,1419,'Kattuli','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(455,1420,'Khulshi','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(456,1388,'Export Processing','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(457,1423,'Middle Patenga','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(458,1474,'No area','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(459,448,'CWH','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(460,292,'Shyampur','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(461,296,'Dholaipar','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(462,313,'Shonir Akhra','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(463,1246,'Mirhazirbagh','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(464,404,'Shwamibag','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(465,405,'Sayedabad','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(466,178,'Golapbag (Dhaka)','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(467,408,'Jurain','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(468,179,'Jatrabari','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(469,411,'RayerBag','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(470,412,'Faridabad (Jatrabari)','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(471,1255,'Dholpur','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(472,414,'Donia','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(473,1597,'Kodomtoli (Jatrabari)','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(474,415,'Postogola','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(475,915,'Fenchuganj','Sylhet','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(476,916,'Gowainghat','Sylhet','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(477,917,'Golapganj (Sylhet)','Sylhet','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(478,918,'Jaintapur','Sylhet','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(479,920,'Kanaighat','Sylhet','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(480,921,'Amberkhana (Sylhet)','Sylhet','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(481,922,'South Surma','Sylhet','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(482,1497,'Akhalia','Sylhet','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(483,1498,'Tilaghor','Sylhet','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(484,1499,'Shibganj(sylhet)','Sylhet','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(485,1494,'Zindabazar','Sylhet','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(486,1500,'Uposhohor(Sylhet)','Sylhet','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(487,1495,'Pathantula','Sylhet','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(488,1501,'Kodomtoli','Sylhet','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(489,1496,'Subidbazar','Sylhet','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(490,1502,'Sheikhghat.','Sylhet','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(491,1503,'Majortila','Sylhet','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(492,1504,'Subhanighat','Sylhet','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(493,911,'Balaganj','Sylhet','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(494,913,'Biswanath','Sylhet','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(495,914,'Companyganj (Sylhet)','Sylhet','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(496,1284,'Khartail','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(497,1542,'Jinumarket','Gazipur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(498,1285,'Majukhan','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(499,1543,'T & T(Gazipur)','Gazipur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(500,1197,'Ershadnagar','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(501,1286,'Milgate','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(502,1544,'Shilmun','Gazipur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(503,1198,'Sataish','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(504,1287,'National University','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(505,1545,'Mudafa','Gazipur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(506,1288,'Surtaranga','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(507,1546,'Khapara','Gazipur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(508,1289,'Targach','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(509,1547,'Malakerbari','Gazipur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(510,1263,'Khairtail','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(511,1290,'Rail Station','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(512,1548,'Bypass Road (Gazipur)','Gazipur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(513,1549,'Kodda','Gazipur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(514,1264,'Bonomala','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(515,1291,'Boro Dewra','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(516,1550,'Duet Road','Gazipur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(517,1265,'Morkun','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(518,1551,'Shibbari','Gazipur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(519,1552,'Shimultoli','Gazipur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(520,647,'Chowrasta (Gazipur)','Gazipur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(521,1188,'Kunia','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(522,1553,'Jorpukur','Gazipur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(523,1189,'Gacha','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(524,1190,'Boro Bari','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(525,1554,'Salna','Gazipur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(526,649,'Kaliganj(Gazipur)','Gazipur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(527,1191,'Board Bazar','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(528,1192,'Kamarjuri','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(529,1266,'Bhadam','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(530,1193,'Dattapara','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(531,1267,'Boro Dewra Dakkhin Para','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(532,1194,'Auchpara','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(533,1195,'Cherag Ali','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(534,1269,'Gopalpur','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(535,1196,'Tongi Bazar (Dhaka)','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(536,1270,'College Gate (Tongi)','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(537,1271,'Boardbazar','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(538,1272,'Gazipura','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(539,1273,'Hossain Market (Tongi)','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(540,1274,'Signboard (Gazipur)','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(541,1275,'Joydebpur','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(542,1276,'Dhirasrom','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(543,1277,'Dattapara Road','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(544,1536,'Pubail','Gazipur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(545,1278,'Badekomelosshor','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(546,1279,'Borobari','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(547,1537,'Mirerbazar','Gazipur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(548,1280,'Choidana','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(549,1538,'Ulokhola','Gazipur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(550,1281,'Deger Chala','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(551,1539,'Modhumita','Gazipur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(552,1282,'Gazcha','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(553,1540,'Miraspara','Gazipur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(554,63,'Tongi','Gazipur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(555,1283,'Hariken','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(556,1541,'Pagar','Gazipur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(557,282,'Ashulia','Dhaka','150','510','2021-10-31 19:02:40','2022-12-14 10:15:49'),
(558,283,'Amin Bazar','Dhaka','150','510','2021-10-31 19:02:40','2022-12-14 10:16:34'),
(559,365,'Dhamrai','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(560,1127,'Baipayl','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(561,53,'Savar','Dhaka','150','510','2021-10-31 19:02:40','2022-12-14 10:15:10'),
(562,61,'Savar Cantonment','Dhaka','150','510','2021-10-31 19:02:40','2022-12-14 10:14:50'),
(563,1178,'Aga Nagar','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(564,1179,'Kathuria','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(565,1180,'Goljarbag','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(566,1181,'Nazirabag','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(567,1260,'Hasnabad','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(568,1182,'Kaliganj - Keraniganj','Dhaka','150','510','2021-10-31 19:02:40','2022-12-14 10:17:35'),
(569,1183,'Nazarganj','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(570,1184,'Zinzira','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(571,305,'Keranigonj','Dhaka','150','510','2021-10-31 19:02:40','2022-12-14 10:17:28'),
(572,1125,'Kalatia','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(573,1256,'Kodomtoli(Keraniganj)','Dhaka','150','510','2021-10-31 19:02:40','2022-12-14 10:17:22'),
(574,707,'Bandar (Narayanganj)','Narayanganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(575,708,'Chashara (Narayanganj)','Narayanganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(576,1658,'Signboard (Narayanganj)','Narayanganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(577,1659,'Jalkuri (Narayanganj)','Narayanganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(578,710,'Sonargaon','Narayanganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(579,1689,'Chittagong Road (Narayanganj)','Narayanganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(580,1133,'Shanarpar (Narayanganj)','Narayanganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(581,1247,'Bhuigarh-Narayangonj','Narayanganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(582,1123,'Siddhirganj','Narayanganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(583,1124,'Fatullah','Narayanganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(584,1680,'Shibu Market (Narayanganj)','Narayanganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(585,1000,'Barura','Comilla','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(586,1001,'Brahmanpara','Comilla','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(587,1002,'Burichang','Comilla','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(588,1003,'Chandina','Comilla','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(589,1005,'Comilla Sadar','Comilla','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(590,1007,'Debiduar','Comilla','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(591,1015,'Comilla Sadar South','Comilla','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(592,782,'Batiaghata','Khulna','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(593,783,'Dacope','Khulna','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(594,784,'Dighalia','Khulna','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(595,785,'Dumuria','Khulna','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(596,786,'Phultala','Khulna','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(597,789,'Rupsa','Khulna','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(598,790,'Khalispur','Khulna','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(599,791,'Sonadanga','Khulna','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(600,792,'Khan jahan ali','Khulna','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(601,793,'Doulatpur','Khulna','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(602,1120,'Khulna Sadar','Khulna','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(603,794,'Terokhada','Khulna','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(604,1528,'Chorpara (Mymensingh)','Mymensingh','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(605,1529,'Kachijhuli','Mymensingh','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(606,695,'Dhubaura','Mymensingh','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(607,1530,'College Road (Mymensigh)','Mymensingh','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(608,696,'Fulbaria (Mymensingh)','Mymensingh','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(609,1531,'Akua','Mymensingh','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(610,697,'Fulpur','Mymensingh','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(611,1532,'Agriculture University (Mymensingh)','Mymensingh','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(612,1533,'Zilla School Mor (Mymensingh)','Mymensingh','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(613,699,'Koltapara (Gouripur Mymensingh)','Mymensingh','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(614,1534,'Rohomotpur Bypass','Mymensingh','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(615,700,'Haluaghat','Mymensingh','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(616,1535,'Mashkanda','Mymensingh','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(617,701,'Iswarganj','Mymensingh','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(618,702,'Kacharighat (Mymensingh)','Mymensingh','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(619,703,'Muktagacha','Mymensingh','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(620,704,'Nandail','Mymensingh','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(621,932,'Barisal Sadar','Barisal','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(622,935,'Mehendiganj','Barisal','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(623,929,'Babuganj','Barisal','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(624,930,'Bakerganj','Barisal','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(625,931,'Banaripara','Barisal','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(626,658,'Dewanganj','Jamalpur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(627,659,'Islampur(Jamalpur)','Jamalpur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(628,660,'Jamalpur Sadar','Jamalpur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(629,661,'Madarganj','Jamalpur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(630,662,'Melandah','Jamalpur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(631,663,'Sharishabari','Jamalpur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(632,1603,'Subidkhali','Patuakhali','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(633,1606,'Bagabandar','Patuakhali','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(634,1607,'Kalaia','Patuakhali','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(635,1609,'Birpasha','Patuakhali','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(636,949,'Bauphal','Patuakhali','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(637,950,'Dasmina','Patuakhali','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(638,951,'Dumki','Patuakhali','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(639,952,'Galachipa','Patuakhali','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(640,954,'Mirjaganj','Patuakhali','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(641,955,'Patuakhali Sadar','Patuakhali','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(642,677,'Kalkini','Madaripur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(643,678,'Madaripur Sadar','Madaripur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(644,679,'Rajoir','Madaripur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(645,680,'Shibchar','Madaripur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(646,1716,'Kacari (Munshiganj)','Munshiganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(647,1717,'Super Market Mor (Munshiganj)','Munshiganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(648,1718,'Munshir Hat (Munshiganj)','Munshiganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(649,1719,'Mirkadim (Munshiganj)','Munshiganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(650,1720,'Rikabibazar (Munshiganj)','Munshiganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(651,1721,'Sipahipara (Munshiganj)','Munshiganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(652,1722,'Muktarpur (Munshiganj)','Munshiganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(653,688,'Gazaria','Munshiganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(654,690,'Katakhali (Munshiganj)','Munshiganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(655,691,'Serajdikhan','Munshiganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(656,693,'Tangibari','Munshiganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(657,657,'Bakshiganj','Jamalpur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(658,738,'Jhenaigati','Sherpur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(659,739,'Nakla','Sherpur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(660,740,'Nalitabari','Sherpur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(661,741,'Sherpur Sadar','Sherpur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(662,742,'Sribordi','Sherpur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(663,962,'Zia Nagar (Indurkani)','Perojpur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(664,956,'Bhandaria','Perojpur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(665,957,'Kaukhali (Perojpur)','Perojpur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(666,958,'Mothbaria','Perojpur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(667,959,'Nesarabad (Shawrupkathi)','Perojpur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(668,960,'Nazirpur','Perojpur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(669,961,'Pirojpur Sadar','Perojpur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(670,978,'Chandpur Sadar','Chandpur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(671,979,'Faridganj','Chandpur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(672,980,'Haimchar','Chandpur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(673,983,'Matlab (South)','Chandpur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(674,984,'Matlab (North)(Chengarchar)','Chandpur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(675,638,'Alfadanga','Faridpur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(676,639,'Bhanga','Faridpur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(677,640,'Boalmari','Faridpur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(678,641,'Char Bhadrasan','Faridpur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(679,642,'Faridpur Sadar','Faridpur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(680,643,'Madhukhali','Faridpur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:52'),
(681,644,'Nagarkanda','Faridpur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(682,645,'Sadarpur','Faridpur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(683,646,'Saltha','Faridpur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(684,748,'Kalihati','Tangail','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(685,749,'Mirzapur','Tangail','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(686,751,'Nagarpur','Tangail','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(687,752,'Shakhipur','Tangail','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(688,753,'Tangail Sadar','Tangail','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(689,743,'Bashail','Tangail','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(690,744,'Bhuapur','Tangail','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(691,745,'Delduar','Tangail','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(692,945,'Jhalokathi Sadar','Jhalokathi','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(693,946,'Kathalia','Jhalokathi','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(694,947,'Nalchiti','Jhalokathi','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(695,948,'Rajapur (Jhalokathi)','Jhalokathi','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(696,1711,'Konokpur (Moulvibazar)','Moulvibazar','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(697,1712,'Adompur Bazar - Kamalganj','Moulvibazar','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(698,1715,'Kazir Bazar (Moulvibazar)','Moulvibazar','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(699,894,'Kamalganj','Moulvibazar','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(700,896,'Moulvibazar Sadar','Moulvibazar','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(701,897,'Rajnagar','Moulvibazar','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(702,898,'Sreemongal','Moulvibazar','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(703,1702,'Sarkar Bazar (Moulvibazar)','Moulvibazar','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(704,1703,'Notun Bridge (Moulvibazar)','Moulvibazar','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(705,1622,'Shamshernagar (Moulvibazar)','Moulvibazar','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(706,1623,'Sherpur (Moulvibazar)','Moulvibazar','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(707,1704,'Tarapasha Bazar - Rajnagar','Moulvibazar','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(708,1705,'Munshibazar - Kamalganj','Moulvibazar','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(709,1706,'Munshibazar - Rajnagar','Moulvibazar','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(710,1707,'Tengra Bazar - Rajnagar','Moulvibazar','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(711,1708,'Mukam Bazar - Radar Unit (Moulvibazar)','Moulvibazar','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(712,1710,'Patanushar - Shamshernagar','Moulvibazar','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(713,1515,'Chowdhury Bazar (Habiganj)','Habiganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(714,1516,'Sultanmahmudpur','Habiganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(715,889,'Habiganj Sadar','Habiganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(716,1517,'Gatiabazar','Habiganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(717,890,'Lakhai','Habiganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(718,1518,'Mahmudabad','Habiganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(719,1519,'Duliakal','Habiganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(720,892,'Nabiganj','Habiganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(721,1520,'Mohonpur (Habiganj)','Habiganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(722,885,'Ajmeriganj','Habiganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(723,887,'Baniachang','Habiganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(724,1514,'Rajnogor','Habiganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(725,1107,'Badarganj','Rangpur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(726,1108,'Gangachara','Rangpur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(727,1109,'Kaunia (Rangpur)','Rangpur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(728,1110,'Mithapukur','Rangpur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(729,1111,'Pirgacha','Rangpur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(730,1112,'Pirganj(Rangpur)','Rangpur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(731,1113,'Rangpur Sadar','Rangpur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(732,1114,'Taraganj','Rangpur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(733,773,'Keshabpur','Jessore','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(734,774,'Manirampur','Jessore','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(735,775,'Sharsha','Jessore','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(736,769,'Bagherpara','Jessore','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(737,770,'Chowgacha','Jessore','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(738,1129,'Benapole','Jessore','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(739,771,'Jessore Sadar','Jessore','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(740,772,'Jhikargacha','Jessore','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(741,1102,'Atwari (Panchagarh)','Panchagarh','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(742,1103,'Boda','Panchagarh','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(743,1104,'Debiganj','Panchagarh','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(744,1105,'Panchagarh Sadar','Panchagarh','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(745,1106,'Tetulia','Panchagarh','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(746,1099,'Kishoreganj ( Nilphamari)','Nilphamari','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(747,1100,'Nilphamari Sadar','Nilphamari','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(748,1096,'Dimla','Nilphamari','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(749,1097,'Domar','Nilphamari','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(750,1098,'Jaldhaka','Nilphamari','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(751,1021,'Ramu','Cox\'s Bazar','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(752,1023,'Ukhia','Cox\'s Bazar','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(753,1576,'Kalur Dokan','Cox\'s Bazar','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(754,1577,'Alir Jahal Road','Cox\'s Bazar','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(755,966,'Nakhoyngchari','Bandarban','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(756,1578,'Barmis Market','Cox\'s Bazar','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(757,1579,'Bazar Ghata','Cox\'s Bazar','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(758,1580,'Laldighir Par (Cox\'s Bazar)','Cox\'s Bazar','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(759,1581,'Holiday Mor(Cox\'s Bazar)','Cox\'s Bazar','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(760,1582,'Laboni Point','Cox\'s Bazar','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(761,1583,'Sughandha Point','Cox\'s Bazar','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(762,1584,'Marin Drive Road','Cox\'s Bazar','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(763,1585,'Sonar Tara','Cox\'s Bazar','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(764,1586,'Jilonjha','Cox\'s Bazar','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(765,1587,'Tarabaniyer chora','Cox\'s Bazar','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(766,1588,'Romaliyer chora','Cox\'s Bazar','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(767,1589,'Khurushkul','Cox\'s Bazar','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(768,1590,'P M Khali','Cox\'s Bazar','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(769,1591,'Somity Para','Cox\'s Bazar','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(770,1017,'Kolatoli (Cox\'s Bazar)','Cox\'s Bazar','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(771,938,'Bhola Sadar','Bhola','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(772,939,'Borhanuddin','Bhola','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(773,941,'Daulatkhan','Bhola','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(774,944,'Tajumuddin','Bhola','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(775,924,'Bamna','Barguna','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(776,925,'Barguna Sadar','Barguna','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(777,926,'Betagi','Barguna','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(778,927,'Patharghata (Barguna)','Barguna','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(779,876,'Belkuchi','Sirajganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(780,877,'Chowhali','Sirajganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(781,878,'Kamarkhanda','Sirajganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(782,879,'Kazipur','Sirajganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(783,880,'Raiganj','Sirajganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(784,881,'Shahajadpur (Sirajganj)','Sirajganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(785,882,'Sirajganj Sadar','Sirajganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(786,883,'Tarash','Sirajganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(787,884,'Ullapara','Sirajganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(788,857,'Atgharia','Pabna','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(789,858,'Bera','Pabna','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(790,859,'Bhangura','Pabna','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(791,860,'Chatmohar','Pabna','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(792,861,'Faridpur ( Pabna )','Pabna','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(793,863,'Pabna Sadar','Pabna','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(794,864,'Santhia','Pabna','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(795,865,'Sujanagar','Pabna','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(796,1616,'Banwarinagar (Pabna)','Pabna','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(797,1617,'Debottar (Pabna)','Pabna','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(798,1618,'Kashinathpur (Pabna)','Pabna','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(799,1619,'Nakalia (Pabna)','Pabna','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(800,1621,'Sagarkandi (Pabna)','Pabna','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(801,855,'Natore Sadar','Natore','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(802,856,'Singra','Natore','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(803,851,'Baghatipara','Natore','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(804,852,'Baraigram','Natore','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(805,853,'Gurudaspur','Natore','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(806,854,'Lalpur','Natore','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(807,840,'Atrai','Naogaon','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(808,841,'Badalgachi','Naogaon','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(809,845,'Naogaon Sadar','Naogaon','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(810,849,'Raninagar','Naogaon','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(811,835,'Akkelpur','Joypurhat','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(812,836,'Joypurhat Sadar','Joypurhat','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(813,837,'Kalai','Joypurhat','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(814,838,'Khetlal','Joypurhat','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(815,839,'Panchbibi','Joypurhat','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(816,811,'Assasuni','Satkhira','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(817,812,'Debhata','Satkhira','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(818,813,'Kaliganj(Satkhira)','Satkhira','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(819,814,'Kolaroa','Satkhira','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(820,815,'Satkhira Sadar','Satkhira','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(821,816,'Shyamnagar','Satkhira','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(822,817,'Tala','Satkhira','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(823,805,'Gangni','Meherpur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(824,806,'Meherpur Sadar','Meherpur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(825,807,'Mujibnagar','Meherpur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(826,734,'Gosairhat','Shariatpur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(827,735,'Zajira','Shariatpur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(828,736,'Naria','Shariatpur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(829,737,'Shariatpur Sadar','Shariatpur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(830,732,'Bhedarganj','Shariatpur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(831,733,'Damudiya','Shariatpur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(832,727,'Baliakandi','Rajbari','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(833,728,'Goalunda','Rajbari','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(834,729,'Pangsha','Rajbari','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(835,730,'Rajbari Sadar','Rajbari','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(836,731,'Kalukhali','Rajbari','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(837,681,'Daulatpur(Manikganj)','Manikganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(838,682,'Ghior','Manikganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(839,683,'Harirampur (Manikganj)','Manikganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(840,684,'Manikganj Sadar','Manikganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(841,685,'Saturia','Manikganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(842,686,'Shibalaya','Manikganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(843,687,'Singair','Manikganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(844,652,'Gopalganj Sadar','Gopalganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(845,653,'Kasiani','Gopalganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(846,654,'Kotalipara','Gopalganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(847,655,'Maksudpur','Gopalganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(848,656,'Tungipara','Gopalganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(849,1115,'Baliadangi','Thakurgaon','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(850,1134,'Shibganj (Thakurgaon Sadar)','Thakurgaon','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(851,1116,'Haripur','Thakurgaon','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(852,1117,'Pirganj(Thakurgaon)','Thakurgaon','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(853,1118,'Ranishankail','Thakurgaon','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(854,1119,'Thakurgaon Sadar','Thakurgaon','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(855,717,'Atpara','Netrokona','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(856,718,'Barhatta','Netrokona','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(857,719,'Durgapur(Netrokona)','Netrokona','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(858,720,'Kalmakanda','Netrokona','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(859,721,'Kendua','Netrokona','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(860,722,'Khaliajuri','Netrokona','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(861,723,'Madan','Netrokona','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(862,724,'Mohanganj','Netrokona','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(863,725,'Netrokona Sadar','Netrokona','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(864,726,'Purbadhala (Netrokona)','Netrokona','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(865,903,'Dharmapasha','Sunamganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(866,712,'Monohardi','Norshingdi','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(867,713,'Velanogor (Narsingdi)','Norshingdi','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(868,714,'Palash','Norshingdi','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(869,716,'Shibpur','Norshingdi','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(870,1505,'Madhabdi (Narsingdi)','Norshingdi','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(871,1506,'Babur Haat (Narsingdi)','Norshingdi','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(872,1507,'Pachdona More (Narsingdi)','Norshingdi','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(873,1508,'Shaheprotab More (Narsingdi)','Norshingdi','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(874,1509,'West Brammondi (Narsingdi)','Norshingdi','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(875,1510,'East Brammondi (Narsingdi)','Norshingdi','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(876,1511,'Songita Bazar (Narsingdi)','Norshingdi','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(877,1512,'Shatirpara','Norshingdi','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(878,1513,'Hasnabad Bazar (Narsingdi)','Norshingdi','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(879,1024,'Chagalnayya','Feni','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(880,1025,'Daganbhuiyan','Feni','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(881,1026,'Feni Sadar','Feni','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(882,1027,'Parshuram','Feni','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(883,1028,'Fulgazi','Feni','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(884,1029,'Sonagazi','Feni','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(885,1072,'Khanshama','Dinajpur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(886,1074,'Parbatipur','Dinajpur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(887,1483,'College mor (Dinajpur)','Dinajpur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(888,1484,'Boromath (Dinajpur)','Dinajpur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(889,1485,'Pulhat','Dinajpur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(890,1486,'Newtown (Dinajpur)','Dinajpur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(891,1487,'Lilir mor','Dinajpur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(892,1488,'Modern mor (Dinajpur)','Dinajpur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(893,1063,'Birganj','Dinajpur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(894,1064,'Birol','Dinajpur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(895,1065,'Bochaganj','Dinajpur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(896,1066,'Chirirbandar','Dinajpur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(897,1067,'Baluadanga (Dinajpur)','Dinajpur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(898,1071,'Kaharole','Dinajpur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(899,1075,'Fulchari','Gaibandha','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(900,1076,'Gaibandha Sadar','Gaibandha','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(901,1077,'Gobindaganj ( Gaibandha )','Gaibandha','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(902,1078,'Palashbari','Gaibandha','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(903,1079,'Sadullapur','Gaibandha','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(904,1080,'Shaghatta','Gaibandha','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(905,1081,'Sundarganj','Gaibandha','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(906,764,'Alamdanga','Chuadanga','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(907,765,'Chuadanga Sadar','Chuadanga','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(908,766,'Damurhuda','Chuadanga','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(909,767,'Jibannagar','Chuadanga','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(910,866,'Bagha','Rajshahi','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(911,867,'Bagmara (Rajshahi)','Rajshahi','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(912,868,'Charghat','Rajshahi','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(913,869,'Durgapur(Rajshahi)','Rajshahi','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(914,870,'Godagari','Rajshahi','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(915,871,'Mohanpur (Rajshahi)','Rajshahi','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(916,872,'Paba','Rajshahi','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(917,873,'Putia','Rajshahi','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(918,874,'Tanore','Rajshahi','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(919,875,'Sadar','Rajshahi','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(920,1121,'Rajshahi Shadar','Rajshahi','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(921,801,'Magura Sadar','Magura','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(922,802,'Mohammadpur (Magura)','Magura','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(923,803,'Shalikha','Magura','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(924,804,'Sreepur (Magura)','Magura','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(925,808,'Kalia','Narail','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(926,809,'Lohagara(Narail)','Narail','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(927,810,'Narail Sadar','Narail','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(928,1053,'Barkal','Rangamati','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(929,1054,'Belaichari','Rangamati','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(930,1055,'Jurachari','Rangamati','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(931,1056,'Kaptai','Rangamati','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(932,1057,'Kawkhali (Rangamati)','Rangamati','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(933,1058,'Langadu','Rangamati','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(934,1059,'Naniarchar','Rangamati','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(935,1060,'Rajasthali','Rangamati','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(936,1061,'Rangamati Sadar','Rangamati','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(937,1416,'Kaptai Kaptai Project','Rangamati','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(938,1417,'Kaptai Nuton Bazar','Rangamati','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(939,1418,'Kaptai Sadar','Rangamati','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(940,800,'Mirpur (Kushtia)','Kushtia','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(941,795,'Bheramara','Kushtia','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(942,796,'Daulatpur (Kushtia)','Kushtia','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(943,797,'Khoksha','Kushtia','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(944,798,'Kumarkhali','Kushtia','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(945,799,'Kushtia Sadar','Kushtia','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(946,830,'Bholahat','Chapai Nawabganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(947,831,'Gomastapur','Chapai Nawabganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(948,832,'Nachole','Chapai Nawabganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(949,833,'Nawabganj Sadar','Chapai Nawabganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(950,834,'Shipganj ( Chapai )','Chapai Nawabganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(951,1126,'Chapai Nawabganj Sadar','Chapai Nawabganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(952,776,'Kotchandpur','Jhenaidah','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(953,777,'Harinakunda','Jhenaidah','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(954,778,'Jhenaidah Sadar','Jhenaidah','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(955,779,'Kaliganj(Jhenaidah)','Jhenaidah','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(956,780,'Moheshpur','Jhenaidah','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(957,781,'Shailkupa','Jhenaidah','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(958,1045,'Companiganj (Noakhali)','Noakhali','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(959,1046,'Hatiya','Noakhali','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(960,1047,'Maijdee (Noakhali)','Noakhali','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(961,1048,'Senbag','Noakhali','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(962,1049,'Sonaimuri','Noakhali','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(963,1050,'Subarnachar','Noakhali','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(964,1051,'Kabir Hat','Noakhali','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(965,1043,'Begumganj','Noakhali','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(966,1044,'Chatkhil','Noakhali','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(967,1601,'Alexandar','Laksmipur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(968,1038,'Laksmipur Sadar','Laksmipur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(969,1039,'Ramgati','Laksmipur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(970,1040,'Ramganj','Laksmipur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(971,1041,'Raipur (Lakshmipur)','Laksmipur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(972,1042,'Kamalnagar','Laksmipur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(973,1082,'Bhurungamari','Kurigram','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(974,1083,'Chilmary','Kurigram','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(975,1084,'Fulbari (Kurigram)','Kurigram','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(976,1085,'Kurigram Sadar','Kurigram','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(977,1086,'Nageswari','Kurigram','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(978,1087,'Rajarhat','Kurigram','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(979,1088,'Rajibpur','Kurigram','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(980,1089,'Rowmari','Kurigram','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(981,1090,'Ulipur','Kurigram','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(982,676,'Tarail','Kishoreganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(983,668,'Itna','Kishoreganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(984,669,'Karimganj','Kishoreganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(985,670,'Katiadi','Kishoreganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(986,671,'Kishoreganj Sadar','Kishoreganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(987,664,'Austogram','Kishoreganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(988,665,'Bajitpur','Kishoreganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(989,673,'Mithamain','Kishoreganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(990,667,'Hosainpur','Kishoreganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(991,674,'Nikli','Kishoreganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(992,675,'Pakundia','Kishoreganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(993,828,'Sonatola','Bogra','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(994,829,'Shajahanpur (Bogura)','Bogra','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(995,818,'Adamdighi (Bogra)','Bogra','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(996,819,'Bogra Sadar','Bogra','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(997,820,'Dhunot','Bogra','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(998,821,'Dhubchanchia','Bogra','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(999,822,'Gabtali (Bogra)','Bogra','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(1000,823,'Kahaloo','Bogra','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(1001,824,'Nandigram','Bogra','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(1002,825,'Sariakandi','Bogra','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(1003,826,'Sherpur (Bogra)','Bogra','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(1004,827,'Shibganj ( Bogra )','Bogra','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(1005,768,'Noapara (Jessore)','Jessore','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(1006,1052,'Baghaichari','Rangamati','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(1007,1030,'Dighinala','Khagrachari','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(1008,1031,'Khagrachari Sadar','Khagrachari','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(1009,1032,'Laksmichari','Khagrachari','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(1010,1033,'Mohalchari','Khagrachari','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(1011,1034,'Manikchari','Khagrachari','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(1012,1035,'Matiranga','Khagrachari','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(1013,1036,'Panchari','Khagrachari','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(1014,1037,'Ramgor','Khagrachari','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(1015,689,'Lauhajang','Munshiganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(1016,692,'Sreenagar','Munshiganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(1017,359,'Dohar','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(1018,446,'Nawabgonj (Dhaka)','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(1019,1629,'Chandura (Brahmanbaria)','Brahmanbaria','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(1020,1630,'Singarbil (Brahmanbaria)','Brahmanbaria','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(1021,1521,'Kawtoly (Brahmanbaria)','Brahmanbaria','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(1022,1631,'Awliya Bazar (Brahmanbaria)','Brahmanbaria','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(1023,1522,'T.A Road (Brahmanbaria)','Brahmanbaria','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(1024,1632,'Poirtola (Brahmanbaria)','Brahmanbaria','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(1025,1523,'Sarak bazar (Brahmanbaria)','Brahmanbaria','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(1026,1633,'Ulchapara (Brahmanbaria)','Brahmanbaria','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(1027,1524,'Moddopara (Brahmanbaria)','Brahmanbaria','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(1028,1634,'Bhadugor (Brahmanbaria)','Brahmanbaria','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(1029,1525,'Birashar (Brahmanbaria)','Brahmanbaria','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(1030,1635,'Kumarshil more (Brahmanbaria)','Brahmanbaria','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(1031,1526,'Medda (Brahmanbaria)','Brahmanbaria','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(1032,1527,'Gatura- Pirbari (Brahmanbaria)','Brahmanbaria','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(1033,970,'Akhaura','Brahmanbaria','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(1034,973,'Paikpara (Brahmanbaria Sadar)','Brahmanbaria','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(1035,1626,'Bijoynagor (Brahmanbaria)','Brahmanbaria','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(1036,1627,'Shahbajpur (Brahmanbaria)','Brahmanbaria','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(1037,1628,'Sohilpur (Brahmanbaria)','Brahmanbaria','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(1038,1101,'Saidpur','Nilphamari','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(1039,755,'Bagerhat Sadar','Bagerhat','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(1040,756,'Chitalmari','Bagerhat','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(1041,757,'Fakirhat (Bagerhat)','Bagerhat','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(1042,758,'Kachua(Bagerhat)','Bagerhat','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(1043,759,'Mollarhat','Bagerhat','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(1044,760,'Mongla','Bagerhat','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(1045,761,'Morelganj','Bagerhat','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(1046,762,'Rampal','Bagerhat','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(1047,763,'Sarankhola','Bagerhat','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(1048,1091,'Aditmari','Lalmonirhat','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(1049,1092,'Hatibandha (Lalmonirhat)','Lalmonirhat','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(1050,1093,'Kaliganj(Lalmonirhat)','Lalmonirhat','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(1051,1094,'Lalmonirhat Sadar','Lalmonirhat','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(1052,1095,'Patgram','Lalmonirhat','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(1053,1489,'Old bustand (Sunamganj)','Sunamganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(1054,1490,'Kazirpoint (Sunamganj)','Sunamganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(1055,1491,'Hason Nagar','Sunamganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(1056,1492,'Moddho bazar (Sunamganj)','Sunamganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(1057,1493,'wazkhali','Sunamganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(1058,900,'Biswambharpur','Sunamganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(1059,902,'Derai','Sunamganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(1060,905,'Jagannathpur','Sunamganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(1061,906,'Jamalganj','Sunamganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(1062,907,'Sulla','Sunamganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(1063,908,'Traffic Point (Sunamganj Sadar)','Sunamganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(1064,909,'Taherpur','Sunamganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(1065,910,'South Sunamganj','Sunamganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(1066,964,'Bandarban Sadar','Bandarban','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(1067,967,'Rawanchari','Bandarban','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(1068,968,'Ruma','Bandarban','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(1069,1130,'soho area','Bandarban','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(1070,969,'Thanchi','Bandarban','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(1071,1598,'SDA','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(1072,1391,'Fatikchhari Harualchhari','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(1073,1451,'Raozan Fatepur','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(1074,1392,'Fatikchhari Najirhat','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:53'),
(1075,990,'Fatikchari','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1076,1452,'Raozan Guzra Noapara','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1077,1393,'Fatikchhari Nanupur','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1078,991,'Hathazari','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1079,1453,'Raozan jagannath Hat','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1080,1454,'Raozan Kundeshwari','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1081,1394,'Fatikchhari Narayanhat','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1082,1455,'Raozan Mohamuni','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1083,1456,'Raozan Pouroshobha','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1084,995,'Rangunia','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1085,1457,'Rauzan Gahira','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1086,996,'Raojan','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1087,1399,'Chattogram University','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1088,1400,'Hathazari Fatahabad','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1089,1401,'Hathazari Gorduara','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1090,1402,'Hathazari Katirhat','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1091,1403,'Hathazari Madrasa','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1092,1404,'Hathazari Mirzapur','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1093,1463,'Sayad Bari','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1094,1405,'Hathazari Nuralibari','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1095,1432,'Muradnagar - Hathazari','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1096,1406,'Hathazari Yunus Nagar','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1097,1381,'Dakkhin Ghatchak','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1098,1414,'Kadeer Nagar','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1099,1415,'Kaptai Chandraghona','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1100,1472,'Uttar Gatchak','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1101,1445,'Rangunia Dhamair','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1102,1446,'Rangunia Sadar','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1103,1447,'Ranir Hat','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1104,1448,'Raozan B.I.T Post Office','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1105,1389,'Fakirkill','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1106,1449,'Raozan Beenajuri','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1107,1390,'Fatikchhari Bhandar Sharif','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1108,1450,'Raozan Dewanpur','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1109,1424,'Mirsharai Abutorab','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1110,1425,'Mirsharai Azampur','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1111,1426,'Mirsharai Bharawazhat','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1112,1427,'Mirsharai Darrogahat','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1113,993,'Mirsarai','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1114,1428,'Mirsharai Joarganj','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1115,1429,'Mirsharai Korerhat','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1116,1430,'Mirsharai Mohazanhat','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1117,1364,'Boalkhali Sakpura','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1118,994,'Patiya','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1119,1365,'Boalkhali Saroatoli','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1120,1138,'Karnaphuli','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1121,1412,'Jaldia Marine Academy','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1122,1413,'Jaldia Merine Accade','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1123,1441,'Patiya Budhpara','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1124,1442,'Patiya Sadar','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1125,1356,'Anawara Battali','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1126,1357,'Anawara Paroikora','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1127,1359,'Boalkhali Charandwip','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1128,1360,'Boalkhali Iqbal Park','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1129,986,'Anwara','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1130,1361,'Boalkhali Kadurkhal','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1131,1362,'Boalkhali Kanungopara','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1132,1363,'Boalkhali Sadar','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1133,988,'Boalkhali','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1134,1018,'Kutubdia','Cox\'s Bazar','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1135,963,'Ali Kadam','Bandarban','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1136,1019,'Moheshkhali','Cox\'s Bazar','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1137,1020,'Pekua','Cox\'s Bazar','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1138,965,'Lama','Bandarban','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1139,1016,'Chakoria','Cox\'s Bazar','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1140,919,'Zakiganj','Sylhet','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1141,893,'Barlekha','Moulvibazar','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1142,899,'Juri','Moulvibazar','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1143,912,'Beanibazar','Sylhet','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1144,972,'Bancharampur (Nabinagar)','Brahmanbaria','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1145,974,'Kashba (Nabinagar)','Brahmanbaria','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1146,975,'Nabinagar (Nabinagar Hub)','Brahmanbaria','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1147,933,'Gournadi (Barisal)','Barisal','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1148,934,'Hijla','Barisal','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1149,936,'Muladi','Barisal','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1150,937,'Wazirpur','Barisal','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1151,928,'Agailjhara','Barisal','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1152,1073,'Nawabganj (Dinajpur)','Dinajpur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1153,1062,'Birampur','Dinajpur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1154,1068,'Phulbari (Dinajpur)','Dinajpur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1155,1069,'Ghoraghat','Dinajpur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1156,1070,'Hakimpur','Dinajpur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1157,711,'Belabo','Norshingdi','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1158,715,'Raipura (Bhairab)','Norshingdi','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1159,971,'Ashuganj (Bhairab)','Brahmanbaria','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1160,976,'Nasirnagar (Bhairab Hub)','Brahmanbaria','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1161,977,'Sarail (Bhairab Hub)','Brahmanbaria','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1162,672,'Kuliarchar','Kishoreganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1163,666,'Bhairab','Kishoreganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1164,1482,'Gouripur (Comilla)','Comilla','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1165,1006,'Daudkandi','Comilla','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1166,1008,'Homna','Comilla','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1167,1010,'Meghna','Comilla','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1168,1013,'Titas','Comilla','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1169,901,'Chattak','Sunamganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1170,904,'Dowarabazar','Sunamganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1171,709,'Rupganj','Narayanganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1172,175,'Bawaliapara (Narayangaj)','Narayanganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1173,706,'Araihazar','Narayanganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1174,1478,'Vobanipur Gazipur','Gazipur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1175,1570,'Rajabari Sreepur','Gazipur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1176,1479,'Barmi Sreepur (Gazipur)','Gazipur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1177,1480,'Fulbaria Gazipur','Gazipur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1178,650,'Kapasia','Gazipur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1179,1555,'Porabari Bazar','Gazipur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1180,651,'Sreepur(Gazipur)','Gazipur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1181,1556,'Dhaladia Gazipur','Gazipur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1182,1557,'Hotapara','Gazipur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1183,1558,'Bager bazar','Gazipur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1184,1559,'Member Bari Gazipur','Gazipur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1185,1560,'Gorgoria masterbari','Gazipur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1186,1561,'Mc Bazar','Gazipur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1187,1562,'Nayanpur Sreepur','Gazipur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1188,1475,'Mawna','Gazipur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1189,1567,'Joyna Bazar','Gazipur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1190,1476,'Rajendrapur','Gazipur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1191,1477,'Bhawal Gazipur','Gazipur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1192,1004,'Chowddagram','Comilla','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1193,1009,'Laksam','Comilla','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1194,1012,'Nangolkot','Comilla','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1195,1014,'Monoharganj','Comilla','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1196,787,'Koira','Khulna','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1197,788,'Paikgacha','Khulna','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1198,1592,'Amadee Bazar','Khulna','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1199,1593,'kopilmuni Bazar','Khulna','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1200,888,'Chunarughat (Shayestaganj Hub)','Habiganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1201,1599,'Shayestaganj (Shayestaganj Hub)','Habiganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1202,891,'Madhabpur (Shayestaganj Hub)','Habiganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1203,1614,'Ranigaon (Shayestaganj Hub)','Habiganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1204,1615,'Putijuri (Shayestaganj Hub)','Habiganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1205,886,'Bahubal (Shayestaganj Hub)','Habiganj','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1206,746,'Ghatail','Tangail','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1207,747,'Gopalpur (Tangail)','Tangail','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1208,750,'Modhupur','Tangail','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1209,754,'Dhanbari','Tangail','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1210,694,'Valuka','Mymensingh','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1211,698,'Goffargaon','Mymensingh','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1212,705,'Trishal','Mymensingh','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1213,1022,'Teknaf','Cox\'s Bazar','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1214,997,'Sandwip (Guptachara)','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1215,1459,'Sandwip Shiberhat','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1216,1460,'Sandwip Urirchar','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1217,1610,'Sandwip (Enam Nagar)','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1218,1611,'Sandwip (Complex)','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1219,1612,'Sandwip (Kalapaniya)','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1220,1613,'Sandwip (Gasua)','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1221,842,'Dhamoirhat','Naogaon','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1222,843,'Manda(Naogaon)','Naogaon','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1223,844,'Mahadebpur','Naogaon','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1224,846,'Niamatpur','Naogaon','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1225,847,'Patnitala','Naogaon','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1226,848,'Porsha','Naogaon','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1227,850,'Shapahar','Naogaon','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1228,981,'Hajiganj (Chandpur)','Chandpur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1229,982,'Kachua(Chandpur)','Chandpur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1230,985,'Shahrasti','Chandpur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1231,862,'Iswardi','Pabna','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1232,1620,'Pakshi (Pabna)','Pabna','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1233,417,'Konapara','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:25'),
(1234,278,'Demra','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:26'),
(1235,1723,'Basher pull (Demra)','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:26'),
(1236,1724,'Bamuail (Demra)','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:26'),
(1237,1725,'Sharuliya (Demra)','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:26'),
(1238,1726,'Rani mohol (Demra)','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:26'),
(1239,1727,'Staffquater (Demra)','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:26'),
(1240,1728,'Demra bazar (Demra)','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:26'),
(1241,1729,'Hajinogar (Demra)','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:26'),
(1242,1730,'Boxnagar (Demra)','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:26'),
(1243,1731,'Badsha mia road (Demra)','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:26'),
(1244,1732,'Muslimnagar (Demra)','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:26'),
(1245,413,'Matuail','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:26'),
(1246,1305,'Mollartek','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:26'),
(1247,1150,'Mollapara','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:26'),
(1248,68,'Sonali Bank Staff Quarter','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:26'),
(1249,1306,'Gawair','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:26'),
(1250,1151,'Azampur (East)','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:26'),
(1251,1307,'Kosaibari','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:26'),
(1252,70,'Kawla','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:26'),
(1253,1308,'Prembagan','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:26'),
(1254,71,'Naddapara','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:26'),
(1255,1309,'Kachkura','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:26'),
(1256,1310,'Helal Market','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:26'),
(1257,1311,'Chamur Khan','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:26'),
(1258,1312,'Society','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:26'),
(1259,1313,'Ismailkholla','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:26'),
(1260,1292,'Uttarkhan Mazar','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:26'),
(1261,1314,'Masterpara','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:26'),
(1262,1159,'Azampur (West) (Uttara)','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:26'),
(1263,1293,'Dakshinkhan Bazar','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:26'),
(1264,1315,'Munda','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:26'),
(1265,1294,'Hajipara-Dakshinkhan','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:26'),
(1266,1316,'Barua','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:26'),
(1267,1296,'Joynal Market','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:26'),
(1268,1297,'Johura Market','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:26'),
(1269,1298,'Habib Market','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:26'),
(1270,1319,'Ainusbag-Dakshinkhan','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:26'),
(1271,46,'Ainusbag','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:26'),
(1272,47,'Uttarkhan','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:26'),
(1273,48,'Dakshinkhan','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:26'),
(1274,49,'Fayedabad','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:26'),
(1275,1299,'BDR Market-House Building','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:26'),
(1276,50,'Ashkona','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:26'),
(1277,1651,'Uttara Sector - 2','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:26'),
(1278,1300,'BDR Market-Sector 6','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:26'),
(1279,1652,'Uttara Sector - 6','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:26'),
(1280,1301,'Moinartek','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:26'),
(1281,1653,'Uttara Sector - 8','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:26'),
(1282,1302,'Atipara','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:26'),
(1283,1147,'Uttara Sector-4','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:26'),
(1284,1303,'Kot Bari','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:26'),
(1285,1148,'Goaltek','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:26'),
(1286,1304,'Dewan City','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:26'),
(1287,1149,'Chalabon','Dhaka','80','200','2021-10-31 19:02:40','2022-12-10 04:25:26'),
(1288,940,'Charfession','Bhola','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1289,942,'Lalmohan','Bhola','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1290,943,'Manpura','Bhola','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1291,1569,'Chondra Gazipur','Gazipur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1292,1738,'Goailbari bazar (Gazipur)','Gazipur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1293,1739,'Hatimara (Gazipur)','Gazipur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1294,1740,'Sardagonj (Gazipur)','Gazipur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1295,1741,'Ambagh (Gazipur)','Gazipur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1296,1742,'Fulbaria bazar (Gazipur)','Gazipur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1297,1743,'Madhobpur (Gazipur)','Gazipur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1298,1744,'Kabirpur (Gazipur)','Gazipur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1299,1745,'Walton high-tech (Gazipur)','Gazipur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1300,1746,'Walton micro-tech (Gazipur)','Gazipur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1301,1747,'Mollapara (Gazipur)','Gazipur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1302,1748,'Jalsukha (Gazipur)','Gazipur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1303,1749,'Gosatra (Gazipur)','Gazipur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1304,648,'Kaliakoir','Gazipur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1305,1563,'Konabari','Gazipur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1306,1564,'Mouchak Gazipur','Gazipur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1307,1734,'Vannara (Gazipur)','Gazipur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1308,1565,'Kashempur','Gazipur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1309,1566,'Shafipur','Gazipur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1310,1735,'Sardarganj (Gazipur)','Gazipur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1311,1736,'Sultan Market (Gazipur)','Gazipur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1312,1568,'Pollibiddut Gazipur','Gazipur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1313,1737,'Baroipara (Gazipur)','Gazipur','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1314,1602,'Kuakata','Patuakhali','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1315,1604,'Khepupara','Patuakhali','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1316,1605,'Payra port','Patuakhali','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1317,923,'Amtali','Barguna','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1318,1608,'Mahipur','Patuakhali','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1319,953,'Kalapara','Patuakhali','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1320,1750,'Companyganj (Comilla)','Comilla','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1321,1011,'Muradnagar - Cumilla','Comilla','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1322,1713,'Tilagao - Kulaura','Moulvibazar','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1323,1714,'Bhatera - Kulaura','Moulvibazar','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1324,895,'Kulaura','Moulvibazar','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1325,1624,'Baramchal (Kulaura)','Moulvibazar','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1326,1625,'Robir Bazar (Kulaura)','Moulvibazar','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1327,1709,'Brahman Bazar - Kulaura','Moulvibazar','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1328,989,'Chandanaish','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1329,992,'Lohagara','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1330,1461,'Satkania Baitul Ijjat','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1331,1462,'Satkania Bazalia','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1332,998,'Satkania','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1333,1408,'Jaldi Banigram','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1334,1409,'Jaldi Gunagari','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1335,1410,'Jaldi Khan Bahadur','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1336,1411,'Jaldi Sadar','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1337,1384,'East Joara Barma','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1338,1385,'East Joara Dohazari','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1339,1386,'East Joara East Joara','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1340,1387,'East Joara Gachbaria','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1341,1421,'Lohagara Chunti','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1342,1422,'Lohagara Padua','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54'),
(1343,987,'Banshkhali','Chittagong','150','510','2021-10-31 19:02:40','2022-12-10 04:22:54');
/*!40000 ALTER TABLE `districts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecom_pixels`
--

DROP TABLE IF EXISTS `ecom_pixels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `ecom_pixels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecom_pixels`
--

LOCK TABLES `ecom_pixels` WRITE;
/*!40000 ALTER TABLE `ecom_pixels` DISABLE KEYS */;
INSERT INTO `ecom_pixels` VALUES
(3,'448877',1,'2024-11-19 19:00:59','2025-01-10 02:49:46');
/*!40000 ALTER TABLE `ecom_pixels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `general_settings`
--

DROP TABLE IF EXISTS `general_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `general_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(55) NOT NULL,
  `white_logo` varchar(255) NOT NULL,
  `dark_logo` varchar(255) NOT NULL,
  `favicon` varchar(255) NOT NULL,
  `copyright` varchar(155) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `hot_deal_end_date` date DEFAULT NULL,
  `flash_sale_end_date` date DEFAULT NULL,
  `top_headline` text DEFAULT NULL,
  `checkout_note` text DEFAULT NULL,
  `order_policy` text DEFAULT NULL,
  `show_all_products` int(11) NOT NULL DEFAULT 1,
  `show_category_wise_products` int(11) NOT NULL DEFAULT 1,
  `header_code` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `facebook_verification` longtext DEFAULT NULL,
  `google_verification` longtext DEFAULT NULL,
  `meta_description` longtext DEFAULT NULL,
  `meta_keyword` longtext DEFAULT NULL,
  `og_baner` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `general_settings`
--

LOCK TABLES `general_settings` WRITE;
/*!40000 ALTER TABLE `general_settings` DISABLE KEYS */;
INSERT INTO `general_settings` VALUES
(2,'Organic Shop','public/uploads/settings/1736427395-logo.webp','public/uploads/settings/1736427405-footer.webp','public/uploads/settings/1736427256-fav.webp',NULL,'<b>sadf</b>','2024-11-10','2024-11-09','Organic অনলাইন শপে আপনাকে স্বাগতম ||\r\nঅনলাইনে আস্থা ও বিশ্বস্ততার সাথে  সারা বাংলাদেশে হোম ডেলিভারী দিয়ে থাকি\r\nঅর্ডার করতে অগ্রিম টাকা দিতে হবে না\r\nএ্যাডভান্স বিকাশ পেমেন্টে ৫% ডিসকাউন্ট\r\n৩-৫ দিনে সারাদেশে হোম ডেলিভারী দেওয়া হয়\r\nক্যাশঅন ডেলিভারীর সুবিধা রয়েছে, তাই অর্ডার করুন নিশ্চিন্তে\r\nধন্যবাদ','<p class=\"text-danger\">                                বিঃদ্রঃ-  দয়া করে ১০০% নিশ্চিত হয়ে অর্ডার করবেন। ছবি এবং বর্ণনার সাথে পণ্যের মিল থাকা সত্যেও আপনি পণ্য গ্রহন করতে না চাইলে, কুরিয়ার চার্জ ১২০ টাকা কুরিয়ার ডেলিভারি ম্যানকে প্রদান করে পণ্য সাথে সাথে রিটার্ন করবেন। অযথা অর্ডার করা থেকে বিরত থাকুন, কারন আপনার মোবাইল নাম্বার, এড্রেস এবং ডিভাইস আইপি নাম্বার দেখা যায় ।\r\n</p><p class=\"text-danger\"><b>একই ডেলিভারি চার্জে আরো প্রোডাক্ট নিতে <a href=\"/shop\" style=\"color: blue\">ক্লিক করুন</a>\r\n                            </b></p>','<div><b style=\"background-color: rgb(255, 255, 0);\">বিক্রিত পণ্য ফেরত নেয়া হয় না তবে নিন্ম লিখিত ক্ষেত্রে পণ্য সার্ভিসিং পন্য পরিবর্তন বা মুল্য ফেরত প্রযোজ্য।</b></div><ul><li>আপনার যত প্রশ্ন আছে তা বর্ননার সাথে মিলিয়ে অথবা আমাদের কাছ থেকে জেনে পন্য অর্ডার করুন।</li><li>ছবি এবং বর্ণনার সাথে পন্যের মিল থাকলে পণ্য ফেরত নেয়া হবে না ।</li><li>তবে আপনি চাইলে আপনার গ্রহন করা পন্যের সম মুল্যের বা বেশি মুল্যের পণ্য নিতে পারবেন (যে টাকা বেশি হবে তা প্রদান করতে হবে ) । কম মুল্যের পণ্য নেয়া যাবে না ।</li><li>পণ্য আনা নেয়ার খরচ আপনাকে দিতে হবে।</li><li>যে সকল পন্যে ওয়ারেন্টি আছে তার ওয়ারেন্টি সার্ভিস আমরা প্রদান করবো। তবে কিছু কিছু ক্ষেত্রে পন্যের ব্রান্ড আপনাকে সার্ভিস প্রদান করবে তবে সে ক্ষেত্রে আপনার নিকটস্থ সার্ভিস পয়েন্ট থেকে সার্ভিস নিতে পারবেন।</li><li>পণ্য সার্ভিস করতে যাওয়া আসা বা পাঠানো এবং রিটার্ন করার খরজ আপনাকে বহন করতে হবে।</li><li>১০০% নিশ্চিত হয়ে অর্ডার করুন, কোন কিছু জানার থাকলে কল করুন। Hotline :&nbsp;&nbsp;+8801511777744</li></ul>',1,1,NULL,1,'2023-01-21 12:01:07','2025-01-20 13:38:40','https://itnayeem.com.bd','https://itnayeem.com.bd','IT Nayeem','IT Nayeem','public/uploads/settings/1736426658-10ab4f104344643.5f662d7a20a4d.webp');
/*!40000 ALTER TABLE `general_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `google_tag_managers`
--

DROP TABLE IF EXISTS `google_tag_managers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `google_tag_managers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `google_tag_managers`
--

LOCK TABLES `google_tag_managers` WRITE;
/*!40000 ALTER TABLE `google_tag_managers` DISABLE KEYS */;
INSERT INTO `google_tag_managers` VALUES
(3,'W77DNQ3S',1,'2024-11-09 09:19:36','2024-11-10 14:30:34');
/*!40000 ALTER TABLE `google_tag_managers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ip_blocks`
--

DROP TABLE IF EXISTS `ip_blocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `ip_blocks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ip_no` varchar(255) NOT NULL,
  `reason` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ip_blocks`
--

LOCK TABLES `ip_blocks` WRITE;
/*!40000 ALTER TABLE `ip_blocks` DISABLE KEYS */;
/*!40000 ALTER TABLE `ip_blocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES
(1,'2014_10_12_000000_create_users_table',1),
(2,'2014_10_12_100000_create_password_resets_table',1),
(3,'2019_08_19_000000_create_failed_jobs_table',1),
(4,'2019_12_14_000001_create_personal_access_tokens_table',1),
(5,'2023_01_11_113936_create_permission_tables',1),
(8,'2023_01_21_150317_create_general_settings_table',3),
(9,'2023_01_22_140830_create_social_media_table',4),
(10,'2023_01_22_153053_create_contacts_table',5),
(12,'2023_01_22_171430_create_categories_table',6),
(17,'2023_02_09_082622_create_attributes_table',7),
(21,'2023_02_11_065126_create_brands_table',8),
(23,'2023_02_20_022411_create_customers_table',9),
(24,'2023_02_21_083509_create_banners_table',8),
(25,'2023_02_21_083647_create_banner_categories_table',8),
(28,'2023_01_11_114621_create_products_table',10),
(29,'2023_02_09_091624_create_productimages_table',10),
(31,'2023_02_22_095626_create_districts_table',11),
(48,'2023_02_22_150326_create_orders_table',12),
(49,'2023_02_22_150339_create_order_details_table',12),
(50,'2023_02_22_150351_create_shippings_table',12),
(51,'2023_02_22_150400_create_payments_table',12),
(53,'2023_02_25_022224_create_create_pages_table',13),
(56,'2023_02_27_095310_create_reviews_table',14),
(57,'2023_02_27_104954_create_order_types_table',15),
(58,'2023_03_06_160934_create_campaigns_table',16),
(59,'2023_03_13_121325_create_productprices_table',17),
(60,'2023_04_17_125517_create_flavors_table',18),
(61,'2023_04_17_125843_create_productflavors_table',18),
(62,'2023_08_04_101452_create_shipping_charges_table',19),
(64,'2023_08_04_204814_create_order_statuses_table',20),
(65,'2023_08_06_161254_create_ecom_pixels_table',21),
(66,'2023_06_04_121934_create_colors_table',22),
(67,'2023_06_04_122329_create_sizes_table',22),
(68,'2023_06_04_122459_create_productsizes_table',22),
(69,'2023_06_04_122542_create_productcolors_table',22),
(71,'2023_08_17_151949_create_campaign_reviews_table',23),
(72,'2023_08_21_152844_create_ip_blocks_table',24),
(73,'2023_09_07_171103_create_subcategories_table',25),
(74,'2023_09_07_171404_create_childcategories_table',25),
(76,'2024_02_06_165515_create_payment_gateways_table',26),
(77,'2024_02_07_142550_create_sms_gateways_table',27),
(78,'2024_02_07_161302_create_courierapis_table',28),
(79,'2024_02_11_111947_create_google_tag_managers_table',29);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_permissions`
--

LOCK TABLES `model_has_permissions` WRITE;
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_roles`
--

LOCK TABLES `model_has_roles` WRITE;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
INSERT INTO `model_has_roles` VALUES
(1,'App\\Models\\User',1),
(1,'App\\Models\\User',3),
(1,'App\\Models\\User',6),
(1,'App\\Models\\User',7),
(4,'App\\Models\\User',8);
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `purchase_price` int(11) DEFAULT NULL,
  `sale_price` int(11) NOT NULL,
  `product_discount` int(11) DEFAULT 0,
  `product_size` varchar(255) DEFAULT NULL,
  `product_color` varchar(255) DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=249 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_details`
--

LOCK TABLES `order_details` WRITE;
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
INSERT INTO `order_details` VALUES
(245,216,159,'লিচু ফুলের মধু | Litchi Flower Honey',100,1100,0,NULL,NULL,1,'2025-01-10 07:41:34','2025-01-10 07:41:34'),
(246,217,166,'Gawa Ghee – গাওয়া ঘি',1000,1300,0,NULL,NULL,1,'2025-01-10 07:48:57','2025-01-10 07:48:57'),
(247,218,169,'Peanut Butter (Diabetics)',1000,1400,0,NULL,NULL,1,'2025-02-03 08:42:51','2025-02-03 08:42:51'),
(248,219,168,'Pure Ghee (ঘি)',1000,950,0,NULL,NULL,1,'2025-02-06 09:46:59','2025-02-06 09:46:59');
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_statuses`
--

DROP TABLE IF EXISTS `order_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(155) NOT NULL,
  `slug` varchar(155) NOT NULL,
  `status` varchar(55) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_statuses`
--

LOCK TABLES `order_statuses` WRITE;
/*!40000 ALTER TABLE `order_statuses` DISABLE KEYS */;
INSERT INTO `order_statuses` VALUES
(1,'Pending','pending','1','2023-08-15 11:28:33','2023-08-15 11:28:33'),
(2,'Processing','processing','1','2023-08-15 11:31:22','2023-08-15 11:31:22'),
(3,'On The Way','on-the-way','1','2023-08-15 11:31:34','2023-08-15 11:31:34'),
(5,'In Courier','in-courier','1','2023-08-15 11:31:56','2023-08-21 05:45:54'),
(6,'Completed','completed','1','2023-08-15 11:32:06','2023-08-21 05:46:06'),
(8,'Unpaid','unpaid','1','2024-07-06 17:47:36','2024-07-06 17:47:36'),
(9,'comfrom','comfrom','1','2024-11-30 19:29:59','2024-11-30 19:29:59');
/*!40000 ALTER TABLE `order_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` varchar(55) NOT NULL,
  `amount` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `shipping_charge` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `admin_note` text DEFAULT NULL,
  `order_status` tinyint(4) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `note` varchar(256) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=220 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES
(216,'53793',1220,0,120,106,NULL,5,NULL,NULL,'2025-01-10 07:41:34','2025-01-10 07:41:55'),
(217,'25790',1370,0,70,107,NULL,1,NULL,NULL,'2025-01-10 07:48:57','2025-01-10 07:48:57'),
(218,'40030',1470,0,70,108,NULL,1,NULL,NULL,'2025-02-03 08:42:51','2025-02-03 08:42:51'),
(219,'59555',950,0,0,109,NULL,1,NULL,NULL,'2025-02-06 09:46:59','2025-02-06 09:46:59');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_gateways`
--

DROP TABLE IF EXISTS `payment_gateways`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_gateways` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(55) DEFAULT NULL,
  `app_key` varchar(155) DEFAULT NULL,
  `app_secret` varchar(155) DEFAULT NULL,
  `username` varchar(55) DEFAULT NULL,
  `password` varchar(55) DEFAULT NULL,
  `base_url` varchar(99) DEFAULT NULL,
  `success_url` varchar(155) DEFAULT NULL,
  `return_url` varchar(155) DEFAULT NULL,
  `prefix` varchar(25) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_gateways`
--

LOCK TABLES `payment_gateways` WRITE;
/*!40000 ALTER TABLE `payment_gateways` DISABLE KEYS */;
INSERT INTO `payment_gateways` VALUES
(1,'bkash','4f6o0cjiki2rfm34kfdadl1eqq','2is7hdktrekvrbljjh44ll3d9l1dtjo4pasmjvs5vl5qr3fug4b','sandboxTokenizedUser02','sandboxTokenizedUser02@12345','https://tokenized.sandbox.bka.sh/v1.2.0-beta',NULL,NULL,NULL,1,'2024-02-06 11:29:46','2024-02-08 09:24:22'),
(2,'shurjopay','','','sp_sandbox','pyyk97hu&6u6','https://sandbox.shurjopayment.com','https://ecom.websolutionit.com/payment-success','https://ecom1.joss.com.bd/','NOK',1,'2024-02-06 11:29:46','2024-07-06 18:12:49');
/*!40000 ALTER TABLE `payment_gateways` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `trx_id` varchar(55) DEFAULT NULL,
  `sender_number` varchar(55) DEFAULT NULL,
  `payment_method` varchar(55) DEFAULT NULL,
  `payment_status` varchar(55) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=220 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES
(76,76,23,1070,NULL,NULL,'Cash On Delivery','pending','2024-11-09 06:15:34','2024-11-09 06:15:34'),
(216,216,106,1220,NULL,NULL,'Cash On Delivery','pending','2025-01-10 07:41:34','2025-01-10 07:41:34'),
(217,217,107,1370,NULL,NULL,'Cash On Delivery','pending','2025-01-10 07:48:57','2025-01-10 07:48:57'),
(218,218,108,1470,NULL,NULL,'Cash On Delivery','pending','2025-02-03 08:42:51','2025-02-03 08:42:51'),
(219,219,109,950,NULL,NULL,'bkash','pending','2025-02-06 09:46:59','2025-02-06 09:46:59');
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES
(1,'role-list','web','2023-01-11 06:31:32','2023-01-11 06:31:32'),
(2,'role-create','web','2023-01-11 06:31:33','2023-01-11 06:31:33'),
(3,'role-edit','web','2023-01-11 06:31:34','2023-01-11 06:31:34'),
(4,'role-delete','web','2023-01-11 06:31:34','2023-01-11 06:31:34'),
(5,'product-list','web','2023-01-11 06:31:34','2023-01-11 06:31:34'),
(6,'product-create','web','2023-01-11 06:31:35','2023-01-11 06:31:35'),
(7,'product-edit','web','2023-01-11 06:31:35','2023-01-11 06:31:35'),
(8,'product-delete','web','2023-01-11 06:31:35','2023-01-11 06:31:35'),
(9,'permission-list','web',NULL,NULL),
(10,'permission-create','web',NULL,NULL),
(11,'setting-delete','web','2023-01-21 10:50:15','2023-01-21 10:50:15'),
(12,'setting-edit','web','2023-01-21 10:50:35','2023-01-21 10:50:35'),
(13,'setting-create','web','2023-01-21 10:50:50','2023-01-21 10:50:50'),
(14,'setting-list','web','2023-01-21 10:51:01','2023-01-21 10:51:01'),
(15,'social-list','web','2023-01-22 08:33:54','2023-01-22 08:33:54'),
(16,'social-create','web','2023-01-22 08:34:07','2023-01-22 08:34:07'),
(17,'social-edit','web','2023-01-22 08:34:17','2023-01-22 08:34:17'),
(18,'social-delete','web','2023-01-22 08:34:25','2023-01-22 08:34:25'),
(19,'contact-list','web','2023-01-22 10:25:01','2023-01-22 10:25:01'),
(20,'contact-create','web','2023-01-22 10:25:16','2023-01-22 10:28:19'),
(21,'permission-edit','web','2023-01-22 10:26:28','2023-01-22 10:26:28'),
(22,'permission-delete','web','2023-01-22 10:26:39','2023-01-22 10:26:39'),
(23,'contact-edit','web','2023-01-22 10:28:34','2023-01-22 10:28:34'),
(24,'contact-delete','web','2023-01-22 10:28:45','2023-01-22 10:28:45'),
(25,'category-list','web','2023-02-08 10:26:58','2023-02-08 10:26:58'),
(26,'category-create','web','2023-02-08 10:27:19','2023-02-08 10:27:19'),
(27,'category-edit','web','2023-02-08 10:27:28','2023-02-08 10:27:28'),
(28,'category-delete','web','2023-02-08 10:27:38','2023-02-08 10:27:38'),
(29,'attribute-list','web','2023-02-09 02:54:47','2023-02-09 02:54:47'),
(30,'attribute-create','web','2023-02-09 02:55:02','2023-02-09 02:55:02'),
(31,'attribute-edit','web','2023-02-09 02:55:14','2023-02-09 02:55:14'),
(32,'attribute-delete','web','2023-02-09 02:55:23','2023-02-09 02:55:23'),
(33,'banner-category-list','web','2023-02-21 03:00:08','2023-02-21 03:00:08'),
(34,'banner-category-create','web','2023-02-21 03:00:34','2023-02-21 03:00:34'),
(35,'banner-category-edit','web','2023-02-21 03:00:45','2023-02-21 03:00:45'),
(36,'banner-category-delete','web','2023-02-21 03:00:53','2023-02-21 03:00:53'),
(37,'banner-list','web','2023-02-21 03:51:27','2023-02-21 03:51:27'),
(38,'banner-create','web','2023-02-21 03:51:50','2023-02-21 03:51:50'),
(39,'banner-edit','web','2023-02-21 03:52:18','2023-02-21 03:52:18'),
(40,'banner-delete','web','2023-02-21 03:52:32','2023-02-21 03:52:32'),
(41,'page-list','web','2023-02-24 20:42:52','2023-02-24 20:42:52'),
(42,'page-create','web','2023-02-24 20:43:01','2023-02-24 20:43:01'),
(43,'page-edit','web','2023-02-24 20:43:08','2023-02-24 20:43:08'),
(44,'page-delete','web','2023-02-24 20:43:15','2023-02-24 20:43:15'),
(49,'shipping-list','web','2023-08-04 08:46:28','2023-08-04 08:46:28'),
(50,'shipping-create','web','2023-08-04 08:47:09','2023-08-04 08:47:09'),
(51,'shipping-edit','web','2023-08-04 08:47:23','2023-08-04 08:47:23'),
(52,'shipping-delete','web','2023-08-04 08:47:34','2023-08-04 08:47:34'),
(53,'color-list','web','2023-08-15 07:48:52','2023-08-15 07:48:52'),
(54,'color-create','web','2023-08-15 07:49:01','2023-08-15 07:49:01'),
(55,'color-edit','web','2023-08-15 07:49:12','2023-08-15 07:49:12'),
(56,'color-delete','web','2023-08-15 07:49:20','2023-08-15 07:49:20'),
(69,'subcategory-list','web','2024-01-31 10:49:48','2024-01-31 10:49:48'),
(70,'subcategory-create','web','2024-01-31 10:49:56','2024-01-31 10:49:56'),
(71,'subcategory-edit','web','2024-01-31 10:50:04','2024-01-31 10:50:04'),
(72,'subcategory-delete','web','2024-01-31 10:50:13','2024-01-31 10:50:13'),
(73,'childcategory-list','web','2024-01-31 10:51:33','2024-01-31 10:51:33'),
(74,'childcategory-create','web','2024-01-31 10:51:41','2024-01-31 10:51:41'),
(75,'childcategory-edit','web','2024-01-31 10:51:50','2024-01-31 10:51:50'),
(76,'childcategory-delete','web','2024-01-31 10:52:00','2024-01-31 10:52:00');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productcolors`
--

DROP TABLE IF EXISTS `productcolors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `productcolors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productcolors`
--

LOCK TABLES `productcolors` WRITE;
/*!40000 ALTER TABLE `productcolors` DISABLE KEYS */;
INSERT INTO `productcolors` VALUES
(1,1,35,'2024-02-05 09:40:29','2024-02-05 09:40:29'),
(2,1,62,'2024-02-05 09:40:29','2024-02-05 09:40:29'),
(3,35,44,'2024-02-05 09:54:29','2024-02-05 09:54:29'),
(4,28,62,'2024-02-05 14:06:19','2024-02-05 14:06:19'),
(5,2,65,'2024-02-05 14:07:27','2024-02-05 14:07:27'),
(6,131,32,'2024-03-13 00:28:08','2024-03-13 00:28:08'),
(7,131,36,'2024-03-13 00:28:08','2024-03-13 00:28:08'),
(8,131,39,'2024-03-13 00:28:08','2024-03-13 00:28:08'),
(9,131,40,'2024-03-13 00:28:08','2024-03-13 00:28:08'),
(10,117,32,'2024-07-03 01:33:09','2024-07-03 01:33:09'),
(11,117,35,'2024-07-03 01:33:09','2024-07-03 01:33:09'),
(12,117,39,'2024-07-03 01:33:09','2024-07-03 01:33:09'),
(13,1,36,'2024-07-06 15:29:32','2024-07-06 15:29:32'),
(14,132,32,'2024-07-06 17:39:48','2024-07-06 17:39:48'),
(15,132,36,'2024-07-06 17:39:48','2024-07-06 17:39:48'),
(16,133,36,'2024-08-13 10:03:44','2024-08-13 10:03:44'),
(17,133,49,'2024-08-13 10:03:44','2024-08-13 10:03:44'),
(18,130,35,'2024-09-04 13:28:04','2024-09-04 13:28:04'),
(19,130,36,'2024-09-04 13:28:04','2024-09-04 13:28:04'),
(20,130,39,'2024-09-04 13:28:04','2024-09-04 13:28:04'),
(21,130,48,'2024-09-04 13:28:04','2024-09-04 13:28:04'),
(22,135,35,'2024-10-26 12:56:55','2024-10-26 12:56:55'),
(23,135,36,'2024-10-26 12:56:55','2024-10-26 12:56:55'),
(24,135,39,'2024-10-26 12:56:55','2024-10-26 12:56:55'),
(25,137,35,'2024-11-08 14:54:47','2024-11-08 14:54:47'),
(26,139,62,'2024-11-08 15:09:17','2024-11-08 15:09:17'),
(27,150,62,'2024-11-08 16:59:22','2024-11-08 16:59:22'),
(28,156,35,'2024-11-27 21:33:49','2024-11-27 21:33:49'),
(29,156,39,'2024-11-27 21:33:49','2024-11-27 21:33:49'),
(30,155,35,'2024-12-02 15:11:23','2024-12-02 15:11:23'),
(31,157,40,'2024-12-04 01:23:35','2024-12-04 01:23:35'),
(32,157,44,'2024-12-04 01:23:35','2024-12-04 01:23:35'),
(33,157,51,'2024-12-04 01:23:35','2024-12-04 01:23:35'),
(34,157,62,'2024-12-04 01:23:35','2024-12-04 01:23:35'),
(35,158,36,'2024-12-05 15:43:20','2024-12-05 15:43:20');
/*!40000 ALTER TABLE `productcolors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productimages`
--

DROP TABLE IF EXISTS `productimages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `productimages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=247 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productimages`
--

LOCK TABLES `productimages` WRITE;
/*!40000 ALTER TABLE `productimages` DISABLE KEYS */;
INSERT INTO `productimages` VALUES
(224,'public/uploads/product/1736431595-2024-07-16-6696757bd2081.jpg',159,'2025-01-10 04:06:35','2025-01-10 04:06:35'),
(225,'public/uploads/product/1736431699-2024-07-16-6696741839d29.jpg',160,'2025-01-10 04:08:19','2025-01-10 04:08:19'),
(226,'public/uploads/product/1736431804-2024-07-16-66966f64be627.jpg',161,'2025-01-10 04:10:04','2025-01-10 04:10:04'),
(227,'public/uploads/product/1736431896-2024-07-16-66966ee025159.jpg',162,'2025-01-10 04:11:36','2025-01-10 04:11:36'),
(228,'public/uploads/product/1736432082-2024-07-15-6695b4dbdaf63.webp',163,'2025-01-10 04:14:42','2025-01-10 04:14:42'),
(229,'public/uploads/product/1736432215-black-seed-honey-500-1.webp',164,'2025-01-10 04:16:55','2025-01-10 04:16:55'),
(230,'public/uploads/product/1736432215-black-seed-honey-500-1.webp',165,'2025-01-10 04:16:55','2025-01-10 04:16:55'),
(232,'public/uploads/product/1736437796-malai-400.webp',167,'2025-01-10 05:49:56','2025-01-10 05:49:56'),
(233,'public/uploads/product/1736438047-ghee-175gm.webp',168,'2025-01-10 05:54:07','2025-01-10 05:54:07'),
(234,'public/uploads/product/1736438310-peanut-butter-1.webp',169,'2025-01-10 05:58:30','2025-01-10 05:58:30'),
(235,'public/uploads/product/1736438385-signatute-ghee.webp',170,'2025-01-10 05:59:45','2025-01-10 05:59:45'),
(236,'public/uploads/product/1736438461-signatute-lacsa-semai.webp',171,'2025-01-10 06:01:01','2025-01-10 06:01:01'),
(237,'public/uploads/product/1736438635-almond.webp',172,'2025-01-10 06:03:55','2025-01-10 06:03:55'),
(238,'public/uploads/product/1736438635-almond.webp',173,'2025-01-10 06:03:55','2025-01-10 06:03:55'),
(239,'public/uploads/product/1736438717-mariyamdates.webp',174,'2025-01-10 06:05:17','2025-01-10 06:05:17'),
(242,'public/uploads/product/1736438895-roasted-cashew-500-h.webp',177,'2025-01-10 06:08:15','2025-01-10 06:08:15'),
(243,'public/uploads/product/1736438895-roasted-cashew-500-h.webp',178,'2025-01-10 06:08:15','2025-01-10 06:08:15'),
(244,'public/uploads/product/1737380440-khaas-food-ajwa-dates-খাস-ফুড-আজওয়া-খেজুর.webp',176,'2025-01-20 13:40:40','2025-01-20 13:40:40'),
(245,'public/uploads/product/1737380453-khaas-food-ajwa-dates-খাস-ফুড-আজওয়া-খেজুর.webp',175,'2025-01-20 13:40:53','2025-01-20 13:40:53'),
(246,'public/uploads/product/1737380495-ghee-500gm.webp',166,'2025-01-20 13:41:35','2025-01-20 13:41:35');
/*!40000 ALTER TABLE `productimages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `childcategory_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `product_code` varchar(155) DEFAULT NULL,
  `purchase_price` int(11) DEFAULT 0,
  `old_price` int(11) DEFAULT NULL,
  `new_price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `pro_unit` varchar(191) DEFAULT NULL,
  `pro_video` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `topsale` tinyint(4) DEFAULT NULL,
  `flashsale` tinyint(4) DEFAULT NULL,
  `feature_product` tinyint(4) DEFAULT NULL,
  `campaign_id` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `sold` varchar(255) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=179 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES
(159,'লিচু ফুলের মধু | Litchi Flower Honey','লিচু-ফুলের-মধু-|-litchi-flower-honey-1',12,0,NULL,NULL,'P0001',100,1200,1100,100,'pFloSo5hl5U',NULL,'<p>পুষ্টিগুণ ও উপাদেয়তার দিকটি বিবেচনা করে যদি আমরা খাবারের একটি তালিকা করি, সে তালিকার প্রথম সারিতেই থাকবে ‘মধু’র নাম। এটি শরীরের জন্য উপকারী এবং নিয়মিত মধু সেবন করলে অসংখ্য রোগবালাই থেকে পরিত্রাণ পাওয়া যায়। এটি বৈজ্ঞানিকভাবেই প্রমাণিত।</p>',NULL,1,1,0,NULL,1,NULL,NULL,'2025-01-10 04:06:35','2025-01-10 04:06:35'),
(160,'মিশ্র ফুলের মধু | Mix Flower Honey','মিশ্র-ফুলের-মধু-|-mix-flower-honey-160',12,0,NULL,NULL,'P0160',1000,1500,1400,100,'pFloSo5hl5U',NULL,'<div class=\"s_d\" style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 10px 0px 0px; color: rgb(33, 37, 41); font-family: &quot;Siyam Rupali&quot;, sans-serif; font-size: 16px;\"><p style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 10px 0px 1.3em; color: rgb(0, 0, 0); font-size: medium; line-height: 1.3em; font-family: &quot;Hind Siliguri&quot;, sans-serif;\">শীত মৌসুমের শেষ এর দিকে দেশের বিভিন্ন অঞ্চলে কালোজিরা এবং ধনিয়ার চাষ হয়।প্রাকৃতিক ভাবে মধু সংগ্রহের উদ্দেশ্যে মৌয়াল রা ওই সকল অঞ্চলে পাড়ি জমায়। প্রাকৃতিক নিয়মে ধনিয়া এবং কালোজিরার ফুল কিছু দিনের জন্য একই সময়েই ফোটে আর এই সময় এর মধ্যেই মৌমাছি উভয় ফুল থেকেই নেকটার সংগ্রহ করে।সৃষ্টি কর্তা প্রদত্ত নিয়মে মৌমাছি তার অপার পরিশ্রমের মাধ্যমে মধু তৈরি করে চাকে জমা করে।আর উভয় ফুল থেকে সংগ্রহ করা এই মধুই মিশ্র ফুলের মধু নামে পরিচিত।</p></div>',NULL,1,1,0,NULL,1,NULL,NULL,'2025-01-10 04:08:19','2025-01-10 04:08:19'),
(161,'কালোজিরা ফুলের মধু | Black Seed Flower Honey','কালোজিরা-ফুলের-মধু-|-black-seed-flower-honey-161',12,0,NULL,NULL,'P0161',1000,1900,2000,100,NULL,NULL,'<p style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; font-size: medium; font-family: &quot;Hind Siliguri&quot;, sans-serif;\">পবিত্র কোরআন ও হাদিসের ভাষ্যমতে যেহেতু কালোজিরা কে সাম অর্থাৎ মৃত্যু বাদে সকল রোগের মহৌষধ বলা হয়েছে সেহেতু নিঃসন্দেহে এই মধু সর্বোত্তম। আপনি যদি কালোজিরা মধুর সর্বোত্তম উপকারিতা পেতে চান অবশ্যই আপনাকে রিফাইনকৃত কালোজিরা ফুলের মধু ব্যবহার করতে হবে।</p><h2 style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin-top: 0px; margin-bottom: 0.5em; font-size: 1.6em; font-weight: 700; line-height: 1.3; color: rgb(0, 0, 0); text-rendering: optimizespeed; width: 915px; font-family: &quot;Hind Siliguri&quot;, sans-serif;\"><span style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px; -webkit-box-decoration-break: clone; font-weight: 400;\">কালোজিরা মধু&nbsp;</span><span style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px; -webkit-box-decoration-break: clone; font-weight: 400;\">কিভাবে তৈরি করা হয়?</span></h2><p style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; font-size: medium; font-family: &quot;Hind Siliguri&quot;, sans-serif;\">আমাদের নিজস্ব খামারে পালিত এপিস মেলিফেরা মৌমাছি কালোজিরা ফুল থেকে নেকটার সংগ্রহ করে ফ্রেমে জমা করে যা পরবর্তীতে কালোজিরা ফুলের মধুতে রুপ নেয় এবং এই খাঁটি কালোজিরা ফুলের মধুটাই রিফাইন করে আমরা পৌঁছে দিচ্ছি আপনার হাতে।</p><h2 style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin-top: 0px; margin-bottom: 0.5em; font-size: 1.6em; font-weight: 700; line-height: 1.3; color: rgb(0, 0, 0); text-rendering: optimizespeed; width: 915px; font-family: &quot;Hind Siliguri&quot;, sans-serif;\"><span style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px; -webkit-box-decoration-break: clone; font-weight: 400;\">কালোজিরা মধুর উপকারিতা:</span></h2><ul style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin-bottom: 1.3em; list-style-position: initial; list-style-image: initial; font-size: medium; font-family: &quot;Hind Siliguri&quot;, sans-serif; margin-right: 0px !important; margin-left: 0px !important;\"><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">কালোজিরা মধু শরীরে তাপ ও শক্তির ভালো উৎস যা শরীরে তাপ ও শক্তির যোগান দেয়।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">হজম&nbsp;প্রকিয়াতে&nbsp;সাহায্য করে।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">রক্তশূন্যতা রোধে এই মধু কার্যাকারী।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">কোষ্ঠকাঠিন্য ও ডায়রিয়া দূর করতে সাহায্য করে।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">ফুসফুসের যাবতীয় রোগ ও শ্বাসকষ্ট নিরাময়ে সাহায্য করে।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">এই মধু অনিদ্রার ভালো ঔষুধ।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">প্রশান্তিদায়ক পানি হিসাবে এই মধুর শরবত অনেক উপকারী।&nbsp;</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">মুখগহ্বরের স্বাস্থ্য রক্ষায় এই মধুর ব্যাবহার সর্বোত্তম।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">পাকস্থলীর হাইড্রোক্লোরিক এ্যাসিড ক্ষরন কমিয়ে পাকস্থলীর বিভিন্ন সমস্যা দূর করে।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">অরুচি,বমিভাব,বুকজ্বালা ইত্যাদি দূর করতে এই মধু সাহায্য করে।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">পানিশূন্যতা রোধে কার্যকারী।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">সর্দি,কাশি,গলাব্যাথা দূর করতে সাহায্য করে।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">দৃষ্টিশক্তি বাড়াতে সাহায্য করে।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">রূপচর্চায় এই মধুর ব্যাবহার সর্বোত্তম।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">হাড় ও দাঁত গঠনে সাহায্য করে।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">হাঁপানি রোধে সাহায্য করে।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">রক্ত পরিষ্কারক হিসাবে এই মধু উপকারী।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">রো প্রতিরোধশক্তি বাড়াতে সাহায্য করে।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">উচ্চ রক্তচাপ কমাতে সাহায্য করে।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">হৃদরোগের ঝুকি কমাতে সাহায্য করে।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">চর্বি কমাতে সাহায্য করে।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">মধুতে বিদ্যামান বিটা ক্যারোটিন থাকে যা আমাদের চুল পড়া রোধে সাহায্য করে।</li></ul><h2 style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin-top: 0px; margin-bottom: 0.5em; font-size: 1.6em; font-weight: 700; line-height: 1.3; color: rgb(0, 0, 0); text-rendering: optimizespeed; width: 915px; font-family: &quot;Hind Siliguri&quot;, sans-serif;\"><span style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px; -webkit-box-decoration-break: clone; font-weight: 400;\">আমাদের&nbsp;</span><span style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px; -webkit-box-decoration-break: clone; font-weight: 400;\">কালোজিরা&nbsp;</span><span style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px; -webkit-box-decoration-break: clone; font-weight: 400;\">মধু কেন নিবেন?</span></h2><ul style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin-bottom: 1.3em; list-style-position: initial; list-style-image: initial; font-size: medium; font-family: &quot;Hind Siliguri&quot;, sans-serif; margin-right: 0px !important; margin-left: 0px !important;\"><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">আমাদের নিজস্ব খামারে নিজস্ব পালিত এপিস মেলিফেরা মৌমাছি দ্বারা নিজ তত্ত্বাবধানে সংগ্রহীত কালোজিরা ফুলের মধু।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">আমাদের কালোজিরা মধু রিফাইন করার ফলে এই মধু ১০০% পানি, ময়লা, মৌমাছির গলিত ডিম, বাচ্চা,পাখনা মুক্ত।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">কালোজিরা মধু রিফাইন করার কারণে এইটা ‘র’ মধুর থেকে বেশি দিন সংরক্ষণ করা যায় কিন্তু সর্বোচ্চ ফলাফল পেতে ১-১.৫ বছরের ভেতরেই ব্যবহার করা উত্তম।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">খামার থেকে কালোজিরা মধু সংগ্রহ থেকে শুরু করে প্যাকেজিং পর্যন্ত সম্পূর্ণ নিজস্ব তত্ত্বাবধানে করা হয়।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">কালোজিরা মধুতে যে কোন সমস্যা হলে ১০ দিনের ভেতরে পরিবর্তনযোগ্য ও দশ দিন পর্যন্ত ক্যাশব্যাক গ্যারান্টি।</li></ul>',NULL,1,1,0,NULL,1,NULL,NULL,'2025-01-10 04:10:04','2025-01-10 04:10:04'),
(162,'সুন্দরবনের চাকের মধু | Sundarbans Natural Honey','সুন্দরবনের-চাকের-মধু-|-sundarbans-natural-honey-162',12,0,NULL,NULL,'P0162',1000,1500,1300,100,NULL,NULL,'<p style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; font-size: medium; font-family: &quot;Hind Siliguri&quot;, sans-serif;\">সুন্দরবনের প্রাকৃতিক চাকের মধু (Sundarbans Natural Honey) এর চাহিদা বরাবরই ভিন্ন। খাঁটি মধু বলতেই সবার আগে এর কথাই মাথায় আসে। প্রাকৃতিক মধু সংগ্রহের জন্য&nbsp;আমাদের মৌয়ালরা সুন্দরবনের গহীনে চলে যায়। বছরের বিভিন্ন সময় সংগ্রহ করা গেলেও ফেব্রুয়ারি থেকে এপ্রিল মাস এর জন্য উৎকৃষ্ট সময়। মৌয়ালরা মধু সংগ্রহের জন্য বিভিন্ন নৌকাতে করে চাকের খোঁজে পাড়ি জমায় বনের গহীনে। সুন্দরবনের প্রাকৃতিক চাকের মধুতে খলিসা ফুলের নির্যাস বেশি থাকে। এই প্রাকৃতিক চাকের মধু অনেক পাতলা এবং সুস্বাদু হয়।</p><h1 style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin-top: 0px; margin-bottom: 0.5em; font-size: 1.7em; font-weight: 700; line-height: 1.3; color: rgb(0, 0, 0); text-rendering: optimizespeed; width: 915px; font-family: &quot;Hind Siliguri&quot;, sans-serif;\"><span style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px; -webkit-box-decoration-break: clone; font-weight: 400;\">সুন্দরবনের খাঁটি মধুর বৈশিষ্ট্যঃ</span></h1><ul style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin-bottom: 1.3em; list-style-position: initial; list-style-image: initial; font-size: medium; font-family: &quot;Hind Siliguri&quot;, sans-serif; margin-right: 0px !important; margin-left: 0px !important;\"><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">সুন্দরবনের প্রাকৃতিক মধু দেখতে সাধারণত হালকা হলুদ বর্ণের (Light Amber) রঙের হয় (তবে সময়, চাক ও ফুল ভেদে কিছুটা হালকা (Light) বা গাড়ো (Dark) হতে পারে)।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">সুন্দরবনের প্রাকৃতিক মধু খেতে খুবই সুস্বাদু, হালকা টকটক মিষ্টি লাগে।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">কিছু মানুষের কাছে- সুন্দরবনের মধু অনেকটা আখের রসের মতো লাগে।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">সুন্দরবনের প্রাকৃতিক চাকের মধুর ঘনত্ব সবসময় পাতলা হবে।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">সুন্দরবনের প্রাকৃতিক চাকের মধুর অন্যতম বৈশিষ্ট্য হচ্ছে- একটু ঝাঁকি লাগলেই প্রচুর পরিমাণে ফেনা হয়ে যাবে। তবে শীতকালে ফেনা হওয়ার প্রবণতা কম দেখা যায়।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">সুন্দরবনের প্রাকৃতিক চাকের খাটি মধু আমরা কখনই জমতে দেখা যায়নি। হোক সেটা ফ্রিজের ভেতরে বা বাইরে।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">এই সুন্দরবনের প্রাকৃতিক চাকের মধুর আরেকটি বড় বৈশিষ্ট্য হচ্ছে- হাতে চাক কাটা পদ্ধতিতে সংগ্রহ করা মধুর উপরে হলুদ রঙের পোলেন জমা হয়। এটাকে অনেকে গাদ জমা বলে থাকেন।</li><li style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px 0px 0.6em 1.3em; position: relative;\">এই সুন্দরবনের প্রাকৃতিক চাকের মধু খেতে কিছুটা ঝাঁঝালো হয় ।</li></ul><h1 style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin-top: 0px; margin-bottom: 0.5em; font-size: 1.7em; font-weight: 700; line-height: 1.3; color: rgb(0, 0, 0); text-rendering: optimizespeed; width: 915px; font-family: &quot;Hind Siliguri&quot;, sans-serif;\"><span style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px; -webkit-box-decoration-break: clone; font-weight: 400;\">সুন্দরবনের মধু সাধারনত দুই প্রকার হয়ে থাকেঃ</span></h1><p style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; font-size: medium; font-family: &quot;Hind Siliguri&quot;, sans-serif;\">১। সুন্দরবনের প্রাকৃতিক চাকের মধু – এপিস ডরসাটা বা বুনো মৌমাছি সুন্দরবনের গহীনে ফোঁটা খলিশা, গরান, কেওড়া, গেওয়া ইত্যাদি ফুলের থেকে নেকটার সংগ্রহ করে এবং সেই নেকটার চাকে জমা করে। আর মৌয়ালরা সেই প্রাকিতিক চাক থেকেই সেই খাঁটি মধু সংগ্রহ করে। এই মধু তৈরিতে মানুষের কোনরূপ হাতের ছোঁয়া ছাড়াই সম্পূর্ণ প্রাকৃতিক ভাবে তৈরি হয়।</p><p style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; font-size: medium; font-family: &quot;Hind Siliguri&quot;, sans-serif;\">২। সুন্দরবনের চাষের মধু- এপিস মেলিফেরা ও এপিস ফ্লোরিয়া মৌমাছি&nbsp; যেগুলা&nbsp; থেকে এই চাষের মধু সংগ্রহ কর হয়। এই চাষের মধুতে সুন্দরবনের ফুলের নেকটার ছাড়াও অন্যান্য ফুলের নেকটার থাকে। এই মধুটা চাষের মৌবক্স থেকে সংগ্রহ করা হয় আর নেকটার সংকট থাকলে এই মৌমাছিদের কে চিনি খাওয়ানো হয়।</p><h1 style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin-top: 0px; margin-bottom: 0.5em; font-size: 1.7em; font-weight: 700; line-height: 1.3; color: rgb(0, 0, 0); text-rendering: optimizespeed; width: 915px; font-family: &quot;Hind Siliguri&quot;, sans-serif;\"><span style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px; -webkit-box-decoration-break: clone; font-weight: 400;\">আমাদের সুন্দরবনের মধুটা কেন আলাদাঃ</span></h1><p style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; font-size: medium; font-family: &quot;Hind Siliguri&quot;, sans-serif;\">আমরা আপনাদেরকে দিচ্ছি সুন্দরবনের প্রাকৃতিক চাকের “র” মধু যা সম্পূর্ণরূপে খাঁটি। কারন এই মধু আমাদের নিজস্ব তত্ত্বাবধানে গহীন বন থেকে আমাদের নিজস্ব মৌয়ালরা এপিস ডরসাটা বা বুনো মৌমাছির প্রাকৃতিক চাক থেকে মধু সংগ্রহ করে। আর এই খাঁটি সুন্দরবনের প্রাকৃতিক চাকের “র” মধুটা আমরা পৌঁছে দিচ্ছি আপনার হাতে ।&nbsp;</p><h1 style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin-top: 0px; margin-bottom: 0.5em; font-size: 1.7em; font-weight: 700; line-height: 1.3; color: rgb(0, 0, 0); text-rendering: optimizespeed; width: 915px; font-family: &quot;Hind Siliguri&quot;, sans-serif;\"><span style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px; -webkit-box-decoration-break: clone; font-weight: 400;\">সুন্দরবনের “র” মধুর PH:</span></h1><p style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin-right: 0px; margin-bottom: 1.3em; margin-left: 0px; font-size: medium; font-family: &quot;Hind Siliguri&quot;, sans-serif;\">সুন্দরবনের “র” মধুর PH সাধারনত ২.৮ থেকে ৫.৫ হয়ে থাকে বা ৩.১ থেকে ৬.০ হয়ে থাকে। যদি সুন্দরবনের মধুর PH ৬ এর থেকে বেশি হয় তাহলে বুঝতে হবে সেই মধুতে নিশ্চিত ভেজাল দেওয়া আছে।</p>',NULL,1,1,0,NULL,1,NULL,NULL,'2025-01-10 04:11:36','2025-01-10 04:11:46'),
(163,'Blended Floral Honey (ব্লেন্ডেড ফ্লোরাল হানি)','blended-floral-honey-(ব্লেন্ডেড-ফ্লোরাল-হানি)-163',12,0,NULL,NULL,'P0163',1000,1900,1100,100,NULL,NULL,'<h2 style=\"border: 0px; padding: 0px; margin-top: 0px; margin-bottom: 20px; font-size: 24px; font-weight: 600; line-height: 1.4; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-family: lato, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(45, 42, 42);\"><span style=\"border: 0px; padding: 0px; margin: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">ব্লেন্ডেড ফ্লোরাল হানি (Blended Floral Honey)</span></h2><p style=\"border: 0px; padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-family: lato, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\"><span style=\"border: 0px; padding: 0px; margin: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">ব্লেন্ডেড ফ্লোরাল মধু (Blended Floral Honey) মূলত মৌমাছি কর্তৃক সরিষা ও লিচু ফুলের নেক্টার থেকে সংগৃহীত এক প্রকার ব্লেন্ডেড হানি। পুষ্টিগুণ সম্পন্ন সরিষা ফুলের মধুর স্বাদে ভিন্নতা এনেছে ব্লেন্ডেড ফ্লোরাল হানি। অর্থাৎ লিচুর স্বাদে সরিষার সমস্ত পুষ্টি উপাদান রয়েছে ব্লেন্ডেড ফ্লোরাল হানিতে। এই মধুর রয়েছে নানাবিধ স্বাস্থ্য উপকারিতা। এছাড়া চিনির বিকল্প হিসেবেও করা যাবে এই মধুর ব্যবহার।</span></p><h2 style=\"border: 0px; padding: 0px; margin-top: 0px; margin-bottom: 20px; font-size: 24px; font-weight: 600; line-height: 1.4; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-family: lato, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(45, 42, 42);\"></h2><h2 style=\"border: 0px; padding: 0px; margin-top: 0px; margin-bottom: 20px; font-size: 24px; font-weight: 600; line-height: 1.4; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-family: lato, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(45, 42, 42);\"><span style=\"border: 0px; padding: 0px; margin: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">ব্লেন্ডেড ফ্লোরাল মধুর উপকারিতা</span></h2><p style=\"border: 0px; padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-family: lato, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\"><span style=\"border: 0px; padding: 0px; margin: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">১। এতে রয়েছে বেশ কিছু খনিজ উপাদান যা শারীরিক সুস্থতা প্রদানে বেশ গুরুত্বপূর্ণ ভূমিকা রাখে।</span><span style=\"border: 0px; padding: 0px; margin: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><br style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px;\"></span><span style=\"border: 0px; padding: 0px; margin: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">২। দেহে তাপ ও শক্তির যোগান দেয়।</span><span style=\"border: 0px; padding: 0px; margin: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><br style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px;\"></span><span style=\"border: 0px; padding: 0px; margin: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">৩। হজমক্রিয়াকে ত্বরান্বিত করে হজমে সহায়তা করে।</span><span style=\"border: 0px; padding: 0px; margin: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><br style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px;\"></span><span style=\"border: 0px; padding: 0px; margin: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">৪। উচ্চ রক্তচাপ নিয়ন্ত্রণে রাখতে বেশ ভালো কাজ করে।</span><span style=\"border: 0px; padding: 0px; margin: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><br style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px;\"></span><span style=\"border: 0px; padding: 0px; margin: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">৫। অতিরিক্ত মেদ কমিয়ে ওজন হ্রাসে ভূমিকা রাখে।</span><span style=\"border: 0px; padding: 0px; margin: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><br style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px;\"></span><span style=\"border: 0px; padding: 0px; margin: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">৬। দেহের রোগ প্রতিরোধ ক্ষমতা বৃদ্ধি করে দেহকে সুরক্ষিত রাখে।</span><span style=\"border: 0px; padding: 0px; margin: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><br style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px;\"></span><span style=\"border: 0px; padding: 0px; margin: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">৭। ঘুমের সমস্যা সমাধানে এটি বেশ ভালো কাজ করে। রাতে ঘুমাতে যাওয়ার পূর্বে এক চা চামচ মধু হতে পারে অনিদ্রার ক্ষেত্রে বিশেষ কার্যকরী।</span><span style=\"border: 0px; padding: 0px; margin: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><br style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px;\"></span><span style=\"border: 0px; padding: 0px; margin: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">৮। রক্তশূন্যতা দূর করে ভূমিকা রাখে।</span><span style=\"border: 0px; padding: 0px; margin: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><br style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px;\"></span><span style=\"border: 0px; padding: 0px; margin: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">৯। দেহের পানিশূন্যতা দূর করতে ভূমিকা রাখে।</span><span style=\"border: 0px; padding: 0px; margin: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><br style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px;\"></span><span style=\"border: 0px; padding: 0px; margin: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">১০। কোষ্ঠ্যকাঠিন্য এবং ডায়রিয়াতেও এটি বেশ উপযোগী।</span><span style=\"border: 0px; padding: 0px; margin: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><br style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px;\"></span><span style=\"border: 0px; padding: 0px; margin: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">১১। ত্বক মসৃণ ও সজীব রাখতে কাজ করে এটি।</span><span style=\"border: 0px; padding: 0px; margin: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><br style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px;\"></span><span style=\"border: 0px; padding: 0px; margin: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">১২। রূপচর্চায় এক বহুল ব্যবহৃত উপাদান।</span><span style=\"border: 0px; padding: 0px; margin: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><br style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px;\"></span><span style=\"border: 0px; padding: 0px; margin: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">১৩। অ্যাসিডিটি উপশমে বেশ ভালো কাজ করে।<br style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px;\"></span>১৪। হাঁপানি ও ফুসফুসের সমস্যা সমাধানে কার্যকরী।<br style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px;\">১৫। সর্দি, কাশি, গলা ব্যথা দূর করতে চমৎকার কাজ করে।</p><p style=\"border: 0px; padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-family: lato, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\">&nbsp;</p><h2 style=\"border: 0px; padding: 0px; margin-top: 0px; margin-bottom: 20px; font-size: 24px; font-weight: 600; line-height: 1.4; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-family: lato, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(45, 42, 42);\"><span style=\"border: 0px; padding: 0px; margin: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">কেনো খাস ব্লেন্ডেড ফ্লোরাল হানি (Blended Floral Honey) নিবেন?</span></h2><p style=\"border: 0px; padding: 0px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-family: lato, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\"><span style=\"border: 0px; padding: 0px; margin: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">১। সরিষা ও লিচু ফুলের নেক্টার থেকে সংগৃহীত মধুর নিশ্চয়তা।<br style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px;\"></span><span style=\"border: 0px; padding: 0px; margin: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">২। শতভাগ খাঁটি মধুর নিশ্চয়তা।<br style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px;\"></span><span style=\"border: 0px; padding: 0px; margin: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">৩। নিজস্ব তত্ত্বাবধানে চাষকৃত মধু।</span><span style=\"border: 0px; padding: 0px; margin: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><br style=\"border: 0px solid rgb(210, 214, 220); padding: 0px; margin: 0px;\"></span><span style=\"border: 0px; padding: 0px; margin: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">৪। মধু সংগ্রহ থেকে প্যাকেজিং পর্যন্ত কার্যাবলী নিজস্ব তত্ত্বাবধানে সম্পন্ন করা হয়।</span></p>',NULL,1,1,0,NULL,1,NULL,NULL,'2025-01-10 04:14:42','2025-01-10 04:14:42'),
(165,'Black Seed Honey','black-seed-honey-164',12,0,NULL,NULL,'P0164',1000,1900,1400,100,NULL,NULL,'<h3 style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-weight: 600; font-stretch: inherit; line-height: 1.4; font-family: Poppins, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 22px; color: rgb(45, 42, 42);\">সুস্বাস্থ্য ও রূপচর্চায় কালোজিরা মধুর প্রাকৃতিক গুণাবলি</h3><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\">১। এতে রয়েছে বেশ কিছু খনিজ উপাদান যা শারীরিক সুস্থতা প্রদানে বেশ গুরুত্বপূর্ণ ভূমিকা রাখে।<br>২। দেহে তাপ ও শক্তির যোগান দেয়।<br>৩। হজমক্রিয়াকে ত্বরান্বিত করে হজমে সহায়তা করে।<br>৪। অ্যাসিডিটি উপশমে বেশ ভালো কাজ করে।<br>৫। কোষ্ঠ্যকাঠিন্য এবং ডায়রিয়াতেও এটি বেশ উপযোগী।<br>৬। দেহের রোগ প্রতিরোধ ক্ষমতা বৃদ্ধি করে দেহকে সুরক্ষিত রাখে।<br>৭। ঘুমের সমস্যা সমাধানে এটি বেশ ভালো কাজ করে। রাতে ঘুমাতে যাওয়ার পূর্বে এক চা চামচ মধু হতে পারে অনিদ্রার ক্ষেত্রে বিশেষ কার্যকরী।<br>৮। রক্তশূন্যতা দূর করে ভূমিকা রাখে।<br>৯। দেহের পানিশূন্যতা দূর করতে ভূমিকা রাখে।<br>১০। অতিরিক্ত মেদ কমিয়ে ওজন হ্রাসে ভূমিকা রাখে।<br>১১। ত্বক মসৃণ ও সজীব রাখতে কাজ করে এটি।<br>১২। রূপচর্চায় এক বহুল ব্যবহৃত উপাদান।<br>১৩। উচ্চ রক্তচাপ নিয়ন্ত্রণে রাখতে বেশ ভালো কাজ করে।<br>১৪। হাঁপানি ও ফুসফুসের সমস্যা সমাধানে কার্যকরী।<br>১৫। সর্দি, কাশি, গলা ব্যথা দূর করতে চমৎকার কাজ করে।</p><h3 style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-weight: 600; font-stretch: inherit; line-height: 1.4; font-family: Poppins, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 22px; color: rgb(45, 42, 42);\">খাস ফুডের কালিজিরা মধু কেনো নিবেন?</h3><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\">১। কালিজিরা ফুলের নেকটার থেকে সংগৃহীত মধুর নিশ্চয়তা।<br>২। শতভাগ খাঁটি মধুর নিশ্চয়তা।<br>৩। মধু সংগ্রহ থেকে প্যাকেজিং পর্যন্ত কার্যাবলী নিজস্ব তত্ত্বাবধানে সম্পন্ন করা হয়।</p>',NULL,1,1,0,NULL,1,NULL,NULL,'2025-01-10 04:16:55','2025-01-10 04:16:55'),
(166,'Gawa Ghee – গাওয়া ঘি','gawa-ghee-–-গাওয়া-ঘি-177',11,0,NULL,NULL,'P0166',1000,1500,1300,100,NULL,NULL,'<p style=\"margin-right: 0px; margin-bottom: var(--wd-tags-margin-bottom); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Lato, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Gawa ghee</span>&nbsp;is specially customized for the East Indian taste palette. It is made from good quality milk; it has a rich brownish color. Its aroma will give your family a hint that something special is on the way.</p><p style=\"margin-right: 0px; margin-bottom: var(--wd-tags-margin-bottom); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Lato, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Product Type:&nbsp;</span>Gawa Ghee</p><p style=\"margin-right: 0px; margin-bottom: var(--wd-tags-margin-bottom); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Lato, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Type:</span>&nbsp;Natural and Organic</p><p style=\"margin-right: 0px; margin-bottom: var(--wd-tags-margin-bottom); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Lato, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Brand:</span>&nbsp;Organic Online Bangladesh</p><p style=\"margin-right: 0px; margin-bottom: var(--wd-tags-margin-bottom); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Lato, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Net Weight:</span>&nbsp;200, 400, 1000 gm</p><p style=\"margin-right: 0px; margin-bottom: var(--wd-tags-margin-bottom); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Lato, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Made In:</span>&nbsp;Bangladesh</p><p style=\"margin-right: 0px; margin-bottom: var(--wd-tags-margin-bottom); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Lato, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Health Benefits of Gawa Ghee</span></p><ul style=\"margin-right: 0px; margin-bottom: var(--list-mb); margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: var(--li-pl); border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Lato, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; list-style-position: initial; list-style-image: initial; --list-mb: 20px; --li-mb: 10px; --li-pl: 17px; color: rgb(119, 119, 119);\"><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Soothes and Heals Skin</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Reduces exposure to cancer-causing agents</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Helps moisturize dry skin and hair</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">It has anti-inflammatory properties</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Contains heart-healthy fats</li><li style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Nutritional powerhouse</li></ul><p style=\"margin-right: 0px; margin-bottom: var(--wd-tags-margin-bottom); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Lato, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Why Organic Online Bangladesh?</span></p><ul style=\"margin-right: 0px; margin-bottom: var(--list-mb); margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: var(--li-pl); border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Lato, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; list-style-position: initial; list-style-image: initial; --list-mb: 20px; --li-mb: 10px; --li-pl: 17px; color: rgb(119, 119, 119);\"><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">100% pure</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Completely adulterated Chemical free</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Proper quality and nutrition</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Own supervision in the production process</li><li style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">High in demand</li></ul><p style=\"margin-right: 0px; margin-bottom: var(--wd-tags-margin-bottom); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Lato, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\">To order your desired products with guaranteed purity – follow any of the steps below, and we will do the rest for you with care!</p>',NULL,1,1,0,NULL,1,NULL,NULL,'2025-01-10 04:20:48','2025-01-20 13:41:35'),
(167,'Malai Ghee – মালাই ঘি','malai-ghee-–-মালাই-ঘি-167',11,0,NULL,NULL,'P0167',1000,2500,2300,100,NULL,NULL,'<p style=\"margin-right: 0px; margin-bottom: var(--wd-tags-margin-bottom); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Lato, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Why Organic Online Bangladesh?</span></p><ul style=\"margin-right: 0px; margin-bottom: var(--list-mb); margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: var(--li-pl); border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Lato, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; list-style-position: initial; list-style-image: initial; --list-mb: 20px; --li-mb: 10px; --li-pl: 17px; color: rgb(119, 119, 119);\"><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">100% pure</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Completely adulterated Chemical free</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Proper quality and nutrition</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Own supervision in the production process</li><li style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">High in demand</li></ul>',NULL,1,1,0,NULL,1,NULL,NULL,'2025-01-10 05:49:56','2025-01-10 05:49:56'),
(168,'Pure Ghee (ঘি)','pure-ghee-(ঘি)-168',11,0,NULL,NULL,'P0168',1000,1900,950,100,NULL,NULL,'<p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\">ঘি (Ghee) বাঙালি রসনার এক ঐতিহ্যবাহী উপাদান। গরম ভাত অথবা ভর্তার সাথে একটুখানি&nbsp;&nbsp;<a href=\"https://bn.wikipedia.org/wiki/%E0%A6%98%E0%A6%BF#:~:text=%E0%A6%98%E0%A6%BF%20%E0%A6%AD%E0%A6%BE%E0%A6%B0%E0%A6%A4%E0%A7%80%E0%A6%AF%E0%A6%BC%20%E0%A6%89%E0%A6%AA%E0%A6%AE%E0%A6%B9%E0%A6%BE%E0%A6%A6%E0%A7%87%E0%A6%B6%E0%A7%87%20%E0%A6%89%E0%A6%A6%E0%A7%8D%E0%A6%AD%E0%A7%82%E0%A6%A4%20%E0%A6%B9%E0%A6%93%E0%A6%AF%E0%A6%BC%E0%A6%BE,%E0%A6%AC%E0%A6%B9%E0%A7%81%E0%A6%A6%E0%A6%BF%E0%A6%A8%20%E0%A6%A7%E0%A6%B0%E0%A7%87%20%E0%A6%AC%E0%A7%8D%E0%A6%AF%E0%A6%AC%E0%A6%B9%E0%A7%83%E0%A6%A4%20%E0%A6%B9%E0%A6%AF%E0%A6%BC%E0%A7%87%20%E0%A6%86%E0%A6%B8%E0%A6%9B%E0%A7%87%E0%A5%A4\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; touch-action: manipulation; color: rgb(63, 63, 63); text-decoration: none; transition: 0.25s;\">ঘি</a>&nbsp;খাবারের স্বাদকে বাড়িয়ে দেয় বহুগুণে। শুধু ভাত ভর্তাই নয়, পোলাও, কোরমা বা বিরিয়ানী থেকে শুরু করে মিষ্টান্ন সব ধরনের খাবার প্রস্তুতিতেই এর ব্যবহার লক্ষ্যনীয়। এটি মূলত এক ধরনের&nbsp;<a href=\"https://www.khaasfood.com/product-category/dairy/\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; touch-action: manipulation; color: rgb(63, 63, 63); text-decoration: none; transition: 0.25s;\">দুগ্ধ জাত</a>&nbsp;খাবার। দুধ থেকে ননী বা দুধের ক্রিম আলাদা করে তা জ্বাল দিয়ে তৈরি করা হয় এই খাবারটি। মাখনের সাথে এর একটি পার্থক্য হচ্ছে এটি রেফ্রিজারেটরে না রেখেও দীর্ঘদিন সংরক্ষণ করা যায়।</p><h2 style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-weight: 600; font-stretch: inherit; line-height: 1.4; font-family: Poppins, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 24px; color: rgb(45, 42, 42);\">ঘি এর উপকারিতা –</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\">১। স্বাস্থ্যকর ফ্যাট জাতীয় খাবার।<br>২। এটি হজমজনিত সমস্যা দূর করে। পাশাপাশি গ্যাস্ট্রিকের সমস্যা নিরসনেও ভূমিকা রাখে।<br>৩। মানসিক চাপ ও উদ্বেগ কমাতে ভূমিকা রাখে।<br>৪। হৃদস্বাস্থ্যের জন্য বেশ ভালো।<br>৫। এটি প্রদাহবিরোধী একটি খাবার।<br>৬। ত্বক ভালো রাখে। একই সাথে মুখের ঘা দূর করতে সাহায্য করে।<br>৭। ক্ষুধামন্দা দূর করতে ভূমিকা রাখে।<br>৮। আয়ুর্বেদিক শাস্ত্রে এর বিশেষ ব্যবহার রয়েছে।</p><h2 style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-weight: 600; font-stretch: inherit; line-height: 1.4; font-family: Poppins, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 24px; color: rgb(45, 42, 42);\">খাস খাঁটি ঘি (Ghee) কেনো আলাদা?</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">১।&nbsp;</span><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">খাস ফুডের ঘি গরুর শতভাগ খাঁটি দুধ থেকে তৈরি।</span><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><br></span><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">২। বেস্ট কোয়ালিটির ক্রিম থেকে তৈরি।</span><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><br></span><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">৩। কোন ধরণের ডালডা বা ভেজালের মিশ্রণ নেই।</span><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><br></span><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">৪। ফুড কালার, ফ্লেভার বা কেমিক্যালের মিশ্রণ নেই।</span><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><br></span><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">৫। উৎপাদনের সময় বিশেষ ফর্মুলা মেন্টেইন করা হয়, ফলে কোয়ালিটি হয় সেরা।</span></p>',NULL,1,1,0,NULL,1,NULL,NULL,'2025-01-10 05:54:07','2025-01-10 05:54:07'),
(169,'Peanut Butter (Diabetics)','peanut-butter-(diabetics)-169',11,0,NULL,NULL,'P0169',1000,1500,1400,100,NULL,NULL,'<p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\"><a href=\"https://en.wikipedia.org/wiki/Peanut_butter\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; touch-action: manipulation; color: rgb(63, 63, 63); text-decoration: none; transition: 0.25s;\">Peanut Butter</a>&nbsp;(Diabetics) মূলত ডায়াবেটিক রোগীদের কথা বিবেচনায় রেখে প্রস্তুত করা। ডায়াবেটিক রোগীদের চিনি বা চিনিজাতীয় খাবারের প্রতি একটা আকর্ষণ থাকে। কিন্তু তাদের স্বাস্থ্য বিবেচনায় মিষ্টির উপর এক প্রকার নিষেধাজ্ঞা জারি হয়। এই ব্যপারগুলো বিবেচনায় রেখে&nbsp;<a href=\"https://www.khaasfood.com/\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; touch-action: manipulation; color: rgb(63, 63, 63); text-decoration: none; transition: 0.25s;\">খাস ফুড</a>&nbsp;নিয়ে এসেছে Peanut Butter (Diabetic) যা চিনি বিহীন।</p><h2 style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-weight: 600; font-stretch: inherit; line-height: 1.4; font-family: Poppins, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 24px; color: rgb(45, 42, 42);\">খাস Peanut Butter (Diabetics) এর উপকরণ –</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">রোস্টেড চিনাবাদাম, লবণ ও খাঁটি ঘি।</span></p><h2 style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-weight: 600; font-stretch: inherit; line-height: 1.4; font-family: Poppins, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 24px; color: rgb(45, 42, 42);\">Peanut Butter (Diabetic) এর উপকারিতা –</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">১। এতে রয়েছে প্রোটিন, ফাইবার, স্বাস্থ্যকর ফ্যাট, ম্যাগনেসিয়াম, ভিটামিন ই। এছাড়াও পটাশিয়াম সমৃদ্ধ পিনাট বাটারে অল্প পরিমাণ জিঙ্কও রয়েছে। প্রতিটি উপাদানই আমাদের স্বাস্থ্যের পক্ষে অত্যন্ত গুরুত্বপূর্ণ।<br></span><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">২। প্রতিদিন এর খাদ্য তালিকায় পিনাট বাটার রাখলে এটি ওজন নিয়ন্ত্রণে ভূমিকা রাখে। ফলে ওজন অতিরিক্ত বেড়ে যাবে না,&nbsp; আবার শরীরেও যথাযথ পুষ্টি যোগাবে। তবে অবশ্যই অতিরিক্ত মাত্রায় গ্রহণ করা থেকে বিরত থাকতে হবে।<br></span><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">৩। এতে প্রচুর পরিমাণে অ্যান্টি-অক্সিডেন্ট বিদ্যমান যা আমাদের দেহের রোগ প্রতিরোধ ক্ষমতা বৃদ্ধিতে ভূমিকা রাখে।<br></span><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">৪। হৃদপিণ্ডের জন্য স্বাস্থ্যকর মনোস্যাচুরেটেড ফ্যাট রয়েছে এই পিনাট বাটারে।<br></span><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">৫। এটি কোলেস্টেরলের মাত্রা কমায়।<br></span><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">৬। এটি টাইপ টু ডায়াবিটিসের ঝুঁকি কমায়।<br></span><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">৭। এই পিনাট বাটার কোলন ক্যান্সার, প্রস্টেট ক্যান্সার এবং স্তন ক্যানসার প্রতিরোধ করে।<br></span><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">৮। গলব্লাডার স্টোন বা গলস্টোনের ঝুঁকি কমায়।</span></p><h2 style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-weight: 600; font-stretch: inherit; line-height: 1.4; font-family: Poppins, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 24px; color: rgb(45, 42, 42);\">যেভাবে খাবেন –</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">শুধু ডায়াবেটিক রোগীই নয় বরং হাল্কা স্ন্যাক্স হিসেবে ছোট বড় সবাই যেকোনো&nbsp; সময় খেতে পারবেন। প্রতিদিনের নাস্তায় রুটি বা ব্রেডের সাথে পরিমাণ মত মিশিয়ে নিলেই হয়ে যাবে চমৎকার পুষ্টিসম্পন্ন সকালের নাস্তা।</span></p><h3 style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-weight: 600; font-stretch: inherit; line-height: 1.4; font-family: Poppins, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 22px; color: rgb(45, 42, 42);\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 400; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">সংরক্ষণ পদ্ধতিঃ</span></h3><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">স্বাভাবিক তাপমাত্রায় ৩ মাস পর্যন্ত রাখা যায় এবং পরবর্তীতে ফ্রিজে রাখলে আরও ৪ মাস পর্যন্ত রাখা যাবে। তবে ভেজা হাত এবং ভেজা চামচ ব্যবহার করা যাবে না এবং এয়ার টাইট রাখতে।</span></p>',NULL,1,1,0,NULL,1,NULL,NULL,'2025-01-10 05:58:30','2025-01-10 05:58:30'),
(170,'Khaas Signature Ghee','khaas-signature-ghee-170',11,0,NULL,NULL,'P0170',1000,1500,1100,100,NULL,NULL,'<p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">KHAAS SIGNATURE&nbsp; GHEE: PURE, ARTISANAL, AND LUXURIOUS</span></p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\">Discover the Essence of Tradition with Khaas Signature Ghee</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">PURE ARTISANAL CRAFTSMANSHIP</span><br>Experience the pinnacle of culinary excellence with Khaas Signature Ghee. Crafted using traditional methods passed down through generations, our ghee is a celebration of heritage and quality. Each batch is meticulously prepared by expert artisans, ensuring that you receive nothing but the finest product, rich in flavor and history.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">EXCEPTIONAL QUALITY INGREDIENTS</span><br>Khaas Signature Ghee is made from the&nbsp;<span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">freshest, GRASS-FED COW’S A2 MILK</span>, sourced from pristine pastures. Our commitment to quality begins at the source, where our cows graze on natural, nutrient-rich grass, resulting in milk of superior purity and taste. This milk is then slowly simmered to perfection, allowing the butterfat to separate and develop its distinctive, golden hue and nutty aroma.</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">NUTRIENT-RICH AND HEALTHFUL</span><br>Packed with essential vitamins and nutrients, Khaas Signature Ghee is more than just a cooking ingredient—it’s a powerhouse of health benefits. Rich in Vitamins A, D, E, and K, our ghee supports a healthy immune system, aids in digestion, and promotes overall well-being. Its high smoke point makes it perfect for frying, and roasting, while its creamy texture and delightful taste enhance any dish. Our ghee promises to transform your culinary creations into gourmet masterpieces!</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">LUXURIOUS AND SUSTAINABLE PACKAGING</span><br>Presented in elegantly designed, reusable glass jars, Khaas Signature Ghee not only stands out on your kitchen shelf but also aligns with sustainable practices. Our packaging ensures the ghee retains its freshness and quality, while the minimalist yet luxurious design reflects the premium nature of our product. Each jar is sealed with care, guaranteeing that you receive ghee of the highest standard every time.</p>',NULL,1,1,0,NULL,1,NULL,NULL,'2025-01-10 05:59:45','2025-01-10 05:59:45'),
(171,'Khaas Signature Laccha Semai','khaas-signature-laccha-semai-171',11,0,NULL,NULL,'P0171',1000,1900,1300,100,NULL,NULL,'<h2 style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-weight: 600; font-stretch: inherit; line-height: 1.4; font-family: Poppins, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 24px; color: rgb(45, 42, 42);\">Handcrafted Premium Laccha Semai: Rich in Tradition &amp; Flavor</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\">Our Premium Laccha Semai is handcrafted with meticulous attention to detail. Using age-old techniques passed down through generations, our artisans create delicate, golden strands of Semai that are both a visual and gastronomic delight. This dedication to tradition ensures that each serving is a masterpiece of texture and flavor.</p><h3 style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-weight: 600; font-stretch: inherit; line-height: 1.4; font-family: Poppins, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 22px; color: rgb(45, 42, 42);\">Experience the Rich Taste of Laccha Semai with Saffron, Ghee, and 17+ Premium Ingredients</h3><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\">We use only the highest quality 17+ INGREDIENTS, RANGING FROM COCONUT MILK, BUTTER TO SAFFRON, to create our&nbsp; Laccha Semai. The finest semolina is blended with pure ghee (NO PALM OLEIN OR MARGARINE &amp; COMPLETELY TRANSFAT-FREE) to achieve a rich, buttery flavor. Infused with fragrant cardamom, and fruit extract and garnished with premium nuts and raisins, every mouthful promises an unparalleled taste experience.</p><h3 style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-weight: 600; font-stretch: inherit; line-height: 1.4; font-family: Poppins, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 22px; color: rgb(45, 42, 42);\">Indulge in the Luxurious Taste of Laccha Semai: Perfect for Festive Occasions &amp; Family Grinathegs</h3><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\">Experience the luxurious texture and heavenly aroma that define our Laccha Semai. The silky strands melt in your mouth, while the subtle sweetness and aromatic spices create a symphony of flavors. Perfect for festive occasions, family gatherings, or simply indulging yourself, our Laccha Semai adds a touch of elegance to any moment.</p><h3 style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-weight: 600; font-stretch: inherit; line-height: 1.4; font-family: Poppins, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 22px; color: rgb(45, 42, 42);\">Elevate Your Taste with Our Premium Laccha Semai Dessert – A Blend of Tradition and Luxury</h3><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\">Embrace the rich history and cultural significance of Laccha Semai, a dessert that has been cherished for decades. Our premium version honors this legacy while elevating it to new heights, blending tradition with sophistication for a truly memorable experience.</p>',NULL,1,1,0,NULL,1,NULL,NULL,'2025-01-10 06:01:01','2025-01-10 06:01:01'),
(172,'Almond (কাঠ বাদাম)','almond-(কাঠ-বাদাম)-172',13,0,NULL,NULL,'P0172',1000,2000,1500,100,NULL,NULL,'<p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\">কাঠ বাদাম (Almond) বেশ জনপ্রিয় ও স্বাস্থ্যকর খাবাদের তালিকায় এক অনন্য জায়গা ধরে রেখেছে। যদিও অনেকে বাদামকে ফ্যাটের ভালো উৎস ভেবে গ্রহণ করা থেকে বিরত থাকেন। তবে বাদামে উপস্থিত ফ্যাট দেহের জন্য উপকারী ফ্যাট। তাই কিছু পরিমাণ বাদামের নিয়মিত গ্রহণ সুস্থতায় ভালো ভূমিকা রাখে।</p><h2 dir=\"ltr\" data-placeholder=\"Translation\" style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-weight: 600; font-stretch: inherit; line-height: 1.4; font-family: Poppins, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 24px; color: rgb(45, 42, 42);\">কাঠ বাদামের স্বাস্থ্য উপকারিতা</h2><p dir=\"ltr\" data-placeholder=\"Translation\" style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\">১। ক্যালসিয়াম, ফাইবার, পটাসিয়াম, ম্যাগনেসিয়াম, ফসফরাস, ভিটামিন ই এর মতন গুরুত্বপূর্ণ পুষ্টি উপাদানের চমৎকার উৎস।<br>২। মস্তিষ্কের কর্মক্ষমতা বৃদ্ধিতে এবং শিশুদের পরিপূর্ণ বিকাশে অত্যন্ত গুরুত্বপূর্ণ ভূমিকা রাখে।<br>৩। কোলন ভালো রাখে ও কোলন ক্যান্সার প্রতিহত করতে সহায়তা করে এই বাদাম।<br>৪। হৃদসুরক্ষা প্রদানে এই বাদাম অত্যন্ত চমৎকার কাজ করে। এতে বিদ্যমান পটাসিয়াম, ম্যাগনেসিয়াম, ভিটামিন ই হৃদরোগের ঝুঁকি কমায় এবং হার্ট অ্যাটাক প্রতিরোধে ভূমিকা রাখে। এমনকি নিয়মিত এই&nbsp;<a href=\"https://www.khaasfood.com/?s=nuts&amp;post_type=product&amp;product_cat=0\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; touch-action: manipulation; color: rgb(63, 63, 63); text-decoration: none; transition: 0.25s;\">বাদাম</a>&nbsp;গ্রহণ করলে হার্ট অ্যাটাকের ঝুঁকি ৫০% পর্যন্ত কমে।<br>৫। ডায়াবেটির রোগীদের ক্ষেত্রে ইনসুলিনের মাত্রা কমাতে সাহায্য করে এটি।<br>৬। উচ্চ রক্তচাপ নিয়ন্ত্রণে রাখতে কাজ করে এটি।<br>৭। ক্ষিদে কমাতে এটি বেশ ভালো কাজ করে। ফলে স্বাস্থ্যকর উপায়ে ওজন নিয়ন্ত্রণে রাখা সহজ হয়।<br>৮। খারাপ কোলেস্টেরল কমিয়ে সুস্থতা বজায় রাখতে সাহায্য করে এই বাদাম।<br>৯। স্ট্রোকের ঝুঁকি হ্রাস করে।<br>১০। এতে বিদ্যমান ভিটামিন ই ত্বকের যত্নে দারুণ কার্যকরী ভূমিকা রাখে।<br>১১। রূপচর্চায়ও এই বাদাম বিশেষভাবে ভূমিকা রাখে।<br>১২। ত্বকের ঔজ্জ্বল্য ধরে রাখতে এর জুড়ি মেলা ভার।</p><h2 dir=\"ltr\" data-placeholder=\"Translation\" style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-weight: 600; font-stretch: inherit; line-height: 1.4; font-family: Poppins, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 24px; color: rgb(45, 42, 42);\">কেনো খাস ফুডের কাঠ বাদাম (Almond) নিবেন?</h2><p dir=\"ltr\" data-placeholder=\"Translation\" style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\">১। আমেরিকা থেকে আমদানিকৃত কাঠ বাদাম সরবরাহ করা হয়।<br>২। নিজস্ব তত্ত্বাবধানে বাছাইকৃত বাদাম আলাদা করে প্যাকেটজাত করা হয়।<br>৩। প্যাকেজিং এর তারিখ হতে ৪ মাস পর্যন্ত এই বাদামের মেয়াদ থাকে।</p>',NULL,1,1,0,NULL,1,NULL,NULL,'2025-01-10 06:03:55','2025-01-10 06:03:55'),
(173,'Almond (কাঠ বাদাম)','almond-(কাঠ-বাদাম)-173',13,0,NULL,NULL,'P0173',1000,2000,1500,100,NULL,NULL,'<p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\">কাঠ বাদাম (Almond) বেশ জনপ্রিয় ও স্বাস্থ্যকর খাবাদের তালিকায় এক অনন্য জায়গা ধরে রেখেছে। যদিও অনেকে বাদামকে ফ্যাটের ভালো উৎস ভেবে গ্রহণ করা থেকে বিরত থাকেন। তবে বাদামে উপস্থিত ফ্যাট দেহের জন্য উপকারী ফ্যাট। তাই কিছু পরিমাণ বাদামের নিয়মিত গ্রহণ সুস্থতায় ভালো ভূমিকা রাখে।</p><h2 dir=\"ltr\" data-placeholder=\"Translation\" style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-weight: 600; font-stretch: inherit; line-height: 1.4; font-family: Poppins, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 24px; color: rgb(45, 42, 42);\">কাঠ বাদামের স্বাস্থ্য উপকারিতা</h2><p dir=\"ltr\" data-placeholder=\"Translation\" style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\">১। ক্যালসিয়াম, ফাইবার, পটাসিয়াম, ম্যাগনেসিয়াম, ফসফরাস, ভিটামিন ই এর মতন গুরুত্বপূর্ণ পুষ্টি উপাদানের চমৎকার উৎস।<br>২। মস্তিষ্কের কর্মক্ষমতা বৃদ্ধিতে এবং শিশুদের পরিপূর্ণ বিকাশে অত্যন্ত গুরুত্বপূর্ণ ভূমিকা রাখে।<br>৩। কোলন ভালো রাখে ও কোলন ক্যান্সার প্রতিহত করতে সহায়তা করে এই বাদাম।<br>৪। হৃদসুরক্ষা প্রদানে এই বাদাম অত্যন্ত চমৎকার কাজ করে। এতে বিদ্যমান পটাসিয়াম, ম্যাগনেসিয়াম, ভিটামিন ই হৃদরোগের ঝুঁকি কমায় এবং হার্ট অ্যাটাক প্রতিরোধে ভূমিকা রাখে। এমনকি নিয়মিত এই&nbsp;<a href=\"https://www.khaasfood.com/?s=nuts&amp;post_type=product&amp;product_cat=0\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; touch-action: manipulation; color: rgb(63, 63, 63); text-decoration: none; transition: 0.25s;\">বাদাম</a>&nbsp;গ্রহণ করলে হার্ট অ্যাটাকের ঝুঁকি ৫০% পর্যন্ত কমে।<br>৫। ডায়াবেটির রোগীদের ক্ষেত্রে ইনসুলিনের মাত্রা কমাতে সাহায্য করে এটি।<br>৬। উচ্চ রক্তচাপ নিয়ন্ত্রণে রাখতে কাজ করে এটি।<br>৭। ক্ষিদে কমাতে এটি বেশ ভালো কাজ করে। ফলে স্বাস্থ্যকর উপায়ে ওজন নিয়ন্ত্রণে রাখা সহজ হয়।<br>৮। খারাপ কোলেস্টেরল কমিয়ে সুস্থতা বজায় রাখতে সাহায্য করে এই বাদাম।<br>৯। স্ট্রোকের ঝুঁকি হ্রাস করে।<br>১০। এতে বিদ্যমান ভিটামিন ই ত্বকের যত্নে দারুণ কার্যকরী ভূমিকা রাখে।<br>১১। রূপচর্চায়ও এই বাদাম বিশেষভাবে ভূমিকা রাখে।<br>১২। ত্বকের ঔজ্জ্বল্য ধরে রাখতে এর জুড়ি মেলা ভার।</p><h2 dir=\"ltr\" data-placeholder=\"Translation\" style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-weight: 600; font-stretch: inherit; line-height: 1.4; font-family: Poppins, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 24px; color: rgb(45, 42, 42);\">কেনো খাস ফুডের কাঠ বাদাম (Almond) নিবেন?</h2><p dir=\"ltr\" data-placeholder=\"Translation\" style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\">১। আমেরিকা থেকে আমদানিকৃত কাঠ বাদাম সরবরাহ করা হয়।<br>২। নিজস্ব তত্ত্বাবধানে বাছাইকৃত বাদাম আলাদা করে প্যাকেটজাত করা হয়।<br>৩। প্যাকেজিং এর তারিখ হতে ৪ মাস পর্যন্ত এই বাদামের মেয়াদ থাকে।</p>',NULL,1,1,0,NULL,1,NULL,NULL,'2025-01-10 06:03:55','2025-01-10 06:03:55'),
(174,'Maryam Dates (Saudi) (মরিয়ম খেজুর)','maryam-dates-(saudi)-(মরিয়ম-খেজুর)-174',13,0,NULL,NULL,'P0174',1000,1500,1100,100,NULL,NULL,'<p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\">মরিয়ম খেজুর (Maryam Dates) সৌদি আরবের এক অতি পরিচিত&nbsp;<a href=\"https://www.khaasfood.com/?s=%E0%A6%96%E0%A7%87%E0%A6%9C%E0%A7%81%E0%A6%B0&amp;post_type=product&amp;product_cat=0\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; touch-action: manipulation; color: rgb(63, 63, 63); text-decoration: none; transition: 0.25s;\">খেজুর</a>। আরবের প্রাচীনতম প্রসিদ্ধ খেজুরগুলোর মধ্যে অন্যতম এই মরিয়ম খেজুর। সৌদির বিভিন্ন অঞ্চলে এর উপস্থিতি লক্ষ্যনীয়।</p><h2 style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-weight: 600; font-stretch: inherit; line-height: 1.4; font-family: Poppins, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 24px; color: rgb(45, 42, 42);\">খাস ফুডের মরিয়ম খেজুর (Maryam Dates) কেনো সেরা?</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\">১। খাস ফুডের মরিয়ম খেজুর সরাসরি আমদানিকারকদের থেকে সংগ্রহ করে গ্রাহকদের কাছে পৌঁছে দেওয়া হয়।<br>২। এই খেজুর সংরক্ষণে কোন রূপ কেমিক্যাল এর ব্যবহার করা হয় না।<br>৩। কোল্ড স্টোরেজে সংরক্ষিত এ খেজুর চাহিদা মত গ্রাহকদের কাছে সরবরাহ করা হয়।<br>৪। কোল্ড স্টোরেজে সঠিক তাপমাত্রায় নিরাপদে সংরক্ষণ করা হয় বিধায় এর মান নিয়ে কোন সংশয় থাকে না।</p><h2 style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-weight: 600; font-stretch: inherit; line-height: 1.4; font-family: Poppins, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 24px; color: rgb(45, 42, 42);\">খেজুরের উপকারিতা</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\">১। স্নায়বিক শক্তি বৃদ্ধি করে।<br>২। হৃদরোগীদের জন্য বেশ উপকারী।<br>৩। রুচিবর্ধক হিসেবে কাজ করে।<br>৪। দৃষ্টিশক্তি ভালো রাখে।<br>৫। উচ্চ কোলেস্টেরল রোগীদের জন্য বেশ উপযোগী।<br>৬। দেহের রোগ প্রতিরোধ ক্ষমতা বৃদ্ধি করে।<br>৭। ত্বক ভালো রাখতে খেজুর বেশ উপযোগী খাবার।<br>৮। তাৎক্ষণিক শক্তি প্রদানের ক্ষেত্রে খেজুর ভালো কাজ করে।<br>৯।&nbsp;<a href=\"https://bn.wikipedia.org/wiki/%E0%A6%B0%E0%A6%95%E0%A7%8D%E0%A6%A4%E0%A6%B6%E0%A7%82%E0%A6%A8%E0%A7%8D%E0%A6%AF%E0%A6%A4%E0%A6%BE#:~:text=%E0%A6%B0%E0%A6%95%E0%A7%8D%E0%A6%A4%E0%A6%B6%E0%A7%82%E0%A6%A8%E0%A7%8D%E0%A6%AF%E0%A6%A4%E0%A6%BE%20%E0%A6%B9%E0%A6%B2%E0%A7%8B%20%E0%A6%B0%E0%A6%95%E0%A7%8D%E0%A6%A4%E0%A7%87%E0%A6%B0%20%E0%A6%8F%E0%A6%AE%E0%A6%A8%20%E0%A6%8F%E0%A6%95%E0%A6%9F%E0%A6%BF,%E0%A6%8F%E0%A6%AC%E0%A6%82%20%E0%A6%AC%E0%A7%8D%E0%A6%AF%E0%A6%BE%E0%A6%AF%E0%A6%BC%E0%A6%BE%E0%A6%AE%20%E0%A6%95%E0%A6%B0%E0%A6%BE%E0%A6%B0%20%E0%A6%95%E0%A6%AE%20%E0%A6%95%E0%A7%8D%E0%A6%B7%E0%A6%AE%E0%A6%A4%E0%A6%BE%E0%A5%A4\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; touch-action: manipulation; color: rgb(63, 63, 63); text-decoration: none; transition: 0.25s;\">রক্তশূন্যতা</a>&nbsp;দূর করতে ভূমিকা রাখে।<br>১০। হজম শক্তি বৃদ্ধিতে খেজুর ভূমিকা রাখে।</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\">খেজুর অত্যাধিক পুষ্টিগুণ সম্পন্ন একটি ফল। তবে আমদানিকৃত এইসব খেজুর সঠিকভাবে সংরক্ষণের অভাবে নষ্ট হয়ে যাওয়ার আশঙ্কা থাকে। খাস ফুড এক্ষেত্রে যত্নের সাথে সঠিকভাবে খেজুর সংরক্ষণ করে বিধায় খেজুর এক বছর পর্যন্ত ভালো থাকে। এই খেজুর আপনি পাউরুটি, কেক, বিস্কুট বা যেকোন বেকড খাবার, দই ইত্যাদির সাথে গ্রহণ করতে পারবেন।</p>',NULL,1,1,0,NULL,1,NULL,NULL,'2025-01-10 06:05:17','2025-01-10 06:05:17'),
(175,'Ajwa Dates (আজওয়া খেজুর)','ajwa-dates-(আজওয়া-খেজুর)-177',13,0,NULL,NULL,'P0175',1000,1900,1400,100,NULL,NULL,'<p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\">আজওয়া খেজুর (<a href=\"https://en.wikipedia.org/wiki/Ajwa_(date)#:~:text=Ajwa%20(Arabic%3A%20%D8%B9%D8%AC%D9%88%D9%87)%20is,with%20the%20Islamic%20prophet%20Muhammad.\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; touch-action: manipulation; color: rgb(63, 63, 63); text-decoration: none; transition: 0.25s;\">Ajwa</a>&nbsp;Dates) সৌদি আরবের এক অতি পরিচিত&nbsp;<a href=\"https://www.khaasfood.com/?s=%E0%A6%96%E0%A7%87%E0%A6%9C%E0%A7%81%E0%A6%B0&amp;post_type=product&amp;product_cat=0\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; touch-action: manipulation; color: rgb(63, 63, 63); text-decoration: none; transition: 0.25s;\">খেজুর</a>। আরবের প্রাচীনতম প্রসিদ্ধ খেজুরগুলোর মধ্যে অন্যতম এই আজওয়া খেজুর। সৌদির বিভিন্ন অঞ্চলে বিশেষত মদীনায় এর উপস্থিতি লক্ষ্যনীয়।</p><h2 style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-weight: 600; font-stretch: inherit; line-height: 1.4; font-family: Poppins, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 24px; color: rgb(45, 42, 42);\">খাস ফুডের আজওয়া খেজুর (Ajwa Dates) কেনো সেরা?</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\">১। খাস ফুডের আজওয়া খেজুর সরাসরি আমদানিকারকদের থেকে সংগ্রহ করে গ্রাহকদের কাছে পৌঁছে দেওয়া হয়।<br>২। এই খেজুর সংরক্ষণে কোন রূপ কেমিক্যাল এর ব্যবহার করা হয় না।<br>৩। কোল্ড স্টোরেজে সংরক্ষিত এ খেজুর চাহিদা মত গ্রাহকদের কাছে সরবরাহ করা হয়।<br>৪। কোল্ড স্টোরেজে সঠিক তাপমাত্রায় নিরাপদে সংরক্ষণ করা হয় বিধায় এর মান নিয়ে কোন সংশয় থাকে না।<br>৫। এই খেজুরের আকার মাঝারি হওয়ায় সহজে গ্রহণযোগ্য।</p><h2 style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-weight: 600; font-stretch: inherit; line-height: 1.4; font-family: Poppins, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 24px; color: rgb(45, 42, 42);\">খেজুরের উপকারিতা</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\">১। স্নায়বিক শক্তি বৃদ্ধি করে।<br>২। হৃদরোগীদের জন্য বেশ উপকারী।<br>৩। রুচিবর্ধক হিসেবে কাজ করে।<br>৪। দৃষ্টিশক্তি ভালো রাখে।<br>৫। উচ্চ কোলেস্টেরল রোগীদের জন্য বেশ উপযোগী।<br>৬। দেহের রোগ প্রতিরোধ ক্ষমতা বৃদ্ধি করে।<br>৭। ত্বক ভালো রাখতে খেজুর বেশ উপযোগী খাবার।<br>৮। তাৎক্ষণিক শক্তি প্রদানের ক্ষেত্রে খেজুর ভালো কাজ করে।<br>৯। রক্তশূন্যতা দূর করতে ভূমিকা রাখে।<br>১০। হজম শক্তি বৃদ্ধিতে খেজুর ভূমিকা রাখে।</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\">খেজুর অত্যাধিক পুষ্টিগুণ সম্পন্ন একটি ফল। তবে আমদানিকৃত এইসব খেজুর সঠিকভাবে সংরক্ষণের অভাবে নষ্ট হয়ে যাওয়ার আশঙ্কা থাকে। খাস ফুড এক্ষেত্রে যত্নের সাথে সঠিকভাবে খেজুর সংরক্ষণ করে বিধায় খেজুর এক বছর পর্যন্ত ভালো থাকে। এই খেজুর আপনি পাউরুটি, কেক, বিস্কুট বা যেকোন বেকড খাবার, দই ইত্যাদির সাথে গ্রহণ করতে পারবেন।</p>',NULL,1,1,0,NULL,1,NULL,NULL,'2025-01-10 06:06:46','2025-01-20 13:40:53'),
(176,'Ajwa Dates (আজওয়া খেজুর)','ajwa-dates-(আজওয়া-খেজুর)-177',13,0,NULL,NULL,'P0176',1000,1900,1400,100,NULL,NULL,'<p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\">আজওয়া খেজুর (<a href=\"https://en.wikipedia.org/wiki/Ajwa_(date)#:~:text=Ajwa%20(Arabic%3A%20%D8%B9%D8%AC%D9%88%D9%87)%20is,with%20the%20Islamic%20prophet%20Muhammad.\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; touch-action: manipulation; color: rgb(63, 63, 63); text-decoration: none; transition: 0.25s;\">Ajwa</a>&nbsp;Dates) সৌদি আরবের এক অতি পরিচিত&nbsp;<a href=\"https://www.khaasfood.com/?s=%E0%A6%96%E0%A7%87%E0%A6%9C%E0%A7%81%E0%A6%B0&amp;post_type=product&amp;product_cat=0\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; touch-action: manipulation; color: rgb(63, 63, 63); text-decoration: none; transition: 0.25s;\">খেজুর</a>। আরবের প্রাচীনতম প্রসিদ্ধ খেজুরগুলোর মধ্যে অন্যতম এই আজওয়া খেজুর। সৌদির বিভিন্ন অঞ্চলে বিশেষত মদীনায় এর উপস্থিতি লক্ষ্যনীয়।</p><h2 style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-weight: 600; font-stretch: inherit; line-height: 1.4; font-family: Poppins, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 24px; color: rgb(45, 42, 42);\">খাস ফুডের আজওয়া খেজুর (Ajwa Dates) কেনো সেরা?</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\">১। খাস ফুডের আজওয়া খেজুর সরাসরি আমদানিকারকদের থেকে সংগ্রহ করে গ্রাহকদের কাছে পৌঁছে দেওয়া হয়।<br>২। এই খেজুর সংরক্ষণে কোন রূপ কেমিক্যাল এর ব্যবহার করা হয় না।<br>৩। কোল্ড স্টোরেজে সংরক্ষিত এ খেজুর চাহিদা মত গ্রাহকদের কাছে সরবরাহ করা হয়।<br>৪। কোল্ড স্টোরেজে সঠিক তাপমাত্রায় নিরাপদে সংরক্ষণ করা হয় বিধায় এর মান নিয়ে কোন সংশয় থাকে না।<br>৫। এই খেজুরের আকার মাঝারি হওয়ায় সহজে গ্রহণযোগ্য।</p><h2 style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-weight: 600; font-stretch: inherit; line-height: 1.4; font-family: Poppins, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 24px; color: rgb(45, 42, 42);\">খেজুরের উপকারিতা</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\">১। স্নায়বিক শক্তি বৃদ্ধি করে।<br>২। হৃদরোগীদের জন্য বেশ উপকারী।<br>৩। রুচিবর্ধক হিসেবে কাজ করে।<br>৪। দৃষ্টিশক্তি ভালো রাখে।<br>৫। উচ্চ কোলেস্টেরল রোগীদের জন্য বেশ উপযোগী।<br>৬। দেহের রোগ প্রতিরোধ ক্ষমতা বৃদ্ধি করে।<br>৭। ত্বক ভালো রাখতে খেজুর বেশ উপযোগী খাবার।<br>৮। তাৎক্ষণিক শক্তি প্রদানের ক্ষেত্রে খেজুর ভালো কাজ করে।<br>৯। রক্তশূন্যতা দূর করতে ভূমিকা রাখে।<br>১০। হজম শক্তি বৃদ্ধিতে খেজুর ভূমিকা রাখে।</p><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\">খেজুর অত্যাধিক পুষ্টিগুণ সম্পন্ন একটি ফল। তবে আমদানিকৃত এইসব খেজুর সঠিকভাবে সংরক্ষণের অভাবে নষ্ট হয়ে যাওয়ার আশঙ্কা থাকে। খাস ফুড এক্ষেত্রে যত্নের সাথে সঠিকভাবে খেজুর সংরক্ষণ করে বিধায় খেজুর এক বছর পর্যন্ত ভালো থাকে। এই খেজুর আপনি পাউরুটি, কেক, বিস্কুট বা যেকোন বেকড খাবার, দই ইত্যাদির সাথে গ্রহণ করতে পারবেন।</p>',NULL,0,1,0,NULL,1,NULL,NULL,'2025-01-10 06:06:46','2025-01-10 06:12:31'),
(177,'Roasted Cashew Nuts (নোনা কাজু বাদাম)','roasted-cashew-nuts-(নোনা-কাজু-বাদাম)-177',13,0,NULL,NULL,'P0177',100,1200,1400,100,NULL,NULL,'<p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\">কাজু বাদাম (Cashew Nut) দেখতে অনেকটা বাঁকানো, কিডনি আকৃতির। অফ হোয়াইট রঙের এই&nbsp;<a href=\"https://www.khaasfood.com/product/roasted-deshi-peanut-%e0%a6%9a%e0%a6%bf%e0%a6%a8%e0%a6%be-%e0%a6%ac%e0%a6%be%e0%a6%a6%e0%a6%be%e0%a6%ae/\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; touch-action: manipulation; color: rgb(63, 63, 63); text-decoration: none; transition: 0.25s;\">বাদাম</a>&nbsp;খেতে যেমন সুস্বাদু তেমনি পুষ্টিগুণেও সেরা। এর উৎপত্তিস্থল ব্রাজিল সহ উত্তর আমেরিকা এবং উত্তর দক্ষিণ আমেরিকার কিছু অংশ। কিন্তু বর্তমানে ইন্দোনেশিয়া, কেনিয়া, ভারত, মালয়েশিয়া, মোজাম্বিক সহ বেশ কিছু দেশে চাষ হচ্ছে এই বাদাম। এই বাদাম মূলত বেলে দোঁআশ মাটি অথবা পাহাড়ের ঢালে ভ্লো জন্মে। ১০ থেকে ১২ মিটার উচ্চতার পূর্ণ বয়স্ক গাছ থেকে বাদাম সংগ্রহ করা হয়।</p><div style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\"><a href=\"https://bn.wikipedia.org/wiki/%E0%A6%95%E0%A6%BE%E0%A6%9C%E0%A7%81_%E0%A6%AC%E0%A6%BE%E0%A6%A6%E0%A6%BE%E0%A6%AE#:~:text=%E0%A6%8F%E0%A6%9F%E0%A6%BF%20%E0%A6%8F%E0%A6%95%E0%A6%9F%E0%A6%BF%20%E0%A6%AB%E0%A6%BE%E0%A6%87%E0%A6%AC%E0%A6%BE%E0%A6%B0%20%E0%A6%9C%E0%A6%BE%E0%A6%A4%E0%A7%80%E0%A6%AF%E0%A6%BC%20%E0%A6%96%E0%A6%BE%E0%A6%AC%E0%A6%BE%E0%A6%B0,%E0%A7%AC%E0%A7%AE%20%E0%A6%97%E0%A7%8D%E0%A6%B0%E0%A6%BE%E0%A6%AE%20%E0%A6%9A%E0%A6%BF%E0%A6%A8%E0%A6%BF%20%E0%A6%AA%E0%A6%BE%E0%A6%93%E0%A6%AF%E0%A6%BC%E0%A6%BE%20%E0%A6%AF%E0%A6%BE%E0%A6%AF%E0%A6%BC%E0%A5%A4\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; touch-action: manipulation; color: rgb(63, 63, 63); text-decoration: none; transition: 0.25s;\">কাজু বাদাম</a>&nbsp;(Cashew Nut)মূলত ভেজে খাওয়া হয়। খাস ফুড আপনাদের জন্য নিয়ে এসেছে নোনা স্বাদের রোস্টেড কাজু বাদাম।</div><h2 style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-weight: 600; font-stretch: inherit; line-height: 1.4; font-family: Poppins, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 24px; color: rgb(45, 42, 42);\">কাজু বাদাম কেনো খাবেন?</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\">১। প্রচুর পরিমাণে খাদ্যআঁশ, ভিটামিন ও খনিজ উপাদান বিদ্যমান।<br>২। এতে রয়েছে হাড়ের জন্য প্রয়োজনীয় ক্যালসিয়াম, ফসফরাস, ম্যাগনেশিয়াম ইত্যাদি খনিজ উপাদান।<br>৩। এতে বিদ্যমান দেহের জন্য প্রয়োজনীয় পুষ্টি উপাদান সমূহ দেহের রোগ প্রতিরোধ ক্ষমতা বৃদ্ধি করে।<br>৪। রক্তশূন্যতা প্রতিহত করতে ভূমিকা রাখে।<br>৫। মস্তিষ্কের কার্যক্ষমতা বাড়ায়।<br>৬। দেহে শক্তির যোগান দেয়।<br>৭। এতে আছে প্রোটিন এবং দেহের জন্য প্রয়োজনীয় ভালো ফ্যাট।<br>৮। ওজন কমাতে বিশেষ ভূমিকা রাখে।<br>৯। হৃদরোগ ও স্ট্রোকের ঝুঁকি কমায়।<br>১০। নিয়মিত গ্রহণে উচ্চরক্তচাপ নিয়ন্ত্রণে রাখে।<br>১১। ডায়াবেটিস রোগীদের জন্য বেশ উপাদেয়। কেননা এটি রক্তের শর্করা মাত্রা নিয়ন্ত্রণে রাখতে ভূমিকা রাখে।<br>১২। প্রচুর পরিমাণে অ্যান্টিঅক্সিডেন্ট সমৃদ্ধ যা ত্বকের জন্য বেশ ভালো। একই সাথে দৃষ্টিশক্তি ভালো রাখে।<br>১৩। এটি দেহে খারাপ কোলেস্টেরল হিসেবে খ্যাত LDL এর মাত্র কমায়।<br>১৪। ফ্রি র‍্যডিকেল এর ক্ষতিকর প্রভাব থেকে সুরক্ষা প্রদান করে।<br>১৫। এতে রয়েছে কপার, যা একটি ট্রেস মিনারেল। এই উপাদানটি দেহকে সুরক্ষা দেয়ার পাশাপাশি ত্বক ও চুলের জন্য বিশেষ উপকারী।</p><h2 style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-weight: 600; font-stretch: inherit; line-height: 1.4; font-family: Poppins, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 24px; color: rgb(45, 42, 42);\">কেনো নিবেন খাস ফুডের রোস্টেড কাজু বাদাম (Cashew Nut)?</h2><p style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-variant-emoji: inherit; font-stretch: inherit; line-height: inherit; font-family: Montserrat, Arial, Helvetica, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; color: rgb(119, 119, 119);\">১। সরাসরি ভিয়েতনাম থেকে ইম্পোর্ট করা।<br>২। ওভেনে রোস্ট করা হয়। ফলে কাঁচা থাকার বা অতিরিক্ত রোস্ট হয়ে যাওয়ার সম্ভাবনা নেই।<br>৩। সম্পূর্ণ নিজস্ব তত্ত্বাবধানে প্যাকেটজাত করে সরবরাহ করা হয়।<br>৪। সেরা মানের বাছাইকৃত বাদাম সরবরাহ করা হয়।<br>৫। সঠিকভাবে সংরক্ষণ করলে প্যাকেজিং এরপর ৪ মাস পর্যন্ত ভালো থাকে।</p>',NULL,0,1,0,NULL,1,NULL,NULL,'2025-01-10 06:08:15','2025-01-10 06:12:26');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productsizes`
--

DROP TABLE IF EXISTS `productsizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `productsizes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productsizes`
--

LOCK TABLES `productsizes` WRITE;
/*!40000 ALTER TABLE `productsizes` DISABLE KEYS */;
INSERT INTO `productsizes` VALUES
(1,1,12,'2024-02-05 09:40:29','2024-02-05 09:40:29'),
(2,1,13,'2024-02-05 09:40:29','2024-02-05 09:40:29'),
(4,1,15,'2024-02-05 09:40:29','2024-02-05 09:40:29'),
(5,35,7,'2024-02-05 09:54:29','2024-02-05 09:54:29'),
(6,35,8,'2024-02-05 09:54:29','2024-02-05 09:54:29'),
(7,35,9,'2024-02-05 09:54:29','2024-02-05 09:54:29'),
(8,28,6,'2024-02-05 14:06:19','2024-02-05 14:06:19'),
(9,28,7,'2024-02-05 14:06:19','2024-02-05 14:06:19'),
(10,28,8,'2024-02-05 14:06:19','2024-02-05 14:06:19'),
(11,28,9,'2024-02-05 14:06:19','2024-02-05 14:06:19'),
(12,2,6,'2024-02-05 14:07:27','2024-02-05 14:07:27'),
(13,2,7,'2024-02-05 14:07:27','2024-02-05 14:07:27'),
(14,2,8,'2024-02-05 14:07:27','2024-02-05 14:07:27'),
(15,131,6,'2024-03-13 00:28:08','2024-03-13 00:28:08'),
(16,131,7,'2024-03-13 00:28:08','2024-03-13 00:28:08'),
(17,131,8,'2024-03-13 00:28:08','2024-03-13 00:28:08'),
(18,131,9,'2024-03-13 00:28:08','2024-03-13 00:28:08'),
(19,131,10,'2024-03-13 00:28:08','2024-03-13 00:28:08'),
(20,117,6,'2024-07-03 01:33:09','2024-07-03 01:33:09'),
(21,117,7,'2024-07-03 01:33:09','2024-07-03 01:33:09'),
(22,117,8,'2024-07-03 01:33:09','2024-07-03 01:33:09'),
(23,117,9,'2024-07-03 01:33:09','2024-07-03 01:33:09'),
(24,1,10,'2024-07-06 15:29:32','2024-07-06 15:29:32'),
(25,132,7,'2024-07-06 17:39:48','2024-07-06 17:39:48'),
(26,132,8,'2024-07-06 17:39:48','2024-07-06 17:39:48'),
(27,133,6,'2024-08-13 10:03:44','2024-08-13 10:03:44'),
(28,133,8,'2024-08-13 10:03:44','2024-08-13 10:03:44'),
(29,130,6,'2024-09-04 13:28:03','2024-09-04 13:28:03'),
(30,130,8,'2024-09-04 13:28:03','2024-09-04 13:28:03'),
(31,130,9,'2024-09-04 13:28:03','2024-09-04 13:28:03'),
(32,135,6,'2024-10-26 12:56:55','2024-10-26 12:56:55'),
(33,135,7,'2024-10-26 12:56:55','2024-10-26 12:56:55'),
(34,135,8,'2024-10-26 12:56:55','2024-10-26 12:56:55'),
(35,135,9,'2024-10-26 12:56:55','2024-10-26 12:56:55'),
(36,135,10,'2024-10-26 12:56:55','2024-10-26 12:56:55'),
(39,157,7,'2024-12-04 01:23:35','2024-12-04 01:23:35'),
(40,157,8,'2024-12-04 01:23:35','2024-12-04 01:23:35'),
(41,157,9,'2024-12-04 01:23:35','2024-12-04 01:23:35'),
(42,157,10,'2024-12-04 01:23:35','2024-12-04 01:23:35'),
(43,158,7,'2024-12-05 15:43:20','2024-12-05 15:43:20');
/*!40000 ALTER TABLE `productsizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(55) NOT NULL,
  `ratting` varchar(4) NOT NULL,
  `review` text NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `status` varchar(55) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES
(8,'Md Sisir 01715473190','N / A','5','অনকে সুন্দরে',158,103,'active','2024-12-05 15:50:06','2024-12-05 15:50:06');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_has_permissions`
--

LOCK TABLES `role_has_permissions` WRITE;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
INSERT INTO `role_has_permissions` VALUES
(1,1),
(2,1),
(3,1),
(4,1),
(5,1),
(5,4),
(6,1),
(6,4),
(7,1),
(7,3),
(7,4),
(8,1),
(8,4),
(9,1),
(10,1),
(11,1),
(12,1),
(13,1),
(14,1),
(15,1),
(16,1),
(17,1),
(18,1),
(19,1),
(20,1),
(21,1),
(22,1),
(23,1),
(24,1),
(25,1),
(26,1),
(27,1),
(28,1),
(29,1),
(30,1),
(31,1),
(32,1),
(33,1),
(34,1),
(35,1),
(36,1),
(37,1),
(38,1),
(39,1),
(40,1),
(41,1),
(42,1),
(43,1),
(44,1),
(49,1),
(50,1),
(51,1),
(52,1),
(53,1),
(54,1),
(55,1),
(56,1),
(69,1),
(70,1),
(71,1),
(72,1),
(73,1),
(74,1),
(75,1),
(76,1);
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES
(1,'Admin','web','2023-01-11 06:33:09','2023-01-11 06:33:09'),
(3,'Editor','web','2023-01-19 06:41:33','2023-01-19 06:41:33'),
(4,'Salesman','web','2023-01-19 06:42:28','2023-01-19 06:42:28');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping_charges`
--

DROP TABLE IF EXISTS `shipping_charges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipping_charges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping_charges`
--

LOCK TABLES `shipping_charges` WRITE;
/*!40000 ALTER TABLE `shipping_charges` DISABLE KEYS */;
INSERT INTO `shipping_charges` VALUES
(1,'ঢাকার ভিতরে ৭০ টাকা',70,'1','2023-08-04 10:34:54','2023-08-18 19:51:03'),
(2,'ঢাকার বাহিরে  ১২০ টাকা ',120,'1','2023-08-04 10:35:57','2023-10-27 10:50:28'),
(4,'ফ্রি ডেলিভারি',0,'1','2024-12-02 15:15:04','2024-12-02 15:15:04');
/*!40000 ALTER TABLE `shipping_charges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shippings`
--

DROP TABLE IF EXISTS `shippings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `shippings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `name` varchar(155) NOT NULL,
  `phone` varchar(55) NOT NULL,
  `address` varchar(256) DEFAULT NULL,
  `area` varchar(256) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=220 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shippings`
--

LOCK TABLES `shippings` WRITE;
/*!40000 ALTER TABLE `shippings` DISABLE KEYS */;
INSERT INTO `shippings` VALUES
(216,216,106,'MD Mamun Hassan','01954578010','Holding: 13/2033-02,Lotifpur Moddhopara,Bogura','ঢাকার বাহিরে  ১২০ টাকা ','2025-01-10 07:41:34','2025-01-10 07:41:34'),
(217,217,107,'IT Nayeem','01511777744','4444','ঢাকার ভিতরে ৭০ টাকা','2025-01-10 07:48:57','2025-01-10 07:48:57'),
(218,218,108,'Mobarok Hussain','01715712941','NARAYONDOHOR, PURBODHALA, NETROKONA','ঢাকার ভিতরে ৭০ টাকা','2025-02-03 08:42:51','2025-02-03 08:42:51'),
(219,219,109,'NU Admission','01403134343','Chnvcv','ফ্রি ডেলিভারি','2025-02-06 09:46:59','2025-02-06 09:46:59');
/*!40000 ALTER TABLE `shippings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sizes`
--

DROP TABLE IF EXISTS `sizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sizes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sizeName` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sizes`
--

LOCK TABLES `sizes` WRITE;
/*!40000 ALTER TABLE `sizes` DISABLE KEYS */;
INSERT INTO `sizes` VALUES
(6,'S','1','2024-02-05 09:38:42','2024-02-05 09:38:42'),
(7,'M','1','2024-02-05 09:38:46','2024-02-05 09:38:46'),
(8,'L','1','2024-02-05 09:38:51','2024-02-05 09:38:51'),
(9,'XL','1','2024-02-05 09:38:57','2024-02-05 09:38:57'),
(10,'XXL','1','2024-02-05 09:39:03','2024-02-05 09:39:03'),
(11,'12 Inchi','1','2024-02-05 09:39:19','2024-11-10 04:43:12'),
(12,'10 Inchi','1','2024-02-05 09:39:25','2024-11-10 04:42:40'),
(13,'8.5 Inch','1','2024-02-05 09:39:30','2024-11-10 04:42:17'),
(14,'20 mm','1','2024-02-05 09:39:34','2024-11-10 04:41:48'),
(15,'22 mm','1','2024-02-05 09:39:39','2024-11-10 04:41:35');
/*!40000 ALTER TABLE `sizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_gateways`
--

DROP TABLE IF EXISTS `sms_gateways`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sms_gateways` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(99) DEFAULT NULL,
  `api_key` varchar(155) DEFAULT NULL,
  `serderid` varchar(155) DEFAULT NULL,
  `order` varchar(11) DEFAULT NULL,
  `forget_pass` varchar(11) DEFAULT NULL,
  `password_g` varchar(11) DEFAULT NULL,
  `status` varchar(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_gateways`
--

LOCK TABLES `sms_gateways` WRITE;
/*!40000 ALTER TABLE `sms_gateways` DISABLE KEYS */;
INSERT INTO `sms_gateways` VALUES
(1,'http://bulksmsbd.net/api/smsapi','#','#','1','1','1','1','2024-02-06 11:29:46','2025-01-08 06:46:03');
/*!40000 ALTER TABLE `sms_gateways` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_media`
--

DROP TABLE IF EXISTS `social_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `link` varchar(155) NOT NULL,
  `color` varchar(20) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_media`
--

LOCK TABLES `social_media` WRITE;
/*!40000 ALTER TABLE `social_media` DISABLE KEYS */;
INSERT INTO `social_media` VALUES
(2,'Facebook','fab fa-facebook-f','https://itnayeem.com.bd/','#0b0f89',1,'2023-02-12 11:32:20','2025-01-10 02:51:01'),
(3,'Official Mail','fab fa-twitter','mailto:support@itnayeem.com.bd','#c53302',1,'2023-02-14 03:29:41','2025-01-10 02:51:34'),
(4,'Whatsapp','fab fa-whatsapp','+8801511777744','#5ca314',1,'2024-11-10 06:36:32','2025-01-10 02:51:46'),
(5,'youtube.com','fab fa-youtube','https://www.youtube.com/@eHatBazarLive/videos','#f70808',1,'2024-11-10 06:37:34','2024-11-10 06:37:34'),
(6,'Instagram','fab fa-instagram','https://itnayeem.com.bd/','#000000',1,'2024-11-10 14:52:24','2025-01-10 02:51:53'),
(7,'Linkedin','fab fa-linkedin','https://itnayeem.com.bd/','#000000',1,'2024-11-10 14:52:59','2025-01-10 02:51:59');
/*!40000 ALTER TABLE `social_media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subcategories`
--

DROP TABLE IF EXISTS `subcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `subcategories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subcategoryName` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `image` text DEFAULT NULL,
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_description` longtext DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcategories`
--

LOCK TABLES `subcategories` WRITE;
/*!40000 ALTER TABLE `subcategories` DISABLE KEYS */;
/*!40000 ALTER TABLE `subcategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `status` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES
(1,'Admin','support@itnayeem.com.bd','2024-11-21 15:43:10','$2y$10$I7HjWzyAPJozo/NOHz58nuMi4U1qWoehyj12sbvK64xvMMUI4wQkW','fua3ZImrCAzZsEvF9zcorGLAqUNN0ID4MldP9PLrlDzxfSHqwnvlbs29c0r5','public/uploads/users/1736271519-defualt.webp',1,NULL,'2025-01-08 07:38:40');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-10-14 17:59:51
