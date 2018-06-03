/*
SQLyog Community v12.4.3 (64 bit)
MySQL - 5.5.12 : Database - love_chain
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`love_chain` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `love_chain`;

/*Table structure for table `business_partners` */

DROP TABLE IF EXISTS `business_partners`;

CREATE TABLE `business_partners` (
  `id` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `business_partners` */

/*Table structure for table `events` */

DROP TABLE IF EXISTS `events`;

CREATE TABLE `events` (
  `id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `eventtime` date DEFAULT NULL,
  `eventDecription` varchar(200) DEFAULT NULL,
  `businessis` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `events` */

/*Table structure for table `love_users` */

DROP TABLE IF EXISTS `love_users`;

CREATE TABLE `love_users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `Nationlity` varchar(50) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  `District` varchar(50) DEFAULT NULL,
  `MirrageStatus` varchar(50) DEFAULT NULL,
  `Aniversary` date DEFAULT NULL,
  `wechatId` varchar(50) DEFAULT NULL,
  `PartnerBirthday` date DEFAULT NULL,
  `Partner_preference` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `love_users` */

/*Table structure for table `questions` */

DROP TABLE IF EXISTS `questions`;

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `Date` datetime DEFAULT NULL,
  `quetion` varchar(50) DEFAULT NULL,
  `question2` varchar(50) DEFAULT NULL,
  `Question3` varchar(50) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `questions` */

/*Table structure for table `recommendations_accepted` */

DROP TABLE IF EXISTS `recommendations_accepted`;

CREATE TABLE `recommendations_accepted` (
  `id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `Recommendation_id` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `recommendations_accepted` */

/*Table structure for table `user_checkins` */

DROP TABLE IF EXISTS `user_checkins`;

CREATE TABLE `user_checkins` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `spouse_happy` tinyint(1) DEFAULT '0',
  `what_makes_happy` varchar(200) DEFAULT NULL,
  `current_date` date DEFAULT NULL,
  `stories` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user_checkins` */

/*Table structure for table `v_user_role` */

DROP TABLE IF EXISTS `v_user_role`;

CREATE TABLE `v_user_role` (
  `UserName` varchar(25) NOT NULL DEFAULT '',
  `Password` char(32) NOT NULL DEFAULT '',
  `RoleName` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `v_user_role` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
