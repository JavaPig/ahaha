/*
SQLyog Ultimate v11.27 (32 bit)
MySQL - 5.5.45-log : Database - jddata
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jddata` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jddata`;

/*Table structure for table `after_sale` */

DROP TABLE IF EXISTS `after_sale`;

CREATE TABLE `after_sale` (
  `afteNo` int(11) NOT NULL,
  `afteDesc` varchar(300) DEFAULT NULL,
  `goodName` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`afteNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `after_sale` */

/*Table structure for table `all_goods_class` */

DROP TABLE IF EXISTS `all_goods_class`;

CREATE TABLE `all_goods_class` (
  `cNo` int(11) NOT NULL,
  `cName` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`cNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `all_goods_class` */

/*Table structure for table `brand` */

DROP TABLE IF EXISTS `brand`;

CREATE TABLE `brand` (
  `branNo` int(11) NOT NULL,
  `branName` varchar(30) DEFAULT NULL,
  `subName` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`branNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `brand` */

/*Table structure for table `delivery_addr` */

DROP TABLE IF EXISTS `delivery_addr`;

CREATE TABLE `delivery_addr` (
  `addrNo` int(11) NOT NULL,
  `addrName` varchar(20) DEFAULT NULL,
  `goodName` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`addrNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `delivery_addr` */

/*Table structure for table `goods` */

DROP TABLE IF EXISTS `goods`;

CREATE TABLE `goods` (
  `goodNo` int(11) NOT NULL,
  `goodName` varchar(20) DEFAULT NULL,
  `branName` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`goodNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `goods` */

/*Table structure for table `goods_detail` */

DROP TABLE IF EXISTS `goods_detail`;

CREATE TABLE `goods_detail` (
  `detailNo` int(11) NOT NULL,
  `goodName` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`detailNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `goods_detail` */

/*Table structure for table `goods_evaluate` */

DROP TABLE IF EXISTS `goods_evaluate`;

CREATE TABLE `goods_evaluate` (
  `evalNo` int(11) NOT NULL,
  `evalDesc` varchar(200) DEFAULT NULL,
  `goodName` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`evalNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `goods_evaluate` */

/*Table structure for table `goods_param` */

DROP TABLE IF EXISTS `goods_param`;

CREATE TABLE `goods_param` (
  `paramNo` int(11) NOT NULL,
  `paramName` varchar(20) DEFAULT NULL,
  `goodName` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`paramNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `goods_param` */

/*Table structure for table `goods_sift` */

DROP TABLE IF EXISTS `goods_sift`;

CREATE TABLE `goods_sift` (
  `siftNo` int(11) NOT NULL,
  `siftName` varchar(20) DEFAULT NULL,
  `subName` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`siftNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `goods_sift` */

/*Table structure for table `goods_status` */

DROP TABLE IF EXISTS `goods_status`;

CREATE TABLE `goods_status` (
  `statusNo` int(11) NOT NULL,
  `goodsSta` varchar(20) DEFAULT NULL,
  `goodName` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`statusNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `goods_status` */

/*Table structure for table `package_list` */

DROP TABLE IF EXISTS `package_list`;

CREATE TABLE `package_list` (
  `listNo` int(11) NOT NULL,
  `listDetail` varchar(50) DEFAULT NULL,
  `goodName` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`listNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `package_list` */

/*Table structure for table `price` */

DROP TABLE IF EXISTS `price`;

CREATE TABLE `price` (
  `priceNo` int(11) NOT NULL,
  `price` int(10) DEFAULT NULL,
  `goodName` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`priceNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `price` */

/*Table structure for table `recommend_goods` */

DROP TABLE IF EXISTS `recommend_goods`;

CREATE TABLE `recommend_goods` (
  `recoNo` int(11) NOT NULL,
  `goodName` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`recoNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `recommend_goods` */

/*Table structure for table `shopping_cart` */

DROP TABLE IF EXISTS `shopping_cart`;

CREATE TABLE `shopping_cart` (
  `cartNo` int(11) NOT NULL,
  `goodName` varchar(20) DEFAULT NULL,
  `shoppingCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`cartNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `shopping_cart` */

/*Table structure for table `sub_goods_class` */

DROP TABLE IF EXISTS `sub_goods_class`;

CREATE TABLE `sub_goods_class` (
  `subcNo` int(11) NOT NULL,
  `subName` varchar(20) DEFAULT NULL,
  `cName` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`subcNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sub_goods_class` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
