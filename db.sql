/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - wuliuguanliwu
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`wuliuguanliwu` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `wuliuguanliwu`;

/*Table structure for table `cheliang` */

DROP TABLE IF EXISTS `cheliang`;

CREATE TABLE `cheliang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `cheliang_uuid_number` varchar(200) DEFAULT NULL COMMENT '车辆编号',
  `cheliang_name` varchar(200) DEFAULT NULL COMMENT '车辆名称 Search111',
  `cheliang_types` int(11) DEFAULT NULL COMMENT '车辆类型 Search111',
  `cheliang_status_types` int(11) DEFAULT NULL COMMENT '车辆状态 Search111',
  `cheliang_content` text COMMENT '车辆详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='车辆信息';

/*Data for the table `cheliang` */

insert  into `cheliang`(`id`,`cheliang_uuid_number`,`cheliang_name`,`cheliang_types`,`cheliang_status_types`,`cheliang_content`,`create_time`) values (1,'164852373103911','车辆名称1',1,2,'车辆详情1','2022-03-29 11:15:31'),(2,'164852373103912','车辆名称2',2,2,'车辆详情2','2022-03-29 11:15:31'),(3,'164852373103914','车辆名称3',1,1,'车辆详情3','2022-03-29 11:15:31'),(4,'164852373103911','车辆名称4',3,2,'车辆详情4','2022-03-29 11:15:31'),(5,'16485237310397','车辆名称5',3,1,'<p>车辆详情5</p>','2022-03-29 11:15:31');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (23,'cheliang_types','车辆类型',1,'车辆类型1',NULL,NULL,'2022-03-26 11:56:30'),(24,'cheliang_types','车辆类型',2,'车辆类型2',NULL,NULL,'2022-03-26 11:56:30'),(25,'cheliang_types','车辆类型',3,'车辆类型3',NULL,NULL,'2022-03-26 11:56:30'),(26,'sex_types','性别',1,'男',NULL,NULL,'2022-03-26 11:56:30'),(27,'sex_types','性别',2,'女',NULL,NULL,'2022-03-26 11:56:30'),(28,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2022-03-26 11:56:30'),(29,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2022-03-26 11:56:30'),(30,'news_types','公告类型',3,'公告类型3',NULL,NULL,'2022-03-26 11:56:30'),(31,'wuliu_types','物流状态',1,'未开始',NULL,NULL,NULL),(32,'wuliu_types','物流状态',2,'出库',NULL,NULL,NULL),(33,'wuliu_types','物流状态',3,'入库',NULL,NULL,NULL),(34,'cheliang_status_types','车辆状态',1,'空闲',NULL,NULL,NULL),(35,'cheliang_status_types','车辆状态',2,'运输中',NULL,NULL,NULL),(36,'yundan_status_types','运单状态',1,'未完成',NULL,NULL,NULL),(37,'yundan_status_types','运单状态',2,'已完成',NULL,NULL,NULL),(38,'wuliu_types','物流状态',4,'运输中',NULL,NULL,NULL),(39,'wuliu_types','物流状态',5,'已完成',NULL,NULL,NULL);

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',2,'http://localhost:8080/wuliuguanliwu/upload/news1.jpg','2022-03-29 11:15:31','公告详情1','2022-03-29 11:15:31'),(2,'公告标题2',2,'http://localhost:8080/wuliuguanliwu/upload/news2.jpg','2022-03-29 11:15:31','公告详情2','2022-03-29 11:15:31'),(3,'公告标题3',1,'http://localhost:8080/wuliuguanliwu/upload/news3.jpg','2022-03-29 11:15:31','公告详情3','2022-03-29 11:15:31'),(4,'公告标题4',3,'http://localhost:8080/wuliuguanliwu/upload/news4.jpg','2022-03-29 11:15:31','公告详情4','2022-03-29 11:15:31'),(5,'公告标题5',3,'http://localhost:8080/wuliuguanliwu/upload/news5.jpg','2022-03-29 11:15:31','公告详情5','2022-03-29 11:15:31');

/*Table structure for table `siji` */

DROP TABLE IF EXISTS `siji`;

CREATE TABLE `siji` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `siji_name` varchar(200) DEFAULT NULL COMMENT '司机姓名 Search111 ',
  `siji_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `siji_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='司机';

/*Data for the table `siji` */

insert  into `siji`(`id`,`siji_name`,`siji_photo`,`sex_types`,`siji_phone`,`create_time`) values (1,'司机姓名1','http://localhost:8080/wuliuguanliwu/upload/yonghu1.jpg',1,'17703786901','2022-03-29 11:15:31'),(2,'司机姓名2','http://localhost:8080/wuliuguanliwu/upload/yonghu2.jpg',2,'17703786902','2022-03-29 11:15:31'),(3,'司机姓名3','http://localhost:8080/wuliuguanliwu/upload/yonghu3.jpg',2,'17703786903','2022-03-29 11:15:31');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','kyrv3nffedlfmrewsvmwchbihqsmqt4i','2022-03-29 11:12:29','2022-03-29 12:32:12'),(2,1,'a1','yonghu','用户','b45cq13ipz93kqlmga8yvuy3nwktu5uq','2022-03-29 11:24:39','2022-03-29 12:31:34');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2022-05-01 00:00:00');

/*Table structure for table `wuliu` */

DROP TABLE IF EXISTS `wuliu`;

CREATE TABLE `wuliu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `wuliu_uuid_number` varchar(200) DEFAULT NULL COMMENT '物流单号 Search111',
  `cheliang_id` int(11) DEFAULT NULL COMMENT '车辆',
  `yundan_id` int(11) DEFAULT NULL COMMENT '运单',
  `siji_id` int(11) DEFAULT NULL COMMENT '负责司机',
  `wuliu_types` int(11) DEFAULT NULL COMMENT '物流状态',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='物流信息';

