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

insert  into `area_table`(`areaId`,`areaDescription`,`areaName`,`deleteStatus`,`cityVO_cityId`) values (36,'urban area','Navarangpura','',32),(37,'rural area','bapunagar','',32),(38,'urban area','andheri','',34),(39,'urban area','bandra','',34),(40,'high class','juhu','',34),(41,'urban area','Marathahalli','',35),(42,'rural area','Hebbal','',35);

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

insert  into `campaign_table`(`campaignId`,`campaignDescription`,`campaignName`,`deleteStatus`,`productVO_productId`) values (55,'This campaign will be held on 2nd of May, 2019 at LDCE.','Intermediate Improvement Product','',52),(56,'This campaign is intended to test our newly delicious launched product and all time favorite choco brownie.','New Launch Product','',49);

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

insert  into `category_table`(`categoryId`,`categoryDescription`,`categoryName`,`deleteStatus`) values (21,'Ice cream is a sweetened frozen food typically eaten as a snack or dessert.','Ice Cream',''),(22,'A typical Chinese meal will have two things noodles and rice.  ','chinese',''),(23,'Italian cuisine uses ingredients such as tomatoes, all kinds of meat, fish, and cheese.','italian','\0'),(26,'Punjabi cuisine is known for its rich, buttery flavours along with the extensive vegetarian and meat dishes.','punjabi','\0'),(29,'its a drink that typically contains carbonated water, a sweetener and a natural or artificial flavoring.','soft drinks','');

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

insert  into `city_table`(`cityId`,`cityDescription`,`cityName`,`deleteStatus`) values (32,'its the largest city and former capital of the Indian state of Gujarat.','Ahmedabad',''),(33,' its one of the 33 districts of Gujarat state in western India.','Mehsana','\0'),(34,'its the capital city of the Indian state of Maharashtra.','mumbai',''),(35,'its the capital city of the Indian state of Karnataka.','bangalore','');

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

insert  into `complaint_table`(`id`,`complaintDate`,`complaintDescription`,`complaintReply`,`complaintStatus`,`complaintSubject`,`replyDate`,`status`,`loginVO_loginId`) values (44,NULL,'Worst.','we will improve it','resolved','Regarding UI','10/04/2019 01:24:32','',16),(54,NULL,'wrost','surely solve it in next update','resolved','Regarding UI','10/04/2019 01:25:46','',1);

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

insert  into `detection_table`(`detectionId`,`Angry`,`Disgust`,`Fear`,`Happy`,`Sad`,`Suprise`,`Neutral`,`emotionDate`,`emotionTime`) values (11,'5','0','0','15','7','0','124','2019-04-10','08:46:35.735965'),(12,'29','0','0','16','7','0','76','2019-04-10','09:56:24.313922'),(13,'0','0','0','21','2','0','67','2019-04-10','12:21:14.265805'),(14,'36','0','3','189','30','32','565','2019-04-10','12:24:33.984171'),(15,'0','0','0','13','0','0','1','2019-04-10','14:51:24.393680'),(16,'7','0','0','1','10','0','112','2019-04-10','23:23:36.611662'),(17,'14','0','0','86','45','0','353','2019-04-10','23:24:56.245562'),(18,'0','0','0','41','35','0','59','2019-04-11','10:52:23.645515'),(19,'56','0','0','673','204','0','1205','2019-04-11','11:06:46.880391'),(20,'3','0','0','15','27','0','229','2019-04-11','11:14:05.200155'),(21,'1','0','0','0','10','0','121','2019-04-11','11:28:34.294547'),(22,'16','0','0','42','26','0','291','2019-04-11','11:30:57.721693'),(23,'2','0','0','1','26','0','127','2019-04-11','11:43:15.437702'),(24,'1','0','0','133','68','0','194','2019-04-11','12:11:09.478225'),(25,'2','0','0','0','15','0','2','2019-04-11','12:14:35.245773'),(26,'29','0','0','9','40','0','426','2019-04-11','12:21:08.857379'),(27,'0','0','0','26','14','0','71','2019-04-11','12:48:12.411280'),(28,'0','0','0','16','100','0','249','2019-04-11','12:54:51.290868'),(29,'5','0','0','35','48','0','158','2019-04-11','12:57:58.577457'),(30,'0','0','0','2','0','0','2','2019-04-11','12:58:58.891315'),(31,'0','0','0','3','84','0','50','2019-04-11','13:00:35.436701'),(32,'0','0','0','0','0','0','0','2019-04-11','13:00:40.713356'),(33,'0','0','0','0','0','0','0','2019-04-11','13:00:52.381095'),(34,'1','0','0','38','24','0','146','2019-04-11','13:03:08.944122'),(35,'4','0','0','46','7','0','129','2019-04-11','13:04:29.131809'),(36,'0','0','0','101','11','1','226','2019-04-11','13:10:53.750500'),(37,'2','0','0','0','4','0','3','2019-04-11','13:24:15.091335'),(38,'0','0','0','0','0','0','0','2019-04-12','12:29:46.874033'),(39,'0','0','0','0','0','0','0','2020-07-14','14:39:26.604100'),(40,'14','0','0','0','1','0','115','2020-07-14','15:40:54.331386'),(41,'10','0','45','162','138','9','365','2020-07-14','16:00:18.741515');

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

