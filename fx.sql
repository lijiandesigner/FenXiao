

DROP Database IF EXISTS FenXiaoShop;
CREATE Database FenXiaoShop  character set utf8;
use FenXiaoShop;
-- ----------------------------
-- Table structure for brand
-- ----------------------------
DROP TABLE IF EXISTS `brand`;
CREATE TABLE `brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `brand_name` varchar(255) NOT NULL COMMENT '名字',
  `brand_pic` varchar(255) DEFAULT NULL COMMENT '分类图片',
  `brand_num` int(11) DEFAULT NULL COMMENT '顺序',
  `brand_goods` varchar(255) NOT NULL COMMENT '类包含商品',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of brand
-- ----------------------------
INSERT INTO `brand` VALUES ('3', 'test1', '20171109\\f5d5f76f64f8609eebac6ad3e7264580.jpg', '1', '[8,9,10]');
INSERT INTO `brand` VALUES ('4', 'test2', '20171109\\92e0f9d302f700d4d2a19db89a052257.jpg', '2', '[7,9,10]');
INSERT INTO `brand` VALUES ('5', '2321', '20171110\\6b7aa4f3a662614020e2812832d28a6c.jpg', '3', '[10]');
INSERT INTO `brand` VALUES ('6', 'dfs', '20171110\\a667310cd86abcfde2961d1adb5db554.jpg', '4', '[10]');
INSERT INTO `brand` VALUES ('7', '22', '20171110\\050dd0178bf52c4130f7729db4958ff0.jpg', '5', '[10]');
INSERT INTO `brand` VALUES ('8', '1', '20171111\\b8f60c31c9039b8ee8d4d71614f41103.jpg', '1', '[]');

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '配置id',
  `config_pic` varchar(255) DEFAULT NULL COMMENT '店铺图片',
  `config_name` varchar(255) DEFAULT NULL COMMENT '店铺名字',
  `config_phone` varchar(255) DEFAULT NULL COMMENT '店铺电话',
  `config_dizhi` varchar(255) DEFAULT NULL COMMENT '店铺地址',
  `config_jieshao` text COMMENT '店铺介绍',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES ('1', '20171110\\2bd2dc2849bfa5e8e7a1477b988b51f5.jpg', '龙虾吨黄瓜', '11212132132', '奥格瑞姆', '<p><strong style=\"color: rgb(62, 62, 62); font-size: 18px; line-height: 25.6px; text-indent: 32px; white-space: normal; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; background-color: rgb(255, 255, 255);\"><span style=\"max-width: 100%; color: rgb(34, 34, 34); font-family: Simsun; line-height: normal; box-sizing: border-box !important; word-wrap: break-word !important;\">胡三妮：原名胡陶芹，排行老三，人称胡三妮，<strong style=\"max-width: 100%; color: rgb(62, 62, 62); line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"max-width: 100%; color: rgb(34, 34, 34); line-height: normal; box-sizing: border-box !important; word-wrap: break-word !important;\">原籍馆陶县房寨镇西浒演村人士，</span></strong>在其20多岁（1992年）的时候由于家里穷，迫于生计胡三妮拿着仅有的8块钱背井离乡，来到山东省临清市投奔亲戚，<strong style=\"color: rgb(62, 62, 62); font-size: 18px; line-height: 25.6px; text-indent: 32px; white-space: normal; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important; background-color: rgb(255, 255, 255);\"><span style=\"max-width: 100%; color: rgb(34, 34, 34); font-family: Simsun; line-height: normal; box-sizing: border-box !important; word-wrap: break-word !important;\">她虽然学历不高，但凭着其爱学习、爱钻研的拼劲儿和本着真诚出真味儿的经营理念，短短几年内在当地创下了一个餐饮界的神话！</span></strong></span></strong></p>');

-- ----------------------------
-- Table structure for dingdan
-- ----------------------------
DROP TABLE IF EXISTS `dingdan`;
CREATE TABLE `dingdan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一id',
  `dingdan_openid` varchar(255) NOT NULL DEFAULT '' COMMENT '唯一标识openid',
  `dingdan_phone` varchar(255) NOT NULL COMMENT '订单电话',
  `dingdan_table` varchar(255) NOT NULL COMMENT '桌子名称',
  `dingdan_num` int(11) NOT NULL COMMENT '订单号',
  `dingdan_shops` varchar(255) NOT NULL COMMENT '物品个数',
  `dingdan_goods` varchar(255) NOT NULL COMMENT '物品名称',
  `dingdan_moneys` varchar(255) NOT NULL COMMENT '物品单价',
  `dingdan_money` int(11) NOT NULL COMMENT '总价',
  `dingdan_buff` varchar(255) NOT NULL COMMENT '状态',
  `dingdan_time_s` int(11) NOT NULL COMMENT '下单时间',
  `dingdan_time_e` int(11) NOT NULL COMMENT '结单时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dingdan
