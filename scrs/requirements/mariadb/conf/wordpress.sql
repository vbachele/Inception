-- MySQL dump 10.19  Distrib 10.3.29-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: wordpress
-- ------------------------------------------------------
-- Server version	10.3.29-MariaDB-0+deb10u1

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
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2021-08-01 08:46:35','2021-08-01 08:46:35','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','https://vbachele.42.fr','yes'),(2,'home','https://vbachele.42.fr','yes'),(3,'blogname','My_site','yes'),(4,'blogdescription','Just another WordPress site','yes'),(5,'users_can_register','0','yes'),(6,'admin_email','lea.lescure@hotmail.fr','yes'),(7,'start_of_week','1','yes'),(8,'use_balanceTags','0','yes'),(9,'use_smilies','1','yes'),(10,'require_name_email','1','yes'),(11,'comments_notify','1','yes'),(12,'posts_per_rss','10','yes'),(13,'rss_use_excerpt','0','yes'),(14,'mailserver_url','mail.example.com','yes'),(15,'mailserver_login','login@example.com','yes'),(16,'mailserver_pass','password','yes'),(17,'mailserver_port','110','yes'),(18,'default_category','1','yes'),(19,'default_comment_status','open','yes'),(20,'default_ping_status','open','yes'),(21,'default_pingback_flag','1','yes'),(22,'posts_per_page','10','yes'),(23,'date_format','F j, Y','yes'),(24,'time_format','g:i a','yes'),(25,'links_updated_date_format','F j, Y g:i a','yes'),(26,'comment_moderation','0','yes'),(27,'moderation_notify','1','yes'),(28,'permalink_structure','','yes'),(29,'rewrite_rules','','yes'),(30,'hack_file','0','yes'),(31,'blog_charset','UTF-8','yes'),(32,'moderation_keys','','no'),(33,'active_plugins','a:0:{}','yes'),(34,'category_base','','yes'),(35,'ping_sites','http://rpc.pingomatic.com/','yes'),(36,'comment_max_links','2','yes'),(37,'gmt_offset','0','yes'),(38,'default_email_category','1','yes'),(39,'recently_edited','','no'),(40,'template','twentytwentyone','yes'),(41,'stylesheet','twentytwentyone','yes'),(42,'comment_registration','0','yes'),(43,'html_type','text/html','yes'),(44,'use_trackback','0','yes'),(45,'default_role','subscriber','yes'),(46,'db_version','49752','yes'),(47,'uploads_use_yearmonth_folders','1','yes'),(48,'upload_path','','yes'),(49,'blog_public','1','yes'),(50,'default_link_category','2','yes'),(51,'show_on_front','page','yes'),(52,'tag_base','','yes'),(53,'show_avatars','1','yes'),(54,'avatar_rating','G','yes'),(55,'upload_url_path','','yes'),(56,'thumbnail_size_w','150','yes'),(57,'thumbnail_size_h','150','yes'),(58,'thumbnail_crop','1','yes'),(59,'medium_size_w','300','yes'),(60,'medium_size_h','300','yes'),(61,'avatar_default','mystery','yes'),(62,'large_size_w','1024','yes'),(63,'large_size_h','1024','yes'),(64,'image_default_link_type','none','yes'),(65,'image_default_size','','yes'),(66,'image_default_align','','yes'),(67,'close_comments_for_old_posts','0','yes'),(68,'close_comments_days_old','14','yes'),(69,'thread_comments','1','yes'),(70,'thread_comments_depth','5','yes'),(71,'page_comments','0','yes'),(72,'comments_per_page','50','yes'),(73,'default_comments_page','newest','yes'),(74,'comment_order','asc','yes'),(75,'sticky_posts','a:0:{}','yes'),(76,'widget_categories','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),(77,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),(78,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),(79,'uninstall_plugins','a:0:{}','no'),(80,'timezone_string','','yes'),(81,'page_for_posts','8','yes'),(82,'page_on_front','5','yes'),(83,'default_post_format','0','yes'),(84,'link_manager_enabled','0','yes'),(85,'finished_splitting_shared_terms','1','yes'),(86,'site_icon','0','yes'),(87,'medium_large_size_w','768','yes'),(88,'medium_large_size_h','0','yes'),(89,'wp_page_for_privacy_policy','3','yes'),(90,'show_comments_cookies_opt_in','1','yes'),(91,'admin_email_lifespan','1643359595','yes'),(92,'disallowed_keys','','no'),(93,'comment_previously_approved','1','yes'),(94,'auto_plugin_theme_update_emails','a:0:{}','no'),(95,'auto_update_core_dev','enabled','yes'),(96,'auto_update_core_minor','enabled','yes'),(97,'auto_update_core_major','enabled','yes'),(98,'wp_force_deactivated_plugins','a:0:{}','yes'),(99,'initial_db_version','49752','yes'),(100,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes'),(101,'fresh_site','0','yes'),(102,'widget_block','a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}','yes'),(103,'sidebars_widgets','a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}s:13:\"array_version\";i:3;}','yes'),(104,'cron','a:6:{i:1627807596;a:6:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1627807607;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1627807610;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1627807667;a:1:{s:28:\"wp_update_comment_type_batch\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1627893996;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes'),(105,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(106,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(107,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(108,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(109,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(110,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(111,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(112,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(113,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(114,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(115,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(116,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(117,'_transient_doing_cron','1627807661.3343250751495361328125','yes'),(118,'theme_mods_twentytwentyone','a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:2;s:6:\"footer\";i:3;}s:16:\"background_color\";s:6:\"dae5ed\";}','yes'),(119,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.8.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.8.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.8-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.8-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"5.8\";s:7:\"version\";s:3:\"5.8\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1627807607;s:15:\"version_checked\";s:3:\"5.8\";s:12:\"translations\";a:0:{}}','no'),(120,'_site_transient_update_plugins','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1627807607;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:6:\"4.1.10\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/akismet.4.1.10.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}}','no'),(121,'_site_transient_timeout_theme_roots','1627809408','no'),(122,'_site_transient_theme_roots','a:3:{s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}','no'),(123,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1627807608;s:7:\"checked\";a:3:{s:14:\"twentynineteen\";s:3:\"2.1\";s:12:\"twentytwenty\";s:3:\"1.8\";s:15:\"twentytwentyone\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.1.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.8.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.4.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}','no'),(124,'_site_transient_timeout_browser_07cd63964cd4102f3186766c33314e34','1628412409','no'),(125,'_site_transient_browser_07cd63964cd4102f3186766c33314e34','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"80.0.3987.162\";s:8:\"platform\";s:5:\"Linux\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no'),(126,'_site_transient_timeout_php_check_009c6eb5b40f6e5b9ba52ef6dc06f73a','1628412410','no'),(127,'_site_transient_php_check_009c6eb5b40f6e5b9ba52ef6dc06f73a','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no'),(128,'can_compress_scripts','1','no'),(129,'_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b','1627850811','no'),(130,'_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b','<div class=\"rss-widget\"><p><strong>RSS Error:</strong> XML or PCRE extensions not loaded!</p></div><div class=\"rss-widget\"><p><strong>RSS Error:</strong> XML or PCRE extensions not loaded!</p></div>','no'),(131,'_site_transient_timeout_community-events-e945964770a0fd6f0dbbcd9622f2e63f','1627850811','no'),(132,'_site_transient_community-events-e945964770a0fd6f0dbbcd9622f2e63f','a:4:{s:9:\"sandboxed\";b:0;s:5:\"error\";N;s:8:\"location\";a:1:{s:2:\"ip\";s:10:\"172.30.0.0\";}s:6:\"events\";a:2:{i:0;a:10:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:75:\"Discussion Group: Who am I to be speaking? + Finding a topic for a WP event\";s:3:\"url\";s:68:\"https://www.meetup.com/learn-wordpress-discussions/events/279779705/\";s:6:\"meetup\";s:27:\"Learn WordPress Discussions\";s:10:\"meetup_url\";s:51:\"https://www.meetup.com/learn-wordpress-discussions/\";s:4:\"date\";s:19:\"2021-08-02 11:00:00\";s:8:\"end_date\";s:19:\"2021-08-02 12:00:00\";s:20:\"start_unix_timestamp\";i:1627927200;s:18:\"end_unix_timestamp\";i:1627930800;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"US\";s:8:\"latitude\";d:37.779998779297;s:9:\"longitude\";d:-122.41999816895;}}i:1;a:10:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:54:\"WordCamp Florianópolis, Santa Catarina &#8211; Brazil\";s:3:\"url\";s:34:\"https://floripa.wordcamp.org/2021/\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2021-08-11 20:00:00\";s:8:\"end_date\";s:19:\"2021-08-12 00:00:00\";s:20:\"start_unix_timestamp\";i:1628722800;s:18:\"end_unix_timestamp\";i:1628737200;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"BR\";s:8:\"latitude\";d:-27.5953198;s:9:\"longitude\";d:-48.5542927;}}}}','no'),(134,'widget_recent-comments','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),(135,'widget_recent-posts','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),(138,'nav_menu_options','a:1:{s:8:\"auto_add\";a:0:{}}','yes');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default'),(2,3,'_wp_page_template','default'),(4,5,'_customize_changeset_uuid','83ffea30-2e1c-4325-9a50-cd718b687f7e'),(6,6,'_customize_changeset_uuid','83ffea30-2e1c-4325-9a50-cd718b687f7e'),(8,7,'_customize_changeset_uuid','83ffea30-2e1c-4325-9a50-cd718b687f7e'),(10,8,'_customize_changeset_uuid','83ffea30-2e1c-4325-9a50-cd718b687f7e'),(11,14,'_menu_item_type','custom'),(12,14,'_menu_item_menu_item_parent','0'),(13,14,'_menu_item_object_id','14'),(14,14,'_menu_item_object','custom'),(15,14,'_menu_item_target',''),(16,14,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(17,14,'_menu_item_xfn',''),(18,14,'_menu_item_url','https://vbachele.42.fr/'),(19,15,'_menu_item_type','post_type'),(20,15,'_menu_item_menu_item_parent','0'),(21,15,'_menu_item_object_id','6'),(22,15,'_menu_item_object','page'),(23,15,'_menu_item_target',''),(24,15,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(25,15,'_menu_item_xfn',''),(26,15,'_menu_item_url',''),(27,16,'_menu_item_type','post_type'),(28,16,'_menu_item_menu_item_parent','0'),(29,16,'_menu_item_object_id','8'),(30,16,'_menu_item_object','page'),(31,16,'_menu_item_target',''),(32,16,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(33,16,'_menu_item_xfn',''),(34,16,'_menu_item_url',''),(35,17,'_menu_item_type','post_type'),(36,17,'_menu_item_menu_item_parent','0'),(37,17,'_menu_item_object_id','7'),(38,17,'_menu_item_object','page'),(39,17,'_menu_item_target',''),(40,17,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(41,17,'_menu_item_xfn',''),(42,17,'_menu_item_url',''),(43,18,'_menu_item_type','custom'),(44,18,'_menu_item_menu_item_parent','0'),(45,18,'_menu_item_object_id','18'),(46,18,'_menu_item_object','custom'),(47,18,'_menu_item_target',''),(48,18,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(49,18,'_menu_item_xfn',''),(50,18,'_menu_item_url','https://www.facebook.com/wordpress'),(51,19,'_menu_item_type','custom'),(52,19,'_menu_item_menu_item_parent','0'),(53,19,'_menu_item_object_id','19'),(54,19,'_menu_item_object','custom'),(55,19,'_menu_item_target',''),(56,19,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(57,19,'_menu_item_xfn',''),(58,19,'_menu_item_url','https://twitter.com/wordpress'),(59,20,'_menu_item_type','custom'),(60,20,'_menu_item_menu_item_parent','0'),(61,20,'_menu_item_object_id','20'),(62,20,'_menu_item_object','custom'),(63,20,'_menu_item_target',''),(64,20,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(65,20,'_menu_item_xfn',''),(66,20,'_menu_item_url','https://www.instagram.com/explore/tags/wordcamp/'),(67,21,'_menu_item_type','custom'),(68,21,'_menu_item_menu_item_parent','0'),(69,21,'_menu_item_object_id','21'),(70,21,'_menu_item_object','custom'),(71,21,'_menu_item_target',''),(72,21,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(73,21,'_menu_item_xfn',''),(74,21,'_menu_item_url','mailto:wordpress@example.com'),(75,9,'_wp_trash_meta_status','publish'),(76,9,'_wp_trash_meta_time','1627807672');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2021-08-01 08:46:35','2021-08-01 08:46:35','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2021-08-01 08:46:35','2021-08-01 08:46:35','',0,'https://vbachele.42.fr/?p=1',0,'post','',1),(2,1,'2021-08-01 08:46:35','2021-08-01 08:46:35','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"https://vbachele.42.fr/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2021-08-01 08:46:35','2021-08-01 08:46:35','',0,'https://vbachele.42.fr/?page_id=2',0,'page','',0),(3,1,'2021-08-01 08:46:35','2021-08-01 08:46:35','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: https://vbachele.42.fr.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->','Privacy Policy','','draft','closed','open','','privacy-policy','','','2021-08-01 08:46:35','2021-08-01 08:46:35','',0,'https://vbachele.42.fr/?page_id=3',0,'page','',0),(4,1,'2021-08-01 08:46:50','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2021-08-01 08:46:50','0000-00-00 00:00:00','',0,'https://vbachele.42.fr/?p=4',0,'post','',0),(5,1,'2021-08-01 08:47:51','2021-08-01 08:47:51','\n					<!-- wp:heading {\"align\":\"wide\",\"fontSize\":\"gigantic\",\"style\":{\"typography\":{\"lineHeight\":\"1.1\"}}} -->\n					<h2 class=\"alignwide has-text-align-wide has-gigantic-font-size\" style=\"line-height:1.1\">Create your website with blocks</h2>\n					<!-- /wp:heading -->\n\n					<!-- wp:spacer -->\n					<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:columns {\"verticalAlignment\":\"center\",\"align\":\"wide\",\"className\":\"is-style-twentytwentyone-columns-overlap\"} -->\n					<div class=\"wp-block-columns alignwide are-vertically-aligned-center is-style-twentytwentyone-columns-overlap\"><!-- wp:column {\"verticalAlignment\":\"center\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-center\"><!-- wp:image {\"align\":\"full\",\"sizeSlug\":\"large\"} -->\n					<figure class=\"wp-block-image alignfull size-large\"><img src=\"https://vbachele.42.fr/wp-content/themes/twentytwentyone/assets/images/roses-tremieres-hollyhocks-1884.jpg\" alt=\"&#8220;Roses Trémières&#8221; by Berthe Morisot\"/></figure>\n					<!-- /wp:image -->\n\n					<!-- wp:spacer -->\n					<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:image {\"align\":\"full\",\"sizeSlug\":\"large\",\"className\":\"is-style-twentytwentyone-image-frame\"} -->\n					<figure class=\"wp-block-image alignfull size-large is-style-twentytwentyone-image-frame\"><img src=\"https://vbachele.42.fr/wp-content/themes/twentytwentyone/assets/images/in-the-bois-de-boulogne.jpg\" alt=\"&#8220;In the Bois de Boulogne&#8221; by Berthe Morisot\"/></figure>\n					<!-- /wp:image --></div>\n					<!-- /wp:column -->\n\n					<!-- wp:column {\"verticalAlignment\":\"center\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-center\"><!-- wp:spacer -->\n					<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:image {\"sizeSlug\":\"large\",\"className\":\"alignfull size-full is-style-twentytwentyone-border\"} -->\n					<figure class=\"wp-block-image size-large alignfull size-full is-style-twentytwentyone-border\"><img src=\"https://vbachele.42.fr/wp-content/themes/twentytwentyone/assets/images/young-woman-in-mauve.jpg\" alt=\"&#8220;Young Woman in Mauve&#8221; by Berthe Morisot\"/></figure>\n					<!-- /wp:image --></div>\n					<!-- /wp:column --></div>\n					<!-- /wp:columns -->\n\n					<!-- wp:spacer {\"height\":50} -->\n					<div style=\"height:50px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:columns {\"verticalAlignment\":\"top\",\"align\":\"wide\"} -->\n					<div class=\"wp-block-columns alignwide are-vertically-aligned-top\"><!-- wp:column {\"verticalAlignment\":\"top\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\n					<h3>Add block patterns</h3>\n					<!-- /wp:heading -->\n\n					<!-- wp:paragraph -->\n					<p>Block patterns are pre-designed groups of blocks. To add one, select the Add Block button [+] in the toolbar at the top of the editor. Switch to the Patterns tab underneath the search bar, and choose a pattern.</p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column -->\n\n					<!-- wp:column {\"verticalAlignment\":\"top\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\n					<h3>Frame your images</h3>\n					<!-- /wp:heading -->\n\n					<!-- wp:paragraph -->\n					<p>Twenty Twenty-One includes stylish borders for your content. With an Image block selected, open the &quot;Styles&quot; panel within the Editor sidebar. Select the &quot;Frame&quot; block style to activate it.</p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column -->\n\n					<!-- wp:column {\"verticalAlignment\":\"top\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\n					<h3>Overlap columns</h3>\n					<!-- /wp:heading -->\n\n					<!-- wp:paragraph -->\n					<p>Twenty Twenty-One also includes an overlap style for column blocks. With a Columns block selected, open the &quot;Styles&quot; panel within the Editor sidebar. Choose the &quot;Overlap&quot; block style to try it out.</p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column --></div>\n					<!-- /wp:columns -->\n\n					<!-- wp:spacer -->\n					<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:cover {\"overlayColor\":\"green\",\"contentPosition\":\"center center\",\"align\":\"wide\",\"className\":\"is-style-twentytwentyone-border\"} -->\n					<div class=\"wp-block-cover alignwide has-green-background-color has-background-dim is-style-twentytwentyone-border\"><div class=\"wp-block-cover__inner-container\"><!-- wp:spacer {\"height\":20} -->\n					<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:paragraph {\"fontSize\":\"huge\"} -->\n					<p class=\"has-huge-font-size\">Need help?</p>\n					<!-- /wp:paragraph -->\n\n					<!-- wp:spacer {\"height\":75} -->\n					<div style=\"height:75px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:columns -->\n					<div class=\"wp-block-columns\"><!-- wp:column -->\n					<div class=\"wp-block-column\"><!-- wp:paragraph -->\n					<p><a href=\"https://wordpress.org/support/article/twenty-twenty-one/\">Read the Theme Documentation</a></p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column -->\n\n					<!-- wp:column -->\n					<div class=\"wp-block-column\"><!-- wp:paragraph -->\n					<p><a href=\"https://wordpress.org/support/theme/twentytwentyone/\">Check out the Support Forums</a></p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column --></div>\n					<!-- /wp:columns -->\n\n					<!-- wp:spacer {\"height\":20} -->\n					<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer --></div></div>\n					<!-- /wp:cover -->','Create your website with blocks','','publish','closed','closed','','create-your-website-with-blocks','','','2021-08-01 08:47:51','2021-08-01 08:47:51','',0,'https://vbachele.42.fr/?page_id=5',0,'page','',0),(6,1,'2021-08-01 08:47:51','2021-08-01 08:47:51','<!-- wp:paragraph -->\n<p>You might be an artist who would like to introduce yourself and your work here or maybe you&rsquo;re a business with a mission to describe.</p>\n<!-- /wp:paragraph -->','About','','publish','closed','closed','','about','','','2021-08-01 08:47:51','2021-08-01 08:47:51','',0,'https://vbachele.42.fr/?page_id=6',0,'page','',0),(7,1,'2021-08-01 08:47:51','2021-08-01 08:47:51','<!-- wp:paragraph -->\n<p>This is a page with some basic contact information, such as an address and phone number. You might also try a plugin to add a contact form.</p>\n<!-- /wp:paragraph -->','Contact','','publish','closed','closed','','contact','','','2021-08-01 08:47:51','2021-08-01 08:47:51','',0,'https://vbachele.42.fr/?page_id=7',0,'page','',0),(8,1,'2021-08-01 08:47:51','2021-08-01 08:47:51','','Blog','','publish','closed','closed','','blog','','','2021-08-01 08:47:51','2021-08-01 08:47:51','',0,'https://vbachele.42.fr/?page_id=8',0,'page','',0),(9,1,'2021-08-01 08:47:51','2021-08-01 08:47:51','{\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            5,\n            6,\n            7,\n            8\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-08-01 08:47:38\"\n    },\n    \"nav_menu[-1]\": {\n        \"value\": {\n            \"name\": \"Primary menu\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-08-01 08:47:51\"\n    },\n    \"nav_menu_item[-1]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 0,\n            \"type\": \"custom\",\n            \"title\": \"Home\",\n            \"url\": \"https://vbachele.42.fr/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-08-01 08:47:51\"\n    },\n    \"nav_menu_item[-2]\": {\n        \"value\": {\n            \"object_id\": 6,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"About\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"About\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-08-01 08:47:51\"\n    },\n    \"nav_menu_item[-3]\": {\n        \"value\": {\n            \"object_id\": 8,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"Blog\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Blog\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-08-01 08:47:51\"\n    },\n    \"nav_menu_item[-4]\": {\n        \"value\": {\n            \"object_id\": 7,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"Contact\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Contact\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-08-01 08:47:51\"\n    },\n    \"twentytwentyone::nav_menu_locations[primary]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-08-01 08:47:38\"\n    },\n    \"nav_menu[-5]\": {\n        \"value\": {\n            \"name\": \"Secondary menu\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-08-01 08:47:51\"\n    },\n    \"nav_menu_item[-5]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 0,\n            \"type\": \"custom\",\n            \"title\": \"Facebook\",\n            \"url\": \"https://www.facebook.com/wordpress\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-08-01 08:47:51\"\n    },\n    \"nav_menu_item[-6]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"Twitter\",\n            \"url\": \"https://twitter.com/wordpress\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-08-01 08:47:51\"\n    },\n    \"nav_menu_item[-7]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"custom\",\n            \"title\": \"Instagram\",\n            \"url\": \"https://www.instagram.com/explore/tags/wordcamp/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-08-01 08:47:51\"\n    },\n    \"nav_menu_item[-8]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"custom\",\n            \"title\": \"Email\",\n            \"url\": \"mailto:wordpress@example.com\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-08-01 08:47:51\"\n    },\n    \"twentytwentyone::nav_menu_locations[footer]\": {\n        \"starter_content\": true,\n        \"value\": -5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-08-01 08:47:38\"\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-08-01 08:47:38\"\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 5,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-08-01 08:47:38\"\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 8,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-08-01 08:47:38\"\n    },\n    \"twentytwentyone::background_color\": {\n        \"value\": \"#dae5ed\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-08-01 08:47:51\"\n    }\n}','','','trash','closed','closed','','83ffea30-2e1c-4325-9a50-cd718b687f7e','','','2021-08-01 08:47:51','2021-08-01 08:47:51','',0,'https://vbachele.42.fr/?p=9',0,'customize_changeset','',0),(10,1,'2021-08-01 08:47:51','2021-08-01 08:47:51','\n					<!-- wp:heading {\"align\":\"wide\",\"fontSize\":\"gigantic\",\"style\":{\"typography\":{\"lineHeight\":\"1.1\"}}} -->\n					<h2 class=\"alignwide has-text-align-wide has-gigantic-font-size\" style=\"line-height:1.1\">Create your website with blocks</h2>\n					<!-- /wp:heading -->\n\n					<!-- wp:spacer -->\n					<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:columns {\"verticalAlignment\":\"center\",\"align\":\"wide\",\"className\":\"is-style-twentytwentyone-columns-overlap\"} -->\n					<div class=\"wp-block-columns alignwide are-vertically-aligned-center is-style-twentytwentyone-columns-overlap\"><!-- wp:column {\"verticalAlignment\":\"center\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-center\"><!-- wp:image {\"align\":\"full\",\"sizeSlug\":\"large\"} -->\n					<figure class=\"wp-block-image alignfull size-large\"><img src=\"https://vbachele.42.fr/wp-content/themes/twentytwentyone/assets/images/roses-tremieres-hollyhocks-1884.jpg\" alt=\"&#8220;Roses Trémières&#8221; by Berthe Morisot\"/></figure>\n					<!-- /wp:image -->\n\n					<!-- wp:spacer -->\n					<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:image {\"align\":\"full\",\"sizeSlug\":\"large\",\"className\":\"is-style-twentytwentyone-image-frame\"} -->\n					<figure class=\"wp-block-image alignfull size-large is-style-twentytwentyone-image-frame\"><img src=\"https://vbachele.42.fr/wp-content/themes/twentytwentyone/assets/images/in-the-bois-de-boulogne.jpg\" alt=\"&#8220;In the Bois de Boulogne&#8221; by Berthe Morisot\"/></figure>\n					<!-- /wp:image --></div>\n					<!-- /wp:column -->\n\n					<!-- wp:column {\"verticalAlignment\":\"center\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-center\"><!-- wp:spacer -->\n					<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:image {\"sizeSlug\":\"large\",\"className\":\"alignfull size-full is-style-twentytwentyone-border\"} -->\n					<figure class=\"wp-block-image size-large alignfull size-full is-style-twentytwentyone-border\"><img src=\"https://vbachele.42.fr/wp-content/themes/twentytwentyone/assets/images/young-woman-in-mauve.jpg\" alt=\"&#8220;Young Woman in Mauve&#8221; by Berthe Morisot\"/></figure>\n					<!-- /wp:image --></div>\n					<!-- /wp:column --></div>\n					<!-- /wp:columns -->\n\n					<!-- wp:spacer {\"height\":50} -->\n					<div style=\"height:50px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:columns {\"verticalAlignment\":\"top\",\"align\":\"wide\"} -->\n					<div class=\"wp-block-columns alignwide are-vertically-aligned-top\"><!-- wp:column {\"verticalAlignment\":\"top\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\n					<h3>Add block patterns</h3>\n					<!-- /wp:heading -->\n\n					<!-- wp:paragraph -->\n					<p>Block patterns are pre-designed groups of blocks. To add one, select the Add Block button [+] in the toolbar at the top of the editor. Switch to the Patterns tab underneath the search bar, and choose a pattern.</p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column -->\n\n					<!-- wp:column {\"verticalAlignment\":\"top\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\n					<h3>Frame your images</h3>\n					<!-- /wp:heading -->\n\n					<!-- wp:paragraph -->\n					<p>Twenty Twenty-One includes stylish borders for your content. With an Image block selected, open the &quot;Styles&quot; panel within the Editor sidebar. Select the &quot;Frame&quot; block style to activate it.</p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column -->\n\n					<!-- wp:column {\"verticalAlignment\":\"top\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\n					<h3>Overlap columns</h3>\n					<!-- /wp:heading -->\n\n					<!-- wp:paragraph -->\n					<p>Twenty Twenty-One also includes an overlap style for column blocks. With a Columns block selected, open the &quot;Styles&quot; panel within the Editor sidebar. Choose the &quot;Overlap&quot; block style to try it out.</p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column --></div>\n					<!-- /wp:columns -->\n\n					<!-- wp:spacer -->\n					<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:cover {\"overlayColor\":\"green\",\"contentPosition\":\"center center\",\"align\":\"wide\",\"className\":\"is-style-twentytwentyone-border\"} -->\n					<div class=\"wp-block-cover alignwide has-green-background-color has-background-dim is-style-twentytwentyone-border\"><div class=\"wp-block-cover__inner-container\"><!-- wp:spacer {\"height\":20} -->\n					<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:paragraph {\"fontSize\":\"huge\"} -->\n					<p class=\"has-huge-font-size\">Need help?</p>\n					<!-- /wp:paragraph -->\n\n					<!-- wp:spacer {\"height\":75} -->\n					<div style=\"height:75px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:columns -->\n					<div class=\"wp-block-columns\"><!-- wp:column -->\n					<div class=\"wp-block-column\"><!-- wp:paragraph -->\n					<p><a href=\"https://wordpress.org/support/article/twenty-twenty-one/\">Read the Theme Documentation</a></p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column -->\n\n					<!-- wp:column -->\n					<div class=\"wp-block-column\"><!-- wp:paragraph -->\n					<p><a href=\"https://wordpress.org/support/theme/twentytwentyone/\">Check out the Support Forums</a></p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column --></div>\n					<!-- /wp:columns -->\n\n					<!-- wp:spacer {\"height\":20} -->\n					<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer --></div></div>\n					<!-- /wp:cover -->','Create your website with blocks','','inherit','closed','closed','','5-revision-v1','','','2021-08-01 08:47:51','2021-08-01 08:47:51','',5,'https://vbachele.42.fr/?p=10',0,'revision','',0),(11,1,'2021-08-01 08:47:51','2021-08-01 08:47:51','<!-- wp:paragraph -->\n<p>You might be an artist who would like to introduce yourself and your work here or maybe you&rsquo;re a business with a mission to describe.</p>\n<!-- /wp:paragraph -->','About','','inherit','closed','closed','','6-revision-v1','','','2021-08-01 08:47:51','2021-08-01 08:47:51','',6,'https://vbachele.42.fr/?p=11',0,'revision','',0),(12,1,'2021-08-01 08:47:51','2021-08-01 08:47:51','<!-- wp:paragraph -->\n<p>This is a page with some basic contact information, such as an address and phone number. You might also try a plugin to add a contact form.</p>\n<!-- /wp:paragraph -->','Contact','','inherit','closed','closed','','7-revision-v1','','','2021-08-01 08:47:51','2021-08-01 08:47:51','',7,'https://vbachele.42.fr/?p=12',0,'revision','',0),(13,1,'2021-08-01 08:47:51','2021-08-01 08:47:51','','Blog','','inherit','closed','closed','','8-revision-v1','','','2021-08-01 08:47:51','2021-08-01 08:47:51','',8,'https://vbachele.42.fr/?p=13',0,'revision','',0),(14,1,'2021-08-01 08:47:51','2021-08-01 08:47:51','','Home','','publish','closed','closed','','home','','','2021-08-01 08:47:51','2021-08-01 08:47:51','',0,'https://vbachele.42.fr/?p=14',0,'nav_menu_item','',0),(15,1,'2021-08-01 08:47:51','2021-08-01 08:47:51',' ','','','publish','closed','closed','','15','','','2021-08-01 08:47:51','2021-08-01 08:47:51','',0,'https://vbachele.42.fr/?p=15',1,'nav_menu_item','',0),(16,1,'2021-08-01 08:47:52','2021-08-01 08:47:52',' ','','','publish','closed','closed','','16','','','2021-08-01 08:47:52','2021-08-01 08:47:52','',0,'https://vbachele.42.fr/?p=16',2,'nav_menu_item','',0),(17,1,'2021-08-01 08:47:52','2021-08-01 08:47:52',' ','','','publish','closed','closed','','17','','','2021-08-01 08:47:52','2021-08-01 08:47:52','',0,'https://vbachele.42.fr/?p=17',3,'nav_menu_item','',0),(18,1,'2021-08-01 08:47:52','2021-08-01 08:47:52','','Facebook','','publish','closed','closed','','facebook','','','2021-08-01 08:47:52','2021-08-01 08:47:52','',0,'https://vbachele.42.fr/?p=18',0,'nav_menu_item','',0),(19,1,'2021-08-01 08:47:52','2021-08-01 08:47:52','','Twitter','','publish','closed','closed','','twitter','','','2021-08-01 08:47:52','2021-08-01 08:47:52','',0,'https://vbachele.42.fr/?p=19',1,'nav_menu_item','',0),(20,1,'2021-08-01 08:47:52','2021-08-01 08:47:52','','Instagram','','publish','closed','closed','','instagram','','','2021-08-01 08:47:52','2021-08-01 08:47:52','',0,'https://vbachele.42.fr/?p=20',2,'nav_menu_item','',0),(21,1,'2021-08-01 08:47:52','2021-08-01 08:47:52','','Email','','publish','closed','closed','','email','','','2021-08-01 08:47:52','2021-08-01 08:47:52','',0,'https://vbachele.42.fr/?p=21',3,'nav_menu_item','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0),(14,2,0),(15,2,0),(16,2,0),(17,2,0),(18,3,0),(19,3,0),(20,3,0),(21,3,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1),(2,2,'nav_menu','',0,4),(3,3,'nav_menu','',0,4);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0),(2,'Primary menu','primary-menu',0),(3,'Secondary menu','secondary-menu',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','llescure'),(2,1,'first_name',''),(3,1,'last_name',''),(4,1,'description',''),(5,1,'rich_editing','true'),(6,1,'syntax_highlighting','true'),(7,1,'comment_shortcuts','false'),(8,1,'admin_color','fresh'),(9,1,'use_ssl','0'),(10,1,'show_admin_bar_front','true'),(11,1,'locale',''),(12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),(13,1,'wp_user_level','10'),(14,1,'dismissed_wp_pointers',''),(15,1,'show_welcome_panel','1'),(16,1,'session_tokens','a:1:{s:64:\"b2be715f8ebc4e8d3af2cfbefb5e44e5094c51a9ef2ad3814b4c65a06411f341\";a:4:{s:10:\"expiration\";i:1627980407;s:2:\"ip\";s:10:\"172.30.0.1\";s:2:\"ua\";s:105:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.162 Safari/537.36\";s:5:\"login\";i:1627807607;}}'),(17,1,'wp_dashboard_quick_press_last_post_id','4'),(18,1,'community-events-location','a:1:{s:2:\"ip\";s:10:\"172.30.0.0\";}'),(19,2,'nickname','toto'),(20,2,'first_name',''),(21,2,'last_name',''),(22,2,'description',''),(23,2,'rich_editing','true'),(24,2,'syntax_highlighting','true'),(25,2,'comment_shortcuts','false'),(26,2,'admin_color','fresh'),(27,2,'use_ssl','0'),(28,2,'show_admin_bar_front','true'),(29,2,'locale',''),(30,2,'wp_capabilities','a:1:{s:11:\"contributor\";b:1;}'),(31,2,'wp_user_level','1'),(32,2,'dismissed_wp_pointers','');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'llescure','$P$BtRzDkjnR/apr77q9AiklbOn6LWOsI1','llescure','lea.lescure@hotmail.fr','https://vbachele.42.fr','2021-08-01 08:46:35','',0,'llescure'),(2,'toto','$P$BwKEHIlpGP2oAV3GHcwHDPJAceGGbm.','toto','toto@gmail.com','','2021-08-01 08:47:30','1627807650:$P$BY1tlMSDc96Sa0IXexLR2XNj63FNP2/',0,'toto');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-01  8:56:00