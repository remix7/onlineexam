/*
SQLyog Ultimate v11.26 (32 bit)
MySQL - 5.0.87-community-nt : Database - onlineexam
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`onlineexam` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `onlineexam`;

/*Table structure for table `adminuser` */

DROP TABLE IF EXISTS `adminuser`;

CREATE TABLE `adminuser` (
  `AU_ID` int(11) NOT NULL auto_increment,
  `AU_NAME` varchar(255) default NULL,
  `AU_PHONE` varchar(255) default NULL,
  `AU_EMAIL` varchar(255) default NULL,
  `AU_DESC` varchar(255) default NULL,
  `AU_USERNAME` varchar(255) default NULL,
  `AU_PASSWORD` varchar(255) default NULL,
  `AU_CREATETIME` datetime default NULL,
  `AU_STATE` varchar(255) default NULL,
  PRIMARY KEY  (`AU_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Table structure for table `exampage` */

DROP TABLE IF EXISTS `exampage`;

CREATE TABLE `exampage` (
  `EXAM_ID` int(11) NOT NULL auto_increment,
  `EXAM_TITLE` varchar(255) default NULL,
  `EXAM_DESC` varchar(255) default NULL,
  `EXAM_CONTEXT` longtext,
  `EXAM_TIME` int(11) default NULL,
  `CREATE_TIME` datetime default NULL,
  `OVERDUE_TIME` datetime default NULL,
  `AU_ID` int(11) default NULL,
  `EXAM_RESULT` varchar(255) default NULL,
  PRIMARY KEY  (`EXAM_ID`),
  KEY `FK_827rq4lr0llp19alnkhdb1bko` (`AU_ID`),
  CONSTRAINT `FK_827rq4lr0llp19alnkhdb1bko` FOREIGN KEY (`AU_ID`) REFERENCES `adminuser` (`AU_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Table structure for table `examquestion` */

DROP TABLE IF EXISTS `examquestion`;

CREATE TABLE `examquestion` (
  `QUESTION_ID` int(11) NOT NULL auto_increment,
  `QUESTION_TITLE` varchar(255) default NULL,
  `QUESTION_CONTEXT` longtext,
  `QUESTION_RESULT` varchar(255) default NULL,
  `QUESTION_SCORE` varchar(255) default NULL,
  `EXAM_ID` int(11) default NULL,
  PRIMARY KEY  (`QUESTION_ID`),
  KEY `FK_t6ivhupd3ykqg7is808kyk8so` (`EXAM_ID`),
  CONSTRAINT `FK_t6ivhupd3ykqg7is808kyk8so` FOREIGN KEY (`EXAM_ID`) REFERENCES `exampage` (`EXAM_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Table structure for table `stuclass` */

DROP TABLE IF EXISTS `stuclass`;

CREATE TABLE `stuclass` (
  `CLASS_ID` int(11) NOT NULL auto_increment,
  `CALSS_NUM` varchar(255) default NULL,
  `CLASS_NAME` varchar(255) default NULL,
  `CREATE_TIME` datetime default NULL,
  `CLASS_STATE` varchar(255) default NULL,
  `AU_ID` int(11) default NULL,
  PRIMARY KEY  (`CLASS_ID`),
  KEY `FK_luhcgo5gnfb8yvdi1adb5w8xx` (`AU_ID`),
  CONSTRAINT `FK_luhcgo5gnfb8yvdi1adb5w8xx` FOREIGN KEY (`AU_ID`) REFERENCES `adminuser` (`AU_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `STU_ID` int(11) NOT NULL auto_increment,
  `STU_NAME` varchar(255) default NULL,
  `STU_PHONE` varchar(255) default NULL,
  `STU_AGE` int(11) default NULL,
  `STU_STRNUM` varchar(255) default NULL,
  `STU_USERNAME` varchar(255) default NULL,
  `STU_PASSWORD` varchar(255) default NULL,
  `REGISTER_TIME` datetime default NULL,
  `STU_STATE` int(11) default NULL,
  `CLASS_ID` int(11) default NULL,
  PRIMARY KEY  (`STU_ID`),
  KEY `FK_llqbo5v2kh8mvghh4qrlndris` (`CLASS_ID`),
  CONSTRAINT `FK_llqbo5v2kh8mvghh4qrlndris` FOREIGN KEY (`CLASS_ID`) REFERENCES `stuclass` (`CLASS_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Table structure for table `stuscore` */

DROP TABLE IF EXISTS `stuscore`;

CREATE TABLE `stuscore` (
  `SS_ID` int(11) NOT NULL auto_increment,
  `SS_SOCRE` float default NULL,
  `STU_RESULT` varchar(255) default NULL,
  `EXAM_ID` int(11) default NULL,
  `STU_ID` int(11) default NULL,
  PRIMARY KEY  (`SS_ID`),
  KEY `FK_p2j31i4i5pkiw1j8fr641hh7v` (`EXAM_ID`),
  KEY `FK_q04ybur55s8524qo4tjcyyqvo` (`STU_ID`),
  CONSTRAINT `FK_p2j31i4i5pkiw1j8fr641hh7v` FOREIGN KEY (`EXAM_ID`) REFERENCES `exampage` (`EXAM_ID`),
  CONSTRAINT `FK_q04ybur55s8524qo4tjcyyqvo` FOREIGN KEY (`STU_ID`) REFERENCES `student` (`STU_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
