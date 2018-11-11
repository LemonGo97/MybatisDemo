/*
SQLyog Ultimate v12.2.6 (64 bit)
MySQL - 5.7.21 : Database - cpssystem
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`cpssystem` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;

USE `cpssystem`;

/*Table structure for table `tbl_cu_address` */

DROP TABLE IF EXISTS `tbl_cu_address`;

CREATE TABLE `tbl_cu_address` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `address1` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `address3` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`record_id`),
  KEY `customer` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `tbl_cu_address` */

insert  into `tbl_cu_address`(`record_id`,`customer_id`,`address1`,`address2`,`address3`) values 
(1,22,'上海','北京','天津'),
(2,23,'湖南','湖北','成都'),
(3,25,'内蒙古','广东','西藏'),
(4,27,'深圳','合肥','南京'),
(5,24,'东方明珠国际酒店','奔跑吧兄弟录制现场','北京工人体育场'),
(6,26,NULL,NULL,NULL),
(7,28,NULL,NULL,NULL),
(8,29,NULL,NULL,NULL),
(9,30,NULL,NULL,NULL),
(10,31,NULL,NULL,NULL),
(11,32,NULL,NULL,NULL),
(12,33,NULL,NULL,NULL),
(13,34,NULL,NULL,NULL),
(14,35,NULL,NULL,NULL),
(15,36,NULL,NULL,NULL),
(16,37,NULL,NULL,NULL),
(17,38,NULL,NULL,NULL),
(18,39,NULL,NULL,NULL),
(19,40,NULL,NULL,NULL),
(20,41,NULL,NULL,NULL),
(21,42,NULL,NULL,NULL),
(22,43,NULL,NULL,NULL),
(23,44,NULL,NULL,NULL),
(24,45,NULL,NULL,NULL),
(25,46,NULL,NULL,NULL),
(26,47,NULL,NULL,NULL),
(27,48,NULL,NULL,NULL),
(28,49,NULL,NULL,NULL),
(29,50,NULL,NULL,NULL),
(30,51,NULL,NULL,NULL),
(31,52,NULL,NULL,NULL),
(32,53,NULL,NULL,NULL),
(33,54,NULL,NULL,NULL),
(34,55,NULL,NULL,NULL),
(35,56,NULL,NULL,NULL),
(36,57,NULL,NULL,NULL),
(37,58,NULL,NULL,NULL),
(38,59,NULL,NULL,NULL),
(39,60,NULL,NULL,NULL),
(40,61,NULL,NULL,NULL),
(41,62,NULL,NULL,NULL),
(42,63,NULL,NULL,NULL),
(43,64,NULL,NULL,NULL),
(44,65,NULL,NULL,NULL),
(45,66,NULL,NULL,NULL),
(46,67,NULL,NULL,NULL),
(47,68,NULL,NULL,NULL),
(48,69,NULL,NULL,NULL),
(49,70,NULL,NULL,NULL),
(50,71,NULL,NULL,NULL),
(51,72,NULL,NULL,NULL),
(52,73,NULL,NULL,NULL),
(53,74,NULL,NULL,NULL),
(54,75,NULL,NULL,NULL),
(55,76,NULL,NULL,NULL),
(56,77,NULL,NULL,NULL),
(57,78,NULL,NULL,NULL),
(58,79,NULL,NULL,NULL),
(59,80,NULL,NULL,NULL),
(60,81,NULL,NULL,NULL),
(61,82,NULL,NULL,NULL),
(62,83,NULL,NULL,NULL),
(63,84,NULL,NULL,NULL),
(64,85,NULL,NULL,NULL),
(65,86,NULL,NULL,NULL),
(66,87,NULL,NULL,NULL),
(67,88,NULL,NULL,NULL),
(68,89,NULL,NULL,NULL),
(69,90,NULL,NULL,NULL),
(70,100,NULL,NULL,NULL),
(71,101,NULL,NULL,NULL),
(72,102,NULL,NULL,NULL),
(73,103,NULL,NULL,NULL),
(74,104,NULL,NULL,NULL),
(75,105,NULL,NULL,NULL),
(76,106,NULL,NULL,NULL),
(77,107,NULL,NULL,NULL),
(78,108,NULL,NULL,NULL),
(79,113,NULL,NULL,NULL),
(80,138,NULL,NULL,NULL),
(81,139,NULL,NULL,NULL),
(82,140,NULL,NULL,NULL),
(83,141,NULL,NULL,NULL);

