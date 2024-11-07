-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springboot35806
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Current Database: `springboot35806`
--

/*!40000 DROP DATABASE IF EXISTS `springboot35806`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `springboot35806` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `springboot35806`;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feiyongxinxi`
--

DROP TABLE IF EXISTS `feiyongxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feiyongxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanhao` varchar(200) DEFAULT NULL COMMENT '订单号',
  `jiaofeileixing` varchar(200) DEFAULT NULL COMMENT '缴费类型',
  `feiyong` varchar(200) DEFAULT NULL COMMENT '费用',
  `laorenbianhao` varchar(200) DEFAULT NULL COMMENT '老人编号',
  `laorenxingming` varchar(200) DEFAULT NULL COMMENT '老人姓名',
  `jiashuxingming` varchar(200) DEFAULT NULL COMMENT '家属姓名',
  `dengjishijian` datetime DEFAULT NULL COMMENT '登记时间',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanhao` (`dingdanhao`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8 COMMENT='费用信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feiyongxinxi`
--

LOCK TABLES `feiyongxinxi` WRITE;
/*!40000 ALTER TABLE `feiyongxinxi` DISABLE KEYS */;
INSERT INTO `feiyongxinxi` VALUES (81,'2023-05-13 04:25:22','1111111111','缴费类型1','费用1','老人编号1','老人姓名1','家属姓名1','2023-05-13 12:25:22','未支付'),(82,'2023-05-13 04:25:22','2222222222','缴费类型2','费用2','老人编号2','老人姓名2','家属姓名2','2023-05-13 12:25:22','未支付'),(83,'2023-05-13 04:25:22','3333333333','缴费类型3','费用3','老人编号3','老人姓名3','家属姓名3','2023-05-13 12:25:22','未支付'),(84,'2023-05-13 04:25:22','4444444444','缴费类型4','费用4','老人编号4','老人姓名4','家属姓名4','2023-05-13 12:25:22','未支付'),(85,'2023-05-13 04:25:22','5555555555','缴费类型5','费用5','老人编号5','老人姓名5','家属姓名5','2023-05-13 12:25:22','未支付'),(86,'2023-05-13 04:25:22','6666666666','缴费类型6','费用6','老人编号6','老人姓名6','家属姓名6','2023-05-13 12:25:22','未支付'),(87,'2023-05-13 04:25:22','7777777777','缴费类型7','费用7','老人编号7','老人姓名7','家属姓名7','2023-05-13 12:25:22','未支付'),(88,'2023-05-13 04:25:22','8888888888','缴费类型8','费用8','老人编号8','老人姓名8','家属姓名8','2023-05-13 12:25:22','未支付');
/*!40000 ALTER TABLE `feiyongxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fuwugongdan`
--

DROP TABLE IF EXISTS `fuwugongdan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fuwugongdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fuwuxiangmu` varchar(200) DEFAULT NULL COMMENT '服务项目',
  `yihugonghao` varchar(200) DEFAULT NULL COMMENT '医护工号',
  `yihuxingming` varchar(200) DEFAULT NULL COMMENT '医护姓名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `laorenbianhao` varchar(200) DEFAULT NULL COMMENT '老人编号',
  `laorenxingming` varchar(200) DEFAULT NULL COMMENT '老人姓名',
  `shoujihao` varchar(200) DEFAULT NULL COMMENT '手机号',
  `shijianduan` varchar(200) DEFAULT NULL COMMENT '时间段',
  `fuwuyaoqiu` longtext COMMENT '服务要求',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COMMENT='服务工单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fuwugongdan`
--

LOCK TABLES `fuwugongdan` WRITE;
/*!40000 ALTER TABLE `fuwugongdan` DISABLE KEYS */;
INSERT INTO `fuwugongdan` VALUES (51,'2023-05-13 04:25:22','服务项目1','医护工号1','医护姓名1','13823888881','老人编号1','老人姓名1','13823888881','时间段1','服务要求1'),(52,'2023-05-13 04:25:22','服务项目2','医护工号2','医护姓名2','13823888882','老人编号2','老人姓名2','13823888882','时间段2','服务要求2'),(53,'2023-05-13 04:25:22','服务项目3','医护工号3','医护姓名3','13823888883','老人编号3','老人姓名3','13823888883','时间段3','服务要求3'),(54,'2023-05-13 04:25:22','服务项目4','医护工号4','医护姓名4','13823888884','老人编号4','老人姓名4','13823888884','时间段4','服务要求4'),(55,'2023-05-13 04:25:22','服务项目5','医护工号5','医护姓名5','13823888885','老人编号5','老人姓名5','13823888885','时间段5','服务要求5'),(56,'2023-05-13 04:25:22','服务项目6','医护工号6','医护姓名6','13823888886','老人编号6','老人姓名6','13823888886','时间段6','服务要求6'),(57,'2023-05-13 04:25:22','服务项目7','医护工号7','医护姓名7','13823888887','老人编号7','老人姓名7','13823888887','时间段7','服务要求7'),(58,'2023-05-13 04:25:22','服务项目8','医护工号8','医护姓名8','13823888888','老人编号8','老人姓名8','13823888888','时间段8','服务要求8');
/*!40000 ALTER TABLE `fuwugongdan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hulifengxian`
--

DROP TABLE IF EXISTS `hulifengxian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hulifengxian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `laorenbianhao` varchar(200) DEFAULT NULL COMMENT '老人编号',
  `laorenxingming` varchar(200) DEFAULT NULL COMMENT '老人姓名',
  `laorenxingbie` varchar(200) DEFAULT NULL COMMENT '老人性别',
  `laorennianling` int(11) DEFAULT NULL COMMENT '老人年龄',
  `fangjianhao` varchar(200) DEFAULT NULL COMMENT '房间号',
  `chuangweihao` varchar(200) DEFAULT NULL COMMENT '床位号',
  `tiwen` varchar(200) DEFAULT NULL COMMENT '体温',
  `yihugonghao` varchar(200) DEFAULT NULL COMMENT '医护工号',
  `yihuxingming` varchar(200) DEFAULT NULL COMMENT '医护姓名',
  `jiankangzhuangkuang` varchar(200) DEFAULT NULL COMMENT '健康状况',
  `hulifengxian` longtext COMMENT '护理风险',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8 COMMENT='护理风险';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hulifengxian`
--

LOCK TABLES `hulifengxian` WRITE;
/*!40000 ALTER TABLE `hulifengxian` DISABLE KEYS */;
INSERT INTO `hulifengxian` VALUES (91,'2023-05-13 04:25:22','老人编号1','老人姓名1','老人性别1',1,'房间号1','床位号1','体温1','医护工号1','医护姓名1','良好','护理风险1'),(92,'2023-05-13 04:25:22','老人编号2','老人姓名2','老人性别2',2,'房间号2','床位号2','体温2','医护工号2','医护姓名2','良好','护理风险2'),(93,'2023-05-13 04:25:22','老人编号3','老人姓名3','老人性别3',3,'房间号3','床位号3','体温3','医护工号3','医护姓名3','良好','护理风险3'),(94,'2023-05-13 04:25:22','老人编号4','老人姓名4','老人性别4',4,'房间号4','床位号4','体温4','医护工号4','医护姓名4','良好','护理风险4'),(95,'2023-05-13 04:25:22','老人编号5','老人姓名5','老人性别5',5,'房间号5','床位号5','体温5','医护工号5','医护姓名5','良好','护理风险5'),(96,'2023-05-13 04:25:22','老人编号6','老人姓名6','老人性别6',6,'房间号6','床位号6','体温6','医护工号6','医护姓名6','良好','护理风险6'),(97,'2023-05-13 04:25:22','老人编号7','老人姓名7','老人性别7',7,'房间号7','床位号7','体温7','医护工号7','医护姓名7','良好','护理风险7'),(98,'2023-05-13 04:25:22','老人编号8','老人姓名8','老人性别8',8,'房间号8','床位号8','体温8','医护工号8','医护姓名8','良好','护理风险8');
/*!40000 ALTER TABLE `hulifengxian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hulijilu`
--

DROP TABLE IF EXISTS `hulijilu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hulijilu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `laorenbianhao` varchar(200) DEFAULT NULL COMMENT '老人编号',
  `laorenxingming` varchar(200) DEFAULT NULL COMMENT '老人姓名',
  `laorenxingbie` varchar(200) DEFAULT NULL COMMENT '老人性别',
  `laorennianling` int(11) DEFAULT NULL COMMENT '老人年龄',
  `fangjianhao` varchar(200) DEFAULT NULL COMMENT '房间号',
  `chuangweihao` varchar(200) DEFAULT NULL COMMENT '床位号',
  `xueya` varchar(200) DEFAULT NULL COMMENT '血压',
  `xinlv` varchar(200) DEFAULT NULL COMMENT '心率',
  `tiwen` varchar(200) DEFAULT NULL COMMENT '体温',
  `shangcesuocishu` varchar(200) DEFAULT NULL COMMENT '上厕所次数',
  `chuangdangenghuanshijian` datetime DEFAULT NULL COMMENT '床单更换时间',
  `jiankangzhuangkuang` varchar(200) DEFAULT NULL COMMENT '健康状况',
  `yihugonghao` varchar(200) DEFAULT NULL COMMENT '医护工号',
  `yihuxingming` varchar(200) DEFAULT NULL COMMENT '医护姓名',
  `yihudengji` varchar(200) DEFAULT NULL COMMENT '医护等级',
  `dengjishijian` datetime DEFAULT NULL COMMENT '等级时间',
  `huliqingkuang` longtext COMMENT '护理情况',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COMMENT='护理记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hulijilu`
--

LOCK TABLES `hulijilu` WRITE;
/*!40000 ALTER TABLE `hulijilu` DISABLE KEYS */;
INSERT INTO `hulijilu` VALUES (71,'2023-05-13 04:25:22','老人编号1','老人姓名1','老人性别1',1,'房间号1','床位号1','血压1','心率1','体温1','上厕所次数1','2023-05-13 12:25:22','良好','医护工号1','医护姓名1','医护等级1','2023-05-13 12:25:22','护理情况1'),(72,'2023-05-13 04:25:22','老人编号2','老人姓名2','老人性别2',2,'房间号2','床位号2','血压2','心率2','体温2','上厕所次数2','2023-05-13 12:25:22','良好','医护工号2','医护姓名2','医护等级2','2023-05-13 12:25:22','护理情况2'),(73,'2023-05-13 04:25:22','老人编号3','老人姓名3','老人性别3',3,'房间号3','床位号3','血压3','心率3','体温3','上厕所次数3','2023-05-13 12:25:22','良好','医护工号3','医护姓名3','医护等级3','2023-05-13 12:25:22','护理情况3'),(74,'2023-05-13 04:25:22','老人编号4','老人姓名4','老人性别4',4,'房间号4','床位号4','血压4','心率4','体温4','上厕所次数4','2023-05-13 12:25:22','良好','医护工号4','医护姓名4','医护等级4','2023-05-13 12:25:22','护理情况4'),(75,'2023-05-13 04:25:22','老人编号5','老人姓名5','老人性别5',5,'房间号5','床位号5','血压5','心率5','体温5','上厕所次数5','2023-05-13 12:25:22','良好','医护工号5','医护姓名5','医护等级5','2023-05-13 12:25:22','护理情况5'),(76,'2023-05-13 04:25:22','老人编号6','老人姓名6','老人性别6',6,'房间号6','床位号6','血压6','心率6','体温6','上厕所次数6','2023-05-13 12:25:22','良好','医护工号6','医护姓名6','医护等级6','2023-05-13 12:25:22','护理情况6'),(77,'2023-05-13 04:25:22','老人编号7','老人姓名7','老人性别7',7,'房间号7','床位号7','血压7','心率7','体温7','上厕所次数7','2023-05-13 12:25:22','良好','医护工号7','医护姓名7','医护等级7','2023-05-13 12:25:22','护理情况7'),(78,'2023-05-13 04:25:22','老人编号8','老人姓名8','老人性别8',8,'房间号8','床位号8','血压8','心率8','体温8','上厕所次数8','2023-05-13 12:25:22','良好','医护工号8','医护姓名8','医护等级8','2023-05-13 12:25:22','护理情况8');
/*!40000 ALTER TABLE `hulijilu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huodongxinxi`
--

DROP TABLE IF EXISTS `huodongxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huodongxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huodongmingcheng` varchar(200) NOT NULL COMMENT '活动名称',
  `jubanshijian` date DEFAULT NULL COMMENT '举办时间',
  `huodongdidian` varchar(200) DEFAULT NULL COMMENT '活动地点',
  `huodongrenshu` varchar(200) DEFAULT NULL COMMENT '活动人数',
  `huodongneirong` longtext COMMENT '活动内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=199 DEFAULT CHARSET=utf8 COMMENT='活动信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huodongxinxi`
--

LOCK TABLES `huodongxinxi` WRITE;
/*!40000 ALTER TABLE `huodongxinxi` DISABLE KEYS */;
INSERT INTO `huodongxinxi` VALUES (191,'2023-05-13 04:25:22','活动名称1','2023-05-13','活动地点1','活动人数1','活动内容1'),(192,'2023-05-13 04:25:22','活动名称2','2023-05-13','活动地点2','活动人数2','活动内容2'),(193,'2023-05-13 04:25:22','活动名称3','2023-05-13','活动地点3','活动人数3','活动内容3'),(194,'2023-05-13 04:25:22','活动名称4','2023-05-13','活动地点4','活动人数4','活动内容4'),(195,'2023-05-13 04:25:22','活动名称5','2023-05-13','活动地点5','活动人数5','活动内容5'),(196,'2023-05-13 04:25:22','活动名称6','2023-05-13','活动地点6','活动人数6','活动内容6'),(197,'2023-05-13 04:25:22','活动名称7','2023-05-13','活动地点7','活动人数7','活动内容7'),(198,'2023-05-13 04:25:22','活动名称8','2023-05-13','活动地点8','活动人数8','活动内容8');
/*!40000 ALTER TABLE `huodongxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiankangdangan`
--

DROP TABLE IF EXISTS `jiankangdangan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiankangdangan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `danganbianhao` varchar(200) DEFAULT NULL COMMENT '档案编号',
  `laorenbianhao` varchar(200) DEFAULT NULL COMMENT '老人编号',
  `laorenxingming` varchar(200) DEFAULT NULL COMMENT '老人姓名',
  `laorenxingbie` varchar(200) DEFAULT NULL COMMENT '老人性别',
  `laorennianling` varchar(200) DEFAULT NULL COMMENT '老人年龄',
  `shentiqingkuang` longtext COMMENT '身体情况',
  `jiazuyichuanshi` longtext COMMENT '家族遗传史',
  `shenghuojinji` longtext COMMENT '生活禁忌',
  `yaowuguominshi` longtext COMMENT '药物过敏史',
  `gengxinshijian` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `danganbianhao` (`danganbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COMMENT='健康档案';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiankangdangan`
--

LOCK TABLES `jiankangdangan` WRITE;
/*!40000 ALTER TABLE `jiankangdangan` DISABLE KEYS */;
INSERT INTO `jiankangdangan` VALUES (61,'2023-05-13 04:25:22','1111111111','老人编号1','老人姓名1','老人性别1','老人年龄1','身体情况1','家族遗传史1','生活禁忌1','药物过敏史1','2023-05-13 12:25:22'),(62,'2023-05-13 04:25:22','2222222222','老人编号2','老人姓名2','老人性别2','老人年龄2','身体情况2','家族遗传史2','生活禁忌2','药物过敏史2','2023-05-13 12:25:22'),(63,'2023-05-13 04:25:22','3333333333','老人编号3','老人姓名3','老人性别3','老人年龄3','身体情况3','家族遗传史3','生活禁忌3','药物过敏史3','2023-05-13 12:25:22'),(64,'2023-05-13 04:25:22','4444444444','老人编号4','老人姓名4','老人性别4','老人年龄4','身体情况4','家族遗传史4','生活禁忌4','药物过敏史4','2023-05-13 12:25:22'),(65,'2023-05-13 04:25:22','5555555555','老人编号5','老人姓名5','老人性别5','老人年龄5','身体情况5','家族遗传史5','生活禁忌5','药物过敏史5','2023-05-13 12:25:22'),(66,'2023-05-13 04:25:22','6666666666','老人编号6','老人姓名6','老人性别6','老人年龄6','身体情况6','家族遗传史6','生活禁忌6','药物过敏史6','2023-05-13 12:25:22'),(67,'2023-05-13 04:25:22','7777777777','老人编号7','老人姓名7','老人性别7','老人年龄7','身体情况7','家族遗传史7','生活禁忌7','药物过敏史7','2023-05-13 12:25:22'),(68,'2023-05-13 04:25:22','8888888888','老人编号8','老人姓名8','老人性别8','老人年龄8','身体情况8','家族遗传史8','生活禁忌8','药物过敏史8','2023-05-13 12:25:22');
/*!40000 ALTER TABLE `jiankangdangan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiashutanwang`
--

DROP TABLE IF EXISTS `jiashutanwang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiashutanwang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `laorenbianhao` varchar(200) DEFAULT NULL COMMENT '老人编号',
  `laorenxingming` varchar(200) DEFAULT NULL COMMENT '老人姓名',
  `jiashuxingming` varchar(200) DEFAULT NULL COMMENT '家属姓名',
  `shoujihao` varchar(200) DEFAULT NULL COMMENT '手机号',
  `jiankangma` longtext COMMENT '健康码',
  `xingchengma` longtext COMMENT '行程码',
  `hesuanjiancejieguo` varchar(200) DEFAULT NULL COMMENT '核酸检测结果',
  `tanwangshijian` date DEFAULT NULL COMMENT '探望时间',
  `beizhu` longtext COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=179 DEFAULT CHARSET=utf8 COMMENT='家属探望';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiashutanwang`
--

LOCK TABLES `jiashutanwang` WRITE;
/*!40000 ALTER TABLE `jiashutanwang` DISABLE KEYS */;
INSERT INTO `jiashutanwang` VALUES (171,'2023-05-13 04:25:22','老人编号1','老人姓名1','家属姓名1','手机号1','upload/jiashutanwang_jiankangma1.jpg,upload/jiashutanwang_jiankangma2.jpg,upload/jiashutanwang_jiankangma3.jpg','upload/jiashutanwang_xingchengma1.jpg,upload/jiashutanwang_xingchengma2.jpg,upload/jiashutanwang_xingchengma3.jpg','阴性','2023-05-13','备注1'),(172,'2023-05-13 04:25:22','老人编号2','老人姓名2','家属姓名2','手机号2','upload/jiashutanwang_jiankangma2.jpg,upload/jiashutanwang_jiankangma3.jpg,upload/jiashutanwang_jiankangma4.jpg','upload/jiashutanwang_xingchengma2.jpg,upload/jiashutanwang_xingchengma3.jpg,upload/jiashutanwang_xingchengma4.jpg','阴性','2023-05-13','备注2'),(173,'2023-05-13 04:25:22','老人编号3','老人姓名3','家属姓名3','手机号3','upload/jiashutanwang_jiankangma3.jpg,upload/jiashutanwang_jiankangma4.jpg,upload/jiashutanwang_jiankangma5.jpg','upload/jiashutanwang_xingchengma3.jpg,upload/jiashutanwang_xingchengma4.jpg,upload/jiashutanwang_xingchengma5.jpg','阴性','2023-05-13','备注3'),(174,'2023-05-13 04:25:22','老人编号4','老人姓名4','家属姓名4','手机号4','upload/jiashutanwang_jiankangma4.jpg,upload/jiashutanwang_jiankangma5.jpg,upload/jiashutanwang_jiankangma6.jpg','upload/jiashutanwang_xingchengma4.jpg,upload/jiashutanwang_xingchengma5.jpg,upload/jiashutanwang_xingchengma6.jpg','阴性','2023-05-13','备注4'),(175,'2023-05-13 04:25:22','老人编号5','老人姓名5','家属姓名5','手机号5','upload/jiashutanwang_jiankangma5.jpg,upload/jiashutanwang_jiankangma6.jpg,upload/jiashutanwang_jiankangma7.jpg','upload/jiashutanwang_xingchengma5.jpg,upload/jiashutanwang_xingchengma6.jpg,upload/jiashutanwang_xingchengma7.jpg','阴性','2023-05-13','备注5'),(176,'2023-05-13 04:25:22','老人编号6','老人姓名6','家属姓名6','手机号6','upload/jiashutanwang_jiankangma6.jpg,upload/jiashutanwang_jiankangma7.jpg,upload/jiashutanwang_jiankangma8.jpg','upload/jiashutanwang_xingchengma6.jpg,upload/jiashutanwang_xingchengma7.jpg,upload/jiashutanwang_xingchengma8.jpg','阴性','2023-05-13','备注6'),(177,'2023-05-13 04:25:22','老人编号7','老人姓名7','家属姓名7','手机号7','upload/jiashutanwang_jiankangma7.jpg,upload/jiashutanwang_jiankangma8.jpg,upload/jiashutanwang_jiankangma9.jpg','upload/jiashutanwang_xingchengma7.jpg,upload/jiashutanwang_xingchengma8.jpg,upload/jiashutanwang_xingchengma9.jpg','阴性','2023-05-13','备注7'),(178,'2023-05-13 04:25:22','老人编号8','老人姓名8','家属姓名8','手机号8','upload/jiashutanwang_jiankangma8.jpg,upload/jiashutanwang_jiankangma9.jpg,upload/jiashutanwang_jiankangma10.jpg','upload/jiashutanwang_xingchengma8.jpg,upload/jiashutanwang_xingchengma9.jpg,upload/jiashutanwang_xingchengma10.jpg','阴性','2023-05-13','备注8');
/*!40000 ALTER TABLE `jiashutanwang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laifangdengji`
--

DROP TABLE IF EXISTS `laifangdengji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `laifangdengji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `laifangfenlei` varchar(200) DEFAULT NULL COMMENT '来访分类',
  `laifangshijian` date DEFAULT NULL COMMENT '来访时间',
  `laifangguocheng` longtext COMMENT '来访过程',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8 COMMENT='来访登记';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laifangdengji`
--

LOCK TABLES `laifangdengji` WRITE;
/*!40000 ALTER TABLE `laifangdengji` DISABLE KEYS */;
INSERT INTO `laifangdengji` VALUES (161,'2023-05-13 04:25:22','志愿者','2023-05-13','来访过程1'),(162,'2023-05-13 04:25:22','志愿者','2023-05-13','来访过程2'),(163,'2023-05-13 04:25:22','志愿者','2023-05-13','来访过程3'),(164,'2023-05-13 04:25:22','志愿者','2023-05-13','来访过程4'),(165,'2023-05-13 04:25:22','志愿者','2023-05-13','来访过程5'),(166,'2023-05-13 04:25:22','志愿者','2023-05-13','来访过程6'),(167,'2023-05-13 04:25:22','志愿者','2023-05-13','来访过程7'),(168,'2023-05-13 04:25:22','志愿者','2023-05-13','来访过程8');
/*!40000 ALTER TABLE `laifangdengji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laoren`
--

DROP TABLE IF EXISTS `laoren`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `laoren` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `laorenbianhao` varchar(200) DEFAULT NULL COMMENT '老人编号',
  `laorenxingming` varchar(200) NOT NULL COMMENT '老人姓名',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `laorenxingbie` varchar(200) DEFAULT NULL COMMENT '老人性别',
  `laorennianling` varchar(200) DEFAULT NULL COMMENT '老人年龄',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `jiashuxingming` varchar(200) DEFAULT NULL COMMENT '家属姓名',
  `guanxi` varchar(200) DEFAULT NULL COMMENT '关系',
  `shoujihao` varchar(200) DEFAULT NULL COMMENT '手机号',
  `jiatingzhuzhi` varchar(200) DEFAULT NULL COMMENT '家庭住址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `laorenbianhao` (`laorenbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='老人';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laoren`
--

LOCK TABLES `laoren` WRITE;
/*!40000 ALTER TABLE `laoren` DISABLE KEYS */;
INSERT INTO `laoren` VALUES (31,'2023-05-13 04:25:22','老人编号1','老人姓名1','123456','男','老人年龄1','13823888881','家属姓名1','关系1','手机号1','家庭住址1'),(32,'2023-05-13 04:25:22','老人编号2','老人姓名2','123456','男','老人年龄2','13823888882','家属姓名2','关系2','手机号2','家庭住址2'),(33,'2023-05-13 04:25:22','老人编号3','老人姓名3','123456','男','老人年龄3','13823888883','家属姓名3','关系3','手机号3','家庭住址3'),(34,'2023-05-13 04:25:22','老人编号4','老人姓名4','123456','男','老人年龄4','13823888884','家属姓名4','关系4','手机号4','家庭住址4'),(35,'2023-05-13 04:25:22','老人编号5','老人姓名5','123456','男','老人年龄5','13823888885','家属姓名5','关系5','手机号5','家庭住址5'),(36,'2023-05-13 04:25:22','老人编号6','老人姓名6','123456','男','老人年龄6','13823888886','家属姓名6','关系6','手机号6','家庭住址6'),(37,'2023-05-13 04:25:22','老人编号7','老人姓名7','123456','男','老人年龄7','13823888887','家属姓名7','关系7','手机号7','家庭住址7'),(38,'2023-05-13 04:25:22','老人编号8','老人姓名8','123456','男','老人年龄8','13823888888','家属姓名8','关系8','手机号8','家庭住址8');
/*!40000 ALTER TABLE `laoren` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qingjiashenqing`
--

DROP TABLE IF EXISTS `qingjiashenqing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qingjiashenqing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yihugonghao` varchar(200) DEFAULT NULL COMMENT '医护工号',
  `yihuxingming` varchar(200) DEFAULT NULL COMMENT '医护姓名',
  `qingjialeixing` varchar(200) DEFAULT NULL COMMENT '请假类型',
  `qishishijian` date DEFAULT NULL COMMENT '起始时间',
  `jieshushijian` date DEFAULT NULL COMMENT '结束时间',
  `qingjiashiyou` longtext COMMENT '请假事由',
  `sfsh` varchar(200) DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=189 DEFAULT CHARSET=utf8 COMMENT='请假申请';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qingjiashenqing`
--

LOCK TABLES `qingjiashenqing` WRITE;
/*!40000 ALTER TABLE `qingjiashenqing` DISABLE KEYS */;
INSERT INTO `qingjiashenqing` VALUES (181,'2023-05-13 04:25:22','医护工号1','医护姓名1','事假','2023-05-13','2023-05-13','请假事由1','是',''),(182,'2023-05-13 04:25:22','医护工号2','医护姓名2','事假','2023-05-13','2023-05-13','请假事由2','是',''),(183,'2023-05-13 04:25:22','医护工号3','医护姓名3','事假','2023-05-13','2023-05-13','请假事由3','是',''),(184,'2023-05-13 04:25:22','医护工号4','医护姓名4','事假','2023-05-13','2023-05-13','请假事由4','是',''),(185,'2023-05-13 04:25:22','医护工号5','医护姓名5','事假','2023-05-13','2023-05-13','请假事由5','是',''),(186,'2023-05-13 04:25:22','医护工号6','医护姓名6','事假','2023-05-13','2023-05-13','请假事由6','是',''),(187,'2023-05-13 04:25:22','医护工号7','医护姓名7','事假','2023-05-13','2023-05-13','请假事由7','是',''),(188,'2023-05-13 04:25:22','医护工号8','医护姓名8','事假','2023-05-13','2023-05-13','请假事由8','是','');
/*!40000 ALTER TABLE `qingjiashenqing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shanshixinxi`
--

DROP TABLE IF EXISTS `shanshixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shanshixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `zaocan` varchar(200) DEFAULT NULL COMMENT '早餐',
  `wucan` varchar(200) DEFAULT NULL COMMENT '午餐',
  `wancan` varchar(200) DEFAULT NULL COMMENT '晚餐',
  `dianxin` varchar(200) DEFAULT NULL COMMENT '点心',
  `shuiguo` varchar(200) DEFAULT NULL COMMENT '水果',
  `jiage` varchar(200) DEFAULT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8 COMMENT='膳食信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shanshixinxi`
--

LOCK TABLES `shanshixinxi` WRITE;
/*!40000 ALTER TABLE `shanshixinxi` DISABLE KEYS */;
INSERT INTO `shanshixinxi` VALUES (101,'2023-05-13 04:25:22','标题1','2023-05-13','早餐1','午餐1','晚餐1','点心1','水果1','价格1'),(102,'2023-05-13 04:25:22','标题2','2023-05-13','早餐2','午餐2','晚餐2','点心2','水果2','价格2'),(103,'2023-05-13 04:25:22','标题3','2023-05-13','早餐3','午餐3','晚餐3','点心3','水果3','价格3'),(104,'2023-05-13 04:25:22','标题4','2023-05-13','早餐4','午餐4','晚餐4','点心4','水果4','价格4'),(105,'2023-05-13 04:25:22','标题5','2023-05-13','早餐5','午餐5','晚餐5','点心5','水果5','价格5'),(106,'2023-05-13 04:25:22','标题6','2023-05-13','早餐6','午餐6','晚餐6','点心6','水果6','价格6'),(107,'2023-05-13 04:25:22','标题7','2023-05-13','早餐7','午餐7','晚餐7','点心7','水果7','价格7'),(108,'2023-05-13 04:25:22','标题8','2023-05-13','早餐8','午餐8','晚餐8','点心8','水果8','价格8');
/*!40000 ALTER TABLE `shanshixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sheshixinxi`
--

DROP TABLE IF EXISTS `sheshixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sheshixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `sheshibianhao` varchar(200) DEFAULT NULL COMMENT '设施编号',
  `sheshimingcheng` varchar(200) DEFAULT NULL COMMENT '设施名称',
  `zhuangtai` varchar(200) DEFAULT NULL COMMENT '状态',
  `shiyongnianxian` varchar(200) DEFAULT NULL COMMENT '使用年限',
  `xiangqing` longtext COMMENT '详情',
  PRIMARY KEY (`id`),
  UNIQUE KEY `sheshibianhao` (`sheshibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='设施信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sheshixinxi`
--

LOCK TABLES `sheshixinxi` WRITE;
/*!40000 ALTER TABLE `sheshixinxi` DISABLE KEYS */;
INSERT INTO `sheshixinxi` VALUES (41,'2023-05-13 04:25:22','1111111111','设施名称1','正常','使用年限1','详情1'),(42,'2023-05-13 04:25:22','2222222222','设施名称2','正常','使用年限2','详情2'),(43,'2023-05-13 04:25:22','3333333333','设施名称3','正常','使用年限3','详情3'),(44,'2023-05-13 04:25:22','4444444444','设施名称4','正常','使用年限4','详情4'),(45,'2023-05-13 04:25:22','5555555555','设施名称5','正常','使用年限5','详情5'),(46,'2023-05-13 04:25:22','6666666666','设施名称6','正常','使用年限6','详情6'),(47,'2023-05-13 04:25:22','7777777777','设施名称7','正常','使用年限7','详情7'),(48,'2023-05-13 04:25:22','8888888888','设施名称8','正常','使用年限8','详情8');
/*!40000 ALTER TABLE `sheshixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '商品id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '名称',
  `picture` longtext NOT NULL COMMENT '图片',
  `type` varchar(200) DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩,31:竞拍参与,41:关注)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'admin','users','管理员','2molr15qwyz6g1ru30x0v5jbklvucug8','2023-05-13 04:29:22','2023-05-13 05:29:22'),(2,38,'老人编号8','laoren','老人','f8uf7nm1i0e65mkn5zgxwh8q9yaprcu6','2023-05-13 04:30:59','2023-05-13 05:31:00');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin','管理员','2023-05-13 04:25:23');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wuzichuku`
--

DROP TABLE IF EXISTS `wuzichuku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wuzichuku` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chukubianhao` varchar(200) DEFAULT NULL COMMENT '出库编号',
  `wuzibianhao` varchar(200) DEFAULT NULL COMMENT '物资编号',
  `wuzimingcheng` varchar(200) DEFAULT NULL COMMENT '物资名称',
  `wuzifenlei` varchar(200) DEFAULT NULL COMMENT '物资分类',
  `wuzishuliang` int(11) DEFAULT NULL COMMENT '物资数量',
  `chukushijian` datetime DEFAULT NULL COMMENT '出库时间',
  `beizhu` longtext COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `chukubianhao` (`chukubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8 COMMENT='物资出库';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wuzichuku`
--

LOCK TABLES `wuzichuku` WRITE;
/*!40000 ALTER TABLE `wuzichuku` DISABLE KEYS */;
INSERT INTO `wuzichuku` VALUES (131,'2023-05-13 04:25:22','1111111111','物资编号1','物资名称1','物资分类1',1,'2023-05-13 12:25:22','备注1'),(132,'2023-05-13 04:25:22','2222222222','物资编号2','物资名称2','物资分类2',2,'2023-05-13 12:25:22','备注2'),(133,'2023-05-13 04:25:22','3333333333','物资编号3','物资名称3','物资分类3',3,'2023-05-13 12:25:22','备注3'),(134,'2023-05-13 04:25:22','4444444444','物资编号4','物资名称4','物资分类4',4,'2023-05-13 12:25:22','备注4'),(135,'2023-05-13 04:25:22','5555555555','物资编号5','物资名称5','物资分类5',5,'2023-05-13 12:25:22','备注5'),(136,'2023-05-13 04:25:22','6666666666','物资编号6','物资名称6','物资分类6',6,'2023-05-13 12:25:22','备注6'),(137,'2023-05-13 04:25:22','7777777777','物资编号7','物资名称7','物资分类7',7,'2023-05-13 12:25:22','备注7'),(138,'2023-05-13 04:25:22','8888888888','物资编号8','物资名称8','物资分类8',8,'2023-05-13 12:25:22','备注8');
/*!40000 ALTER TABLE `wuzichuku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wuzifenlei`
--

DROP TABLE IF EXISTS `wuzifenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wuzifenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wuzifenlei` varchar(200) DEFAULT NULL COMMENT '物资分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `wuzifenlei` (`wuzifenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8 COMMENT='物资分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wuzifenlei`
--

LOCK TABLES `wuzifenlei` WRITE;
/*!40000 ALTER TABLE `wuzifenlei` DISABLE KEYS */;
INSERT INTO `wuzifenlei` VALUES (111,'2023-05-13 04:25:22','物资分类1'),(112,'2023-05-13 04:25:22','物资分类2'),(113,'2023-05-13 04:25:22','物资分类3'),(114,'2023-05-13 04:25:22','物资分类4'),(115,'2023-05-13 04:25:22','物资分类5'),(116,'2023-05-13 04:25:22','物资分类6'),(117,'2023-05-13 04:25:22','物资分类7'),(118,'2023-05-13 04:25:22','物资分类8');
/*!40000 ALTER TABLE `wuzifenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wuziruku`
--

DROP TABLE IF EXISTS `wuziruku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wuziruku` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `rukubianhao` varchar(200) DEFAULT NULL COMMENT '入库编号',
  `wuzimingcheng` varchar(200) DEFAULT NULL COMMENT '物资名称',
  `wuzishuliang` int(11) DEFAULT NULL COMMENT '物资数量',
  `rukuriqi` date DEFAULT NULL COMMENT '入库日期',
  `beizhu` longtext COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `rukubianhao` (`rukubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8 COMMENT='物资入库';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wuziruku`
--

LOCK TABLES `wuziruku` WRITE;
/*!40000 ALTER TABLE `wuziruku` DISABLE KEYS */;
INSERT INTO `wuziruku` VALUES (141,'2023-05-13 04:25:22','1111111111','物资名称1',1,'2023-05-13','备注1'),(142,'2023-05-13 04:25:22','2222222222','物资名称2',2,'2023-05-13','备注2'),(143,'2023-05-13 04:25:22','3333333333','物资名称3',3,'2023-05-13','备注3'),(144,'2023-05-13 04:25:22','4444444444','物资名称4',4,'2023-05-13','备注4'),(145,'2023-05-13 04:25:22','5555555555','物资名称5',5,'2023-05-13','备注5'),(146,'2023-05-13 04:25:22','6666666666','物资名称6',6,'2023-05-13','备注6'),(147,'2023-05-13 04:25:22','7777777777','物资名称7',7,'2023-05-13','备注7'),(148,'2023-05-13 04:25:22','8888888888','物资名称8',8,'2023-05-13','备注8');
/*!40000 ALTER TABLE `wuziruku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wuzixinxi`
--

DROP TABLE IF EXISTS `wuzixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wuzixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wuzibianhao` varchar(200) DEFAULT NULL COMMENT '物资编号',
  `wuzimingcheng` varchar(200) DEFAULT NULL COMMENT '物资名称',
  `wuzifenlei` varchar(200) DEFAULT NULL COMMENT '物资分类',
  `wuzishuliang` int(11) DEFAULT NULL COMMENT '物资数量',
  `gongyingshang` varchar(200) DEFAULT NULL COMMENT '供应商',
  `cunfangweizhi` varchar(200) DEFAULT NULL COMMENT '存放位置',
  PRIMARY KEY (`id`),
  UNIQUE KEY `wuzibianhao` (`wuzibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8 COMMENT='物资信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wuzixinxi`
--

LOCK TABLES `wuzixinxi` WRITE;
/*!40000 ALTER TABLE `wuzixinxi` DISABLE KEYS */;
INSERT INTO `wuzixinxi` VALUES (121,'2023-05-13 04:25:22','1111111111','物资名称1','物资分类1',1,'供应商1','存放位置1'),(122,'2023-05-13 04:25:22','2222222222','物资名称2','物资分类2',2,'供应商2','存放位置2'),(123,'2023-05-13 04:25:22','3333333333','物资名称3','物资分类3',3,'供应商3','存放位置3'),(124,'2023-05-13 04:25:22','4444444444','物资名称4','物资分类4',4,'供应商4','存放位置4'),(125,'2023-05-13 04:25:22','5555555555','物资名称5','物资分类5',5,'供应商5','存放位置5'),(126,'2023-05-13 04:25:22','6666666666','物资名称6','物资分类6',6,'供应商6','存放位置6'),(127,'2023-05-13 04:25:22','7777777777','物资名称7','物资分类7',7,'供应商7','存放位置7'),(128,'2023-05-13 04:25:22','8888888888','物资名称8','物资分类8',8,'供应商8','存放位置8');
/*!40000 ALTER TABLE `wuzixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yihudengji`
--

DROP TABLE IF EXISTS `yihudengji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yihudengji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yihudengji` varchar(200) NOT NULL COMMENT '医护等级',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='医护等级';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yihudengji`
--

LOCK TABLES `yihudengji` WRITE;
/*!40000 ALTER TABLE `yihudengji` DISABLE KEYS */;
INSERT INTO `yihudengji` VALUES (11,'2023-05-13 04:25:22','医护等级1'),(12,'2023-05-13 04:25:22','医护等级2'),(13,'2023-05-13 04:25:22','医护等级3'),(14,'2023-05-13 04:25:22','医护等级4'),(15,'2023-05-13 04:25:22','医护等级5'),(16,'2023-05-13 04:25:22','医护等级6'),(17,'2023-05-13 04:25:22','医护等级7'),(18,'2023-05-13 04:25:22','医护等级8');
/*!40000 ALTER TABLE `yihudengji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yihurenyuan`
--

DROP TABLE IF EXISTS `yihurenyuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yihurenyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yihugonghao` varchar(200) NOT NULL COMMENT '医护工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yihuxingming` varchar(200) NOT NULL COMMENT '医护姓名',
  `yihuxingbie` varchar(200) DEFAULT NULL COMMENT '医护性别',
  `yihudengji` varchar(200) DEFAULT NULL COMMENT '医护等级',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yihugonghao` (`yihugonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='医护人员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yihurenyuan`
--

LOCK TABLES `yihurenyuan` WRITE;
/*!40000 ALTER TABLE `yihurenyuan` DISABLE KEYS */;
INSERT INTO `yihurenyuan` VALUES (21,'2023-05-13 04:25:22','医护工号1','123456','医护姓名1','男','医护等级1','13823888881','440300199101010001'),(22,'2023-05-13 04:25:22','医护工号2','123456','医护姓名2','男','医护等级2','13823888882','440300199202020002'),(23,'2023-05-13 04:25:22','医护工号3','123456','医护姓名3','男','医护等级3','13823888883','440300199303030003'),(24,'2023-05-13 04:25:22','医护工号4','123456','医护姓名4','男','医护等级4','13823888884','440300199404040004'),(25,'2023-05-13 04:25:22','医护工号5','123456','医护姓名5','男','医护等级5','13823888885','440300199505050005'),(26,'2023-05-13 04:25:22','医护工号6','123456','医护姓名6','男','医护等级6','13823888886','440300199606060006'),(27,'2023-05-13 04:25:22','医护工号7','123456','医护姓名7','男','医护等级7','13823888887','440300199707070007'),(28,'2023-05-13 04:25:22','医护工号8','123456','医护姓名8','男','医护等级8','13823888888','440300199808080008');
/*!40000 ALTER TABLE `yihurenyuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuangongdangan`
--

DROP TABLE IF EXISTS `yuangongdangan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuangongdangan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yihugonghao` varchar(200) DEFAULT NULL COMMENT '医护工号',
  `yihuxingming` varchar(200) DEFAULT NULL COMMENT '医护姓名',
  `yihuxingbie` varchar(200) DEFAULT NULL COMMENT '医护性别',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `ruzhishijian` datetime DEFAULT NULL COMMENT '入职时间',
  `lizhishijian` datetime DEFAULT NULL COMMENT '离职时间',
  `beizhu` longtext COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8 COMMENT='员工档案';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuangongdangan`
--

LOCK TABLES `yuangongdangan` WRITE;
/*!40000 ALTER TABLE `yuangongdangan` DISABLE KEYS */;
INSERT INTO `yuangongdangan` VALUES (151,'2023-05-13 04:25:22','医护工号1','医护姓名1','医护性别1','职称1','13823888881','2023-05-13 12:25:22','2023-05-13 12:25:22','备注1'),(152,'2023-05-13 04:25:22','医护工号2','医护姓名2','医护性别2','职称2','13823888882','2023-05-13 12:25:22','2023-05-13 12:25:22','备注2'),(153,'2023-05-13 04:25:22','医护工号3','医护姓名3','医护性别3','职称3','13823888883','2023-05-13 12:25:22','2023-05-13 12:25:22','备注3'),(154,'2023-05-13 04:25:22','医护工号4','医护姓名4','医护性别4','职称4','13823888884','2023-05-13 12:25:22','2023-05-13 12:25:22','备注4'),(155,'2023-05-13 04:25:22','医护工号5','医护姓名5','医护性别5','职称5','13823888885','2023-05-13 12:25:22','2023-05-13 12:25:22','备注5'),(156,'2023-05-13 04:25:22','医护工号6','医护姓名6','医护性别6','职称6','13823888886','2023-05-13 12:25:22','2023-05-13 12:25:22','备注6'),(157,'2023-05-13 04:25:22','医护工号7','医护姓名7','医护性别7','职称7','13823888887','2023-05-13 12:25:22','2023-05-13 12:25:22','备注7'),(158,'2023-05-13 04:25:22','医护工号8','医护姓名8','医护性别8','职称8','13823888888','2023-05-13 12:25:22','2023-05-13 12:25:22','备注8');
/*!40000 ALTER TABLE `yuangongdangan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-17  9:26:32
