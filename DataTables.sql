/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.0.27-community-nt : Database - demo
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`demo` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `demo`;

/*Table structure for table `area_table` */

DROP TABLE IF EXISTS `area_table`;

CREATE TABLE `area_table` (
  `areaId` int(11) NOT NULL,
  `areaDescription` varchar(255) default NULL,
  `areaName` varchar(255) default NULL,
  `deleteStatus` bit(1) default NULL,
  `cityVO_cityId` int(11) default NULL,
  PRIMARY KEY  (`areaId`),
  KEY `FKgbgj6tq9vpaswnu69gdsrxxaw` (`cityVO_cityId`),
  CONSTRAINT `FKgbgj6tq9vpaswnu69gdsrxxaw` FOREIGN KEY (`cityVO_cityId`) REFERENCES `city_table` (`cityId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `area_table` */

/*Table structure for table `campaign_table` */

DROP TABLE IF EXISTS `campaign_table`;

CREATE TABLE `campaign_table` (
  `campaignId` int(11) NOT NULL,
  `campaignDescription` varchar(255) default NULL,
  `campaignName` varchar(255) default NULL,
  `deleteStatus` bit(1) default NULL,
  `productVO_productId` int(11) default NULL,
  PRIMARY KEY  (`campaignId`),
  KEY `FKdlpc7kwqhrfw0hvhllmra2ohr` (`productVO_productId`),
  CONSTRAINT `FKdlpc7kwqhrfw0hvhllmra2ohr` FOREIGN KEY (`productVO_productId`) REFERENCES `product_table` (`productId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `campaign_table` */

/*Table structure for table `category_table` */

DROP TABLE IF EXISTS `category_table`;

CREATE TABLE `category_table` (
  `categoryId` int(11) NOT NULL,
  `categoryDescription` varchar(255) default NULL,
  `categoryName` varchar(255) default NULL,
  `deleteStatus` bit(1) default NULL,
  PRIMARY KEY  (`categoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `category_table` */

/*Table structure for table `city_table` */

DROP TABLE IF EXISTS `city_table`;

CREATE TABLE `city_table` (
  `cityId` int(11) NOT NULL,
  `cityDescription` varchar(255) default NULL,
  `cityName` varchar(255) default NULL,
  `deleteStatus` bit(1) default NULL,
  PRIMARY KEY  (`cityId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `city_table` */

/*Table structure for table `complaint_table` */

DROP TABLE IF EXISTS `complaint_table`;

CREATE TABLE `complaint_table` (
  `id` int(11) NOT NULL,
  `complaintDate` varchar(255) default NULL,
  `complaintDescription` varchar(255) default NULL,
  `complaintReply` varchar(255) default NULL,
  `complaintStatus` varchar(255) default NULL,
  `complaintSubject` varchar(255) default NULL,
  `replyDate` varchar(255) default NULL,
  `status` bit(1) default NULL,
  `loginVO_loginId` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FKrp8uv1b8h2yaka3ptep5xprnv` (`loginVO_loginId`),
  CONSTRAINT `FKrp8uv1b8h2yaka3ptep5xprnv` FOREIGN KEY (`loginVO_loginId`) REFERENCES `login_table` (`loginId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `complaint_table` */

/*Table structure for table `dataset_table` */

DROP TABLE IF EXISTS `dataset_table`;

CREATE TABLE `dataset_table` (
  `datasetId` int(11) NOT NULL,
  `datasetDescription` varchar(255) default NULL,
  `datasetName` varchar(255) default NULL,
  `datasetPath` varchar(255) default NULL,
  `deleteStatus` bit(1) default NULL,
  PRIMARY KEY  (`datasetId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `dataset_table` */

/*Table structure for table `detection_table` */

DROP TABLE IF EXISTS `detection_table`;

CREATE TABLE `detection_table` (
  `detectionId` int(11) NOT NULL auto_increment,
  `Angry` varchar(255) default NULL,
  `Disgust` varchar(255) default NULL,
  `Fear` varchar(255) default NULL,
  `Happy` varchar(255) default NULL,
  `Sad` varchar(255) default NULL,
  `Suprise` varchar(255) default NULL,
  `Neutral` varchar(255) default NULL,
  `emotionDate` varchar(255) default NULL,
  `emotionTime` varchar(255) default NULL,
  PRIMARY KEY  (`detectionId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `detection_table` */

insert  into `detection_table`(`detectionId`,`Angry`,`Disgust`,`Fear`,`Happy`,`Sad`,`Suprise`,`Neutral`,`emotionDate`,`emotionTime`) values (1,'0','0','0','47','0','0','33','28:03:2019','12:57:45'),(2,'0','0','0','56','0','0','36','28:03:2019','12:59:06'),(3,'0','0','0','153','0','0','159','28:03:2019','13:03:31'),(4,'0','0','0','171','0','1','216','28:03:2019','13:07:18'),(5,'0','0','0','91','0','0','49','28:03:2019','13:16:18'),(6,'0','0','0','138','0','0','126','28:03:2019','13:24:25'),(7,'0','0','0','94','0','0','42','28:03:2019','13:34:25');

/*Table structure for table `feedback` */

DROP TABLE IF EXISTS `feedback`;

CREATE TABLE `feedback` (
  `feedbackId` int(11) NOT NULL,
  `feedBack` varchar(255) default NULL,
  `rating` varchar(255) default NULL,
  `loginVO_loginId` int(11) default NULL,
  PRIMARY KEY  (`feedbackId`),
  KEY `FKhfl25tlfpe51mfb6bkmc2qerv` (`loginVO_loginId`),
  CONSTRAINT `FKhfl25tlfpe51mfb6bkmc2qerv` FOREIGN KEY (`loginVO_loginId`) REFERENCES `login_table` (`loginId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `feedback` */

/*Table structure for table `hibernate_sequence` */

DROP TABLE IF EXISTS `hibernate_sequence`;

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `hibernate_sequence` */

insert  into `hibernate_sequence`(`next_val`) values (3),(3),(3),(3),(3),(3),(3),(3),(3),(3),(3),(3);

/*Table structure for table `login_table` */

DROP TABLE IF EXISTS `login_table`;

CREATE TABLE `login_table` (
  `loginId` int(11) NOT NULL,
  `enabled` int(11) default NULL,
  `password` varchar(255) default NULL,
  `role` varchar(255) default NULL,
  `username` varchar(255) default NULL,
  PRIMARY KEY  (`loginId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `login_table` */

insert  into `login_table`(`loginId`,`enabled`,`password`,`role`,`username`) values (1,1,'KillerBoy$7991','ROLE_USER','yashpatel1997@hotmail.com'),(2,1,'admin','ROLE_ADMIN','admin@gmail.com');

/*Table structure for table `package_table` */

DROP TABLE IF EXISTS `package_table`;

CREATE TABLE `package_table` (
  `packageId` int(11) NOT NULL,
  `deleteStatus` bit(1) default NULL,
  `packageCampaign` int(11) default NULL,
  `packageDescription` varchar(255) default NULL,
  `packageDuration` varchar(255) default NULL,
  `packageName` varchar(255) default NULL,
  `packagePrice` int(11) default NULL,
  PRIMARY KEY  (`packageId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `package_table` */

/*Table structure for table `product_table` */

DROP TABLE IF EXISTS `product_table`;

CREATE TABLE `product_table` (
  `productId` int(11) NOT NULL,
  `deleteStatus` bit(1) default NULL,
  `productDescription` varchar(255) default NULL,
  `productName` varchar(255) default NULL,
  `categoryVO_categoryId` int(11) default NULL,
  `subcategoryVO_subcategoryId` int(11) default NULL,
  PRIMARY KEY  (`productId`),
  KEY `FKdeycwg37ck547o5b1mswlpqtw` (`categoryVO_categoryId`),
  KEY `FK37sapvaht50t0c9lqf5enlwmr` (`subcategoryVO_subcategoryId`),
  CONSTRAINT `FK37sapvaht50t0c9lqf5enlwmr` FOREIGN KEY (`subcategoryVO_subcategoryId`) REFERENCES `subcategory_table` (`subcategoryId`),
  CONSTRAINT `FKdeycwg37ck547o5b1mswlpqtw` FOREIGN KEY (`categoryVO_categoryId`) REFERENCES `category_table` (`categoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `product_table` */

/*Table structure for table `register` */

DROP TABLE IF EXISTS `register`;

CREATE TABLE `register` (
  `registerId` int(11) NOT NULL,
  `companyAddress` varchar(255) default NULL,
  `companyContact` varchar(255) default NULL,
  `companyName` varchar(255) default NULL,
  `emailId` varchar(255) default NULL,
  `gender` varchar(255) default NULL,
  `ownerContact` varchar(255) default NULL,
  `ownerName` varchar(255) default NULL,
  `owneremailId` varchar(255) default NULL,
  `loginVO_loginId` int(11) default NULL,
  PRIMARY KEY  (`registerId`),
  KEY `FKqieuppbk9sgjtrpparg0bmwvy` (`loginVO_loginId`),
  CONSTRAINT `FKqieuppbk9sgjtrpparg0bmwvy` FOREIGN KEY (`loginVO_loginId`) REFERENCES `login_table` (`loginId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `register` */

insert  into `register`(`registerId`,`companyAddress`,`companyContact`,`companyName`,`emailId`,`gender`,`ownerContact`,`ownerName`,`owneremailId`,`loginVO_loginId`) values (2,'xyz','123','abc','sharyuchavansc@gmail.com','female','vfvf','qwer','sdf',1);

/*Table structure for table `subcategory_table` */

DROP TABLE IF EXISTS `subcategory_table`;

CREATE TABLE `subcategory_table` (
  `subcategoryId` int(11) NOT NULL,
  `deleteStatus` bit(1) default NULL,
  `subcategoryDescription` varchar(255) default NULL,
  `subcategoryName` varchar(255) default NULL,
  `categoryVO_categoryId` int(11) default NULL,
  PRIMARY KEY  (`subcategoryId`),
  KEY `FKkcigr6e9tcn28hkp7rf7s95vg` (`categoryVO_categoryId`),
  CONSTRAINT `FKkcigr6e9tcn28hkp7rf7s95vg` FOREIGN KEY (`categoryVO_categoryId`) REFERENCES `category_table` (`categoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `subcategory_table` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
