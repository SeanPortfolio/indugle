-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: thaueastlhs01-dev.hosting.xuridisa.com    Database: indulge_db
-- ------------------------------------------------------
-- Server version	5.6.33-0ubuntu0.14.04.1-log

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
-- Table structure for table `accom_feature`
--

DROP TABLE IF EXISTS `accom_feature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accom_feature` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `status` enum('A','H','D') NOT NULL DEFAULT 'H',
  `rank` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accom_feature`
--

LOCK TABLES `accom_feature` WRITE;
/*!40000 ALTER TABLE `accom_feature` DISABLE KEYS */;
INSERT INTO `accom_feature` VALUES (1,'Air Conditioning','A',1),(2,'DVD Player','A',2),(3,'Sky Channels','A',3),(4,'Microwave','A',4),(5,'Toaster','A',5),(6,'Refrigerator','A',6),(7,'Stereo','A',7),(8,'Outdoor Table and Chairs','A',8),(9,'Dining Table and Chairs','A',9),(10,'1 x Queen-Sized Bed','A',19),(11,'1 x Single bed','A',18),(12,'Single Fold out Couch','A',17),(13,'Double Glazed Windows','A',16),(14,'Carpet Throughout','A',15),(15,'Electric Blankets','A',14),(16,'32\" LCD TV','A',13),(17,'Radio Alarm Clock','A',12),(18,'Electric Kettle','A',11),(19,'Wine Glasses','A',10),(20,'Complimentary tea and coffee','A',20),(21,'1 x Double Fold Out Couch','A',21),(22,'Gas Hobs','A',22),(23,'Electric fry pan','A',23),(24,'2 x Single beds','A',24),(25,'Heater','A',25),(26,'Dual temp fridge/freezer','A',26),(27,'1 x Single/Double Bunk Set','A',32),(28,'1 x Single Bunk Set','A',31),(29,'Electric heating','A',30),(30,'Coffee mugs','A',29),(31,'Medium Kitchen Storage','A',28),(32,'Small mini fridge','A',27),(33,'One parking space per cabin booked.','A',33),(34,'Mineral Pools & Swimming Pool (seasonal)','A',39),(35,'Internet lounge with comfortable couches','A',38),(36,'Communal toilets and showers','A',37),(37,'Kitchen/dining rooms (with TV)','A',36),(38,'Drive through waste dump','A',35),(39,'Fresh Water and picnic tables','A',34),(40,'The powered camp sites have electrical hook-up with either hard or grassed surface parking','A',40),(41,'Untitled','D',0),(42,'Patio & BBQ Area','A',41),(43,'Potbelly Stove','A',42),(44,'Heat Pump','A',43),(45,'3 x Single Beds','A',44),(46,'Large deck area with BBQ','A',45),(47,'Outside, private bath','A',46),(48,'Private garden area','A',47),(49,'Small kitchen area','A',48),(50,'En-suite shower room','A',49),(51,'Electric radiator','A',50),(52,'1 x Queen-Sized Double Bed','A',51),(53,'1 x King-Sized Bed','A',52),(54,'BBQ','A',53),(55,'Kitchen Area','A',54),(56,'Dishwasher','A',55),(57,'Large open plan living/kitchen area','A',56),(58,'Untitled','A',67),(59,'Leather Lounge Suite','A',66),(60,'Flat Screen TV','A',65),(61,'Free Wi-Fi','A',64),(62,'Ensuite Bathroom','A',63),(63,'Tea/Coffee making facilities','A',62),(64,'Hairdryer','A',61),(65,'Bathrobes','A',60),(66,'Iron/Ironing board','A',59),(67,'Off Street Parking','A',58),(68,'Private Patio','A',57),(69,'BBQ','A',68),(70,'Testing Feature','D',100),(71,'test','A',0);
/*!40000 ALTER TABLE `accom_feature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accom_has_feature`
--

DROP TABLE IF EXISTS `accom_has_feature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accom_has_feature` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `feature_id` int(11) NOT NULL,
  `accom_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1952 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accom_has_feature`
--

LOCK TABLES `accom_has_feature` WRITE;
/*!40000 ALTER TABLE `accom_has_feature` DISABLE KEYS */;
INSERT INTO `accom_has_feature` VALUES (1395,1,6),(1396,2,6),(1397,3,6),(1398,4,6),(1399,5,6),(1400,6,6),(1401,7,6),(1402,8,6),(1805,1,2),(1806,4,2),(1807,32,2),(1808,66,2),(1809,65,2),(1810,61,2),(1811,1,3),(1812,5,3),(1813,9,3),(1814,16,3),(1815,12,3),(1816,21,3),(1909,71,7),(1910,4,7),(1911,8,7),(1912,17,7),(1913,16,7),(1914,15,7),(1915,12,7),(1916,11,7),(1917,21,7),(1918,22,7),(1919,23,7),(1920,32,7),(1921,28,7),(1946,1,1),(1947,16,1),(1948,20,1),(1949,32,1),(1950,31,1),(1951,61,1);
/*!40000 ALTER TABLE `accom_has_feature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accommodation`
--

DROP TABLE IF EXISTS `accommodation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accommodation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_price` decimal(11,2) NOT NULL,
  `gallery_id` int(11) NOT NULL,
  `page_meta_data_id` int(11) NOT NULL,
  `slideshow_id` int(11) NOT NULL,
  `beds` int(11) DEFAULT NULL,
  `sqm` int(11) DEFAULT NULL,
  `pax` int(11) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `google_map_address` varchar(255) DEFAULT NULL,
  `address` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accommodation`
--

