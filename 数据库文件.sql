/*
Navicat MySQL Data Transfer

Source Server         : hyh
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : technology

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2021-01-21 21:07:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `adminid` int(11) NOT NULL AUTO_INCREMENT,
  `aimg` varchar(100) DEFAULT '21322423.gif',
  `aname` varchar(20) NOT NULL,
  `password` varchar(11) NOT NULL,
  `grade` int(1) NOT NULL,
  PRIMARY KEY (`adminid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10012 DEFAULT CHARSET=gb2312 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('10001', '21322423_admin.gif', '一叶扁舟', '1234', '1');
INSERT INTO `admin` VALUES ('10002', '21322423.gif', '     we2', '23454', '2');
INSERT INTO `admin` VALUES ('10003', '21322423.gif', '海', '3456', '0');
INSERT INTO `admin` VALUES ('10008', '21322423.gif', 'trgrtggr', '12344353', '2');

-- ----------------------------
-- Table structure for classification
-- ----------------------------
DROP TABLE IF EXISTS `classification`;
CREATE TABLE `classification` (
  `classid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(20) NOT NULL,
  `descb` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`classid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1012 DEFAULT CHARSET=gb2312 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of classification
-- ----------------------------
INSERT INTO `classification` VALUES ('1001', '移动终端', '手机、平板...');
INSERT INTO `classification` VALUES ('1002', '配件搭载', '电源适配器、数据线、耳机等');
INSERT INTO `classification` VALUES ('1004', '智能家居', null);
INSERT INTO `classification` VALUES ('1005', '时尚绝版服装', null);
INSERT INTO `classification` VALUES ('1006', '教育办公', null);

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `commentid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `uname` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pname` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descb` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `commentdate` date NOT NULL,
  PRIMARY KEY (`commentid`) USING BTREE,
  KEY `pc` (`pid`) USING BTREE,
  KEY `uc` (`uid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of comment
-- ----------------------------

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `logid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `adminid` int(11) DEFAULT '0',
  `descb` varchar(500) DEFAULT NULL,
  `bytime` datetime NOT NULL,
  PRIMARY KEY (`logid`) USING BTREE,
  KEY `FK_uid_2` (`uid`) USING BTREE,
  KEY `FK_adminid` (`adminid`) USING BTREE,
  CONSTRAINT `FK_adminid` FOREIGN KEY (`adminid`) REFERENCES `admin` (`adminid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_uid_2` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=957 DEFAULT CHARSET=gb2312 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES ('745', '10010', null, '您一键删除了所有日志记录', '2019-10-27 00:28:01');
INSERT INTO `log` VALUES ('746', '10010', null, '您在【2019年10月27日 00:43:54】登录了本商城', '2019-10-27 00:43:54');
INSERT INTO `log` VALUES ('747', '10010', null, '您浏览了【移动终端】分类下的【bf出v】', '2019-10-27 00:47:36');
INSERT INTO `log` VALUES ('748', '10010', null, '您在【2019年10月27日 15:24:48】登录了本商城', '2019-10-27 15:24:48');
INSERT INTO `log` VALUES ('749', '10010', null, '您浏览了【移动终端】分类下的【bf出v】', '2019-10-27 15:32:30');
INSERT INTO `log` VALUES ('750', '10010', null, '您浏览了【移动终端】分类下的【Moon 3D移动影院 曜石黑】', '2019-10-27 15:32:39');
INSERT INTO `log` VALUES ('751', '10010', null, '您添加了一款名为【Moon 3D移动影院 曜石黑】的商品到购物车', '2019-10-27 15:32:45');
INSERT INTO `log` VALUES ('752', '10010', null, '您在购物车删除了购物ID为【40】的商品', '2019-10-27 15:32:51');
INSERT INTO `log` VALUES ('753', '10010', null, '您浏览了【移动终端】分类下的【Moon 3D移动影院 曜石黑】', '2019-10-27 15:32:54');
INSERT INTO `log` VALUES ('754', '10010', null, '您添加了一款名为【Moon 3D移动影院 曜石黑】的商品到购物车', '2019-10-27 15:32:57');
INSERT INTO `log` VALUES ('755', '10010', null, '您添加了一款名为【Moon 3D移动影院 曜石黑】的商品到购物车', '2019-10-27 15:35:28');
INSERT INTO `log` VALUES ('756', '10010', null, '您添加了一款名为【Moon 3D移动影院 曜石黑】的商品到购物车', '2019-10-27 15:35:31');
INSERT INTO `log` VALUES ('757', '10010', null, '您在购物车删除了购物ID为【43】的商品', '2019-10-27 15:35:53');
INSERT INTO `log` VALUES ('758', '10010', null, '您在购物车删除了购物ID为【42】的商品', '2019-10-27 15:35:57');
INSERT INTO `log` VALUES ('759', '10010', null, '您在购物车删除了购物ID为【42】的商品', '2019-10-27 15:36:05');
INSERT INTO `log` VALUES ('760', '10010', null, '您在购物车删除了购物ID为【42】的商品', '2019-10-27 15:36:07');
INSERT INTO `log` VALUES ('761', '10010', null, '您在购物车删除了购物ID为【42】的商品', '2019-10-27 15:36:08');
INSERT INTO `log` VALUES ('772', '10010', null, '您删除了【10】条日志记录', '2019-10-27 15:50:17');
INSERT INTO `log` VALUES ('773', '10010', null, '您在【2019年10月27日 16:21:31】登录了本商城', '2019-10-27 16:21:31');
INSERT INTO `log` VALUES ('774', '10010', null, '您在【2019年10月27日 16:29:18】登录了本商城', '2019-10-27 16:29:18');
INSERT INTO `log` VALUES ('775', '10010', null, '您在【2019年10月27日 16:52:36】登录了本商城', '2019-10-27 16:52:36');
INSERT INTO `log` VALUES ('776', '10010', null, '您在【2019年10月27日 16:56:24】登录了本商城', '2019-10-27 16:56:24');
INSERT INTO `log` VALUES ('777', '10010', null, '您浏览了【移动终端】分类下的【bf出v】', '2019-10-27 17:05:33');
INSERT INTO `log` VALUES ('778', '10010', null, '您浏览了【移动终端】分类下的【bf出v】', '2019-10-27 17:50:25');
INSERT INTO `log` VALUES ('779', '10010', null, '您添加了一款名为【bf出v】的商品到购物车', '2019-10-27 17:50:27');
INSERT INTO `log` VALUES ('780', '10010', null, '您在购物车删除了购物ID为【41】的商品', '2019-10-27 17:50:33');
INSERT INTO `log` VALUES ('781', '10010', null, '您浏览了【移动终端】分类下的【HUAWEI Mate 30 Pro】', '2019-10-27 18:00:12');
INSERT INTO `log` VALUES ('782', '10010', null, '您添加了一款名为【HUAWEI Mate 30 Pro】的商品到购物车', '2019-10-27 18:00:15');
INSERT INTO `log` VALUES ('783', '10010', null, '您浏览了【移动终端】分类下的【bf出v】', '2019-10-27 18:14:20');
INSERT INTO `log` VALUES ('784', '10010', null, '您浏览了【移动终端】分类下的【bf出v】', '2019-10-27 18:17:38');
INSERT INTO `log` VALUES ('785', '10010', null, '您浏览了【移动终端】分类下的【bf出v】', '2019-10-27 18:17:40');
INSERT INTO `log` VALUES ('786', '10010', null, '您浏览了【移动终端】分类下的【bf出v】', '2019-10-27 18:17:40');
INSERT INTO `log` VALUES ('787', '10010', null, '您在【2019年10月27日 18:17:53】登录了本商城', '2019-10-27 18:17:53');
INSERT INTO `log` VALUES ('788', '10010', null, '您浏览了【配件搭载】分类下的【平板 电源适配器】', '2019-10-27 18:17:59');
INSERT INTO `log` VALUES ('789', '10010', null, '您添加了一款名为【平板 电源适配器】的商品到购物车', '2019-10-27 18:18:01');
INSERT INTO `log` VALUES ('790', '10010', null, '您在购物车删除了购物ID为【46】的商品', '2019-10-27 18:18:05');
INSERT INTO `log` VALUES ('791', '10010', null, '您在【2019年10月27日 18:22:04】登录了本商城', '2019-10-27 18:22:04');
INSERT INTO `log` VALUES ('792', '10010', null, '您在【2019年10月27日 18:33:50】登录了本商城', '2019-10-27 18:33:50');
INSERT INTO `log` VALUES ('798', '10010', null, '您删除了【5】条日志记录', '2019-10-27 19:37:49');
INSERT INTO `log` VALUES ('799', '10010', null, '您在【2019年10月27日 21:10:41】登录了本商城', '2019-10-27 21:10:41');
INSERT INTO `log` VALUES ('800', '10010', null, '您在【2019年10月27日 21:24:56】登录了本商城', '2019-10-27 21:24:56');
INSERT INTO `log` VALUES ('801', '10010', null, '您浏览了【移动终端】分类下的【bf出v】', '2019-10-27 21:26:02');
INSERT INTO `log` VALUES ('802', '10010', null, '您浏览了【移动终端】分类下的【bf出v】', '2019-10-27 21:41:25');
INSERT INTO `log` VALUES ('803', '10011', null, '您在【2019年10月27日 21:59:25】登录了本商城', '2019-10-27 21:59:25');
INSERT INTO `log` VALUES ('804', '10011', null, '您在【2019年10月27日 22:13:39】登录了本商城', '2019-10-27 22:13:39');
INSERT INTO `log` VALUES ('805', '10011', null, '您在【2019年10月27日 22:14:25】登录了本商城', '2019-10-27 22:14:25');
INSERT INTO `log` VALUES ('806', '10011', null, '您在【2019年10月27日 22:16:23】登录了本商城', '2019-10-27 22:16:23');
INSERT INTO `log` VALUES ('807', '10010', null, '您在【2019年10月27日 22:18:01】登录了本商城', '2019-10-27 22:18:01');
INSERT INTO `log` VALUES ('808', '10010', null, '您在【2019年10月27日 22:19:36】登录了本商城', '2019-10-27 22:19:36');
INSERT INTO `log` VALUES ('809', '10010', null, '您在【2019年10月27日 22:20:16】登录了本商城', '2019-10-27 22:20:16');
INSERT INTO `log` VALUES ('810', '10010', null, '您在【2019年10月27日 22:21:34】登录了本商城', '2019-10-27 22:21:34');
INSERT INTO `log` VALUES ('811', '10010', null, '您在【2019年10月27日 22:22:40】登录了本商城', '2019-10-27 22:22:40');
INSERT INTO `log` VALUES ('812', '10010', null, '您在【2019年10月27日 22:27:17】登录了本商城', '2019-10-27 22:27:17');
INSERT INTO `log` VALUES ('813', '10010', null, '您在【2019年10月27日 22:35:42】登录了本商城', '2019-10-27 22:35:42');
INSERT INTO `log` VALUES ('814', '10010', null, '您在【2019年10月27日 22:38:03】登录了本商城', '2019-10-27 22:38:03');
INSERT INTO `log` VALUES ('815', '10010', null, '您在【2019年10月27日 22:57:45】登录了本商城', '2019-10-27 22:57:45');
INSERT INTO `log` VALUES ('816', '10010', null, '您在【2019年10月27日 22:59:47】登录了本商城', '2019-10-27 22:59:47');
INSERT INTO `log` VALUES ('817', '10010', null, '您在【2019年10月27日 23:03:01】登录了本商城', '2019-10-27 23:03:01');
INSERT INTO `log` VALUES ('818', '10010', null, '您在【2019年10月27日 23:04:53】登录了本商城', '2019-10-27 23:04:53');
INSERT INTO `log` VALUES ('819', '10010', null, '您在【2019年10月27日 23:09:05】登录了本商城', '2019-10-27 23:09:05');
INSERT INTO `log` VALUES ('820', '10010', null, '您在【2019年10月27日 23:10:09】登录了本商城', '2019-10-27 23:10:09');
INSERT INTO `log` VALUES ('821', '10010', null, '您在【2019年10月27日 23:11:41】登录了本商城', '2019-10-27 23:11:41');
INSERT INTO `log` VALUES ('822', '10010', null, '您在【2019年10月27日 23:13:10】登录了本商城', '2019-10-27 23:13:10');
INSERT INTO `log` VALUES ('823', '10010', null, '您在【2019年10月27日 23:19:04】登录了本商城', '2019-10-27 23:19:04');
INSERT INTO `log` VALUES ('824', '10010', null, '您在【2019年10月27日 23:25:00】登录了本商城', '2019-10-27 23:25:00');
INSERT INTO `log` VALUES ('825', '10010', null, '您在【2019年10月27日 23:46:20】登录了本商城', '2019-10-27 23:46:20');
INSERT INTO `log` VALUES ('826', '10010', null, '您浏览了【移动终端】分类下的【bf出v】', '2019-10-27 23:46:37');
INSERT INTO `log` VALUES ('827', '10010', null, '下单成功，订单号：【20191027234643653021】', '2019-10-27 23:46:43');
INSERT INTO `log` VALUES ('828', '10010', null, '您浏览了【配件搭载】分类下的【平板 电源适配器】', '2019-10-27 23:48:03');
INSERT INTO `log` VALUES ('829', '10010', null, '您在【2019年10月28日 17:57:53】登录了本商城', '2019-10-28 17:57:53');
INSERT INTO `log` VALUES ('830', '10010', null, '下单成功，订单号：【20191028175816727067】', '2019-10-28 17:58:16');
INSERT INTO `log` VALUES ('831', '10010', null, '您在【2019年10月28日 18:03:12】登录了本商城', '2019-10-28 18:03:12');
INSERT INTO `log` VALUES ('832', '10010', null, '您在【2019年10月28日 18:05:33】登录了本商城', '2019-10-28 18:05:33');
INSERT INTO `log` VALUES ('833', '10010', null, '下单成功，订单号：【20191028180546676091】', '2019-10-28 18:05:46');
INSERT INTO `log` VALUES ('834', '10010', null, '您在【2019年10月28日 22:34:04】登录了本商城', '2019-10-28 22:34:04');
INSERT INTO `log` VALUES ('835', '10010', null, '下单成功，订单号：【20191028223421098000】', '2019-10-28 22:34:21');
INSERT INTO `log` VALUES ('836', '10010', null, '您在【2019年10月28日 23:54:21】登录了本商城', '2019-10-28 23:54:21');
INSERT INTO `log` VALUES ('837', '10010', null, '您在【2019年10月29日 11:33:06】登录了本商城', '2019-10-29 11:33:06');
INSERT INTO `log` VALUES ('838', '10010', null, '您浏览了【移动终端】分类下的【Moon 3D移动影院 曜石黑】', '2019-10-29 11:33:12');
INSERT INTO `log` VALUES ('839', '10010', null, '您在购物车删除了购物ID为【44】的商品', '2019-10-29 11:36:27');
INSERT INTO `log` VALUES ('840', '10010', null, '您在购物车删除了购物ID为【39】的商品', '2019-10-29 11:36:30');
INSERT INTO `log` VALUES ('845', '10010', null, '您在【2019年10月29日 15:04:45】登录了本商城', '2019-10-29 15:04:45');
INSERT INTO `log` VALUES ('859', '10011', null, '您在【2019年10月31日 23:58:06】登录了本商城', '2019-10-31 23:58:06');
INSERT INTO `log` VALUES ('860', '10011', null, '您浏览了【移动终端】分类下的【HUAWEI Mate 30 Pro】', '2019-10-31 23:58:19');
INSERT INTO `log` VALUES ('861', '10011', null, '您添加了一款名为【HUAWEI Mate 30 Pro】的商品到购物车', '2019-10-31 23:58:23');
INSERT INTO `log` VALUES ('862', '10011', null, '下单成功，订单号：【20191031235831935090】', '2019-10-31 23:58:32');
INSERT INTO `log` VALUES ('891', '10011', null, '您在【2019年11月12日 22:18:52】登录了本商城', '2019-11-12 22:18:52');
INSERT INTO `log` VALUES ('892', '10011', null, '您浏览了【移动终端】分类下的【Moon 3D移动影院 曜石黑】', '2019-11-12 22:19:16');
INSERT INTO `log` VALUES ('893', '10011', null, '下单成功，订单号：【20191112221935916026】', '2019-11-12 22:19:35');
INSERT INTO `log` VALUES ('941', '10010', null, '您删除了【80】条日志记录', '2019-11-19 15:26:46');
INSERT INTO `log` VALUES ('942', '10010', null, '您删除了【4】条日志记录', '2019-11-19 15:27:47');
INSERT INTO `log` VALUES ('943', '10010', null, '您在【2019年11月19日 17:35:46】登录了本商城', '2019-11-19 17:35:46');
INSERT INTO `log` VALUES ('944', '10010', null, '下单成功，订单号：【20191119173601269097】', '2019-11-19 17:36:01');
INSERT INTO `log` VALUES ('945', '10010', null, '您浏览了【移动终端】分类下的【HUAWEI Mate 30 Pro】', '2019-11-19 17:38:07');
INSERT INTO `log` VALUES ('946', '10010', null, '您在【2019年11月19日 18:54:11】登录了本商城', '2019-11-19 18:54:11');
INSERT INTO `log` VALUES ('947', '10010', null, '您浏览了【移动终端】分类下的【Moon 3D移动影院 曜石黑】', '2019-11-19 18:54:27');
INSERT INTO `log` VALUES ('948', '10010', null, '您添加了一款名为【Moon 3D移动影院 曜石黑】的商品到购物车', '2019-11-19 18:54:34');
INSERT INTO `log` VALUES ('949', '10010', null, '下单成功，订单号：【20191119185450392079】', '2019-11-19 18:54:50');
INSERT INTO `log` VALUES ('950', '10010', null, '您在【2019年11月19日 22:21:32】登录了本商城', '2019-11-19 22:21:32');
INSERT INTO `log` VALUES ('951', '10010', null, '下单成功，订单号：【20191119222318439026】', '2019-11-19 22:23:18');
INSERT INTO `log` VALUES ('952', '10010', null, '您浏览了【智能家居】分类下的【VR头显】', '2019-11-19 22:23:40');
INSERT INTO `log` VALUES ('953', '10010', null, '您在【2021年01月21日 00:17:37】登录了本商城', '2021-01-21 00:17:37');
INSERT INTO `log` VALUES ('954', '10010', null, '您浏览了【时尚绝版服装】分类下的【时尚上衣（世界杯限量版）】', '2021-01-21 00:37:58');
INSERT INTO `log` VALUES ('955', '10010', null, '您在【2021年01月21日 15:24:54】登录了本商城', '2021-01-21 15:24:54');
INSERT INTO `log` VALUES ('956', '10010', null, '您浏览了【移动终端】分类下的【辉腾 平板电脑】', '2021-01-21 15:25:06');

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `orderid` int(11) NOT NULL AUTO_INCREMENT,
  `ordercode` varchar(50) NOT NULL,
  `uid` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `orderaddress` varchar(200) NOT NULL,
  `postalfee` float NOT NULL,
  `orderdate` date NOT NULL,
  `orderpostcode` varchar(50) DEFAULT NULL,
  `orderpostname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`orderid`) USING BTREE,
  KEY `UK_uid` (`uid`) USING BTREE,
  CONSTRAINT `UK_uid` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=gb2312 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES ('40', '20191104153903831015', '10010', '8', '合肥市', '16', '2019-11-04', '243242324226', '韵达');
INSERT INTO `order` VALUES ('43', '20191110173428666023', '10010', '2', '合肥市', '10', '2019-11-10', '', '');
INSERT INTO `order` VALUES ('44', '20191110173523944033', '10010', '3', '合肥市', '28', '2019-11-10', '', '');
INSERT INTO `order` VALUES ('45', '20191112221935916026', '10011', '0', '安徽省合肥市', '10', '2019-11-12', '', '');
INSERT INTO `order` VALUES ('50', '20191118225635049094', '10010', '5', '默认地址：合肥市', '14', '2019-11-18', '', '');
INSERT INTO `order` VALUES ('51', '20191118230338734000', '10010', '2', '默认地址：合肥市', '18', '2019-11-18', '', '');
INSERT INTO `order` VALUES ('52', '20191118230404231032', '10010', '7', '默认地址：合肥市', '25', '2019-11-18', '3456565234', '申通');
INSERT INTO `order` VALUES ('53', '20191118230715069048', '10010', '9', '默认地址：合肥市', '14', '2019-11-18', '', '');
INSERT INTO `order` VALUES ('54', '20191118231000316030', '10010', '4', '默认地址：合肥市', '23', '2019-11-18', '9876545678', '韵达');
INSERT INTO `order` VALUES ('55', '20191119173601269097', '10010', '1', '默认地址：合肥市', '26', '2019-11-19', '', '');
INSERT INTO `order` VALUES ('56', '20191119185450392079', '10010', '1', '默认地址：合肥市', '20', '2019-11-19', '', '');
INSERT INTO `order` VALUES ('57', '20191119222318439026', '10010', '1', '默认地址：合肥市', '23', '2019-11-19', '', '');

-- ----------------------------
-- Table structure for orderdetail
-- ----------------------------
DROP TABLE IF EXISTS `orderdetail`;
CREATE TABLE `orderdetail` (
  `odetailId` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `pimg` varchar(50) NOT NULL,
  `pname` varchar(50) NOT NULL,
  `price` float NOT NULL,
  `odetailnum` int(11) NOT NULL,
  PRIMARY KEY (`odetailId`) USING BTREE,
  KEY `UK_pid` (`pid`) USING BTREE,
  KEY `UK_orderid` (`orderid`) USING BTREE,
  CONSTRAINT `UK_orderid` FOREIGN KEY (`orderid`) REFERENCES `order` (`orderid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `UK_pid` FOREIGN KEY (`pid`) REFERENCES `product` (`pid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=gb2312 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of orderdetail
-- ----------------------------
INSERT INTO `orderdetail` VALUES ('47', '40', '100019', '1572799782508_Product.jpg', '平板 电源适配器', '69', '1');
INSERT INTO `orderdetail` VALUES ('50', '43', '100020', '1572803288864_Product.jpg', '辉腾 平板电脑', '233', '1');
INSERT INTO `orderdetail` VALUES ('51', '44', '100019', '1572799782508_Product.jpg', '平板 电源适配器', '69', '5');
INSERT INTO `orderdetail` VALUES ('52', '45', '100003', '1572801314894_Product.jpg', 'Moon 3D移动影院 曜石黑', '3999', '2');
INSERT INTO `orderdetail` VALUES ('58', '50', '100019', '1572799782508_Product.jpg', '平板 电源适配器', '69', '1');
INSERT INTO `orderdetail` VALUES ('59', '51', '100020', '1572803288864_Product.jpg', '辉腾 平板电脑', '233', '1');
INSERT INTO `orderdetail` VALUES ('60', '52', '100004', '1572801470567_Product.jpg', '移动手提包', '299', '3');
INSERT INTO `orderdetail` VALUES ('61', '53', '100018', '1572798038864_Product.jpg', 'Mobile 电源适配器', '233', '1');
INSERT INTO `orderdetail` VALUES ('62', '54', '100022', '1572802975010_Product.jpg', '平板电脑', '233', '1');
INSERT INTO `orderdetail` VALUES ('63', '55', '100020', '1572803288864_Product.jpg', '辉腾 平板电脑', '233', '1');
INSERT INTO `orderdetail` VALUES ('64', '56', '100003', '1572801314894_Product.jpg', 'Moon 3D移动影院 曜石黑', '3999', '3');
INSERT INTO `orderdetail` VALUES ('65', '56', '100020', '1572803288864_Product.jpg', '辉腾 平板电脑', '233', '1');
INSERT INTO `orderdetail` VALUES ('66', '56', '100024', '1572797391331_Product.jpg', 'HUAWEI Mate 30 Pro', '233', '2');
INSERT INTO `orderdetail` VALUES ('67', '57', '100017', '1572796713852_Product.jpg', 'VR头显', '233', '1');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(20) NOT NULL,
  `pimg` varchar(100) NOT NULL DEFAULT '1571486776174_Product',
  `price` float NOT NULL,
  `stock` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `descb` varchar(500) DEFAULT NULL,
  `bytime` datetime NOT NULL,
  `classid` int(11) NOT NULL,
  PRIMARY KEY (`pid`) USING BTREE,
  KEY `FK_classid` (`classid`) USING BTREE,
  CONSTRAINT `FK_classid` FOREIGN KEY (`classid`) REFERENCES `classification` (`classid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=100029 DEFAULT CHARSET=gb2312 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('100001', '手写笔', '1572802837137_Product.jpg', '999.5', '223', null, '更专业，更放心', '2019-09-23 17:38:04', '1006');
INSERT INTO `product` VALUES ('100002', '时尚上衣（世界杯限量版）', '1572803212160_Product.jpg', '2000', '21', null, 'wee', '2019-09-23 17:41:38', '1005');
INSERT INTO `product` VALUES ('100003', 'Moon 3D移动影院 曜石黑', '1572801314894_Product.jpg', '3999', '394', null, 'sdf地方不大', '2019-09-23 17:43:17', '1001');
INSERT INTO `product` VALUES ('100004', '移动手提包', '1572801470567_Product.jpg', '299', '435', null, 'wer', '2019-09-23 17:44:39', '1006');
INSERT INTO `product` VALUES ('100005', 'Phaeton 辉腾路由器', '1572806079781_Product.jpg', '388', '546', null, '值得信赖', '2019-09-23 17:45:31', '1004');
INSERT INTO `product` VALUES ('100006', '智能头显穿戴', '1572804070664_Product.jpg', '234', '234', null, '电风扇', '2019-09-27 12:56:51', '1004');
INSERT INTO `product` VALUES ('100011', 'Phaeton 智能AI音箱', '1572803585667_Product.jpg', '233', '4656', null, ' 大幅度', '2019-09-28 17:48:34', '1004');
INSERT INTO `product` VALUES ('100013', '辉腾 时尚绝版服装', '1572806191420_Product.jpg', '2336', '4656', null, ' 大幅度', '2019-09-28 17:48:35', '1005');
INSERT INTO `product` VALUES ('100014', '专业手写笔', '1572801007136_Product.jpg', '233', '4656', null, '手写笔 我们更专业', '2019-09-28 17:48:35', '1006');
INSERT INTO `product` VALUES ('100017', 'VR头显', '1572796713852_Product.jpg', '233', '4656', null, '虚拟&现实', '2019-09-28 17:48:43', '1004');
INSERT INTO `product` VALUES ('100018', 'Mobile 电源适配器', '1572798038864_Product.jpg', '233', '4656', null, ' 大幅度', '2019-09-28 17:48:43', '1002');
INSERT INTO `product` VALUES ('100019', '平板 电源适配器', '1572799782508_Product.jpg', '69', '254', null, '手机专用配件', '2019-09-28 17:48:44', '1002');
INSERT INTO `product` VALUES ('100020', '辉腾 平板电脑', '1572803288864_Product.jpg', '233', '4656', null, ' 大幅度', '2019-09-28 17:48:44', '1001');
INSERT INTO `product` VALUES ('100021', 'Huīténg Phaeton 电脑', '1572796957892_Product.jpg', '233', '4656', null, ' 大幅度', '2019-09-28 17:48:44', '1006');
INSERT INTO `product` VALUES ('100022', '平板电脑', '1572802975010_Product.jpg', '233', '4656', null, ' 大幅度', '2019-09-28 17:48:45', '1001');
INSERT INTO `product` VALUES ('100023', '5A 移动手机 专用数据线', '1572804288485_Product.jpg', '233', '4656', null, ' 大幅度', '2019-09-28 17:48:45', '1002');
INSERT INTO `product` VALUES ('100024', 'HUAWEI Mate 30 Pro', '1572797391331_Product.jpg', '233', '4656', null, '超感光徕卡电影四摄，256 倍超高速摄影\n麒麟990 旗舰芯片，性能与能效显著提升\n6.53 英寸环幕屏，27W 华为无线超级快充', '2019-09-28 17:48:47', '1001');
INSERT INTO `product` VALUES ('100025', '手机', '1572805837113_Product.jpg', '239', '34', null, '的发挥地方规划法规和', '2019-10-05 23:50:14', '1001');
INSERT INTO `product` VALUES ('100026', '辉腾 RoWrite手写笔记本', '1572805589707_Product.jpg', '342', '2', null, '234234', '2019-11-01 17:58:04', '1006');
INSERT INTO `product` VALUES ('100027', '辉腾 平板电脑', '1572798202285_Product.jpg', '342', '34', null, '辉腾平板，指尖办公', '2019-11-01 18:04:50', '1001');
INSERT INTO `product` VALUES ('100028', 'HUAWEI Mate 30 Pro', '1574142764679_Product.jpg', '9999', '345', null, '...', '2019-11-19 11:08:40', '1001');

-- ----------------------------
-- Table structure for shoppingcart
-- ----------------------------
DROP TABLE IF EXISTS `shoppingcart`;
CREATE TABLE `shoppingcart` (
  `carid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `numbers` int(11) NOT NULL,
  `priceall` float DEFAULT NULL,
  `cartbytime` datetime NOT NULL,
  PRIMARY KEY (`carid`) USING BTREE,
  KEY `FK_uid` (`uid`) USING BTREE,
  KEY `FK_pid` (`pid`) USING BTREE,
  CONSTRAINT `FK_pid` FOREIGN KEY (`pid`) REFERENCES `product` (`pid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_uid` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=gb2312 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of shoppingcart
-- ----------------------------
INSERT INTO `shoppingcart` VALUES ('45', '10010', '100024', '2', '466', '2019-10-27 18:00:15');
INSERT INTO `shoppingcart` VALUES ('47', '10011', '100024', '2', '466', '2019-10-31 23:58:23');
INSERT INTO `shoppingcart` VALUES ('48', '10010', '100020', '1', '233', '2019-11-10 14:20:23');
INSERT INTO `shoppingcart` VALUES ('49', '10010', '100003', '3', '11997', '2019-11-19 18:54:34');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `headimg` varchar(100) DEFAULT '1571405904746_Person.jpg',
  `uname` varchar(20) NOT NULL,
  `password` varchar(11) NOT NULL,
  `myname` varchar(20) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `birthday` varchar(14) DEFAULT NULL,
  `vip` int(10) NOT NULL DEFAULT '0',
  `phone` varchar(20) DEFAULT NULL,
  `idnum` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `signature` varchar(50) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `bytime` datetime NOT NULL,
  `lasttime` datetime DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE,
  UNIQUE KEY `UK_uname` (`uname`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10038 DEFAULT CHARSET=gb2312 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('10010', '1611161194001_Person.jpg', '猫头鹰', '1234', '孟东', 'male', '1999年6月23日', '41', '13733082341', '333', '232345@qq.com', '合肥市', 'I‘m Fine', '0', '2019-09-15 00:00:00', '2021-01-21 15:24:54');
INSERT INTO `user` VALUES ('10011', '1572801861503_Person.jpg', 'JN-江南', '2345', '测试用户2', 'female', '1997年5月10日', '10', '13733086594', '333', '2091239@qq.com', '安徽省合肥市', 'I\'m Fine.', '0', '2019-09-15 00:00:00', '2019-11-12 22:18:51');
INSERT INTO `user` VALUES ('10013', '1572799183823_Person.jpg', '浅浅星', '1234', null, 'female', null, '0', null, null, null, null, null, '0', '2019-10-18 12:31:40', null);
INSERT INTO `user` VALUES ('10014', '1572796657112_Person.jpg', '派3.14', '1234', null, null, null, '0', null, null, null, null, null, '0', '2019-10-18 12:31:53', null);
INSERT INTO `user` VALUES ('10015', '1572801171277_Person.jpg', '弹弹弹', '1234', null, null, null, '0', null, null, null, null, null, '0', '2019-10-18 12:32:36', null);
INSERT INTO `user` VALUES ('10034', '1572804782153_Person.jpg', '钢铁侠', '1234', null, null, null, '0', null, null, null, null, null, '0', '2019-10-28 19:04:19', null);
INSERT INTO `user` VALUES ('10035', '1571405904746_Person.jpg', '北极星', '1234', '张三', 'male', null, '0', null, null, null, null, null, '0', '2019-11-18 22:14:24', null);
INSERT INTO `user` VALUES ('10037', '1574135742960_Person.jpg', '长颈鹿', '1234', null, null, null, '0', null, null, null, null, null, '0', '2019-11-19 11:01:45', null);