-- ----------------------------
INSERT INTO `dingdan` VALUES ('45', '', '1301101021', '1', '1510380587', '{\"7\":1,\"10\":1}', '{\"7\":\"2\",\"10\":\"222\"}', '{\"7\":2,\"10\":1}', '3000', '完成', '1510380587', '1510380605');
INSERT INTO `dingdan` VALUES ('47', '', '1301101021', '1', '1510381847', '{\"10\":1}', '{\"10\":\"222\"}', '{\"10\":0.01}', '10', '完成', '1510381847', '1510381868');
INSERT INTO `dingdan` VALUES ('48', '', '1301101021', '1', '1510381859', '{\"8\":1}', '{\"8\":\"浮动\"}', '{\"8\":0.01}', '10', '完成', '1510381859', '1510381865');
INSERT INTO `dingdan` VALUES ('49', '', '1301101021', '3', '1510381877', '{\"8\":1}', '{\"8\":\"浮动\"}', '{\"8\":0.01}', '10', '完成', '1510381877', '1510381884');
INSERT INTO `dingdan` VALUES ('50', '', '1301101021', '3', '1510381892', '{\"7\":1,\"8\":1,\"9\":1,\"10\":1}', '{\"7\":\"2\",\"8\":\"浮动\",\"9\":\"1\",\"10\":\"222\"}', '{\"7\":0.01,\"8\":0.01,\"9\":0.01,\"10\":0.01}', '40', '完成', '1510381892', '1510381900');