insert  into `feedback`(`feedbackId`,`feedBack`,`rating`,`loginVO_loginId`) values (43,'piss off','5',1);

/*Table structure for table `hibernate_sequence` */

DROP TABLE IF EXISTS `hibernate_sequence`;

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `hibernate_sequence` */

insert  into `hibernate_sequence`(`next_val`) values (59),(59),(59),(59),(59),(59),(59),(59),(59),(59),(59),(59);

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

insert  into `login_table`(`loginId`,`enabled`,`password`,`role`,`username`) values (1,1,'sheshan','ROLE_USER','patelsheshan0@gmail.com'),(2,1,'admin','ROLE_ADMIN','admin@gmail.com'),(16,1,'sheshan','ROLE_USER','sheshanpatel@yahoo.com'),(57,1,'yash@!7991','ROLE_USER','yshp1997@gmail.com');

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

insert  into `package_table`(`packageId`,`deleteStatus`,`packageCampaign`,`packageDescription`,`packageDuration`,`packageName`,`packagePrice`) values (18,'',5,'good package','2','Sample Package',200000),(19,'',10,'top one','3','Sample Package 2',350000),(20,'',25,'huge one','5','Sample Package 3',750000);

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

insert  into `product_table`(`productId`,`deleteStatus`,`productDescription`,`productName`,`categoryVO_categoryId`,`subcategoryVO_subcategoryId`) values (45,'\0','delicious','Mango Dolly',21,24),(46,'','its the frozen candy made of mango, sugar and milk.','Mango Dolly',21,24),(47,'','its frozen chocolate candy with chocolate chips on outer layer.','crunchy zulubar',21,24),(49,'','its soft ice cream cup with dark choco flavour. ','choco brownie',21,48),(50,'','A mixture of crunchy veggies is shaped into balls and deep-fried, and then tossed with an assortment of sauces and flavour.','dry veg manchurian',22,27),(51,'','it contains soy sauce, sesame paste, pickled vegetables, chopped garlic chives and chili oil.','hot dry noodles',22,28),(52,'','its a soft carbonated drink.','coca cola',29,30),(53,'','its a liquid extract of the orange tree fruit, produced by squeezing oranges.','orange juice',29,31);

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

insert  into `register`(`registerId`,`companyAddress`,`companyContact`,`companyName`,`emailId`,`gender`,`ownerContact`,`ownerName`,`owneremailId`,`loginVO_loginId`) values (2,'xyz','123','abc','patelsheshan0@gmail.com','male','vfvf','Sheshan Patel','sdf',1),(17,'sjsjdk','54511616','amslal','sheshanpatel@yahoo.com','male','45944845`','sonu','jadjjjsak@gmail.com',16),(58,'bajibdsa','9974845177','xyz','yshp1997@gmail.com','male','41555','Yash Patel','vvfsfsrf@gmail.com',57);

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

insert  into `subcategory_table`(`subcategoryId`,`deleteStatus`,`subcategoryDescription`,`subcategoryName`,`categoryVO_categoryId`) values (24,'','its a thick delicious frozen ice cream','Candy',21),(25,'','its a soft delicious frozen ice cream','Vanilla cup',21),(27,'','It is an exotic dish made of mixed vegetable steamed formed into dumplings deep fried and cooked in a tangy sauce.','Manchurian',22),(28,'','A noodle is a piece of pasta, especially a long, skinny one.','noodles',22),(30,'','its a sweetened, carbonated soft drink flavored with vanilla, cinnamon, citrus oils and other flavorings.','colas',29),(31,'',' its a drink made from the extraction or pressing of the natural liquid contained in fruit and vegetables. ','juices',29),(48,'\0','qkwjkqjkqwj','Vanilla cup',21);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
