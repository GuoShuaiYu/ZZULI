/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50736
 Source Host           : localhost:3306
 Source Schema         : springbootbishe

 Target Server Type    : MySQL
 Target Server Version : 50736
 File Encoding         : 65001

 Date: 04/11/2022 18:04:33
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '地址',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收货人',
  `phone` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '电话',
  `isdefault` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1652952403333 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '地址' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES (1, '2022-05-03 18:47:03', 11, '宇宙银河系金星1号', '金某', '13823888881', '是');
INSERT INTO `address` VALUES (2, '2022-05-03 18:47:03', 12, '宇宙银河系木星1号', '木某', '13823888882', '是');
INSERT INTO `address` VALUES (3, '2022-05-03 18:47:03', 13, '宇宙银河系水星1号', '水某', '13823888883', '是');
INSERT INTO `address` VALUES (4, '2022-05-03 18:47:03', 14, '宇宙银河系火星1号', '火某', '13823888884', '是');
INSERT INTO `address` VALUES (5, '2022-05-03 18:47:03', 15, '宇宙银河系土星1号', '土某', '13823888885', '是');
INSERT INTO `address` VALUES (6, '2022-05-03 18:47:03', 16, '宇宙银河系月球1号', '月某', '13823888886', '是');
INSERT INTO `address` VALUES (1651575374875, '2022-05-03 18:56:14', 1651575032166, '湖南省', '小下坡', '13613613666', '是');
INSERT INTO `address` VALUES (1652952403332, '2022-05-19 17:26:42', 1652929084646, '中原区科学大道136号郑州轻工业大学', '111', '13623998894', '是');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'liwushangcheng' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  `goodtype` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1651575351560 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '购物车表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES (1651575351559, '2022-05-03 18:55:51', 'liwushangcheng', 1651575032166, 1651575139271, '护肤品', 'upload/1651575129305.jpg', 1, 66, 0, NULL);

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '配置文件' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES (1, 'picture1', 'upload/1653367545019.jpg');
INSERT INTO `config` VALUES (2, 'picture2', 'upload/1653367556106.jpg');
INSERT INTO `config` VALUES (3, 'picture3', 'upload/1653367565081.jpg');

