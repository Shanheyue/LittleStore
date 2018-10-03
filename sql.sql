/*
SQLyog Community Edition- MySQL GUI v6.07
Host - 5.7.14 : Database - little-store
*********************************************************************
Server version : 5.7.14
*//*创建时间2018/10/03 12:19*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `little-store`;

USE `little-store`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `customer_address` */

DROP TABLE IF EXISTS `customer_address`;

CREATE TABLE `customer_address` (
  `AddressID` varchar(32) NOT NULL,
  `CustomerID` varchar(32) DEFAULT NULL,
  `Contact` varchar(32) DEFAULT NULL,
  `Sex` varchar(32) DEFAULT NULL,
  `ContactPhone` varchar(32) DEFAULT NULL,
  `Longitude` varchar(64) DEFAULT NULL,
  `Latitude` varchar(64) DEFAULT NULL,
  `Address` varchar(32) DEFAULT NULL,
  `HouseNumber` varchar(32) DEFAULT NULL,
  `Label` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`AddressID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `customer_address` */

/*Table structure for table `customer_info` */

DROP TABLE IF EXISTS `customer_info`;

CREATE TABLE `customer_info` (
  `CustomerID` varchar(32) NOT NULL,
  `CustomerName` varchar(32) DEFAULT NULL,
  `LoginID` varchar(32) DEFAULT NULL,
  `Password` varchar(32) DEFAULT NULL,
  `Phone` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `customer_info` */

/*Table structure for table `employee_info` */

DROP TABLE IF EXISTS `employee_info`;

CREATE TABLE `employee_info` (
  `EmployeeID` varchar(32) DEFAULT NULL,
  `EmployeeName` varchar(32) DEFAULT NULL,
  `LoginID` varchar(32) DEFAULT NULL,
  `Password` varchar(32) DEFAULT NULL,
  `Phone` varchar(32) DEFAULT NULL,
  `WeChat` varchar(32) DEFAULT NULL,
  `StoreID` varchar(32) DEFAULT NULL,
  `IsManager` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `employee_info` */

/*Table structure for table `goods_category` */

DROP TABLE IF EXISTS `goods_category`;

CREATE TABLE `goods_category` (
  `CategoryID` varchar(32) NOT NULL,
  `CategoryName` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`CategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `goods_category` */

/*Table structure for table `goods_info` */

DROP TABLE IF EXISTS `goods_info`;

CREATE TABLE `goods_info` (
  `GoodsID` varchar(32) NOT NULL,
  `GoodsName` varchar(32) DEFAULT NULL,
  `Price` double DEFAULT NULL,
  `Description` text,
  `Picture` text,
  `Score` float DEFAULT NULL,
  PRIMARY KEY (`GoodsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `goods_info` */

/*Table structure for table `goods_inventory` */

DROP TABLE IF EXISTS `goods_inventory`;

CREATE TABLE `goods_inventory` (
  `StoreID` varchar(32) NOT NULL,
  `GoodsID` varchar(32) NOT NULL,
  `Quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `goods_inventory` */

/*Table structure for table `goods_outin_recode` */

DROP TABLE IF EXISTS `goods_outin_recode`;

CREATE TABLE `goods_outin_recode` (
  `StoreID` varchar(32) DEFAULT NULL,
  `GoodsID` varchar(32) DEFAULT NULL,
  `OutInType` varchar(8) DEFAULT NULL COMMENT '"OUT" or "IN"',
  `Amount` int(11) DEFAULT NULL,
  `OutInTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `goods_outin_recode` */

/*Table structure for table `order` */

DROP TABLE IF EXISTS `order`;

CREATE TABLE `order` (
  `OrderID` varchar(32) NOT NULL,
  `StoreID` varchar(32) DEFAULT NULL,
  `CustomerID` varchar(32) DEFAULT NULL,
  `GoodsID` varchar(32) DEFAULT NULL,
  `Aomunt` int(11) DEFAULT NULL,
  `OriginalPrice` double DEFAULT NULL,
  `SalePrics` double DEFAULT NULL,
  `Channel` varchar(32) DEFAULT NULL,
  `CreateTime` datetime DEFAULT NULL,
  `PayTime` datetime DEFAULT NULL,
  `ReceiveTime` datetime DEFAULT NULL,
  `FinishedTime` datetime DEFAULT NULL,
  PRIMARY KEY (`OrderID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `order` */

/*Table structure for table `store_info` */

DROP TABLE IF EXISTS `store_info`;

CREATE TABLE `store_info` (
  `StoreID` varchar(32) NOT NULL,
  `StoreName` varchar(32) DEFAULT NULL,
  `Manager` varchar(32) DEFAULT NULL,
  `Longitude` varchar(64) DEFAULT NULL,
  `Latitude` varchar(64) DEFAULT NULL,
  `Address` text,
  `License` text,
  PRIMARY KEY (`StoreID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `store_info` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
