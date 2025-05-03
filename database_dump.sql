-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: projects_lg_db
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `administrator_settings_customuser`
--

DROP TABLE IF EXISTS `administrator_settings_customuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administrator_settings_customuser` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `location` text NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrator_settings_customuser`
--

LOCK TABLES `administrator_settings_customuser` WRITE;
/*!40000 ALTER TABLE `administrator_settings_customuser` DISABLE KEYS */;
INSERT INTO `administrator_settings_customuser` VALUES (2,'ckp software','Bengaluru','c'),(4,'bloom','Delhi','b'),(5,'Admin','All','a'),(16,'mukesh','Chennai','m'),(17,'sai','Delhi','s'),(18,'Junnu','Chennai','Jun@143'),(19,'Rose','Chennai','Rose@143');
/*!40000 ALTER TABLE `administrator_settings_customuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `administrator_settings_userrights`
--

DROP TABLE IF EXISTS `administrator_settings_userrights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administrator_settings_userrights` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `form_name` varchar(100) NOT NULL,
  `can_view` tinyint(1) NOT NULL DEFAULT '0',
  `can_add` tinyint(1) NOT NULL DEFAULT '0',
  `can_edit` tinyint(1) NOT NULL DEFAULT '0',
  `can_delete` tinyint(1) NOT NULL DEFAULT '0',
  `all_access` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `administrator_settings_userrights_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `administrator_settings_customuser` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=320 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrator_settings_userrights`
--

