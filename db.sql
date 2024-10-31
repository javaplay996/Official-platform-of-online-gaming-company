/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - jspm2tm76
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jspm2tm76` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jspm2tm76`;

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615275595444 DEFAULT CHARSET=utf8 COMMENT='在线客服';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (61,'2021-03-09 15:33:55',1,1,'提问1','回复1',1),(62,'2021-03-09 15:33:55',2,2,'提问2','回复2',2),(63,'2021-03-09 15:33:55',3,3,'提问3','回复3',3),(64,'2021-03-09 15:33:55',4,4,'提问4','回复4',4),(65,'2021-03-09 15:33:55',5,5,'提问5','回复5',5),(66,'2021-03-09 15:33:55',6,6,'提问6','回复6',6),(1615275595443,'2021-03-09 15:39:54',1615275514354,NULL,'‍1111111\r\n','1231313\r\n',0);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/jspm2tm76/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspm2tm76/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspm2tm76/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `discussyouxizhongxin` */

DROP TABLE IF EXISTS `discussyouxizhongxin`;

CREATE TABLE `discussyouxizhongxin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615275560057 DEFAULT CHARSET=utf8 COMMENT='游戏中心评论表';

/*Data for the table `discussyouxizhongxin` */

insert  into `discussyouxizhongxin`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (81,'2021-03-09 15:33:55',1,1,'用户名1','评论内容1','回复内容1'),(82,'2021-03-09 15:33:55',2,2,'用户名2','评论内容2','回复内容2'),(83,'2021-03-09 15:33:55',3,3,'用户名3','评论内容3','回复内容3'),(84,'2021-03-09 15:33:55',4,4,'用户名4','评论内容4','回复内容4'),(85,'2021-03-09 15:33:55',5,5,'用户名5','评论内容5','回复内容5'),(86,'2021-03-09 15:33:55',6,6,'用户名6','评论内容6','回复内容6'),(1615275530219,'2021-03-09 15:38:50',36,1615275514354,NULL,'1111',NULL),(1615275560056,'2021-03-09 15:39:19',31,1615275514354,NULL,'11',NULL);

/*Table structure for table `gongsijianjie` */

DROP TABLE IF EXISTS `gongsijianjie`;

CREATE TABLE `gongsijianjie` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `gongsiwenhua` longtext COMMENT '公司文化',
  `gongsijieshao` longtext COMMENT '公司介绍',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615275733313 DEFAULT CHARSET=utf8 COMMENT='公司简介';

/*Data for the table `gongsijianjie` */

insert  into `gongsijianjie`(`id`,`addtime`,`biaoti`,`tupian`,`gongsiwenhua`,`gongsijieshao`,`lianxifangshi`,`youxiang`) values (21,'2021-03-09 15:33:54','标题1','http://localhost:8080/jspm2tm76/upload/gongsijianjie_tupian1.jpg','公司文化1','公司介绍1','联系方式1','773890001@qq.com'),(22,'2021-03-09 15:33:54','标题2','http://localhost:8080/jspm2tm76/upload/gongsijianjie_tupian2.jpg','公司文化2','公司介绍2','联系方式2','773890002@qq.com'),(23,'2021-03-09 15:33:54','标题3','http://localhost:8080/jspm2tm76/upload/gongsijianjie_tupian3.jpg','公司文化3','公司介绍3','联系方式3','773890003@qq.com'),(24,'2021-03-09 15:33:54','标题4','http://localhost:8080/jspm2tm76/upload/gongsijianjie_tupian4.jpg','公司文化4','公司介绍4','联系方式4','773890004@qq.com'),(25,'2021-03-09 15:33:54','标题5','http://localhost:8080/jspm2tm76/upload/gongsijianjie_tupian5.jpg','公司文化5','公司介绍5','联系方式5','773890005@qq.com'),(26,'2021-03-09 15:33:54','标题6','http://localhost:8080/jspm2tm76/upload/gongsijianjie_tupian6.jpg','公司文化6','公司介绍6','联系方式6','773890006@qq.com'),(1615275733312,'2021-03-09 15:42:12','12','http://localhost:8080/jspm2tm76/upload/1615275727018.jpg','221','<img src=\"http://localhost:8080/jspm2tm76/upload/1615275745305.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspm2tm76/upload/1615275745305.jpg\">212\r\n','12','');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615275872466 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1615275557048,'2021-03-09 15:39:16',1615275514354,31,'youxizhongxin','游戏名称1','http://localhost:8080/jspm2tm76/upload/youxizhongxin_youxihaibao1.jpg'),(1615275872465,'2021-03-09 15:44:31',1615275514354,31,'youxizhongxin','游戏名称1','http://localhost:8080/jspm2tm76/upload/youxizhongxin_youxihaibao1.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1615275514354,'11','yonghu','用户','7k3b43niei8yuzmij4acge798lqflg5u','2021-03-09 15:38:41','2021-03-09 16:44:30'),(2,1,'abo','users','管理员','i8v6ei4uu4bf6hd56j7n2pw3gwfx87kx','2021-03-09 15:41:14','2021-03-09 16:41:15'),(3,1615275693529,'22','yonghu','用户','tad7umr5d86ql62wis92apkzukss7pyz','2021-03-09 15:44:44','2021-03-09 16:44:44');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-03-09 15:33:55');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `beizhu` longtext COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615275693530 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`zhaopian`,`beizhu`) values (11,'2021-03-09 15:33:54','用户1','123456','姓名1','男','13823888881','773890001@qq.com','http://localhost:8080/jspm2tm76/upload/yonghu_zhaopian1.jpg','备注1'),(12,'2021-03-09 15:33:54','用户2','123456','姓名2','男','13823888882','773890002@qq.com','http://localhost:8080/jspm2tm76/upload/yonghu_zhaopian2.jpg','备注2'),(13,'2021-03-09 15:33:54','用户3','123456','姓名3','男','13823888883','773890003@qq.com','http://localhost:8080/jspm2tm76/upload/yonghu_zhaopian3.jpg','备注3'),(14,'2021-03-09 15:33:54','用户4','123456','姓名4','男','13823888884','773890004@qq.com','http://localhost:8080/jspm2tm76/upload/yonghu_zhaopian4.jpg','备注4'),(15,'2021-03-09 15:33:54','用户5','123456','姓名5','男','13823888885','773890005@qq.com','http://localhost:8080/jspm2tm76/upload/yonghu_zhaopian5.jpg','备注5'),(16,'2021-03-09 15:33:54','用户6','123456','姓名6','男','13823888886','773890006@qq.com','http://localhost:8080/jspm2tm76/upload/yonghu_zhaopian6.jpg','备注6'),(1615275514354,'2021-03-09 15:38:34','11','11','11','男','','','http://localhost:8080/jspm2tm76/upload/1615275580987.jpg',''),(1615275693529,'2021-03-09 15:41:33','22','22','22','男','','','http://localhost:8080/jspm2tm76/upload/1615275692325.jpg','');

/*Table structure for table `youxileixing` */

DROP TABLE IF EXISTS `youxileixing`;

CREATE TABLE `youxileixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `youxileixing` varchar(200) DEFAULT NULL COMMENT '游戏类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `youxileixing` (`youxileixing`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='游戏类型';

