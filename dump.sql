-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: international_db
-- ------------------------------------------------------
-- Server version	5.7.21-0ubuntu0.16.04.1

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add user dashboard module',1,'add_userdashboardmodule'),(2,'Can change user dashboard module',1,'change_userdashboardmodule'),(3,'Can delete user dashboard module',1,'delete_userdashboardmodule'),(4,'Can add bookmark',2,'add_bookmark'),(5,'Can change bookmark',2,'change_bookmark'),(6,'Can delete bookmark',2,'delete_bookmark'),(7,'Can add pinned application',3,'add_pinnedapplication'),(8,'Can change pinned application',3,'change_pinnedapplication'),(9,'Can delete pinned application',3,'delete_pinnedapplication'),(10,'Can add log entry',4,'add_logentry'),(11,'Can change log entry',4,'change_logentry'),(12,'Can delete log entry',4,'delete_logentry'),(13,'Can add permission',5,'add_permission'),(14,'Can change permission',5,'change_permission'),(15,'Can delete permission',5,'delete_permission'),(16,'Can add user',6,'add_user'),(17,'Can change user',6,'change_user'),(18,'Can delete user',6,'delete_user'),(19,'Can add group',7,'add_group'),(20,'Can change group',7,'change_group'),(21,'Can delete group',7,'delete_group'),(22,'Can add content type',8,'add_contenttype'),(23,'Can change content type',8,'change_contenttype'),(24,'Can delete content type',8,'delete_contenttype'),(25,'Can add session',9,'add_session'),(26,'Can change session',9,'change_session'),(27,'Can delete session',9,'delete_session'),(28,'Can add Item of element',10,'add_itemsofelement'),(29,'Can change Item of element',10,'change_itemsofelement'),(30,'Can delete Item of element',10,'delete_itemsofelement'),(31,'Can add News',11,'add_news'),(32,'Can change News',11,'change_news'),(33,'Can delete News',11,'delete_news'),(34,'Can add Calendar',12,'add_calendar'),(35,'Can change Calendar',12,'change_calendar'),(36,'Can delete Calendar',12,'delete_calendar'),(37,'Can add Category',13,'add_category'),(38,'Can change Category',13,'change_category'),(39,'Can delete Category',13,'delete_category'),(40,'Can add Element of category',14,'add_elementsofcategory'),(41,'Can change Element of category',14,'change_elementsofcategory'),(42,'Can delete Element of category',14,'delete_elementsofcategory'),(43,'Can add Life Stream',15,'add_lifestream'),(44,'Can change Life Stream',15,'change_lifestream'),(45,'Can delete Life Stream',15,'delete_lifestream'),(46,'Can add Our Partner',16,'add_ourpartner'),(47,'Can change Our Partner',16,'change_ourpartner'),(48,'Can delete Our Partner',16,'delete_ourpartner'),(49,'Can add Time',17,'add_time'),(50,'Can change Time',17,'change_time'),(51,'Can delete Time',17,'delete_time'),(52,'Can add Accordion',18,'add_accordion'),(53,'Can change Accordion',18,'change_accordion'),(54,'Can delete Accordion',18,'delete_accordion'),(55,'Can add Slider',19,'add_slider'),(56,'Can change Slider',19,'change_slider'),(57,'Can delete Slider',19,'delete_slider'),(58,'Can add File of accordion',20,'add_filesofaccordion'),(59,'Can change File of accordion',20,'change_filesofaccordion'),(60,'Can delete File of accordion',20,'delete_filesofaccordion'),(61,'Can add Contact',21,'add_contact'),(62,'Can change Contact',21,'change_contact'),(63,'Can delete Contact',21,'delete_contact'),(64,'Can add Link to the social network',22,'add_linkstothesocialnetwork'),(65,'Can change Link to the social network',22,'change_linkstothesocialnetwork'),(66,'Can delete Link to the social network',22,'delete_linkstothesocialnetwork'),(67,'Can add kv store',23,'add_kvstore'),(68,'Can change kv store',23,'change_kvstore'),(69,'Can delete kv store',23,'delete_kvstore');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$36000$mvAlQ8tmPPHl$0F5nutk3odRgFLL/n3L8FeL4zu/j0sLv2ocog+51ZKo=','2018-04-12 11:21:56.864681',1,'admin','','','a.anarkuloff@gmail.com',1,1,'2018-04-02 09:17:45.576654');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_userdashboardmodule`
--

DROP TABLE IF EXISTS `dashboard_userdashboardmodule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard_userdashboardmodule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `module` varchar(255) NOT NULL,
  `app_label` varchar(255) DEFAULT NULL,
  `user` int(10) unsigned NOT NULL,
  `column` int(10) unsigned NOT NULL,
  `order` int(11) NOT NULL,
  `settings` longtext NOT NULL,
  `children` longtext NOT NULL,
  `collapsed` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_userdashboardmodule`
--

LOCK TABLES `dashboard_userdashboardmodule` WRITE;
/*!40000 ALTER TABLE `dashboard_userdashboardmodule` DISABLE KEYS */;
INSERT INTO `dashboard_userdashboardmodule` VALUES (1,'Quick links','jet.dashboard.modules.LinkList',NULL,1,0,0,'{\"draggable\": false, \"deletable\": false, \"layout\": \"inline\", \"collapsible\": false}','[{\"url\": \"/\", \"title\": \"Return to site\"}, {\"url\": \"/admin/password_change/\", \"title\": \"Change password\"}, {\"url\": \"/admin/logout/\", \"title\": \"Log out\"}]',0),(2,'Applications','jet.dashboard.modules.AppList',NULL,1,1,0,'{\"models\": null, \"exclude\": [\"auth.*\"]}','',0),(3,'Administration','jet.dashboard.modules.AppList',NULL,1,2,0,'{\"models\": [\"auth.*\"], \"exclude\": null}','',0),(4,'Recent Actions','jet.dashboard.modules.RecentActions',NULL,1,0,1,'{\"include_list\": null, \"limit\": 10, \"exclude_list\": null, \"user\": null}','',0),(6,'Support','jet.dashboard.modules.LinkList',NULL,1,2,1,'{\"draggable\": true, \"deletable\": true, \"layout\": \"stacked\", \"collapsible\": true}','[{\"url\": \"http://docs.djangoproject.com/\", \"title\": \"Django documentation\", \"external\": true}, {\"url\": \"http://groups.google.com/group/django-users\", \"title\": \"Django \\\"django-users\\\" mailing list\", \"external\": true}, {\"url\": \"irc://irc.freenode.net/django\", \"title\": \"Django irc channel\", \"external\": true}]',0),(7,'Application models','jet.dashboard.modules.ModelList','webapp',1,0,0,'{\"models\": [\"webapp.*\"], \"exclude\": null}','',0),(8,'Recent Actions','jet.dashboard.modules.RecentActions','webapp',1,1,0,'{\"user\": null, \"exclude_list\": null, \"include_list\": [\"webapp.*\"], \"limit\": 10}','',0);
/*!40000 ALTER TABLE `dashboard_userdashboardmodule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2018-04-02 09:21:23.917154','2','Slider object',1,'[{\"added\": {}}]',19,1),(2,'2018-04-02 09:21:40.487255','3','Slider object',1,'[{\"added\": {}}]',19,1),(3,'2018-04-02 09:23:12.901585','1','ABOUT US',1,'[{\"added\": {}}]',13,1),(4,'2018-04-02 09:23:25.455488','2','ACADEMICS',1,'[{\"added\": {}}]',13,1),(5,'2018-04-02 09:23:42.201519','3','PROSPECTIVE STUDENTS',1,'[{\"added\": {}}]',13,1),(6,'2018-04-02 09:24:01.242632','4','CURRENT STUDENTS',1,'[{\"added\": {}}]',13,1),(7,'2018-04-02 09:24:15.690806','5','ALUMNI',1,'[{\"added\": {}}]',13,1),(8,'2018-04-02 09:27:04.158473','1','LifeStream object',1,'[{\"added\": {}}]',15,1),(9,'2018-04-02 09:29:56.077610','1','LifeStream object',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',15,1),(10,'2018-04-02 09:30:33.537413','1','ABOUT US',2,'[]',13,1),(11,'2018-04-02 09:30:57.297709','1','ABOUT US',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',13,1),(12,'2018-04-02 09:31:09.662184','2','ACADEMICS',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',13,1),(13,'2018-04-02 09:31:47.009515','3','PROSPECTIVE STUDENTS',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',13,1),(14,'2018-04-02 09:32:07.566514','4','CURRENT STUDENTS',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',13,1),(15,'2018-04-02 09:32:17.423051','5','ALUMNI',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',13,1),(16,'2018-04-02 09:33:45.237750','3','Slider object',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',19,1),(17,'2018-04-02 09:34:22.219019','2','Slider object',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',19,1),(18,'2018-04-02 09:42:16.896584','1','Contact object',1,'[{\"added\": {}}]',21,1),(19,'2018-04-02 09:43:14.244992','1','LinksToTheSocialNetwork object',1,'[{\"added\": {}}]',22,1),(20,'2018-04-02 09:46:56.089433','1','LifeStream object',2,'[{\"changed\": {\"fields\": [\"iframe\"]}}]',15,1),(21,'2018-04-02 09:51:04.148110','1','About us',1,'[{\"added\": {}}]',14,1),(22,'2018-04-02 09:52:42.174170','1','About us',2,'[]',14,1),(23,'2018-04-02 10:06:49.873358','1','About us',2,'[{\"changed\": {\"fields\": [\"short_description_of_files\"]}}]',14,1),(24,'2018-04-02 10:08:20.862304','1','About us',2,'[{\"changed\": {\"fields\": [\"short_description_of_files\"]}}]',14,1),(25,'2018-04-02 10:10:58.209361','1','Accordion object',1,'[{\"added\": {}}]',18,1),(26,'2018-04-02 10:12:00.103088','1','Accordion object',2,'[{\"added\": {\"name\": \"File of accordion\", \"object\": \"FilesOfAccordion object\"}}]',18,1),(27,'2018-04-02 10:25:11.704656','1','Accordion object',2,'[{\"changed\": {\"name\": \"File of accordion\", \"fields\": [\"image\"], \"object\": \"FilesOfAccordion object\"}}]',18,1),(28,'2018-04-02 10:32:35.834092','1','Accordion object',2,'[{\"changed\": {\"name\": \"File of accordion\", \"object\": \"FilesOfAccordion object\", \"fields\": [\"image\", \"short_description_for_image\"]}}]',18,1),(29,'2018-04-02 10:40:45.679976','1','Accordion object',2,'[{\"changed\": {\"object\": \"FilesOfAccordion object\", \"fields\": [\"iframe_for_youtube\"], \"name\": \"File of accordion\"}}]',18,1),(30,'2018-04-02 10:52:24.265266','1','What is Lorem Ipsum?',1,'[{\"added\": {}}]',11,1),(31,'2018-04-02 10:52:57.166797','2','Why do we use it?',1,'[{\"added\": {}}]',11,1),(32,'2018-04-02 10:53:29.260502','3','Where does it come from?',1,'[{\"added\": {}}]',11,1),(33,'2018-04-02 10:54:16.477500','4','Where can I get some?',1,'[{\"added\": {}}]',11,1),(34,'2018-04-02 10:56:05.886772','1','',1,'[{\"added\": {}}]',16,1),(35,'2018-04-02 10:56:23.053427','2','',1,'[{\"added\": {}}]',16,1),(36,'2018-04-02 10:56:40.720170','3','',1,'[{\"added\": {}}]',16,1),(37,'2018-04-02 10:59:52.083542','4','',1,'[{\"added\": {}}]',16,1),(38,'2018-04-02 11:09:04.441137','1','ABOUT US',2,'[{\"added\": {\"object\": \"Mission and Vision\", \"name\": \"Element of category\"}}, {\"added\": {\"object\": \"Kyrgyzstan\", \"name\": \"Element of category\"}}, {\"added\": {\"object\": \"ISM structure\", \"name\": \"Element of category\"}}]',13,1),(39,'2018-04-02 11:11:50.688374','4','ISM structure',2,'[{\"added\": {\"object\": \"Infrastructure\", \"name\": \"Item of element\"}}]',14,1),(40,'2018-04-02 11:13:31.409743','5','Prospective students',1,'[{\"added\": {}}]',14,1),(41,'2018-04-02 11:14:24.476957','4','ISM structure',2,'[{\"changed\": {\"object\": \"Infrastructure\", \"name\": \"Item of element\", \"fields\": [\"description\"]}}]',14,1),(42,'2018-04-02 11:14:49.017914','6','Rector’s welcome  message',1,'[{\"added\": {}}]',14,1),(43,'2018-04-02 11:15:19.713266','7','Offered programs',1,'[{\"added\": {}}]',14,1),(44,'2018-04-02 11:15:57.553021','8','Application and admission   procedures',1,'[{\"added\": {}}]',14,1),(45,'2018-04-02 11:16:21.131585','9','Our regional representatives',1,'[{\"added\": {}}]',14,1),(46,'2018-04-02 11:20:02.635568','5','Prospective students',2,'[]',14,1),(47,'2018-04-02 11:21:06.262466','5','Departments',2,'[{\"changed\": {\"fields\": [\"title\", \"slug\"]}}]',14,1),(48,'2018-04-02 11:22:06.613318','6','Projects',2,'[{\"changed\": {\"fields\": [\"title\", \"slug\"]}}]',14,1),(49,'2018-04-02 11:22:59.390516','7','Prospective students',2,'[{\"changed\": {\"fields\": [\"category\", \"title\", \"slug\"]}}]',14,1),(50,'2018-04-02 11:23:41.018805','8','Rector’s welcome  message',2,'[{\"changed\": {\"fields\": [\"category\", \"title\", \"slug\"]}}]',14,1),(51,'2018-04-02 11:25:49.218572','9','Offered programs',2,'[{\"changed\": {\"fields\": [\"category\", \"title\", \"slug\"]}}]',14,1),(52,'2018-04-02 11:26:26.566788','10','Application and admission procedures',1,'[{\"added\": {}}]',14,1),(53,'2018-04-02 11:26:59.753704','11','Our regional representatives',1,'[{\"added\": {}}]',14,1),(54,'2018-04-02 11:27:47.474740','12','Current students',1,'[{\"added\": {}}]',14,1),(55,'2018-04-02 11:28:20.753228','13','ISM integrity code',1,'[{\"added\": {}}]',14,1),(56,'2018-04-02 11:28:49.619742','14','Academic time',1,'[{\"added\": {}}]',14,1),(57,'2018-04-03 08:05:20.619339','4','ISM structure',2,'[{\"changed\": {\"name\": \"Item of element\", \"object\": \"Infrastructure\", \"fields\": [\"description\"]}}]',14,1),(58,'2018-04-04 11:54:12.760857','1','about_us',2,'[{\"changed\": {\"fields\": [\"title\"]}}]',13,1),(59,'2018-04-04 11:54:40.272645','4','academics',2,'[{\"changed\": {\"fields\": [\"title\"]}}]',13,1),(60,'2018-04-04 11:54:52.987221','2','academics',2,'[{\"changed\": {\"fields\": [\"title\"]}}]',13,1),(61,'2018-04-04 11:55:03.140607','3','prospective_students',2,'[{\"changed\": {\"fields\": [\"title\"]}}]',13,1),(62,'2018-04-04 11:55:09.976307','4','current stundents',2,'[{\"changed\": {\"fields\": [\"title\"]}}]',13,1),(63,'2018-04-04 11:55:16.929988','5','alumni',2,'[{\"changed\": {\"fields\": [\"title\"]}}]',13,1),(64,'2018-04-04 13:49:23.800667','5','ALUMNI',2,'[{\"changed\": {\"fields\": [\"title\", \"slug\"]}}]',13,1),(65,'2018-04-04 13:49:37.266410','4','CURRENT STUDENTS',2,'[{\"changed\": {\"fields\": [\"title\", \"slug\"]}}]',13,1),(66,'2018-04-04 13:50:12.141312','3','PROSPECTIVE STUDENTS',2,'[{\"changed\": {\"fields\": [\"title\", \"slug\"]}}]',13,1),(67,'2018-04-04 13:50:20.466963','2','ACADEMICS',2,'[{\"changed\": {\"fields\": [\"title\", \"slug\"]}}]',13,1),(68,'2018-04-04 13:50:28.896338','1','ABOUT US',2,'[{\"changed\": {\"fields\": [\"title\", \"slug\"]}}]',13,1),(69,'2018-04-05 05:23:15.888958','2','Slider object',2,'[]',19,1),(70,'2018-04-05 05:30:13.562149','2','Slider object',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',19,1),(71,'2018-04-05 06:39:21.233023','2','Slider object',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',19,1),(72,'2018-04-05 06:40:36.921879','2','Slider object',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',19,1),(73,'2018-04-05 06:40:48.640455','3','Slider object',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',19,1),(74,'2018-04-05 11:56:58.419717','1','LifeStream object',2,'[{\"added\": {\"name\": \"Time\", \"object\": \"Time object\"}}, {\"added\": {\"name\": \"Time\", \"object\": \"Time object\"}}]',15,1),(75,'2018-04-12 11:09:04.929290','15','Overview of current students',1,'[{\"added\": {}}]',14,1),(76,'2018-04-12 11:11:53.037668','16','Students resources',1,'[{\"added\": {}}, {\"added\": {\"name\": \"Item of element\", \"object\": \"Students cabinet\"}}, {\"added\": {\"name\": \"Item of element\", \"object\": \"Students evaluation page\"}}, {\"added\": {\"name\": \"Item of element\", \"object\": \"Life of Students\"}}]',14,1),(77,'2018-04-12 11:12:40.818866','16','Students resources',2,'[{\"added\": {\"name\": \"Item of element\", \"object\": \"Health services and emergency\"}}]',14,1),(78,'2018-04-12 12:27:18.399069','1','LifeStream object',1,'[{\"added\": {}}]',15,1),(79,'2018-04-12 12:27:50.788756','1','LifeStream object',2,'[{\"changed\": {\"fields\": [\"iframe\"]}}]',15,1),(80,'2018-04-12 12:28:12.683194','1','LifeStream object',2,'[{\"changed\": {\"fields\": [\"iframe\"]}}]',15,1),(81,'2018-04-12 13:17:49.400546','1','Calendar object',1,'[{\"added\": {}}]',12,1),(82,'2018-04-12 13:19:27.984678','2','TEST2',1,'[{\"added\": {}}]',12,1),(83,'2018-04-12 13:20:12.327399','3','TEST 3',1,'[{\"added\": {}}]',12,1),(84,'2018-04-12 13:29:27.019210','1','TEST',2,'[]',12,1),(85,'2018-04-13 07:15:04.423960','2','Slider object',2,'[{\"changed\": {\"fields\": [\"title\"]}}]',19,1),(86,'2018-04-13 07:15:20.341513','3','Slider object',2,'[{\"changed\": {\"fields\": [\"title\"]}}]',19,1),(87,'2018-04-13 08:55:57.341175','1','TEST',2,'[]',12,1),(88,'2018-04-13 08:58:13.819022','2','TEST2',2,'[]',12,1),(89,'2018-04-13 08:59:48.308548','1','TEST',2,'[]',12,1),(90,'2018-04-13 09:00:29.970400','3','TEST 3',2,'[]',12,1),(91,'2018-04-13 09:01:33.421250','1','TEST',2,'[]',12,1),(92,'2018-04-13 09:06:20.050384','1','TEST',2,'[]',12,1),(93,'2018-04-13 09:06:27.400535','2','TEST2',2,'[]',12,1),(94,'2018-04-13 09:09:15.103148','1','TEST',2,'[]',12,1),(95,'2018-04-13 09:09:23.879698','2','TEST2',2,'[]',12,1),(96,'2018-04-13 09:09:33.085279','3','TEST 3',2,'[]',12,1),(97,'2018-04-13 09:14:20.063687','1','TEST',2,'[]',12,1),(98,'2018-04-13 09:22:56.915551','1','TEST',2,'[]',12,1),(99,'2018-04-13 09:46:01.786651','1','TEST',2,'[]',12,1),(100,'2018-04-13 09:46:41.873107','4','Facebook',1,'[{\"added\": {}}]',12,1),(101,'2018-04-13 09:50:31.040182','4','Facebook',2,'[]',12,1),(102,'2018-04-13 09:51:52.528667','5','Шкафы',1,'[{\"added\": {}}]',12,1),(103,'2018-04-13 09:52:16.238282','5','Шкафы',2,'[]',12,1),(104,'2018-04-13 09:58:35.876762','4','Facebook',2,'[{\"changed\": {\"fields\": [\"date\"]}}]',12,1),(105,'2018-04-13 09:59:10.223563','4','Facebook',2,'[]',12,1),(106,'2018-04-13 09:59:51.956377','2','TEST2',2,'[]',12,1),(107,'2018-04-13 10:48:50.077846','3','TEST 3',2,'[]',12,1),(108,'2018-04-13 11:10:12.420786','4','Where can I get some?',2,'[]',11,1),(109,'2018-04-13 11:14:32.667521','3','Where does it come from?',2,'[]',11,1),(110,'2018-04-13 11:24:48.596140','2','Why do we use it?',2,'[]',11,1),(111,'2018-04-13 12:12:34.077657','1','About us',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',14,1),(112,'2018-04-13 12:34:38.784675','4','ISM structure',2,'[]',14,1),(113,'2018-04-13 12:44:19.984152','3','TEST 3',2,'[]',12,1),(114,'2018-04-13 12:47:31.736118','8','Why do we use it?',2,'[]',12,1),(115,'2018-04-13 12:47:57.360249','8','Why do we use it?',2,'[]',12,1),(116,'2018-04-13 12:55:48.441301','1','What is Lorem Ipsum?',2,'[]',11,1),(117,'2018-04-13 12:56:09.312213','1','What is Lorem Ipsum?',2,'[{\"changed\": {\"fields\": [\"add_to_calendar\"]}}]',11,1),(118,'2018-04-13 12:56:37.184996','9','What is Lorem Ipsum?',3,'',12,1),(119,'2018-04-13 12:56:37.232849','8','Why do we use it?',3,'',12,1),(120,'2018-04-13 12:56:55.223853','2','Why do we use it?',2,'[]',11,1),(121,'2018-04-13 12:57:13.148925','1','What is Lorem Ipsum?',2,'[]',11,1),(122,'2018-04-14 05:13:26.335594','1','About us',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',14,1),(123,'2018-04-14 05:21:03.375275','2','Mission and Vision',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',14,1),(124,'2018-04-14 05:22:01.294674','2','Mission and Vision',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',14,1),(125,'2018-04-14 05:24:40.102172','2','Mission and Vision',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',14,1),(126,'2018-04-14 05:25:49.999805','2','Mission and Vision',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',14,1),(127,'2018-04-14 08:55:47.615896','5','ALUMNI',2,'[{\"added\": {\"object\": \"Alumni\", \"name\": \"Element of category\"}}]',13,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (4,'admin','logentry'),(7,'auth','group'),(5,'auth','permission'),(6,'auth','user'),(8,'contenttypes','contenttype'),(1,'dashboard','userdashboardmodule'),(2,'jet','bookmark'),(3,'jet','pinnedapplication'),(9,'sessions','session'),(23,'thumbnail','kvstore'),(18,'webapp','accordion'),(12,'webapp','time'),(13,'webapp','category'),(21,'webapp','contact'),(14,'webapp','elementsofcategory'),(20,'webapp','filesofaccordion'),(10,'webapp','itemsofelement'),(15,'webapp','lifestream'),(22,'webapp','linkstothesocialnetwork'),(11,'webapp','news'),(16,'webapp','ourpartner'),(19,'webapp','slider'),(17,'webapp','time');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-04-02 09:10:14.081430'),(2,'auth','0001_initial','2018-04-02 09:10:24.173393'),(3,'admin','0001_initial','2018-04-02 09:10:26.401896'),(4,'admin','0002_logentry_remove_auto_add','2018-04-02 09:10:26.654184'),(5,'contenttypes','0002_remove_content_type_name','2018-04-02 09:10:28.033731'),(6,'auth','0002_alter_permission_name_max_length','2018-04-02 09:10:29.063135'),(7,'auth','0003_alter_user_email_max_length','2018-04-02 09:10:30.024974'),(8,'auth','0004_alter_user_username_opts','2018-04-02 09:10:30.121603'),(9,'auth','0005_alter_user_last_login_null','2018-04-02 09:10:30.846791'),(10,'auth','0006_require_contenttypes_0002','2018-04-02 09:10:30.936040'),(11,'auth','0007_alter_validators_add_error_messages','2018-04-02 09:10:31.023897'),(12,'auth','0008_alter_user_username_max_length','2018-04-02 09:10:31.913061'),(13,'dashboard','0001_initial','2018-04-02 09:10:32.362429'),(14,'jet','0001_initial','2018-04-02 09:10:33.343952'),(15,'jet','0002_delete_userdashboardmodule','2018-04-02 09:10:33.620626'),(16,'sessions','0001_initial','2018-04-02 09:10:34.329985'),(17,'webapp','0001_initial','2018-04-02 09:10:47.959235'),(18,'webapp','0002_auto_20180402_0913','2018-04-02 09:13:25.285852'),(19,'webapp','0002_auto_20180402_0929','2018-04-02 09:29:24.444948'),(20,'webapp','0003_auto_20180402_1003','2018-04-02 10:03:44.523318'),(21,'webapp','0004_auto_20180402_1022','2018-04-02 10:22:53.918178'),(22,'webapp','0005_auto_20180402_1027','2018-04-02 10:27:35.830202'),(23,'webapp','0006_filesofaccordion_iframe_for_youtube','2018-04-02 10:36:50.953776'),(24,'webapp','0007_auto_20180402_1043','2018-04-02 10:43:09.158003'),(25,'webapp','0008_auto_20180402_1047','2018-04-02 10:47:38.438991'),(26,'webapp','0009_auto_20180402_1114','2018-04-02 11:14:09.971279'),(27,'webapp','0010_auto_20180402_1132','2018-04-02 11:32:45.890672'),(28,'webapp','0002_auto_20180404_1153','2018-04-04 11:53:23.072656'),(29,'webapp','0003_auto_20180404_1341','2018-04-04 13:41:41.365509'),(30,'thumbnail','0001_initial','2018-04-05 04:55:22.862751'),(31,'webapp','0004_auto_20180405_0518','2018-04-05 05:18:32.821815'),(32,'webapp','0002_auto_20180412_0505','2018-04-12 05:05:57.180458'),(33,'webapp','0002_calendar_lifestream','2018-04-12 12:21:29.275527'),(34,'webapp','0002_slider_title','2018-04-13 07:02:16.077752'),(35,'webapp','0002_news_add_to_calendar','2018-04-13 12:52:12.301591'),(36,'webapp','0002_auto_20180413_1329','2018-04-13 13:29:06.845971'),(37,'webapp','0003_auto_20180413_1339','2018-04-13 13:40:02.121248'),(38,'webapp','0002_auto_20180414_0508','2018-04-14 05:08:23.005874'),(39,'webapp','0003_auto_20180414_0644','2018-04-14 06:44:49.794908'),(40,'webapp','0004_auto_20180414_0740','2018-04-14 07:40:15.166265');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('90st6geksbl2de5l2c592so56b8ysp5i','YmRiZmVkZWY0OTM0OWY2NWE4ZjJkYmUxODQ4ODc2MjIxMmU2NzZkYTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiM2U4YWZkYmQwOTU5NGM1ZDNmODAzZTY2NGM0NjhlMWVlMmQ0OTZjZSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=','2018-04-19 06:38:49.885667'),('hyq3ce5jqu3pjp2zm9i0amjvu9xfwo82','YmU3ZmYyNjcyYWQ4N2UyZmI1ODhkNTdmOWE3MDY0NTU5ODMzZTYwODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzZThhZmRiZDA5NTk0YzVkM2Y4MDNlNjY0YzQ2OGUxZWUyZDQ5NmNlIn0=','2018-04-17 08:04:01.590837'),('m9gu4qj4uc2ftajwjru3d4o0o2xsiukj','ODZlOGNjYmRjMzIwMTVmMjk1MmFmODg3MmQxMDIyNDZlZmQ3ZGMxZTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiM2U4YWZkYmQwOTU5NGM1ZDNmODAzZTY2NGM0NjhlMWVlMmQ0OTZjZSIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2018-04-19 11:56:00.252898'),('mf7hfxz7ttcuowz5udupxjmvs35li0lh','YmU3ZmYyNjcyYWQ4N2UyZmI1ODhkNTdmOWE3MDY0NTU5ODMzZTYwODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzZThhZmRiZDA5NTk0YzVkM2Y4MDNlNjY0YzQ2OGUxZWUyZDQ5NmNlIn0=','2018-04-26 11:08:03.370028'),('mp2145mlsg4y4hh1rbtn5bn9l8ldsgxn','YmU3ZmYyNjcyYWQ4N2UyZmI1ODhkNTdmOWE3MDY0NTU5ODMzZTYwODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzZThhZmRiZDA5NTk0YzVkM2Y4MDNlNjY0YzQ2OGUxZWUyZDQ5NmNlIn0=','2018-04-26 11:21:56.898342'),('nlvpdi5j3gvcoa1cizarqbgckuhmxc5c','YmU3ZmYyNjcyYWQ4N2UyZmI1ODhkNTdmOWE3MDY0NTU5ODMzZTYwODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzZThhZmRiZDA5NTk0YzVkM2Y4MDNlNjY0YzQ2OGUxZWUyZDQ5NmNlIn0=','2018-04-26 05:06:14.343236'),('vk5yo52267yr33f20691y43as8ptw8w0','ODZlOGNjYmRjMzIwMTVmMjk1MmFmODg3MmQxMDIyNDZlZmQ3ZGMxZTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiM2U4YWZkYmQwOTU5NGM1ZDNmODAzZTY2NGM0NjhlMWVlMmQ0OTZjZSIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2018-04-18 11:53:47.863793'),('y0iae39ly28q9lgyib9y6vewitwtfnz4','NmY3Y2FiNTBiODVmYmI3NzU4ZmEwZTQ2YzUxNWI2YTNlNDk2NTUxMTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiIzZThhZmRiZDA5NTk0YzVkM2Y4MDNlNjY0YzQ2OGUxZWUyZDQ5NmNlIn0=','2018-04-16 09:18:00.159572');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jet_bookmark`
--

DROP TABLE IF EXISTS `jet_bookmark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jet_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(200) NOT NULL,
  `title` varchar(255) NOT NULL,
  `user` int(10) unsigned NOT NULL,
  `date_add` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jet_bookmark`
--

LOCK TABLES `jet_bookmark` WRITE;
/*!40000 ALTER TABLE `jet_bookmark` DISABLE KEYS */;
/*!40000 ALTER TABLE `jet_bookmark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jet_pinnedapplication`
--

DROP TABLE IF EXISTS `jet_pinnedapplication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jet_pinnedapplication` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(255) NOT NULL,
  `user` int(10) unsigned NOT NULL,
  `date_add` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jet_pinnedapplication`
--

LOCK TABLES `jet_pinnedapplication` WRITE;
/*!40000 ALTER TABLE `jet_pinnedapplication` DISABLE KEYS */;
/*!40000 ALTER TABLE `jet_pinnedapplication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thumbnail_kvstore`
--

DROP TABLE IF EXISTS `thumbnail_kvstore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `thumbnail_kvstore` (
  `key` varchar(200) NOT NULL,
  `value` longtext NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thumbnail_kvstore`
--

LOCK TABLES `thumbnail_kvstore` WRITE;
/*!40000 ALTER TABLE `thumbnail_kvstore` DISABLE KEYS */;
INSERT INTO `thumbnail_kvstore` VALUES ('sorl-thumbnail||image||03aa36c2c176552c58632ee06a2690ab','{\"name\": \"cache/76/b6/76b6d31c7ad358037be728300490a39d.png\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [80, 80]}'),('sorl-thumbnail||image||1e87d0864aa98f0fd617153b42a6c15b','{\"name\": \"cache/c2/01/c20121d773029a0b2b999c5a60119803.png\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [78, 80]}'),('sorl-thumbnail||image||247363f56597bf420808d22bfc1ae43e','{\"name\": \"cache/1e/6f/1e6f1d5da89448e4c5e292a91a720dbb.png\", \"size\": [142, 80], \"storage\": \"django.core.files.storage.FileSystemStorage\"}'),('sorl-thumbnail||image||2b7b3a17401ae5ada8658b4b57dcaf6f','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"images/news/current_student.png\", \"size\": [595, 595]}'),('sorl-thumbnail||image||4c9c9199405339cc9be4f96d4b065cf9','{\"name\": \"images/different/academics.png\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [595, 595]}'),('sorl-thumbnail||image||50d846c0614f286286bf90b83539a72a','{\"name\": \"cache/2f/04/2f0418c46204b11c6e0329f034b9d7c2.png\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [80, 80]}'),('sorl-thumbnail||image||58fde441363f5382eea1d42de2dfd3a0','{\"size\": [460, 300], \"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"images/different/apple-iphone_8_plus-space_gray-image_01_1.jpg\"}'),('sorl-thumbnail||image||5ad1d4f3358d266e4c5a640f47d6fe27','{\"name\": \"images/news/home.png\", \"size\": [1920, 1080], \"storage\": \"django.core.files.storage.FileSystemStorage\"}'),('sorl-thumbnail||image||60f6a8abbdc61a2a427b98b9e05b5632','{\"name\": \"cache/00/e7/00e7cf1d3add76e13089fedbfc3c026a.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [80, 80]}'),('sorl-thumbnail||image||63bc62349dde439f4ff41aa7568373f9','{\"name\": \"images/different/current_student.png\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [595, 595]}'),('sorl-thumbnail||image||64bf3f263fd29b4f640ae21595aa4889','{\"name\": \"images/different/ban3.png\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [595, 595]}'),('sorl-thumbnail||image||677e2207f90e2ef089fc03b632691711','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"images/different/ban6.png\", \"size\": [594, 599]}'),('sorl-thumbnail||image||8ba478a28d80f5817a35e3fb9dc6b9d7','{\"name\": \"images/different/ban3_lwdDRvx.png\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [595, 595]}'),('sorl-thumbnail||image||942822b46fc3eec40147c69cce67637e','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"cache/cb/ef/cbeff5c4734017141ffdeca752e5ddb7.png\", \"size\": [79, 80]}'),('sorl-thumbnail||image||985710048463476ed8a4e2bcbed7ae36','{\"size\": [595, 595], \"name\": \"images/different/alumni.png\", \"storage\": \"django.core.files.storage.FileSystemStorage\"}'),('sorl-thumbnail||image||a80fb5056c33d9eb28484c417672130d','{\"size\": [123, 80], \"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"cache/c3/c6/c3c697696bba4f1c01590e9458c3b1a6.jpg\"}'),('sorl-thumbnail||image||c0d1c04a565df8dac4f1e9579b8b4217','{\"size\": [80, 80], \"name\": \"cache/a4/8d/a48d92e5fa3e2ddfab7feaa7e25cb663.png\", \"storage\": \"django.core.files.storage.FileSystemStorage\"}'),('sorl-thumbnail||image||cdff0e91536ecf37797f2b559f7bdd28','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"cache/41/04/410469476dbe66d6fb9423f15f9a3f78.png\", \"size\": [79, 80]}'),('sorl-thumbnail||image||d40bc98da933a477307cbc59d85ea043','{\"name\": \"images/news/news.jpg\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [327, 327]}'),('sorl-thumbnail||image||da702ecbf0603e4191cd6bd36ba724f9','{\"name\": \"images/different/bmd.png\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [154, 157]}'),('sorl-thumbnail||image||e1e7016c0a228591be23b3d63f0310b0','{\"name\": \"cache/a8/15/a81558488fccc13fe41e5c003a8246fb.png\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [80, 80]}'),('sorl-thumbnail||image||f2fbab2e2b4b0334e2a339a519aca36d','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"images/news/ban6.png\", \"size\": [594, 599]}'),('sorl-thumbnail||image||f9a8a24b170c4e22e0f573a44df29c6e','{\"storage\": \"django.core.files.storage.FileSystemStorage\", \"name\": \"cache/48/37/483776ab2e0149d6b749868962d52797.png\", \"size\": [80, 80]}'),('sorl-thumbnail||image||fe0488888efed0909b41e985e196ed0a','{\"name\": \"cache/e2/db/e2dbf6e44ba74102c604009f47a026f1.png\", \"storage\": \"django.core.files.storage.FileSystemStorage\", \"size\": [80, 80]}'),('sorl-thumbnail||thumbnails||2b7b3a17401ae5ada8658b4b57dcaf6f','[\"f9a8a24b170c4e22e0f573a44df29c6e\"]'),('sorl-thumbnail||thumbnails||4c9c9199405339cc9be4f96d4b065cf9','[\"03aa36c2c176552c58632ee06a2690ab\"]'),('sorl-thumbnail||thumbnails||58fde441363f5382eea1d42de2dfd3a0','[\"a80fb5056c33d9eb28484c417672130d\"]'),('sorl-thumbnail||thumbnails||5ad1d4f3358d266e4c5a640f47d6fe27','[\"247363f56597bf420808d22bfc1ae43e\"]'),('sorl-thumbnail||thumbnails||63bc62349dde439f4ff41aa7568373f9','[\"50d846c0614f286286bf90b83539a72a\"]'),('sorl-thumbnail||thumbnails||64bf3f263fd29b4f640ae21595aa4889','[\"e1e7016c0a228591be23b3d63f0310b0\"]'),('sorl-thumbnail||thumbnails||677e2207f90e2ef089fc03b632691711','[\"942822b46fc3eec40147c69cce67637e\"]'),('sorl-thumbnail||thumbnails||8ba478a28d80f5817a35e3fb9dc6b9d7','[\"fe0488888efed0909b41e985e196ed0a\"]'),('sorl-thumbnail||thumbnails||985710048463476ed8a4e2bcbed7ae36','[\"c0d1c04a565df8dac4f1e9579b8b4217\"]'),('sorl-thumbnail||thumbnails||d40bc98da933a477307cbc59d85ea043','[\"60f6a8abbdc61a2a427b98b9e05b5632\"]'),('sorl-thumbnail||thumbnails||da702ecbf0603e4191cd6bd36ba724f9','[\"1e87d0864aa98f0fd617153b42a6c15b\"]'),('sorl-thumbnail||thumbnails||f2fbab2e2b4b0334e2a339a519aca36d','[\"cdff0e91536ecf37797f2b559f7bdd28\"]');
/*!40000 ALTER TABLE `thumbnail_kvstore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webapp_accordion`
--

DROP TABLE IF EXISTS `webapp_accordion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webapp_accordion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `for_page_id` int(11) DEFAULT NULL,
  `for_under_page_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `webapp_accordion_for_page_id_3be65009_fk_webapp_el` (`for_page_id`),
  KEY `webapp_accordion_for_under_page_id_8b953fa6_fk_webapp_it` (`for_under_page_id`),
  CONSTRAINT `webapp_accordion_for_page_id_3be65009_fk_webapp_el` FOREIGN KEY (`for_page_id`) REFERENCES `webapp_elementsofcategory` (`id`),
  CONSTRAINT `webapp_accordion_for_under_page_id_8b953fa6_fk_webapp_it` FOREIGN KEY (`for_under_page_id`) REFERENCES `webapp_itemsofelement` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webapp_accordion`
--

LOCK TABLES `webapp_accordion` WRITE;
/*!40000 ALTER TABLE `webapp_accordion` DISABLE KEYS */;
INSERT INTO `webapp_accordion` VALUES (1,'PROSPECTIVE STUDENTS',1,NULL);
/*!40000 ALTER TABLE `webapp_accordion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webapp_calendar`
--

DROP TABLE IF EXISTS `webapp_calendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webapp_calendar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `date` datetime(6) NOT NULL,
  `url` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webapp_calendar`
--

LOCK TABLES `webapp_calendar` WRITE;
/*!40000 ALTER TABLE `webapp_calendar` DISABLE KEYS */;
INSERT INTO `webapp_calendar` VALUES (1,'TEST','test test','2018-04-12 19:17:00.000000',''),(2,'TEST2','test test test','2018-04-18 09:55:00.000000',''),(3,'TEST 3','TEST TEST TEST TEST','2018-05-09 08:00:00.000000',''),(4,'Facebook','fase','2018-04-10 08:20:00.000000',''),(5,'Шкафы','Новости','2018-04-10 06:50:00.000000',''),(6,'Where can I get some?','<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>','2018-04-13 00:00:00.000000','http://localhost:8000/news/where-can-i-get-some/'),(7,'Where does it come from?','<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>','2018-04-13 00:00:00.000000','http://localhost:8000/news/where-does-it-come/'),(10,'What is Lorem Ipsum?','<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>','2018-04-13 00:00:00.000000','http://147.135.249.234:8000/news/what-lorem-ipsum/');
/*!40000 ALTER TABLE `webapp_calendar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webapp_category`
--

DROP TABLE IF EXISTS `webapp_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webapp_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `slug` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `webapp_category_slug_2aea5445_uniq` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webapp_category`
--

LOCK TABLES `webapp_category` WRITE;
/*!40000 ALTER TABLE `webapp_category` DISABLE KEYS */;
INSERT INTO `webapp_category` VALUES (1,'ABOUT US','images/different/ban3.png','about-us'),(2,'ACADEMICS','images/different/academics.png','academics'),(3,'PROSPECTIVE STUDENTS','images/different/ban3_lwdDRvx.png','prospective-students'),(4,'CURRENT STUDENTS','images/different/current_student.png','current-students'),(5,'ALUMNI','images/different/alumni.png','alumni');
/*!40000 ALTER TABLE `webapp_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webapp_contact`
--

DROP TABLE IF EXISTS `webapp_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webapp_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `fax` varchar(50) NOT NULL,
  `email` varchar(254) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webapp_contact`
--

LOCK TABLES `webapp_contact` WRITE;
/*!40000 ALTER TABLE `webapp_contact` DISABLE KEYS */;
INSERT INTO `webapp_contact` VALUES (1,'Bishkek, Kyrgyzstan 1f, str. Intergelpo 720054','+996 312 653673','+996 312 644402','ism@ism.edu.kg');
/*!40000 ALTER TABLE `webapp_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webapp_elementsofcategory`
--

DROP TABLE IF EXISTS `webapp_elementsofcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webapp_elementsofcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `files` varchar(100) NOT NULL,
  `short_description_of_files` longtext NOT NULL,
  `category_id` int(11) NOT NULL,
  `iframe_for_youtube` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `webapp_elementsofcat_category_id_d62e996c_fk_webapp_ca` (`category_id`),
  CONSTRAINT `webapp_elementsofcat_category_id_d62e996c_fk_webapp_ca` FOREIGN KEY (`category_id`) REFERENCES `webapp_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webapp_elementsofcategory`
--

LOCK TABLES `webapp_elementsofcategory` WRITE;
/*!40000 ALTER TABLE `webapp_elementsofcategory` DISABLE KEYS */;
INSERT INTO `webapp_elementsofcategory` VALUES (1,'About us','about-us','<p>Located in Bishkek, Kyrgyzstan, International School of Medicine as a division of the International University of Kyrgyzstan offers students a wide range of opportunities to pursue their studies and enhance their medical education. Our faculty members are Kyrgyz nationals and some of them worldwide recognized specialists in different areas of medicine, professional health organizations and agencies.</p>\r\n\r\n<p>Diverse partnerships with many institutions in our nation&rsquo;s capital along with faculty members enable current students to discover the ability of learn With an average of 400 applications annually, our review process is focused on assessing each applicant&#39;s depth and breadth of proficiency in science, the quantity and quality of their previous achievements, and other unique characteristics.</p>\r\n\r\n<p><img alt=\"\" src=\"/media/uploads/2018/04/14/wallpaper2you_115254.jpg\" style=\"height:225px; width:300px\" /></p>\r\n\r\n<p>The Admission Committee seeks responsible, mature, and ethical applicants who are passionate about medicine and understand that the role of a doctor is a lifelong experience and challenge.</p>\r\n\r\n<p>We understand that the decision to pursue career in medicine is not to be taken lightly. The intensity of the educational process requires substantial support</p>','files/different/its-my-life-bon-jovi-drum-transcription.pdf','The Admission Committee seeks responsible, mature, and ethical applicants who are passionate about medicine and understand that the role of a doctor is a lifelong experience and challenge.\r\nПерейдите по ссылке',1,''),(2,'Mission and Vision','mission-and-vision','<p><img alt=\"Alternative Text\" src=\"/media/uploads/2018/04/14/image-3.jpg\" style=\"height:200px; width:600px\" /></p>\r\n\r\n<p>Diverse partnerships with many institutions in our nation&rsquo;s capital along with faculty members enable current students to discover the ability of learn With an average of 400 applications annually, our review process is focused on assessing each applicant&#39;s depth and breadth of proficiency in science, the quantity and quality of their previous achievements, and other unique characteristics.</p>\r\n\r\n<p>&nbsp;</p>','','',1,''),(3,'Kyrgyzstan','kyrgyzstan','','','',1,''),(4,'ISM structure','ism-structure','','','',1,''),(5,'Departments','departments','','','',2,''),(6,'Projects','projects','','','',2,''),(7,'Prospective students','prospective-students','','','',3,''),(8,'Rector’s welcome  message','rectors-welcome-message','','','',3,''),(9,'Offered programs','offered-programs','','','',3,''),(10,'Application and admission procedures','application-and-admission-procedures','','','',3,''),(11,'Our regional representatives','our-regional-representatives','','','',3,''),(12,'Current students','current-students','','','',4,''),(13,'ISM integrity code','ism-integrity-code','','','',4,''),(14,'Academic time','academic-time','','','',4,''),(15,'Overview of current students','overview-current-students','','','',4,''),(16,'Students resources','students-resources','','','',4,''),(17,'Alumni','alumni','','','',5,'');
/*!40000 ALTER TABLE `webapp_elementsofcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webapp_filesofaccordion`
--

DROP TABLE IF EXISTS `webapp_filesofaccordion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webapp_filesofaccordion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `short_description_for_file` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `file` varchar(100) NOT NULL,
  `accordion_id` int(11) NOT NULL,
  `short_description_for_image` longtext NOT NULL,
  `iframe_for_youtube` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `webapp_filesofaccord_accordion_id_b9baf8d5_fk_webapp_ac` (`accordion_id`),
  CONSTRAINT `webapp_filesofaccord_accordion_id_b9baf8d5_fk_webapp_ac` FOREIGN KEY (`accordion_id`) REFERENCES `webapp_accordion` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webapp_filesofaccordion`
--

LOCK TABLES `webapp_filesofaccordion` WRITE;
/*!40000 ALTER TABLE `webapp_filesofaccordion` DISABLE KEYS */;
INSERT INTO `webapp_filesofaccordion` VALUES (1,'The Admission Committee seeks responsible, mature, and ethical applicants who are passionate about medicine and understand that the role of a doctor is a lifelong experience and challenge.','images/different/apple-iphone_8_plus-space_gray-image_01_1.jpg','files/different/apple-iphone_8_plus-space_gray-image_01_1.jpg',1,'The Admission Committee seeks responsible, mature, and ethical applicants who are passionate about medicine and understand that the role of a doctor is a lifelong experience and challenge.','<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/9jYl_lb0XVY\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>');
/*!40000 ALTER TABLE `webapp_filesofaccordion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webapp_itemsofelement`
--

DROP TABLE IF EXISTS `webapp_itemsofelement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webapp_itemsofelement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `files` varchar(100) NOT NULL,
  `short_description_of_files` longtext NOT NULL,
  `element_id` int(11) NOT NULL,
  `iframe_for_youtube` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `webapp_itemsofelemen_element_id_0f8abb2a_fk_webapp_el` (`element_id`),
  CONSTRAINT `webapp_itemsofelemen_element_id_0f8abb2a_fk_webapp_el` FOREIGN KEY (`element_id`) REFERENCES `webapp_elementsofcategory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webapp_itemsofelement`
--

LOCK TABLES `webapp_itemsofelement` WRITE;
/*!40000 ALTER TABLE `webapp_itemsofelement` DISABLE KEYS */;
INSERT INTO `webapp_itemsofelement` VALUES (1,'Infrastructure','infrastructure','<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>','','',4,''),(2,'Students cabinet','students-cabinet','','','',16,''),(3,'Students evaluation page','students-evaluation-page','','','',16,''),(4,'Life of Students','life-of-students','','','',16,''),(5,'Health services and emergency','health-services-and-emergency','','','',16,'');
/*!40000 ALTER TABLE `webapp_itemsofelement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webapp_lifestream`
--

DROP TABLE IF EXISTS `webapp_lifestream`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webapp_lifestream` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `iframe` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webapp_lifestream`
--

LOCK TABLES `webapp_lifestream` WRITE;
/*!40000 ALTER TABLE `webapp_lifestream` DISABLE KEYS */;
INSERT INTO `webapp_lifestream` VALUES (1,'images/different/ban6.png','<iframe width=\"100%\" height=\"600\" src=\"https://www.youtube.com/embed/-doQ90Q3jO0\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>');
/*!40000 ALTER TABLE `webapp_lifestream` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webapp_linkstothesocialnetwork`
--

DROP TABLE IF EXISTS `webapp_linkstothesocialnetwork`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webapp_linkstothesocialnetwork` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `facebook` varchar(200) NOT NULL,
  `instagram` varchar(200) NOT NULL,
  `skype` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webapp_linkstothesocialnetwork`
--

LOCK TABLES `webapp_linkstothesocialnetwork` WRITE;
/*!40000 ALTER TABLE `webapp_linkstothesocialnetwork` DISABLE KEYS */;
INSERT INTO `webapp_linkstothesocialnetwork` VALUES (1,'https://www.facebook.com/','https://www.instagram.com/','https://web.skype.com/','https://mail.google.com/');
/*!40000 ALTER TABLE `webapp_linkstothesocialnetwork` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webapp_news`
--

DROP TABLE IF EXISTS `webapp_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webapp_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `added_to` date NOT NULL,
  `updated` date NOT NULL,
  `add_to_calendar` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webapp_news`
--

LOCK TABLES `webapp_news` WRITE;
/*!40000 ALTER TABLE `webapp_news` DISABLE KEYS */;
INSERT INTO `webapp_news` VALUES (1,'What is Lorem Ipsum?','what-lorem-ipsum','<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>','images/news/news.jpg','2018-04-02','2018-04-13',1),(2,'Why do we use it?','why-do-we-use-it','<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>','images/news/home.png','2018-04-02','2018-04-13',0),(3,'Where does it come from?','where-does-it-come','<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>','images/news/current_student.png','2018-04-02','2018-04-13',0),(4,'Where can I get some?','where-can-i-get-some','<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>','images/news/ban6.png','2018-04-02','2018-04-13',0);
/*!40000 ALTER TABLE `webapp_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webapp_ourpartner`
--

DROP TABLE IF EXISTS `webapp_ourpartner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webapp_ourpartner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `link` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webapp_ourpartner`
--

LOCK TABLES `webapp_ourpartner` WRITE;
/*!40000 ALTER TABLE `webapp_ourpartner` DISABLE KEYS */;
INSERT INTO `webapp_ourpartner` VALUES (1,'','images/different/bmd.png','https://www.instagram.com'),(2,'','images/different/mci.png','https://twitter.com/'),(3,'','images/different/WHO.png','https://vk.com'),(4,'','images/different/mci_h9nXCfq.png','https://www.facebook.com');
/*!40000 ALTER TABLE `webapp_ourpartner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webapp_slider`
--

DROP TABLE IF EXISTS `webapp_slider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webapp_slider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `title` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webapp_slider`
--

LOCK TABLES `webapp_slider` WRITE;
/*!40000 ALTER TABLE `webapp_slider` DISABLE KEYS */;
INSERT INTO `webapp_slider` VALUES (2,'images/sliders/home.png','INTERNATIONAL SCHOOL OF MEDICINE'),(3,'images/sliders/slider2.jpg','INTERNATIONAL SCHOOL OF MEDICINE');
/*!40000 ALTER TABLE `webapp_slider` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-14 16:35:07