LOCK TABLES `accommodation` WRITE;
/*!40000 ALTER TABLE `accommodation` DISABLE KEYS */;
INSERT INTO `accommodation` VALUES (1,0.00,12,12,21,1,0,2,'-36.7466955','174.7362914','17 Constellation Dr, Rosedale, Auckland 0632, New Zealand','17 Constellation Dr, Rosedale'),(2,180.00,12,13,19,1,125,2,'','','',''),(3,180.00,13,17,20,1,125,2,'-36.7466955','174.7362914','17 Constellation Dr, Rosedale, Auckland 0632, New Zealand','test'),(4,200.00,0,21,0,4,32,1,NULL,NULL,NULL,NULL),(5,0.00,14,23,1,0,0,0,NULL,NULL,NULL,NULL),(6,200.00,12,34,17,4,50,8,NULL,NULL,NULL,NULL),(7,0.00,12,40,1,2,200,4,'-36.9165626','174.5897688','245 Forest Hill Rd, Waiatarua, Auckland 0612, New Zealand','245 Forest Hill Road'),(8,0.00,0,43,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `accommodation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accommodation_has_compendium_section`
--

DROP TABLE IF EXISTS `accommodation_has_compendium_section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accommodation_has_compendium_section` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` mediumtext NOT NULL,
  `accommodation_id` int(11) NOT NULL,
  `compendium_section_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=219 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accommodation_has_compendium_section`
--

LOCK TABLES `accommodation_has_compendium_section` WRITE;
/*!40000 ALTER TABLE `accommodation_has_compendium_section` DISABLE KEYS */;
INSERT INTO `accommodation_has_compendium_section` VALUES (32,'',2,12),(33,'',2,8),(34,'',2,9),(35,'',2,10),(36,'',2,11),(37,'',2,17),(38,'',2,19),(39,'',2,21),(40,'',3,12),(41,'',3,8),(42,'',3,9),(43,'',3,10),(44,'',3,11),(45,'',3,17),(46,'',3,19),(47,'',3,21),(189,'',7,12),(190,'',7,8),(191,'',7,9),(192,'',7,10),(193,'',7,11),(214,'',1,12),(215,'',1,8),(216,'',1,9),(217,'',1,10),(218,'',1,11);
/*!40000 ALTER TABLE `accommodation_has_compendium_section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `beamer_campaign`
--

DROP TABLE IF EXISTS `beamer_campaign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beamer_campaign` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `subject` varchar(255) CHARACTER SET utf8 NOT NULL,
  `heading` varchar(255) CHARACTER SET utf8 NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8 NOT NULL,
  `thumb_photo` varchar(255) CHARACTER SET utf8 NOT NULL,
  `preview_note` varchar(255) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `terms_and_conditions` text CHARACTER SET utf8 NOT NULL,
  `beamer_phase` enum('D','P') NOT NULL DEFAULT 'D' COMMENT 'D= Draft , P=Published',
  `status` enum('A','D','H') NOT NULL DEFAULT 'H',
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_deleted` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beamer_campaign`
--

LOCK TABLES `beamer_campaign` WRITE;
/*!40000 ALTER TABLE `beamer_campaign` DISABLE KEYS */;
INSERT INTO `beamer_campaign` VALUES (6,'Jed Talk: SilverStripe','Jed Talk: SilverStripe','Jed Talk: SilverStripe','/library/man-old-fisherman-portrait-53159.jpg','/uploads/2018/01/img-5a7138c138e87.jpg','Jed Talk: SilverStripe','<p>Jed Talk: SilverStripe&nbsp;Jed Talk: SilverStripe&nbsp;Jed Talk: SilverStripe&nbsp;Jed Talk: SilverStripe</p>','<p>Jed Talk:&nbsp;SilverStripe&nbsp;Jed Talk:&nbsp;SilverStripe&nbsp;Jed Talk:&nbsp;SilverStripe&nbsp;Jed Talk:&nbsp;SilverStripe</p>','P','H','2018-01-31 03:27:38','2018-01-31 03:32:17','0000-00-00 00:00:00',3,3,0),(7,'Testing Alpine Campaign','Testing Alpine Campaign','Testing Alpine Campaign','/library/pexels-photo-276508.jpg','/uploads/2018/02/img-5a73b493a4d3f.jpg','Testing Alpine Campaign','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris mollis leo enim, ac facilisis ex elementum ac. Sed luctus lacinia ultricies. Aenean sed lacus in ipsum ullamcorper rhoncus. Nunc tempus vehicula elit id fringilla. Pellentesque molestie ornare ultrices. Mauris ullamcorper augue quis ipsum feugiat egestas. Quisque lobortis, quam vel tempor finibus, ligula nulla maximus magna, a gravida lectus sem suscipit velit. Nulla vitae est turpis. Proin consequat volutpat libero eget scelerisque. Cras consectetur, justo a commodo consectetur, purus metus viverra nisl, quis tempus mauris sem vel ipsum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Suspendisse fringilla vestibulum massa, quis ultricies odio lacinia in</p>','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris mollis leo enim, ac facilisis ex elementum ac. Sed luctus lacinia ultricies. Aenean sed lacus in ipsum ullamcorper rhoncus. Nunc tempus vehicula elit id fringilla. Pellentesque molestie ornare ultrices. Mauris ullamcorper augue quis ipsum feugiat egestas. Quisque lobortis, quam vel tempor finibus, ligula nulla maximus magna, a gravida lectus sem suscipit velit. Nulla vitae est turpis. Proin consequat volutpat libero eget scelerisque. Cras consectetur, justo a commodo consectetur, purus metus viverra nisl, quis tempus mauris sem vel ipsum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Suspendisse fringilla vestibulum massa, quis ultricies odio lacinia in</p>','P','H','2018-02-01 02:54:30','2018-02-02 00:45:07','0000-00-00 00:00:00',3,3,0);
/*!40000 ALTER TABLE `beamer_campaign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `beamer_campaign_has_emails`
--

DROP TABLE IF EXISTS `beamer_campaign_has_emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beamer_campaign_has_emails` (
  `beamer_campaign_id` int(11) NOT NULL,
  `beamer_email_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beamer_campaign_has_emails`
--

LOCK TABLES `beamer_campaign_has_emails` WRITE;
/*!40000 ALTER TABLE `beamer_campaign_has_emails` DISABLE KEYS */;
INSERT INTO `beamer_campaign_has_emails` VALUES (6,5),(7,6),(7,5);
/*!40000 ALTER TABLE `beamer_campaign_has_emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `beamer_campaign_section_items`
--

DROP TABLE IF EXISTS `beamer_campaign_section_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beamer_campaign_section_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `rank` smallint(6) NOT NULL,
  `beamer_campaign_section_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beamer_campaign_section_items`
--

LOCK TABLES `beamer_campaign_section_items` WRITE;
/*!40000 ALTER TABLE `beamer_campaign_section_items` DISABLE KEYS */;
INSERT INTO `beamer_campaign_section_items` VALUES (87,1,1,31),(88,2,1,32),(89,5,1,33),(96,2,1,36),(97,8,2,36),(98,1,1,37),(99,2,2,37),(101,16,3,37);
/*!40000 ALTER TABLE `beamer_campaign_section_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `beamer_campaign_sections`
--

DROP TABLE IF EXISTS `beamer_campaign_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beamer_campaign_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `heading` varchar(255) CHARACTER SET utf8 NOT NULL,
  `section_type` varchar(20) CHARACTER SET utf8 NOT NULL,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  `beamer_campaign_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beamer_campaign_sections`
--

LOCK TABLES `beamer_campaign_sections` WRITE;
/*!40000 ALTER TABLE `beamer_campaign_sections` DISABLE KEYS */;
INSERT INTO `beamer_campaign_sections` VALUES (31,'Accommodation','accommodations',0,6),(32,'Blog','blogs',0,6),(33,'Pages','pages',0,6),(36,'Blog','blogs',2,7),(37,'Pages','pages',1,7);
/*!40000 ALTER TABLE `beamer_campaign_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `beamer_email`
--

DROP TABLE IF EXISTS `beamer_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beamer_email` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `label` varchar(255) CHARACTER SET utf8 NOT NULL,
  `list_id` varchar(50) CHARACTER SET utf8 NOT NULL,
  `list_email_address` varchar(255) CHARACTER SET utf8 NOT NULL,
  `status` enum('A','D','H') DEFAULT 'H',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beamer_email`
--

LOCK TABLES `beamer_email` WRITE;
/*!40000 ALTER TABLE `beamer_email` DISABLE KEYS */;
INSERT INTO `beamer_email` VALUES (5,'Test List','Test List','06224f3593','us15-ea8041ee8a-54b903437d@inbound.mailchimp.com','A'),(6,'Newsletter 2','Newsletter 2','cef75cbd82','us15-ea8041ee8a-45837cab1c@inbound.mailchimp.com','A');
/*!40000 ALTER TABLE `beamer_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_category`
--

DROP TABLE IF EXISTS `blog_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_meta_data_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_category`
--

LOCK TABLES `blog_category` WRITE;
/*!40000 ALTER TABLE `blog_category` DISABLE KEYS */;
INSERT INTO `blog_category` VALUES (2,19),(3,26),(4,32),(5,36);
/*!40000 ALTER TABLE `blog_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_post`
--

DROP TABLE IF EXISTS `blog_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_posted` datetime DEFAULT NULL,
  `page_meta_data_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_post`
--

LOCK TABLES `blog_post` WRITE;
/*!40000 ALTER TABLE `blog_post` DISABLE KEYS */;
INSERT INTO `blog_post` VALUES (2,'2017-11-16 00:00:00',20),(3,'2017-11-04 00:00:00',24),(4,'2017-11-01 00:00:00',27),(5,'2017-11-02 00:00:00',28),(6,'2017-11-04 00:00:00',29),(7,'2017-11-05 00:00:00',30),(8,'2017-11-06 00:00:00',31),(9,NULL,37);
/*!40000 ALTER TABLE `blog_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_post_has_category`
--

DROP TABLE IF EXISTS `blog_post_has_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_post_has_category` (
  `category_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_post_has_category`
--

LOCK TABLES `blog_post_has_category` WRITE;
/*!40000 ALTER TABLE `blog_post_has_category` DISABLE KEYS */;
INSERT INTO `blog_post_has_category` VALUES (2,7),(3,7),(2,6),(3,6),(2,5),(3,5),(2,4),(3,4),(2,3),(3,3),(2,2),(3,2),(2,8);
/*!40000 ALTER TABLE `blog_post_has_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_accessgroups`
--

DROP TABLE IF EXISTS `cms_accessgroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_accessgroups` (
  `access_id` int(11) NOT NULL AUTO_INCREMENT,
  `access_name` varchar(100) NOT NULL,
  `access_users` char(1) NOT NULL DEFAULT 'N',
  `access_userpasswords` char(1) NOT NULL DEFAULT 'N',
  `access_useraccesslevel` char(1) NOT NULL DEFAULT 'N',
  `access_accessgroups` char(1) NOT NULL DEFAULT 'N',
  `access_cmssettings` char(1) NOT NULL DEFAULT 'N',
  `access_settings` char(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`access_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_accessgroups`
--

LOCK TABLES `cms_accessgroups` WRITE;
/*!40000 ALTER TABLE `cms_accessgroups` DISABLE KEYS */;
INSERT INTO `cms_accessgroups` VALUES (1,'Super Administrator','Y','Y','Y','Y','Y','Y'),(2,'General Editor','N','N','N','N','Y','Y');
/*!40000 ALTER TABLE `cms_accessgroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_blacklist_user`
--

DROP TABLE IF EXISTS `cms_blacklist_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_blacklist_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_failed_attempt_on` datetime DEFAULT NULL,
  `failed_login_attempt_count` int(11) NOT NULL,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_disabled` tinyint(1) NOT NULL DEFAULT '0',
  `disabled_on` datetime DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `recent_login_attempt_on` datetime DEFAULT NULL,
  `failed_hour_count` int(11) NOT NULL,
  `total_failed_attempt` int(11) NOT NULL,
  `is_notified` tinyint(1) NOT NULL DEFAULT '0',
  `ip_address` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_blacklist_user`
--

LOCK TABLES `cms_blacklist_user` WRITE;
/*!40000 ALTER TABLE `cms_blacklist_user` DISABLE KEYS */;
INSERT INTO `cms_blacklist_user` VALUES (1,'2018-01-25 03:34:55',1,'2018-01-25 03:34:55',0,NULL,'thawktesting@dispotable.com','2018-01-25 03:34:55',0,1,0,'114.23.241.67'),(3,'2018-02-14 22:00:35',2,'2018-02-14 22:00:57',0,NULL,'support@tomahawk.com','2018-02-14 22:00:57',0,2,0,'114.23.241.67');
/*!40000 ALTER TABLE `cms_blacklist_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_login_attempt`
--

DROP TABLE IF EXISTS `cms_login_attempt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_login_attempt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` tinyblob NOT NULL,
  `access_key` tinyblob,
  `is_successful` enum('N','Y') NOT NULL DEFAULT 'N',
  `ip_address` varchar(255) NOT NULL,
  `record_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=245 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_login_attempt`
--

LOCK TABLES `cms_login_attempt` WRITE;
/*!40000 ALTER TABLE `cms_login_attempt` DISABLE KEYS */;
INSERT INTO `cms_login_attempt` VALUES (1,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','127.0.0.1','2016-07-21 16:32:05'),(2,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','127.0.0.1','2016-07-22 08:45:25'),(3,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','127.0.0.1','2016-11-14 12:02:00'),(4,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','127.0.0.1','2016-12-05 13:12:05'),(5,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','127.0.0.1','2016-12-06 09:38:02'),(6,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','127.0.0.1','2016-12-07 08:49:19'),(7,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','127.0.0.1','2016-12-08 09:43:35'),(8,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','127.0.0.1','2017-06-12 23:18:58'),(9,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','I ���\��%\�\�Q\�J','N','127.0.0.1','2017-06-13 22:50:22'),(10,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','127.0.0.1','2017-06-13 22:50:27'),(11,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','127.0.0.1','2017-06-14 04:20:59'),(12,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','127.0.0.1','2017-06-14 23:01:05'),(13,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','127.0.0.1','2017-06-15 23:51:40'),(14,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','127.0.0.1','2017-06-18 23:55:42'),(15,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','127.0.0.1','2017-06-19 23:21:52'),(16,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2017-06-20 01:45:46'),(17,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2017-06-20 23:31:19'),(18,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2017-06-22 02:30:17'),(19,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','222.152.160.20','2017-06-23 03:25:18'),(20,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','222.152.160.20','2017-06-23 03:30:04'),(21,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2017-06-26 00:34:42'),(22,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2017-06-26 04:43:11'),(23,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2017-06-27 22:26:22'),(24,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�1��>���N�\�N','N','222.152.162.134','2017-06-28 10:57:51'),(25,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','222.152.162.134','2017-06-28 10:57:58'),(26,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2017-06-29 22:50:06'),(27,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2017-06-29 23:51:26'),(28,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2017-07-02 22:41:48'),(29,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2017-07-03 22:11:37'),(30,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2017-08-04 03:39:12'),(31,')P\\\�@�\�J\�5)?h\�Ǽ07\�\r[^�Af\�#>�','�)�\�\�\�~\\��u:�\�','Y','125.236.169.220','2017-08-08 22:08:29'),(32,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2017-08-09 00:20:10'),(33,')P\\\�@�\�J\�5)?h\�Ǽ07\�\r[^�Af\�#>�','\�?/\�F/_�\�\��E\r�\�\�','N','125.236.169.220','2017-08-09 00:50:50'),(34,')P\\\�@�\�J\�5)?h\�Ǽ07\�\r[^�Af\�#>�','�)�\�\�\�~\\��u:�\�','Y','125.236.169.220','2017-08-09 00:51:02'),(35,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','122.62.205.56','2017-08-10 01:29:38'),(36,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','122.62.205.56','2017-08-21 05:02:55'),(37,')P\\\�@�\�J\�5)?h\�Ǽ07\�\r[^�Af\�#>�','�)�\�\�\�~\\��u:�\�','Y','125.236.183.124','2017-08-21 09:25:30'),(38,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2017-08-21 22:31:26'),(39,'8M�k \�M\�\�3�\�\�4K\'�K\�\�k�C�!�a��','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2017-08-22 02:51:29'),(40,'8M�k \�M\�\�3�\�\�4K\'�K\�\�k�C�!�a��','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2017-08-23 02:10:27'),(41,'8M�k \�M\�\�3�\�\�4K\'�K\�\�k�C�!�a��','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2017-08-23 21:46:41'),(42,'8M�k \�M\�\�3�\�\�4K\'�K\�\�k�C�!�a��','�)�\�\�\�~\\��u:�\�','Y','198.41.238.19','2017-08-24 00:00:23'),(43,'85\�`wp�b�\�vldC�-�n?�w��4\�t','�hqG�\�	�!���Y�','N','108.162.249.193','2017-08-27 21:32:42'),(44,')P\\\�@�\�J\�5)?h\�Ǽ07\�\r[^�Af\�#>�','�)�\�\�\�~\\��u:�\�','Y','108.162.249.193','2017-08-27 21:33:32'),(45,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�1��>���N�\�N','N','198.41.238.31','2017-08-31 00:01:01'),(46,'8M�k \�M\�\�3�\�\�4K\'�K\�\�k�C�!�a��','�)�\�\�\�~\\��u:�\�','Y','198.41.238.31','2017-08-31 00:02:16'),(47,'8M�k \�M\�\�3�\�\�4K\'�K\�\�k�C�!�a��','�)�\�\�\�~\\��u:�\�','Y','198.41.238.31','2017-08-31 01:01:23'),(48,'8M�k \�M\�\�3�\�\�4K\'�K\�\�k�C�!�a��','4{-�\�_bǒ],\�Q','N','198.41.238.31','2017-09-04 05:28:57'),(49,'8M�k \�M\�\�3�\�\�4K\'�K\�\�k�C�!�a��','�)�\�\�\�~\\��u:�\�','Y','198.41.238.31','2017-09-12 03:45:34'),(50,'8M�k \�M\�\�3�\�\�4K\'�K\�\�k�C�!�a��','�)�\�\�\�~\\��u:�\�','Y','198.41.238.31','2017-09-15 02:55:59'),(51,'8M�k \�M\�\�3�\�\�4K\'�K\�\�k�C�!�a��','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2017-09-27 03:01:20'),(52,'8M�k \�M\�\�3�\�\�4K\'�K\�\�k�C�!�a��','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2017-09-28 20:00:44'),(53,'8M�k \�M\�\�3�\�\�4K\'�K\�\�k�C�!�a��','�)�\�\�\�~\\��u:�\�','Y','198.41.238.31','2017-10-12 01:04:08'),(54,'8M�k \�M\�\�3�\�\�4K\'�K\�\�k�C�!�a��','���/\�\Z�\�N!\�:f٫)�\�\�\�~\\��u:�\�','N','198.41.238.31','2017-10-12 01:12:33'),(55,'8M�k \�M\�\�3�\�\�4K\'�K\�\�k�C�!�a��','�)�\�\�\�~\\��u:�\�','Y','198.41.238.31','2017-10-12 01:12:41'),(56,'8M�k \�M\�\�3�\�\�4K\'�K\�\�k�C�!�a��','���/\�\Z�\�N!\�:f٫)�\�\�\�~\\��u:�\�','N','198.41.238.31','2017-10-18 01:32:43'),(57,'8M�k \�M\�\�3�\�\�4K\'�K\�\�k�C�!�a��','�)�\�\�\�~\\��u:�\�','Y','198.41.238.31','2017-10-18 01:32:52'),(58,'8M�k \�M\�\�3�\�\�4K\'�K\�\�k�C�!�a��','���/\�\Z�\�N!\�:f٫)�\�\�\�~\\��u:�\�','N','198.41.238.31','2017-10-19 19:57:58'),(59,'8M�k \�M\�\�3�\�\�4K\'�K\�\�k�C�!�a��','�)�\�\�\�~\\��u:�\�','Y','198.41.238.31','2017-10-19 19:58:10'),(60,'8M�k \�M\�\�3�\�\�4K\'�K\�\�k�C�!�a��','���/\�\Z�\�N!\�:f٫)�\�\�\�~\\��u:�\�','N','198.41.238.31','2017-10-19 20:02:33'),(61,'8M�k \�M\�\�3�\�\�4K\'�K\�\�k�C�!�a��','�)�\�\�\�~\\��u:�\�','Y','198.41.238.31','2017-10-19 20:02:38'),(62,'8M�k \�M\�\�3�\�\�4K\'�K\�\�k�C�!�a��','���/\�\Z�\�N!\�:f٫)�\�\�\�~\\��u:�\�','N','198.41.238.31','2017-10-19 23:26:24'),(63,'8M�k \�M\�\�3�\�\�4K\'�K\�\�k�C�!�a��','�)�\�\�\�~\\��u:�\�','Y','198.41.238.31','2017-10-19 23:26:29'),(64,'8M�k \�M\�\�3�\�\�4K\'�K\�\�k�C�!�a��','���/\�\Z�\�N!\�:f٫)�\�\�\�~\\��u:�\�','N','198.41.238.31','2017-10-19 23:27:44'),(65,'8M�k \�M\�\�3�\�\�4K\'�K\�\�k�C�!�a��','���/\�\Z�\�N!\�:f٫)�\�\�\�~\\��u:�\�','N','198.41.238.31','2017-10-19 23:29:08'),(66,'8M�k \�M\�\�3�\�\�4K\'�K\�\�k�C�!�a��','�)�\�\�\�~\\��u:�\�','Y','198.41.238.31','2017-10-20 01:56:06'),(67,'8M�k \�M\�\�3�\�\�4K\'�K\�\�k�C�!�a��','�)�\�\�\�~\\��u:�\�','Y','198.41.238.31','2017-10-30 01:01:07'),(68,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�1��>���N�\�N','N','127.0.0.1','2017-10-31 02:51:40'),(69,'8M�k \�M\�\�3�\�\�4K\'�K\�\�k�C�!�a��','�)�\�\�\�~\\��u:�\�','Y','127.0.0.1','2017-10-31 02:52:22'),(70,'8M�k \�M\�\�3�\�\�4K\'�K\�\�k�C�!�a��','�)�\�\�\�~\\��u:�\�','Y','127.0.0.1','2017-10-31 02:54:48'),(71,'8M�k \�M\�\�3�\�\�4K\'�K\�\�k�C�!�a��','���/\�\Z�\�N!\�:f٫)�\�\�\�~\\��u:�\�','N','127.0.0.1','2017-10-31 22:18:49'),(72,'8M�k \�M\�\�3�\�\�4K\'�K\�\�k�C�!�a��','�)�\�\�\�~\\��u:�\�','Y','127.0.0.1','2017-11-01 02:53:07'),(73,'8M�k \�M\�\�3�\�\�4K\'�K\�\�k�C�!�a��','�)�\�\�\�~\\��u:�\�','Y','127.0.0.1','2017-11-01 02:56:12'),(74,'8M�k \�M\�\�3�\�\�4K\'�K\�\�k�C�!�a��','�)�\�\�\�~\\��u:�\�','Y','127.0.0.1','2017-11-01 03:05:52'),(75,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�1��>���N�\�N','N','127.0.0.1','2017-11-06 05:06:56'),(76,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�1��>���N�\�N','N','127.0.0.1','2017-11-06 05:07:01'),(77,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','Y7�ƌ\�\�v�$�Z�\�\0','N','127.0.0.1','2017-11-06 05:07:06'),(78,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�1��>���N�\�N','N','127.0.0.1','2017-11-06 05:07:15'),(79,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','Y7�ƌ\�\�v�$�Z�\�\0','N','127.0.0.1','2017-11-06 05:08:31'),(80,'8M�k \�M\�\�3�\�\�4K\'�K\�\�k�C�!�a��','�)�\�\�\�~\\��u:�\�','Y','127.0.0.1','2017-11-06 05:08:44'),(81,'8M�k \�M\�\�3�\�\�4K\'�K\�\�k�C�!�a��','�)�\�\�\�~\\��u:�\�','Y','127.0.0.1','2017-11-07 04:29:03'),(82,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�1��>���N�\�N','N','127.0.0.1','2017-11-08 02:39:52'),(83,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�1��>���N�\�N','N','127.0.0.1','2017-11-08 02:40:07'),(84,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�1��>���N�\�N','N','127.0.0.1','2017-11-08 02:40:18'),(85,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�1��>���N�\�N','N','127.0.0.1','2017-11-08 02:40:50'),(86,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�1��>���N�\�N','N','127.0.0.1','2017-11-08 02:42:53'),(87,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�1��>���N�\�N','N','127.0.0.1','2017-11-08 02:46:23'),(88,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�1��>���N�\�N','N','127.0.0.1','2017-11-08 02:51:09'),(89,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','127.0.0.1','2017-11-08 02:51:29'),(90,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�1��>���N�\�N','N','127.0.0.1','2017-11-08 03:02:17'),(91,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�1��>���N�\�N','N','127.0.0.1','2017-11-08 03:02:26'),(92,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�1��>���N�\�N','N','127.0.0.1','2017-11-08 03:03:03'),(93,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2017-11-15 19:54:34'),(94,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2017-11-16 00:28:41'),(95,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2017-11-16 01:39:30'),(96,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2017-11-16 02:25:06'),(97,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','127.0.0.1','2017-11-17 01:47:26'),(98,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','127.0.0.1','2017-11-21 01:30:47'),(99,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2017-11-22 00:15:19'),(100,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2017-11-22 00:42:31'),(101,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2017-11-22 01:18:30'),(102,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2017-11-22 01:19:56'),(103,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2017-11-22 01:20:55'),(104,'�\�	��k\�\�4A?�n\��\�\��R��z\Z��\�','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2017-11-22 01:31:59'),(105,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2017-11-22 01:45:01'),(106,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2017-11-22 23:02:43'),(107,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2017-11-23 00:11:22'),(108,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2017-11-23 00:50:32'),(109,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2017-11-23 01:58:24'),(110,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2017-11-23 19:50:23'),(111,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2017-11-23 21:05:45'),(112,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','58.28.154.63','2017-11-26 12:39:00'),(113,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2017-11-26 19:43:26'),(114,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2017-11-27 00:43:01'),(115,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2017-11-27 20:07:29'),(116,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2017-11-27 20:32:18'),(117,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2017-11-28 02:42:11'),(118,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2017-11-28 02:44:38'),(119,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2017-11-28 19:57:23'),(120,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2017-11-28 21:15:21'),(121,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2017-11-29 21:38:43'),(122,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2017-11-30 02:38:56'),(123,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2017-12-01 04:01:52'),(124,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2017-12-05 02:58:09'),(125,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2017-12-05 23:21:15'),(126,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','��%�a\�ʗĔ����','N','114.23.241.67','2017-12-05 23:26:23'),(127,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','��%�a\�ʗĔ����','N','114.23.241.67','2017-12-05 23:27:10'),(128,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','��%�a\�ʗĔ����','N','114.23.241.67','2017-12-05 23:27:22'),(129,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','��%�a\�ʗĔ����','N','114.23.241.67','2017-12-05 23:27:43'),(130,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2017-12-05 23:28:26'),(131,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�1��>���N�\�N','N','114.23.241.67','2017-12-07 01:01:07'),(132,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2017-12-07 01:01:19'),(133,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2017-12-07 21:29:37'),(134,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2017-12-11 22:26:07'),(135,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2017-12-11 22:46:59'),(136,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2017-12-13 00:56:30'),(137,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2017-12-13 21:34:50'),(138,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2017-12-15 00:50:26'),(139,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2017-12-19 23:13:55'),(140,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2017-12-20 20:52:53'),(141,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2017-12-20 22:43:11'),(142,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2017-12-21 00:00:54'),(143,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2017-12-21 02:43:26'),(144,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-01-02 20:03:46'),(145,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-01-03 00:27:43'),(146,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-01-03 01:44:30'),(147,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-01-04 20:27:14'),(148,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-01-04 21:12:17'),(149,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-01-05 01:01:21'),(150,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-01-07 21:05:01'),(151,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-01-08 00:18:53'),(152,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-01-09 21:52:38'),(153,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-01-10 19:44:43'),(154,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-01-16 03:24:46'),(155,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-01-16 23:17:44'),(156,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-01-17 00:41:06'),(157,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-01-18 00:43:00'),(158,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-01-18 01:04:13'),(159,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-01-19 00:53:43'),(160,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-01-22 03:12:32'),(161,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-01-22 03:49:17'),(162,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-01-22 20:23:28'),(163,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-01-22 20:42:22'),(164,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-01-22 21:59:57'),(165,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-01-23 01:18:02'),(166,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-01-23 02:05:06'),(167,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-01-24 00:00:32'),(168,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-01-24 22:01:53'),(169,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-01-24 23:15:55'),(170,'�ĺ7\�;R\�D\�\�!��ŉ\"��-�Rc=N\�JK�','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-01-24 23:21:52'),(171,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-01-25 02:16:47'),(172,'�ĺ7\�;R\�D\�\�!��ŉ\"��-�Rc=N\�JK�','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-01-25 03:19:21'),(173,'�ĺ7\�;R\�D\�\�!��ŉ\"��-�Rc=N\�JK�','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-01-25 03:22:37'),(174,'�ĺ7\�;R\�D\�\�!��ŉ\"��-�Rc=N\�JK�','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-01-25 03:30:09'),(175,'�ĺ7\�;R\�D\�\�!��ŉ\"��-�Rc=N\�JK�','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-01-25 03:34:05'),(176,'�ĺ7\�;R\�D\�\�!��ś\�0}Q\�\�?f\�4ĬE�`','��.\"^��v�\�\��\�d','N','114.23.241.67','2018-01-25 03:34:55'),(177,'�ĺ7\�;R\�D\�\�!��ŉ\"��-�Rc=N\�JK�','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-01-25 03:35:14'),(178,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-01-25 20:46:55'),(179,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-01-25 21:48:57'),(180,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-01-25 22:11:56'),(181,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-01-26 00:58:13'),(182,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-01-26 01:34:46'),(183,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-01-26 01:53:23'),(184,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-01-26 02:17:27'),(185,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�1��>���N�\�N','N','114.23.241.67','2018-01-30 02:26:48'),(186,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�1��>���N�\�N','N','114.23.241.67','2018-01-30 02:26:51'),(187,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�1��>���N�\�N','N','114.23.241.67','2018-01-30 02:26:52'),(188,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�1��>���N�\�N','N','114.23.241.67','2018-01-30 02:26:53'),(189,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-01-30 20:13:35'),(190,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-01-30 20:24:26'),(191,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-01-31 02:49:46'),(192,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-01-31 02:54:28'),(193,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-01-31 20:39:05'),(194,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-01-31 21:03:02'),(195,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-02-01 00:06:01'),(196,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-02-01 00:15:08'),(197,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-02-01 00:17:30'),(198,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-02-01 00:21:29'),(199,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-02-01 01:18:28'),(200,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-02-01 02:49:47'),(201,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-02-01 03:13:36'),(202,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-02-01 20:33:59'),(203,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-02-01 21:32:18'),(204,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-02-02 00:42:19'),(205,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-02-02 01:31:59'),(206,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-02-06 23:54:23'),(207,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-02-07 20:01:40'),(208,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-02-07 20:53:04'),(209,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-02-08 01:23:15'),(210,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-02-08 02:08:40'),(211,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-02-08 02:12:33'),(212,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-02-08 20:10:11'),(213,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-02-12 23:41:26'),(214,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-02-13 00:42:24'),(215,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-02-13 22:19:34'),(216,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-02-14 02:20:06'),(217,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-02-14 21:18:45'),(218,']\�F\�@)\�.\�	?�\�\����(x����h��g\r�\rZ','�1��>���N�\�N','N','114.23.241.67','2018-02-14 22:00:35'),(219,']\�F\�@)\�.\�	?�\�\����(x����h��g\r�\rZ','�1��>���N�\�N','N','114.23.241.67','2018-02-14 22:00:57'),(220,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-02-14 22:20:54'),(221,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-02-14 22:48:08'),(222,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-02-14 23:55:40'),(223,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-02-15 01:14:23'),(224,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�1��>���N�\�N','N','114.23.241.67','2018-02-15 20:47:36'),(225,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�1��>���N�\�N','N','114.23.241.67','2018-02-15 20:47:39'),(226,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�1��>���N�\�N','N','114.23.241.67','2018-02-15 20:47:44'),(227,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-02-15 20:47:48'),(228,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-02-15 21:34:00'),(229,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-02-16 02:58:38'),(230,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-02-18 20:17:16'),(231,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-02-18 20:17:37'),(232,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-02-18 20:19:26'),(233,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-02-18 20:19:29'),(234,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-02-18 20:21:05'),(235,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-02-18 20:21:52'),(236,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�)�\�\�\�~\\��u:�\�','Y','114.23.241.67','2018-02-19 01:09:19'),(237,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�1��>���N�\�N','N','114.23.241.67','2018-02-22 21:20:21'),(238,'�\�	��k\�\�4A?�n\��\�\��R��z\Z��\�','�1��>���N�\�N','N','114.23.241.67','2018-02-22 21:20:53'),(239,'�\�	��k\�\�4A?�n\��\�\��R��z\Z��\�','�z�\n7v\�\�q�����','N','114.23.241.67','2018-02-22 23:22:25'),(240,'�\�	��k\�\�4A?�n\��\�\��R��z\Z��\�','���p4��Z\�d�e\�M','N','114.23.241.67','2018-02-22 23:25:47'),(241,'�\�	��k\�\�4A?�n\��\�\��R��z\Z��\�','��2�\nI\�ǥ%#}�','N','114.23.241.67','2018-02-23 00:29:05'),(242,'�+(\�hIt��n:�5K\'�K\�\�k�C�!�a��','�1��>���N�\�N','N','114.23.241.67','2018-02-23 01:31:11'),(243,']\�F\�@)\�.\�	?�\�\���\�~��D�n���M�5k','�1��>���N�\�N','N','114.23.241.67','2018-02-23 02:11:05'),(244,'�\�	��k\�\�4A?�n\��\�\��R��z\Z��\�','�1��>���N�\�N','N','125.238.249.53','2018-04-18 04:21:08');
/*!40000 ALTER TABLE `cms_login_attempt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_module`
--

DROP TABLE IF EXISTS `cms_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_module` (
  `cms_module_id` int(11) NOT NULL AUTO_INCREMENT,
  `cms_module_label` varchar(100) DEFAULT NULL,
  `cms_module_uri` varchar(150) DEFAULT NULL,
  `cms_module_icon` varchar(100) DEFAULT NULL,
  `cms_module_rank` int(11) DEFAULT NULL,
  `cms_module_group_id` varchar(45) DEFAULT NULL,
  `special_access` enum('Y','N') DEFAULT 'N',
  `access_key` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cms_module_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_module`
--

LOCK TABLES `cms_module` WRITE;
/*!40000 ALTER TABLE `cms_module` DISABLE KEYS */;
INSERT INTO `cms_module` VALUES (1,'Dashboard','dashboard','fa fa-dashboard',1,'1','N',NULL),(2,'Pages','pages','glyphicon glyphicon-list-alt',2,'2','N',NULL),(3,'Enquiries','enquiries','fa fa-envelope',3,'3','N',NULL),(4,'File Manager','files','fa fa-folder',4,'4','N',NULL),(5,'Reviews','testimonials','fa fa-comments',5,'5','N',NULL),(6,'Forms','forms','fa fa-list-alt',6,'6','N',NULL),(7,'Compendium Sections','compendium','fa fa-list',7,'7','N',NULL),(8,'Newsletter Lists','beameremails','fa fa-th-list',8,'8','N',NULL),(9,'Newsletter Campaigns','beamercampaigns','fa fa-envelope',9,'8','N',NULL),(10,'Slideshows','slideshows','glyphicon glyphicon-picture',10,'9','N',NULL),(11,'Galleries','galleries','glyphicon glyphicon-picture',11,'10','N',NULL),(12,'Accommodation','accommodation','fa fa-home',12,'11','N',NULL),(13,'Features','features','fa fa-star',13,'11','N',NULL),(14,'Payment Request','payments','fa fa-money',14,'12','N',NULL),(15,'Blog Categories','blogcategories','fa fa-rss',15,'13','N',NULL),(16,'Blog Posts','blogposts','fa fa-rss',16,'13','N',NULL),(17,'Newsletter','newsletter','fa fa-list',17,'14','N',NULL);
/*!40000 ALTER TABLE `cms_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_module_group`
--

DROP TABLE IF EXISTS `cms_module_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_module_group` (
  `cms_module_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `cms_module_group_label` varchar(100) DEFAULT NULL,
  `cms_module_description` text,
  `is_active` enum('Y','N') DEFAULT 'N',
  `rank` int(11) DEFAULT NULL,
  `cms_nav_group_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cms_module_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_module_group`
--

LOCK TABLES `cms_module_group` WRITE;
/*!40000 ALTER TABLE `cms_module_group` DISABLE KEYS */;
INSERT INTO `cms_module_group` VALUES (1,'Dashboard',NULL,'Y',1,1),(2,'Pages',NULL,'Y',2,1),(3,'Enquiries',NULL,'Y',3,1),(4,'File Manager',NULL,'Y',4,1),(5,'Reviews',NULL,'Y',5,1),(6,'Forms',NULL,'Y',6,1),(7,'Compendium',NULL,'Y',7,1),(8,'Mailchimp Beamer',NULL,'Y',8,2),(9,'Slideshow',NULL,'Y',9,3),(10,'Gallery',NULL,'Y',10,3),(11,'Accommodation',NULL,'Y',11,4),(12,'Payments',NULL,'Y',12,5),(13,'Blog',NULL,'Y',13,6),(14,'Newsletter',NULL,'Y',14,7);
/*!40000 ALTER TABLE `cms_module_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_nav_group`
--

DROP TABLE IF EXISTS `cms_nav_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_nav_group` (
  `cms_nav_id` int(11) NOT NULL AUTO_INCREMENT,
  `cms_nav_label` varchar(150) DEFAULT NULL,
  `cms_nav_rank` int(11) DEFAULT NULL,
  PRIMARY KEY (`cms_nav_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_nav_group`
--

LOCK TABLES `cms_nav_group` WRITE;
/*!40000 ALTER TABLE `cms_nav_group` DISABLE KEYS */;
INSERT INTO `cms_nav_group` VALUES (1,'General',1),(2,'Mailchimp Beamer',2),(3,'Photos',3),(4,'Accommodation',4),(5,'Payments',5),(6,'Blog',6),(7,'Newsletter',7);
/*!40000 ALTER TABLE `cms_nav_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_settings`
--

DROP TABLE IF EXISTS `cms_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_settings` (
  `cmsset_id` int(11) NOT NULL AUTO_INCREMENT,
  `cmsset_name` varchar(100) NOT NULL,
  `cmsset_label` varchar(50) NOT NULL,
  `cmsset_explanation` varchar(255) NOT NULL,
  `cmsset_status` char(1) NOT NULL DEFAULT 'I',
  `cmsset_value` varchar(255) NOT NULL,
  PRIMARY KEY (`cmsset_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_settings`
--

LOCK TABLES `cms_settings` WRITE;
/*!40000 ALTER TABLE `cms_settings` DISABLE KEYS */;
INSERT INTO `cms_settings` VALUES (10,'pages_maximum','Page Limit','','I','12'),(2,'pages_generations','Page Generation Limit','The number of levels of children pages that are allowed to be made.','A','5');
/*!40000 ALTER TABLE `cms_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_users`
--

DROP TABLE IF EXISTS `cms_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary key for user',
  `user_fname` varchar(45) DEFAULT NULL COMMENT 'User''s firstname',
  `user_lname` varchar(45) DEFAULT NULL COMMENT 'User''s lastname',
  `user_pass` varchar(255) DEFAULT NULL COMMENT 'User''s password (recommended as being sha256)',
  `user_email` varchar(100) DEFAULT NULL COMMENT 'User''s email address',
  `user_photo_path` varchar(255) DEFAULT NULL,
  `user_thumb_path` varchar(255) DEFAULT NULL,
  `user_introduction` mediumtext,
  `social_links` mediumtext,
  `last_login_date` datetime DEFAULT NULL,
  `access_id` int(11) DEFAULT '1' COMMENT 'User''s rights - whether they are admin, banned, general user etc. This is totally customisable and is up to the programmer.',
  `is_superuser` enum('Y','N') DEFAULT 'N',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_users`
--

LOCK TABLES `cms_users` WRITE;
/*!40000 ALTER TABLE `cms_users` DISABLE KEYS */;
INSERT INTO `cms_users` VALUES (3,'Test','User','9bc129f7a46381be15f1329c4479e02c70d10d19','support@tomahawk.co.nz',NULL,NULL,NULL,NULL,'2018-05-14 04:26:39',1,'Y'),(7,'Tester','User','9bc129f7a46381be15f1329c4479e02c70d10d19','tester@tomahawk.co.nz',NULL,NULL,NULL,NULL,'2018-04-20 01:30:59',2,'N');
/*!40000 ALTER TABLE `cms_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `color_palette_hex`
--

DROP TABLE IF EXISTS `color_palette_hex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `color_palette_hex` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `primary_color` varchar(50) COLLATE utf8_unicode_ci DEFAULT '0',
  `secondary_color` varchar(50) COLLATE utf8_unicode_ci DEFAULT '0',
  `color1` varchar(50) COLLATE utf8_unicode_ci DEFAULT '0',
  `color2` varchar(50) COLLATE utf8_unicode_ci DEFAULT '0',
  `color3` varchar(50) COLLATE utf8_unicode_ci DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `color_palette_hex`
--

LOCK TABLES `color_palette_hex` WRITE;
/*!40000 ALTER TABLE `color_palette_hex` DISABLE KEYS */;
INSERT INTO `color_palette_hex` VALUES (1,'#997c2e','#535353','#514422','#EAEBEC','#FCFCFC'),(2,'#2b547d','#45484F','#132132','#EAEBEC','#FCFCFC'),(3,'#335e16','#80878D','#153727','#D5D5D5','#F4F4F4');
/*!40000 ALTER TABLE `color_palette_hex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `color_palettes`
--

DROP TABLE IF EXISTS `color_palettes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `color_palettes` (
  `color_palette_id` smallint(5) unsigned NOT NULL,
  `color_palette_name` varchar(100) NOT NULL,
  `color_palette_path` varchar(255) NOT NULL,
  `color_palette_cms_preview_thumb_path` varchar(255) NOT NULL,
  `color_palette_ref` varchar(100) NOT NULL,
  PRIMARY KEY (`color_palette_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `color_palettes`
--

LOCK TABLES `color_palettes` WRITE;
/*!40000 ALTER TABLE `color_palettes` DISABLE KEYS */;
INSERT INTO `color_palettes` VALUES (1,'palette1','/themes/palette1/assets/css/main.css','/images/color-palette-previews/palette1.jpg','palette1'),(2,'palette2','/themes/palette2/assets/css/main.css','/images/color-palette-previews/palette2.jpg','palette2'),(3,'palette3','/themes/palette3/assets/css/main.css','/images/color-palette-previews/palette3.jpg','palette3');
/*!40000 ALTER TABLE `color_palettes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compendium_section`
--

DROP TABLE IF EXISTS `compendium_section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `compendium_section` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `icon` varchar(50) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `status` enum('A','H','D') NOT NULL DEFAULT 'H',
  `rank` int(11) NOT NULL,
  `is_generic` enum('0','1') NOT NULL DEFAULT '0',
  `has_dark_bg` enum('0','1') NOT NULL DEFAULT '0',
  `is_map` enum('0','1') NOT NULL DEFAULT '0',
  `default_content` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compendium_section`
--

LOCK TABLES `compendium_section` WRITE;
/*!40000 ALTER TABLE `compendium_section` DISABLE KEYS */;
INSERT INTO `compendium_section` VALUES (1,'fa fa-info-circle','Welcome','A',1,'','','',''),(2,'fa fa-clock-o','Arrival Information','A',2,'','1','','<p>Flag: Accommodation</p>\r\n\r\n<p>- Arrival Information -</p>'),(3,'fa fa-check','Departure Checklist','A',3,'','1','',''),(4,'fa fa-home','House Information','A',4,'','0','0',''),(8,'fa fa-ship','About Waiheke','A',6,'1','','','<p><strong>About Waiheke </strong></p>\r\n\r\n<p>Waiheke Island is known internationally as one of the most beautiful islands in the world. Just 35 minutes from downtown Auckland, Waiheke is often referred to as the Jewel in the Hauraki Gulf, and is an island of unique landscapes from beaches to rolling vineyards, diverse people from around the world, and an ever expanding selection of great wine and good food.&nbsp;</p>\r\n\r\n<p><strong>Beaches</strong><br />\r\nThere are five glorious white sand beaches on the north side of the island to choose from &ndash; Oneroa, Little Oneroa, Sandy Bay, Palm Beach and Onetangi Beach.&nbsp;</p>\r\n\r\n<p>The southern side beaches include Surfdale, Blackpool and Rocky Bay, and the Eastern side of the island is the shell covered beach at Whakanewha Regional Park &ndash; the perfect spot for a kayak and also where the camping ground is located.</p>\r\n\r\n<p>Man O&rsquo;War Bay at the &ldquo;bottom end&rdquo; is also well worth a visit (if you have a car) for some wine tasting at the renowned Man O&rsquo; War Vineyards tasting room right on the beach.</p>\r\n\r\n<p><strong>Geography</strong><br />\r\nThe island is 19.3 km long from west to east and varies in width from half a kilomter to 10 kilometers, and has a surface area of 92 km&sup2;. The coastline is 133.5 km, including 40 km of beaches. It is very hilly with few flat areas, the highest point being Maunganui at 231 metres. The climate is slightly warmer than Auckland with less humidity and rain and more sunshine hours.</p>\r\n\r\n<p>Townships<br />\r\nâ—&nbsp;&nbsp; &nbsp;Oneroa<br />\r\nâ—&nbsp;&nbsp; &nbsp;Surfdale<br />\r\nâ—&nbsp;&nbsp; &nbsp;Onetangi<br />\r\nâ—&nbsp;&nbsp; &nbsp;Rocky Bay</p>\r\n\r\n<p><strong>History</strong><br />\r\nVisit the Stony Batter WWII fortifications, which were built to keep the Japanese forces out. Open to the public they offer both an insight to the extent of defence preparations and wonderful views of the southern end of the Hauraki Gulf. Waiheke was discovered and settled by Maori approximately 1000 years ago and many signs of Maori occupation on Waiheke Island still exist today. Archaeological sites are scattered over the island including more than forty pa sites, cooking pits and terraced areas.</p>\r\n\r\n<p><strong>Viticulture</strong><br />\r\nWinegrowers have successfully matched the unique maritime climate and ancient soil structures to the selection of classical grape varieties in order to produce red and white wines with distinctive varietal character. There are over 20 wineries on the island, and during the summer months most have their cellar doors open to the public. You can visit most wineries via an organised tour, self-drive tour or hop on a many of the local buses.</p>\r\n\r\n<p><strong>Walks or Hiking</strong><br />\r\nOver 8 marked walks ranging in difficulty cross Waiheke with routes suitable for the very fit as well as easier routes for those just out for a stroll. Walkway maps can be found at the i-Site information center in Oneroa.</p>\r\n\r\n<p><strong>Birdlife on the island</strong><br />\r\nThere is a successful dotterel breeding programme, oystercatchers (torea-pango), white-faced heron (matukumoana), pied stilts (poaka), Caspian terns (Taranui), paradise ducks (putangitangi) are all found around the island Godwits (kuaka) are also sometimes spotted on the tidal flats while on the south side of the island where a large wetland is home to bittern (matuku), banded rail (mohopereru) and spotless crake (puweto).</p>\r\n\r\n<p><strong>Native bush</strong><br />\r\nWaiheke Island carefully guards it&rsquo;s status as a possum free island. The absence of these pests means forests and wildlife are allowed to thrive.</p>\r\n\r\n<p><strong>Visiting New Zealand</strong><br />\r\nIf it&rsquo;s your first time in New Zealand be sure to check out the 100% Pure New Zealand page for facts about travelling in New Zealand.</p>'),(9,'fa fa-list','Waiheke Services','A',7,'1','','','<p><strong>Waiheke Services </strong></p>\r\n\r\n<p><strong>Art galleries</strong></p>\r\n\r\n<p>Waiheke Community Art Gallery<br />\r\n2 Korora Road, Oneroa<br />\r\n93729907</p>\r\n\r\n<p>Toi Gallery<br />\r\n145 Ocean View Road, Oneroa<br />\r\n027 7732975</p>\r\n\r\n<p>Red Shed<br />\r\nMiro Road, Palm Beach<br />\r\n09 3729367</p>\r\n\r\n<p>Banks/ATMs</p>\r\n\r\n<p>ANZ<br />\r\n112 Ocean View Road, Oneroa</p>\r\n\r\n<p>ASB<br />\r\n120 Ocean View Road, Oneroa</p>\r\n\r\n<p>BNZ<br />\r\nOcean View Road, Oneroa</p>\r\n\r\n<p>Kiwibank<br />\r\nOcean View Road, Oneroa</p>\r\n\r\n<p>BBQs (public)</p>\r\n\r\n<p>There are free public BBQs located at beaches around the island.<br />\r\nLittle Oneroa, Palm Beach, Onetangi, Man O War Bay, Whakanewha Regional Park</p>\r\n\r\n<p>Cinema/Theatre</p>\r\n\r\n<p>Artworks Community Theatre<br />\r\n127 Ocean View Road, Oneroa<br />\r\n09 3722941</p>\r\n\r\n<p>Waiheke Island Cinema<br />\r\n2 Korora Road, Oneroa<br />\r\n09 3724240</p>\r\n\r\n<p>Dentists</p>\r\n\r\n<p>Oneroa Dental Surgery<br />\r\n9/118 Ocean View Road, Oneroa<br />\r\n09 3726849</p>\r\n\r\n<p>Waiheke Dental Centre<br />\r\n2 Putiki Road, Ostend<br />\r\n09 3727422</p>\r\n\r\n<p>DIY/Garden Centre</p>\r\n\r\n<p>Placemakers<br />\r\n102 Ostend Road, Ostend<br />\r\n09 3720060</p>\r\n\r\n<p>Dry cleaning</p>\r\n\r\n<p>Sparkle<br />\r\nBelgium Street, Ostend<br />\r\n09 3728969</p>\r\n\r\n<p>DVD hire</p>\r\n\r\n<p>Video Ezy<br />\r\nOcean View Road, Oneroa<br />\r\n09 3728192</p>\r\n\r\n<p>Emergency services</p>\r\n\r\n<p>Police/Fire/Ambulance<br />\r\n111</p>\r\n\r\n<p>Waiheke Police Station<br />\r\n104 Ocean View Road<br />\r\n09 3721150</p>\r\n\r\n<p>Facsimile service</p>\r\n\r\n<p>Take Note<br />\r\nOcean View Road, Oneroa<br />\r\n09 3727174</p>\r\n\r\n<p>Ferries</p>\r\n\r\n<p>Fullers<br />\r\nMatiatia Ferry Terminal, Ocean View Road, Oneroa<br />\r\n09 3679111</p>\r\n\r\n<p>Sealink<br />\r\nKennedy Point Terminal,Donald Bruce Rd,Surfdale<br />\r\n09 3005900</p>\r\n\r\n<p>Library</p>\r\n\r\n<p>Auckland City Libraries, Waiheke<br />\r\n2 Korora Road, Oneroa<br />\r\n09 3741325</p>\r\n\r\n<p>Market</p>\r\n\r\n<p>Ostend arts, craft and food market is held every Saturday morning 8am 12.30pm</p>\r\n\r\n<p>War Memorial Hall and grounds, Belgium Street, Ostend</p>\r\n\r\n<p>Medical Centres</p>\r\n\r\n<p>Oneroa Accident and Medical Centre<br />\r\n132 Ocean View Road, Oneroa<br />\r\n09 3728756</p>\r\n\r\n<p>Ostend Medical Centre<br />\r\n9 Belgium Street, Ostend<br />\r\n09 3725005</p>'),(10,'fa fa-star','Complimentary Booking Service','A',8,'1','','','<p><strong>Stay Waiheke Complimentary Booking Service</strong></p>\r\n\r\n<p>Stay Waiheke is pleased to be able to offer a complimentary booking service for a wide range of activities and services on offer including;</p>\r\n\r\n<p>â—&nbsp;&nbsp; &nbsp;Beauty services<br />\r\nâ—&nbsp;&nbsp; &nbsp;Car/scooter/bike rental<br />\r\nâ—&nbsp;&nbsp; &nbsp;Catering<br />\r\nâ—&nbsp;&nbsp; &nbsp;Heli-tours<br />\r\nâ—&nbsp;&nbsp; &nbsp;Mobile massage services<br />\r\nâ—&nbsp;&nbsp; &nbsp;Nanny service/ baby equipment hire<br />\r\nâ—&nbsp;&nbsp; &nbsp;Sightseeing tours<br />\r\nâ—&nbsp;&nbsp; &nbsp;Wine-tasting</p>\r\n\r\n<p>For more information about the activities and services we can organise on your behalf please check out our website <a href=\"http://www.staywaiheke.com\">www.staywaiheke.com</a> or give us a call 09 3725402 or 021 563 271.</p>'),(11,'fa fa-file-text-o','Terms & Conditions','A',9,'1','','','<p><strong>Terms &amp; Conditions </strong></p>\r\n\r\n<p><strong>Booking Terms:</strong></p>\r\n\r\n<p>Check-In<br />\r\n1.&nbsp;&nbsp; &nbsp;Check in time is from 2pm. There is no guaranteed check in before 2pm.</p>\r\n\r\n<p>Check-Out<br />\r\n1.&nbsp;&nbsp; &nbsp;Check out time is 10.30 or by prior arrangement. &nbsp;The property must be completely vacated by check out time. Failure to comply will incur surcharge.</p>\r\n\r\n<p>Occupancy<br />\r\n1.&nbsp;&nbsp; &nbsp;All properties are let on the understanding that the accommodation is for holiday use only, for the period specified and that no right to remain in the accommodation exists for the applicants or anyone in the applicant&rsquo;s party beyond the specified date and time.<br />\r\n2.&nbsp;&nbsp; &nbsp;At no time during the period of permitted use may the property be occupied overnight by more than the number of people specified on the booking form.(including children &amp; infants)<br />\r\n3.&nbsp;&nbsp; &nbsp;Guests must not sub-let the property nor use it for the purposes other than a holiday house.<br />\r\n4.&nbsp;&nbsp; &nbsp;No caravans, tents or other accommodation will be placed at the property without written permission.</p>\r\n\r\n<p>Pets<br />\r\n1.&nbsp;&nbsp; &nbsp;The guest agrees not to allow any animals on the property without the written consent of &ldquo;STAY Waiheke&rdquo;.<br />\r\n2.&nbsp;&nbsp; &nbsp;a) When animals are allowed on the property, the guest agrees that pets are not to be left unattended inside or outside the property at any time, guests will remove all pet waste from the property and be fully responsible for any damage caused by the pet.</p>\r\n\r\n<p>No Smoking Policy<br />\r\n1.&nbsp;&nbsp; &nbsp;If smoking is allowed on the property, the guest agrees not to smoke inside the property. A breach of this policy will result in a NZ$500 cleaning fee. If smoking outdoors all cigarette butts must be disposed of.<br />\r\nUse of the Telephone<br />\r\n1.&nbsp;&nbsp; &nbsp;Where a telephone is available, the guest will ensure any calls made are &lsquo;collect&rsquo; or &lsquo;price required&rsquo; for anything outside the local calling area. Any costs incurred will be on charged to the guest.</p>\r\n\r\n<p>Linen<br />\r\n1.&nbsp;&nbsp; &nbsp;Where linen is provided by &lsquo;STAY Waiheke&rsquo; this includes bed sheets, pillow cases, bath towels and face cloths per person, hand towels, tea towels and bath mats. Beach or Spa towels are not provided unless stated on the web page for the property.&nbsp;<br />\r\n2.&nbsp;&nbsp; &nbsp;Some property owners store their own linen in the house. This linen is not intended for guest use. An additional charge is applicable if the guests use owner&rsquo;s linen.</p>\r\n\r\n<p>Quiet Enjoyment and Parties<br />\r\n1.&nbsp;&nbsp; &nbsp;The guest agrees to respect the rights of neighbors in regard to noise. &nbsp;Loud music is not permitted after 11pm. &nbsp;Local council noise regulations apply. &nbsp;Absolutely no house parties or &nbsp;weddings or post wedding BBQ&rsquo;s are allowed at the property without advance permission in writing.<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Children<br />\r\n1.&nbsp;&nbsp; &nbsp;The guests accept full responsibility for checking with &ldquo;STAY Waiheke&rdquo; as to whether or not the property is, to the best knowledge of &ldquo;STAY Waiheke&rdquo;, safe for children.</p>\r\n\r\n<p>Property Maintenance<br />\r\n1.&nbsp;&nbsp; &nbsp;Although every effort is made to maintain properties in good order, wear &amp; tear on rental property is unavoidable. &nbsp;Please notify &lsquo;STAY Waiheke&rsquo; as soon as possible if a problem relating to the property exists. Every effort will be made to rectify any problem that exists in a timely manner. &nbsp;Repairs will be made as soon as possible after notification.<br />\r\n2.&nbsp;&nbsp; &nbsp;The Guest is responsible for the safe-keeping of the owner&rsquo;s property and content during the period booked. Neither the owner nor &lsquo;STAY Waiheke&rsquo; is responsible for any stolen or lost items. Be safe and lock doors and windows when you are away and at night as you would at home. &nbsp;Any breakage or damage to content or structure of the building must be reported promptly to &lsquo;STAY Waiheke&rsquo; and the owner will be entitled to recover from the guest the cost of any repair or replacement needed due to guests act or default.<br />\r\n3.&nbsp;&nbsp; &nbsp;The Renter promises that it will:<br />\r\n4.&nbsp;&nbsp; &nbsp; Keep in a clean, liveable condition and in good repair (subject to Reasonable Wear and Tear):<br />\r\n5.&nbsp;&nbsp; &nbsp;(i) The interior of the Accommodation;<br />\r\n6.&nbsp;&nbsp; &nbsp;(ii) The carpets, curtains and all other items of the&nbsp;<br />\r\n7.&nbsp;&nbsp; &nbsp;Accommodation; an<br />\r\n8.&nbsp;&nbsp; &nbsp;(iii) All ï¬xtures and ï¬ttings of the accommodation, including outdoor furniture, kyaks, boats .<br />\r\n9.&nbsp;&nbsp; &nbsp;Clean and keep free from blockages and obstructions all ;baths, sinks, lavatories, cisterns, drains, gutters, pipes, chimneys and the like;<br />\r\n10.&nbsp;&nbsp; &nbsp;16.1 &nbsp;Keep clean the insides of all windows and replace any glass or mirrors which break for any reason.<br />\r\n11.&nbsp;&nbsp; &nbsp;Not damage, change or remove any of the Owner/Property Manager&rsquo;s installations, furniture, ï¬xtures and ï¬ttings;<br />\r\n12.&nbsp;&nbsp; &nbsp;BOND/ SECURITY DEPOSIT: The guest authorises &lsquo;STAY Waiheke&rsquo; to obtain an authorization for the security deposit on his/her credit card and to debit his /her credit card for costs incurred for damage, breakage or cleaning. Where a credit card is not available, the guest agrees to pay a security deposit at the time of final payment if requested to do so.The guest agrees that the liability is not limited to this amount. In the event that there is a problem with the credit card being debited the Renter agrees to immediately pay the amount owing to the Owner/Property Manager in cash, bank cheque or by electronic funds transfer of cleared funds to an account speciï¬ed by the Owner/Property Manager.<br />\r\n13.&nbsp;&nbsp; &nbsp;Some Owners/Property Managers require payment of a cash bond in addition to or instead of credit card bond. Typically the cash bond is $500 - $1,500 depending on the nature of the Accommodation, is paid into the Owner/Property Manager&rsquo;s nominated bank account prior to check in and is repaid within 7 working days of the completion of the Holiday Tenancy or upon the ï¬nal resolution of a dispute.<br />\r\n14.&nbsp;&nbsp; &nbsp;The property must be left in a clean and tidy state and all furniture returned to the place in which it was found on arrival. &nbsp;Guests are fully responsible for cleaning all crockery, cutlery, general utensils, Oven and BBQ, and disposing of their rubbish in the prescribed way. If they are left dirty you may be charged an min but not limited to excess clean charge of $50. All doors and windows are to be closed and locked before check-out.&nbsp;<br />\r\n15.&nbsp;&nbsp; &nbsp;Neither the owner nor &lsquo;STAY Waiheke&rsquo; shall be liable for any loss or damage to property however caused during your stay.<br />\r\n16.&nbsp;&nbsp; &nbsp;Whenever the Accommodation is left unattended, the Renter will fasten all locks to all doors and windows and activate any burglar alarm, to prevent unauthorised access to the Accommodation. A call out due to lost keys or lockout will attract a non-negotiable minimum fee of $100 plus GST to be deducted from the Renter&rsquo;s credit card. The Renter will not change or install any locks on any doors or windows nor have additional keys made&nbsp;<br />\r\n17.&nbsp;&nbsp; &nbsp;for any locks without the prior written consent of the Owner/Property Manager.</p>\r\n\r\n<p>Booking and Reservation Policy<br />\r\n1.&nbsp;&nbsp; &nbsp;The guest agrees that &lsquo;STAY Waiheke&rsquo; is the booking agent only and any dispute regarding the availability, the standard of the property or chattels will be solely between the guest and the owner of the property. The guest agrees that &lsquo;STAY Waiheke&rsquo; may give the guests contact details to the owner of the property if they request so.<br />\r\n2.&nbsp;&nbsp; &nbsp;No property shall be considered booked until &lsquo;STAY Waiheke&rsquo; has confirmed the booking in writing.<br />\r\n3.&nbsp;&nbsp; &nbsp;A 50% deposit of the total accommodation charge is payable within 48 hours of booking with the balance payable 14 days prior to the date of arrival. &nbsp;If booking falls between 15 December and 15 January, balance of payment is due 21 days prior to the date of arrival. &nbsp;The guests authorise STAY Waiheke to charge full payment due 10 days prior to arrival if no payment is made prior.<br />\r\n4.&nbsp;&nbsp; &nbsp;Some Owner/Property Managers require the Renter to agree to further terms and conditions speciï¬c to its accommodation at the time of booking. If the Renter does not wish to be bound by an Owner/Property Manager&rsquo;s additional terms and conditions for any reason, then the Renter can cancel the booking and STAY Waiheke will refund the Renter in full subject to STAY Waiheke receiving notice in writing from the Renter within 5 working days&nbsp;<br />\r\n5.&nbsp;&nbsp; &nbsp;of the completion of the online booking process.<br />\r\n6.&nbsp;&nbsp; &nbsp;Dishonored payments of balances not received 7 days before the start of the let will result in the booking being canceled and deposit forfeited.</p>\r\n\r\n<p>Cancellation Policy<br />\r\n1.&nbsp;&nbsp; &nbsp;Cancellation of a booking by the guests will incur a $50 administration charge. In addition:<br />\r\na.&nbsp;&nbsp; &nbsp;Within 60 days of arrival:50% of the total accommodation costs unless the property can be rebooked.<br />\r\nb.&nbsp;&nbsp; &nbsp;Within 30 days of arrival: 100% of the total accommodation costs unless the property can be rebooked.<br />\r\nc.&nbsp;&nbsp; &nbsp;All booking canceled within 14 days of arrival or non-arrivals:100% of all booking costs.<br />\r\nd.&nbsp;&nbsp; &nbsp;No refunds are given for early departure.<br />\r\n2.&nbsp;&nbsp; &nbsp;The Guest agrees that, should the property become unavailable or un-live able for any reason (the reason to be verified by &lsquo;STAY Waiheke&rsquo; as being justified), then STAY Waiheke&rsquo; will use their best endeavors to find a satisfactory alternative. Should a replacement property not be available all monies paid by the guest to &lsquo;STAY Waiheke will be refunded in full. The guest agrees that the owner and &lsquo;STAY Waiheke&rsquo; liability is limited to the refunding of such monies.<br />\r\n3.&nbsp;&nbsp; &nbsp;&lsquo;STAY Waiheke&rsquo; reserves the right to cancel reservation at any time, in which event the deposit shall be refunded in full.<br />\r\nPrinciple<br />\r\n1.&nbsp;&nbsp; &nbsp;The guest agrees, that should all of these conditions not be adhered to, the owners or their agents will have the right to immediately terminate this contract and the guest and all other persons will vacate the property immediately if requested to do so by the owners or the owners&rsquo; agent. In this event, the guest agrees that no refund will be due or paid for any unused accommodation nights.<br />\r\n2.&nbsp;&nbsp; &nbsp;The Guest agrees that by making a booking, they indicate to accept the booking conditions as set out above.</p>\r\n\r\n<p>INSURANCE AND NO LIABILITY<br />\r\nThe Renter will not do anything that could adversely affect the Owner/Property Manager&rsquo;s insurance over the Accommodation.<br />\r\n1.&nbsp;&nbsp; &nbsp;The personal effects of the Renter will not be insured by the Owner/Property Manager. The Renter acknowledges that all personal items and vehicles (including vehicle contents) of the Renter remain the Renter&rsquo;s responsibility and the Owner/Property Manager accepts no responsibility for loss or damage.<br />\r\n2.&nbsp;&nbsp; &nbsp;In the event that the Renter uses extra facilities at the Accommodation including, but not limited to, kayaks, dinghies, bicycles, trampolines, spas and swimming pools, such use is entirely at the Renter&rsquo;s own risk at all times and the Owner/Property Manager accepts no responsibility for any injury or loss to the Renter. Children are to be supervised at all times by a parent or responsible adult.</p>'),(12,'fa fa-map-marker','Location Map','A',5,'1','','1',''),(17,'fa fa-car','Testing Compendium Section 01','D',10,'1','','',''),(18,'fa fa-car','Test 3','D',0,'','','','<p>Contents</p>'),(19,'fa fa-check','Testing Compendium Section 02','D',11,'1','1','','<p>Pellentesque pulvinar pellentesque habitant morbi tristique. Ac auctor augue mauris augue neque, gravida. Sit amet luctus venenatis, lectus. Sit amet nulla facilisi morbi tempus iaculis. Egestas maecenas pharetra convallis posuere. Varius vel, pharetra vel turpis nunc. Quis auctor elit sed vulputate mi sit. Massa tincidunt dui ut ornare lectus. Platea dictumst vestibulum rhoncus est pellentesque elit. Magna sit amet purus gravida. Cras sed felis eget velit aliquet. Ultricies integer quis auctor elit sed vulputate mi sit. Mi ipsum, faucibus vitae aliquet nec, ullamcorper sit amet. Id velit ut tortor pretium.</p>'),(20,'','Untitled','D',0,'0','0','0',NULL),(21,'fa fa-car','Testing Compendium Section 03','D',12,'1','','','<p>Neque aliquam vestibulum morbi blandit cursus risus, at ultrices. Aliquet porttitor lacus, luctus accumsan tortor posuere. Tristique senectus et netus et malesuada. Cursus in hac habitasse platea dictumst quisque sagittis. Nisl, vel pretium lectus quam id leo in vitae. Sem nulla pharetra diam sit amet nisl. Ullamcorper sit amet risus nullam eget felis eget nunc. Molestie nunc, non blandit massa enim nec. Consequat nisl, vel pretium lectus quam id leo in. Sit amet volutpat consequat, mauris nunc. Aliquet nibh praesent tristique magna sit. Arcu ac tortor dignissim convallis aenean et tortor. Nibh praesent tristique magna sit amet purus gravida quis. Diam phasellus vestibulum lorem sed. Commodo sed egestas egestas fringilla. Tortor vitae purus faucibus ornare suspendisse sed nisi. Facilisis mauris sit amet massa vitae tortor.</p>\r\n\r\n<p>Donec ac odio tempor orci dapibus ultrices in. Sed viverra ipsum nunc aliquet bibendum enim, facilisis. Ipsum suspendisse ultrices gravida dictum. Mauris ultrices eros, in cursus turpis massa. Feugiat nibh sed pulvinar proin gravida. Dolor sit amet, consectetur adipiscing elit ut aliquam, purus. Sed felis eget velit aliquet sagittis id consectetur purus. Arcu vitae elementum curabitur vitae. Facilisis volutpat, est velit egestas dui, id. Vitae ultricies leo integer malesuada nunc. Fringilla ut morbi tincidunt augue interdum velit euismod. Adipiscing enim eu turpis egestas pretium aenean pharetra. At ultrices mi tempus imperdiet nulla malesuada pellentesque. Vel turpis nunc eget lorem dolor, sed viverra ipsum. Vitae sapien pellentesque habitant morbi.</p>'),(22,'fa fa-check','Testing Compendium Section 04','D',13,'','','','<p>Ac felis donec et odio. Faucibus interdum posuere lorem ipsum. Tristique risus nec feugiat in fermentum posuere urna nec. Aliquam ut porttitor leo a diam sollicitudin tempor id. Ullamcorper dignissim cras tincidunt lobortis feugiat. Quis eleifend quam adipiscing vitae. Elit sed vulputate mi sit amet mauris. Neque aliquam vestibulum morbi blandit. Sit amet purus gravida quis blandit turpis cursus in. Sed odio morbi quis commodo odio aenean sed adipiscing. Enim, facilisis gravida neque convallis a cras. Feugiat scelerisque varius morbi enim nunc, faucibus. Aliquam etiam erat velit, scelerisque in dictum non. Orci nulla pellentesque dignissim enim, sit amet venenatis. Sit amet luctus venenatis, lectus magna fringilla urna, porttitor.</p>\r\n\r\n<p>Leo, vel fringilla est ullamcorper eget. Ornare suspendisse sed nisi lacus, sed viverra. In pellentesque massa placerat duis. Fames ac turpis egestas integer eget aliquet nibh. Dui, id ornare arcu odio ut. Vel fringilla est ullamcorper eget nulla facilisi etiam dignissim. Ac turpis egestas sed tempus, urna et. Lacus, luctus accumsan tortor posuere ac ut. Nibh tellus molestie nunc, non blandit. Pulvinar pellentesque habitant morbi tristique. In ornare quam viverra orci sagittis eu volutpat odio. Id diam maecenas ultricies mi eget mauris pharetra et. Mattis rhoncus, urna neque viverra justo, nec. Ipsum nunc aliquet bibendum enim, facilisis gravida neque convallis. Amet commodo nulla facilisi nullam vehicula ipsum a. Nibh tellus molestie nunc, non blandit massa.</p>\r\n\r\n<p>Consequat, mauris nunc congue nisi. Integer enim neque, volutpat ac tincidunt. Eget egestas purus viverra accumsan in nisl. Ultricies leo integer malesuada nunc. Eu lobortis elementum, nibh tellus molestie nunc. A pellentesque sit amet, porttitor eget dolor morbi non. A diam maecenas sed enim ut sem. Tortor dignissim convallis aenean et tortor. Tortor vitae purus faucibus ornare suspendisse sed nisi. Tellus at urna condimentum mattis pellentesque id nibh tortor. Non sodales neque sodales ut. Sed viverra ipsum nunc aliquet bibendum enim, facilisis. Natoque penatibus et magnis dis parturient. Aliquet nibh praesent tristique magna sit. Facilisis volutpat, est velit egestas dui, id. Ultrices eros, in cursus turpis massa tincidunt dui.</p>'),(23,'fa fa-plane','Testing Compendium Section 05','D',14,'1','','','<p>Enim, facilisis gravida neque convallis a cras semper auctor. Dolor magna eget est lorem ipsum. Pulvinar sapien et ligula ullamcorper malesuada. Nunc, sed blandit libero volutpat sed cras ornare arcu. Odio tempor orci dapibus ultrices in iaculis. Auctor augue mauris augue neque, gravida in fermentum. Pellentesque adipiscing commodo elit, at imperdiet dui accumsan. Vivamus arcu felis, bibendum ut. Maecenas volutpat blandit aliquam etiam erat velit. Sit amet, mattis vulputate enim nulla. Porta nibh venenatis cras sed felis eget velit aliquet. Viverra maecenas accumsan, lacus vel facilisis. Sagittis eu volutpat odio facilisis mauris sit. Praesent semper feugiat nibh sed pulvinar proin. Fringilla est ullamcorper eget nulla.</p>\r\n\r\n<p>Congue eu, consequat ac felis donec et odio. In hac habitasse platea dictumst quisque sagittis, purus. Faucibus ornare suspendisse sed nisi lacus, sed. Suspendisse faucibus interdum posuere lorem ipsum. Dui vivamus arcu felis, bibendum. Eu feugiat pretium, nibh ipsum consequat nisl, vel pretium. Enim praesent elementum facilisis leo. Porta nibh venenatis cras sed felis eget. Amet luctus venenatis, lectus magna fringilla urna, porttitor rhoncus. Arcu dui vivamus arcu felis, bibendum ut. Scelerisque fermentum dui faucibus in ornare quam. Sollicitudin aliquam ultrices sagittis orci, a. Consectetur lorem donec massa sapien, faucibus et. Fringilla ut morbi tincidunt augue interdum velit euismod. Vel risus commodo viverra maecenas accumsan, lacus vel. Eu ultrices vitae, auctor eu augue ut. Adipiscing tristique risus nec feugiat in.</p>\r\n\r\n<p>Adipiscing vitae proin sagittis, nisl rhoncus mattis rhoncus. Sit amet, dictum sit amet justo donec enim. Placerat duis ultricies lacus sed turpis. Eu tincidunt tortor aliquam nulla facilisi cras fermentum, odio. Egestas sed sed risus pretium. Gravida cum sociis natoque penatibus et magnis dis. Molestie nunc, non blandit massa enim nec. Diam ut venenatis tellus in metus. Non arcu risus, quis varius. Arcu cursus euismod quis viverra nibh cras. Pretium viverra suspendisse potenti nullam ac tortor vitae. Suspendisse potenti nullam ac tortor vitae. Tristique sollicitudin nibh sit amet.</p>'),(24,'fa fa-car','Testing Compendium Section 06','D',15,'1','','','<p>Morbi tristique senectus et netus et malesuada fames ac. Vel quam elementum pulvinar etiam non. Id diam maecenas ultricies mi eget mauris pharetra. Egestas quis ipsum suspendisse ultrices gravida. Amet, dictum sit amet justo donec enim diam. Leo in vitae turpis massa. Cras fermentum, odio eu feugiat. Etiam erat velit, scelerisque in dictum non. In hendrerit gravida rutrum quisque non tellus orci, ac. Eget gravida cum sociis natoque. Duis ultricies lacus sed turpis tincidunt id aliquet. Neque ornare aenean euismod elementum. Ultricies leo integer malesuada nunc. Vitae sapien pellentesque habitant morbi tristique senectus. Sit amet purus gravida quis. Aliquam sem fringilla ut morbi tincidunt augue interdum.</p>\r\n\r\n<p>Elit duis tristique sollicitudin nibh sit amet commodo. Volutpat blandit aliquam etiam erat velit. Congue nisi, vitae suscipit tellus mauris a. Facilisis leo, vel fringilla est ullamcorper. Amet est placerat in egestas erat. Etiam tempor, orci eu lobortis elementum. Nunc, sed blandit libero volutpat sed cras ornare arcu. Aenean euismod elementum nisi, quis eleifend. Amet est placerat in egestas erat imperdiet. At varius vel, pharetra vel. Vitae tortor condimentum lacinia quis vel. Eleifend quam adipiscing vitae proin sagittis. Tortor condimentum lacinia quis vel eros.</p>'),(25,'fa fa-car','Testing Compendium Section 10','D',17,'1','','','<p>Commodo sed egestas egestas fringilla phasellus faucibus scelerisque. Integer vitae justo eget magna fermentum iaculis eu non. In nulla posuere sollicitudin aliquam ultrices sagittis. Vulputate eu scelerisque felis imperdiet proin fermentum. Auctor augue mauris augue neque, gravida in. Lectus sit amet est placerat in. Scelerisque mauris pellentesque pulvinar pellentesque habitant morbi. Leo, vel fringilla est ullamcorper eget nulla facilisi etiam. Et molestie ac, feugiat sed lectus. Ac turpis egestas integer eget aliquet nibh praesent. Nisl nisi, scelerisque eu ultrices vitae. Tortor condimentum lacinia quis vel eros. Sagittis vitae et leo duis ut diam quam.</p>\r\n\r\n<p>Suspendisse potenti nullam ac tortor vitae purus faucibus ornare. Libero justo, laoreet sit amet cursus sit amet. Sed risus pretium quam vulputate dignissim. In pellentesque massa placerat duis ultricies lacus sed. Elementum integer enim neque, volutpat. Pharetra vel turpis nunc eget lorem dolor, sed viverra. Nisi, quis eleifend quam adipiscing vitae proin sagittis, nisl. Ut etiam sit amet nisl purus, in. Morbi leo urna, molestie at elementum eu, facilisis sed. Ut placerat orci nulla pellentesque dignissim enim. At augue eget arcu dictum varius duis. Nulla facilisi etiam dignissim diam. Eu lobortis elementum, nibh tellus molestie nunc, non. Dignissim cras tincidunt lobortis feugiat vivamus at augue. Viverra justo, nec ultrices dui sapien eget mi proin. Sed faucibus turpis in eu mi bibendum neque egestas. Blandit aliquam etiam erat velit, scelerisque. Enim neque, volutpat ac tincidunt. Et, sollicitudin ac orci phasellus egestas tellus rutrum.</p>'),(26,'fa fa-car','Test M','D',25,'','','',''),(27,'fa fa-car','Testing Compendium Section 07','D',16,'1','','','<p>Convallis convallis tellus, id interdum velit laoreet id. Dolor sit amet, consectetur adipiscing. Facilisis magna etiam tempor, orci eu lobortis elementum. Tincidunt augue interdum velit euismod in pellentesque. Turpis nunc eget lorem dolor. Adipiscing diam donec adipiscing tristique. Ridiculus mus mauris vitae ultricies leo integer. Nisl nunc mi ipsum, faucibus. Quis viverra nibh cras pulvinar. Aenean vel elit scelerisque mauris.</p>\r\n\r\n<p>Ultrices tincidunt arcu, non sodales neque sodales. Tristique sollicitudin nibh sit amet commodo. Ullamcorper morbi tincidunt ornare massa, eget egestas purus viverra. Neque ornare aenean euismod elementum nisi. Amet, dictum sit amet justo donec enim. Odio ut sem nulla pharetra diam sit. Amet commodo nulla facilisi nullam. Velit egestas dui, id ornare arcu odio. Non diam phasellus vestibulum lorem sed risus ultricies tristique. Auctor augue mauris augue neque, gravida.</p>'),(28,'fa fa-plane','Testing Compendium Section 08','D',18,'1','','','<p>Pellentesque diam volutpat commodo sed. Potenti nullam ac tortor vitae purus. Sit amet commodo nulla facilisi nullam vehicula ipsum a. Neque, volutpat ac tincidunt vitae. Rhoncus dolor purus non enim praesent. Tristique sollicitudin nibh sit amet commodo nulla. Ornare arcu dui vivamus arcu felis, bibendum ut tristique. Scelerisque viverra mauris, in aliquam. Mi in nulla posuere sollicitudin. Amet purus gravida quis blandit.</p>\r\n\r\n<p>Massa placerat duis ultricies lacus sed turpis tincidunt id. Ullamcorper malesuada proin libero nunc, consequat interdum varius. Phasellus egestas tellus rutrum tellus pellentesque eu. Diam quis enim lobortis scelerisque fermentum. Auctor urna nunc id cursus. Iaculis nunc sed augue lacus, viverra. Viverra nibh cras pulvinar mattis nunc, sed blandit. Vel facilisis volutpat, est velit egestas. Eget aliquet nibh praesent tristique magna sit. Cras fermentum, odio eu feugiat pretium, nibh ipsum. Amet cursus sit amet, dictum.</p>');
/*!40000 ALTER TABLE `compendium_section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `content_column`
--

DROP TABLE IF EXISTS `content_column`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `content_column` (
  `content` mediumtext NOT NULL,
  `css_class` varchar(255) NOT NULL,
  `span` int(11) NOT NULL,
  `rank` int(11) NOT NULL,
  `content_row_id` int(11) NOT NULL,
  KEY `content_row_id` (`content_row_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content_column`
--

LOCK TABLES `content_column` WRITE;
/*!40000 ALTER TABLE `content_column` DISABLE KEYS */;
INSERT INTO `content_column` VALUES ('<p>Column 1</p>','col-xs-12',0,1,196),('<p>Column 1</p>','col-xs-12 col-sm-6 col-md-4',0,1,197),('<p>Column 2</p>','col-xs-12 col-sm-6 col-md-4',0,2,197),('<p>Column 3</p>','col-xs-12 col-sm-6 col-md-4',0,3,197),('<p>Column 1</p>','col-xs-12',0,1,304),('<p>Column 1</p>','col-xs-12 col-sm-6 col-md-6',0,1,305),('<p>Column 2</p>','col-xs-12 col-sm-6 col-md-6',0,2,305),('<p>Column 1</p>','col-xs-12 col-sm-6 col-md-4',0,1,306),('<p>Column 2</p>','col-xs-12 col-sm-6 col-md-4',0,2,306),('<p>Column 3</p>','col-xs-12 col-sm-6 col-md-4',0,3,306),('','col-xs-12 col-sm-6 col-md-3',0,1,307),('<p>Column 2</p>','col-xs-12 col-sm-6 col-md-3',0,2,307),('<p>Column 3</p>','col-xs-12 col-sm-6 col-md-3',0,3,307),('<p>Column 4</p>','col-xs-12 col-sm-6 col-md-3',0,4,307),('<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis dapibus arcu, nec consectetur urna imperdiet a. Quisque quis sagittis libero, a pulvinar justo. Aliquam euismod eleifend nibh id mollis. Sed placerat bibendum faucibus. Sed eu pharetra risus. Vestibulum quis enim quis odio congue iaculis eget sed lacus. Etiam fermentum ullamcorper elit eget porttitor. Donec pretium magna rhoncus ante aliquam tincidunt eu at neque.&nbsp;</p>','col-xs-12',0,1,630),('<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis dapibus arcu, nec consectetur urna imperdiet a. Quisque quis sagittis libero, a pulvinar justo. Aliquam euismod eleifend nibh id mollis. Sed placerat bibendum faucibus. Sed eu pharetra risus. Vestibulum quis enim quis odio congue iaculis eget sed lacus. Etiam fermentum ullamcorper elit eget porttitor. Donec pretium magna rhoncus ante aliquam tincidunt eu at neque.&nbsp;</p>','col-xs-12',0,1,631),('<p>Alpine Lodge &amp; Retreat</p>\r\n\r\n<p>1 Mountain View Lane<br />\r\nThe Rocky Mountains<br />\r\nColarado<br />\r\nUnited States</p>\r\n\r\n<p>Phone: +1 234 5678<br />\r\nEmail: stay@alpinelodge.com</p>','col-xs-12',0,1,638),('','col-xs-12',0,1,639),('<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis dapibus arcu, nec consectetur urna imperdiet a. Quisque quis sagittis libero, a pulvinar justo. Aliquam euismod eleifend nibh id mollis. Sed placerat bibendum faucibus. Sed eu pharetra risus. Vestibulum quis enim quis odio congue iaculis eget sed lacus. Etiam fermentum ullamcorper elit eget porttitor. Donec pretium magna rhoncus ante aliquam tincidunt eu at neque.&nbsp;</p>','col-xs-12',0,1,688),('<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis dapibus arcu, nec consectetur urna imperdiet a. Quisque quis sagittis libero, a pulvinar justo. Aliquam euismod eleifend nibh id mollis. Sed placerat bibendum faucibus. Sed eu pharetra risus. Vestibulum quis enim quis odio congue iaculis eget sed lacus. Etiam fermentum ullamcorper elit eget porttitor. Donec pretium magna rhoncus ante aliquam tincidunt eu at neque.&nbsp;</p>','col-xs-12',0,1,689),('<h1 style=\"text-align: center;\">Meet Your Host</h1>','col-xs-12',0,1,690),('<p style=\"text-align: center;\"><img alt=\"\" src=\"/library/man-old-fisherman-portrait-53159.jpg\" style=\"width: 632px; height: 420px;\" /></p>','col-xs-12',0,1,692),('<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <strong>John Smith</strong></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis dapibus arcu, nec consectetur urna</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; imperdiet a. Quisque quis sagittis libero, a pulvinar justo. Aliquam euismod eleifend nibh id mollis.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;Sed placerat bibendum faucibus. Sed eu pharetra risus.&nbsp;</p>','col-xs-12',0,1,693),('<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis dapibus arcu, nec consectetur urna imperdiet a. Quisque quis sagittis libero, a pulvinar justo. Aliquam euismod eleifend nibh id mollis. Sed placerat bibendum faucibus. Sed eu pharetra risus. Vestibulum quis enim quis odio congue iaculis eget sed lacus. Etiam fermentum ullamcorper elit eget porttitor. Donec pretium magna rhoncus ante aliquam tincidunt eu at neque.&nbsp;</p>','col-xs-12',0,1,856),('<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis dapibus arcu, nec consectetur urna imperdiet a. Quisque quis sagittis libero, a pulvinar justo. Aliquam euismod eleifend nibh id mollis. Sed placerat bibendum faucibus. Sed eu pharetra risus. Vestibulum quis enim quis odio congue iaculis eget sed lacus. Etiam fermentum ullamcorper elit eget porttitor. Donec pretium magna rhoncus ante aliquam tincidunt eu at neque.&nbsp;</p>','col-xs-12',0,1,857),('<p style=\"text-align: center;\"><a class=\"btn btn-white-ghost\" href=\"https://alpine.netzone.nz/about-us\" title=\"About Us\">About Us</a></p>','col-xs-12',0,1,858),('<p>Column 1</p>','col-xs-12',0,1,859),('<p>&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;</p>\r\n\r\n<p>&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;</p>','col-xs-12',0,1,903),('<p>&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;</p>\r\n\r\n<p>&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n\r\n<p>Maecenas pharetra convallis posuere morbi leo. Mauris pharetra et ultrices neque ornare aenean euismod. A scelerisque purus semper eget. Nisi, scelerisque eu ultrices vitae, auctor e</p>\r\n\r\n<p>click here to <a href=\"http://alpine.netzone.nz/contact\">contact us</a></p>\r\n\r\n<p>&nbsp;</p>','col-xs-12',0,1,909),('<div data-oembed-url=\"https://www.youtube.com/watch?v=ScMzIvxBSi4\">\r\n<div style=\"max-width:320px;margin:auto;\"><!-- You\'re using demo endpoint of Iframely API commercially. Max-width is limited to 320px. Please get your own API key at https://iframely.com. -->\r\n<div style=\"left: 0; width: 100%; height: 0; position: relative; padding-bottom: 56.2493%;\"><iframe allowfullscreen=\"\" scrolling=\"no\" src=\"https://www.youtube.com/embed/ScMzIvxBSi4?rel=0&amp;showinfo=0\" style=\"border: 0; top: 0; left: 0; width: 100%; height: 100%; position: absolute;\" tabindex=\"-1\"></iframe></div>\r\n</div>\r\n</div>\r\n\r\n<p>&nbsp;</p>','col-xs-12',0,1,910);
/*!40000 ALTER TABLE `content_column` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `content_row`
--

DROP TABLE IF EXISTS `content_row`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `content_row` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rank` int(11) NOT NULL,
  `page_meta_data_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `page_meta_data_id` (`page_meta_data_id`)
) ENGINE=InnoDB AUTO_INCREMENT=911 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content_row`
--

LOCK TABLES `content_row` WRITE;
/*!40000 ALTER TABLE `content_row` DISABLE KEYS */;
INSERT INTO `content_row` VALUES (196,3,34),(197,4,34),(304,1,35),(305,2,35),(306,3,35),(307,4,35),(628,1,4),(629,2,4),(630,3,4),(631,4,4),(638,1,8),(639,1,11),(688,1,5),(689,2,5),(690,3,5),(691,4,5),(692,5,5),(693,6,5),(736,1,13),(737,2,13),(738,1,17),(739,2,17),(855,1,22),(856,2,22),(857,3,22),(858,4,22),(859,1,40),(901,1,2),(902,2,2),(903,3,2),(907,1,1),(908,2,1),(909,3,1),(910,1,9);
/*!40000 ALTER TABLE `content_row` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currency`
--

DROP TABLE IF EXISTS `currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `currency_text` varchar(20) NOT NULL,
  `currency_symbol` varchar(20) NOT NULL,
  `rank` int(11) NOT NULL,
  `icon` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currency`
--

LOCK TABLES `currency` WRITE;
/*!40000 ALTER TABLE `currency` DISABLE KEYS */;
INSERT INTO `currency` VALUES (1,'NZD','New Zealand Dollar ( NZD - $ )','NZD','&#36;',1,'fa fa-dollar'),(2,'USD','The United States Dollar ( USD - $ )','USD','&#36;',2,'fa fa-dollar'),(3,'EUR','Euro Dollar ( EUR - &#8364; )','EUR','&#8364;',4,'fa fa-euro'),(4,'AUD','Australian Dollar ( AUD - $ )','AUD','&#36;',3,'fa fa-dollar');
/*!40000 ALTER TABLE `currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enquiry`
--

DROP TABLE IF EXISTS `enquiry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enquiry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `contact_number` varchar(100) DEFAULT NULL,
  `comments` mediumtext,
  `status` enum('A','H','D') NOT NULL DEFAULT 'H',
  `date_of_enquiry` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip_address` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enquiry`
--

LOCK TABLES `enquiry` WRITE;
/*!40000 ALTER TABLE `enquiry` DISABLE KEYS */;
INSERT INTO `enquiry` VALUES (1,'asd','asd','asd@qq.com','123','123','A','2018-01-08 10:05:14','114.23.241.67');
/*!40000 ALTER TABLE `enquiry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form`
--

DROP TABLE IF EXISTS `form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `public_token` varchar(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email_subject` varchar(255) DEFAULT NULL,
  `success_message` text,
  `mailchimp_list_id` varchar(255) NOT NULL,
  `terms_and_conditions` text,
  `xml_data` longtext,
  `json_data` text CHARACTER SET utf8 NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_updated` datetime DEFAULT NULL,
  `date_deleted` datetime DEFAULT NULL,
  `status` enum('A','H','D') NOT NULL DEFAULT 'H',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form`
--

LOCK TABLES `form` WRITE;
/*!40000 ALTER TABLE `form` DISABLE KEYS */;
INSERT INTO `form` VALUES (3,'e75e1fe2fa','Form 1','Aenean non imperdiet erat, at iaculis tellus','Proin eget accumsan odio, nec consequat eros. Quisque ultrices hendrerit dui. Pellentesque sed mi at augue accumsan mattis. Curabitur ac neque ligula. Duis consectetur lorem a lorem tincidunt pharetra. Etiam a pretium augue, dignissim volutpat justo. Phasellus vel scelerisque odio, et eleifend massa.','','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas ornare interdum mauris, id cursus leo cursus eget. Morbi elementum ipsum at lectus suscipit sagittis. Donec aliquam eu metus a maximus. Donec euismod vel justo quis iaculis. Phasellus a pharetra sem. Curabitur blandit mollis dolor nec egestas. Ut ac urna ac nunc consequat commodo nec eu urna. Ut faucibus velit nec orci feugiat, in pharetra ipsum tempor. Vivamus eget venenatis diam. Sed ullamcorper sapien sit amet consequat convallis. Cras lacus lorem, posuere id nisl sed, molestie facilisis odio.</p>\r\n\r\n<p>Proin eget accumsan odio, nec consequat eros. Quisque ultrices hendrerit dui. Pellentesque sed mi at augue accumsan mattis. Curabitur ac neque ligula. Duis consectetur lorem a lorem tincidunt pharetra. Etiam a pretium augue, dignissim volutpat justo. Phasellus vel scelerisque odio, et eleifend massa.</p>\r\n\r\n<p>Etiam ac purus porta erat euismod volutpat. Etiam fringilla sem in mi lobortis mollis. Vivamus mi augue, tristique at tempus eu, facilisis eleifend odio. Vestibulum aliquet, nunc id dapibus auctor, enim neque imperdiet magna, ac mollis justo odio id enim. Vivamus nec dolor lobortis, lacinia massa ut, blandit lorem. Ut nec tristique lectus. Vivamus eget maximus justo, sed interdum lectus. Vestibulum faucibus felis nec ipsum rutrum malesuada. Nullam a lectus at lorem mattis pharetra. Maecenas blandit finibus mauris, sed pretium augue eleifend sed. Fusce tempus sagittis justo, vel malesuada magna.</p>','<form-template>\n	<fields>\n		<field type=\"text\" required=\"true\" label=\"First Name\" description=\"Your first name\" class=\"form-control\" name=\"first-name\" subtype=\"text\"></field>\n		<field type=\"text\" label=\"Text Field\" class=\"form-control\" name=\"text-1516846607674\" subtype=\"text\"></field>\n		<field type=\"text\" required=\"true\" label=\"Last Name\" description=\"Your last name\" class=\"form-control\" name=\"last-name\" subtype=\"text\"></field>\n		<field type=\"text\" required=\"true\" label=\"Email Address\" description=\"Your email address\" class=\"form-control\" name=\"email-address\" subtype=\"text\"></field>\n		<field type=\"checkbox-group\" required=\"true\" label=\"Checkbox Group\" name=\"checkbox-group-1516918871143\">\n			<option label=\"Option 1\" value=\"Option 1\" selected=\"true\">Option 1</option>\n			<option label=\"Option 2\" value=\"Option 2\">Option 2</option>\n		</field>\n		<field type=\"header\" subtype=\"h2\" label=\"Additional Information\" class=\"form-heading\"></field>\n		<field type=\"date\" required=\"true\" label=\"Arrival Date\" class=\"form-control\" name=\"date-1516672514853\"></field>\n		<field type=\"date\" required=\"true\" label=\"Departure Date\" class=\"form-control\" name=\"date-1516672543816\"></field>\n		<field type=\"select\" label=\"Select Tour Extra\" class=\"form-control\" name=\"select-1516672557027\">\n			<option label=\"Option 1\" value=\"option-1\" selected=\"true\">Option 1</option>\n			<option label=\"Option 2\" value=\"option-2\">Option 2</option>\n			<option label=\"Option 3\" value=\"option-3\">Option 3</option>\n		</field>\n		<field type=\"checkbox-group\" label=\"Proin eget accumsan odio\" toggle=\"true\" name=\"checkbox-group-1516672812218\">\n			<option label=\"Yes, Proin eget accumsan\" value=\"yes\" selected=\"true\">Yes, Proin eget accumsan</option>\n		</field>\n		<field type=\"textarea\" required=\"true\" label=\"Comments\" class=\"form-control\" name=\"textarea-1516672862845\"></field>\n	</fields>\n</form-template>','[{\"type\":\"text\",\"required\":true,\"label\":\"First Name\",\"description\":\"Your first name\",\"className\":\"form-control\",\"name\":\"first-name\",\"subtype\":\"text\"},{\"type\":\"text\",\"label\":\"Text Field\",\"className\":\"form-control\",\"name\":\"text-1516846607674\",\"subtype\":\"text\"},{\"type\":\"text\",\"required\":true,\"label\":\"Last Name\",\"description\":\"Your last name\",\"className\":\"form-control\",\"name\":\"last-name\",\"subtype\":\"text\"},{\"type\":\"text\",\"required\":true,\"label\":\"Email Address\",\"description\":\"Your email address\",\"className\":\"form-control\",\"name\":\"email-address\",\"subtype\":\"text\"},{\"type\":\"checkbox-group\",\"required\":true,\"label\":\"Checkbox Group\",\"name\":\"checkbox-group-1516918871143\",\"values\":[{\"label\":\"Option 1\",\"value\":\"Option 1\",\"selected\":true},{\"label\":\"Option 2\",\"value\":\"Option 2\"}]},{\"type\":\"header\",\"subtype\":\"h2\",\"label\":\"Additional Information\",\"className\":\"form-heading\"},{\"type\":\"date\",\"required\":true,\"label\":\"Arrival Date\",\"className\":\"form-control\",\"name\":\"date-1516672514853\"},{\"type\":\"date\",\"required\":true,\"label\":\"Departure Date\",\"className\":\"form-control\",\"name\":\"date-1516672543816\"},{\"type\":\"select\",\"label\":\"Select Tour Extra\",\"className\":\"form-control\",\"name\":\"select-1516672557027\",\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\",\"selected\":true},{\"label\":\"Option 2\",\"value\":\"option-2\"},{\"label\":\"Option 3\",\"value\":\"option-3\"}]},{\"type\":\"checkbox-group\",\"label\":\"Proin eget accumsan odio\",\"toggle\":true,\"name\":\"checkbox-group-1516672812218\",\"values\":[{\"label\":\"Yes, Proin eget accumsan\",\"value\":\"yes\",\"selected\":true}]},{\"type\":\"textarea\",\"required\":true,\"label\":\"Comments\",\"className\":\"form-control\",\"name\":\"textarea-1516672862845\"}]','2018-01-23 01:43:32','2018-01-25 22:21:36',NULL,'A'),(4,'be976d07f2','Form 2','Testing Email Subject','Success! Aenean non imperdiet erat, at iaculis tellus','06224f3593','<p>Lorem&nbsp;ipsum&nbsp;dolor sit&nbsp;amet,&nbsp;consectetur&nbsp;adipiscing elit. Maecenas ornare&nbsp;interdum&nbsp;mauris, id&nbsp;cursus&nbsp;leo&nbsp;cursus&nbsp;eget.&nbsp;Morbi&nbsp;elementum&nbsp;ipsum&nbsp;at lectus suscipit sagittis.&nbsp;Donec&nbsp;aliquam&nbsp;eu metus a maximus.&nbsp;Donec&nbsp;euismod vel justo quis iaculis. Phasellus a&nbsp;pharetra&nbsp;sem. Curabitur blandit mollis dolor nec egestas. Ut ac urna ac nunc consequat&nbsp;commodo&nbsp;nec eu urna. Ut&nbsp;faucibus&nbsp;velit&nbsp;nec&nbsp;orci&nbsp;feugiat, in&nbsp;pharetra&nbsp;ipsum&nbsp;tempor. Vivamus&nbsp;eget&nbsp;venenatis diam. Sed&nbsp;ullamcorper&nbsp;sapien&nbsp;sit&nbsp;amet&nbsp;consequat&nbsp;convallis.&nbsp;Cras&nbsp;lacus&nbsp;lorem,&nbsp;posuere&nbsp;id&nbsp;nisl&nbsp;sed,&nbsp;molestie&nbsp;facilisis&nbsp;odio.</p>\r\n\r\n<p>Proin&nbsp;eget&nbsp;accumsan&nbsp;odio, nec consequat&nbsp;eros.&nbsp;Quisque&nbsp;ultrices&nbsp;hendrerit&nbsp;dui.&nbsp;Pellentesque&nbsp;sed&nbsp;mi at&nbsp;augue&nbsp;accumsan&nbsp;mattis. Curabitur ac&nbsp;neque&nbsp;ligula.&nbsp;Duis&nbsp;consectetur&nbsp;lorem&nbsp;a&nbsp;lorem&nbsp;tincidunt&nbsp;pharetra.&nbsp;Etiam&nbsp;a&nbsp;pretium&nbsp;augue,&nbsp;dignissim&nbsp;volutpat&nbsp;justo. Phasellus vel&nbsp;scelerisque&nbsp;odio, et&nbsp;eleifend&nbsp;massa.</p>\r\n\r\n<p>Etiam&nbsp;ac purus&nbsp;porta&nbsp;erat&nbsp;euismod&nbsp;volutpat.&nbsp;Etiam&nbsp;fringilla&nbsp;sem in mi&nbsp;lobortis&nbsp;mollis. Vivamus mi&nbsp;augue,&nbsp;tristique&nbsp;at&nbsp;tempus&nbsp;eu,&nbsp;facilisis&nbsp;eleifend&nbsp;odio.&nbsp;Vestibulum&nbsp;aliquet, nunc id&nbsp;dapibus&nbsp;auctor,&nbsp;enim&nbsp;neque&nbsp;imperdiet&nbsp;magna, ac mollis justo&nbsp;odio&nbsp;id&nbsp;enim. Vivamus nec dolor&nbsp;lobortis,&nbsp;lacinia&nbsp;massa&nbsp;ut, blandit&nbsp;lorem. Ut nec&nbsp;tristique&nbsp;lectus. Vivamus&nbsp;eget&nbsp;maximus justo,&nbsp;sed&nbsp;interdum&nbsp;lectus.&nbsp;Vestibulum&nbsp;faucibus&nbsp;felis&nbsp;nec&nbsp;ipsum&nbsp;rutrum&nbsp;malesuada.&nbsp;Nullam&nbsp;a lectus at&nbsp;lorem&nbsp;mattis&nbsp;pharetra. Maecenas blandit&nbsp;finibus&nbsp;mauris,&nbsp;sed&nbsp;pretium&nbsp;augue&nbsp;eleifend&nbsp;sed.&nbsp;Fusce&nbsp;tempus&nbsp;sagittis justo, vel&nbsp;malesuada&nbsp;magna.</p>','<form-template>\n	<fields>\n		<field type=\"text\" required=\"true\" label=\"First Name\" description=\"Your first name\" class=\"form-control\" name=\"first-name\" subtype=\"text\"></field>\n		<field type=\"text\" required=\"true\" label=\"Last Name\" description=\"Your last name\" class=\"form-control\" name=\"last-name\" subtype=\"text\"></field>\n		<field type=\"text\" required=\"true\" label=\"Email Address\" description=\"Your email address\" class=\"form-control\" name=\"email-address\" subtype=\"text\"></field>\n		<field type=\"text\" required=\"true\" label=\"Text Field\" class=\"form-control\" name=\"text-1516928480296\" subtype=\"text\"></field>\n		<field type=\"textarea\" required=\"true\" label=\"Text Area\" class=\"form-control\" name=\"textarea-1516928481403\"></field>\n		<field type=\"select\" required=\"true\" label=\"Select\" class=\"form-control\" name=\"select-1516928482534\">\n			<option label=\"Option 1\" value=\"option-1\" selected=\"true\">Option 1</option>\n			<option label=\"Option 2\" value=\"option-2\">Option 2</option>\n			<option label=\"Option 3\" value=\"option-3\">Option 3</option>\n		</field>\n		<field type=\"radio-group\" required=\"true\" label=\"Radio Group\" name=\"radio-group-1516928483984\">\n			<option label=\"Option 1\" value=\"option-1\">Option 1</option>\n			<option label=\"Option 2\" value=\"option-2\">Option 2</option>\n			<option label=\"Option 3\" value=\"option-3\">Option 3</option>\n		</field>\n		<field type=\"checkbox-group\" required=\"true\" label=\"Checkbox Group\" name=\"checkbox-group-1516928486172\">\n			<option label=\"Option 1\" value=\"option-1\">Option 1</option>\n			<option label=\"Option 2\" value=\"Option 2\">Option 2</option>\n			<option label=\"Option 3\" value=\"Option 3\">Option 3</option>\n		</field>\n		<field type=\"checkbox-group\" required=\"true\" label=\"Checkbox Group\" toggle=\"true\" name=\"checkbox-group-1517443694599\">\n			<option label=\"Option 1\" value=\"option-1\">Option 1</option>\n			<option label=\"Option 2\" value=\"Option 2\">Option 2</option>\n		</field>\n		<field type=\"date\" required=\"true\" label=\"Date Field\" class=\"form-control\" name=\"date-1516928488190\"></field>\n		<field type=\"header\" subtype=\"h2\" label=\"Header\"></field>\n	</fields>\n</form-template>','[{\"type\":\"text\",\"required\":true,\"label\":\"First Name\",\"description\":\"Your first name\",\"className\":\"form-control\",\"name\":\"first-name\",\"subtype\":\"text\"},{\"type\":\"text\",\"required\":true,\"label\":\"Last Name\",\"description\":\"Your last name\",\"className\":\"form-control\",\"name\":\"last-name\",\"subtype\":\"text\"},{\"type\":\"text\",\"required\":true,\"label\":\"Email Address\",\"description\":\"Your email address\",\"className\":\"form-control\",\"name\":\"email-address\",\"subtype\":\"text\"},{\"type\":\"text\",\"required\":true,\"label\":\"Text Field\",\"className\":\"form-control\",\"name\":\"text-1516928480296\",\"subtype\":\"text\"},{\"type\":\"textarea\",\"required\":true,\"label\":\"Text Area\",\"className\":\"form-control\",\"name\":\"textarea-1516928481403\"},{\"type\":\"select\",\"required\":true,\"label\":\"Select\",\"className\":\"form-control\",\"name\":\"select-1516928482534\",\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\",\"selected\":true},{\"label\":\"Option 2\",\"value\":\"option-2\"},{\"label\":\"Option 3\",\"value\":\"option-3\"}]},{\"type\":\"radio-group\",\"required\":true,\"label\":\"Radio Group\",\"name\":\"radio-group-1516928483984\",\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\"},{\"label\":\"Option 2\",\"value\":\"option-2\"},{\"label\":\"Option 3\",\"value\":\"option-3\"}]},{\"type\":\"checkbox-group\",\"required\":true,\"label\":\"Checkbox Group\",\"name\":\"checkbox-group-1516928486172\",\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\"},{\"label\":\"Option 2\",\"value\":\"Option 2\"},{\"label\":\"Option 3\",\"value\":\"Option 3\"}]},{\"type\":\"checkbox-group\",\"required\":true,\"label\":\"Checkbox Group\",\"toggle\":true,\"name\":\"checkbox-group-1517443694599\",\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\"},{\"label\":\"Option 2\",\"value\":\"Option 2\"}]},{\"type\":\"date\",\"required\":true,\"label\":\"Date Field\",\"className\":\"form-control\",\"name\":\"date-1516928488190\"},{\"type\":\"header\",\"subtype\":\"h2\",\"label\":\"Header\"}]','2018-01-26 00:58:16','2018-02-01 00:08:35',NULL,'A'),(5,'6741375167','Form 3','','','','','<form-template>\n	<fields>\n		<field class=\"form-control\" description=\"Your first name\" type=\"text\" required=\"true\" name=\"first-name\" subtype=\"text\" label=\"First Name\"></field>\n		<field class=\"form-control\" description=\"Your last name\" type=\"text\" required=\"true\" name=\"last-name\" subtype=\"text\" label=\"Last Name\"></field>\n		<field class=\"form-control\" description=\"Your email address\" type=\"text\" required=\"true\" name=\"email-address\" subtype=\"text\" label=\"Email Address\"></field>\n		<field class=\"form-control\" type=\"text\" required=\"true\" name=\"text-1516930889348\" subtype=\"text\" label=\"Text Field\"></field>\n		<field class=\"form-control\" type=\"textarea\" required=\"true\" name=\"textarea-1516930890364\" label=\"Text Area\"></field>\n		<field class=\"form-control\" type=\"select\" required=\"true\" name=\"select-1516930891729\" label=\"Select\">\n			<option selected=\"true\" value=\"option-1\" label=\"Option 1\">Option 1</option>\n			<option value=\"option-2\" label=\"Option 2\">Option 2</option>\n			<option value=\"option-3\" label=\"Option 3\">Option 3</option>\n		</field>\n		<field type=\"radio-group\" required=\"true\" name=\"radio-group-1516930892811\" label=\"Radio Group\">\n			<option value=\"option-1\" label=\"Option 1\">Option 1</option>\n			<option value=\"option-2\" label=\"Option 2\">Option 2</option>\n			<option value=\"option-3\" label=\"Option 3\">Option 3</option>\n		</field>\n		<field type=\"checkbox-group\" required=\"true\" name=\"checkbox-group-1516930895412\" label=\"Checkbox Group\">\n			<option selected=\"true\" value=\"option-1\" label=\"Option 1\">Option 1</option>\n		</field>\n		<field class=\"form-control\" type=\"date\" required=\"true\" name=\"date-1516930904254\" label=\"Date Field\"></field>\n		<field type=\"header\" subtype=\"h2\" label=\"Header\"></field>\n	</fields>\n</form-template>','[{\"type\":\"text\",\"required\":true,\"label\":\"First Name\",\"description\":\"Your first name\",\"className\":\"form-control\",\"name\":\"first-name\",\"subtype\":\"text\"},{\"type\":\"text\",\"required\":true,\"label\":\"Last Name\",\"description\":\"Your last name\",\"className\":\"form-control\",\"name\":\"last-name\",\"subtype\":\"text\"},{\"type\":\"text\",\"required\":true,\"label\":\"Email Address\",\"description\":\"Your email address\",\"className\":\"form-control\",\"name\":\"email-address\",\"subtype\":\"text\"},{\"type\":\"text\",\"required\":true,\"label\":\"Text Field\",\"className\":\"form-control\",\"name\":\"text-1516930889348\",\"subtype\":\"text\"},{\"type\":\"textarea\",\"required\":true,\"label\":\"Text Area\",\"className\":\"form-control\",\"name\":\"textarea-1516930890364\"},{\"type\":\"select\",\"required\":true,\"label\":\"Select\",\"className\":\"form-control\",\"name\":\"select-1516930891729\",\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\",\"selected\":true},{\"label\":\"Option 2\",\"value\":\"option-2\"},{\"label\":\"Option 3\",\"value\":\"option-3\"}]},{\"type\":\"radio-group\",\"required\":true,\"label\":\"Radio Group\",\"name\":\"radio-group-1516930892811\",\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\"},{\"label\":\"Option 2\",\"value\":\"option-2\"},{\"label\":\"Option 3\",\"value\":\"option-3\"}]},{\"type\":\"checkbox-group\",\"required\":true,\"label\":\"Checkbox Group\",\"name\":\"checkbox-group-1516930895412\",\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\",\"selected\":true}]},{\"type\":\"date\",\"required\":true,\"label\":\"Date Field\",\"className\":\"form-control\",\"name\":\"date-1516930904254\"},{\"type\":\"header\",\"subtype\":\"h2\",\"label\":\"Header\"}]','2018-01-26 01:41:25','2018-01-26 01:42:14',NULL,'A'),(6,'d56b6398da','Form 4','','','','','<form-template>\n	<fields>\n		<field type=\"text\" required=\"true\" label=\"First Name\" description=\"Your first name\" class=\"form-control\" name=\"first-name\" subtype=\"text\"></field>\n		<field type=\"text\" required=\"true\" label=\"First Name\" description=\"Your first name\" class=\"form-control\" name=\"text-1516931658825\" subtype=\"text\"></field>\n		<field type=\"text\" required=\"true\" label=\"Last Name\" description=\"Your last name\" class=\"form-control\" name=\"last-name\" subtype=\"text\"></field>\n		<field type=\"text\" required=\"true\" label=\"Last Name\" description=\"Your last name\" class=\"form-control\" name=\"text-1516931658289\" subtype=\"text\"></field>\n		<field type=\"text\" required=\"true\" label=\"Email Address\" description=\"Your email address\" class=\"form-control\" name=\"email-address\" subtype=\"text\"></field>\n		<field type=\"text\" required=\"true\" label=\"Email Address\" description=\"Your email address\" class=\"form-control\" name=\"text-1516931657706\" subtype=\"text\"></field>\n		<field type=\"text\" required=\"true\" label=\"Text Field\" class=\"form-control\" name=\"text-1516931608861\" subtype=\"text\"></field>\n		<field type=\"text\" required=\"true\" label=\"Text Field\" class=\"form-control\" name=\"text-1516931655977\" subtype=\"text\"></field>\n		<field type=\"textarea\" required=\"true\" label=\"Text Area\" class=\"form-control\" name=\"textarea-1516931610056\"></field>\n		<field type=\"textarea\" required=\"true\" label=\"Text Area\" class=\"form-control\" name=\"textarea-1516931652921\"></field>\n		<field type=\"select\" required=\"true\" label=\"Select\" class=\"form-control\" name=\"select-1516931611477\">\n			<option label=\"Option 1\" value=\"option-1\">Option 1</option>\n			<option label=\"Option 2\" value=\"option-2\">Option 2</option>\n			<option label=\"Option 3\" value=\"option-3\">Option 3</option>\n		</field>\n		<field type=\"select\" required=\"true\" label=\"Select\" class=\"form-control\" name=\"select-1516931650560\">\n			<option label=\"Option 1\" value=\"option-1\" selected=\"true\">Option 1</option>\n			<option label=\"Option 2\" value=\"option-2\">Option 2</option>\n			<option label=\"Option 3\" value=\"option-3\">Option 3</option>\n		</field>\n		<field type=\"radio-group\" required=\"true\" label=\"Radio Group\" name=\"radio-group-1516931613674\">\n			<option label=\"Option 1\" value=\"option-1\">Option 1</option>\n			<option label=\"Option 2\" value=\"option-2\">Option 2</option>\n			<option label=\"Option 3\" value=\"option-3\">Option 3</option>\n		</field>\n		<field type=\"radio-group\" required=\"true\" label=\"Radio Group\" name=\"radio-group-1516931648361\">\n			<option label=\"Option 1\" value=\"option-1\">Option 1</option>\n			<option label=\"Option 2\" value=\"option-2\">Option 2</option>\n			<option label=\"Option 3\" value=\"option-3\">Option 3</option>\n		</field>\n		<field type=\"checkbox-group\" required=\"true\" label=\"Checkbox Group\" name=\"checkbox-group-1516931616918\">\n			<option label=\"Option 1\" value=\"option-1\" selected=\"true\">Option 1</option>\n		</field>\n		<field type=\"checkbox-group\" required=\"true\" label=\"Checkbox Group\" name=\"checkbox-group-1516931646779\">\n			<option label=\"Option 1\" value=\"option-1\" selected=\"true\">Option 1</option>\n		</field>\n		<field type=\"date\" required=\"true\" label=\"Date Field\" class=\"form-control\" name=\"date-1516931620620\"></field>\n		<field type=\"date\" required=\"true\" label=\"Date Field\" class=\"form-control\" name=\"date-1516931645104\"></field>\n		<field type=\"header\" subtype=\"h2\" label=\"Header\"></field>\n		<field type=\"header\" subtype=\"h2\" label=\"Header\"></field>\n	</fields>\n</form-template>','[{\"type\":\"text\",\"required\":true,\"label\":\"First Name\",\"description\":\"Your first name\",\"className\":\"form-control\",\"name\":\"first-name\",\"subtype\":\"text\"},{\"type\":\"text\",\"required\":true,\"label\":\"First Name\",\"description\":\"Your first name\",\"className\":\"form-control\",\"name\":\"text-1516931658825\",\"subtype\":\"text\"},{\"type\":\"text\",\"required\":true,\"label\":\"Last Name\",\"description\":\"Your last name\",\"className\":\"form-control\",\"name\":\"last-name\",\"subtype\":\"text\"},{\"type\":\"text\",\"required\":true,\"label\":\"Last Name\",\"description\":\"Your last name\",\"className\":\"form-control\",\"name\":\"text-1516931658289\",\"subtype\":\"text\"},{\"type\":\"text\",\"required\":true,\"label\":\"Email Address\",\"description\":\"Your email address\",\"className\":\"form-control\",\"name\":\"email-address\",\"subtype\":\"text\"},{\"type\":\"text\",\"required\":true,\"label\":\"Email Address\",\"description\":\"Your email address\",\"className\":\"form-control\",\"name\":\"text-1516931657706\",\"subtype\":\"text\"},{\"type\":\"text\",\"required\":true,\"label\":\"Text Field\",\"className\":\"form-control\",\"name\":\"text-1516931608861\",\"subtype\":\"text\"},{\"type\":\"text\",\"required\":true,\"label\":\"Text Field\",\"className\":\"form-control\",\"name\":\"text-1516931655977\",\"subtype\":\"text\"},{\"type\":\"textarea\",\"required\":true,\"label\":\"Text Area\",\"className\":\"form-control\",\"name\":\"textarea-1516931610056\"},{\"type\":\"textarea\",\"required\":true,\"label\":\"Text Area\",\"className\":\"form-control\",\"name\":\"textarea-1516931652921\"},{\"type\":\"select\",\"required\":true,\"label\":\"Select\",\"className\":\"form-control\",\"name\":\"select-1516931611477\",\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\"},{\"label\":\"Option 2\",\"value\":\"option-2\"},{\"label\":\"Option 3\",\"value\":\"option-3\"}]},{\"type\":\"select\",\"required\":true,\"label\":\"Select\",\"className\":\"form-control\",\"name\":\"select-1516931650560\",\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\",\"selected\":true},{\"label\":\"Option 2\",\"value\":\"option-2\"},{\"label\":\"Option 3\",\"value\":\"option-3\"}]},{\"type\":\"radio-group\",\"required\":true,\"label\":\"Radio Group\",\"name\":\"radio-group-1516931613674\",\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\"},{\"label\":\"Option 2\",\"value\":\"option-2\"},{\"label\":\"Option 3\",\"value\":\"option-3\"}]},{\"type\":\"radio-group\",\"required\":true,\"label\":\"Radio Group\",\"name\":\"radio-group-1516931648361\",\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\"},{\"label\":\"Option 2\",\"value\":\"option-2\"},{\"label\":\"Option 3\",\"value\":\"option-3\"}]},{\"type\":\"checkbox-group\",\"required\":true,\"label\":\"Checkbox Group\",\"name\":\"checkbox-group-1516931616918\",\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\",\"selected\":true}]},{\"type\":\"checkbox-group\",\"required\":true,\"label\":\"Checkbox Group\",\"name\":\"checkbox-group-1516931646779\",\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\",\"selected\":true}]},{\"type\":\"date\",\"required\":true,\"label\":\"Date Field\",\"className\":\"form-control\",\"name\":\"date-1516931620620\"},{\"type\":\"date\",\"required\":true,\"label\":\"Date Field\",\"className\":\"form-control\",\"name\":\"date-1516931645104\"},{\"type\":\"header\",\"subtype\":\"h2\",\"label\":\"Header\"},{\"type\":\"header\",\"subtype\":\"h2\",\"label\":\"Header\"}]','2018-01-26 01:53:27','2018-01-26 01:54:28',NULL,'A'),(7,'0499043477','Form 5','','','','','<form-template>\n	<fields>\n		<field type=\"text\" required=\"true\" label=\"First Name\" description=\"Your first name\" class=\"form-control\" name=\"first-name\" subtype=\"text\"></field>\n		<field type=\"text\" required=\"true\" label=\"First Name\" description=\"Your first name\" class=\"form-control\" name=\"text-1516933306163\" subtype=\"text\"></field>\n		<field type=\"text\" required=\"true\" label=\"Last Name\" description=\"Your last name\" class=\"form-control\" name=\"last-name\" subtype=\"text\"></field>\n		<field type=\"text\" required=\"true\" label=\"Last Name\" description=\"Your last name\" class=\"form-control\" name=\"text-1516933308337\" subtype=\"text\"></field>\n		<field type=\"text\" required=\"true\" label=\"Email Address\" description=\"Your email address\" class=\"form-control\" name=\"email-address\" subtype=\"text\"></field>\n		<field type=\"text\" required=\"true\" label=\"Email Address\" description=\"Your email address\" class=\"form-control\" name=\"text-1516933310419\" subtype=\"text\"></field>\n		<field type=\"text\" required=\"true\" label=\"Text Field\" class=\"form-control\" name=\"text-1516933234305\" subtype=\"text\"></field>\n		<field type=\"text\" required=\"true\" label=\"Text Field\" class=\"form-control\" name=\"text-1516933318111\" subtype=\"text\"></field>\n		<field type=\"textarea\" required=\"true\" label=\"Text Area\" class=\"form-control\" name=\"textarea-1516933237652\"></field>\n		<field type=\"textarea\" required=\"true\" label=\"Text Area\" class=\"form-control\" name=\"textarea-1516933322383\"></field>\n		<field type=\"select\" required=\"true\" label=\"Select\" class=\"form-control\" name=\"select-1516933241607\">\n			<option label=\"Option 1\" value=\"option-1\">Option 1</option>\n			<option label=\"Option 2\" value=\"option-2\">Option 2</option>\n			<option label=\"Option 3\" value=\"option-3\">Option 3</option>\n		</field>\n		<field type=\"select\" required=\"true\" label=\"Select\" class=\"form-control\" name=\"select-1516933325849\">\n			<option label=\"Option 1\" value=\"option-1\" selected=\"true\">Option 1</option>\n			<option label=\"Option 2\" value=\"option-2\">Option 2</option>\n			<option label=\"Option 3\" value=\"option-3\">Option 3</option>\n		</field>\n		<field type=\"radio-group\" required=\"true\" label=\"Radio Group\" name=\"radio-group-1516933245472\">\n			<option label=\"Option 1\" value=\"option-1\">Option 1</option>\n			<option label=\"Option 2\" value=\"option-2\">Option 2</option>\n			<option label=\"Option 3\" value=\"option-3\">Option 3</option>\n		</field>\n		<field type=\"radio-group\" required=\"true\" label=\"Radio Group\" name=\"radio-group-1516933330537\">\n			<option label=\"Option 1\" value=\"option-1\">Option 1</option>\n			<option label=\"Option 2\" value=\"option-2\">Option 2</option>\n			<option label=\"Option 3\" value=\"option-3\">Option 3</option>\n		</field>\n		<field type=\"checkbox-group\" required=\"true\" label=\"Checkbox Group\" name=\"checkbox-group-1516933254385\">\n			<option label=\"Option 1\" value=\"option-1\" selected=\"true\">Option 1</option>\n		</field>\n		<field type=\"checkbox-group\" required=\"true\" label=\"Checkbox Group\" name=\"checkbox-group-1516933334364\">\n			<option label=\"Option 1\" value=\"option-1\" selected=\"true\">Option 1</option>\n		</field>\n		<field type=\"date\" required=\"true\" label=\"Date Field\" class=\"form-control\" name=\"date-1516933262515\"></field>\n		<field type=\"date\" required=\"true\" label=\"Date Field\" class=\"form-control\" name=\"date-1516933337860\"></field>\n		<field type=\"header\" subtype=\"h2\" label=\"Header\"></field>\n		<field type=\"header\" subtype=\"h2\" label=\"Header\"></field>\n	</fields>\n</form-template>','[{\"type\":\"text\",\"required\":true,\"label\":\"First Name\",\"description\":\"Your first name\",\"className\":\"form-control\",\"name\":\"first-name\",\"subtype\":\"text\"},{\"type\":\"text\",\"required\":true,\"label\":\"First Name\",\"description\":\"Your first name\",\"className\":\"form-control\",\"name\":\"text-1516933306163\",\"subtype\":\"text\"},{\"type\":\"text\",\"required\":true,\"label\":\"Last Name\",\"description\":\"Your last name\",\"className\":\"form-control\",\"name\":\"last-name\",\"subtype\":\"text\"},{\"type\":\"text\",\"required\":true,\"label\":\"Last Name\",\"description\":\"Your last name\",\"className\":\"form-control\",\"name\":\"text-1516933308337\",\"subtype\":\"text\"},{\"type\":\"text\",\"required\":true,\"label\":\"Email Address\",\"description\":\"Your email address\",\"className\":\"form-control\",\"name\":\"email-address\",\"subtype\":\"text\"},{\"type\":\"text\",\"required\":true,\"label\":\"Email Address\",\"description\":\"Your email address\",\"className\":\"form-control\",\"name\":\"text-1516933310419\",\"subtype\":\"text\"},{\"type\":\"text\",\"required\":true,\"label\":\"Text Field\",\"className\":\"form-control\",\"name\":\"text-1516933234305\",\"subtype\":\"text\"},{\"type\":\"text\",\"required\":true,\"label\":\"Text Field\",\"className\":\"form-control\",\"name\":\"text-1516933318111\",\"subtype\":\"text\"},{\"type\":\"textarea\",\"required\":true,\"label\":\"Text Area\",\"className\":\"form-control\",\"name\":\"textarea-1516933237652\"},{\"type\":\"textarea\",\"required\":true,\"label\":\"Text Area\",\"className\":\"form-control\",\"name\":\"textarea-1516933322383\"},{\"type\":\"select\",\"required\":true,\"label\":\"Select\",\"className\":\"form-control\",\"name\":\"select-1516933241607\",\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\"},{\"label\":\"Option 2\",\"value\":\"option-2\"},{\"label\":\"Option 3\",\"value\":\"option-3\"}]},{\"type\":\"select\",\"required\":true,\"label\":\"Select\",\"className\":\"form-control\",\"name\":\"select-1516933325849\",\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\",\"selected\":true},{\"label\":\"Option 2\",\"value\":\"option-2\"},{\"label\":\"Option 3\",\"value\":\"option-3\"}]},{\"type\":\"radio-group\",\"required\":true,\"label\":\"Radio Group\",\"name\":\"radio-group-1516933245472\",\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\"},{\"label\":\"Option 2\",\"value\":\"option-2\"},{\"label\":\"Option 3\",\"value\":\"option-3\"}]},{\"type\":\"radio-group\",\"required\":true,\"label\":\"Radio Group\",\"name\":\"radio-group-1516933330537\",\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\"},{\"label\":\"Option 2\",\"value\":\"option-2\"},{\"label\":\"Option 3\",\"value\":\"option-3\"}]},{\"type\":\"checkbox-group\",\"required\":true,\"label\":\"Checkbox Group\",\"name\":\"checkbox-group-1516933254385\",\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\",\"selected\":true}]},{\"type\":\"checkbox-group\",\"required\":true,\"label\":\"Checkbox Group\",\"name\":\"checkbox-group-1516933334364\",\"values\":[{\"label\":\"Option 1\",\"value\":\"option-1\",\"selected\":true}]},{\"type\":\"date\",\"required\":true,\"label\":\"Date Field\",\"className\":\"form-control\",\"name\":\"date-1516933262515\"},{\"type\":\"date\",\"required\":true,\"label\":\"Date Field\",\"className\":\"form-control\",\"name\":\"date-1516933337860\"},{\"type\":\"header\",\"subtype\":\"h2\",\"label\":\"Header\"},{\"type\":\"header\",\"subtype\":\"h2\",\"label\":\"Header\"}]','2018-01-26 02:20:25','2018-01-26 02:22:52',NULL,'A'),(8,'023bfd8d0d','Wedding','','','','','<form-template>\n	<fields>\n		<field type=\"text\" required=\"true\" label=\"First Name\" description=\"Your first name\" class=\"form-control\" name=\"first-name\" subtype=\"text\"></field>\n		<field type=\"text\" required=\"true\" label=\"Last Name\" description=\"Your last name\" class=\"form-control\" name=\"last-name\" subtype=\"text\"></field>\n		<field type=\"text\" required=\"true\" label=\"Email Address\" description=\"Your email address\" class=\"form-control\" name=\"email-address\" subtype=\"text\"></field>\n		<field type=\"text\" required=\"true\" label=\"Phone number\" class=\"form-control\" name=\"text-1519678388575\" subtype=\"text\"></field>\n	</fields>\n</form-template>','[{\"type\":\"text\",\"required\":true,\"label\":\"First Name\",\"description\":\"Your first name\",\"className\":\"form-control\",\"name\":\"first-name\",\"subtype\":\"text\"},{\"type\":\"text\",\"required\":true,\"label\":\"Last Name\",\"description\":\"Your last name\",\"className\":\"form-control\",\"name\":\"last-name\",\"subtype\":\"text\"},{\"type\":\"text\",\"required\":true,\"label\":\"Email Address\",\"description\":\"Your email address\",\"className\":\"form-control\",\"name\":\"email-address\",\"subtype\":\"text\"},{\"type\":\"text\",\"required\":true,\"label\":\"Phone number\",\"className\":\"form-control\",\"name\":\"text-1519678388575\",\"subtype\":\"text\"}]','2018-02-26 20:52:58','2018-02-26 20:53:50',NULL,'A');
/*!40000 ALTER TABLE `form` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_entry`
--

DROP TABLE IF EXISTS `form_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_entry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `ip_address` varchar(50) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `form_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_entry`
--

LOCK TABLES `form_entry` WRITE;
/*!40000 ALTER TABLE `form_entry` DISABLE KEYS */;
INSERT INTO `form_entry` VALUES (1,'Pinal','Desai','Pinal Desai','pinal.j.desai@gmail.com','114.23.241.67','2018-01-23 02:02:22',3),(2,'Pinal','Desai','Pinal Desai','pinal.j.desai@gmail.com','114.23.241.67','2018-01-23 02:03:59',3),(3,'Testing','Test','Testing Test','alan@tomahawk.co.nz','114.23.241.67','2018-01-30 02:49:24',3),(4,'alpine','alpine','alpine alpine','alan@tomahawk.co.nz','114.23.241.67','2018-01-31 21:04:51',3),(5,'alpine','test','alpine test','alan@tomahawk.co.nz','114.23.241.67','2018-02-01 00:09:47',4),(6,'alpine','Test','alpine Test','alan@tomahawk.co.nz','114.23.241.67','2018-02-01 00:19:50',4);
/*!40000 ALTER TABLE `form_entry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_entry_data`
--

DROP TABLE IF EXISTS `form_entry_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_entry_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `value` text,
  `form_id` int(11) NOT NULL,
  `form_entry_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_entry_data`
--

LOCK TABLES `form_entry_data` WRITE;
/*!40000 ALTER TABLE `form_entry_data` DISABLE KEYS */;
INSERT INTO `form_entry_data` VALUES (1,'First Name','Pinal',3,1),(2,'Last Name','Desai',3,1),(3,'Email Address','pinal.j.desai@gmail.com',3,1),(4,'Additional Information','',3,1),(5,'Arrival Date','24/01/2018',3,1),(6,'Departure Date','26/01/2018',3,1),(7,'Select Tour Extra','option-2',3,1),(8,'Proin eget accumsan odio','',3,1),(9,'Comments','This is a Test',3,1),(10,'First Name','Pinal',3,2),(11,'Last Name','Desai',3,2),(12,'Email Address','pinal.j.desai@gmail.com',3,2),(13,'Additional Information','',3,2),(14,'Arrival Date','27/01/2018',3,2),(15,'Departure Date','31/01/2018',3,2),(16,'Select Tour Extra','option-3',3,2),(17,'Proin eget accumsan odio','yes',3,2),(18,'Comments','TEST',3,2),(19,'First Name','Testing',3,3),(20,'Text Field','Test',3,3),(21,'Last Name','Test',3,3),(22,'Email Address','alan@tomahawk.co.nz',3,3),(23,'Checkbox Group','Option 2',3,3),(24,'Additional Information','',3,3),(25,'Arrival Date','01/02/2018',3,3),(26,'Departure Date','02/02/2018',3,3),(27,'Select Tour Extra','option-1',3,3),(28,'Proin eget accumsan odio','yes',3,3),(29,'Comments','test',3,3),(30,'First Name','alpine',3,4),(31,'Text Field','test',3,4),(32,'Last Name','alpine',3,4),(33,'Email Address','alan@tomahawk.co.nz',3,4),(34,'Checkbox Group','Option 1, ',3,4),(35,'Additional Information','',3,4),(36,'Arrival Date','01/03/2018',3,4),(37,'Departure Date','02/03/2018',3,4),(38,'Select Tour Extra','option-1',3,4),(39,'Proin eget accumsan odio','yes, ',3,4),(40,'Comments','alpine test',3,4),(41,'First Name','alpine',4,5),(42,'Last Name','test',4,5),(43,'Email Address','alan@tomahawk.co.nz',4,5),(44,'Text Field','alpine test',4,5),(45,'Text Area','alpine test',4,5),(46,'Select','option-1',4,5),(47,'Radio Group','option-1, ',4,5),(48,'Checkbox Group','option-1, ',4,5),(49,'Checkbox Group','option-1, ',4,5),(50,'Date Field','02/02/2018',4,5),(51,'Header','',4,5),(52,'First Name','alpine',4,6),(53,'Last Name','Test',4,6),(54,'Email Address','alan@tomahawk.co.nz',4,6),(55,'Text Field','alpine test',4,6),(56,'Text Area','alpine test',4,6),(57,'Select','option-1',4,6),(58,'Radio Group','option-1, ',4,6),(59,'Checkbox Group','option-1, ',4,6),(60,'Checkbox Group','option-1, ',4,6),(61,'Date Field','01/02/2018',4,6),(62,'Header','',4,6);
/*!40000 ALTER TABLE `form_entry_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_field`
--

DROP TABLE IF EXISTS `form_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_field` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `placeholder` varchar(255) DEFAULT NULL,
  `default_value` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `is_required` enum('N','Y') NOT NULL DEFAULT 'N',
  `is_multiple` enum('Y','N') DEFAULT 'N',
  `is_toggle` enum('Y','N') NOT NULL DEFAULT 'N',
  `class` varchar(255) DEFAULT NULL,
  `help_text` varchar(255) DEFAULT NULL,
  `subtype` varchar(255) DEFAULT NULL,
  `options_json` text,
  `rank` int(11) NOT NULL,
  `form_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=228 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_field`
--

LOCK TABLES `form_field` WRITE;
/*!40000 ALTER TABLE `form_field` DISABLE KEYS */;
INSERT INTO `form_field` VALUES (126,'First Name','first-name',NULL,NULL,'text','Y','N','N','form-control','Your first name','text','[]',1,3),(127,'Text Field','text-1516846607674',NULL,NULL,'text','N','N','N','form-control',NULL,'text','[]',2,3),(128,'Last Name','last-name',NULL,NULL,'text','Y','N','N','form-control','Your last name','text','[]',3,3),(129,'Email Address','email-address',NULL,NULL,'text','Y','N','N','form-control','Your email address','text','[]',4,3),(130,'Checkbox Group','checkbox-group-1516918871143',NULL,NULL,'checkbox-group','Y','N','N',NULL,NULL,NULL,'[{\"label\":\"Option 1\",\"value\":\"Option 1\"},{\"label\":\"Option 2\",\"value\":\"Option 2\"}]',5,3),(131,'Additional Information',NULL,NULL,NULL,'header','N','N','N','form-heading',NULL,'h2','[]',6,3),(132,'Arrival Date','date-1516672514853',NULL,NULL,'date','Y','N','N','form-control',NULL,NULL,'[]',7,3),(133,'Departure Date','date-1516672543816',NULL,NULL,'date','Y','N','N','form-control',NULL,NULL,'[]',8,3),(134,'Select Tour Extra','select-1516672557027',NULL,NULL,'select','N','N','N','form-control',NULL,NULL,'[{\"label\":\"Option 1\",\"value\":\"option-1\"},{\"label\":\"Option 2\",\"value\":\"option-2\"},{\"label\":\"Option 3\",\"value\":\"option-3\"}]',9,3),(135,'Proin eget accumsan odio','checkbox-group-1516672812218',NULL,NULL,'checkbox-group','N','N','Y',NULL,NULL,NULL,'[{\"label\":\"Yes, Proin eget accumsan\",\"value\":\"yes\"}]',10,3),(136,'Comments','textarea-1516672862845',NULL,NULL,'textarea','Y','N','N','form-control',NULL,NULL,'[]',11,3),(153,'First Name','first-name',NULL,NULL,'text','Y','N','N','form-control','Your first name','text','[]',1,5),(154,'Last Name','last-name',NULL,NULL,'text','Y','N','N','form-control','Your last name','text','[]',2,5),(155,'Email Address','email-address',NULL,NULL,'text','Y','N','N','form-control','Your email address','text','[]',3,5),(156,'Text Field','text-1516930889348',NULL,NULL,'text','Y','N','N','form-control',NULL,'text','[]',4,5),(157,'Text Area','textarea-1516930890364',NULL,NULL,'textarea','Y','N','N','form-control',NULL,NULL,'[]',5,5),(158,'Select','select-1516930891729',NULL,NULL,'select','Y','N','N','form-control',NULL,NULL,'[{\"value\":\"option-1\",\"label\":\"Option 1\"},{\"value\":\"option-2\",\"label\":\"Option 2\"},{\"value\":\"option-3\",\"label\":\"Option 3\"}]',6,5),(159,'Radio Group','radio-group-1516930892811',NULL,NULL,'radio-group','Y','N','N',NULL,NULL,NULL,'[{\"value\":\"option-1\",\"label\":\"Option 1\"},{\"value\":\"option-2\",\"label\":\"Option 2\"},{\"value\":\"option-3\",\"label\":\"Option 3\"}]',7,5),(160,'Checkbox Group','checkbox-group-1516930895412',NULL,NULL,'checkbox-group','Y','N','N',NULL,NULL,NULL,'[{\"value\":\"option-1\",\"label\":\"Option 1\"}]',8,5),(161,'Date Field','date-1516930904254',NULL,NULL,'date','Y','N','N','form-control',NULL,NULL,'[]',9,5),(162,'Header',NULL,NULL,NULL,'header','N','N','N',NULL,NULL,'h2','[]',10,5),(163,'First Name','first-name',NULL,NULL,'text','Y','N','N','form-control','Your first name','text','[]',1,6),(164,'First Name','text-1516931658825',NULL,NULL,'text','Y','N','N','form-control','Your first name','text','[]',2,6),(165,'Last Name','last-name',NULL,NULL,'text','Y','N','N','form-control','Your last name','text','[]',3,6),(166,'Last Name','text-1516931658289',NULL,NULL,'text','Y','N','N','form-control','Your last name','text','[]',4,6),(167,'Email Address','email-address',NULL,NULL,'text','Y','N','N','form-control','Your email address','text','[]',5,6),(168,'Email Address','text-1516931657706',NULL,NULL,'text','Y','N','N','form-control','Your email address','text','[]',6,6),(169,'Text Field','text-1516931608861',NULL,NULL,'text','Y','N','N','form-control',NULL,'text','[]',7,6),(170,'Text Field','text-1516931655977',NULL,NULL,'text','Y','N','N','form-control',NULL,'text','[]',8,6),(171,'Text Area','textarea-1516931610056',NULL,NULL,'textarea','Y','N','N','form-control',NULL,NULL,'[]',9,6),(172,'Text Area','textarea-1516931652921',NULL,NULL,'textarea','Y','N','N','form-control',NULL,NULL,'[]',10,6),(173,'Select','select-1516931611477',NULL,NULL,'select','Y','N','N','form-control',NULL,NULL,'[{\"label\":\"Option 1\",\"value\":\"option-1\"},{\"label\":\"Option 2\",\"value\":\"option-2\"},{\"label\":\"Option 3\",\"value\":\"option-3\"}]',11,6),(174,'Select','select-1516931650560',NULL,NULL,'select','Y','N','N','form-control',NULL,NULL,'[{\"label\":\"Option 1\",\"value\":\"option-1\"},{\"label\":\"Option 2\",\"value\":\"option-2\"},{\"label\":\"Option 3\",\"value\":\"option-3\"}]',12,6),(175,'Radio Group','radio-group-1516931613674',NULL,NULL,'radio-group','Y','N','N',NULL,NULL,NULL,'[{\"label\":\"Option 1\",\"value\":\"option-1\"},{\"label\":\"Option 2\",\"value\":\"option-2\"},{\"label\":\"Option 3\",\"value\":\"option-3\"}]',13,6),(176,'Radio Group','radio-group-1516931648361',NULL,NULL,'radio-group','Y','N','N',NULL,NULL,NULL,'[{\"label\":\"Option 1\",\"value\":\"option-1\"},{\"label\":\"Option 2\",\"value\":\"option-2\"},{\"label\":\"Option 3\",\"value\":\"option-3\"}]',14,6),(177,'Checkbox Group','checkbox-group-1516931616918',NULL,NULL,'checkbox-group','Y','N','N',NULL,NULL,NULL,'[{\"label\":\"Option 1\",\"value\":\"option-1\"}]',15,6),(178,'Checkbox Group','checkbox-group-1516931646779',NULL,NULL,'checkbox-group','Y','N','N',NULL,NULL,NULL,'[{\"label\":\"Option 1\",\"value\":\"option-1\"}]',16,6),(179,'Date Field','date-1516931620620',NULL,NULL,'date','Y','N','N','form-control',NULL,NULL,'[]',17,6),(180,'Date Field','date-1516931645104',NULL,NULL,'date','Y','N','N','form-control',NULL,NULL,'[]',18,6),(181,'Header',NULL,NULL,NULL,'header','N','N','N',NULL,NULL,'h2','[]',19,6),(182,'Header',NULL,NULL,NULL,'header','N','N','N',NULL,NULL,'h2','[]',20,6),(183,'First Name','first-name',NULL,NULL,'text','Y','N','N','form-control','Your first name','text','[]',1,7),(184,'First Name','text-1516933306163',NULL,NULL,'text','Y','N','N','form-control','Your first name','text','[]',2,7),(185,'Last Name','last-name',NULL,NULL,'text','Y','N','N','form-control','Your last name','text','[]',3,7),(186,'Last Name','text-1516933308337',NULL,NULL,'text','Y','N','N','form-control','Your last name','text','[]',4,7),(187,'Email Address','email-address',NULL,NULL,'text','Y','N','N','form-control','Your email address','text','[]',5,7),(188,'Email Address','text-1516933310419',NULL,NULL,'text','Y','N','N','form-control','Your email address','text','[]',6,7),(189,'Text Field','text-1516933234305',NULL,NULL,'text','Y','N','N','form-control',NULL,'text','[]',7,7),(190,'Text Field','text-1516933318111',NULL,NULL,'text','Y','N','N','form-control',NULL,'text','[]',8,7),(191,'Text Area','textarea-1516933237652',NULL,NULL,'textarea','Y','N','N','form-control',NULL,NULL,'[]',9,7),(192,'Text Area','textarea-1516933322383',NULL,NULL,'textarea','Y','N','N','form-control',NULL,NULL,'[]',10,7),(193,'Select','select-1516933241607',NULL,NULL,'select','Y','N','N','form-control',NULL,NULL,'[{\"label\":\"Option 1\",\"value\":\"option-1\"},{\"label\":\"Option 2\",\"value\":\"option-2\"},{\"label\":\"Option 3\",\"value\":\"option-3\"}]',11,7),(194,'Select','select-1516933325849',NULL,NULL,'select','Y','N','N','form-control',NULL,NULL,'[{\"label\":\"Option 1\",\"value\":\"option-1\"},{\"label\":\"Option 2\",\"value\":\"option-2\"},{\"label\":\"Option 3\",\"value\":\"option-3\"}]',12,7),(195,'Radio Group','radio-group-1516933245472',NULL,NULL,'radio-group','Y','N','N',NULL,NULL,NULL,'[{\"label\":\"Option 1\",\"value\":\"option-1\"},{\"label\":\"Option 2\",\"value\":\"option-2\"},{\"label\":\"Option 3\",\"value\":\"option-3\"}]',13,7),(196,'Radio Group','radio-group-1516933330537',NULL,NULL,'radio-group','Y','N','N',NULL,NULL,NULL,'[{\"label\":\"Option 1\",\"value\":\"option-1\"},{\"label\":\"Option 2\",\"value\":\"option-2\"},{\"label\":\"Option 3\",\"value\":\"option-3\"}]',14,7),(197,'Checkbox Group','checkbox-group-1516933254385',NULL,NULL,'checkbox-group','Y','N','N',NULL,NULL,NULL,'[{\"label\":\"Option 1\",\"value\":\"option-1\"}]',15,7),(198,'Checkbox Group','checkbox-group-1516933334364',NULL,NULL,'checkbox-group','Y','N','N',NULL,NULL,NULL,'[{\"label\":\"Option 1\",\"value\":\"option-1\"}]',16,7),(199,'Date Field','date-1516933262515',NULL,NULL,'date','Y','N','N','form-control',NULL,NULL,'[]',17,7),(200,'Date Field','date-1516933337860',NULL,NULL,'date','Y','N','N','form-control',NULL,NULL,'[]',18,7),(201,'Header',NULL,NULL,NULL,'header','N','N','N',NULL,NULL,'h2','[]',19,7),(202,'Header',NULL,NULL,NULL,'header','N','N','N',NULL,NULL,'h2','[]',20,7),(213,'First Name','first-name',NULL,NULL,'text','Y','N','N','form-control','Your first name','text','[]',1,4),(214,'Last Name','last-name',NULL,NULL,'text','Y','N','N','form-control','Your last name','text','[]',2,4),(215,'Email Address','email-address',NULL,NULL,'text','Y','N','N','form-control','Your email address','text','[]',3,4),(216,'Text Field','text-1516928480296',NULL,NULL,'text','Y','N','N','form-control',NULL,'text','[]',4,4),(217,'Text Area','textarea-1516928481403',NULL,NULL,'textarea','Y','N','N','form-control',NULL,NULL,'[]',5,4),(218,'Select','select-1516928482534',NULL,NULL,'select','Y','N','N','form-control',NULL,NULL,'[{\"label\":\"Option 1\",\"value\":\"option-1\"},{\"label\":\"Option 2\",\"value\":\"option-2\"},{\"label\":\"Option 3\",\"value\":\"option-3\"}]',6,4),(219,'Radio Group','radio-group-1516928483984',NULL,NULL,'radio-group','Y','N','N',NULL,NULL,NULL,'[{\"label\":\"Option 1\",\"value\":\"option-1\"},{\"label\":\"Option 2\",\"value\":\"option-2\"},{\"label\":\"Option 3\",\"value\":\"option-3\"}]',7,4),(220,'Checkbox Group','checkbox-group-1516928486172',NULL,NULL,'checkbox-group','Y','N','N',NULL,NULL,NULL,'[{\"label\":\"Option 1\",\"value\":\"option-1\"},{\"label\":\"Option 2\",\"value\":\"Option 2\"},{\"label\":\"Option 3\",\"value\":\"Option 3\"}]',8,4),(221,'Checkbox Group','checkbox-group-1517443694599',NULL,NULL,'checkbox-group','Y','N','Y',NULL,NULL,NULL,'[{\"label\":\"Option 1\",\"value\":\"option-1\"},{\"label\":\"Option 2\",\"value\":\"Option 2\"}]',9,4),(222,'Date Field','date-1516928488190',NULL,NULL,'date','Y','N','N','form-control',NULL,NULL,'[]',10,4),(223,'Header',NULL,NULL,NULL,'header','N','N','N',NULL,NULL,'h2','[]',11,4),(224,'First Name','first-name',NULL,NULL,'text','Y','N','N','form-control','Your first name','text','[]',1,8),(225,'Last Name','last-name',NULL,NULL,'text','Y','N','N','form-control','Your last name','text','[]',2,8),(226,'Email Address','email-address',NULL,NULL,'text','Y','N','N','form-control','Your email address','text','[]',3,8),(227,'Phone number','text-1519678388575',NULL,NULL,'text','Y','N','N','form-control',NULL,'text','[]',4,8);
/*!40000 ALTER TABLE `form_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `general_cta`
--

DROP TABLE IF EXISTS `general_cta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `general_cta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(100) NOT NULL,
  `key` varchar(100) NOT NULL,
  `content` text,
  `default_content` text NOT NULL,
  `field_type` enum('I','T','E') NOT NULL DEFAULT 'I' COMMENT '''I=Input | E=Editor | T-Textarea''',
  `rank` int(11) NOT NULL,
  `max_length` int(11) DEFAULT NULL,
  `max_info` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `general_cta`
--

LOCK TABLES `general_cta` WRITE;
/*!40000 ALTER TABLE `general_cta` DISABLE KEYS */;
INSERT INTO `general_cta` VALUES (1,'Book Now Button (Top Header)','header_booking_btn','','Book Online','I',1,19,'Key in less than 19 characters'),(2,'Availability Calendar Button','booking_availability_cta_btn','','Check Availability','I',1,24,'Key in less than 24 characters'),(3,'Testimonials CTA Button','reviews_cta_btn','','Read More Reviews','I',1,50,'Key in less than 50 characters'),(4,'Testimonials CTA Heading','reviews_cta_heading','','What our previous guests have said','I',1,70,'Key in less than 70 characters'),(5,'Blog Read More','blog_read_more_btn','','Read more','I',1,20,'Key in less than 20 characters'),(6,'Newsletter Title','newsletter_signup_title','','Sign up to receive our newsletter','I',1,60,'Key in less than 60 characters'),(7,'Newsletter Button','newsletter_signup_btn','','Sign Up','I',1,25,'Key in less than 25 characters'),(8,'Newsletter Heading','newsletter_signup_heading','','Connect with us','I',1,30,'Key in less than 30 characters'),(9,'Booking Content','booking_content','<h3 style=\"text-align: center;\">Book Direct for Guaranteed Best Rates&nbsp;</h3>\r\n\r\n<p style=\"text-align: center;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ullamcorper erat a ante interdum, et scelerisque est fringilla. Pellentesque ut eros consequat, finibus libero a, efficitur tortor. Mauris lectus urna, auctor quis ornare sit amet, ultrices ut neque. Aliquam posuere ipsum sit amet ante vestibulum feugiat. test</p>','<h1>Book Direct for Guaranteed Best Rates</h1>','E',3,NULL,NULL),(10,'Testimonials Home CTA Button','reviews_home_cta_btn','','Read Our Reviews','I',1,20,'Key in less than 20 characters'),(11,'Accommodation Details Button','Accommodation_details_btn','','Discover More','I',1,20,'Key in less than 20 characters'),(13,'Accommodation Book Now Button','ACCOMMODATION_CHECK_AVAILABILITY_BTN','','Book Now','I',1,24,'Key in less than 24 characters');
/*!40000 ALTER TABLE `general_cta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `general_importantpages`
--

DROP TABLE IF EXISTS `general_importantpages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `general_importantpages` (
  `imppage_id` int(11) NOT NULL AUTO_INCREMENT,
  `imppage_name` varchar(150) NOT NULL,
  `page_id` int(11) NOT NULL,
  `imppage_showincms` enum('N','Y') NOT NULL DEFAULT 'Y',
  `is_mobile` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`imppage_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `general_importantpages`
--

LOCK TABLES `general_importantpages` WRITE;
/*!40000 ALTER TABLE `general_importantpages` DISABLE KEYS */;
INSERT INTO `general_importantpages` VALUES (1,'Home',1,'N',0),(2,'404',11,'Y',0),(3,'Testimonial',7,'Y',0),(4,'Contact',8,'Y',0),(5,'Accommodation',2,'Y',0),(6,'Bookings',6,'Y',0),(7,'Gallery',12,'Y',0),(8,'blog',15,'Y',0),(9,'Compendium',24,'Y',0);
/*!40000 ALTER TABLE `general_importantpages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `general_pages`
--

DROP TABLE IF EXISTS `general_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `general_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary key for pages',
  `access_level` enum('P','L') NOT NULL DEFAULT 'P' COMMENT 'P = Public, L = Private',
  `meta_cache` tinyint(1) NOT NULL DEFAULT '1',
  `slideshow_type` enum('C','D') NOT NULL DEFAULT 'D',
  `parent_id` int(11) DEFAULT '0',
  `template_id` int(11) DEFAULT NULL,
  `page_meta_data_id` int(11) NOT NULL,
  `publish_on_set_time` enum('Y','N') NOT NULL DEFAULT 'N',
  `publish_on` datetime DEFAULT NULL,
  `hide_on` datetime DEFAULT NULL,
  `form_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `page_parent` (`parent_id`),
  KEY `page_meta_data_id` (`page_meta_data_id`),
  KEY `template_id` (`template_id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `general_pages`
--

LOCK TABLES `general_pages` WRITE;
/*!40000 ALTER TABLE `general_pages` DISABLE KEYS */;
INSERT INTO `general_pages` VALUES (1,'P',1,'D',0,1,1,'N','2017-11-01 05:32:54','0000-00-00 00:00:00',0),(2,'P',1,'D',0,1,2,'N','2017-11-29 20:55:57','2017-11-28 10:41:29',0),(3,'P',1,'D',0,1,3,'Y','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(4,'P',1,'D',0,1,4,'N','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(5,'P',1,'D',0,1,5,'N','0000-00-00 00:00:00','0000-00-00 00:00:00',0),(6,'P',1,'D',0,1,6,'N','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(7,'P',1,'D',5,1,7,'N','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(8,'P',1,'D',0,1,8,'N','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(9,'P',1,'D',0,1,9,'N','0000-00-00 00:00:00','0000-00-00 00:00:00',0),(10,'P',1,'D',0,1,10,'N','0000-00-00 00:00:00','0000-00-00 00:00:00',0),(11,'P',1,'D',0,1,11,'N','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(12,'P',1,'D',0,1,14,'N','0000-00-00 00:00:00','0000-00-00 00:00:00',0),(13,'P',1,'D',0,NULL,15,'Y','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(14,'P',1,'D',0,NULL,16,'Y','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(15,'P',1,'D',5,1,18,'N','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL),(16,'P',1,'D',0,1,22,'N','2017-11-28 07:44:11','2017-11-28 08:59:07',8),(17,'P',1,'D',0,1,25,'N','2017-11-28 15:53:42','2017-11-28 15:54:59',NULL),(18,'P',1,'D',0,1,33,'Y','2017-11-22 02:28:58','2017-11-22 02:28:58',NULL),(19,'P',1,'D',0,1,35,'Y','2017-11-23 11:29:20','2017-11-23 11:31:00',NULL),(20,'P',1,'D',0,NULL,37,'Y',NULL,NULL,NULL),(21,'P',1,'D',0,1,38,'Y','2017-11-27 21:39:37','2017-11-27 21:39:37',NULL),(22,'P',1,'D',0,1,38,'N','2018-01-22 22:00:02','2018-01-22 22:00:02',0),(23,'P',1,'D',0,1,39,'N','2018-01-22 22:00:57','2018-01-22 22:00:57',0),(24,'P',1,'D',0,2,41,'N','2018-02-14 21:30:08','2018-02-14 21:30:08',0),(25,'P',1,'D',0,1,42,'N','2018-02-20 22:00:13','2018-02-20 22:00:13',0),(26,'P',1,'D',0,1,44,'N','2018-02-22 23:40:31','2018-02-22 23:40:31',0),(27,'P',1,'D',0,1,45,'N','2018-02-22 23:40:47','2018-02-22 23:40:47',0);
/*!40000 ALTER TABLE `general_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `general_settings`
--

DROP TABLE IF EXISTS `general_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `general_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) DEFAULT NULL COMMENT 'Company/Business/Website name	',
  `start_year` int(4) DEFAULT NULL,
  `email_address` mediumtext COMMENT 'Email Address',
  `phone_number` varchar(100) DEFAULT NULL,
  `address` mediumtext,
  `booking_url` varchar(255) DEFAULT NULL,
  `js_code_head_close` mediumtext,
  `js_code_body_open` mediumtext,
  `js_code_body_close` mediumtext,
  `adwords_code` mediumtext,
  `mailchimp_api_key` varchar(100) DEFAULT NULL,
  `mailchimp_list_id` varchar(50) DEFAULT NULL,
  `resbook_id` varchar(100) NOT NULL,
  `resbook_version` tinyint(4) DEFAULT '12',
  `map_latitude` float(10,6) DEFAULT NULL,
  `map_longitude` float(10,6) DEFAULT NULL,
  `map_address` mediumtext,
  `map_styles` longtext,
  `map_heading` varchar(255) DEFAULT NULL,
  `map_description` mediumtext,
  `map_zoom_level` smallint(6) NOT NULL,
  `map_marker_latitude` float(10,6) NOT NULL,
  `map_marker_longitude` float(10,6) NOT NULL,
  `slideshow_speed` int(11) DEFAULT '3000',
  `set_sitemapupdated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `set_sitemapstatus` char(1) DEFAULT NULL,
  `homepage_slideshow_caption` varchar(255) DEFAULT NULL,
  `tripadvisor_widget_code` mediumtext,
  `color_palette_id` smallint(5) DEFAULT NULL,
  `company_logo_path` varchar(255) DEFAULT NULL,
  `webfont_headings` varchar(100) DEFAULT NULL,
  `webfont_text` varchar(100) DEFAULT NULL,
  `booking_engine_url` varchar(100) DEFAULT NULL,
  `mailchimp_email` varchar(255) DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `general_settings`
--

LOCK TABLES `general_settings` WRITE;
/*!40000 ALTER TABLE `general_settings` DISABLE KEYS */;
INSERT INTO `general_settings` VALUES (1,'Alpine Lodge & Retreat',0,'support@tomahawk.co.nz','+1 100 123 4567','17 Constellation Drive\r\nAuckland','','','','','','6577a17dd0a66458981c0b4126a86b45-us15','3919cd1845','5562',12,-36.746696,174.736298,'17 Constellation Dr, Rosedale, Auckland 0632, New Zealand','[{\"featureType\":\"administrative\",\"elementType\":\"geometry\",\"stylers\":[{\"color\":\"#a7a7a7\"}]},{\"featureType\":\"administrative\",\"elementType\":\"labels.text.fill\",\"stylers\":[{\"visibility\":\"on\"},{\"color\":\"#737373\"}]},{\"featureType\":\"landscape\",\"elementType\":\"geometry.fill\",\"stylers\":[{\"visibility\":\"on\"},{\"color\":\"#efefef\"}]},{\"featureType\":\"poi\",\"elementType\":\"geometry.fill\",\"stylers\":[{\"visibility\":\"on\"},{\"color\":\"#dadada\"}]},{\"featureType\":\"poi\",\"elementType\":\"labels\",\"stylers\":[{\"visibility\":\"off\"}]},{\"featureType\":\"poi\",\"elementType\":\"labels.icon\",\"stylers\":[{\"visibility\":\"off\"}]},{\"featureType\":\"road\",\"elementType\":\"labels.text.fill\",\"stylers\":[{\"color\":\"#696969\"}]},{\"featureType\":\"road\",\"elementType\":\"labels.icon\",\"stylers\":[{\"visibility\":\"off\"}]},{\"featureType\":\"road.highway\",\"elementType\":\"geometry.fill\",\"stylers\":[{\"color\":\"#ffffff\"}]},{\"featureType\":\"road.highway\",\"elementType\":\"geometry.stroke\",\"stylers\":[{\"visibility\":\"on\"},{\"color\":\"#b3b3b3\"}]},{\"featureType\":\"road.arterial\",\"elementType\":\"geometry.fill\",\"stylers\":[{\"color\":\"#ffffff\"}]},{\"featureType\":\"road.arterial\",\"elementType\":\"geometry.stroke\",\"stylers\":[{\"color\":\"#d6d6d6\"}]},{\"featureType\":\"road.local\",\"elementType\":\"geometry.fill\",\"stylers\":[{\"visibility\":\"on\"},{\"color\":\"#ffffff\"},{\"weight\":1.8}]},{\"featureType\":\"road.local\",\"elementType\":\"geometry.stroke\",\"stylers\":[{\"color\":\"#d7d7d7\"}]},{\"featureType\":\"transit\",\"elementType\":\"all\",\"stylers\":[{\"color\":\"#808080\"},{\"visibility\":\"off\"}]},{\"featureType\":\"water\",\"elementType\":\"geometry.fill\",\"stylers\":[{\"color\":\"#d3d3d3\"}]}]','','',13,-36.746696,174.736298,5,'2018-05-15 01:23:28','I','','<div id=\"TA_selfserveprop452\" class=\"TA_selfserveprop\">\r\n<ul id=\"qUFEsQADPa\" class=\"TA_links hUYXyJei\">\r\n<li id=\"w52drAvt\" class=\"g9yvErBj\">\r\n<a target=\"_blank\" href=\"https://www.tripadvisor.co.nz/\"><img src=\"https://www.tripadvisor.co.nz/img/cdsi/img2/branding/150_logo-11900-2.png\" alt=\"TripAdvisor\"/></a>\r\n</li>\r\n</ul>\r\n</div>\r\n<script src=\"https://www.jscache.com/wejs?wtype=selfserveprop&uniq=452&locationId=6925660&lang=en_NZ&rating=true&nreviews=5&writereviewlink=true&popIdx=true&iswide=false&border=true&display_version=2\"></script>',1,'/library/company-logo/alpine.png','Merriweather','Merriweather','','pinal@tomahawk.co.nz',1);
/*!40000 ALTER TABLE `general_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `installed_modules`
--

DROP TABLE IF EXISTS `installed_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `installed_modules` (
  `id` int(11) NOT NULL,
  `number` int(100) DEFAULT NULL,
  `label` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `description` longtext CHARACTER SET latin1,
  `type` enum('C','O','A') CHARACTER SET latin1 NOT NULL DEFAULT 'C',
  `status` enum('A','D','H') CHARACTER SET latin1 DEFAULT 'A',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `installed_modules`
--

LOCK TABLES `installed_modules` WRITE;
/*!40000 ALTER TABLE `installed_modules` DISABLE KEYS */;
INSERT INTO `installed_modules` VALUES (0,1,'Site Map','This is your main navigation for your website. You can have a maximum of 7 main menu links and any number of sub-menu links.','C','A'),(1,2,'General Content Pages','This is the main module you use to edit content on each page of your website.','C','A'),(2,3,'Quicklinks','These are automatically formatted image links to other pages on your website. You simply select a list of pages you want to link to and the CMS does the rest.','C','A'),(3,4,'Location Map','Your location page will include a Google map pinpointing your location.','C','A'),(4,5,'Slideshows','This module allows you to add any number of images to a gallery that can then be used as a slideshow on any of your website\'s pages.','C','A'),(5,6,'Photo Gallery','As many photo galleries can be created as you wish. These are then displayed on your main gallery page or an individual gallery can be included on any selected page.','C','A'),(6,7,'Accommodation or Activity Module - depending on Website type','This module allows you to easily setup your accommodation options and have them automatically displayed on your accommodation page','C','A'),(7,8,'Contact Page Enquiry Form','An enquiry form will sit on your contact page where visitors can send you messages by completing the form.','C','A'),(8,9,'File Manager','Using the file manager you can upload any type of document including photos, word documents, PDF file, etc. This allows you to create links on your site to these documents.','C','A'),(9,10,'Booking Button - Main navigation CTA to ResBook booking page or external link','Whether you\'re using ResBook or any other booking engine, your website will have a main booking call-to-action on every page of your website.','C','A'),(10,11,'Booking Calendar Widget - ResBook only','If you\'re using ResBook, this widget will sit on all pages of your site just below the hero slideshow.','C','A'),(11,12,'Social Media icon footer links','This module allows you to add links to the listed social media platforms and will display icons in the footer of your website.','C','A'),(12,13,'Partner logos - limited to 3 and displayed in the footer','This feature allows you to add up to 3 selected logos that will appear in your website. Contact us if you need to add more.','C','A'),(13,14,'Footer Links','When creating your website\'s site map you can specify which pages you want to have as links in the footer section of your site.','C','A'),(14,15,'Copyright Notice','The website will automatically insert a copyright notice into the footer of your website.','C','A'),(15,16,'Redirects Module','This module allows you to easily migrate from and older website to your new website by adding redirects from the old website pages to their equivalent page on your new site.','C','A'),(16,17,'Enquiries Module','This module provides access to all enquiries made through your contact page form.','C','A'),(17,18,'Sitemap Generator','This module allows you to create a site map XML file for submission to Google.','C','A'),(18,19,'Reviews','This module allows you to add as many customer reviews as you want. A randomly displayed review is displayed in your footer section.','O','A'),(19,20,'Mailchimp','','O','A');
/*!40000 ALTER TABLE `installed_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module_pages`
--

DROP TABLE IF EXISTS `module_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module_pages` (
  `modpages_id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) DEFAULT NULL,
  `modpages_rank` int(4) DEFAULT NULL,
  `mod_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`modpages_id`)
) ENGINE=MyISAM AUTO_INCREMENT=311 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module_pages`
--

LOCK TABLES `module_pages` WRITE;
/*!40000 ALTER TABLE `module_pages` DISABLE KEYS */;
INSERT INTO `module_pages` VALUES (18,1,3,4),(7,7,2,4),(255,8,2,2),(290,12,2,9),(251,4,1,6),(254,15,1,10),(275,25,2,14),(266,22,1,12),(301,16,1,3),(269,5,1,3),(177,19,1,3),(310,1,1,3);
/*!40000 ALTER TABLE `module_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module_templates`
--

DROP TABLE IF EXISTS `module_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module_templates` (
  `tmplmod_id` int(11) NOT NULL AUTO_INCREMENT,
  `tmpl_id` int(11) NOT NULL,
  `mod_id` int(11) NOT NULL,
  `tmplmod_rank` int(11) NOT NULL,
  PRIMARY KEY (`tmplmod_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module_templates`
--

LOCK TABLES `module_templates` WRITE;
/*!40000 ALTER TABLE `module_templates` DISABLE KEYS */;
INSERT INTO `module_templates` VALUES (1,1,1,20),(2,1,5,8),(3,1,4,2),(4,1,7,7),(6,1,8,6),(7,1,11,10),(8,2,13,2),(9,1,15,20);
/*!40000 ALTER TABLE `module_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modules`
--

DROP TABLE IF EXISTS `modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modules` (
  `mod_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary key for include',
  `mod_name` varchar(255) DEFAULT NULL COMMENT 'Include name',
  `mod_path` varchar(255) DEFAULT NULL COMMENT 'Include URL/file path (exclude the extension)',
  `mod_showincms` enum('N','Y') NOT NULL DEFAULT 'Y',
  `mod_mobile` varchar(1) DEFAULT NULL,
  `module_group_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`mod_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modules`
--

LOCK TABLES `modules` WRITE;
/*!40000 ALTER TABLE `modules` DISABLE KEYS */;
INSERT INTO `modules` VALUES (1,'Slideshow','slideshow','N',NULL,9),(2,'Contact','contact','Y',NULL,3),(3,'Quicklinks','quicklinks','Y',NULL,NULL),(5,'Testimonial','testimonial','N',NULL,5),(7,'Gallery Carousel','gallery_carousel','N',NULL,10),(6,'Map','map','Y',NULL,NULL),(4,'Accommodation','accommodation','N',NULL,11),(8,'Bookings','bookings','N',NULL,NULL),(9,'Gallery','gallery','Y',NULL,10),(10,'Blog','blog','Y',NULL,13),(11,'Form','form','N',NULL,6),(12,'Payments','payments','Y',NULL,12),(13,'Compendium','compendium','N',NULL,7),(14,'Sitemap','sitemap','Y',NULL,NULL),(15,'Newsletter','newsletter','Y',NULL,14);
/*!40000 ALTER TABLE `modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_has_quicklink`
--

DROP TABLE IF EXISTS `page_has_quicklink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `page_has_quicklink` (
  `page_id` int(11) NOT NULL,
  `quicklink_page_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_has_quicklink`
--

LOCK TABLES `page_has_quicklink` WRITE;
/*!40000 ALTER TABLE `page_has_quicklink` DISABLE KEYS */;
INSERT INTO `page_has_quicklink` VALUES (19,2),(19,4),(19,5),(5,2),(5,4),(16,2),(16,4),(16,12),(16,5),(2,16),(2,4),(1,2),(1,16),(1,4);
/*!40000 ALTER TABLE `page_has_quicklink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_meta_data`
--

DROP TABLE IF EXISTS `page_meta_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `page_meta_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `menu_label` varchar(255) DEFAULT NULL,
  `footer_menu` varchar(255) DEFAULT NULL,
  `heading` varchar(255) DEFAULT NULL,
  `sub_heading` varchar(255) DEFAULT NULL,
  `quicklink_heading` varchar(255) DEFAULT NULL,
  `quicklink_menu_label` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `full_url` varchar(255) DEFAULT NULL,
  `introduction` mediumtext,
  `short_description` mediumtext,
  `description` mediumtext,
  `photo` varchar(255) DEFAULT NULL,
  `thumb_photo` varchar(255) DEFAULT NULL,
  `photo_caption` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `meta_description` mediumtext,
  `og_title` varchar(255) DEFAULT NULL,
  `og_meta_description` mediumtext,
  `og_image` varchar(255) DEFAULT NULL,
  `time_based_publishing` enum('N','Y') NOT NULL DEFAULT 'N',
  `publish_on` datetime DEFAULT NULL,
  `hide_on` datetime DEFAULT NULL,
  `is_locked` tinyint(1) NOT NULL DEFAULT '0',
  `status` enum('A','H','D') DEFAULT 'H',
  `rank` int(11) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_updated` datetime DEFAULT NULL,
  `date_deleted` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `gallery_id` int(11) DEFAULT NULL,
  `slideshow_id` int(11) DEFAULT NULL,
  `page_meta_index_id` int(11) DEFAULT '1',
  `page_js_code_head_close` mediumtext,
  `page_js_code_body_open` mediumtext,
  `page_js_code_body_close` mediumtext,
  `quicklink_photo` varchar(255) DEFAULT NULL,
  `quicklink_thumb` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bsh_query_1` (`status`,`menu_label`,`heading`,`title`,`sub_heading`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_meta_data`
--

LOCK TABLES `page_meta_data` WRITE;
/*!40000 ALTER TABLE `page_meta_data` DISABLE KEYS */;
INSERT INTO `page_meta_data` VALUES (1,'Home','Home','Home','Welcome to Alpine Lodge & Retreat','','Home Page','EXPLORE','home','/','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis dapibus arcu.','test',NULL,'/library/pexels-photo-276508.jpg','/uploads/2018/04/img-5ad65fac632aa.jpg','','Alpine Lodge and Retreat','','','','','N',NULL,NULL,1,'A',1,'2016-03-17 11:10:30','2018-04-17 20:57:16',NULL,1,3,0,1,1,'','','','/library/pexels-photo.jpg','/uploads/2018/02/img-5a960fcf5cf8c.jpg'),(2,'Accommodation','Accommodation','','Lodge Accommodation Options','','Accommodation Options','View Options','accommodation','/accommodation','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis dapibus arcu.','This is a paragraph of text about acommodation options. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis dapibus arcu, nec consectetur urna imperdiet.',NULL,'/library/pexels-photo-276551.jpg','/uploads/2018/03/img-5aa89289934ea.jpg','','','','','','','N',NULL,NULL,0,'A',2,'2017-06-12 23:21:07','2018-03-14 03:10:01',NULL,1,3,0,10,1,'','','','/library/pexels-photo-279746.jpg','/uploads/2017/11/img-5a1f2a123d676.jpg'),(4,'Our Location','Our Location','','Our Location','','Our Location','Set our location','location','/location','','This is a paragraph of text about our location. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis dapibus arcu, nec consectetur urna imperdiet.',NULL,'','','','','','','','','N',NULL,NULL,0,'A',4,'2017-06-12 23:22:20','2017-12-06 01:44:47',NULL,1,3,0,0,1,'','','','/library/pexels-photo-279329.jpg','/uploads/2017/11/img-5a1dbda0eb48f.jpg'),(5,'About','About','','About Us','','About us','About Us','about-us','/about-us','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis dapibus arcu.','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec odio. Quisque volutpat mattis eros. Nullam malesuada erat ut turpis. Suspendisse urna nibh, viverra non',NULL,'/library/pexels-photo.jpg','/uploads/2018/01/img-5a7138a8923fe.jpg','','About Us','','','','','N',NULL,NULL,0,'A',6,'2017-06-12 23:22:47','2018-01-31 03:31:54',NULL,1,3,0,0,1,'','','','/library/pexels-photo-271634.jpg','/uploads/2017/11/img-5a0b9949ca3c0.jpg'),(6,'Reservations','','','Reservations','','','','reservations','/reservations','','',NULL,'','','','Bookings','','','','','N',NULL,NULL,0,'A',8,'2017-06-12 23:22:58','2017-12-06 01:45:41',NULL,1,3,0,0,1,'','','','',NULL),(7,'Reviews','Reviews','','What our customers say','','','','reviews','/about-us/reviews','','',NULL,'','','','What our customers say','','','','','N',NULL,NULL,0,'A',2,'2017-06-12 23:24:39','2017-12-06 01:45:23',NULL,1,3,0,0,1,'','','','',NULL),(8,'Contact','Contact','','Our Contact Details','','','','contact','/contact','Sub alpine retreat in St Arnaud Village, Nelson Lakes, South Island New Zealand','',NULL,'','','','Our Contact Details','','','','','N',NULL,NULL,0,'A',7,'2017-06-12 23:25:27','2017-12-06 01:45:33',NULL,1,3,0,0,1,'','','','',NULL),(9,'Privacy Policy','','Privacy Policy','Privacy Policy','','','','privacy-policy','/privacy-policy','','',NULL,'','','','Privacy Policy','','','','','N',NULL,NULL,0,'A',10,'2017-06-12 23:26:02','2018-04-19 22:20:55',NULL,1,3,0,0,1,'','','','',NULL),(10,'Terms & Conditions','','Terms & Conditions','Terms & Conditions','','','','terms-conditions','/terms-conditions','Sub alpine retreat in St Arnaud Village, Nelson Lakes, South Island New Zealand','',NULL,'','','','Terms & Conditions','','','','','N',NULL,NULL,0,'A',9,'2017-06-12 23:26:39','2018-02-22 22:38:57',NULL,1,7,0,0,1,'','','','',NULL),(11,'404 Error page','','','404 Error page','','','','404-error-page','/404-error-page','','',NULL,'','','','404 Error Page','','','','','N',NULL,NULL,0,'A',11,'2017-06-12 23:27:19','2017-12-06 01:46:07',NULL,1,3,0,0,1,'','','','',NULL),(12,'Alpine Forest Suite','alpine forest Suite',NULL,'Alpine Forest Suite',NULL,NULL,NULL,'alpine-forest-suite','/accommodation/alpine-forest-suite','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis dapibus arcu.','This is a paragraph of text about acommodation options. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis dapibus arcu, nec consectetur urna imperdiet.',NULL,'/library/pexels-photo-279746.jpg','/uploads/2017/11/img-5a1dc098afaca.jpg',NULL,'','','','','','N',NULL,NULL,0,'A',1,'2017-06-14 23:01:09','2018-03-14 21:58:28',NULL,1,3,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),(13,'Rockey Mountain Suite','Rockey Mountain Suite',NULL,'Rockey Mountain Suite',NULL,NULL,NULL,'rockey-mountain-suite','/accommodation/rockey-mountain-suite','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis dapibus arcu.','This is a paragraph of text about the lodge\'s facilities. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis dapibus arcu, nec consectetur urna imperdiet.',NULL,'/library/pexels-photo-276508.jpg','/uploads/2017/11/img-5a1dc0c120f25.jpg',NULL,'','','','','','N',NULL,NULL,0,'A',2,'2017-06-15 02:54:40','2018-02-22 03:30:55',NULL,1,3,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),(14,'Gallery','Gallery','','Photo Gallery','','Gallery','EXPLORE','gallery','/gallery','','Look at our lovely images',NULL,'','','','Photo Gallery','','','','','N',NULL,NULL,0,'A',5,'2017-06-18 23:55:47','2018-02-28 02:10:12',NULL,1,3,0,0,1,'','','','/library/par_logo_2.png','/uploads/2018/02/img-5a960f840b771.jpg'),(17,'Mountain Sunrise Suite','Mountain Sunrise Suite',NULL,'Mountain Sunrise Suite',NULL,NULL,NULL,'mountain-sunrise-suite','/accommodation/mountain-sunrise-suite','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis dapibus arcu.','This is a paragraph of text about our location. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis dapibus arcu, nec consectetur urna imperdiet.',NULL,'/library/pexels-photo-276551.jpg','/uploads/2017/11/img-5a1dc0e4a32fb.jpg',NULL,'','','','','','N',NULL,NULL,0,'A',3,'2017-09-28 20:09:12','2018-02-22 03:31:36',NULL,1,3,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),(18,'Blog','Blog','','Blog','','','','blog','/about-us/blog','','',NULL,'','','','Blog','','','','','N',NULL,NULL,0,'A',1,'2017-11-10 03:18:39','2017-12-06 01:45:13',NULL,3,3,0,0,1,'','','','',NULL),(19,'Test Blog Category','Test Blog Category',NULL,'Test Blog Category',NULL,NULL,NULL,'test-category','/category/test-category',NULL,NULL,NULL,'',NULL,NULL,'','','','','','N',NULL,NULL,0,'A',0,'2017-11-10 03:25:40','2017-11-28 03:17:52',NULL,3,3,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),(20,'Test Blog Post',NULL,NULL,'Test Blog Post',NULL,NULL,NULL,'testblogpost','/post/testblogpost',NULL,'Sed egestas, ante et vulputate volutpat, eros pede semper est, vitae luctus metus libero eu augue. Morbi purus libero, faucibus adipiscing, commodo quis, gravida id, est. Sed lectus. Praesent elementum hendrerit tortor. Sed semper lorem at felis. Vestibulum volutpat, lacus a ultrices sagittis, mi neque euismod dui, eu pulvinar nunc sapien ornare nisl. Phasellus pede arcu, dapibus eu, fermentum et, dapibus sed, urna.','<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Phasellus hendrerit. Pellentesque aliquet nibh nec urna. In nisi neque, aliquet vel, dapibus id, mattis vel, nisi. Sed pretium, ligula sollicitudin laoreet viverra, tortor libero sodales leo, eget blandit nunc tortor eu nibh. Nullam mollis. Ut justo. Suspendisse potenti.</p>\r\n\r\n<p>Sed egestas, ante et vulputate volutpat, eros pede semper est, vitae luctus metus libero eu augue. Morbi purus libero, faucibus adipiscing, commodo quis, gravida id, est. Sed lectus. Praesent elementum hendrerit tortor. Sed semper lorem at felis. Vestibulum volutpat, lacus a ultrices sagittis, mi neque euismod dui, eu pulvinar nunc sapien ornare nisl. Phasellus pede arcu, dapibus eu, fermentum et, dapibus sed, urna.</p>\r\n\r\n<p>Morbi interdum mollis sapien. Sed ac risus. Phasellus lacinia, magna a ullamcorper laoreet, lectus arcu pulvinar risus, vitae facilisis libero dolor a purus. Sed vel lacus. Mauris nibh felis, adipiscing varius, adipiscing in, lacinia vel, tellus. Suspendisse ac urna. Etiam pellentesque mauris ut lectus. Nunc tellus ante, mattis eget, gravida vitae, ultricies ac, leo. Integer leo pede, ornare a, lacinia eu, vulputate vel, nisl.</p>','/library/pexels-photo-271634.jpg','/uploads/2017/11/img-5a1cd50a6367a.jpg',NULL,'','','','','','N',NULL,NULL,0,'A',NULL,'2017-11-10 03:26:26','2017-11-28 03:16:26',NULL,3,3,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),(22,'Facilities','Facilities','','Facilities','','Lodge Facilities','Find out more','facilities','/facilities','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis dapibus arcu.','This is a paragraph of text about acommodation options. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis dapibus arcu, nec consectetur urna imperdiet.',NULL,'/library/pexels-photo.jpg','/uploads/2018/02/img-5a961289a6378.jpg','','Facilities |','','','','','N',NULL,NULL,0,'A',3,'2017-11-15 03:51:08','2018-02-28 02:23:07',NULL,3,3,12,22,1,'','','','/library/pexels-photo-261426.jpg','/uploads/2017/11/img-5a1dbe4680cc5.jpg'),(24,'test blog post 2',NULL,NULL,'test blog post 2',NULL,NULL,NULL,'2017-11-21-024028','/post/2017-11-21-024028',NULL,'test 2','','/library/cds-6647-hdr.jpg','/uploads/2017/11/img-5a1ccd3bb04ac.jpg',NULL,'','','','','','N',NULL,NULL,0,'D',NULL,'2017-11-21 02:40:28','2017-11-28 02:43:07','2017-11-28 03:16:33',3,3,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),(26,'Testing Blog Category','Testing Blog Category',NULL,'Testing Blog Category',NULL,NULL,NULL,'testing-blog-category','/category/testing-blog-category',NULL,NULL,NULL,'',NULL,NULL,'Testing Blog Category','Testing Blog Category','Testing Blog Category','Testing Blog Category','/library/pexels-photo-271634.jpg','N',NULL,NULL,0,'D',1,'2017-11-22 01:39:16','2017-11-22 01:40:23','2017-11-28 03:16:44',3,3,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),(31,'Testing Blog Post 2',NULL,NULL,'Testing Blog Post 2',NULL,NULL,NULL,'testing-blog-post-2','/post/testing-blog-post-2',NULL,'Testing Blog Post 2','<p>Sed egestas, ante et vulputate volutpat, eros pede semper est, vitae luctus metus libero eu augue. Morbi purus libero, faucibus adipiscing, commodo quis, gravida id, est. Sed lectus. Praesent elementum hendrerit tortor. Sed semper lorem at felis. Vestibulum volutpat, lacus a ultrices sagittis, mi neque euismod dui, eu pulvinar nunc sapien ornare nisl. Phasellus pede arcu, dapibus eu, fermentum et, dapibus sed, urna.</p>','/library/pexels-photo-276551.jpg','/uploads/2018/02/img-5a7282e18303c.jpg',NULL,'','','','','','N',NULL,NULL,0,'A',NULL,'2017-11-22 02:24:00','2018-02-01 03:00:49',NULL,3,3,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),(32,'Accommodation','Accommodation',NULL,'Accommodation',NULL,NULL,NULL,'accommodation','/category/accommodation',NULL,NULL,NULL,'',NULL,NULL,'','','','','','N',NULL,NULL,0,'D',NULL,'2017-11-22 02:28:06','2017-11-22 02:28:17','2017-11-22 02:32:06',3,3,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),(36,'Accommodation','Accommodation',NULL,'Accommodation',NULL,NULL,NULL,'accommodation-category','/category/accommodation-category',NULL,NULL,NULL,'',NULL,NULL,'','','','','','N',NULL,NULL,0,'D',NULL,'2017-11-23 00:59:38','2017-11-23 01:00:51','2017-11-23 02:01:14',3,3,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),(37,NULL,NULL,NULL,'Untitled post',NULL,NULL,NULL,'2018-01-19 01:07:30',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N',NULL,NULL,0,'A',0,'2018-01-19 01:07:30','2018-01-19 01:07:30',NULL,3,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),(38,'Payments','','','Payments','','','','payments','/payments','','',NULL,'','','','Payments','','','','','N',NULL,NULL,0,'D',NULL,'2018-01-22 22:00:02','2018-01-22 22:00:13','2018-01-22 22:00:54',3,3,0,0,1,'','','','',NULL),(39,'Payments','','','Payments','','','','payments','/payments','','',NULL,'','','','','','','','','N',NULL,NULL,0,'A',0,'2018-01-22 22:00:57','2018-01-22 22:01:14',NULL,3,3,0,0,1,'','','','',NULL),(40,'Test','Test',NULL,'Test',NULL,NULL,NULL,'test','/accommodation/test','agkja;glkh;ahkagf','fhdklflg;fdhs',NULL,'/library/pexels-photo.jpg','/uploads/2018/02/img-5a96131796de5.jpg',NULL,'','','','','','N',NULL,NULL,0,'H',NULL,'2018-02-01 00:21:45','2018-02-28 02:31:10',NULL,3,3,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),(41,'Compendium','','','Compendium','','','','compendium','/compendium','','',NULL,'','','','','','','','','N',NULL,NULL,0,'A',12,'2018-02-14 21:30:02','2018-02-14 21:57:09',NULL,3,3,0,0,1,'','','','',NULL),(42,'Sitemap','','Sitemap','Sitemap','','','','sitemap','/sitemap','','',NULL,'','','','','','','','','N',NULL,NULL,0,'A',13,'2018-02-20 22:00:13','2018-02-20 22:01:11',NULL,3,3,0,0,1,'','','','',NULL),(43,'Untitled',NULL,NULL,NULL,NULL,NULL,NULL,'2018-02-22 07:37:38',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'N',NULL,NULL,0,'D',NULL,'2018-02-22 07:37:38','2018-02-22 07:37:38','2018-02-22 07:37:42',3,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),(44,'test01','test01','','','','','','test01','/test01','','',NULL,'','','','','','','','','N',NULL,NULL,0,'D',600,'2018-02-22 23:40:31','2018-02-22 23:40:45','2018-02-22 23:41:11',3,3,0,0,1,'','','','',NULL),(45,'test02','test02','','','','','','test02','/test02','','',NULL,'','','','','','','','','N',NULL,NULL,0,'D',500,'2018-02-22 23:40:47','2018-02-22 23:40:55','2018-02-22 23:41:11',3,3,0,0,1,'','','','',NULL);
/*!40000 ALTER TABLE `page_meta_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_meta_index`
--

DROP TABLE IF EXISTS `page_meta_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `page_meta_index` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_meta_index`
--

LOCK TABLES `page_meta_index` WRITE;
/*!40000 ALTER TABLE `page_meta_index` DISABLE KEYS */;
INSERT INTO `page_meta_index` VALUES (1,'Index and Follow (Default)','all','Use this if you want to let search engines do their normal job.'),(2,'Do not Index or Follow','none','This is for sections of a site that shouldn\'t be indexed and shouldn\'t have links followed.'),(3,'Follow, but do not Index','noindex, follow','Search engine robots can follow any links on this page but will not include this page.'),(4,'Index but do not Follow','index, nofollow','Search engine robots should include this page but not follow any links on this page.'),(5,'Do not archive','noarchive','Useful if the content changes frequently: headlines, auctions, etc. The search engine still archives the information, but won\'t show it in the results.');
/*!40000 ALTER TABLE `page_meta_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partner_logos`
--

DROP TABLE IF EXISTS `partner_logos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `partner_logos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `logo_label` varchar(10) DEFAULT NULL,
  `url_label` varchar(100) DEFAULT NULL,
  `photo_path` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `is_active` enum('N','Y') DEFAULT 'Y',
  `rank` int(11) DEFAULT NULL,
  `alt_text` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partner_logos`
--

LOCK TABLES `partner_logos` WRITE;
/*!40000 ALTER TABLE `partner_logos` DISABLE KEYS */;
INSERT INTO `partner_logos` VALUES (1,'Logo1','Url1','','','Y',1,''),(2,'Logo2','Url2','/library/par_logo_1.png','http://www.test.com','Y',2,'Partner logo 2'),(3,'Logo3','Url3','/library/par_logo_2.png','http://www.test.com','Y',3,'Partner logo 3');
/*!40000 ALTER TABLE `partner_logos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photo`
--

DROP TABLE IF EXISTS `photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `full_path` varchar(255) DEFAULT NULL COMMENT 'URL to the slide-image relative to the public_html folder (recommended). ',
  `thumb_path` varchar(255) DEFAULT NULL,
  `caption_heading` varchar(255) DEFAULT NULL,
  `caption` longtext,
  `alt_text` varchar(255) DEFAULT NULL,
  `button_label` varchar(30) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `width` smallint(6) NOT NULL,
  `height` smallint(6) NOT NULL,
  `type` enum('N','P') NOT NULL DEFAULT 'N',
  `rank` int(11) DEFAULT NULL COMMENT 'Heirarchy/Order for the slides (lower is greater)',
  `photo_group_id` int(11) DEFAULT NULL COMMENT 'Foreign Key to the slideshow group for this slide',
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `is_group` (`photo_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=921 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photo`
--

LOCK TABLES `photo` WRITE;
/*!40000 ALTER TABLE `photo` DISABLE KEYS */;
INSERT INTO `photo` VALUES (87,'/library/cds-8794.jpg',NULL,'','','',NULL,NULL,1500,1000,'N',0,NULL,NULL),(86,'/library/cds-6824-hdr1.jpg',NULL,'','','',NULL,NULL,1500,1000,'N',0,NULL,NULL),(84,'/library/cds-6647-hdr.jpg',NULL,'','',NULL,NULL,NULL,1500,1000,'N',0,NULL,NULL),(910,'/library/pexels-photo-279329.jpg','/uploads/2018/03/img-5aa9992ec3ecc.jpg',NULL,'','',NULL,NULL,6000,4000,'N',9,14,''),(909,'/library/pexels-photo-276551.jpg','/uploads/2018/03/img-5aa9992e84738.jpg',NULL,'','',NULL,NULL,1920,1280,'N',8,14,''),(900,'/library/pexels-photo.jpg','/uploads/2018/03/img-5aa9920f7f907.jpg',NULL,'','',NULL,NULL,5374,3217,'N',9,13,''),(899,'/library/pexels-photo-534151.jpg','/uploads/2018/03/img-5aa9920eea5ea.jpg',NULL,'','',NULL,NULL,2988,1994,'N',8,13,''),(898,'/library/pexels-photo-342800.jpg','/uploads/2018/03/img-5aa9920e64134.jpg',NULL,'','',NULL,NULL,2561,2000,'N',7,13,''),(907,'/library/pexels-photo-271676.jpg','/uploads/2018/03/img-5aa9992c80929.jpg',NULL,'','',NULL,NULL,6000,4000,'N',6,14,''),(908,'/library/pexels-photo-276508.jpg','/uploads/2018/03/img-5aa9992e39f12.jpg',NULL,'','',NULL,NULL,1920,1281,'N',7,14,''),(85,'/library/cds-6647-hdr.jpg',NULL,'','','',NULL,NULL,1500,1000,'N',0,NULL,NULL),(82,'/library/cds-8764-hdr.jpg',NULL,'','',NULL,NULL,NULL,1500,1000,'N',0,NULL,NULL),(83,'/library/cds-6824-hdr1.jpg',NULL,'','',NULL,NULL,NULL,1500,1000,'N',1,NULL,NULL),(81,'/library/cds-6647-hdr.jpg',NULL,'','',NULL,NULL,NULL,1500,1000,'N',0,NULL,NULL),(80,'/library/cds-6647-hdr.jpg',NULL,'','',NULL,NULL,NULL,1500,1000,'N',0,NULL,NULL),(79,'/library/cds-8770.jpg',NULL,'','',NULL,NULL,NULL,1500,1000,'N',0,NULL,NULL),(88,'/library/cds-8794.jpg',NULL,'','','',NULL,NULL,1500,1000,'N',0,NULL,NULL),(89,'/library/cds-8794.jpg',NULL,'','','',NULL,NULL,1500,1000,'N',0,NULL,NULL),(709,'/library/pexels-photo.jpg',NULL,'','','',NULL,NULL,5374,3217,'N',3,1,NULL),(635,'/library/pexels-photo-279746.jpg',NULL,'','','',NULL,NULL,5164,3272,'N',0,10,NULL),(282,'/library/cds-6647-hdr.jpg',NULL,'','','',NULL,NULL,1500,1000,'N',0,11,NULL),(890,'/library/pexels-photo-271654.jpg','/uploads/2018/03/img-5aa991f3ea0a1.jpg',NULL,'','',NULL,NULL,7308,4555,'N',9,12,''),(889,'/library/pexels-photo-271634.jpg','/uploads/2018/03/img-5aa991f38e6b9.jpg',NULL,'','',NULL,NULL,2251,1500,'N',8,12,''),(897,'/library/pexels-photo-298007.jpg','/uploads/2018/03/img-5aa9920c83fa4.jpg',NULL,'','',NULL,NULL,5616,3744,'N',6,13,''),(888,'/library/pexels-photo-261426.jpg','/uploads/2018/03/img-5aa991f34c496.jpg',NULL,'','',NULL,NULL,1920,1280,'N',7,12,''),(884,'/library/pexels-photo.jpg','/uploads/2018/03/img-5aa991ee08f07.jpg',NULL,'','',NULL,NULL,5374,3217,'N',3,12,''),(639,'/library/man-old-fisherman-portrait-53159.jpg',NULL,'','','',NULL,NULL,3216,2136,'N',0,22,NULL),(634,'/library/pexels-photo-106936.jpg',NULL,'','','',NULL,NULL,6000,3376,'N',0,10,NULL),(707,'/library/pexels-photo-271634.jpg',NULL,'','','',NULL,NULL,2251,1500,'N',1,1,NULL),(708,'/library/pexels-photo-534151.jpg',NULL,'','Relax and experience stunning mountain views at Alpine Lodge & Retreat','',NULL,NULL,2988,1994,'N',2,1,NULL),(887,'/library/pexels-photo-257961.jpg','/uploads/2018/03/img-5aa991f21b8de.jpg',NULL,'','',NULL,NULL,4496,3372,'N',6,12,''),(886,'/library/pexels-photo-208750.jpg','/uploads/2018/03/img-5aa991f1b06b3.jpg',NULL,'','',NULL,NULL,2201,1548,'N',5,12,''),(885,'/library/pexels-photo-106936.jpg','/uploads/2018/03/img-5aa991ef8fcc6.jpg',NULL,'','',NULL,NULL,6000,3376,'N',4,12,''),(883,'/library/pexels-photo-534151.jpg','/uploads/2018/03/img-5aa991ed71305.jpg',NULL,'','',NULL,NULL,2988,1994,'N',2,12,''),(880,'/library/pexels-photo-279652.jpg','/uploads/2018/03/img-5aa991e969926.jpg',NULL,'','',NULL,NULL,5680,3786,'N',0,12,''),(881,'/library/pexels-photo-298007.jpg','/uploads/2018/03/img-5aa991eb0da94.jpg',NULL,'test 1','test image 1 alt text',NULL,NULL,5616,3744,'N',0,12,'test image 1 name'),(896,'/library/pexels-photo-279746.jpg','/uploads/2018/03/img-5aa9920b3ed24.jpg',NULL,'','',NULL,NULL,5164,3272,'N',5,13,''),(895,'/library/pexels-photo-279652.jpg','/uploads/2018/03/img-5aa992099a586.jpg',NULL,'','',NULL,NULL,5680,3786,'N',4,13,''),(894,'/library/pexels-photo-279329.jpg','/uploads/2018/03/img-5aa99207d9062.jpg',NULL,'','',NULL,NULL,6000,4000,'N',3,13,''),(893,'/library/pexels-photo-276551.jpg','/uploads/2018/03/img-5aa992079add4.jpg',NULL,'','',NULL,NULL,1920,1280,'N',2,13,''),(892,'/library/pexels-photo-276508.jpg','/uploads/2018/03/img-5aa99207549a4.jpg',NULL,'','',NULL,NULL,1920,1281,'N',1,13,''),(891,'/library/pexels-photo-271676.jpg','/uploads/2018/03/img-5aa992059834d.jpg',NULL,'','',NULL,NULL,6000,4000,'N',0,13,''),(906,'/library/pexels-photo-271654.jpg','/uploads/2018/03/img-5aa9992a2a7cc.jpg',NULL,'','',NULL,NULL,7308,4555,'N',5,14,''),(905,'/library/pexels-photo-271634.jpg','/uploads/2018/03/img-5aa99929c09a5.jpg',NULL,'','',NULL,NULL,2251,1500,'N',4,14,''),(904,'/library/pexels-photo-261426.jpg','/uploads/2018/03/img-5aa999297e9fb.jpg',NULL,'','',NULL,NULL,1920,1280,'N',3,14,''),(903,'/library/pexels-photo-257961.jpg','/uploads/2018/03/img-5aa9992849b1e.jpg',NULL,'','',NULL,NULL,4496,3372,'N',2,14,''),(902,'/library/pexels-photo-208750.jpg','/uploads/2018/03/img-5aa99927da7d7.jpg',NULL,'','',NULL,NULL,2201,1548,'N',1,14,''),(901,'/library/pexels-photo-106936.jpg','/uploads/2018/03/img-5aa99925a97ad.jpg',NULL,'','',NULL,NULL,6000,3376,'N',0,14,''),(912,'/library/pexels-photo-279746.jpg','/uploads/2018/03/img-5aa999396bb51.jpg',NULL,'','',NULL,NULL,5164,3272,'N',1,18,''),(913,'/library/pexels-photo-298007.jpg','/uploads/2018/03/img-5aa9993aacbdf.jpg',NULL,'','',NULL,NULL,5616,3744,'N',2,18,''),(914,'/library/pexels-photo-342800.jpg','/uploads/2018/03/img-5aa9993c863f2.jpg',NULL,'','',NULL,NULL,2561,2000,'N',3,18,''),(915,'/library/pexels-photo-534151.jpg','/uploads/2018/03/img-5aa9993d19c35.jpg',NULL,'','',NULL,NULL,2988,1994,'N',4,18,''),(916,'/library/pexels-photo.jpg','/uploads/2018/03/img-5aa9993da0406.jpg',NULL,'','',NULL,NULL,5374,3217,'N',5,18,''),(920,'/library/pexels-photo-261426.jpg','/uploads/2018/03/img-5aa9994321f7e.jpg',NULL,'','',NULL,NULL,1920,1280,'N',9,18,''),(919,'/library/pexels-photo-257961.jpg','/uploads/2018/03/img-5aa99941ba5a7.jpg',NULL,'','',NULL,NULL,4496,3372,'N',8,18,''),(918,'/library/pexels-photo-208750.jpg','/uploads/2018/03/img-5aa999415993f.jpg',NULL,'','',NULL,NULL,2201,1548,'N',7,18,''),(497,'/library/pexels-photo-271654.jpg',NULL,'','Superior Quality Accommodation','',NULL,NULL,7308,4555,'N',2,19,NULL),(496,'/library/pexels-photo-342800.jpg',NULL,'','Superior Quality Accommodation','',NULL,NULL,2561,2000,'N',1,19,NULL),(498,'/library/pexels-photo-276551.jpg',NULL,'','Superior Quality Accommodation','',NULL,NULL,1920,1280,'N',1,20,NULL),(499,'/library/pexels-photo-208750.jpg',NULL,'','Superior Quality Accommodation','',NULL,NULL,2201,1548,'N',2,20,NULL),(624,'/library/pexels-photo-276508.jpg',NULL,'','','',NULL,NULL,1920,1281,'N',1,21,NULL),(625,'/library/pexels-photo-271676.jpg',NULL,'','Superior Quality Accommodation','',NULL,NULL,6000,4000,'N',2,21,NULL),(882,'/library/pexels-photo-342800.jpg','/uploads/2018/03/img-5aa991ece096f.jpg',NULL,'','',NULL,NULL,2561,2000,'N',1,12,''),(917,'/library/pexels-photo-106936.jpg','/uploads/2018/03/img-5aa9993f377a0.jpg',NULL,'','',NULL,NULL,6000,3376,'N',6,18,''),(911,'/library/pexels-photo-279652.jpg','/uploads/2018/03/img-5aa99937c6398.jpg',NULL,'','',NULL,NULL,5680,3786,'N',0,18,'');
/*!40000 ALTER TABLE `photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photo_group`
--

DROP TABLE IF EXISTS `photo_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photo_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary key for the slideshow/gallery group',
  `name` varchar(255) NOT NULL,
  `menu_label` varchar(255) DEFAULT NULL,
  `type` enum('C','G','S') NOT NULL DEFAULT 'S' COMMENT 'C - Carousel, G - Gallery, S - Slideshow(Default)',
  `show_in_cms` enum('N','Y') NOT NULL DEFAULT 'Y',
  `show_on_gallery_page` enum('N','Y') NOT NULL DEFAULT 'N',
  `rank` int(11) NOT NULL DEFAULT '0',
  `auto_rotate` enum('Y','N') DEFAULT 'Y',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photo_group`
--

LOCK TABLES `photo_group` WRITE;
/*!40000 ALTER TABLE `photo_group` DISABLE KEYS */;
INSERT INTO `photo_group` VALUES (1,'Home Page Slideshow',NULL,'S','Y','N',0,'N'),(14,'Food & Beverage','Food & Beverage','G','Y','Y',3,'Y'),(13,'Facilities','Facilities','G','Y','Y',2,'Y'),(12,'Accommodation','Accommodation','G','Y','Y',1,'Y'),(11,'test',NULL,'S','Y','N',0,'Y'),(10,'Accommodation sildeshow',NULL,'S','Y','N',0,'Y'),(18,'Location','Location','G','Y','Y',4,'Y'),(19,'Rocky Lodge slideshow',NULL,'S','Y','N',0,'Y'),(20,'Mountain Sunrise Suite',NULL,'S','Y','N',0,'Y'),(21,'Alpine Forest Suite',NULL,'S','Y','N',0,'Y'),(22,'Facilities',NULL,'S','Y','N',0,'Y'),(23,'Untitled',NULL,'S','Y','N',0,'Y'),(24,'Untitled',NULL,'S','Y','N',0,'Y');
/*!40000 ALTER TABLE `photo_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pmt_account`
--

DROP TABLE IF EXISTS `pmt_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pmt_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(100) NOT NULL,
  `user` varchar(255) NOT NULL,
  `api_key` text NOT NULL,
  `logo_path` varchar(150) DEFAULT NULL,
  `is_live` enum('N','Y') NOT NULL DEFAULT 'N' COMMENT 'N - No, Y - Yes',
  `has_cc` enum('N','Y') NOT NULL DEFAULT 'N' COMMENT 'N - No, Y - Yes',
  `type` enum('dps','paypal') NOT NULL DEFAULT 'dps',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pmt_account`
--

LOCK TABLES `pmt_account` WRITE;
/*!40000 ALTER TABLE `pmt_account` DISABLE KEYS */;
INSERT INTO `pmt_account` VALUES (1,'DPS','Tomahawk_Dev','9d11e64e5f26792355ac0e16739a2bbc3d1818a14e4f165c2e307b0b8b117aa0','/graphics/dps-logo.png','N','Y','dps'),(2,'PayPal','ameyaaklekar-facilitator@gmail.com','67gxI27ABjGCqyQ7Z8rv-QP6zbvFvuHPfrsAUa4Y3Z9S63P1nbw5iFfjUUK','/graphics/paypal-logo.png','N','N','paypal'),(3,'DPS','','','/graphics/dps-logo.png','Y','Y','dps'),(4,'PayPal','','','/graphics/paypal-logo.png','Y','N','paypal');
/*!40000 ALTER TABLE `pmt_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pmt_account_has_pmt_credit_card`
--

DROP TABLE IF EXISTS `pmt_account_has_pmt_credit_card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pmt_account_has_pmt_credit_card` (
  `pmt_account_id` int(11) NOT NULL,
  `pmt_credit_card_id` int(11) NOT NULL,
  PRIMARY KEY (`pmt_account_id`,`pmt_credit_card_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pmt_account_has_pmt_credit_card`
--

LOCK TABLES `pmt_account_has_pmt_credit_card` WRITE;
/*!40000 ALTER TABLE `pmt_account_has_pmt_credit_card` DISABLE KEYS */;
INSERT INTO `pmt_account_has_pmt_credit_card` VALUES (1,1),(1,2),(3,1),(3,2);
/*!40000 ALTER TABLE `pmt_account_has_pmt_credit_card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pmt_credit_card`
--

DROP TABLE IF EXISTS `pmt_credit_card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pmt_credit_card` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pmt_credit_card`
--

LOCK TABLES `pmt_credit_card` WRITE;
/*!40000 ALTER TABLE `pmt_credit_card` DISABLE KEYS */;
INSERT INTO `pmt_credit_card` VALUES (1,'Visa','/graphics/credit-cards/visa.png'),(2,'MasterCard','/graphics/credit-cards/master-card.png'),(3,'American Express','/graphics/credit-cards/amex.png'),(4,'Diners Club','/graphics/credit-cards/diners.png');
/*!40000 ALTER TABLE `pmt_credit_card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pmt_history_status`
--

DROP TABLE IF EXISTS `pmt_history_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pmt_history_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(60) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `status_name` (`label`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pmt_history_status`
--

LOCK TABLES `pmt_history_status` WRITE;
/*!40000 ALTER TABLE `pmt_history_status` DISABLE KEYS */;
INSERT INTO `pmt_history_status` VALUES (1,'New','The request was created.'),(2,'Viewed','The request has been viewed by the client.'),(3,'Success','The client paid the request amount through'),(4,'Notify Admin Success','A notification email was sent successfully to you, informing you that a payment was made.'),(5,'Notify Client Success','A notification email was sent successfully to the client, regarding their payment transaction.\n'),(6,'Declined','Client payment attempt was unsuccessful.'),(7,'Sent','The request was sent successfully to the client.'),(8,'Notify Admin Fail','A notification email was sent successfully to you, informing you that a payment was declined.');
/*!40000 ALTER TABLE `pmt_history_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pmt_message`
--

DROP TABLE IF EXISTS `pmt_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pmt_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(60) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `status_name` (`label`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pmt_message`
--

LOCK TABLES `pmt_message` WRITE;
/*!40000 ALTER TABLE `pmt_message` DISABLE KEYS */;
INSERT INTO `pmt_message` VALUES (1,'New','A newly created request.'),(2,'Viewed by client.','The request has been viewed by the client.'),(3,'Accepted by merchant','Payment Accepted. Your request has been processed through Direct Payment Solutions, and payment was accepted.'),(4,'Declined by merchant','Payment Declined. The request has been processed through Direct Payment Solutions, but the payment was declined. Please try again.'),(5,'Cancelled by client','The client cancelled the request.'),(6,'Deleted','The request has been deleted.'),(7,'Sent','Your request was sent successfully.');
/*!40000 ALTER TABLE `pmt_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pmt_payer`
--

DROP TABLE IF EXISTS `pmt_payer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pmt_payer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `full_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `email_address` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pmt_payer`
--

LOCK TABLES `pmt_payer` WRITE;
/*!40000 ALTER TABLE `pmt_payer` DISABLE KEYS */;
INSERT INTO `pmt_payer` VALUES (56,'Q','A','Q A','ian@tomahawk.co.nz');
/*!40000 ALTER TABLE `pmt_payer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pmt_request`
--

DROP TABLE IF EXISTS `pmt_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pmt_request` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `public_token` varchar(15) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `status` enum('A','C','D','N','P') DEFAULT 'N' COMMENT 'A - Approved, C - Canceled, D - Declined, N - New, P - Pending',
  `cms_status` enum('A','D') NOT NULL DEFAULT 'A' COMMENT 'A - Active, D - Deleted',
  `reference` varchar(100) DEFAULT NULL,
  `request_url` varchar(255) DEFAULT NULL,
  `email_sent` enum('N','Y') NOT NULL DEFAULT 'N',
  `email_subject` varchar(150) DEFAULT NULL,
  `email_content` text,
  `comments` text,
  `created_on` datetime DEFAULT NULL,
  `approved_on` datetime DEFAULT NULL,
  `declined_on` datetime DEFAULT NULL,
  `pmt_payer_id` int(11) NOT NULL,
  `email_template_id` int(11) NOT NULL,
  `payment_type` enum('F','P') NOT NULL DEFAULT 'F',
  `pmt_transaction_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_pmt_request_pmt_transaction_idx` (`pmt_transaction_id`),
  KEY `fk_pmt_payer1_idx` (`pmt_payer_id`),
  KEY `email_template_id` (`email_template_id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pmt_request`
--

LOCK TABLES `pmt_request` WRITE;
/*!40000 ALTER TABLE `pmt_request` DISABLE KEYS */;
INSERT INTO `pmt_request` VALUES (43,'34a6923befn34e6',1.00,'P','A','TEST','https://alpine.netzone.nz/payments/?pid=34a6923befn34e6','N','Payment Details','<p>Dear Q A,</p>\r\n\r\n<p>&nbsp;NZ$1</p>\r\n\r\n<p><a href=\"https://alpine.netzone.nz/payments/?pid=34a6923befn34e6\" target=\"_blank\">https://alpine.netzone.nz/payments/?pid=34a6923befn34e6</a></p>',NULL,'2018-01-22 22:01:38',NULL,NULL,56,4,'F',56);
/*!40000 ALTER TABLE `pmt_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pmt_request_history`
--

DROP TABLE IF EXISTS `pmt_request_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pmt_request_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_time` datetime NOT NULL,
  `label` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `pmt_request_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pmt_request_id` (`pmt_request_id`)
) ENGINE=InnoDB AUTO_INCREMENT=254 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pmt_request_history`
--

LOCK TABLES `pmt_request_history` WRITE;
/*!40000 ALTER TABLE `pmt_request_history` DISABLE KEYS */;
INSERT INTO `pmt_request_history` VALUES (251,'2018-01-22 22:01:38','NEW','The request was created.',43),(252,'2018-01-22 22:01:38','SENT','The request was sent successfully to the client.',43),(253,'2018-01-22 22:01:54','VIEWED','The request has been viewed by the client.',43);
/*!40000 ALTER TABLE `pmt_request_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pmt_settings`
--

DROP TABLE IF EXISTS `pmt_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pmt_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `encryption_key` varchar(40) NOT NULL,
  `notification_email_address` varchar(255) DEFAULT NULL,
  `terms_and_conditions` text,
  `success_message` text,
  `fail_message` text,
  `success_email_body` text,
  `fail_email_body` text,
  `processed_message` text,
  `payment_type` enum('F','P') NOT NULL DEFAULT 'F' COMMENT 'F: Full payment. P: pre-auth payment',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pmt_settings`
--

LOCK TABLES `pmt_settings` WRITE;
/*!40000 ALTER TABLE `pmt_settings` DISABLE KEYS */;
INSERT INTO `pmt_settings` VALUES (1,'aafd03ccdce3520545c5f1c5599f6e60','ian@tomahawk.co.nz','<p><strong>Payment &ndash; </strong>A deposit of 25% of the total cost of your booking plus full payment of the itinerary planning fee is required once your bookings have been confirmed. The balance is then payable 42 days prior to the first day of your New Zealand itinerary. If a booking is made within 42 days of the first day of your New Zealand itinerary, full payment is required at the time of booking confirmation.</p>\r\n\r\n<p>Payments can either be made by credit card via the secure server on our web site or by direct crediting our bank account. Please be aware that for if you wish to make your payment by either Visa or MasterCard a 1.5% credit card fee will be applicable. If you would prefer to make your payment by American Express a 2.5% credit card fee will be applicable.</p>\r\n\r\n<p>Alternatively, you can choose to pay by direct credit into our bank account. We will absorb the cost of the deposit into our bank account; however any applicable fees charged by your bank will be your responsibility.</p>\r\n\r\n<p><strong>Cancellations Charges &ndash; </strong>If you have to cancel all, or part of your holiday for any reason, the following cancellation fees are applicable. For cancellation more than 30 days prior to your arrival in New Zealand: 25% (deposit amount); 8-30 days prior to your arrival: 40%; 7 days or less: 100%.<br />\r\nImportant note - Experience New Zealand Travel recommends that you obtain personal travel insurance to cover any cancellation of part or all of your holiday.</p>\r\n\r\n<p><strong>Amendment Fee:</strong> An amendment fee of NZ$20 per amendment will apply when a confirmed booking is changed.</p>\r\n\r\n<p><strong>ENZTL Responsibilities </strong>- ENZTL operate the experiencenz.com web site as agents for the owner/operators identified in the web site. Whilst we have visited (and do visit on a regular basis) all of the properties on the web site, we are not responsible for the individual properties. We are not liable for any loss or damage caused by any failure or improper performance by any of the owner/operators. However, in the event that a owner/operator cannot provide you with contracted accommodation, we will use our best endeavours to provide you with alternative accommodation, but otherwise we shall have no liability to you.</p>','<p><span style=\"font-size: 26px;\"><strong>Payment Success!</strong></span></p>\r\n\r\n<p>Your payment request was processed successfully. A confirmation email has been sent to <u>{email_address}</u></p>\r\n\r\n<p>Thank you for your booking.</p>','<p><span style=\"font-size: 26px;\"><strong>Payment Failed</strong></span></p>\r\n\r\n<p>Unfortunately, your payment was not processed.<br />\r\nThe response from your bank was <strong>{response_text}</strong>.</p>\r\n\r\n<p>Please check your email as you&#39;ll be emailed a new link to try again.</p>','<p><strong>Dear&nbsp;{full_name},</strong></p>\r\n\r\n<p>Thank you for making payment for our request on&nbsp;{request_date}.</p>\r\n\r\n<p>The amount of {currency_symbol}{amount} was successfully transferred to our bank account.</p>\r\n\r\n<p><strong>Date requested:</strong>&nbsp;{request_date}<br />\r\n<strong>Requested by:</strong>&nbsp;{from_name}<br />\r\n<strong>Amount:</strong>&nbsp;{currency_symbol}{amount}<br />\r\n<strong>Payment date:</strong>&nbsp;{payment_date}</p>\r\n\r\n<p><strong>Payment SUCCESSFUL</strong></p>\r\n\r\n<p>Please keep this email for your records.</p>\r\n\r\n<p>If you have any further queries, please contact us.</p>\r\n\r\n<p>Kind regards,<br />\r\n{from_name}</p>','<p><strong>Dear&nbsp;{full_name},</strong></p>\r\n\r\n<p>Thank you for visiting our payment page and trying to make payment. Unfortunately the payment was declined.</p>\r\n\r\n<p>Amount of {currency_symbol}{amount} &nbsp;is still withstanding.</p>\r\n\r\n<p><strong>Date requested:</strong>&nbsp;{request_date}<br />\r\n<strong>Requested by:</strong>&nbsp;{from_name}<br />\r\n<strong>Amount:</strong>&nbsp;{currency_symbol}{amount}<br />\r\n<strong>Payment date:</strong>&nbsp;{payment_date}</p>\r\n\r\n<p><strong>Payment FAILED</strong></p>\r\n\r\n<p>To re-process payment, please visit this link:</p>\r\n\r\n<p><a href=\"{payment_url}\">{payment_url}</a></p>\r\n\r\n<p>If you have any issues with payment, please contact us.</p>\r\n\r\n<p>Kind regards,<br />\r\n{from_name}</p>','<p><span style=\"font-size: 26px;\"><strong>Payment Transaction Already Processed</strong></span></p>\r\n\r\n<p>The payment request you tried to process has already been processed.</p>\r\n\r\n<p>You&#39;re seeing this page because the transaction request you tried to process has previously been completed successfully or canceled.&nbsp;</p>','P');
/*!40000 ALTER TABLE `pmt_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pmt_template`
--

DROP TABLE IF EXISTS `pmt_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pmt_template` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `short_description` varchar(255) DEFAULT NULL,
  `from_name` varchar(255) NOT NULL,
  `from_email_address` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `content` text,
  `logo_path` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pmt_template`
--

LOCK TABLES `pmt_template` WRITE;
/*!40000 ALTER TABLE `pmt_template` DISABLE KEYS */;
INSERT INTO `pmt_template` VALUES (1,'Template 4','','','','','<p>Dear {first_name} {last_name},</p>\r\n\r\n<p>{payment_link}</p>\r\n\r\n<p>&nbsp;</p>','/graphics/logo-sm.png'),(2,'Template 3','','','','','<p>Dear {full_name},</p>\r\n\r\n<p><br />\r\nNZ${payment_amount}&nbsp;&nbsp;</p>\r\n\r\n<p><br />\r\n{payment_link}</p>\r\n\r\n<p>&nbsp;</p>','/graphics/logo-sm.png'),(3,'Template 2','','','','Payment link','<p>Dear {first_name} {last_name},</p>\r\n\r\n<p>{payment_link}</p>\r\n\r\n<p>&nbsp;</p>','/graphics/logo-drivingnz.png'),(4,'Template 1','','','','Payment Details','<p>Dear {full_name},</p>\r\n\r\n<p>&nbsp;NZ${payment_amount}</p>\r\n\r\n<p>{payment_link}</p>','/graphics/logo-drivingnz.png');
/*!40000 ALTER TABLE `pmt_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pmt_template_tag`
--

DROP TABLE IF EXISTS `pmt_template_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pmt_template_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pmt_template_tag`
--

LOCK TABLES `pmt_template_tag` WRITE;
/*!40000 ALTER TABLE `pmt_template_tag` DISABLE KEYS */;
INSERT INTO `pmt_template_tag` VALUES (1,'First Name','first_name','Recipient\'s first name.'),(2,'Last Name','last_name','Recipient\'s last name.'),(3,'Full Name','full_name','Recipient\'s full name.'),(4,'Payment Amount','payment_amount','Amount of the payment request.'),(5,'Payment_Link','payment_link','Link to the payment page.'),(6,'Currency Symbol','currency_symbol','Currency Symbol displayed before any amount');
/*!40000 ALTER TABLE `pmt_template_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pmt_transaction`
--

DROP TABLE IF EXISTS `pmt_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pmt_transaction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount_settlement` decimal(10,2) DEFAULT '0.00',
  `auth_code` varchar(250) DEFAULT NULL,
  `cc_name` varchar(250) DEFAULT NULL,
  `cc_holder_name` varchar(250) DEFAULT NULL,
  `cc_number` varchar(200) DEFAULT NULL,
  `cc_date_expire` varchar(100) DEFAULT NULL,
  `dps_billing_id` varchar(20) DEFAULT NULL,
  `dps_ref` varchar(200) DEFAULT NULL,
  `type` varchar(100) NOT NULL,
  `data1` varchar(250) DEFAULT NULL,
  `paypal_payer_id` varchar(50) DEFAULT NULL,
  `paypal_payer_status` varchar(50) DEFAULT NULL,
  `currency_settlement` varchar(100) DEFAULT 'NZD',
  `client_ip` varchar(150) DEFAULT NULL,
  `txn_id` varchar(50) DEFAULT NULL,
  `currency_input` varchar(100) DEFAULT NULL,
  `merchant_ref` varchar(255) DEFAULT NULL,
  `response_text` varchar(255) DEFAULT NULL,
  `mac_address` varchar(255) DEFAULT NULL,
  `response_url` mediumtext NOT NULL,
  `date_processsed` datetime DEFAULT NULL,
  `pmt_account_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pmt_transaction`
--

LOCK TABLES `pmt_transaction` WRITE;
/*!40000 ALTER TABLE `pmt_transaction` DISABLE KEYS */;
INSERT INTO `pmt_transaction` VALUES (56,1.00,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,'NZD',NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,0);
/*!40000 ALTER TABLE `pmt_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `redirect`
--

DROP TABLE IF EXISTS `redirect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `redirect` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `old_url` longtext NOT NULL,
  `new_url` longtext NOT NULL,
  `status_code` int(11) NOT NULL,
  `status` enum('A','H','D') NOT NULL DEFAULT 'H',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `redirect`
--

LOCK TABLES `redirect` WRITE;
/*!40000 ALTER TABLE `redirect` DISABLE KEYS */;
INSERT INTO `redirect` VALUES (1,'http://www.maramavineyard.com/vineyard','http://www.maramavineyard.com/gallery',301,'D');
/*!40000 ALTER TABLE `redirect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resbook_version`
--

DROP TABLE IF EXISTS `resbook_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resbook_version` (
  `version` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `url` varchar(300) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resbook_version`
--

LOCK TABLES `resbook_version` WRITE;
/*!40000 ALTER TABLE `resbook_version` DISABLE KEYS */;
INSERT INTO `resbook_version` VALUES (3,'V3','//www.resbook.co.nz/art/guests/?pid=%s&pmpid=&referrer=&availability=show'),(12,'V12','//www.resbook.net/calendar/?pid=%s&referrer=&availability=show');
/*!40000 ALTER TABLE `resbook_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_links`
--

DROP TABLE IF EXISTS `social_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(100) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `icon_path` varchar(255) DEFAULT NULL,
  `second_icon_path` varchar(255) DEFAULT NULL,
  `icon_alt` varchar(255) DEFAULT NULL,
  `widget_blob` mediumtext,
  `placement` enum('L','R') DEFAULT 'L',
  `use_icon` enum('0','1') DEFAULT '0',
  `icon_cls` varchar(255) DEFAULT NULL,
  `element_class` varchar(100) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `has_widget` enum('0','1') DEFAULT '0',
  `is_external` enum('0','1') DEFAULT '0',
  `is_active` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_links`
--

LOCK TABLES `social_links` WRITE;
/*!40000 ALTER TABLE `social_links` DISABLE KEYS */;
INSERT INTO `social_links` VALUES (1,'Facebook','https://www.facebook.com/TomahawkTourism/','Join us on Facebook','/themes/global/graphics/social-icons/icon-facebook.png',NULL,'Join us on Facebook',NULL,'L','1','fa fa-facebook',NULL,1,'0','1','1'),(2,'Instagram','https://www.instagram.com/?hl=en','Follow us on Instagram','/themes/global/graphics/social-icons/icon-instagram.png',NULL,'Follow us on Instagram',NULL,'L','1','fa fa-instagram',NULL,2,'0','1','1'),(3,'Twitter','https://twitter.com/?lang=en','Follow us on Twitter','/themes/global/graphics/social-icons/icon-twitter.png',NULL,'Follow us on Twitter',NULL,'L','1','fa fa-twitter',NULL,4,'0','1','1'),(4,'Youtube','https://www.youtube.com','Join us on Youtube','/themes/global/graphics/social-icons/icon-youtube.png',NULL,'Join us on Youtube',NULL,'L','1','fa fa-youtube',NULL,3,'0','1','1'),(5,'Google+','https://plus.google.com/discover','Join us on Google+','/themes/global/graphics/social-icons/icon-googleplus.png',NULL,'Join us on Google+',NULL,'L','1','fa fa-google-plus',NULL,5,'0','1','1'),(6,'Pinterest','https://www.pinterest.nz/','Join us on Pinterest','/themes/global/graphics/social-icons/icon-pinterest.png',NULL,'Join us on Pinterest',NULL,'L','1','fa fa-pinterest-p',NULL,6,'0','1','1');
/*!40000 ALTER TABLE `social_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `templates_normal`
--

DROP TABLE IF EXISTS `templates_normal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `templates_normal` (
  `tmpl_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary key for template',
  `tmpl_name` varchar(100) DEFAULT NULL COMMENT 'Template name',
  `tmpl_path` varchar(100) DEFAULT NULL COMMENT 'Template URL (i.e. ''default'', ''shop'', ''googlemap'' etc). It is recommended that you leave the extension up to the application/code.',
  `tmpl_previewimg` varchar(100) DEFAULT NULL,
  `tmpl_nummoduletags` int(11) NOT NULL DEFAULT '0',
  `tmpl_showincms` varchar(1) NOT NULL DEFAULT 'Y',
  `tmpl_mobile` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`tmpl_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `templates_normal`
--

LOCK TABLES `templates_normal` WRITE;
/*!40000 ALTER TABLE `templates_normal` DISABLE KEYS */;
INSERT INTO `templates_normal` VALUES (1,'Default','index.html',NULL,0,'Y',NULL),(2,'Compendium','compendium.html',NULL,0,'Y',NULL);
/*!40000 ALTER TABLE `templates_normal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonial`
--

DROP TABLE IF EXISTS `testimonial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testimonial` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary key for the testimonial',
  `person` varchar(100) DEFAULT NULL COMMENT 'Who represents this testimonial',
  `company` varchar(100) NOT NULL,
  `detail` longtext COMMENT 'The testimonial itself',
  `status` enum('A','D','H') DEFAULT 'H' COMMENT 'Boolean for whether or not the current testimonial should be displayed. (0 = off, 1=on)',
  `rank` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonial`
--

LOCK TABLES `testimonial` WRITE;
/*!40000 ALTER TABLE `testimonial` DISABLE KEYS */;
INSERT INTO `testimonial` VALUES (10,'The Snow Family','','We absolutely loved every minute of our stay at Alpine Lodge & Retreat and look forward to our return vacation next year!','A',0),(14,'The Rain Family','','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec odio. Quisque volutpat mattis eros. Nullam malesuada erat ut turpis. Suspendisse urna nibh, viverra non, semper suscipit, posuere a, pede.','A',0),(11,'Test person 2','','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec odio. Quisque volutpat mattis eros. Nullam malesuada erat ut turpis. Suspendisse urna nibh, viverra non, semper suscipit, posuere a, pede.','D',0),(12,'Test person 3','','Sed egestas, ante et vulputate volutpat, eros pede semper est, vitae luctus metus libero eu augue. Morbi purus libero, faucibus adipiscing, commodo quis, gravida id, est. Sed lectus. Praesent elementum hendrerit tortor. Sed semper lorem at felis. Vestibulum volutpat, lacus a ultrices sagittis, mi neque euismod dui, eu pulvinar nunc sapien ornare nisl. Phasellus pede arcu, dapibus eu, fermentum et, dapibus sed, urna.','D',0),(13,'Testing Person','','Testing Review','D',4);
/*!40000 ALTER TABLE `testimonial` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-30 15:41:33