-- ----------------------------
-- Table structure for dianyingfenlei
-- ----------------------------
DROP TABLE IF EXISTS `dianyingfenlei`;
CREATE TABLE `dianyingfenlei`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dianyingfenlei` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '电影分类',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1652941807889 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '电影分类' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dianyingfenlei
-- ----------------------------
INSERT INTO `dianyingfenlei` VALUES (1652941767467, '2022-05-19 14:29:27', '爱情');
INSERT INTO `dianyingfenlei` VALUES (1652941775763, '2022-05-19 14:29:34', '恐怖');
INSERT INTO `dianyingfenlei` VALUES (1652941781217, '2022-05-19 14:29:40', '动作');
INSERT INTO `dianyingfenlei` VALUES (1652941787353, '2022-05-19 14:29:47', '都市');
INSERT INTO `dianyingfenlei` VALUES (1652941793588, '2022-05-19 14:29:53', '玄幻');
INSERT INTO `dianyingfenlei` VALUES (1652941807888, '2022-05-19 14:30:07', '历史');

-- ----------------------------
-- Table structure for dianyinggoupiao
-- ----------------------------
DROP TABLE IF EXISTS `dianyinggoupiao`;
CREATE TABLE `dianyinggoupiao`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `goupiaobianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '购票编号',
  `dianyingmingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '电影名称',
  `dianyingfenlei` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '电影分类',
  `piaojia` int(11) DEFAULT NULL COMMENT '票价',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `zongjiage` int(11) DEFAULT NULL COMMENT '总价格',
  `goupiaoshijian` date DEFAULT NULL COMMENT '购票时间',
  `yonghuzhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户姓名',
  `ispay` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `goupiaobianhao`(`goupiaobianhao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1653033669483 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '电影购票' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dianyinggoupiao
-- ----------------------------
INSERT INTO `dianyinggoupiao` VALUES (1652942298353, '2022-05-19 14:38:18', '20225191438921547714', '大话西游', '爱情', 19, 1, 19, '2022-05-19', '111', '111', '已支付');
INSERT INTO `dianyinggoupiao` VALUES (1653033669482, '2022-05-20 16:01:09', '2022520161126217657', '初恋50次', '爱情', 35, 5, 175, '2022-05-20', '111', '111', '已支付');

-- ----------------------------
-- Table structure for dianyingxinxi
-- ----------------------------
DROP TABLE IF EXISTS `dianyingxinxi`;
CREATE TABLE `dianyingxinxi`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dianyingbianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '电影编号',
  `dianyingmingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '电影名称',
  `dianyingfenlei` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '电影分类',
  `fengmian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '封面',
  `daoyan` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '导演',
  `piaojia` int(11) DEFAULT NULL COMMENT '票价',
  `zhuyan` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '主演',
  `changci` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '场次',
  `shangyingriqi` datetime(0) DEFAULT NULL COMMENT '上映日期',
  `yuyan` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '语言',
  `dangdishifouyouyiqing` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '当地是否有疫情',
  `dianyingjianjie` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '电影简介',
  `clicktime` datetime(0) DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT 0 COMMENT '点击次数',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `dianyingbianhao`(`dianyingbianhao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1652942205207 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '电影信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dianyingxinxi
-- ----------------------------
INSERT INTO `dianyingxinxi` VALUES (1652942077860, '2022-05-19 14:34:37', '1652941820740', '初恋50次', '爱情', 'upload/1653367731823.png', '彼得西格尔', 35, '亚当', '暂无', '2022-05-11 00:00:00', '英语', '否', '<p>高端大气上档次</p>', '2022-05-25 09:17:26', 7);
INSERT INTO `dianyingxinxi` VALUES (1652942205206, '2022-05-19 14:36:44', '1652942084295', '大话西游', '爱情', 'upload/1653367744516.webp', '周星驰', 19, '周星驰', '100', '2022-05-26 00:00:00', '普通话', '否', '<p>高端大气上档次</p>', '2022-05-25 08:57:35', 10);

-- ----------------------------
-- Table structure for diqu
-- ----------------------------
DROP TABLE IF EXISTS `diqu`;
CREATE TABLE `diqu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `diqu` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '地区',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1652929517635 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '地区' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of diqu
-- ----------------------------
INSERT INTO `diqu` VALUES (1652929395190, '2022-05-19 11:03:14', '北京');
INSERT INTO `diqu` VALUES (1652929402973, '2022-05-19 11:03:22', '上海');
INSERT INTO `diqu` VALUES (1652929409743, '2022-05-19 11:03:29', '广州');
INSERT INTO `diqu` VALUES (1652929416885, '2022-05-19 11:03:36', '深圳');
INSERT INTO `diqu` VALUES (1652929423991, '2022-05-19 11:03:43', '河南');
INSERT INTO `diqu` VALUES (1652929430945, '2022-05-19 11:03:50', '河北');
INSERT INTO `diqu` VALUES (1652929436627, '2022-05-19 11:03:56', '湖南');
INSERT INTO `diqu` VALUES (1652929442335, '2022-05-19 11:04:02', '湖北');
INSERT INTO `diqu` VALUES (1652929467820, '2022-05-19 11:04:27', '四川');
INSERT INTO `diqu` VALUES (1652929475683, '2022-05-19 11:04:34', '重庆');
INSERT INTO `diqu` VALUES (1652929483799, '2022-05-19 11:04:43', '台湾');
INSERT INTO `diqu` VALUES (1652929500651, '2022-05-19 11:05:00', '美国---德克萨斯州');
INSERT INTO `diqu` VALUES (1652929517634, '2022-05-19 11:05:16', '日本--东京');

-- ----------------------------
-- Table structure for discussdianyingxinxi
-- ----------------------------
DROP TABLE IF EXISTS `discussdianyingxinxi`;
CREATE TABLE `discussdianyingxinxi`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户名',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评论内容',
  `reply` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '回复内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1652942308893 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '电影信息评论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of discussdianyingxinxi
-- ----------------------------
INSERT INTO `discussdianyingxinxi` VALUES (201, '2022-05-03 18:47:03', 1, 1, '用户名1', '评论内容1', '回复内容1');
INSERT INTO `discussdianyingxinxi` VALUES (202, '2022-05-03 18:47:03', 2, 2, '用户名2', '评论内容2', '回复内容2');
INSERT INTO `discussdianyingxinxi` VALUES (203, '2022-05-03 18:47:03', 3, 3, '用户名3', '评论内容3', '回复内容3');
INSERT INTO `discussdianyingxinxi` VALUES (204, '2022-05-03 18:47:03', 4, 4, '用户名4', '评论内容4', '回复内容4');
INSERT INTO `discussdianyingxinxi` VALUES (205, '2022-05-03 18:47:03', 5, 5, '用户名5', '评论内容5', '回复内容5');
INSERT INTO `discussdianyingxinxi` VALUES (206, '2022-05-03 18:47:03', 6, 6, '用户名6', '评论内容6', '回复内容6');
INSERT INTO `discussdianyingxinxi` VALUES (1651575420008, '2022-05-03 18:56:59', 1651575178360, 1651575032166, '111', '用户评论', '管理员回复');
INSERT INTO `discussdianyingxinxi` VALUES (1652942308892, '2022-05-19 14:38:28', 1652942205206, 1652929084646, '111', '好看好看', NULL);

-- ----------------------------
-- Table structure for discussjingdianxinxi
-- ----------------------------
DROP TABLE IF EXISTS `discussjingdianxinxi`;
CREATE TABLE `discussjingdianxinxi`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户名',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评论内容',
  `reply` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '回复内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 217 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '景点信息评论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of discussjingdianxinxi
-- ----------------------------
INSERT INTO `discussjingdianxinxi` VALUES (211, '2022-05-03 18:47:03', 1, 1, '用户名1', '评论内容1', '回复内容1');
INSERT INTO `discussjingdianxinxi` VALUES (212, '2022-05-03 18:47:03', 2, 2, '用户名2', '评论内容2', '回复内容2');
INSERT INTO `discussjingdianxinxi` VALUES (213, '2022-05-03 18:47:03', 3, 3, '用户名3', '评论内容3', '回复内容3');
INSERT INTO `discussjingdianxinxi` VALUES (214, '2022-05-03 18:47:03', 4, 4, '用户名4', '评论内容4', '回复内容4');
INSERT INTO `discussjingdianxinxi` VALUES (215, '2022-05-03 18:47:03', 5, 5, '用户名5', '评论内容5', '回复内容5');
INSERT INTO `discussjingdianxinxi` VALUES (216, '2022-05-03 18:47:03', 6, 6, '用户名6', '评论内容6', '回复内容6');

-- ----------------------------
-- Table structure for discussliwushangcheng
-- ----------------------------
DROP TABLE IF EXISTS `discussliwushangcheng`;
CREATE TABLE `discussliwushangcheng`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户名',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评论内容',
  `reply` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '回复内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1651575533611 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '礼物商城评论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of discussliwushangcheng
-- ----------------------------
INSERT INTO `discussliwushangcheng` VALUES (191, '2022-05-03 18:47:03', 1, 1, '用户名1', '评论内容1', '回复内容1');
INSERT INTO `discussliwushangcheng` VALUES (192, '2022-05-03 18:47:03', 2, 2, '用户名2', '评论内容2', '回复内容2');
INSERT INTO `discussliwushangcheng` VALUES (193, '2022-05-03 18:47:03', 3, 3, '用户名3', '评论内容3', '回复内容3');
INSERT INTO `discussliwushangcheng` VALUES (194, '2022-05-03 18:47:03', 4, 4, '用户名4', '评论内容4', '回复内容4');
INSERT INTO `discussliwushangcheng` VALUES (195, '2022-05-03 18:47:03', 5, 5, '用户名5', '评论内容5', '回复内容5');
INSERT INTO `discussliwushangcheng` VALUES (196, '2022-05-03 18:47:03', 6, 6, '用户名6', '评论内容6', '回复内容6');
INSERT INTO `discussliwushangcheng` VALUES (1651575533610, '2022-05-03 18:58:53', 1651575139271, 1651575032166, '111', '到货后可以进行评价商品', '管理员回复');

-- ----------------------------
-- Table structure for discusswodeliangyuan
-- ----------------------------
DROP TABLE IF EXISTS `discusswodeliangyuan`;
CREATE TABLE `discusswodeliangyuan`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户名',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评论内容',
  `reply` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '回复内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1651575334747 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '我的良缘评论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of discusswodeliangyuan
-- ----------------------------
INSERT INTO `discusswodeliangyuan` VALUES (181, '2022-05-03 18:47:03', 1, 1, '用户名1', '评论内容1', '回复内容1');
INSERT INTO `discusswodeliangyuan` VALUES (182, '2022-05-03 18:47:03', 2, 2, '用户名2', '评论内容2', '回复内容2');
INSERT INTO `discusswodeliangyuan` VALUES (183, '2022-05-03 18:47:03', 3, 3, '用户名3', '评论内容3', '回复内容3');
INSERT INTO `discusswodeliangyuan` VALUES (184, '2022-05-03 18:47:03', 4, 4, '用户名4', '评论内容4', '回复内容4');
INSERT INTO `discusswodeliangyuan` VALUES (185, '2022-05-03 18:47:03', 5, 5, '用户名5', '评论内容5', '回复内容5');
INSERT INTO `discusswodeliangyuan` VALUES (186, '2022-05-03 18:47:03', 6, 6, '用户名6', '评论内容6', '回复内容6');
INSERT INTO `discusswodeliangyuan` VALUES (1651575334746, '2022-05-03 18:55:34', 1651575300979, 1651575032166, '111', '用户评论', NULL);

-- ----------------------------
-- Table structure for hunlianketang
-- ----------------------------
DROP TABLE IF EXISTS `hunlianketang`;
CREATE TABLE `hunlianketang`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '标题',
  `fengmian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '封面',
  `neirong` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '内容',
  `hunlianketang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '婚恋课堂',
  `xiangqin` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '相亲',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1652940184361 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '婚恋课堂' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hunlianketang
-- ----------------------------
INSERT INTO `hunlianketang` VALUES (1652939304987, '2022-05-19 13:48:24', '正确的恋爱观', 'upload/1653368418346.jpg', '什么是正确的恋爱观呢？应该是双向奔赴！', 'upload/1653392332661.mp4', '<p>双向奔赴的恋爱才最值得期待！</p>');
INSERT INTO `hunlianketang` VALUES (1652939698255, '2022-05-19 13:54:57', '陈果老师谈恋爱', 'upload/1653368461507.jpg', '为什么丘比特是闭着眼射箭的？', 'upload/1653368466990.mp4', '<p>世界上真正重要的东西，并不是用眼睛去看的</p>');
INSERT INTO `hunlianketang` VALUES (1652940184360, '2022-05-19 14:03:03', '我爱你的多种表达', 'upload/1653368489425.jpg', '用多种语言说我爱你', 'upload/1653368495159.mp4', '<p>所爱隔山海，山海且可平</p>');

-- ----------------------------
-- Table structure for jingdianfenlei
-- ----------------------------
DROP TABLE IF EXISTS `jingdianfenlei`;
CREATE TABLE `jingdianfenlei`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jingdianfenlei` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '景点分类',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1652942849156 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '景点分类' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jingdianfenlei
-- ----------------------------
INSERT INTO `jingdianfenlei` VALUES (1652942837412, '2022-05-19 14:47:16', '古迹');
INSERT INTO `jingdianfenlei` VALUES (1652942842758, '2022-05-19 14:47:22', '风景');
INSERT INTO `jingdianfenlei` VALUES (1652942849155, '2022-05-19 14:47:28', '游玩');

-- ----------------------------
-- Table structure for jingdiangoupiao
-- ----------------------------
DROP TABLE IF EXISTS `jingdiangoupiao`;
CREATE TABLE `jingdiangoupiao`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `goupiaobianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '购票编号',
  `jingdianmingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '景点名称',
  `jingdianfenlei` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '景点分类',
  `menpiao` int(11) DEFAULT NULL COMMENT '门票',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `zongjiage` int(11) DEFAULT NULL COMMENT '总价格',
  `goupiaoshijian` date DEFAULT NULL COMMENT '购票时间',
  `yonghuzhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户姓名',
  `ispay` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `goupiaobianhao`(`goupiaobianhao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '景点购票' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for jingdianxinxi
-- ----------------------------
DROP TABLE IF EXISTS `jingdianxinxi`;
CREATE TABLE `jingdianxinxi`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jingdianbianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '景点编号',
  `jingdianmingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '景点名称',
  `jingdianfenlei` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '景点分类',
  `dengji` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '等级',
  `jingdiantupian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '景点图片',
  `menpiao` int(11) NOT NULL COMMENT '门票',
  `kaifangshijian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '开放时间',
  `fuwudianhua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '服务电话',
  `xiangxidizhi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '详细地址',
  `dangdishifouyouyiqing` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '当地是否有疫情',
  `jingdianjieshao` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '景点介绍',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `jingdianbianhao`(`jingdianbianhao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1652943097699 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '景点信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jingdianxinxi
-- ----------------------------
INSERT INTO `jingdianxinxi` VALUES (1652942901891, '2022-05-19 14:48:21', '1652942851903', '少林寺', '古迹', 'AAAAA', 'upload/1653367685363.webp', 89, '8：00', '13623992794', '中原区科学大道136号郑州轻工业大学', '否', '<p>高端大气上档次</p>');
INSERT INTO `jingdianxinxi` VALUES (1652942973239, '2022-05-19 14:49:32', '1652942951971', '老君山', '风景', 'AAAAA', 'upload/1653367697239.webp', 89, '8：00', '13623992794', '中原区科学大道136号郑州轻工业大学', '否', '<p>高端大气上档次</p>');
INSERT INTO `jingdianxinxi` VALUES (1652943097698, '2022-05-19 14:51:36', '1652943075366', '方特', '游玩', 'AAAA', 'upload/1653367706863.jfif', 500, '8：00', '13623992794', '中原区科学大道136号郑州轻工业大学', '否', '<p>高端大气上档次</p>');

-- ----------------------------
-- Table structure for liwushangcheng
-- ----------------------------
DROP TABLE IF EXISTS `liwushangcheng`;
CREATE TABLE `liwushangcheng`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinbianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品分类',
  `tupian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '图片',
  `pinpai` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '品牌',
  `yanse` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '颜色',
  `dangdishifouyouyiqing` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '当地是否有疫情',
  `shangpinxiangqing` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '商品详情',
  `clicktime` datetime(0) DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT 0 COMMENT '点击次数',
  `price` float DEFAULT NULL COMMENT '价格',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `shangpinbianhao`(`shangpinbianhao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1652941753944 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '礼物商城' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of liwushangcheng
-- ----------------------------
INSERT INTO `liwushangcheng` VALUES (1652941093435, '2022-05-19 14:18:12', '1652940727610', 'Nick-球鞋', '球鞋', 'upload/1653367766078.jpg', 'Nick', '橘红色', '否', '<p>高端大气上档次，但是不推荐美国货。推荐国货。</p>', '2022-05-25 08:58:32', 3, 899);
INSERT INTO `liwushangcheng` VALUES (1652941156736, '2022-05-19 14:19:16', '1652941109067', 'Nick-鞋', '球鞋', 'upload/1653368545333.jpg', 'Nick', '白色', '是', '<p>高端大气上档次。但是推荐鸿星尔克</p>', '2022-05-24 13:09:12', 4, 1899);
INSERT INTO `liwushangcheng` VALUES (1652941224879, '2022-05-19 14:20:24', '1652941159996', '口红1', '口红', 'upload/1653368557210.jpg', '圣罗兰', '红色', '是', '<p>高端大气上档次</p>', '2022-05-25 08:57:55', 11, 899);
INSERT INTO `liwushangcheng` VALUES (1652941277200, '2022-05-19 14:21:16', '1652941228307', '口红2', '口红', 'upload/1653368658053.jpg', '阿玛尼', '红色', '否', '<p>高端大气上档次</p>', '2022-05-24 13:04:12', 1, 1899);
INSERT INTO `liwushangcheng` VALUES (1652941311896, '2022-05-19 14:21:51', '1652941279043', '口红3', '口红', 'upload/1653368669212.jpg', '兰蔻', '红色', '否', '<p>高端大气上档次</p>', '2022-05-25 11:13:38', 3, 155);
INSERT INTO `liwushangcheng` VALUES (1652941349905, '2022-05-19 14:22:29', '1652941314279', '篮球1', '篮球', 'upload/1653368734068.jpg', 'Nick', '黑色', '否', '<p>高端大气上档次</p>', '2022-05-24 13:05:28', 2, 788);
INSERT INTO `liwushangcheng` VALUES (1652941407448, '2022-05-19 14:23:27', '1652941352706', '手表1', '手表', 'upload/1653368745293.jpg', '卡西欧', '黑色', '否', '<p>高端大气上档次</p>', '2022-05-24 13:05:39', 5, 599);
INSERT INTO `liwushangcheng` VALUES (1652941452119, '2022-05-19 14:24:11', '1652941409870', '手表2', '手表', 'upload/1653368757630.jpg', '百达翡丽', '银色', '否', '<p>高端大气上档次</p>', '2022-05-24 13:05:51', 1, 5555);
INSERT INTO `liwushangcheng` VALUES (1652941492255, '2022-05-19 14:24:51', '1652941455916', '手表3', '手表', 'upload/1653368770439.jpg', '劳力士', '透光', '是', '<p>高端大气上档次</p>', '2022-05-24 13:06:03', 1, 6666);
INSERT INTO `liwushangcheng` VALUES (1652941548805, '2022-05-19 14:25:48', '1652941495663', '项链', '配饰', 'upload/1653368787946.jpg', '香奈儿', '白色', '否', '<p>高端大气上档次</p>', '2022-05-24 13:06:21', 1, 788);
INSERT INTO `liwushangcheng` VALUES (1652941591430, '2022-05-19 14:26:30', '1652941551318', '帽子', '配饰', 'upload/1653368803435.jpg', '古驰', '黑色', '否', '<p>高端大气上档次</p>', '2022-05-24 13:06:36', 1, 7556);
INSERT INTO `liwushangcheng` VALUES (1652941625578, '2022-05-19 14:27:04', '1652941595472', '香水1', '香水', 'upload/1653368852818.jpg', '维多利亚的秘密', '黑色', '否', '<p>高端大气上档次</p>', '2022-05-24 13:07:23', 1, 744);
INSERT INTO `liwushangcheng` VALUES (1652941673266, '2022-05-19 14:27:52', '1652941627466', '香水2', '香水', 'upload/1653368868221.jpg', '茅台', '白色', '是', '<p>高端大气上档次</p>', '2022-05-24 13:07:42', 1, 777);
INSERT INTO `liwushangcheng` VALUES (1652941704301, '2022-05-19 14:28:24', '1652941675095', '高达机车', '潮玩', 'upload/1653368882844.jpg', '乐高', '红色', '否', '<blockquote>高端大气上档次</blockquote>', '2022-05-24 13:07:57', 1, 7778);
INSERT INTO `liwushangcheng` VALUES (1652941753943, '2022-05-19 14:29:13', '1652941707229', '游戏机', '潮玩', 'upload/1653368895929.jpg', '任天堂', '红蓝色', '否', '<p>高端大气上档次</p>', '2022-05-24 13:08:09', 1, 955);

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `introduction` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '简介',
  `picture` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1651575245919 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '疫情公告' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (171, '2022-05-03 18:47:03', '疫情防控四大措施是什么？', '疫情防控四大措施: 戴口罩、勤洗手、常通风、少聚集. 个人是自己健康的第一责任人，将科普知识向社会公众特别是重点人群普及，推行健康文明的生活方式，形成人人有责、人人负责、主动防控、成为习惯的良好氛围，提升公众防疫能力和健康素养水平，制定新冠疫情防控科普宣传核心信息。', 'upload/1653367599772.webp', '<p>疫情防控四大措施: 戴口罩、勤洗手、常通风、少聚集. 个人是自己健康的第一责任人，将科普知识向社会公众特别是重点人群普及，推行健康文明的生活方式，形成人人有责、人人负责、主动防控、成为习惯的良好氛围，提升公众防疫能力和健康素养水平，制定新冠疫情防控科普宣传核心信息。</p>');
INSERT INTO `news` VALUES (172, '2022-05-03 18:47:03', '疫情防控措施有哪些？', '疫情防控措施主要包括以下几个方面：', 'upload/1653367613613.jfif', '<p>疫情防控措施主要包括以下几个方面：</p><p>1、尽量减少外出活动，外出佩戴口罩。</p><p>2、主动做好健康监测，自觉发热时主动测量体温。若出现可疑症状，应主动戴上口罩及时就近就医。</p><p>3、办公场所要注意加强通风清洁，配备洗手液、消毒剂等防护用品。食堂也是人群密集的场所，建议错峰吃饭，减少聚集。</p><p>4、注意营养，适度运动。</p><p>5、出行前若无可疑症状，可正常出行。若出现可疑症状，建议居家休息和就地就医，待症状消失后再启程。</p>');
INSERT INTO `news` VALUES (173, '2022-05-03 18:47:03', '疫情防控心得体会', '   这次疫情对于所有大学生来说都是一件要永记心中的事情，在疫情期间，大学生们的疫情防控行动也表现了当代大学生们的爱国之情，下面小编就来为大家举例优秀的疫情防控心得体会2000字大学生范文，供大家来参考和学习。', 'upload/1653367629883.jfif', '<p class=\"ql-align-justify\">新型冠状病毒感染的肺炎疫情发生以来，各级党委和政府及有关部门，将人民群众生命安全和身体健康放在第一位，发动一切力量，抵御病魔，社会各界积极响应，联合行动，打起了戮力一心的配合战。</p><p class=\"ql-align-justify\">&nbsp;&nbsp;疫情就是命令，防控就是责任。面对严峻形势，作为疫情抗击第一线的广大医务人员们“逆向而行”，在年夜饭饭桌上和家人告别，驰援武汉，日夜奋战，坚守岗位，忘我工作，发扬了敬佑生命、救死扶伤、甘于奉献、大爱无疆的伟大精神。作为医学生的我们，更是被身处一线的老师们保护在羽翼之下，但希波克拉底的誓言一直提醒着我，我不仅仅是一名医学生，更是一名党员，一名新时代的奉献者，要充分发挥党员的先进性和责任感，以人民群众的利益为先，积极投身于疫情防控事业中，尽一份哪怕微小绵薄的力量。</p><p class=\"ql-align-justify\">&nbsp;&nbsp;在这次疫情防控攻坚战中，作为一名医学生党员，同样是重任在肩、义不容辞，我和同学们首先做到了</p><p class=\"ql-align-justify\">&nbsp;&nbsp;利用微信、微博等发达的信息网络，向周边的朋友们普及了本次疫情的严重性、防控工作的重要性、自身防护的必要性，鼓励亲朋好友一起相应钟南山院士关于主动利用春节在家隔离疫情的号召</p><p class=\"ql-align-justify\">&nbsp;&nbsp;不造谣、不信谣、不传谣，甚至利用自己的医学知识和鉴别能力，主动辟谣，宣传正确正规的新闻平台和及时准确的权威消息，帮助群众擦亮眼睛为了充分发挥党员的先锋模范作用，将小我融入大我，贡献自己的力量，我们还做了这些</p><p class=\"ql-align-justify\">&nbsp;&nbsp;作为志愿者，在加强自身防护的情况下，参与了自己身处的社区、小区的清洁消毒工作，以实际行动向周围的群众普及健康防疫的知识</p><p class=\"ql-align-justify\">&nbsp;&nbsp;跟随社区基层党组织，按照上级组织机关的要求，作为志愿者，参与走访了社区住户，调查情况，并普及防疫知识，协助测量体温、宣传防控思想等活动，从一点一滴的小事做起万众一心，没有翻不过的山，心手相牵，没有跨不过的坎。</p><p class=\"ql-align-justify\">&nbsp;&nbsp;在党中央的坚强领导下，在全国人民的共同努力下，我们学生党员在其中积极发挥先锋模范作用，虽然没能奋战在抗争的第一线，也应当竭尽所能，从维护人民群众的利益出发，凝聚起众志成城、全力以赴、共克时艰的强大力量，打赢这场疫情防控阻击战!</p>');
INSERT INTO `news` VALUES (174, '2022-05-03 18:47:03', '疫情最新消息', '疫情远没有结束', 'upload/1653367649092.jfif', '<p>加强自身防疫</p>');
INSERT INTO `news` VALUES (1651575245918, '2022-05-03 18:54:05', '疫情公告', '爱真心:世纪佳缘旗下会员制婚恋交友网站,100%注册会员实名认证。爱真心面向中国城市白领人群,帮助用户寻找真诚、有共同追求的另一半。力求为用户打造真诚、纯粹、简单、现代的婚恋交友网站', 'upload/1653367660217.jfif', '<p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">爱真心:世纪佳缘旗下会员制</span><span style=\"background-color: rgb(255, 255, 255); color: rgb(247, 49, 49);\">婚恋</span><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">交友网站,100%注册会员实名认证。爱真心面向中国城市白领人群,帮助用户寻找真诚、有共同追求的另一半。力求为用户打造真诚、纯粹、简单、现代的</span><span style=\"background-color: rgb(255, 255, 255); color: rgb(247, 49, 49);\">婚恋</span><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">交友网站</span></p>');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'liwushangcheng' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT 0 COMMENT '价格',
  `discountprice` float DEFAULT 0 COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT 0 COMMENT '总价格',
  `discounttotal` float DEFAULT 0 COMMENT '折扣总价格',
  `type` int(11) DEFAULT 1 COMMENT '支付类型',
  `status` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '状态',
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '收货人',
  `logistics` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '物流',
  `goodtype` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商品类型',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `orderid`(`orderid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1653440312933 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (1653440312932, '2022-05-25 08:58:32', '20225258583236009032', 'liwushangcheng', 1652929084646, 1652941093435, 'Nick-球鞋', 'upload/1653367766078.jpg', 1, 899, 899, 899, 899, 1, '已支付', '中原区科学大道136号郑州轻工业大学', '13623998894', '111', NULL, NULL);

-- ----------------------------
-- Table structure for shangpinfenlei
-- ----------------------------
DROP TABLE IF EXISTS `shangpinfenlei`;
CREATE TABLE `shangpinfenlei`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinfenlei` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品分类',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1652940471413 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品分类' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shangpinfenlei
-- ----------------------------
INSERT INTO `shangpinfenlei` VALUES (1652940370157, '2022-05-19 14:06:09', '球鞋');
INSERT INTO `shangpinfenlei` VALUES (1652940378436, '2022-05-19 14:06:17', '口红');
INSERT INTO `shangpinfenlei` VALUES (1652940389540, '2022-05-19 14:06:29', '篮球');
INSERT INTO `shangpinfenlei` VALUES (1652940416033, '2022-05-19 14:06:55', '手表');
INSERT INTO `shangpinfenlei` VALUES (1652940426794, '2022-05-19 14:07:06', '配饰');
INSERT INTO `shangpinfenlei` VALUES (1652940450552, '2022-05-19 14:07:29', '香水');
INSERT INTO `shangpinfenlei` VALUES (1652940471412, '2022-05-19 14:07:50', '潮玩');

-- ----------------------------
-- Table structure for storeup
-- ----------------------------
DROP TABLE IF EXISTS `storeup`;
CREATE TABLE `storeup`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '表名',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收藏图片',
  `type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩)',
  `inteltype` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '推荐类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1653448440713 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '收藏表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of storeup