/*Data for the table `youxileixing` */

insert  into `youxileixing`(`id`,`addtime`,`youxileixing`) values (41,'2021-03-09 15:33:54','游戏类型1'),(42,'2021-03-09 15:33:54','游戏类型2'),(43,'2021-03-09 15:33:54','游戏类型3'),(44,'2021-03-09 15:33:54','游戏类型4'),(45,'2021-03-09 15:33:54','游戏类型5'),(46,'2021-03-09 15:33:54','游戏类型6');

/*Table structure for table `youxizhongxin` */

DROP TABLE IF EXISTS `youxizhongxin`;

CREATE TABLE `youxizhongxin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `youximingcheng` varchar(200) DEFAULT NULL COMMENT '游戏名称',
  `youxileixing` varchar(200) DEFAULT NULL COMMENT '游戏类型',
  `youxigongsi` varchar(200) DEFAULT NULL COMMENT '游戏公司',
  `youxihaibao` varchar(200) DEFAULT NULL COMMENT '游戏海报',
  `youxixiazai` varchar(200) DEFAULT NULL COMMENT '游戏下载',
  `youxijianjie` longtext COMMENT '游戏简介',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615275781738 DEFAULT CHARSET=utf8 COMMENT='游戏中心';

/*Data for the table `youxizhongxin` */

insert  into `youxizhongxin`(`id`,`addtime`,`youximingcheng`,`youxileixing`,`youxigongsi`,`youxihaibao`,`youxixiazai`,`youxijianjie`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (31,'2021-03-09 15:33:54','游戏名称1','游戏类型1','游戏公司1','http://localhost:8080/jspm2tm76/upload/youxizhongxin_youxihaibao1.jpg','','游戏简介1',2,2,'2021-03-09 15:44:31',8),(32,'2021-03-09 15:33:54','游戏名称2','游戏类型2','游戏公司2','http://localhost:8080/jspm2tm76/upload/youxizhongxin_youxihaibao2.jpg','','游戏简介2',2,2,'2021-03-09 15:33:54',2),(33,'2021-03-09 15:33:54','游戏名称3','游戏类型3','游戏公司3','http://localhost:8080/jspm2tm76/upload/youxizhongxin_youxihaibao3.jpg','','游戏简介3',3,3,'2021-03-09 15:33:54',3),(34,'2021-03-09 15:33:54','游戏名称4','游戏类型4','游戏公司4','http://localhost:8080/jspm2tm76/upload/youxizhongxin_youxihaibao4.jpg','','游戏简介4',4,4,'2021-03-09 15:33:54',4),(35,'2021-03-09 15:33:54','游戏名称5','游戏类型5','游戏公司5','http://localhost:8080/jspm2tm76/upload/youxizhongxin_youxihaibao5.jpg','','游戏简介5',5,5,'2021-03-09 15:33:54',5),(36,'2021-03-09 15:33:54','游戏名称6','游戏类型6','游戏公司6','http://localhost:8080/jspm2tm76/upload/youxizhongxin_youxihaibao6.jpg','','游戏简介6',6,6,'2021-03-09 15:38:53',9),(1615275781737,'2021-03-09 15:43:01','22','游戏类型1','222','http://localhost:8080/jspm2tm76/upload/1615275774861.jpg','http://localhost:8080/jspm2tm76/file/download?fileName=1615275777747.mp4','<img src=\"http://localhost:8080/jspm2tm76/upload/1615275791694.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspm2tm76/upload/1615275791694.jpg\">212\r\n',0,0,'2021-03-09 15:43:19',4);

/*Table structure for table `zhaopinxinxi` */

DROP TABLE IF EXISTS `zhaopinxinxi`;

CREATE TABLE `zhaopinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhaopinbianhao` varchar(200) DEFAULT NULL COMMENT '招聘编号',
  `gongsimingcheng` varchar(200) DEFAULT NULL COMMENT '公司名称',
  `zhaopingangwei` varchar(200) DEFAULT NULL COMMENT '招聘岗位',
  `zhaopinrenshu` varchar(200) DEFAULT NULL COMMENT '招聘人数',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zhiweiyaoqiu` longtext COMMENT '职位要求',
  `gongzidaiyu` longtext COMMENT '工资待遇',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhaopinbianhao` (`zhaopinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615275833564 DEFAULT CHARSET=utf8 COMMENT='招聘信息';