-- ----------------------------
-- Table structure for food
-- ----------------------------
DROP TABLE IF EXISTS `food`;
CREATE TABLE `food` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `food_brand` varchar(255) DEFAULT NULL COMMENT '类型',
  `food_name` varchar(255) NOT NULL COMMENT '食物名字',
  `food_pic` varchar(255) DEFAULT NULL COMMENT '食物图片',
  `food_num` varchar(255) DEFAULT NULL COMMENT '月销',
  `food_money` int(11) DEFAULT NULL COMMENT '价格',
  `food_index_show` int(11) DEFAULT '0' COMMENT '首页推荐',
  `food_con_peiliao` varchar(255) DEFAULT NULL COMMENT '配料信息',
  `food_con_jieshao` varchar(255) DEFAULT NULL COMMENT '详情介绍',
  PRIMARY KEY (`id`),
  UNIQUE KEY `food_name` (`food_name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of food
-- ----------------------------
INSERT INTO `food` VALUES ('7', '[\"4\"]', '2', '20171109\\0d80ace3990a8f21dc8d144bdcb1856f.jpg', '2', '10', '1', '<p>2<br/></p>', '<p>2<br/></p>');
INSERT INTO `food` VALUES ('8', '[\"3\"]', '浮动', '20171109\\afa3bb0998f4df4678abcd31a7e85851.jpg', '1', '10', '1', '<p>1<br/></p>', '<p>1<br/></p>');
INSERT INTO `food` VALUES ('9', '[\"3\",\"4\"]', '1', '20171110\\2e86a155ce21f0991f259f4fb2f60b19.jpg', '1', '10', '1', '<p>1<br/></p>', '<p>1<br/></p>');
INSERT INTO `food` VALUES ('10', '[\"3\",\"4\",\"5\",\"6\",\"7\"]', '222', '20171110\\02a07ee787a2483bf2d802e123b7d3bf.jpg', '11', '10', '0', '<p>1<br/></p>', '<p>1<br/></p>');

-- ----------------------------
-- Table structure for lunbo
-- ----------------------------
DROP TABLE IF EXISTS `lunbo`;
CREATE TABLE `lunbo` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '轮播id',
  `lunbo_name` varchar(255) DEFAULT NULL COMMENT '轮播名字',
  `lunbo_pic` varchar(255) DEFAULT NULL COMMENT '轮播图片',
  `lunbo_show` varchar(255) NOT NULL COMMENT '轮播显示',
  `lunbo_num` int(11) DEFAULT '1' COMMENT '轮播显示顺序',
  `lunbo_remark` text COMMENT '轮播备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lunbo
-- ----------------------------
INSERT INTO `lunbo` VALUES ('2', '2', '20171110\\14b8abe8c3cd04a9c30ea1eb99198d42.jpg', '1', '1', '1');
INSERT INTO `lunbo` VALUES ('3', '4', '20171110\\d328652471055a457549e56a37346695.jpg', '1', '12', '222');

-- ----------------------------
-- Table structure for table_zhuozi
-- ----------------------------
DROP TABLE IF EXISTS `table_zhuozi`;
CREATE TABLE `table_zhuozi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '桌子id',
  `table_name` varchar(250) NOT NULL COMMENT '桌名',
  `table_pic` varchar(255) DEFAULT NULL COMMENT '桌子图片',
  `table_renshu` int(11) DEFAULT NULL COMMENT '桌子人数',
  `table_shiyong_ok` int(11) DEFAULT NULL COMMENT '使用状态1否0ok',
  PRIMARY KEY (`id`),
  UNIQUE KEY `table_name` (`table_name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of table_zhuozi
-- ----------------------------
INSERT INTO `table_zhuozi` VALUES ('1', '德玛西亚', '20171110\\1a5fd6ec02f9f691f2b262d26d0838b1.jpg', '3', '0');
INSERT INTO `table_zhuozi` VALUES ('3', '艾尔拉斯', '20171110\\c185df10b0a4a08e0cef252a1eda171a.jpg', '22', '0');
INSERT INTO `table_zhuozi` VALUES ('4', '银月城', '20171110\\91f001acbefe865b4fdd67fae374f70f.jpg', '12', null);

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(255) NOT NULL DEFAULT '',
  `useful_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES ('1', 'NfOzVwvthhtKMQiy87er2RED_mzSBAR75UTD1XqaspXCW5auHF6i9Basnq_G4RuA_cOlZb39ZEN1vpL6aO5VFji6fD1igtjfpvY3DACZ7H5ILnU6OtY3Bh9vDIHXyPrzVWZcAAADEH', '1510294079');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `openid` varchar(255) DEFAULT NULL COMMENT 'openid',
  `user_name` varchar(255) DEFAULT NULL COMMENT '姓名',
  `user_sex` varchar(255) DEFAULT NULL COMMENT '性别',
  `user_phone_huoqu` varchar(255) DEFAULT NULL COMMENT '手机号',
  `user_phone_bangding` varchar(255) DEFAULT NULL COMMENT '绑定手机号',
  `user_love_car` text COMMENT '喜欢车型',
  `user_time` int(11) DEFAULT NULL COMMENT '注册时间',
  `user_end_time` text COMMENT '最后登陆时间',
  `user_level` int(11) DEFAULT NULL COMMENT '级别',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------

INSERT INTO `user` VALUES ('1', 'admin', 'admin', null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for vip_withdrawals_apply
-- ----------------------------
DROP TABLE IF EXISTS `vip_withdrawals_apply`;
CREATE TABLE `vip_withdrawals_apply` (
  `ID` int(11) AUTO_INCREMENT COMMENT '申请编号',
  `Uid` int(11) NOT NULL COMMENT '会员编号会员表',
  `MoneyNum` double COMMENT '体现金额',
  `WithDrawTime` datetime COMMENT '申请时间',
  `HandleTime` datetime COMMENT '处理时间',
  `Handler` varchar(50) NOT NULL COMMENT '处理人',
  `State` int(11) NOT NULL COMMENT '处理状态',
  `Description` text COMMENT '备注信息',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
-- ----------------------------
-- Table structure for vip_essential_information
-- ----------------------------
DROP TABLE IF EXISTS `vip_user`;
CREATE TABLE `vip_user` (
  `ID` int auto_increment NOT NULL COMMENT 'ID',
  `OpenID` varchar(50) NOT NULL COMMENT '微信标示',
  `Phone` varchar(20) COMMENT '用户电话',
  `PID` int DEFAULT 0 COMMENT '上级编号0代表当前为一级会员',
  `Score` int DEFAULT 0 COMMENT '会员积分',
  `Level` int DEFAULT 0 COMMENT '0为游客1为经销商',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


INSERT INTO `vip_user` VALUES ('1','bu null','12345678900','0','0','1');
INSERT INTO `vip_user` VALUES ('2','bu null','12345678900',1,0,1);
INSERT INTO `vip_user` VALUES ('3','bu null','12345678900',2,0,1);
INSERT INTO `vip_user` VALUES ('4','bu null','12345678900',3,0,1);
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
-- Table structure for goods_receipt
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


-- ----------------------------
-- Table structure for addr_dictionary
-- ----------------------------
DROP TABLE IF EXISTS `addr_dictionary`;
CREATE TABLE `addr_dictionary` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '地址区域编号',
  `Name` varchar(200) COMMENT '描述名称',
  `FId` int COMMENT '上级区域ID 省份时上级为0 城市时上级为省份ID 区域时为城市ID',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
-- ----------------------------
-- Records of user
-- ----------------------------
-- ----------------------------
-- Table structure for vip_back_commission_message
-- ----------------------------
DROP TABLE IF EXISTS `vip_back_commission_message`;
CREATE TABLE `vip_back_commission_message` (
  `ID` int(11) AUTO_INCREMENT COMMENT '流水号',
  `OrderId` int(11) NOT NULL COMMENT '订单编号 订单表外键',
  `Father` double DEFAULT NULL COMMENT '1级代理商返利（直接父代理商)',
  `GradFather` double COMMENT '2级代理商返利（祖父级）',
  `GreatGrandFather` double COMMENT '3级代理商返利（曾祖父级）',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