LOCK TABLES `administrator_settings_userrights` WRITE;
/*!40000 ALTER TABLE `administrator_settings_userrights` DISABLE KEYS */;
INSERT INTO `administrator_settings_userrights` VALUES (19,17,'store',1,0,0,0,0),(20,17,'inwardmaterial',0,0,0,0,0),(21,17,'outwardmaterial',0,0,0,0,0),(22,17,'printlabel',0,0,0,0,0),(23,17,'vendor',0,0,0,0,0),(24,17,'item',0,0,0,0,0),(25,17,'user',0,0,0,0,0),(26,17,'userrights',0,0,0,0,0),(27,17,'dashboard',0,0,0,0,0),(28,2,'root_redirect',0,0,0,0,0),(29,2,'index',0,0,0,0,0),(30,2,'login',0,0,0,0,0),(31,2,'logout',0,0,0,0,0),(32,2,'password_change',0,0,0,0,0),(33,2,'password_change_done',0,0,0,0,0),(34,2,'autocomplete',0,0,0,0,0),(35,2,'jsi18n',0,0,0,0,0),(36,2,'view_on_site',0,0,0,0,0),(37,2,'auth_group_changelist',0,0,0,0,0),(38,2,'auth_group_add',0,0,0,0,0),(39,2,'auth_group_history',0,0,0,0,0),(40,2,'auth_group_delete',0,0,0,0,0),(41,2,'auth_group_change',0,0,0,0,0),(42,2,'auth_user_password_change',0,0,0,0,0),(43,2,'auth_user_changelist',0,0,0,0,0),(44,2,'auth_user_add',0,0,0,0,0),(45,2,'auth_user_history',0,0,0,0,0),(46,2,'auth_user_delete',0,0,0,0,0),(47,2,'auth_user_change',0,0,0,0,0),(48,2,'app_list',0,0,0,0,0),(49,2,'home',0,0,0,0,0),(50,2,'login',0,0,0,0,0),(51,2,'get_user_location',0,0,0,0,0),(52,2,'logout',0,0,0,0,0),(53,2,'logout',0,0,0,0,0),(54,2,'login',0,0,0,0,0),(55,2,'forgot_password',0,0,0,0,0),(56,2,'vendor_list',1,0,0,0,0),(57,2,'vendor_add',1,0,0,0,0),(58,2,'vendor_edit',1,0,0,0,0),(59,2,'vendor_delete',1,0,0,0,0),(60,2,'vendor_detail',1,0,0,0,0),(61,2,'category_list',1,0,0,0,0),(62,2,'category_add',1,0,0,0,0),(63,2,'category_edit',0,0,0,0,0),(64,2,'category_delete',0,0,0,0,0),(65,2,'category_detail',0,0,0,0,0),(66,2,'customer_list',0,0,0,0,0),(67,2,'customer_add',0,0,0,0,0),(68,2,'customer_edit',0,0,0,0,0),(69,2,'customer_delete',0,0,0,0,0),(70,2,'customer_view',0,0,0,0,0),(71,2,'company_form',0,0,0,0,0),(72,2,'item_list',0,0,0,0,0),(73,2,'item_add',0,0,0,0,0),(74,2,'item_edit',0,0,0,0,0),(75,2,'item_delete',0,0,0,0,0),(76,2,'item_detail',0,0,0,0,0),(77,2,'store_list',0,0,0,0,0),(78,2,'store_add',0,0,0,0,0),(79,2,'store_edit',0,0,0,0,0),(80,2,'store_delete',0,0,0,0,0),(81,2,'store_view',0,0,0,0,0),(82,2,'bag_boxes_list',0,0,0,0,0),(83,2,'bag_boxes_add',0,0,0,0,0),(84,2,'bag_boxes_edit',0,0,0,0,0),(85,2,'bag_boxes_delete',0,0,0,0,0),(86,2,'bag_boxes_view',0,0,0,0,0),(87,2,'inward_material_list',0,0,0,0,0),(88,2,'inward_material_add',0,0,0,0,0),(89,2,'inward_material_edit',0,0,0,0,0),(90,2,'inward_material_view',0,0,0,0,0),(91,2,'inward_material_delete',0,0,0,0,0),(92,2,'rm_material_issue_list',0,0,0,0,0),(93,2,'rm_material_issue_add',0,0,0,0,0),(94,2,'rm_material_issue_edit',0,0,0,0,0),(95,2,'rm_material_issue_view',0,0,0,0,0),(96,2,'rm_material_issue_delete',0,0,0,0,0),(97,2,'create_rm_label',0,0,0,0,0),(98,2,'rm_label_list',0,0,0,0,0),(99,2,'edit_rm_label',0,0,0,0,0),(100,2,'delete_rm_label',0,0,0,0,0),(101,2,'print_rm_label',0,0,0,0,0),(102,2,'view_rm_label',0,0,0,0,0),(103,2,'create_pm_label',0,0,0,0,0),(104,2,'view_pm_label',0,0,0,0,0),(105,2,'pm_label_list',0,0,0,0,0),(106,2,'edit_pm_label',0,0,0,0,0),(107,2,'delete_pm_label',0,0,0,0,0),(108,2,'print_pm_label',0,0,0,0,0),(109,2,'packing_material_list',0,0,0,0,0),(110,2,'packing_material_add',0,0,0,0,0),(111,2,'packing_material_edit',0,0,0,0,0),(112,2,'packing_material_view',0,0,0,0,0),(113,2,'packing_material_delete',0,0,0,0,0),(114,2,'get-items',0,0,0,0,0),(115,2,'pm_material_issue_list',0,0,0,0,0),(116,2,'pm_material_issue_add',0,0,0,0,0),(117,2,'pm_material_issue_edit',0,0,0,0,0),(118,2,'pm_material_issue_view',0,0,0,0,0),(119,2,'pm_material_issue_delete',0,0,0,0,0),(120,2,'purchase_order_list',0,0,0,0,0),(121,2,'purchase_order_detail',0,0,0,0,0),(122,2,'purchase_order_create',0,0,0,0,0),(123,2,'purchase_order_edit',0,0,0,0,0),(124,2,'purchase_order_delete',0,0,0,0,0),(125,2,'edit_file',0,0,0,0,0),(126,2,'delete_file',0,0,0,0,0),(127,2,'save_uploaded_files',0,0,0,0,0),(128,2,'rm_issuance_report',0,0,0,0,0),(129,2,'export_rm_issuance_excel',0,0,0,0,0),(130,2,'generate_report',0,0,0,0,0),(131,2,'export_report_excel',0,0,0,0,0),(132,2,'pm_material_issue_report',0,0,0,0,0),(133,2,'export_pm_material_issue_excel',0,0,0,0,0),(134,2,'packing_slip_report',0,0,0,0,0),(135,2,'export_packing_slip_excel',0,0,0,0,0),(136,2,'fg_inward_material_report',0,0,0,0,0),(137,2,'export_fg_inward_material_excel',0,0,0,0,0),(138,2,'stock_dashboard',0,0,0,0,0),(139,2,'finished_inward_material_list',0,0,0,0,0),(140,2,'finished_inward_material_add',0,0,0,0,0),(141,2,'finished_inward_material_edit',0,0,0,0,0),(142,2,'finished_inward_material_view',0,0,0,0,0),(143,2,'finished_inward_material_delete',0,0,0,0,0),(144,2,'create_packing_slip',0,0,0,0,0),(145,2,'packing_slip_list',0,0,0,0,0),(146,2,'view_packing_slip',0,0,0,0,0),(147,2,'edit_packing_slip',0,0,0,0,0),(148,2,'delete_packing_slip',0,0,0,0,0),(149,2,'create_fg_label',0,0,0,0,0),(150,2,'fg_label_list',0,0,0,0,0),(151,2,'edit_fg_label',0,0,0,0,0),(152,2,'delete_fg_label',0,0,0,0,0),(153,2,'print_fg_label',0,0,0,0,0),(154,2,'fg_label_details',0,0,0,0,0),(155,2,'am_inward_material_list',0,0,0,0,0),(156,2,'am_inward_material_add',0,0,0,0,0),(157,2,'am_inward_material_edit',0,0,0,0,0),(158,2,'am_inward_material_view',0,0,0,0,0),(159,2,'am_inward_material_delete',0,0,0,0,0),(160,2,'asset_material_issue_list',0,0,0,0,0),(161,2,'asset_material_issue_add',0,0,0,0,0),(162,2,'asset_material_issue_edit',0,0,0,0,0),(163,2,'asset_material_issue_view',0,0,0,0,0),(164,2,'asset_material_issue_delete',0,0,0,0,0),(165,2,'user_list',0,0,0,0,0),(166,2,'user_add',0,0,0,0,0),(167,2,'user_edit',0,0,0,0,0),(168,2,'user_delete',0,0,0,0,0),(169,2,'user_detail',0,0,0,0,0),(170,2,'user_rights_form',0,0,0,0,0),(171,2,'unauthorized',0,0,0,0,0),(172,2,'stock_statement',0,0,0,0,0),(173,2,'dashboard',0,0,0,0,0),(174,16,'root_redirect',0,0,0,0,0),(175,16,'index',0,0,0,0,0),(176,16,'login',0,0,0,0,0),(177,16,'logout',0,0,0,0,0),(178,16,'password_change',0,0,0,0,0),(179,16,'password_change_done',0,0,0,0,0),(180,16,'autocomplete',0,0,0,0,0),(181,16,'jsi18n',0,0,0,0,0),(182,16,'view_on_site',0,0,0,0,0),(183,16,'auth_group_changelist',0,0,0,0,0),(184,16,'auth_group_add',0,0,0,0,0),(185,16,'auth_group_history',0,0,0,0,0),(186,16,'auth_group_delete',0,0,0,0,0),(187,16,'auth_group_change',0,0,0,0,0),(188,16,'auth_user_password_change',0,0,0,0,0),(189,16,'auth_user_changelist',0,0,0,0,0),(190,16,'auth_user_add',0,0,0,0,0),(191,16,'auth_user_history',0,0,0,0,0),(192,16,'auth_user_delete',0,0,0,0,0),(193,16,'auth_user_change',0,0,0,0,0),(194,16,'app_list',0,0,0,0,0),(195,16,'home',0,0,0,0,0),(196,16,'login',0,0,0,0,0),(197,16,'get_user_location',0,0,0,0,0),(198,16,'logout',0,0,0,0,0),(199,16,'logout',0,0,0,0,0),(200,16,'login',0,0,0,0,0),(201,16,'forgot_password',0,0,0,0,0),(202,16,'vendor_list',0,0,0,0,0),(203,16,'vendor_add',0,0,0,0,0),(204,16,'vendor_edit',0,0,0,0,0),(205,16,'vendor_delete',0,0,0,0,0),(206,16,'vendor_detail',0,0,0,0,0),(207,16,'category_list',0,0,0,0,0),(208,16,'category_add',0,0,0,0,0),(209,16,'category_edit',0,0,0,0,0),(210,16,'category_delete',0,0,0,0,0),(211,16,'category_detail',0,0,0,0,0),(212,16,'customer_list',0,0,0,0,0),(213,16,'customer_add',0,0,0,0,0),(214,16,'customer_edit',0,0,0,0,0),(215,16,'customer_delete',0,0,0,0,0),(216,16,'customer_view',0,0,0,0,0),(217,16,'company_form',0,0,0,0,0),(218,16,'item_list',0,0,0,0,0),(219,16,'item_add',0,0,0,0,0),(220,16,'item_edit',0,0,0,0,0),(221,16,'item_delete',0,0,0,0,0),(222,16,'item_detail',0,0,0,0,0),(223,16,'store_list',0,0,0,0,0),(224,16,'store_add',0,0,0,0,0),(225,16,'store_edit',0,0,0,0,0),(226,16,'store_delete',0,0,0,0,0),(227,16,'store_view',0,0,0,0,0),(228,16,'bag_boxes_list',0,0,0,0,0),(229,16,'bag_boxes_add',0,0,0,0,0),(230,16,'bag_boxes_edit',0,0,0,0,0),(231,16,'bag_boxes_delete',0,0,0,0,0),(232,16,'bag_boxes_view',0,0,0,0,0),(233,16,'inward_material_list',0,0,0,0,0),(234,16,'inward_material_add',0,0,0,0,0),(235,16,'inward_material_edit',0,0,0,0,0),(236,16,'inward_material_view',0,0,0,0,0),(237,16,'inward_material_delete',0,0,0,0,0),(238,16,'rm_material_issue_list',1,0,0,0,0),(239,16,'rm_material_issue_add',1,0,0,0,0),(240,16,'rm_material_issue_edit',1,0,0,0,0),(241,16,'rm_material_issue_view',1,0,0,0,0),(242,16,'rm_material_issue_delete',1,0,0,0,0),(243,16,'create_rm_label',0,0,0,0,0),(244,16,'rm_label_list',0,0,0,0,0),(245,16,'edit_rm_label',0,0,0,0,0),(246,16,'delete_rm_label',0,0,0,0,0),(247,16,'print_rm_label',0,0,0,0,0),(248,16,'view_rm_label',0,0,0,0,0),(249,16,'create_pm_label',0,0,0,0,0),(250,16,'view_pm_label',0,0,0,0,0),(251,16,'pm_label_list',0,0,0,0,0),(252,16,'edit_pm_label',0,0,0,0,0),(253,16,'delete_pm_label',0,0,0,0,0),(254,16,'print_pm_label',0,0,0,0,0),(255,16,'packing_material_list',0,0,0,0,0),(256,16,'packing_material_add',0,0,0,0,0),(257,16,'packing_material_edit',0,0,0,0,0),(258,16,'packing_material_view',0,0,0,0,0),(259,16,'packing_material_delete',0,0,0,0,0),(260,16,'get-items',0,0,0,0,0),(261,16,'pm_material_issue_list',0,0,0,0,0),(262,16,'pm_material_issue_add',0,0,0,0,0),(263,16,'pm_material_issue_edit',0,0,0,0,0),(264,16,'pm_material_issue_view',0,0,0,0,0),(265,16,'pm_material_issue_delete',0,0,0,0,0),(266,16,'purchase_order_list',0,0,0,0,0),(267,16,'purchase_order_detail',0,0,0,0,0),(268,16,'purchase_order_create',0,0,0,0,0),(269,16,'purchase_order_edit',0,0,0,0,0),(270,16,'purchase_order_delete',0,0,0,0,0),(271,16,'edit_file',0,0,0,0,0),(272,16,'delete_file',0,0,0,0,0),(273,16,'save_uploaded_files',0,0,0,0,0),(274,16,'rm_issuance_report',0,0,0,0,0),(275,16,'export_rm_issuance_excel',0,0,0,0,0),(276,16,'generate_report',0,0,0,0,0),(277,16,'export_report_excel',0,0,0,0,0),(278,16,'pm_material_issue_report',0,0,0,0,0),(279,16,'export_pm_material_issue_excel',0,0,0,0,0),(280,16,'packing_slip_report',0,0,0,0,0),(281,16,'export_packing_slip_excel',0,0,0,0,0),(282,16,'fg_inward_material_report',0,0,0,0,0),(283,16,'export_fg_inward_material_excel',0,0,0,0,0),(284,16,'stock_dashboard',0,0,0,0,0),(285,16,'finished_inward_material_list',0,0,0,0,0),(286,16,'finished_inward_material_add',0,0,0,0,0),(287,16,'finished_inward_material_edit',0,0,0,0,0),(288,16,'finished_inward_material_view',0,0,0,0,0),(289,16,'finished_inward_material_delete',0,0,0,0,0),(290,16,'create_packing_slip',0,0,0,0,0),(291,16,'packing_slip_list',0,0,0,0,0),(292,16,'view_packing_slip',0,0,0,0,0),(293,16,'edit_packing_slip',0,0,0,0,0),(294,16,'delete_packing_slip',0,0,0,0,0),(295,16,'create_fg_label',0,0,0,0,0),(296,16,'fg_label_list',0,0,0,0,0),(297,16,'edit_fg_label',0,0,0,0,0),(298,16,'delete_fg_label',0,0,0,0,0),(299,16,'print_fg_label',0,0,0,0,0),(300,16,'fg_label_details',0,0,0,0,0),(301,16,'am_inward_material_list',0,0,0,0,0),(302,16,'am_inward_material_add',0,0,0,0,0),(303,16,'am_inward_material_edit',0,0,0,0,0),(304,16,'am_inward_material_view',0,0,0,0,0),(305,16,'am_inward_material_delete',0,0,0,0,0),(306,16,'asset_material_issue_list',0,0,0,0,0),(307,16,'asset_material_issue_add',0,0,0,0,0),(308,16,'asset_material_issue_edit',0,0,0,0,0),(309,16,'asset_material_issue_view',0,0,0,0,0),(310,16,'asset_material_issue_delete',0,0,0,0,0),(311,16,'user_list',1,0,0,0,0),(312,16,'user_add',1,0,0,0,0),(313,16,'user_edit',1,0,0,0,0),(314,16,'user_delete',1,0,0,0,0),(315,16,'user_detail',1,0,0,0,0),(316,16,'user_rights_form',1,0,0,0,0),(317,16,'unauthorized',0,0,0,0,0),(318,16,'stock_statement',1,0,0,0,0),(319,16,'dashboard',1,0,0,0,0);
/*!40000 ALTER TABLE `administrator_settings_userrights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_management_aminwardmaterial`
--

DROP TABLE IF EXISTS `asset_management_aminwardmaterial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asset_management_aminwardmaterial` (
  `id` int NOT NULL AUTO_INCREMENT,
  `invoice_no` varchar(50) NOT NULL,
  `invoice_date` date NOT NULL,
  `vendor_code` varchar(100) NOT NULL,
  `vendor_name` varchar(255) NOT NULL,
  `grn_no` varchar(50) DEFAULT NULL,
  `grn_date` date NOT NULL DEFAULT '2000-01-01',
  `store` varchar(100) NOT NULL,
  `po_date` date NOT NULL,
  `po_no` varchar(50) NOT NULL,
  `bag_type` varchar(50) NOT NULL,
  `remarks` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `grn_no` (`grn_no`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_management_aminwardmaterial`
--

LOCK TABLES `asset_management_aminwardmaterial` WRITE;
/*!40000 ALTER TABLE `asset_management_aminwardmaterial` DISABLE KEYS */;
INSERT INTO `asset_management_aminwardmaterial` VALUES (6,'3','2025-04-09','VC02','SR TRADERS','25-26/02','2025-04-05','FG Store','2025-04-02','6','B02',''),(7,'12','2025-04-15','VC02','SR TRADERS','25-26/03','2025-04-14','FG Store','2025-04-10','122','B01','NA');
/*!40000 ALTER TABLE `asset_management_aminwardmaterial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_management_aminwardmaterialitem`
--

DROP TABLE IF EXISTS `asset_management_aminwardmaterialitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asset_management_aminwardmaterialitem` (
  `id` int NOT NULL AUTO_INCREMENT,
  `am_inward_material_id` int DEFAULT NULL,
  `item_code` varchar(100) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `uom` varchar(100) NOT NULL,
  `quantity` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `am_inward_material_id` (`am_inward_material_id`),
  CONSTRAINT `asset_management_aminwardmaterialitem_ibfk_1` FOREIGN KEY (`am_inward_material_id`) REFERENCES `asset_management_aminwardmaterial` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_management_aminwardmaterialitem`
--

LOCK TABLES `asset_management_aminwardmaterialitem` WRITE;
/*!40000 ALTER TABLE `asset_management_aminwardmaterialitem` DISABLE KEYS */;
INSERT INTO `asset_management_aminwardmaterialitem` VALUES (13,6,'31','31','KG',1.00),(14,7,'31','31','KG',1.00);
/*!40000 ALTER TABLE `asset_management_aminwardmaterialitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_management_assetmaterialissue`
--

DROP TABLE IF EXISTS `asset_management_assetmaterialissue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asset_management_assetmaterialissue` (
  `id` int NOT NULL AUTO_INCREMENT,
  `iss_no` int DEFAULT NULL,
  `date_of_issue` date NOT NULL,
  `issued_to_whom` varchar(255) NOT NULL,
  `remarks` text,
  `bag_type` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `iss_no` (`iss_no`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_management_assetmaterialissue`
--

LOCK TABLES `asset_management_assetmaterialissue` WRITE;
/*!40000 ALTER TABLE `asset_management_assetmaterialissue` DISABLE KEYS */;
INSERT INTO `asset_management_assetmaterialissue` VALUES (4,1,'2025-04-14','krish','NA','B02');
/*!40000 ALTER TABLE `asset_management_assetmaterialissue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asset_management_assetmaterialissuesub`
--

DROP TABLE IF EXISTS `asset_management_assetmaterialissuesub`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asset_management_assetmaterialissuesub` (
  `id` int NOT NULL AUTO_INCREMENT,
  `issue_id` int DEFAULT NULL,
  `item_code` varchar(50) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `uom` varchar(50) NOT NULL,
  `quantity` decimal(10,2) NOT NULL,
  `stock_quantity` decimal(10,2) NOT NULL,
  `batch_no` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `issue_id` (`issue_id`),
  CONSTRAINT `asset_management_assetmaterialissuesub_ibfk_1` FOREIGN KEY (`issue_id`) REFERENCES `asset_management_assetmaterialissue` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset_management_assetmaterialissuesub`
--

LOCK TABLES `asset_management_assetmaterialissuesub` WRITE;
/*!40000 ALTER TABLE `asset_management_assetmaterialissuesub` DISABLE KEYS */;
INSERT INTO `asset_management_assetmaterialissuesub` VALUES (8,4,'31','31','KG',1.00,1.00,'1');
/*!40000 ALTER TABLE `asset_management_assetmaterialissuesub` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add vendor detail',7,'add_vendordetail'),(26,'Can change vendor detail',7,'change_vendordetail'),(27,'Can delete vendor detail',7,'delete_vendordetail'),(28,'Can view vendor detail',7,'view_vendordetail'),(29,'Can add category',8,'add_category'),(30,'Can change category',8,'change_category'),(31,'Can delete category',8,'delete_category'),(32,'Can view category',8,'view_category'),(33,'Can add customer detail',9,'add_customerdetail'),(34,'Can change customer detail',9,'change_customerdetail'),(35,'Can delete customer detail',9,'delete_customerdetail'),(36,'Can view customer detail',9,'view_customerdetail'),(37,'Can add company',10,'add_company'),(38,'Can change company',10,'change_company'),(39,'Can delete company',10,'delete_company'),(40,'Can view company',10,'view_company'),(41,'Can add item detail',11,'add_itemdetail'),(42,'Can change item detail',11,'change_itemdetail'),(43,'Can delete item detail',11,'delete_itemdetail'),(44,'Can view item detail',11,'view_itemdetail'),(45,'Can add raw inward material',12,'add_rawinwardmaterial'),(46,'Can change raw inward material',12,'change_rawinwardmaterial'),(47,'Can delete raw inward material',12,'delete_rawinwardmaterial'),(48,'Can view raw inward material',12,'view_rawinwardmaterial'),(49,'Can add raw inward material sub',13,'add_rawinwardmaterialsub'),(50,'Can change raw inward material sub',13,'change_rawinwardmaterialsub'),(51,'Can delete raw inward material sub',13,'delete_rawinwardmaterialsub'),(52,'Can view raw inward material sub',13,'view_rawinwardmaterialsub'),(53,'Can add bag_ boxes details',14,'add_bag_boxesdetails'),(54,'Can change bag_ boxes details',14,'change_bag_boxesdetails'),(55,'Can delete bag_ boxes details',14,'delete_bag_boxesdetails'),(56,'Can view bag_ boxes details',14,'view_bag_boxesdetails'),(57,'Can add store detail',15,'add_storedetail'),(58,'Can change store detail',15,'change_storedetail'),(59,'Can delete store detail',15,'delete_storedetail'),(60,'Can view store detail',15,'view_storedetail'),(61,'Can add inward material item',16,'add_inwardmaterialitem'),(62,'Can change inward material item',16,'change_inwardmaterialitem'),(63,'Can delete inward material item',16,'delete_inwardmaterialitem'),(64,'Can view inward material item',16,'view_inwardmaterialitem'),(65,'Can add inward material',17,'add_inwardmaterial'),(66,'Can change inward material',17,'change_inwardmaterial'),(67,'Can delete inward material',17,'delete_inwardmaterial'),(68,'Can view inward material',17,'view_inwardmaterial'),(69,'Can add asset material issue',18,'add_assetmaterialissue'),(70,'Can change asset material issue',18,'change_assetmaterialissue'),(71,'Can delete asset material issue',18,'delete_assetmaterialissue'),(72,'Can view asset material issue',18,'view_assetmaterialissue'),(73,'Can add asset material issue sub',19,'add_assetmaterialissuesub'),(74,'Can change asset material issue sub',19,'change_assetmaterialissuesub'),(75,'Can delete asset material issue sub',19,'delete_assetmaterialissuesub'),(76,'Can view asset material issue sub',19,'view_assetmaterialissuesub'),(77,'Can add pm label generation item',20,'add_pmlabelgenerationitem'),(78,'Can change pm label generation item',20,'change_pmlabelgenerationitem'),(79,'Can delete pm label generation item',20,'delete_pmlabelgenerationitem'),(80,'Can view pm label generation item',20,'view_pmlabelgenerationitem'),(81,'Can add rm label generation',21,'add_rmlabelgeneration'),(82,'Can change rm label generation',21,'change_rmlabelgeneration'),(83,'Can delete rm label generation',21,'delete_rmlabelgeneration'),(84,'Can view rm label generation',21,'view_rmlabelgeneration'),(85,'Can add rm material issue',22,'add_rmmaterialissue'),(86,'Can change rm material issue',22,'change_rmmaterialissue'),(87,'Can delete rm material issue',22,'delete_rmmaterialissue'),(88,'Can view rm material issue',22,'view_rmmaterialissue'),(89,'Can add rm material issue sub',23,'add_rmmaterialissuesub'),(90,'Can change rm material issue sub',23,'change_rmmaterialissuesub'),(91,'Can delete rm material issue sub',23,'delete_rmmaterialissuesub'),(92,'Can view rm material issue sub',23,'view_rmmaterialissuesub'),(93,'Can add fg inward material',24,'add_fginwardmaterial'),(94,'Can change fg inward material',24,'change_fginwardmaterial'),(95,'Can delete fg inward material',24,'delete_fginwardmaterial'),(96,'Can view fg inward material',24,'view_fginwardmaterial'),(97,'Can add fg inward material sub',25,'add_fginwardmaterialsub'),(98,'Can change fg inward material sub',25,'change_fginwardmaterialsub'),(99,'Can delete fg inward material sub',25,'delete_fginwardmaterialsub'),(100,'Can view fg inward material sub',25,'view_fginwardmaterialsub'),(101,'Can add packing slip item',26,'add_packingslipitem'),(102,'Can change packing slip item',26,'change_packingslipitem'),(103,'Can delete packing slip item',26,'delete_packingslipitem'),(104,'Can view packing slip item',26,'view_packingslipitem'),(105,'Can add packing slip',27,'add_packingslip'),(106,'Can change packing slip',27,'change_packingslip'),(107,'Can delete packing slip',27,'delete_packingslip'),(108,'Can view packing slip',27,'view_packingslip'),(109,'Can add fg label generation',28,'add_fglabelgeneration'),(110,'Can change fg label generation',28,'change_fglabelgeneration'),(111,'Can delete fg label generation',28,'delete_fglabelgeneration'),(112,'Can view fg label generation',28,'view_fglabelgeneration'),(113,'Can add packing inward material',29,'add_packinginwardmaterial'),(114,'Can change packing inward material',29,'change_packinginwardmaterial'),(115,'Can delete packing inward material',29,'delete_packinginwardmaterial'),(116,'Can view packing inward material',29,'view_packinginwardmaterial'),(117,'Can add packing inward material sub',30,'add_packinginwardmaterialsub'),(118,'Can change packing inward material sub',30,'change_packinginwardmaterialsub'),(119,'Can delete packing inward material sub',30,'delete_packinginwardmaterialsub'),(120,'Can view packing inward material sub',30,'view_packinginwardmaterialsub'),(121,'Can add pmmaterialissue',31,'add_pmmaterialissue'),(122,'Can change pmmaterialissue',31,'change_pmmaterialissue'),(123,'Can delete pmmaterialissue',31,'delete_pmmaterialissue'),(124,'Can view pmmaterialissue',31,'view_pmmaterialissue'),(125,'Can add pmmaterialissuesub',32,'add_pmmaterialissuesub'),(126,'Can change pmmaterialissuesub',32,'change_pmmaterialissuesub'),(127,'Can delete pmmaterialissuesub',32,'delete_pmmaterialissuesub'),(128,'Can view pmmaterialissuesub',32,'view_pmmaterialissuesub'),(129,'Can add purchase order',33,'add_purchaseorder'),(130,'Can change purchase order',33,'change_purchaseorder'),(131,'Can delete purchase order',33,'delete_purchaseorder'),(132,'Can view purchase order',33,'view_purchaseorder'),(133,'Can add uploaded file',34,'add_uploadedfile'),(134,'Can change uploaded file',34,'change_uploadedfile'),(135,'Can delete uploaded file',34,'delete_uploadedfile'),(136,'Can view uploaded file',34,'view_uploadedfile'),(137,'Can add purchase order item',35,'add_purchaseorderitem'),(138,'Can change purchase order item',35,'change_purchaseorderitem'),(139,'Can delete purchase order item',35,'delete_purchaseorderitem'),(140,'Can view purchase order item',35,'view_purchaseorderitem'),(141,'Can add am inward material',36,'add_aminwardmaterial'),(142,'Can change am inward material',36,'change_aminwardmaterial'),(143,'Can delete am inward material',36,'delete_aminwardmaterial'),(144,'Can view am inward material',36,'view_aminwardmaterial'),(145,'Can add am inward material item',37,'add_aminwardmaterialitem'),(146,'Can change am inward material item',37,'change_aminwardmaterialitem'),(147,'Can delete am inward material item',37,'delete_aminwardmaterialitem'),(148,'Can view am inward material item',37,'view_aminwardmaterialitem'),(149,'Can add stock statement',38,'add_stockstatement'),(150,'Can change stock statement',38,'change_stockstatement'),(151,'Can delete stock statement',38,'delete_stockstatement'),(152,'Can view stock statement',38,'view_stockstatement'),(153,'Can add user',39,'add_user'),(154,'Can change user',39,'change_user'),(155,'Can delete user',39,'delete_user'),(156,'Can view user',39,'view_user');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$600000$6X0V87d6rgKT0Ty54jms6P$vVvZPTnT2vxts+6cvyORPxXQYy1Ly/3Zn4D1mp1v2TA=','2025-05-02 09:36:31.130729',1,'admin','','','keerthi@gmail.com',1,1,'2025-03-12 06:03:28.239978'),(2,'pbkdf2_sha256$600000$sRtd8epQArFbl0Vi1LLMNZ$2gTNMCehOg4rmLz4ISsKwGH6Wbe1lw0jlhRxdI4Xkvg=','2025-03-12 10:14:50.960042',1,'a','','','shirisha@gmail.com',1,1,'2025-03-12 10:14:07.450616'),(3,'pbkdf2_sha256$870000$AGZkBNMqCDeGQ6PIFxJaOn$Yx/M84l0nDDTHYtotp0JioLVkrTBz/ohrf+/7Xe3aPM=','2025-03-19 05:32:01.063337',1,'s','','','mukesh@gmail.com',1,1,'2025-03-19 05:31:35.963293');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(39,'Administrator_settings','user'),(36,'asset_management','aminwardmaterial'),(37,'asset_management','aminwardmaterialitem'),(18,'asset_management','assetmaterialissue'),(19,'asset_management','assetmaterialissuesub'),(17,'asset_management','inwardmaterial'),(16,'asset_management','inwardmaterialitem'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(24,'finished_goods','fginwardmaterial'),(25,'finished_goods','fginwardmaterialsub'),(28,'finished_goods','fglabelgeneration'),(27,'finished_goods','packingslip'),(26,'finished_goods','packingslipitem'),(14,'master','bag_boxesdetails'),(8,'master','category'),(10,'master','company'),(9,'master','customerdetail'),(11,'master','itemdetail'),(15,'master','storedetail'),(7,'master','vendordetail'),(29,'packing_materials','packinginwardmaterial'),(30,'packing_materials','packinginwardmaterialsub'),(20,'packing_materials','pmlabelgenerationitem'),(31,'packing_materials','pmmaterialissue'),(32,'packing_materials','pmmaterialissuesub'),(33,'packing_materials','purchaseorder'),(35,'packing_materials','purchaseorderitem'),(34,'packing_materials','uploadedfile'),(12,'raw_material','rawinwardmaterial'),(13,'raw_material','rawinwardmaterialsub'),(21,'raw_material','rmlabelgeneration'),(22,'raw_material','rmmaterialissue'),(23,'raw_material','rmmaterialissuesub'),(38,'reports','stockstatement'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2025-03-12 05:55:40.646857'),(2,'auth','0001_initial','2025-03-12 05:55:41.129983'),(3,'admin','0001_initial','2025-03-12 05:55:41.238032'),(4,'admin','0002_logentry_remove_auto_add','2025-03-12 05:55:41.248126'),(5,'admin','0003_logentry_add_action_flag_choices','2025-03-12 05:55:41.254599'),(6,'contenttypes','0002_remove_content_type_name','2025-03-12 05:55:41.347975'),(7,'auth','0002_alter_permission_name_max_length','2025-03-12 05:55:41.399322'),(8,'auth','0003_alter_user_email_max_length','2025-03-12 05:55:41.430378'),(9,'auth','0004_alter_user_username_opts','2025-03-12 05:55:41.439939'),(10,'auth','0005_alter_user_last_login_null','2025-03-12 05:55:41.483976'),(11,'auth','0006_require_contenttypes_0002','2025-03-12 05:55:41.488524'),(12,'auth','0007_alter_validators_add_error_messages','2025-03-12 05:55:41.495436'),(13,'auth','0008_alter_user_username_max_length','2025-03-12 05:55:41.558349'),(14,'auth','0009_alter_user_last_name_max_length','2025-03-12 05:55:41.625261'),(15,'auth','0010_alter_group_name_max_length','2025-03-12 05:55:41.646038'),(16,'auth','0011_update_proxy_permissions','2025-03-12 05:55:41.654275'),(17,'auth','0012_alter_user_first_name_max_length','2025-03-12 05:55:41.739426'),(18,'master','0001_initial','2025-03-12 05:55:41.771289'),(19,'master','0002_category','2025-03-12 05:55:41.795419'),(20,'master','0003_customerdetail','2025-03-12 05:55:41.828409'),(21,'master','0004_company','2025-03-12 05:55:41.844477'),(22,'master','0005_inwardmaterial_rawinwardmaterialsub','2025-03-12 05:55:42.072595'),(23,'master','0006_itemdetail','2025-03-12 05:55:42.094431'),(24,'master','0007_remove_itemdetail_active','2025-03-12 05:55:42.125457'),(25,'master','0008_delete_itemdetail','2025-03-12 05:55:42.132759'),(26,'master','0009_itemdetail','2025-03-12 05:55:42.204995'),(27,'master','0010_remove_rawinwardmaterialsub_inward_material_and_more','2025-03-12 05:55:42.271234'),(28,'master','0011_alter_company_company_address_alter_company_name','2025-03-12 05:55:42.279456'),(29,'raw_material','0001_initial','2025-03-12 05:55:42.363582'),(30,'sessions','0001_initial','2025-03-12 05:55:42.399213'),(32,'asset_management','0001_initial','2025-03-13 05:35:56.199273'),(33,'asset_management','0002_assetmaterialissue_assetmaterialissuesub','2025-03-13 05:35:56.310824'),(34,'asset_management','0003_alter_inwardmaterial_grn_date_and_more','2025-03-13 10:23:28.990696'),(35,'asset_management','0004_alter_inwardmaterial_grn_date_and_more','2025-03-13 11:05:23.040771'),(36,'asset_management','0005_alter_assetmaterialissue_date_of_issue_and_more','2025-03-13 11:09:11.161594'),(37,'asset_management','0006_alter_assetmaterialissue_date_of_issue','2025-03-13 11:39:11.323961'),(38,'asset_management','0007_alter_assetmaterialissue_date_of_issue','2025-03-14 06:06:32.843504'),(39,'asset_management','0008_alter_inwardmaterial_grn_date','2025-03-14 07:50:09.781543'),(40,'packing_materials','0001_initial','2025-03-17 05:39:09.107550'),(41,'raw_material','0002_rmlabelgeneration_rmmaterialissue_and_more','2025-03-17 11:31:41.158829'),(42,'finished_goods','0001_initial','2025-03-18 07:48:19.349725'),(43,'packing_materials','0002_packinginwardmaterial_pmmaterialissue_and_more','2025-03-18 09:27:31.329061'),(44,'packing_materials','0003_remove_packinginwardmaterial_issue_id','2025-03-18 09:38:06.098204'),(45,'packing_materials','0004_purchaseorder_purchaseorderitem_uploadedfile','2025-03-18 10:20:37.786567'),(46,'master','0002_itemdetail_uom','2025-03-20 10:07:31.859118'),(47,'raw_material','0003_alter_rawinwardmaterial_grn_date_and_more','2025-03-21 04:41:02.848973'),(48,'reports','0001_initial','2025-03-21 04:41:02.880140'),(49,'packing_materials','0005_alter_packinginwardmaterial_grn_date_and_more','2025-03-21 04:55:18.175599'),(50,'master','0003_itemdetail_alt_uom_itemdetail_opening_stock_and_more','2025-04-07 11:57:16.658990');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('0ht3zjng25iyhqs0bxe8up769xg2v1br','eyJ1c2VyX2lkIjoxLCJ1c2VybmFtZSI6Im11a2VzaCIsImxvY2F0aW9uIjoiQ2hlbm5haSJ9:1u25rd:3EGc3EmlSboQaREkO1iZuLBa6FlTMpIEwytcBOJl0Lo','2025-04-22 10:07:29.912375'),('4ou9tf40qc9lnp5etpdfl55ktzfybv6c','eyJ1c2VyX2lkIjoxLCJ1c2VybmFtZSI6Im11a2VzaCIsImxvY2F0aW9uIjoiQ2hlbm5haSJ9:1ty8MU:AmA0iTs3Km6y7GFlxGLBVeDI4m8k6NZQB9gG7r3F5-g','2025-04-11 11:58:58.674783'),('4t4qhupmhnbpvq772xycbw22gxtjbo7j','.eJyrViotTi2Kz0xRsjLSAbPzEnNTlayUkrMLFIrz00rKE4tSlXSUcvKTE0sy8_OAMk6peemJOaVFpUoQDfEFqUW5mcXFQNliJavq2loA1-EeEw:1uAmi8:0sZXyc81-LtsYg7gVh33t3TNL39B4uj79SPwyvRxE88','2025-05-16 09:29:36.703815'),('5hkk8vszyus5dje4jmnjw3we7aihv59w','eyJ1c2VyX2lkIjoxLCJ1c2VybmFtZSI6Im11a2VzaCIsImxvY2F0aW9uIjoiQ2hlbm5haSJ9:1u9enV:g4OglgsGg6ZLGhw4VYRZz7pP_1HFt6B9IWHKsXmeXvI','2025-05-13 06:50:29.860675'),('9sg5rupm4gbenc96yob8pmxkoxli1875','eyJ1c2VyX2lkIjoxLCJ1c2VybmFtZSI6Im11a2VzaCIsImxvY2F0aW9uIjoiQ2hlbm5haSJ9:1tyQZC:c7UGJjcZ3xxu1pFSbk90qKKaAniYS6MS5xQGDO4JQRw','2025-04-12 07:25:18.848264'),('anzd31b7vickr66yefr0ntmer5hswu19','eyJ1c2VyX2lkIjoxLCJ1c2VybmFtZSI6Im11a2VzaCIsImxvY2F0aW9uIjoiQ2hlbm5haSJ9:1u3TMB:OXnw2koOjpwHEFyJKzeSwUC3PSkCXLRqH7v5aHkTW9E','2025-04-26 05:24:43.103651'),('aycyrt1iodd8ssy1cwebpwjeucap4lws','.eJxVjE0OwiAYBe_C2hCgtFCX7j0D-f6QqqFJaVfGu2uTLnT7Zua9VIJtLWlrsqSJ1Vl16vS7IdBD6g74DvU2a5rrukyod0UftOnrzPK8HO7fQYFWvrVFymgHJj9GG0ykHs1ghTuRbMA6F4wjgshA4IH7zCFkcdFb9j6OqN4fATQ4sw:1tum25:_cxPbx_qXFIzMaBFG_PahsImHnSFLNdVeWuMSSgnbS4','2025-04-02 05:32:01.075267'),('b6e7go4phs9q0rzswhhd3jdvs8ku5lov','eyJ1c2VyX2lkIjoyLCJ1c2VybmFtZSI6ImNrcCBzb2Z0d2FyZSIsImxvY2F0aW9uIjoiQmVuZ2FsdXJ1In0:1u3SdS:QmYZTpBPUew5rCvFlTSoB-hNPIhG7nsfAGTpRy0iILQ','2025-04-26 04:38:30.588121'),('blszr8pcoy3dko9be5s6eke2lqjaetda','eyJ1c2VyX2lkIjoxLCJ1c2VybmFtZSI6Im11a2VzaCIsImxvY2F0aW9uIjoiQ2hlbm5haSJ9:1u3XPe:LEBPL97ZM5H6vJYO8akui6vA3xXIDoUCxlgf7HI62qU','2025-04-26 09:44:34.395320'),('c7n2pl0vrbga6er58xgcvowqkpewik2w','.eJxVjssOwiAURP-FddPwKoJLXfsNzQUugm0h6WNl_HdpbIzuJjOTM_MkPWxr7LcF5z55ciaMNL-eBTdg3gP_gHwvrSt5nZNt90p7pEt7Kx7Hy9H9A0RY4o7FTglEQcFLoajxTkigCjjXVGveBanQIgZjrGZWqJPTjKnAPQZqnMQK_X5kH51hwkqetgHrREPG4mBNJVfvGjFnSOT1BjXvSXU:1ty6Tx:ouehbQw0nzwFCcUl33nQW6f3CLe3QiTED_imSwvZyMM','2025-04-11 09:58:33.103452'),('cz56ui67gkaectj2rzt9nm5e0nh8aa3s','e30:1uAmop:wwJ5mNzZ3v8iCspP-oj5APXXKty7QxtAiOFsagpPPsY','2025-05-16 09:36:31.125874'),('d7m6bhb5049gybvfz7fedblaqsgis42m','eyJ1c2VyX2lkIjoyLCJ1c2VybmFtZSI6ImNrcCBzb2Z0d2FyZSIsImxvY2F0aW9uIjoiQmVuZ2FsdXJ1In0:1u3Bp7:WFsXvpS1IBx11Dho4PaMVDzKTgJFtM0C_VaBdMAiqws','2025-04-25 10:41:25.967642'),('e5is3x57dnzuhewlvdnj54jz4rm6kjib','.eJxVjckOwiAURf-FddMwFaFLXfsNzQMegq2QdFgZ_11qGpPubs6d3mRbcB6SJz1rfjrDC0lPXtuISyQNmYqDNZVc2S1izpAqHGBb4_CvEnZmFtyIeTf8E_KjtK7kdU623SPt4S7tvXicrkf2NBChftdZ7JRAFBS8FIoa74QEqoBzTbXmXZAKLWIwxmpmhbo4zZgK3GOgxkkkny-DyUl1:1u1244:spKBOyh3ePr9CFeVeqnwuwzV2AwqHCLqFjONmVVncA8','2025-04-19 11:51:56.422418'),('fj7kl07ap2gvwz8k35tvjsq7vhmer3au','eyJ1c2VyX2lkIjoxLCJ1c2VybmFtZSI6Im11a2VzaCIsImxvY2F0aW9uIjoiQ2hlbm5haSJ9:1ty7u4:R8dcRxs6nBIv8rXbCorD15Q0pfhEq6uKn2W85-qzGfI','2025-04-11 11:29:36.028353'),('fri72ut291gvhh03wec6wxs7pv8tf1t4','eyJ1c2VyX2lkIjoxLCJ1c2VybmFtZSI6Im11a2VzaCIsImxvY2F0aW9uIjoiQ2hlbm5haSJ9:1u0aZP:hoc4vzkElyuSvm1JlQM5MLWcS9t2fISr3BE-BTyz2rg','2025-04-18 06:30:27.617829'),('fuxarnzmtyjg1hogpwqsitw8op8w2w8z','.eJxVjMsOwiAQRf-FtSHDG1267zeQYQCpGkhKuzL-uzbpQrf3nHNfLOC21rCNvIQ5sQuT7PS7RaRHbjtId2y3zqm3dZkj3xV-0MGnnvLzerh_BxVH_dZeKziDIshKkS2knSiy5OjBe4veWY8yCRkxGSpRC4EgDTiKJRsFmNj7A9MgN-k:1tsJ6w:WHwqPi6zcZ_hBzfzVhUvSrmmpNR6Jqh31cN0InnMQMc','2025-03-26 10:14:50.960042'),('kjdps5wwk81c837qz674epbuwuvrdpiq','.eJxVjMsOwiAQAP-FsyG8uoJH734DWdhFqoYmpT0Z_92Q9KDXmcm8RcR9q3HvvMaZxEVocfplCfOT2xD0wHZfZF7ats5JjkQetsvbQvy6Hu3foGKvY8sTWGarkJwFFShbhwrQGK-8N1NxwIm5hJC8ThbO2WsNxRAXFbJj8fkC1lY31w:1txODZ:JVTG2frTmtrt2_Bu6q1k1d6QBuunrsNoV7ngDoznado','2025-04-09 10:42:41.050743'),('kujhnwjdh809tdwszfsiig7mc80apz4f','eyJ1c2VyX2lkIjo1LCJ1c2VybmFtZSI6IkFkbWluIiwibG9jYXRpb24iOiJBbGwifQ:1u5cQV:VMSpOzzXO0xPFidmfsgRXnVHo1d7l3q77Q9-bxoKpZw','2025-05-02 03:30:03.458711'),('l2ut26ae8ce16sskwdtcqelp1wct4ugj','eyJ1c2VyX2lkIjoxLCJ1c2VybmFtZSI6Im11a2VzaCIsImxvY2F0aW9uIjoiQ2hlbm5haSJ9:1ty7MQ:jmYgunUGC03y6GCskI0cnJyIuvBsm9J3w2M2Z9SWo4g','2025-04-11 10:54:50.067660'),('lulfy6t7mb10ctg8z5vjc9e4u9pug1r4','eyJ1c2VyX2lkIjoxLCJ1c2VybmFtZSI6Im11a2VzaCIsImxvY2F0aW9uIjoiQ2hlbm5haSJ9:1tyQi0:dZBNzTCepBtw9R3gxotByioNwkG0Ot7T0k65LiYh9hY','2025-04-12 07:34:24.774857'),('ma2eeexs357z88eoe3q852zsu53el0pk','.eJxVjEEOwiAQRe_C2pCCU6Au3fcMZGYYpGpoUtqV8e7apAvd_vfef6mI21ri1mSJU1IXZdTpdyPkh9QdpDvW26x5rusykd4VfdCmxznJ83q4fwcFW_nWguwsA3Fma3jwGVLgYHPu-84DWDkTU7ADdE6CSclYNB48kwcnlJ16fwADRjhl:1ttLaK:ymFi4jCnfangDOHMBZoCyjMdP7qPOBQIDjgNFRvzEl0','2025-03-29 07:05:28.487859'),('n0uz8vif5h7ql5alo8byaosnjq4juqrh','eyJ1c2VyX2lkIjoyLCJ1c2VybmFtZSI6ImNrcCBzb2Z0d2FyZSIsImxvY2F0aW9uIjoiQmVuZ2FsdXJ1In0:1uA5F2:vFuGowG-gJpo0rcwnxCsRxAzMro20IsTmZpa5dcbe_k','2025-05-14 11:04:40.941896'),('nqx29mdmyaom20o5li6njdocart9cnkc','eyJ1c2VyX2lkIjoyLCJ1c2VybmFtZSI6ImNrcCBzb2Z0d2FyZSIsImxvY2F0aW9uIjoiQmVuZ2FsdXJ1In0:1u7o5c:mdINjrI57MrdyNof9HUpAeOuSrz6uDKSTw6Qk-TpoAw','2025-05-08 04:21:32.171956'),('ogiaq537zdls13ww44m48hrlvh135oa2','.eJxVjMsOwiAQAP-FsyG8uoJH734DWdhFqoYmpT0Z_92Q9KDXmcm8RcR9q3HvvMaZxEVocfplCfOT2xD0wHZfZF7ats5JjkQetsvbQvy6Hu3foGKvY8sTWGarkJwFFShbhwrQGK-8N1NxwIm5hJC8ThbO2WsNxRAXFbJj8fkC1lY31w:1txJIq:_I8R_lakd4FCBISlN2c0eDbePibLoX8gMIiHkt62Auk','2025-04-09 05:27:48.422185'),('p53z5nkbw8g6c0kxhr6yqo9d3opd6lve','eyJ1c2VyX2lkIjo1LCJ1c2VybmFtZSI6IkFkbWluIiwibG9jYXRpb24iOiJBbGwifQ:1u0E01:jiBwH6yBEqrhfceRDG2zFsC82y6leTpzg1Bnp3zwyok','2025-04-17 06:24:25.307433'),('p547f4543irxou45xhgslguekg8iqb8t','.eJxVjMsOwiAQAP-FsyG8uoJH734DWdhFqoYmpT0Z_92Q9KDXmcm8RcR9q3HvvMaZxEVocfplCfOT2xD0wHZfZF7ats5JjkQetsvbQvy6Hu3foGKvY8sTWGarkJwFFShbhwrQGK-8N1NxwIm5hJC8ThbO2WsNxRAXFbJj8fkC1lY31w:1txL26:RlsaK7QDiRV8BAZxb5AXvXxXQ3DFTbr8iP1JzToj8OA','2025-04-09 07:18:38.005870'),('s6buez7ndajful1hc0471blfah636l8y','.eJxNjLEOgCAMRH_FdHZxcWDUDzENVm2AQqjEwfjvksjgeO_u3Q1FKS-8ghnG_guCgcCAdanTuJ0XZoJWJcqBVTmKgrmfRn20eFZWpYlkR19yaUb7CsWRHpX9pvNBIsjwvCJbLp0:1uB4Mf:XCGa_9fQAltSDUehA5Kixjp1iRSVidyBFejCEpukdhY','2025-05-17 04:20:37.101537'),('t1n2ykb223ynmd7tzfljzlvuyxmx23vq','eyJ1c2VyX2lkIjoxLCJ1c2VybmFtZSI6Im11a2VzaCIsImxvY2F0aW9uIjoiQ2hlbm5haSJ9:1ty8yj:G6TiiWF8aSdDlwWnFJA5wrw-77FpX_Xwk5GCPDPsqWo','2025-04-11 12:38:29.892332'),('t29agpxuu6xp8z2mt8c56t4kyepi0kcn','.eJxVjEEOwiAQRe_C2pCCU6Au3fcMZGYYpGpoUtqV8e7apAvd_vfef6mI21ri1mSJU1IXZdTpdyPkh9QdpDvW26x5rusykd4VfdCmxznJ83q4fwcFW_nWguwsA3Fma3jwGVLgYHPu-84DWDkTU7ADdE6CSclYNB48kwcnlJ16fwADRjhl:1ttKDN:K1kJkManjX2UPJalb55rPsDoiont52hKrujLq-yKR2Y','2025-03-29 05:37:41.359105'),('un2ccwx8tdxgfftcasyhhac1e35wdvgb','.eJxVjMsOwiAQAP-FsyG8uoJH734DWdhFqoYmpT0Z_92Q9KDXmcm8RcR9q3HvvMaZxEVocfplCfOT2xD0wHZfZF7ats5JjkQetsvbQvy6Hu3foGKvY8sTWGarkJwFFShbhwrQGK-8N1NxwIm5hJC8ThbO2WsNxRAXFbJj8fkC1lY31w:1txJec:j5ItbLnLOChuVKDbN5E7Zd-AjxrEm0wZoBMGPhq9kiM','2025-04-09 05:50:18.841499'),('unp3yoz2hlqvrk1xqggokpbqldweglcd','eyJ1c2VyX2lkIjoxLCJ1c2VybmFtZSI6Im11a2VzaCIsImxvY2F0aW9uIjoiQ2hlbm5haSJ9:1tyP4R:0JTaMn4CHt1UJimg7SXjgFtC7ZLFgQSwKvtH_n7l3KY','2025-04-12 05:49:27.449839'),('utxy7zv07smrgqtnih7kcoyjcsj8bynb','eyJ1c2VyX2lkIjoxLCJ1c2VybmFtZSI6Im11a2VzaCIsImxvY2F0aW9uIjoiQ2hlbm5haSJ9:1tySoW:3QBQLB05EW__P-vvObH6MrvptPd6UZbFl2T5_OW_PaE','2025-04-12 09:49:16.186167'),('yal9dn6d8iw0h9iiq4j7ne9p7uwwmwuq','eyJ1c2VyX2lkIjoxLCJ1c2VybmFtZSI6Im11a2VzaCIsImxvY2F0aW9uIjoiQ2hlbm5haSJ9:1tySnG:gWh2vkwOCd_dxly1vOle1RtY3eOi1ywCs-Op4CaK9DE','2025-04-12 09:47:58.166208'),('ybhn5oye4sk2bkhu0msdm7ul0gmn6djf','.eJxVjEEOwiAQRe_C2pCCU6Au3fcMZGYYpGpoUtqV8e7apAvd_vfef6mI21ri1mSJU1IXZdTpdyPkh9QdpDvW26x5rusykd4VfdCmxznJ83q4fwcFW_nWguwsA3Fma3jwGVLgYHPu-84DWDkTU7ADdE6CSclYNB48kwcnlJ16fwADRjhl:1tsFBv:c43Avri7dishFLm6Qz_fJAA3n-hiLJ43FF4GaxLP_y0','2025-03-26 06:03:43.659752'),('ye914kn0jrccc9ztekb7bh8vx51vwtrm','e30:1uAmis:U1edsdOouw5LrCawZ5zCVVdGQ7C7JzunIi6oZg5TcjI','2025-05-16 09:30:22.173340');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finished_goods_fginwardmaterial`
--

DROP TABLE IF EXISTS `finished_goods_fginwardmaterial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `finished_goods_fginwardmaterial` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `inward_no` varchar(50) NOT NULL,
  `inward_date` date NOT NULL,
  `store` varchar(100) NOT NULL,
  `po_date` date NOT NULL,
  `po_no` varchar(50) NOT NULL,
  `remarks` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finished_goods_fginwardmaterial`
--

LOCK TABLES `finished_goods_fginwardmaterial` WRITE;
/*!40000 ALTER TABLE `finished_goods_fginwardmaterial` DISABLE KEYS */;
INSERT INTO `finished_goods_fginwardmaterial` VALUES (9,'11','2025-04-14','FG Store','2025-04-14','3',''),(11,'1','2025-04-29','FG Store','2025-04-08','211','');
/*!40000 ALTER TABLE `finished_goods_fginwardmaterial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finished_goods_fginwardmaterialsub`
--

DROP TABLE IF EXISTS `finished_goods_fginwardmaterialsub`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `finished_goods_fginwardmaterialsub` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `item_code` varchar(100) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `uom` varchar(100) NOT NULL,
  `quantity` decimal(10,2) NOT NULL,
  `box_no` int NOT NULL,
  `mfg_date` date NOT NULL,
  `batch_no` varchar(100) NOT NULL,
  `inward_material_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `finished_goods_fginw_inward_material_id_f11a061e_fk_finished_` (`inward_material_id`),
  CONSTRAINT `finished_goods_fginw_inward_material_id_f11a061e_fk_finished_` FOREIGN KEY (`inward_material_id`) REFERENCES `finished_goods_fginwardmaterial` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finished_goods_fginwardmaterialsub`
--

LOCK TABLES `finished_goods_fginwardmaterialsub` WRITE;
/*!40000 ALTER TABLE `finished_goods_fginwardmaterialsub` DISABLE KEYS */;
INSERT INTO `finished_goods_fginwardmaterialsub` VALUES (19,'RM001','wheat flour','KG',325.00,35252,'2025-04-21','45',11),(20,'FG001','BISCUTS','KG',1000.00,2,'2025-04-07','12',9);
/*!40000 ALTER TABLE `finished_goods_fginwardmaterialsub` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finished_goods_fglabelgeneration`
--

DROP TABLE IF EXISTS `finished_goods_fglabelgeneration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `finished_goods_fglabelgeneration` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `item_name` varchar(255) NOT NULL,
  `batch_no` varchar(255) NOT NULL,
  `packing_qty` int NOT NULL,
  `no_of_bags` int NOT NULL,
  `next_bag_no` varchar(255) NOT NULL,
  `date_of_packing` date NOT NULL,
  `date_of_expiry` date NOT NULL,
  `item_code_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `finished_goods_fglab_item_code_id_b55f9273_fk_master_it` (`item_code_id`),
  CONSTRAINT `finished_goods_fglab_item_code_id_b55f9273_fk_master_it` FOREIGN KEY (`item_code_id`) REFERENCES `master_itemdetail` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finished_goods_fglabelgeneration`
--

LOCK TABLES `finished_goods_fglabelgeneration` WRITE;
/*!40000 ALTER TABLE `finished_goods_fglabelgeneration` DISABLE KEYS */;
INSERT INTO `finished_goods_fglabelgeneration` VALUES (11,'wheat flour','12',4,1,'2','2025-04-16','2025-04-08',31),(12,'Biscuit Cover','12',10,20,'21','2025-04-14','2025-04-25',33);
/*!40000 ALTER TABLE `finished_goods_fglabelgeneration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finished_goods_fglabelgeneration1`
--

DROP TABLE IF EXISTS `finished_goods_fglabelgeneration1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `finished_goods_fglabelgeneration1` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `item_name` varchar(255) NOT NULL,
  `batch_no` varchar(255) NOT NULL,
  `packing_qty` int NOT NULL,
  `no_of_bags` int NOT NULL,
  `next_bag_no` varchar(255) NOT NULL,
  `date_of_packing` date NOT NULL,
  `date_of_expiry` date NOT NULL,
  `item_code_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `master_fglabelgenera_item_code_id_bc5d3883_fk_master_it` (`item_code_id`),
  CONSTRAINT `master_fglabelgenera_item_code_id_bc5d3883_fk_master_it` FOREIGN KEY (`item_code_id`) REFERENCES `master_itemdetail` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finished_goods_fglabelgeneration1`
--

LOCK TABLES `finished_goods_fglabelgeneration1` WRITE;
/*!40000 ALTER TABLE `finished_goods_fglabelgeneration1` DISABLE KEYS */;
/*!40000 ALTER TABLE `finished_goods_fglabelgeneration1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finished_goods_packingslip`
--

DROP TABLE IF EXISTS `finished_goods_packingslip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `finished_goods_packingslip` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `ps_no` varchar(50) NOT NULL,
  `ps_date` date NOT NULL,
  `po_no` varchar(50) NOT NULL,
  `po_date` date NOT NULL,
  `mode_of_transport` varchar(50) NOT NULL,
  `transport_form` varchar(50) NOT NULL,
  `transfer_to_vehicle_no` varchar(50) NOT NULL,
  `transport_name` varchar(50) NOT NULL,
  `customer_id` bigint NOT NULL,
  `trans_to` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `finished_goods_packi_customer_id_3f203069_fk_master_cu` (`customer_id`),
  CONSTRAINT `finished_goods_packi_customer_id_3f203069_fk_master_cu` FOREIGN KEY (`customer_id`) REFERENCES `master_customerdetail` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finished_goods_packingslip`
--

LOCK TABLES `finished_goods_packingslip` WRITE;
/*!40000 ALTER TABLE `finished_goods_packingslip` DISABLE KEYS */;
INSERT INTO `finished_goods_packingslip` VALUES (39,'13','2025-04-09','1','2025-04-18','Car','chennai','TN21AS9090','siva',5,'bangalore'),(40,'14','2025-04-03','1','2025-04-19','Car','chennai','TN21AS9090','siva',5,'bangalore');
/*!40000 ALTER TABLE `finished_goods_packingslip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finished_goods_packingslipitem`
--

DROP TABLE IF EXISTS `finished_goods_packingslipitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `finished_goods_packingslipitem` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `item_name` varchar(255) NOT NULL,
  `uom` varchar(50) NOT NULL,
  `box_bags` int NOT NULL,
  `batch_no` varchar(50) NOT NULL,
  `qty` int NOT NULL,
  `bal_qty` int NOT NULL,
  `stock_qty` int NOT NULL,
  `item_code` varchar(100) NOT NULL,
  `packing_slip_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `finished_goods_packi_packing_slip_id_8f6590df_fk_finished_` (`packing_slip_id`),
  CONSTRAINT `finished_goods_packi_packing_slip_id_8f6590df_fk_finished_` FOREIGN KEY (`packing_slip_id`) REFERENCES `finished_goods_packingslip` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finished_goods_packingslipitem`
--

LOCK TABLES `finished_goods_packingslipitem` WRITE;
/*!40000 ALTER TABLE `finished_goods_packingslipitem` DISABLE KEYS */;
INSERT INTO `finished_goods_packingslipitem` VALUES (13,'Biscuit Cover','KG',0,'12',1212,12121,2121,'Biscuit Cover',40);
/*!40000 ALTER TABLE `finished_goods_packingslipitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `id` int NOT NULL AUTO_INCREMENT,
  `city_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `city_name` (`city_name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (6,'All'),(1,'Bengaluru'),(3,'Chennai'),(5,'Delhi'),(2,'Hyderabad'),(4,'Mumbai');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_bag_boxesdetails`
--

DROP TABLE IF EXISTS `master_bag_boxesdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `master_bag_boxesdetails` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `code` varchar(100) DEFAULT NULL,
  `qty` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_bag_boxesdetails`
--

LOCK TABLES `master_bag_boxesdetails` WRITE;
/*!40000 ALTER TABLE `master_bag_boxesdetails` DISABLE KEYS */;
INSERT INTO `master_bag_boxesdetails` VALUES (5,'B01','50KG','50KG BAG','hi'),(6,'B02','25KG','25KG BAG','GOOD');
/*!40000 ALTER TABLE `master_bag_boxesdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_billofmaterials`
--

DROP TABLE IF EXISTS `master_billofmaterials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `master_billofmaterials` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `item_code` varchar(100) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `required_qty` double NOT NULL,
  `item_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `master_billofmaterials_item_id_2378f3cc_fk_master_itemdetail_id` (`item_id`),
  CONSTRAINT `master_billofmaterials_item_id_2378f3cc_fk_master_itemdetail_id` FOREIGN KEY (`item_id`) REFERENCES `master_itemdetail` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_billofmaterials`
--

LOCK TABLES `master_billofmaterials` WRITE;
/*!40000 ALTER TABLE `master_billofmaterials` DISABLE KEYS */;
INSERT INTO `master_billofmaterials` VALUES (25,'RM001','wheat flour',100,31),(26,'RM001','wheat flour',100,32),(27,'RM001','wheat flour',200,33),(28,'RM001','wheat flour',200,34),(29,'RM002','sugar',200,34),(30,'PM001','Biscuit cover',400,34);
/*!40000 ALTER TABLE `master_billofmaterials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_category`
--

DROP TABLE IF EXISTS `master_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `master_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `remarks` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_category`
--

LOCK TABLES `master_category` WRITE;
/*!40000 ALTER TABLE `master_category` DISABLE KEYS */;
INSERT INTO `master_category` VALUES (1,'Finished Goods','FG - Finished Goods',''),(2,'Raw Material','RM - Raw Material',''),(3,'Packing Material','PM - Packing Material',''),(4,'Assets','AS - Assets','');
/*!40000 ALTER TABLE `master_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_company`
--

DROP TABLE IF EXISTS `master_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `master_company` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `lst_no` varchar(100) DEFAULT NULL,
  `pan_no` varchar(100) DEFAULT NULL,
  `cst_no` varchar(100) DEFAULT NULL,
  `company_address` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_company`
--

LOCK TABLES `master_company` WRITE;
/*!40000 ALTER TABLE `master_company` DISABLE KEYS */;
INSERT INTO `master_company` VALUES (1,'jio','1626','1234','123344','Bangalore'),(2,'jio','1626','1234','123344','wqd2edw');
/*!40000 ALTER TABLE `master_company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_customerdetail`
--

DROP TABLE IF EXISTS `master_customerdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `master_customerdetail` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `customer_code` varchar(50) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `contact_person` varchar(100) DEFAULT NULL,
  `opening_balance` decimal(15,2) NOT NULL,
  `customer_type` varchar(50) DEFAULT NULL,
  `tel_no` varchar(15) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  `gst_no` varchar(50) DEFAULT NULL,
  `address` longtext,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `customer_code` (`customer_code`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_customerdetail`
--

LOCK TABLES `master_customerdetail` WRITE;
/*!40000 ALTER TABLE `master_customerdetail` DISABLE KEYS */;
INSERT INTO `master_customerdetail` VALUES (5,'JA20','mukesh','sai',0.00,'2','6767688890','mukesh@gmail.com','166252FGH3565','Chennai','2025-03-25 04:18:23.254022','2025-04-03 05:44:49.074220'),(6,'JA2003','RAM','hari',100.00,'3','67676888900','mukesh@gmail.com','166252FGH3565','Chennai','2025-03-25 04:57:20.107084','2025-03-25 04:57:20.107123');
/*!40000 ALTER TABLE `master_customerdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_itemdetail`
--

DROP TABLE IF EXISTS `master_itemdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `master_itemdetail` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `item_code` varchar(50) NOT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `rol` int DEFAULT NULL,
  `rate` double DEFAULT NULL,
  `remarks` longtext,
  `grade` varchar(100) DEFAULT NULL,
  `hsncode` varchar(50) DEFAULT NULL,
  `molqty` double DEFAULT NULL,
  `packingqty` double DEFAULT NULL,
  `category_id` bigint NOT NULL,
  `uom` varchar(50) DEFAULT NULL,
  `alt_uom` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `master_itemdetail_category_id_6f8c93c3_fk_master_category_id` (`category_id`),
  CONSTRAINT `master_itemdetail_category_id_6f8c93c3_fk_master_category_id` FOREIGN KEY (`category_id`) REFERENCES `master_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_itemdetail`
--

LOCK TABLES `master_itemdetail` WRITE;
/*!40000 ALTER TABLE `master_itemdetail` DISABLE KEYS */;
INSERT INTO `master_itemdetail` VALUES (31,'RM001','wheat flour',100,20,'','5','fghj',50,100,2,NULL,NULL),(32,'RM002','Sugar',100,20,'','5','fghj',50,100,2,NULL,NULL),(33,'PM001','Biscuit Cover',350,20,'','5','ADF56',250,500,3,NULL,NULL),(34,'FG001','BISCUTS',350,20,'','5','ADF56',250,500,1,NULL,NULL);
/*!40000 ALTER TABLE `master_itemdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_storedetail`
--

DROP TABLE IF EXISTS `master_storedetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `master_storedetail` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `store_name` varchar(100) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_storedetail`
--

LOCK TABLES `master_storedetail` WRITE;
/*!40000 ALTER TABLE `master_storedetail` DISABLE KEYS */;
INSERT INTO `master_storedetail` VALUES (4,'FG Store','FG'),(5,'PM STORE','PACKING MATERIAL STORE'),(6,'RM STORE','RAW MATERIAL STORE');
/*!40000 ALTER TABLE `master_storedetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_vendordetail`
--

DROP TABLE IF EXISTS `master_vendordetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `master_vendordetail` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `vendor_code` varchar(50) NOT NULL,
  `vendor_name` varchar(100) NOT NULL,
  `contact_person` varchar(100) NOT NULL,
  `tel_no` varchar(15) NOT NULL,
  `email` varchar(254) NOT NULL,
  `lst_no` varchar(50) DEFAULT NULL,
  `gst_no` varchar(50) DEFAULT NULL,
  `address` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `vendor_code` (`vendor_code`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_vendordetail`
--

LOCK TABLES `master_vendordetail` WRITE;
/*!40000 ALTER TABLE `master_vendordetail` DISABLE KEYS */;
INSERT INTO `master_vendordetail` VALUES (1,'VC01','TESt1','PRIYA','12394567890','s@gmail.com',NULL,'123ASDF568USDFG','BENGALURU'),(2,'VC02','SR TRADERS','RAM','234567890637','s@gmail.com',NULL,'123ASDF568U','GOA'),(3,'VC001','Test','sai','6767688899','mukesh@gmail.com',NULL,'43763SAS546658','Chennai'),(5,'990','Mukesh','sai','8976767676','mukesh@gmail.com',NULL,'27ABCDE1234F1Z5','Chennai');
/*!40000 ALTER TABLE `master_vendordetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `packing_materials_packinginwardmaterial`
--

DROP TABLE IF EXISTS `packing_materials_packinginwardmaterial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `packing_materials_packinginwardmaterial` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `invoice_no` varchar(50) NOT NULL,
  `invoice_date` date NOT NULL,
  `vendor_code` varchar(100) NOT NULL,
  `vendor_name` varchar(255) NOT NULL,
  `grn_no` varchar(50) NOT NULL,
  `grn_date` date NOT NULL,
  `recieved_date` date NOT NULL,
  `store` varchar(100) NOT NULL,
  `po_date` date NOT NULL,
  `po_no` varchar(50) NOT NULL,
  `bag_type` varchar(50) NOT NULL,
  `remarks` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `packing_materials_packinginwardmaterial`
--

LOCK TABLES `packing_materials_packinginwardmaterial` WRITE;
/*!40000 ALTER TABLE `packing_materials_packinginwardmaterial` DISABLE KEYS */;
INSERT INTO `packing_materials_packinginwardmaterial` VALUES (7,'3','2025-04-22','VC02','SR TRADERS','1212','2025-04-22','2025-04-03','PM STORE','2025-04-22','6','B01',''),(8,'3','2025-04-28','VC01','TESt1','1212','2025-04-28','2025-04-17','PM STORE','2025-04-28','6','B02','NA'),(9,'30','2025-04-28','VC02','SR TRADERS','1212','2025-04-28','2025-04-11','RM STORE','2025-04-28','1','B01',''),(10,'30','2025-04-28','VC01','TESt1','1212','2025-04-28','2025-04-01','PM STORE','2025-04-28','6','B01','NA');
/*!40000 ALTER TABLE `packing_materials_packinginwardmaterial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `packing_materials_packinginwardmaterialsub`
--

DROP TABLE IF EXISTS `packing_materials_packinginwardmaterialsub`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `packing_materials_packinginwardmaterialsub` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `item_code` varchar(100) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `uom` varchar(100) NOT NULL,
  `quantity` decimal(10,2) NOT NULL,
  `no_of_bags` int NOT NULL,
  `recieved_date` date NOT NULL,
  `packing_material_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `packing_materials_pa_packing_material_id_d43c478d_fk_packing_m` (`packing_material_id`),
  CONSTRAINT `packing_materials_pa_packing_material_id_d43c478d_fk_packing_m` FOREIGN KEY (`packing_material_id`) REFERENCES `packing_materials_packinginwardmaterial` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `packing_materials_packinginwardmaterialsub`
--

LOCK TABLES `packing_materials_packinginwardmaterialsub` WRITE;
/*!40000 ALTER TABLE `packing_materials_packinginwardmaterialsub` DISABLE KEYS */;
INSERT INTO `packing_materials_packinginwardmaterialsub` VALUES (15,'RM001','wheat flour','',1000.00,20,'2025-04-14',7),(18,'PM001','Biscuit Cover','KG',1000.00,20,'2025-04-08',8),(20,'','','KG',1000.00,20,'2025-04-23',9),(23,'PM001','Biscuit Cover','KG',1500.00,30,'2025-04-08',10);
/*!40000 ALTER TABLE `packing_materials_packinginwardmaterialsub` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `packing_materials_pmlabelgenerationitem`
--

DROP TABLE IF EXISTS `packing_materials_pmlabelgenerationitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `packing_materials_pmlabelgenerationitem` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `item_name` varchar(255) NOT NULL,
  `item_code` varchar(50) NOT NULL,
  `noofpacks` int NOT NULL,
  `next_pack_no` int NOT NULL,
  `lot_batch_no` varchar(255) NOT NULL,
  `packing_qty` int NOT NULL,
  `receipt_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `packing_materials_pmlabelgenerationitem`
--

LOCK TABLES `packing_materials_pmlabelgenerationitem` WRITE;
/*!40000 ALTER TABLE `packing_materials_pmlabelgenerationitem` DISABLE KEYS */;
INSERT INTO `packing_materials_pmlabelgenerationitem` VALUES (66,'Sugar','RM002',3,13,'1',4,'2025-04-10');
/*!40000 ALTER TABLE `packing_materials_pmlabelgenerationitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `packing_materials_pmmaterialissue`
--

DROP TABLE IF EXISTS `packing_materials_pmmaterialissue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `packing_materials_pmmaterialissue` (
  `matIssueId` int NOT NULL AUTO_INCREMENT,
  `issue_no` int unsigned DEFAULT NULL,
  `issue_date` date NOT NULL,
  `issue_to_whom` varchar(100) NOT NULL,
  `bag_types` varchar(50) NOT NULL,
  PRIMARY KEY (`matIssueId`),
  UNIQUE KEY `issue_no` (`issue_no`),
  CONSTRAINT `packing_materials_pmmaterialissue_issue_no_a7e1bfab_check` CHECK ((`issue_no` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `packing_materials_pmmaterialissue`
--

LOCK TABLES `packing_materials_pmmaterialissue` WRITE;
/*!40000 ALTER TABLE `packing_materials_pmmaterialissue` DISABLE KEYS */;
INSERT INTO `packing_materials_pmmaterialissue` VALUES (7,2,'2025-04-16','test1','B02'),(10,5,'2025-04-18','test','B02');
/*!40000 ALTER TABLE `packing_materials_pmmaterialissue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `packing_materials_pmmaterialissuesub`
--

DROP TABLE IF EXISTS `packing_materials_pmmaterialissuesub`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `packing_materials_pmmaterialissuesub` (
  `matIssueSubId` int NOT NULL AUTO_INCREMENT,
  `item_code` varchar(100) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `uom` varchar(50) NOT NULL,
  `quantity` int NOT NULL,
  `stock_qty` int NOT NULL,
  `total_bags` int NOT NULL,
  `batch_no` varchar(50) NOT NULL,
  `bags_issued` int NOT NULL,
  `matIssueId_id` int NOT NULL,
  PRIMARY KEY (`matIssueSubId`),
  KEY `packing_materials_pm_matIssueId_id_38387bcd_fk_packing_m` (`matIssueId_id`),
  CONSTRAINT `packing_materials_pm_matIssueId_id_38387bcd_fk_packing_m` FOREIGN KEY (`matIssueId_id`) REFERENCES `packing_materials_pmmaterialissue` (`matIssueId`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `packing_materials_pmmaterialissuesub`
--

LOCK TABLES `packing_materials_pmmaterialissuesub` WRITE;
/*!40000 ALTER TABLE `packing_materials_pmmaterialissuesub` DISABLE KEYS */;
INSERT INTO `packing_materials_pmmaterialissuesub` VALUES (24,'PM001','Biscuit Cover','KG',500,1000,20,'3',10,7),(27,'31','31','KG',1000,200,20,'12',2,10);
/*!40000 ALTER TABLE `packing_materials_pmmaterialissuesub` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `packing_materials_purchaseorder`
--

DROP TABLE IF EXISTS `packing_materials_purchaseorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `packing_materials_purchaseorder` (
  `sl_no` int NOT NULL AUTO_INCREMENT,
  `pono` varchar(255) NOT NULL,
  `po_date` date NOT NULL,
  `remarks` longtext,
  `upload_file` varchar(100) DEFAULT NULL,
  `upload_date` date NOT NULL,
  `vendor_id` bigint NOT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `packing_materials_pu_vendor_id_34e793fe_fk_master_ve` (`vendor_id`),
  CONSTRAINT `packing_materials_pu_vendor_id_34e793fe_fk_master_ve` FOREIGN KEY (`vendor_id`) REFERENCES `master_vendordetail` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `packing_materials_purchaseorder`
--

LOCK TABLES `packing_materials_purchaseorder` WRITE;
/*!40000 ALTER TABLE `packing_materials_purchaseorder` DISABLE KEYS */;
INSERT INTO `packing_materials_purchaseorder` VALUES (2,'12','2025-03-21','','uploads/Screenshot_2025-03-17_144920_GYnfraD.png','2025-03-21',2),(3,'12','2025-03-21','','uploads/Screenshot_2025-03-10_122939_Sj1geBp.png','2025-03-21',2),(4,'11','2025-03-21','','uploads/Screenshot_2025-03-10_122921.png','2025-03-21',1),(5,'1231','2025-03-26','NA','uploads/Screenshot_2025-03-10_122921_0pc3QqW.png','2025-03-25',2),(6,'11','2025-03-11','','uploads/Screenshot_2025-03-10_122939_entSaZt.png','2025-03-25',2),(7,'5','2025-03-25','na','uploads/Screenshot_2025-03-10_122921_kVfbwqj.png','2025-03-25',3),(8,'11','2025-04-13','','uploads/Screenshot_2025-03-17_144743.png','2025-04-02',3),(10,'101','2025-04-07','','uploads/Screenshot_2025-03-17_144851_JX9AG3n.png','2025-04-09',2),(11,'67','2025-03-31','','uploads/Screenshot_2025-03-17_144851_ji5vAZD.png','2025-04-10',1),(13,'100','2025-03-31','NA','uploads/Screenshot_2025-03-17_144851_PG8o0t4.png','2025-04-24',2),(14,'101','2025-04-01','NA','uploads/Screenshot_2025-03-17_144851_M69N5gO.png','2025-04-24',2),(15,'105','2025-04-01','NA','uploads/Screenshot_2025-03-17_144851_VYBnwEm.png','2025-04-24',1),(16,'11','2025-04-07','','uploads/Screenshot_2025-03-17_144851_OykeinL.png','2025-04-25',2),(17,'12','2025-04-03','NA','uploads/Screenshot_2025-03-17_144851_5hzDA4W.png','2025-04-25',1),(19,'14','2025-04-03','NA','uploads/Screenshot_2025-03-17_144920.png','2025-04-25',2),(21,'16','2025-04-25','','uploads/Screenshot_2025-03-17_144743_4XsQfWY.png','2025-04-25',2),(22,'17','2025-04-25','','','2025-04-25',2),(23,'18','2025-04-25','','uploads/Screenshot_2025-03-17_144323.png','2025-04-25',1),(24,'19','2025-04-25','','uploads/Screenshot_2025-03-17_144920_IbUMuQV.png','2025-04-25',1),(25,'19','2025-04-25','','uploads/Screenshot_2025-03-17_144851_9nqwCti.png','2025-04-25',2),(27,'20','2025-04-25','','uploads/Screenshot_2025-03-17_143952.png','2025-04-25',1),(28,'21','2025-04-26','','uploads/Screenshot_2025-03-17_144140.png','2025-04-26',2),(29,'22','2025-04-26','','uploads/Screenshot_2025-03-17_144743_bDLko6D.png','2025-04-26',1),(30,'23','2025-04-26','','uploads/Screenshot_2025-03-17_144743_WbPMIEK.png','2025-04-26',1),(31,'24','2025-04-26','','uploads/Screenshot_2025-03-17_144920_RHodUge.png','2025-04-26',5),(33,'25','2025-04-26','','uploads/Screenshot_2025-03-17_144851_GwyplFI.png','2025-04-26',2),(35,'31','2025-04-26','','uploads/Screenshot_2025-03-17_144323_wJXpq1a.png','2025-04-26',2),(36,'31','2025-04-28','','','2025-04-28',1),(37,'32','2025-04-28','','','2025-04-28',2),(38,'33','2025-04-28','','','2025-04-28',5),(39,'33','2025-04-28','','uploads/Screenshot_2025-03-17_144920_4phcI19.png','2025-04-28',2);
/*!40000 ALTER TABLE `packing_materials_purchaseorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `packing_materials_purchaseorderitem`
--

DROP TABLE IF EXISTS `packing_materials_purchaseorderitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `packing_materials_purchaseorderitem` (
  `sl_no` int NOT NULL AUTO_INCREMENT,
  `qty` int NOT NULL,
  `item_code_id` bigint NOT NULL,
  `purchase_order_id` int NOT NULL,
  PRIMARY KEY (`sl_no`),
  KEY `packing_materials_pu_item_code_id_59f99a2b_fk_master_it` (`item_code_id`),
  KEY `packing_materials_pu_purchase_order_id_d7a433a8_fk_packing_m` (`purchase_order_id`),
  CONSTRAINT `packing_materials_pu_item_code_id_59f99a2b_fk_master_it` FOREIGN KEY (`item_code_id`) REFERENCES `master_itemdetail` (`id`),
  CONSTRAINT `packing_materials_pu_purchase_order_id_d7a433a8_fk_packing_m` FOREIGN KEY (`purchase_order_id`) REFERENCES `packing_materials_purchaseorder` (`sl_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `packing_materials_purchaseorderitem`
--

LOCK TABLES `packing_materials_purchaseorderitem` WRITE;
/*!40000 ALTER TABLE `packing_materials_purchaseorderitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `packing_materials_purchaseorderitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `packing_materials_uploadedfile`
--

DROP TABLE IF EXISTS `packing_materials_uploadedfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `packing_materials_uploadedfile` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `file_name` varchar(255) NOT NULL,
  `file_url` varchar(200) NOT NULL,
  `file_type` varchar(50) NOT NULL,
  `upload_date` datetime(6) NOT NULL,
  `purchase_order_id` int NOT NULL,
  `uploaded_by_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `packing_materials_up_purchase_order_id_c89e7c04_fk_packing_m` (`purchase_order_id`),
  KEY `packing_materials_up_uploaded_by_id_50b65732_fk_auth_user` (`uploaded_by_id`),
  CONSTRAINT `packing_materials_up_purchase_order_id_c89e7c04_fk_packing_m` FOREIGN KEY (`purchase_order_id`) REFERENCES `packing_materials_purchaseorder` (`sl_no`),
  CONSTRAINT `packing_materials_up_uploaded_by_id_50b65732_fk_auth_user` FOREIGN KEY (`uploaded_by_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `packing_materials_uploadedfile`
--

LOCK TABLES `packing_materials_uploadedfile` WRITE;
/*!40000 ALTER TABLE `packing_materials_uploadedfile` DISABLE KEYS */;
INSERT INTO `packing_materials_uploadedfile` VALUES (2,'hw\\','','jj','2025-03-21 07:01:43.734397',4,3),(5,'sw','','www','2025-03-25 10:23:13.726801',7,3),(6,'Junnu','C:\\Mukesh\\Junnu','pdf','2025-04-15 00:00:00.000000',22,1),(7,'Junnu\'s','C:\\Mukesh\\Junnu','pdf','2025-04-29 00:00:00.000000',23,1),(9,'Hari','C:\\Mukesh\\hari','pdf','2025-04-22 00:00:00.000000',27,NULL),(10,'hii','','.pdf','2025-03-25 00:00:00.000000',5,3),(15,'Harii','C:\\Mukesh\\hari','pdf','2025-04-07 00:00:00.000000',28,NULL),(16,'ram','C:\\Mukesh\\ram','pdf','2025-04-22 00:00:00.000000',30,NULL),(17,'ram','C:\\Mukesh\\ram','pdf','2025-04-22 00:00:00.000000',31,NULL),(19,'ram','C:\\Mukesh\\ram','pdf','2025-04-21 00:00:00.000000',33,1),(27,'ram','C:\\Mukesh\\Junnu','pdf','2025-04-15 00:00:00.000000',35,3),(29,'ram','C:\\Mukesh\\Junnu','pdf','2025-04-21 00:00:00.000000',36,2),(30,'ram','C:\\Mukesh\\Junnu','pdf','2025-04-06 00:00:00.000000',37,2),(31,'Junnu','C:\\Mukesh\\Junnu','jpg','2025-04-15 00:00:00.000000',38,1),(32,'Junnu','C:\\Mukesh\\Junnu','jpg','2025-04-16 00:00:00.000000',39,1);
/*!40000 ALTER TABLE `packing_materials_uploadedfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_material_rawinwardmaterial`
--

DROP TABLE IF EXISTS `raw_material_rawinwardmaterial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `raw_material_rawinwardmaterial` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `invoice_no` varchar(50) NOT NULL,
  `invoice_date` date NOT NULL,
  `vendor_code` varchar(100) NOT NULL,
  `vendor_name` varchar(255) NOT NULL,
  `grn_no` varchar(50) DEFAULT NULL,
  `grn_date` date NOT NULL,
  `store` varchar(100) NOT NULL,
  `po_date` date NOT NULL,
  `remarks` longtext,
  `po_no` varchar(50) DEFAULT NULL,
  `bag_type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `raw_material_rawinwardmaterial_grn_no_1adc95ee_uniq` (`grn_no`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_material_rawinwardmaterial`
--

LOCK TABLES `raw_material_rawinwardmaterial` WRITE;
/*!40000 ALTER TABLE `raw_material_rawinwardmaterial` DISABLE KEYS */;
INSERT INTO `raw_material_rawinwardmaterial` VALUES (21,'1','2025-04-22','VC02','SR TRADERS','25-26/01','2025-04-22','RM STORE','2025-04-22','','1','B01'),(22,'2','2025-04-24','VC01','TESt1','25-26/02','2025-04-24','RM STORE','2025-04-24','','6','B01'),(23,'12','2025-04-28','VC01','TESt1','25-26/03','2025-04-28','RM STORE','2025-04-28','','142','B01');
/*!40000 ALTER TABLE `raw_material_rawinwardmaterial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_material_rawinwardmaterialsub`
--

DROP TABLE IF EXISTS `raw_material_rawinwardmaterialsub`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `raw_material_rawinwardmaterialsub` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `item_code` varchar(100) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `uom` varchar(100) NOT NULL,
  `quantity` decimal(10,2) NOT NULL,
  `no_of_bags` int NOT NULL,
  `mfg_date` date NOT NULL,
  `exp_date` date NOT NULL,
  `lot_no` varchar(100) NOT NULL,
  `repacking_batch_no` varchar(100) NOT NULL,
  `inward_material_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `raw_material_rawinwa_inward_material_id_698f9b82_fk_raw_mater` (`inward_material_id`),
  CONSTRAINT `raw_material_rawinwa_inward_material_id_698f9b82_fk_raw_mater` FOREIGN KEY (`inward_material_id`) REFERENCES `raw_material_rawinwardmaterial` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_material_rawinwardmaterialsub`
--

LOCK TABLES `raw_material_rawinwardmaterialsub` WRITE;
/*!40000 ALTER TABLE `raw_material_rawinwardmaterialsub` DISABLE KEYS */;
INSERT INTO `raw_material_rawinwardmaterialsub` VALUES (39,'','','KG',1000.00,20,'2025-04-07','2025-04-30','1','2',22),(40,'RM002','Sugar','KG',1000.00,20,'2025-04-07','2025-04-30','10','11',23),(41,'RM001','wheat flour','KG',1000.00,20,'2025-04-13','2025-04-30','10','100',21);
/*!40000 ALTER TABLE `raw_material_rawinwardmaterialsub` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_material_rmlabelgeneration`
--

DROP TABLE IF EXISTS `raw_material_rmlabelgeneration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `raw_material_rmlabelgeneration` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `vendor_name` varchar(255) NOT NULL,
  `vendor_code` varchar(50) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_code` varchar(50) NOT NULL,
  `rm_code` varchar(50) NOT NULL,
  `no_of_bags` int NOT NULL,
  `next_bag_no` int NOT NULL,
  `invoice_no` varchar(100) NOT NULL,
  `invoice_date` date NOT NULL,
  `batch_no` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_material_rmlabelgeneration`
--

LOCK TABLES `raw_material_rmlabelgeneration` WRITE;
/*!40000 ALTER TABLE `raw_material_rmlabelgeneration` DISABLE KEYS */;
INSERT INTO `raw_material_rmlabelgeneration` VALUES (2,'TESt1','VC01','wheat','12','111',1,10,'121','2025-03-26','1'),(3,'SR TRADERS','VC02','Asafoda Powder','RM-01','111',1,10,'3','2025-03-20','1'),(4,'SR TRADERS','VC02','Rice','JPG002','111',1,10,'3','2025-03-19','1'),(5,'Test','VC001','Asafoda Powder','RM-01','111',1,10,'3','2025-03-13','1'),(6,'TESt1','VC01','wheat flour','RM001','111',2,10,'3','2025-04-18','12');
/*!40000 ALTER TABLE `raw_material_rmlabelgeneration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_material_rmmaterialissue`
--

DROP TABLE IF EXISTS `raw_material_rmmaterialissue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `raw_material_rmmaterialissue` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `iss_no` int unsigned DEFAULT NULL,
  `date_of_issue` date NOT NULL,
  `issued_to_whom` varchar(255) NOT NULL,
  `remarks` longtext,
  `bag_type` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `iss_no` (`iss_no`),
  CONSTRAINT `raw_material_rmmaterialissue_iss_no_31dea429_check` CHECK ((`iss_no` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_material_rmmaterialissue`
--

LOCK TABLES `raw_material_rmmaterialissue` WRITE;
/*!40000 ALTER TABLE `raw_material_rmmaterialissue` DISABLE KEYS */;
INSERT INTO `raw_material_rmmaterialissue` VALUES (15,1,'2025-04-28','krish','NA','B01'),(16,2,'2025-04-28','krish','','B01');
/*!40000 ALTER TABLE `raw_material_rmmaterialissue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_material_rmmaterialissuesub`
--

DROP TABLE IF EXISTS `raw_material_rmmaterialissuesub`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `raw_material_rmmaterialissuesub` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `issue_id` bigint DEFAULT NULL,
  `item_code` varchar(50) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `uom` varchar(50) DEFAULT NULL,
  `quantity` decimal(10,2) DEFAULT NULL,
  `stock_quantity` decimal(10,2) DEFAULT NULL,
  `total_bags` int DEFAULT NULL,
  `batch_no` varchar(100) DEFAULT NULL,
  `bags_issued` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `issue_id` (`issue_id`),
  CONSTRAINT `raw_material_rmmaterialissuesub_ibfk_1` FOREIGN KEY (`issue_id`) REFERENCES `raw_material_rmmaterialissue` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_material_rmmaterialissuesub`
--

LOCK TABLES `raw_material_rmmaterialissuesub` WRITE;
/*!40000 ALTER TABLE `raw_material_rmmaterialissuesub` DISABLE KEYS */;
INSERT INTO `raw_material_rmmaterialissuesub` VALUES (25,15,'RM001','wheat flour','KG',500.00,1000.00,20,'12',10),(26,16,'RM001','wheat flour','KG',500.00,1000.00,20,'12',10);
/*!40000 ALTER TABLE `raw_material_rmmaterialissuesub` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reports_stockstatement`
--

DROP TABLE IF EXISTS `reports_stockstatement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reports_stockstatement` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) NOT NULL,
  `category` varchar(2) NOT NULL,
  `inward` int unsigned NOT NULL,
  `outward` int unsigned NOT NULL,
  `balance` int unsigned NOT NULL,
  `order_level` int unsigned NOT NULL,
  `open_balance` int unsigned NOT NULL,
  `closing_stock` int unsigned NOT NULL,
  `reorder_level` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_name` (`product_name`),
  CONSTRAINT `reports_stockstatement_chk_1` CHECK ((`inward` >= 0)),
  CONSTRAINT `reports_stockstatement_chk_2` CHECK ((`outward` >= 0)),
  CONSTRAINT `reports_stockstatement_chk_3` CHECK ((`balance` >= 0)),
  CONSTRAINT `reports_stockstatement_chk_4` CHECK ((`order_level` >= 0)),
  CONSTRAINT `reports_stockstatement_chk_5` CHECK ((`open_balance` >= 0)),
  CONSTRAINT `reports_stockstatement_chk_6` CHECK ((`closing_stock` >= 0)),
  CONSTRAINT `reports_stockstatement_chk_7` CHECK ((`reorder_level` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reports_stockstatement`
--

LOCK TABLES `reports_stockstatement` WRITE;
/*!40000 ALTER TABLE `reports_stockstatement` DISABLE KEYS */;
/*!40000 ALTER TABLE `reports_stockstatement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_statement_stockstatement`
--

DROP TABLE IF EXISTS `stock_statement_stockstatement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock_statement_stockstatement` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `item_code` varchar(100) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `uom` varchar(50) NOT NULL,
  `opening_stock` double NOT NULL,
  `inward_qty` double NOT NULL,
  `outward_qty` double NOT NULL,
  `closing_stock` double NOT NULL,
  `category_id` int NOT NULL,
  `reorder_level` int NOT NULL DEFAULT '0',
  `order_level` int NOT NULL DEFAULT '0',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `item_code` (`item_code`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_statement_stockstatement`
--

LOCK TABLES `stock_statement_stockstatement` WRITE;
/*!40000 ALTER TABLE `stock_statement_stockstatement` DISABLE KEYS */;
/*!40000 ALTER TABLE `stock_statement_stockstatement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_statement_stockstatementdetail`
--

DROP TABLE IF EXISTS `stock_statement_stockstatementdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock_statement_stockstatementdetail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `stock_statement_id` int NOT NULL,
  `item_code` varchar(50) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `category_id` int NOT NULL,
  `rol` int DEFAULT '0',
  `grade` varchar(50) DEFAULT NULL,
  `molqty` int DEFAULT '0',
  `qty` int DEFAULT '0',
  `rate` decimal(10,2) DEFAULT '0.00',
  `remarks` text,
  `hsn_code` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `stock_statement_id` (`stock_statement_id`),
  CONSTRAINT `stock_statement_stockstatementdetail_ibfk_1` FOREIGN KEY (`stock_statement_id`) REFERENCES `stockstatement` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_statement_stockstatementdetail`
--

LOCK TABLES `stock_statement_stockstatementdetail` WRITE;
/*!40000 ALTER TABLE `stock_statement_stockstatementdetail` DISABLE KEYS */;
/*!40000 ALTER TABLE `stock_statement_stockstatementdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_transaction`
--

DROP TABLE IF EXISTS `stock_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock_transaction` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `item_code` varchar(100) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `category` varchar(2) NOT NULL,
  `transaction_type` varchar(10) NOT NULL,
  `quantity` decimal(10,2) NOT NULL,
  `transaction_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `item_code` (`item_code`),
  CONSTRAINT `stock_transaction_ibfk_1` FOREIGN KEY (`item_code`) REFERENCES `stock_statement` (`item_code`) ON DELETE CASCADE,
  CONSTRAINT `stock_transaction_chk_1` CHECK ((`category` in (_utf8mb3'RM',_utf8mb3'PM',_utf8mb3'FG'))),
  CONSTRAINT `stock_transaction_chk_2` CHECK ((`transaction_type` in (_utf8mb3'inward',_utf8mb3'outward')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_transaction`
--

LOCK TABLES `stock_transaction` WRITE;
/*!40000 ALTER TABLE `stock_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `stock_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stockstatement`
--

DROP TABLE IF EXISTS `stockstatement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stockstatement` (
  `id` int NOT NULL AUTO_INCREMENT,
  `stock_date` date NOT NULL DEFAULT (curdate()),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stockstatement`
--

LOCK TABLES `stockstatement` WRITE;
/*!40000 ALTER TABLE `stockstatement` DISABLE KEYS */;
/*!40000 ALTER TABLE `stockstatement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `traders`
--

DROP TABLE IF EXISTS `traders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `traders` (
  `tradersid` int NOT NULL AUTO_INCREMENT,
  `tradersname` varchar(255) NOT NULL,
  PRIMARY KEY (`tradersid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `traders`
--

LOCK TABLES `traders` WRITE;
/*!40000 ALTER TABLE `traders` DISABLE KEYS */;
INSERT INTO `traders` VALUES (1,'Modern Traders'),(2,'General Traders'),(3,'Retail Traders'),(4,'Traders');
/*!40000 ALTER TABLE `traders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unitofmeasurement`
--

DROP TABLE IF EXISTS `unitofmeasurement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `unitofmeasurement` (
  `uomid` int NOT NULL AUTO_INCREMENT,
  `uomname` varchar(50) NOT NULL,
  PRIMARY KEY (`uomid`),
  UNIQUE KEY `uomname` (`uomname`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unitofmeasurement`
--

LOCK TABLES `unitofmeasurement` WRITE;
/*!40000 ALTER TABLE `unitofmeasurement` DISABLE KEYS */;
INSERT INTO `unitofmeasurement` VALUES (5,'bag'),(6,'bags'),(2,'box'),(1,'kg'),(3,'kgs'),(4,'nos');
/*!40000 ALTER TABLE `unitofmeasurement` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-03 10:06:05
