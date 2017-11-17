/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50547
Source Host           : localhost:3306
Source Database       : hsn2

Target Server Type    : MYSQL
Target Server Version : 50547
File Encoding         : 65001

Date: 2017-11-13 16:25:24
*/

SET FOREIGN_KEY_CHECKS=0;

DROP Database IF EXISTS FenXiaoShop;
CREATE Database FenXiaoShop  character set utf8;
use FenXiaoShop;
-- ----------------------------
-- Table structure for vip_essential_information
-- ----------------------------
DROP TABLE IF EXISTS `vip_essential_information`;
CREATE TABLE `vip_essential_information` (
  `ID` int auto_increment NOT NULL COMMENT 'ID',
  `OpenID` varchar(50) NOT NULL COMMENT '微信标示',
  `Phone` varchar(20) COMMENT '用户电话',
  `PID` int DEFAULT 0 COMMENT '上级编号0代表当前为一级会员',
  `Score` int DEFAULT 0 COMMENT '会员积分',
  `Level` int DEFAULT 0 COMMENT '0为游客1为经销商',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for vip_distributor
-- ----------------------------
DROP TABLE IF EXISTS `vip_distributor`;
CREATE TABLE `vip_distributor` (
  `id` int NOT NULL  COMMENT '当前表主键，会员基本信息表外键',
  `FxMoney` double COMMENT '返销返利',
  `ImgSrc` varchar(200) COMMENT '二维码地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of config
-- ----------------------------

-- ----------------------------
-- Table structure for vip_withdrawals_apply
-- ----------------------------
DROP TABLE IF EXISTS `vip_withdrawals_apply`;
CREATE TABLE `vip_withdrawals_apply` (
  `ID` int AUTO_INCREMENT COMMENT '申请编号',
  `Uid` int NOT NULL DEFAULT COMMENT '会员编号会员表',
  `MoneyNum` money COMMENT '体现金额',
  `WithDrawTime` datetime COMMENT '申请时间',
  `HandleTime` datetime COMMENT '处理时间',
  `Handler` varchar(50) NOT NULL COMMENT '处理人',
  `State` int NOT NULL COMMENT '处理状态',
  `Description` text COMMENT '备注信息',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dingdan
-- ----------------------------

-- ----------------------------
-- Table structure for apply_state
-- ----------------------------
DROP TABLE IF EXISTS `apply_state`;
CREATE TABLE `apply_state` (
  `Id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `Name` varchar(50) COMMENT '状态名',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of food
-- ----------------------------

-- ----------------------------
-- Table structure for distrbution_playmoney_log
-- ----------------------------
DROP TABLE IF EXISTS `distrbution_playmoney_log`;
CREATE TABLE `distrbution_playmoney_log` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '流水号',
  `WID` int(11) COMMENT '提现申请编号',
  `Handler` varchar(50) DEFAULT NULL COMMENT '处理人',
  `HandlerTime` datetime COMMENT '处理日期',
  `Description` text COMMENT '轮播显示顺序',
  `lunbo_remark` text COMMENT '备注信息',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lunbo
-- ----------------------------

-- ----------------------------
-- Table structure for vip_back_commission_message
-- ----------------------------
DROP TABLE IF EXISTS `vip_back_commission_message`;
CREATE TABLE `vip_back_commission_message` (
  `ID` int(11) AUTO_INCREMENT COMMENT '流水号',
  `OrderId` int(11) NOT NULL COMMENT '订单编号 订单表外键',
  `Father` double DEFAULT NULL COMMENT '1级代理商返利（直接父代理商）',
  `GradFather` double COMMENT '2级代理商返利（祖父级）',
  `GreatGrandFather` double COMMENT '3级代理商返利（曾祖父级）'
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of table_zhuozi
-- ----------------------------

-- ----------------------------
-- Table structure for platform_config
-- ----------------------------
DROP TABLE IF EXISTS `platform_config`;
CREATE TABLE `platform_config` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `FPrecent` double COMMENT '父经销商返利比例',
  `GFPrecent` double COMMENT '祖父经销商返利',
  `GGPrecent` double COMMENT '曾祖父经销商返利比例',
  `MinRequire` double COMMENT '成为经销商最低订单金额(单次)',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of token
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `goods_receipt`;
CREATE TABLE `goods_receipt` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '地址编号',
  `Name` varchar(50) DEFAULT NULL COMMENT '收货人姓名',
  `Phone` varchar(20) DEFAULT NULL COMMENT '收货人联系方式',
  `ProvincesId` int DEFAULT NULL COMMENT '省份ID，地区字典表外键',
  `CityId` int DEFAULT NULL COMMENT '城市ID，地址字典表外键',
  `DistrictId` int DEFAULT NULL COMMENT '地区ID，地址字典表外键',
  `Detial` int COMMENT '',
  `IsDefault` int(11) COMMENT '注册时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;



-- Table structure for addr_dictionary
-- ----------------------------
DROP TABLE IF EXISTS `addr_dictionary`;
CREATE TABLE `addr_dictionary` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '地址区域编号',
  `Name` var(200) COMMENT '描述名称',
  `FId` int COMMENT '上级区域ID 省份时上级为0 城市时上级为省份ID 区域时为城市ID',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
-- ----------------------------
-- Records of user
-- ----------------------------