/*Data for the table `wuliu` */

insert  into `wuliu`(`id`,`wuliu_uuid_number`,`cheliang_id`,`yundan_id`,`siji_id`,`wuliu_types`,`create_time`) values (1,'164852373106014',1,1,1,3,'2022-03-29 11:15:31'),(2,'16485237310604',2,2,2,4,'2022-03-29 11:15:31'),(3,'164852373106014',3,3,3,4,'2022-03-29 11:15:31'),(4,'164852373106015',4,4,1,4,'2022-03-29 11:15:31'),(5,'164852373106015',5,5,2,1,'2022-03-29 11:15:31'),(6,'1648524755154',5,7,2,4,'2022-03-29 11:32:44');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号 ',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `yonghu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_photo`,`sex_types`,`yonghu_phone`,`yonghu_id_number`,`yonghu_email`,`yonghu_delete`,`create_time`) values (1,'a1','123456','用户姓名1','http://localhost:8080/wuliuguanliwu/upload/yonghu1.jpg',2,'17703786901','410224199610232001','1@qq.com',1,'2022-03-29 11:15:31'),(2,'a2','123456','用户姓名2','http://localhost:8080/wuliuguanliwu/upload/yonghu2.jpg',2,'17703786902','410224199610232002','2@qq.com',1,'2022-03-29 11:15:31'),(3,'a3','123456','用户姓名3','http://localhost:8080/wuliuguanliwu/upload/yonghu3.jpg',2,'17703786903','410224199610232003','3@qq.com',1,'2022-03-29 11:15:31');

/*Table structure for table `yundan` */

DROP TABLE IF EXISTS `yundan`;

CREATE TABLE `yundan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `yundan_address` varchar(200) DEFAULT NULL COMMENT '送货地点 Search111',
  `yundan_name` varchar(200) DEFAULT NULL COMMENT '收件人 Search111',
  `yundan_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yundan_status_types` int(11) DEFAULT NULL COMMENT '运单状态 Search111',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='运单信息';

/*Data for the table `yundan` */

insert  into `yundan`(`id`,`yonghu_id`,`yundan_address`,`yundan_name`,`yundan_phone`,`yundan_status_types`,`create_time`) values (1,1,'送货地点1','收件人1','17703786901',2,'2022-03-29 11:15:31'),(2,2,'送货地点2','收件人2','17703786902',1,'2022-03-29 11:15:31'),(3,1,'送货地点3','收件人3','17703786903',2,'2022-03-29 11:15:31'),(4,3,'送货地点4','收件人4','17703786904',2,'2022-03-29 11:15:31'),(5,1,'送货地点5','收件人5','17703786905',2,'2022-03-29 11:15:31'),(7,1,'用户能发运单信息','123','13344115121',1,'2022-03-29 11:32:05');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