/*Table structure for table `tbl_cu_state` */

DROP TABLE IF EXISTS `tbl_cu_state`;

CREATE TABLE `tbl_cu_state` (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `customer_state` int(11) NOT NULL,
  PRIMARY KEY (`record_id`),
  KEY `state` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `tbl_cu_state` */

insert  into `tbl_cu_state`(`record_id`,`customer_id`,`customer_state`) values 
(1,22,1),
(2,23,0),
(3,25,1),
(4,26,0),
(5,24,0),
(6,27,0),
(7,28,0),
(8,29,0),
(9,30,0),
(10,31,0),
(11,32,0),
(12,33,0),
(13,34,0),
(14,35,0),
(15,36,0),
(16,37,0),
(17,38,0),
(18,39,0),
(19,40,0),
(20,41,0),
(21,42,0),
(22,43,0),
(23,44,0),
(24,45,0),
(25,46,0),
(26,47,0),
(27,48,0),
(28,49,0),
(29,50,0),
(30,51,0),
(31,52,0),
(32,53,0),
(33,54,0),
(34,55,0),
(35,56,0),
(36,57,0),
(37,58,0),
(38,59,0),
(39,60,0),
(40,61,0),
(41,62,0),
(42,63,0),
(43,64,0),
(44,65,0),
(45,66,0),
(46,67,0),
(47,68,0),
(48,69,0),
(49,70,0),
(50,71,0),
(51,72,0),
(52,73,0),
(53,74,0),
(54,75,0),
(55,76,0),
(56,77,0),
(57,78,0),
(58,79,0),
(59,80,0),
(60,81,0),
(61,82,0),
(62,83,0),
(63,84,0),
(64,85,0),
(65,86,0),
(66,87,0),
(67,88,0),
(68,89,0),
(69,90,0),
(70,91,0),
(71,92,0),
(72,93,0),
(73,94,0),
(74,95,0),
(75,96,0),
(76,97,0),
(77,98,0),
(78,99,0),
(79,100,0),
(80,101,0),
(81,102,0),
(82,103,0),
(83,104,0),
(84,105,0),
(85,106,0),
(86,107,0),
(87,107,0),
(88,108,0),
(89,113,0),
(90,139,0),
(91,138,0),
(92,140,0),
(93,141,0);

/*Table structure for table `tbl_customer` */

DROP TABLE IF EXISTS `tbl_customer`;

CREATE TABLE `tbl_customer` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_bin NOT NULL,
  `password` varchar(255) COLLATE utf8_bin NOT NULL,
  `createdate` date NOT NULL,
  `telephone` varchar(255) COLLATE utf8_bin NOT NULL,
  `delete_status` int(6) NOT NULL,
  `email` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `weibo` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `qq` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `intro` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `tbl_customer` */

insert  into `tbl_customer`(`user_id`,`username`,`password`,`createdate`,`telephone`,`delete_status`,`email`,`weibo`,`qq`,`intro`) values 
(22,'阿吉','zl93QQQz9Kg=','2018-09-27','11111111111',0,'1332245566@163.com','wuxiaojvn','1332233443','我不是一个随便的人，我随便起来不是人，啊哈哈哈哈哈哈哈，你呢'),
(23,'小黑','zl93QQQz9Kg=','2018-10-20','11111111112',1,NULL,NULL,NULL,NULL),
(24,'蕾蕾','zl93QQQz9Kg=','2018-09-24','11111111113',0,'1289435034@qq.com','leilei@weibo.cn','1234567887','我是蕾蕾，一个貌美如花的女子，哈啊哈哈哈哈哈哈，其实我是个女汉子，是吧，giao哥'),
(25,'热巴','zl93QQQz9Kg=','2018-10-18','11111111114',0,NULL,NULL,NULL,NULL),
(26,'朗朗','zl93QQQz9Kg=','2018-11-30','11111111115',0,NULL,NULL,NULL,NULL),
(27,'郑爽','zl93QQQz9Kg=','2018-10-29','11111111116',0,NULL,NULL,NULL,NULL),
(28,'琪琪','zl93QQQz9Kg=','2018-10-25','11111111117',0,NULL,NULL,NULL,NULL),
(29,'吴彦祖','zl93QQQz9Kg=','2018-10-24','11111111118',0,NULL,NULL,NULL,NULL),
(30,'六二','zl93QQQz9Kg=','2018-11-24','11111111119',0,NULL,NULL,NULL,NULL),
(31,'三八','zl93QQQz9Kg=','2018-12-07','11111111110',0,NULL,NULL,NULL,NULL),
(32,'窦漪房','zl93QQQz9Kg=','2018-10-25','11111111121',0,NULL,NULL,NULL,NULL),
(33,'刘恒','zl93QQQz9Kg=','2018-10-18','11111111122',0,NULL,NULL,NULL,NULL),
(34,'小宋','zl93QQQz9Kg=','2018-12-15','11111111123',0,NULL,NULL,NULL,NULL),
(35,'张三','zl93QQQz9Kg=','2018-10-17','11111111124',0,NULL,NULL,NULL,NULL),
(36,'王红','zl93QQQz9Kg=','2018-12-29','11111111125',0,NULL,NULL,NULL,NULL),
(37,'李四','zl93QQQz9Kg=','2018-09-13','11111111126',0,NULL,NULL,NULL,NULL),
(38,'阿志','zl93QQQz9Kg=','2018-11-15','11111111127',0,NULL,NULL,NULL,NULL),
(39,'金钟仁','zl93QQQz9Kg=','2018-10-22','11111111128',0,NULL,NULL,NULL,NULL),
(40,'小雅','zl93QQQz9Kg=','2018-11-22','11111111129',0,NULL,NULL,NULL,NULL),
(41,'李钟硕','zl93QQQz9Kg=','2018-10-24','11111111120',0,NULL,NULL,NULL,NULL),
(42,'林总','zl93QQQz9Kg=','2018-11-30','11111111130',0,NULL,NULL,NULL,NULL),
(43,'陈赫','zl93QQQz9Kg=','2018-10-15','11111111131',0,NULL,NULL,NULL,NULL),
(44,'李晨','zl93QQQz9Kg=','2018-10-16','11111111132',0,NULL,NULL,NULL,NULL),
(45,'阿莲','zl93QQQz9Kg=','2019-02-08','11111111133',0,NULL,NULL,NULL,NULL),
(46,'巧儿','zl93QQQz9Kg=','2019-03-29','11111111134',0,NULL,NULL,NULL,NULL),
(47,'张飞','zl93QQQz9Kg=','2018-10-17','11111111135',0,NULL,NULL,NULL,NULL),
(48,'小瓜','zl93QQQz9Kg=','2018-07-03','11111111136',0,NULL,NULL,NULL,NULL),
(49,'公孙离','zl93QQQz9Kg=','2018-10-18','11111111137',0,NULL,NULL,NULL,NULL),
(50,'呆子','zl93QQQz9Kg=','2018-10-25','11111111138',0,NULL,NULL,NULL,NULL),
(51,'貂蝉','zl93QQQz9Kg=','2018-09-26','11111111139',0,NULL,NULL,NULL,NULL),
(52,'悟空','zl93QQQz9Kg=','2018-07-12','11111111140',0,NULL,NULL,NULL,NULL),
(53,'吕布','zl93QQQz9Kg=','2018-10-10','11111111141',0,NULL,NULL,NULL,NULL),
(54,'盲审','zl93QQQz9Kg=','2018-05-08','11111111142',0,NULL,NULL,NULL,NULL),
(55,'压缩','zl93QQQz9Kg=','2018-07-05','11111111143',0,NULL,NULL,NULL,NULL),
(56,'程咬金','zl93QQQz9Kg=','2018-10-18','11111111144',0,NULL,NULL,NULL,NULL),
(57,'泰坦','zl93QQQz9Kg=','2018-06-14','11111111145',0,NULL,NULL,NULL,NULL),
(58,'芈月','zl93QQQz9Kg=','2018-10-17','11111111146',0,NULL,NULL,NULL,NULL),
(59,'托儿','zl93QQQz9Kg=','2020-03-30','11111111147',0,NULL,NULL,NULL,NULL),
(60,'蔡文姬','zl93QQQz9Kg=','2018-10-11','11111111148',0,NULL,NULL,NULL,NULL),
(61,'夸父','zl93QQQz9Kg=','2019-01-12','11111111149',0,NULL,NULL,NULL,NULL),
(62,'虞姬','zl93QQQz9Kg=','2018-10-13','11111111150',0,NULL,NULL,NULL,NULL),
(63,'后羿','zl93QQQz9Kg=','2019-05-23','11111111151',0,NULL,NULL,NULL,NULL),
(64,'明世隐','zl93QQQz9Kg=','2018-10-19','11111111152',0,NULL,NULL,NULL,NULL),
(65,'怒将','zl93QQQz9Kg=','2019-05-17','11111111153',0,NULL,NULL,NULL,NULL),
(66,'刘邦','zl93QQQz9Kg=','2018-10-17','11111111154',0,NULL,NULL,NULL,NULL),
(67,'红孩儿','zl93QQQz9Kg=','2019-05-18','11111111155',0,NULL,NULL,NULL,NULL),
(68,'刘备','zl93QQQz9Kg=','2018-10-02','11111111156',0,NULL,NULL,NULL,NULL),
(69,'牛魔王','zl93QQQz9Kg=','2019-01-26','11111111157',0,NULL,NULL,NULL,NULL),
(70,'松江','zl93QQQz9Kg=','2022-01-13','11111111158',0,NULL,NULL,NULL,NULL),
(71,'妲己','zl93QQQz9Kg=','2018-10-20','11111111159',0,NULL,NULL,NULL,NULL),
(72,'李逵','zl93QQQz9Kg=','2018-10-02','11111111160',0,NULL,NULL,NULL,NULL),
(73,'甄姬','zl93QQQz9Kg=','2018-10-02','11111111161',0,NULL,NULL,NULL,NULL),
(74,'鲁智深','zl93QQQz9Kg=','2020-12-23','11111111162',0,NULL,NULL,NULL,NULL),
(75,'张良','zl93QQQz9Kg=','2018-10-09','11111111163',0,NULL,NULL,NULL,NULL),
(76,'孙二娘','zl93QQQz9Kg=','2016-03-30','11111111164',0,NULL,NULL,NULL,NULL),
(77,'武松','zl93QQQz9Kg=','2015-06-30','11111111165',0,NULL,NULL,NULL,NULL),
(78,'李白','zl93QQQz9Kg=','2018-10-24','11111111166',0,NULL,NULL,NULL,NULL),
(79,'小李光辉','zl93QQQz9Kg=','2018-07-04','11111111167',0,NULL,NULL,NULL,NULL),
(80,'韩信','zl93QQQz9Kg=','2018-10-25','11111111168',0,NULL,NULL,NULL,NULL),
(81,'华容','zl93QQQz9Kg=','2018-08-28','11111111169',0,NULL,NULL,NULL,NULL),
(82,'花木兰','zl93QQQz9Kg=','2018-10-17','11111111170',0,NULL,NULL,NULL,NULL),
(83,'无用','zl93QQQz9Kg=','2022-11-30','11111111171',0,NULL,NULL,NULL,NULL),
(84,'兰陵王','zl93QQQz9Kg=','2018-08-14','11111111172',0,NULL,NULL,NULL,NULL),
(85,'老虎','zl93QQQz9Kg=','2016-06-30','11111111173',0,NULL,NULL,NULL,NULL),
(86,'姜子牙','zl93QQQz9Kg=','2018-10-13','11111111174',0,NULL,NULL,NULL,NULL),
(87,'关于','zl93QQQz9Kg=','2015-07-30','11111111175',0,NULL,NULL,NULL,NULL),
(88,'诸葛亮','zl93QQQz9Kg=','2018-10-18','11111111176',0,NULL,NULL,NULL,NULL),
(89,'张飞','zl93QQQz9Kg=','2014-11-30','11111111177',0,NULL,NULL,NULL,NULL),
(90,'鬼谷子','zl93QQQz9Kg=','2018-10-17','11111111178',0,NULL,NULL,NULL,NULL),
(91,'潘长江','zl93QQQz9Kg=','2013-06-20','11111111179',0,NULL,NULL,NULL,NULL),
(92,'黄忠','zl93QQQz9Kg=','2018-10-02','11111111180',0,NULL,NULL,NULL,NULL),
(93,'大阪府','zl93QQQz9Kg=','2018-10-17','11111111181',0,NULL,NULL,NULL,NULL),
(94,'大棒子','zl93QQQz9Kg=','2012-03-22','11111111182',0,NULL,NULL,NULL,NULL),
(95,'郑秀晶','zl93QQQz9Kg=','2018-09-25','11111111183',0,NULL,NULL,NULL,NULL),
(96,'小崽子','zl93QQQz9Kg=','2025-07-17','11111111184',0,NULL,NULL,NULL,NULL),
(97,'苏烈','zl93QQQz9Kg=','2018-10-09','11111111185',0,NULL,NULL,NULL,NULL),
(98,'精钢','zl93QQQz9Kg=','2023-07-05','11111111186',0,NULL,NULL,NULL,NULL),
(99,'土坷垃','zl93QQQz9Kg=','2020-12-30','11111111187',0,NULL,NULL,NULL,NULL),
(100,'成吉思汗','zl93QQQz9Kg=','2018-08-28','11111111188',0,NULL,NULL,NULL,NULL),
(101,'懒真的而瑞','zl93QQQz9Kg=','2019-04-30','11111111189',0,NULL,NULL,NULL,NULL),
(102,'杨志','zl93QQQz9Kg=','2018-06-13','11111111190',0,NULL,NULL,NULL,NULL),
(103,'谢逊','zl93QQQz9Kg=','2020-11-30','11111111191',0,NULL,NULL,NULL,NULL),
(104,'张无忌','zl93QQQz9Kg=','2024-08-30','11111111192',0,NULL,NULL,NULL,NULL),
(105,'孙尚香','zl93QQQz9Kg=','2018-11-29','11111111193',0,NULL,NULL,NULL,NULL),
(106,'超人','zl93QQQz9Kg=','2019-01-25','11111111194',0,NULL,NULL,NULL,NULL),
(107,'母夜叉','zl93QQQz9Kg=','2018-08-08','11111111195',0,NULL,NULL,NULL,NULL),
(108,'郭靖','zl93QQQz9Kg=','2018-10-17','11111111196',0,NULL,NULL,NULL,NULL),
(113,'TheShy','zl93QQQz9Kg=','2018-10-31','11111111197',0,NULL,NULL,NULL,NULL),
(138,'无线林','zl93QQQz9Kg=','2018-11-07','11111111198',0,NULL,NULL,NULL,NULL),
(139,'贤老师','zl93QQQz9Kg=','2018-11-07','11111111199',0,NULL,NULL,NULL,NULL),
(140,'我叫王二麻子','zl93QQQz9Kg=','2018-11-09','11133224433',0,NULL,NULL,NULL,NULL),
(141,'我是他弟弟','zl93QQQz9Kg=','2018-11-09','13322443355',0,NULL,NULL,NULL,NULL);

/*Table structure for table `tbl_orders` */

DROP TABLE IF EXISTS `tbl_orders`;

CREATE TABLE `tbl_orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_file` varchar(255) COLLATE utf8_bin NOT NULL,
  `money` decimal(10,0) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_state` int(11) NOT NULL,
  `overdate` date NOT NULL,
  `createdate` date NOT NULL,
  `address` varchar(255) COLLATE utf8_bin NOT NULL,
  `delete_status` int(11) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `tbl_orders` */

insert  into `tbl_orders`(`order_id`,`order_file`,`money`,`shop_id`,`customer_id`,`order_state`,`overdate`,`createdate`,`address`,`delete_status`) values 
(1,'/upload/files/file001.txt',18,1,24,0,'2018-11-04','2018-11-06','北京市',0),
(2,'/upload/files/image01.jpg',3,3,22,2,'2018-11-09','2018-11-09','重庆市',0),
(3,'/upload/files/document1.doc',3,3,22,3,'2018-11-09','2018-11-09','重庆市',0);

/*Table structure for table `tbl_shop` */

DROP TABLE IF EXISTS `tbl_shop`;

CREATE TABLE `tbl_shop` (
  `shop_id` int(5) NOT NULL AUTO_INCREMENT,
  `shopname` varchar(255) COLLATE utf8_bin NOT NULL,
  `password` varchar(255) COLLATE utf8_bin NOT NULL,
  `shopaddress` varchar(255) COLLATE utf8_bin NOT NULL,
  `createdate` date NOT NULL,
  `shopstate` int(4) NOT NULL,
  `telephone` varchar(255) COLLATE utf8_bin NOT NULL,
  `businessman` varchar(255) COLLATE utf8_bin NOT NULL,
  `delete_status` int(6) NOT NULL,
  PRIMARY KEY (`shop_id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `tbl_shop` */

insert  into `tbl_shop`(`shop_id`,`shopname`,`password`,`shopaddress`,`createdate`,`shopstate`,`telephone`,`businessman`,`delete_status`) values 
(1,'云去印','123456','上海','2018-10-24',1,'18844556655','胡先生',0),
(3,'乔嘉园打印社','zl93QQQz9Kg=','内蒙古呼伦贝尔市海拉尔区','2018-10-24',1,'13322334455','李老板',0),
(4,'马什麽梅','123456','内蒙古满洲里','2018-10-24',1,'13844556655','张老板',0),
(6,'霍去病','112233','广州','2019-01-04',1,'15748644694','王总',0),
(7,'杂货铺','778899','福建','2018-10-24',1,'13458448648','张懂事',0),
(8,'无心','565656','凉城','2018-11-28',1,'15689766964','张大脑袋',0),
(9,'知了','864698','新疆','2018-09-13',1,'18745848464','刘二愣子',0),
(10,'自主申请','312221','承德','2019-03-22',1,'15684694669','刘二主',0),
(11,'方便零食','788445','山西','2018-11-27',0,'13248686948','李笨',0),
(12,'稻香村','123456','北京','2018-08-15',0,'15698743558','刘老板',1),
(13,'自助餐','876976','四川','2018-11-25',0,'18969439365','胡圈儿',1),
(14,'水果','785486','海拉尔','2018-08-28',0,'13656394688','沈万三',0),
(15,'辣嘴鸭','123456','赤峰','2018-11-21',0,'13778924569','赵老板',0),
(16,'嘎达汤','897455','东北','2019-01-31',0,'15684684688','杨树林',0),
(17,'刀削面','764568','深圳','2018-11-27',0,'15478767696','王董事长',0),
(18,'心之约','123456','赤峰','2018-11-26',0,'13745698562','钱老板',0),
(19,'麻辣烫','656479','北京','2018-04-24',0,'18746946945','阳阳',0),
(20,'星儿','978745','广西','2018-08-14',0,'13586468864','刘二',0),
(21,'张亮麻辣烫','123456','昌平','2018-04-18',0,'15978321156','孙老板',0),
(22,'天空的颜色','876845','通辽','2019-01-26',0,'15876984687','张三',0),
(23,'五金','785548','赤峰','2018-08-23',0,'14585846698','李四',0),
(24,'周黑鸭','123456','北京','2018-07-12',0,'15498657892','李老板',0),
(25,'肯德基','965464','莲花沟子','2018-03-22',0,'15646884688','王五',0),
(26,'麦当劳','125455','沈阳','2018-09-05',0,'13646469465','幺爸',0),
(27,'男孩女孩','123456','赤峰','2018-11-02',0,'14497795224','周老板',0),
(28,'东北菜','125486','陕西','2018-10-05',0,'15254684696','二审',0),
(29,'大自然','123456','赤峰','2018-11-09',0,'14558653587','吴老板',0),
(30,'沐浴','124548','广州','2018-08-05',0,'15786464864','哟妹儿',0),
(31,'腊肠','186645','广西','2018-07-05',0,'15964684565','王大财主',0),
(32,'熟食','153436','云南','2018-07-05',0,'15846456455','李副总',0),
(33,'串来串去','123456','海拉尔','2018-11-13',0,'17678687652','郑老板',0),
(34,'美容','147867','惠州','2018-03-05',0,'18478654645','赵地主',0),
(35,'如家','123456','北京','2018-11-04',0,'18754845145','王老板',0),
(36,'文傻子','123456','昌平','2018-02-22',0,'15766378777','冯老板',0),
(37,'全友家私','123456','北京','2018-11-16',0,'13345373457','陈老板',0),
(38,'欧派','123456','北京','2018-11-30',0,'17867865337','楚老板',0),
(39,'王致和','123456','河北','2018-11-02',0,'18748462164','魏老板',0),
(40,'六婆串串香','123456','海淀区','2018-10-02',0,'13765323257','刘老板',0),
(41,'朱老六','123456','赤峰','2018-11-06',0,'12378454741','蒋老板',0),
(42,'王守义','123456','河南','2018-02-22',0,'18785621344','沈老板',0),
(43,'王婆大虾','654321','海淀区','2018-10-23',1,'15189654545','马老板',0),
(44,'曾礼和','123456','山东','2018-05-24',0,'17953344543','韩老板',0),
(45,'冒菜','123456','海淀区','2018-10-09',0,'15845632123','郝老板',0),
(46,'馨馨足疗','123456','赤峰','2018-11-10',0,'12583544683','杨老板',0),
(47,'老约翰中药店','123456','敖汉','2018-06-20',0,'18864135366','朱老板',0),
(48,'性福超市（无人售货）','123456','敖汉','2018-04-14',0,'14686783573','秦老板',0),
(49,'辣妹子','123456','四川','2018-11-04',0,'18656423654','辣老板',0),
(50,'周黑鸭','124563','黑龙江','2018-10-16',0,'15145748965','周老板',0),
(51,'黑店','123456','赤峰','2018-11-25',0,'17678678652','由老板',0),
(52,'没有烤肉','123456','赤峰','2018-05-24',0,'12454535375','许老板',0),
(53,'鱼头泡饼','145648','锦州','2018-10-18',0,'15487954648','胡老板',0),
(54,'热干面','132464','新疆','2018-10-15',0,'16478954687','啊老板',0),
(55,'新疆大饼','135465','新疆','2018-09-11',0,'13655489746','买买提',0),
(56,'北京烤鸭','454132','北京','2018-09-18',0,'15532134651','北老板',0),
(57,'久发超市','123654','赤峰','2018-10-04',0,'15648975641','贾老板',0),
(58,'热浪自助','521345','赤峰','2018-10-19',0,'18734132454','黑老板',0),
(59,'天骄烤肉拌饭','484564','海拉尔','2018-09-19',0,'15798546548','刘老板',0),
(60,'草原酒家','113214','海拉尔','2018-10-24',0,'16987946544','岳老板',0),
(61,'随行','454654','北京','2018-10-20',0,'18654313465','甄老板',0),
(62,'十三香','EWCVnaQ7n3M=','湖南省湘潭市','2018-11-06',0,'11113333333','王致和',0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