-- ----------------------------
INSERT INTO `storeup` VALUES (1651575328791, '2022-05-03 18:55:28', 1651575032166, 1651575300979, 'wodeliangyuan', '111', 'upload/1651575284615.jpg', '1', '湖南');
INSERT INTO `storeup` VALUES (1651575427759, '2022-05-03 18:57:07', 1651575032166, 1651575229493, 'jingdianxinxi', '峨眉山', 'upload/1651575205566.jpg', '1', NULL);
INSERT INTO `storeup` VALUES (1653394467439, '2022-05-24 20:14:26', 1652929084646, 1652934639497, 'wodeliangyuan', '风夕', 'upload/1653368396465.jpg', '1', '湖南');
INSERT INTO `storeup` VALUES (1653440242428, '2022-05-25 08:57:22', 1652929084646, 1652942973239, 'jingdianxinxi', '老君山', 'upload/1653367697239.webp', '1', NULL);
INSERT INTO `storeup` VALUES (1653440253754, '2022-05-25 08:57:33', 1652929084646, 1652942205206, 'dianyingxinxi', '大话西游', 'upload/1653367744516.webp', '1', NULL);
INSERT INTO `storeup` VALUES (1653440273747, '2022-05-25 08:57:53', 1652929084646, 1652941224879, 'liwushangcheng', '口红1', 'upload/1653368557210.jpg', '1', NULL);
INSERT INTO `storeup` VALUES (1653448440712, '2022-05-25 11:14:00', 1652929084646, 1652931892988, 'wodeliangyuan', '紫萱', 'upload/1653368381802.jpg', '1', '河南');

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `tablename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '表名',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '角色',
  `token` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'token表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES (1, 11, '用户账号1', 'yonghu', '用户', '1ua63rmdsnjqcui497y256c757jmu2ij', '2022-05-03 18:48:47', '2022-05-03 19:48:47');
INSERT INTO `token` VALUES (2, 1651575032166, '111', 'yonghu', '用户', 'byplri3bsp6nb856gtwsc21t7sapsghz', '2022-05-03 18:50:42', '2022-05-13 12:28:14');
INSERT INTO `token` VALUES (3, 1, 'abo', 'users', '管理员', 'yxiin6dwrogi4zd91er8usfiamfcl6ph', '2022-05-03 18:51:03', '2022-06-06 13:56:07');
INSERT INTO `token` VALUES (4, 1652929084646, '111', 'yonghu', '用户', 'c2yg5ey80f6o6zh56l099mqq4tcnpjmf', '2022-05-19 10:58:15', '2022-06-06 13:56:24');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'root', '123456', '管理员', '2022-05-03 18:47:03');

-- ----------------------------
-- Table structure for wodeliangyuan
-- ----------------------------
DROP TABLE IF EXISTS `wodeliangyuan`;
CREATE TABLE `wodeliangyuan`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户姓名',
  `xingbie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '年龄',
  `xueli` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '学历',
  `tupian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '图片',
  `zuoyouming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '座右铭',
  `xingzuo` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '星座',
  `xihao` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '喜好',
  `diqu` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '地区',
  `shifouchuyuyiqu` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '是否处于疫区',
  `shifougoufang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '是否购房',
  `hunyinzhuangkuang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '婚姻状况',
  `jiatingqingkuang` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '家庭情况',
  `duitadeqidai` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '对他的期待',
  `ziwojieshao` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '自我介绍',
  `clicktime` datetime(0) DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT 0 COMMENT '点击次数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1652934639498 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '我的良缘' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wodeliangyuan