/*Data for the table `zhaopinxinxi` */

insert  into `zhaopinxinxi`(`id`,`addtime`,`zhaopinbianhao`,`gongsimingcheng`,`zhaopingangwei`,`zhaopinrenshu`,`lianxifangshi`,`youxiang`,`tupian`,`zhiweiyaoqiu`,`gongzidaiyu`) values (51,'2021-03-09 15:33:55','招聘编号1','公司名称1','招聘岗位1','招聘人数1','联系方式1','邮箱1','http://localhost:8080/jspm2tm76/upload/zhaopinxinxi_tupian1.jpg','职位要求1','工资待遇1'),(52,'2021-03-09 15:33:55','招聘编号2','公司名称2','招聘岗位2','招聘人数2','联系方式2','邮箱2','http://localhost:8080/jspm2tm76/upload/zhaopinxinxi_tupian2.jpg','职位要求2','工资待遇2'),(53,'2021-03-09 15:33:55','招聘编号3','公司名称3','招聘岗位3','招聘人数3','联系方式3','邮箱3','http://localhost:8080/jspm2tm76/upload/zhaopinxinxi_tupian3.jpg','职位要求3','工资待遇3'),(54,'2021-03-09 15:33:55','招聘编号4','公司名称4','招聘岗位4','招聘人数4','联系方式4','邮箱4','http://localhost:8080/jspm2tm76/upload/zhaopinxinxi_tupian4.jpg','职位要求4','工资待遇4'),(55,'2021-03-09 15:33:55','招聘编号5','公司名称5','招聘岗位5','招聘人数5','联系方式5','邮箱5','http://localhost:8080/jspm2tm76/upload/zhaopinxinxi_tupian5.jpg','职位要求5','工资待遇5'),(56,'2021-03-09 15:33:55','招聘编号6','公司名称6','招聘岗位6','招聘人数6','联系方式6','邮箱6','http://localhost:8080/jspm2tm76/upload/zhaopinxinxi_tupian6.jpg','职位要求6','工资待遇6'),(1615275833563,'2021-03-09 15:43:53','1615275823','12','121','313','1231','313','http://localhost:8080/jspm2tm76/upload/1615275830450.jpg','123\r\n','1313\r\n');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