-- ----------------------------
INSERT INTO `wodeliangyuan` VALUES (1652930978334, '2022-05-19 11:29:37', '亲爱的', '张三', '男', '18', '硕士', 'upload/1653121678479.jpg', '奋斗！', '射手座', '打篮球、健身、编程', '北京', '是', '是', '未婚', '家有一个姐姐', '希望对方有车有房有存款', '<p>我叫张三、是一个守法公民</p>', '2022-05-25 11:13:17', 13);
INSERT INTO `wodeliangyuan` VALUES (1652931090796, '2022-05-19 11:31:30', '你是否会记得', '李四', '男', '18', '本科', 'upload/1653368279179.jpg', '斗争！', '处女座', '喜欢看电影打游戏。', '上海', '否', '否', '未婚', '独生子女', '也是独生子女', '<p>没车没房没存、三无人员</p>', '2022-05-24 12:57:37', 4);
INSERT INTO `wodeliangyuan` VALUES (1652931294747, '2022-05-19 11:34:53', '王五', '王五', '男', '18', '本科', 'upload/1653368346581.jpg', '更高！', '天枰座', '打球', '广州', '否', '否', '未婚', '独生子女', '健康', '<p>家有两套房</p>', '2022-05-24 12:59:01', 1);
INSERT INTO `wodeliangyuan` VALUES (1652931386634, '2022-05-19 11:36:25', '雪见', '雪见', '女', '18', '本科', 'upload/1653368362680.jpg', '加油！', '处女座', '爱好男', '广州', '否', '否', '未婚', '独生子女', '健康强壮', '<p>美丽大方又好看</p>', '2022-05-24 12:59:14', 2);
INSERT INTO `wodeliangyuan` VALUES (1652931892988, '2022-05-19 11:44:52', '紫萱', '紫萱', '女', '18', '本科', 'upload/1653368381802.jpg', '变美', '处女座', '小动物', '河南', '否', '是', '已婚', '有钱', '健康', '<p>家中有屋又有田</p>', '2022-06-06 12:56:31', 8);
INSERT INTO `wodeliangyuan` VALUES (1652934639497, '2022-05-19 12:30:39', '风夕', '风夕', '女', '18', '本科', 'upload/1653368396465.jpg', '加油！', '处女座', '健身', '湖南', '否', '否', '未婚', '独生子女', '健康', '<p>生活乐无边</p>', '2022-05-25 08:26:27', 17);

-- ----------------------------
-- Table structure for yonghu
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户姓名',
  `mima` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `xingbie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '头像',
  `dianhuahaoma` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '电话号码',
  `nianling` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '年龄',
  `xueli` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '学历',
  `zuoyouming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '座右铭',
  `money` float DEFAULT 0 COMMENT '余额',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `yonghuzhanghao`(`yonghuzhanghao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1652929084647 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES (1652929084646, '2022-05-19 10:58:04', '111', '111', '111', '女', 'upload/1653121620395.jpg', '13623992794', '11', '本科', '大大大', 1e15);

SET FOREIGN_KEY_CHECKS = 1;
