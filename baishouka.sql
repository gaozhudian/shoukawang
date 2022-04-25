/*
 Navicat Premium Data Transfer

 Source Server         : 1
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : baishouka

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 16/03/2021 06:55:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ln_account_number
-- ----------------------------
DROP TABLE IF EXISTS `ln_account_number`;
CREATE TABLE `ln_account_number`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分类(1支付宝 2 银行卡)',
  `cardnum` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账号',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预留电话',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '真实姓名',
  `opening_bank` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '开户行',
  `user_id` int(11) NULL DEFAULT NULL,
  `add_time` int(11) NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ln_account_number
-- ----------------------------

-- ----------------------------
-- Table structure for ln_action_log
-- ----------------------------
DROP TABLE IF EXISTS `ln_action_log`;
CREATE TABLE `ln_action_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `money` decimal(11, 2) NULL DEFAULT 0.00 COMMENT '操作的模块/控制器/方法',
  `type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '类型(1登录  2卡券回收 3提现)',
  `add_time` int(10) NULL DEFAULT NULL,
  `ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `message` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '信息',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 640 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ln_action_log
-- ----------------------------
INSERT INTO `ln_action_log` VALUES (638, 90, 0.00, '1', 1578881997, '90.0.2.168', '');
INSERT INTO `ln_action_log` VALUES (639, 90, 0.00, '1', 1615846836, '192.168.101.10', '');

-- ----------------------------
-- Table structure for ln_admin
-- ----------------------------
DROP TABLE IF EXISTS `ln_admin`;
CREATE TABLE `ln_admin`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `nick_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户昵称',
  `user_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `email` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '邮箱',
  `phone` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '手机号',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '密码',
  `sex` tinyint(1) NOT NULL DEFAULT 0 COMMENT '性别 1-男,2-女,0-保密 默认0',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '用户状态  0禁用  1启用 2 删除',
  `reg_time` int(10) NOT NULL DEFAULT 0 COMMENT '注册时间',
  `reg_ip` char(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '注册ip',
  `last_login_ip` char(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '上次登录ip',
  `last_login_time` int(10) NOT NULL DEFAULT 0 COMMENT '上次登录时间',
  `card_type` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '管理员表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ln_admin
-- ----------------------------
INSERT INTO `ln_admin` VALUES (1, '管理员', 'admin', 'admin@zgymw.com', '13800000000', '8351b6083df44414bd4b3ec255382c4b', 0, 0, 0, '', '', 0, 110);

-- ----------------------------
-- Table structure for ln_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `ln_admin_log`;
CREATE TABLE `ln_admin_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `admin_id` int(10) NOT NULL,
  `admin_phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作的模块/控制器/方法',
  `module` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `operate_time` int(10) NULL DEFAULT NULL,
  `ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 479325 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ln_admin_log
-- ----------------------------
INSERT INTO `ln_admin_log` VALUES (478960, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1577716232, '10.168.1.132');
INSERT INTO `ln_admin_log` VALUES (478961, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1577716238, '10.168.1.132');
INSERT INTO `ln_admin_log` VALUES (478962, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1577716244, '10.168.1.132');
INSERT INTO `ln_admin_log` VALUES (478963, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1577716250, '10.168.1.132');
INSERT INTO `ln_admin_log` VALUES (478964, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1577716256, '10.168.1.132');
INSERT INTO `ln_admin_log` VALUES (478965, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1577716261, '10.168.1.132');
INSERT INTO `ln_admin_log` VALUES (478966, 1, '18325497609', 'Sqnbcadmin/Card/index', 1577716262, '10.168.1.132');
INSERT INTO `ln_admin_log` VALUES (478967, 1, '18325497609', 'Sqnbcadmin/CardType/index', 1577716262, '10.168.1.132');
INSERT INTO `ln_admin_log` VALUES (478968, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1577716266, '10.168.1.132');
INSERT INTO `ln_admin_log` VALUES (478969, 1, '18325497609', 'Sqnbcadmin/SaleRecord/index', 1577716269, '10.168.1.132');
INSERT INTO `ln_admin_log` VALUES (478970, 1, '18325497609', 'Sqnbcadmin/SaleRecord/index', 1577716270, '10.168.1.132');
INSERT INTO `ln_admin_log` VALUES (478971, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1577716271, '10.168.1.132');
INSERT INTO `ln_admin_log` VALUES (478972, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1577716276, '10.168.1.132');
INSERT INTO `ln_admin_log` VALUES (478973, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1577716281, '10.168.1.132');
INSERT INTO `ln_admin_log` VALUES (478974, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1577716286, '10.168.1.132');
INSERT INTO `ln_admin_log` VALUES (478975, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1577716291, '10.168.1.132');
INSERT INTO `ln_admin_log` VALUES (478976, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1577716296, '10.168.1.132');
INSERT INTO `ln_admin_log` VALUES (478977, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1577716301, '10.168.1.132');
INSERT INTO `ln_admin_log` VALUES (478978, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1577716306, '10.168.1.132');
INSERT INTO `ln_admin_log` VALUES (478979, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1577716311, '10.168.1.132');
INSERT INTO `ln_admin_log` VALUES (478980, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1577716316, '10.168.1.132');
INSERT INTO `ln_admin_log` VALUES (478981, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1577716321, '10.168.1.132');
INSERT INTO `ln_admin_log` VALUES (478982, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1577716326, '10.168.1.132');
INSERT INTO `ln_admin_log` VALUES (478983, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1577716331, '10.168.1.132');
INSERT INTO `ln_admin_log` VALUES (478984, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1577716336, '10.168.1.132');
INSERT INTO `ln_admin_log` VALUES (478985, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1577716341, '10.168.1.132');
INSERT INTO `ln_admin_log` VALUES (478986, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1577716346, '10.168.1.132');
INSERT INTO `ln_admin_log` VALUES (478987, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1577716351, '10.168.1.132');
INSERT INTO `ln_admin_log` VALUES (478988, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1577716356, '10.168.1.132');
INSERT INTO `ln_admin_log` VALUES (478989, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1577716361, '10.168.1.132');
INSERT INTO `ln_admin_log` VALUES (478990, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1577716366, '10.168.1.132');
INSERT INTO `ln_admin_log` VALUES (478991, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1577716371, '10.168.1.132');
INSERT INTO `ln_admin_log` VALUES (478992, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1577716376, '10.168.1.132');
INSERT INTO `ln_admin_log` VALUES (478993, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1577716381, '10.168.1.132');
INSERT INTO `ln_admin_log` VALUES (478994, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1577716386, '10.168.1.132');
INSERT INTO `ln_admin_log` VALUES (478995, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1577716391, '10.168.1.132');
INSERT INTO `ln_admin_log` VALUES (478996, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1577716396, '10.168.1.132');
INSERT INTO `ln_admin_log` VALUES (478997, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1577716401, '10.168.1.132');
INSERT INTO `ln_admin_log` VALUES (478998, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1577716406, '10.168.1.132');
INSERT INTO `ln_admin_log` VALUES (478999, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1577716411, '10.168.1.132');
INSERT INTO `ln_admin_log` VALUES (479000, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1577716416, '10.168.1.132');
INSERT INTO `ln_admin_log` VALUES (479001, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1577716421, '10.168.1.132');
INSERT INTO `ln_admin_log` VALUES (479002, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1577716426, '10.168.1.132');
INSERT INTO `ln_admin_log` VALUES (479003, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1577716431, '10.168.1.132');
INSERT INTO `ln_admin_log` VALUES (479004, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1577716436, '10.168.1.132');
INSERT INTO `ln_admin_log` VALUES (479005, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1577716441, '10.168.1.132');
INSERT INTO `ln_admin_log` VALUES (479006, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1577716446, '10.168.1.132');
INSERT INTO `ln_admin_log` VALUES (479007, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1577716451, '10.168.1.132');
INSERT INTO `ln_admin_log` VALUES (479008, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1577716456, '10.168.1.132');
INSERT INTO `ln_admin_log` VALUES (479009, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1577716461, '10.168.1.132');
INSERT INTO `ln_admin_log` VALUES (479010, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1577716466, '10.168.1.132');
INSERT INTO `ln_admin_log` VALUES (479011, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1577716471, '10.168.1.132');
INSERT INTO `ln_admin_log` VALUES (479012, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1577716476, '10.168.1.132');
INSERT INTO `ln_admin_log` VALUES (479013, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1577716481, '10.168.1.132');
INSERT INTO `ln_admin_log` VALUES (479014, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1577716486, '10.168.1.132');
INSERT INTO `ln_admin_log` VALUES (479015, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1577716491, '10.168.1.132');
INSERT INTO `ln_admin_log` VALUES (479016, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1577716496, '10.168.1.132');
INSERT INTO `ln_admin_log` VALUES (479017, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1577716501, '10.168.1.132');
INSERT INTO `ln_admin_log` VALUES (479018, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1577716506, '10.168.1.132');
INSERT INTO `ln_admin_log` VALUES (479019, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1577716511, '10.168.1.132');
INSERT INTO `ln_admin_log` VALUES (479020, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1577716516, '10.168.1.132');
INSERT INTO `ln_admin_log` VALUES (479021, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1577716521, '10.168.1.132');
INSERT INTO `ln_admin_log` VALUES (479022, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1577716526, '10.168.1.132');
INSERT INTO `ln_admin_log` VALUES (479023, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1577716531, '10.168.1.132');
INSERT INTO `ln_admin_log` VALUES (479024, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1577716536, '10.168.1.132');
INSERT INTO `ln_admin_log` VALUES (479025, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1577716541, '10.168.1.132');
INSERT INTO `ln_admin_log` VALUES (479026, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1577716546, '10.168.1.132');
INSERT INTO `ln_admin_log` VALUES (479027, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1577716551, '10.168.1.132');
INSERT INTO `ln_admin_log` VALUES (479028, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1577716556, '10.168.1.132');
INSERT INTO `ln_admin_log` VALUES (479029, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1577716561, '10.168.1.132');
INSERT INTO `ln_admin_log` VALUES (479030, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1577716566, '10.168.1.132');
INSERT INTO `ln_admin_log` VALUES (479031, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1577716572, '10.168.1.132');
INSERT INTO `ln_admin_log` VALUES (479032, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1577716578, '10.168.1.132');
INSERT INTO `ln_admin_log` VALUES (479033, 1, '18325497609', 'Sqnbcadmin/Index/index', 1578880303, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479034, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1578880330, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479035, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1578880336, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479036, 1, '18325497609', 'Sqnbcadmin/User/index', 1578880338, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479037, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1578880341, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479038, 1, '18325497609', 'Sqnbcadmin/Admin/index', 1578880345, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479039, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1578880346, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479040, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1578880351, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479041, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1578880356, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479042, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1578880361, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479043, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1578880366, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479044, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1578880371, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479045, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1578880376, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479046, 1, '18325497609', 'Sqnbcadmin/Admin/edit', 1578880376, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479047, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1578880381, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479048, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1578880386, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479049, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1578880391, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479050, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1578880396, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479051, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1578880401, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479052, 1, '18325497609', 'Sqnbcadmin/Card/ajaxcardnotice', 1578880406, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479053, 1, '18325497609', 'Sqnbcadmin/Admin/edit', 1578880407, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479054, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578880411, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479055, 1, '13800000000', 'Sqnbcadmin/Member/adminsetting', 1578880411, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479056, 1, '13800000000', 'Sqnbcadmin/Index/index', 1578880420, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479057, 1, '13800000000', 'Sqnbcadmin/User/index', 1578880424, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479058, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578880425, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479059, 1, '13800000000', 'Sqnbcadmin/CardType/index', 1578880428, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479060, 1, '13800000000', 'Sqnbcadmin/Card/index', 1578880429, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479061, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578880430, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479062, 1, '13800000000', 'Sqnbcadmin/CardType/index', 1578880431, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479063, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578880435, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479064, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578880440, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479065, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578880445, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479066, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578880450, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479067, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578880455, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479068, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578880460, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479069, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578880465, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479070, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578880470, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479071, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578880475, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479072, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578880480, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479073, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578880485, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479074, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578880490, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479075, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578880495, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479076, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578880500, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479077, 1, '13800000000', 'Sqnbcadmin/Card/index', 1578880505, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479078, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578880506, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479079, 1, '13800000000', 'Sqnbcadmin/Card/edit', 1578880507, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479080, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578880511, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479081, 1, '13800000000', 'Sqnbcadmin/SaleRecord/index', 1578880514, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479082, 1, '13800000000', 'Sqnbcadmin/SaleRecord/index', 1578880515, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479083, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578880516, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479084, 1, '13800000000', 'Sqnbcadmin/SaleRecord/index', 1578880517, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479085, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578880521, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479086, 1, '13800000000', 'Sqnbcadmin/Company/index', 1578880524, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479087, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578880526, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479088, 1, '13800000000', 'Sqnbcadmin/Company/edit', 1578880526, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479089, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578880531, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479090, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578880536, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479091, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578880541, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479092, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578880546, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479093, 1, '13800000000', 'Sqnbcadmin/Company/edit', 1578880550, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479094, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578880551, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479095, 1, '13800000000', 'Sqnbcadmin/Company/index', 1578880553, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479096, 1, '13800000000', 'Sqnbcadmin/Company/edit', 1578880555, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479097, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578880556, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479098, 1, '13800000000', 'Sqnbcadmin/PaymentRecord/aliapply', 1578880560, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479099, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578880561, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479100, 1, '13800000000', 'Sqnbcadmin/PaymentRecord/bankapply', 1578880561, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479101, 1, '13800000000', 'Sqnbcadmin/PaymentRecord/index', 1578880562, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479102, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578880566, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479103, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578880571, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479104, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578880576, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479105, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578880581, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479106, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578880586, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479107, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578880591, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479108, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578880596, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479109, 1, '13800000000', 'Sqnbcadmin/Announcement/index', 1578880599, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479110, 1, '13800000000', 'Sqnbcadmin/Announcement/edit', 1578880601, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479111, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578880601, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479112, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578880606, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479113, 1, '13800000000', 'Sqnbcadmin/Config/group', 1578880607, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479114, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578880611, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479115, 1, '13800000000', 'Sqnbcadmin/Config/index', 1578880615, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479116, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578880618, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479117, 1, '13800000000', 'Sqnbcadmin/User/index', 1578880621, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479118, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578880621, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479119, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578880626, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479120, 1, '13800000000', 'Sqnbcadmin/User/realname', 1578880628, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479121, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578880632, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479122, 1, '13800000000', 'Sqnbcadmin/User/realname', 1578880633, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479123, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578880636, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479124, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578880641, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479125, 1, '13800000000', 'Sqnbcadmin/Index/index', 1578881004, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479126, 1, '13800000000', 'Sqnbcadmin/User/index', 1578881006, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479127, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578881010, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479128, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578881015, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479129, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578881020, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479130, 1, '13800000000', 'Sqnbcadmin/User/realname', 1578881020, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479131, 1, '13800000000', 'Sqnbcadmin/User/realname', 1578881022, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479132, 1, '13800000000', 'Sqnbcadmin/SaleRecord/index', 1578881022, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479133, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578881025, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479134, 1, '13800000000', 'Sqnbcadmin/User/realname', 1578881028, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479135, 1, '13800000000', 'Sqnbcadmin/User/index', 1578881029, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479136, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578881030, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479137, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578881035, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479138, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578881040, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479139, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578881045, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479140, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578881051, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479141, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578881057, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479142, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578881063, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479143, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578881069, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479144, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578881075, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479145, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578881081, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479146, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578881087, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479147, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578881093, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479148, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578881100, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479149, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578881107, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479150, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578881113, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479151, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578881119, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479152, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578881125, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479153, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578881131, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479154, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578881137, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479155, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578881143, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479156, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578881149, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479157, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578881155, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479158, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578881161, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479159, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578881167, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479160, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578881173, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479161, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578881179, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479162, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578881185, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479163, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578881191, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479164, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578881197, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479165, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578881204, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479166, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1578881210, '90.0.2.168');
INSERT INTO `ln_admin_log` VALUES (479167, 1, '13800000000', 'Sqnbcadmin/Index/index', 1615847006, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479168, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847014, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479169, 1, '13800000000', 'Sqnbcadmin/User/index', 1615847016, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479170, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847019, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479171, 1, '13800000000', 'Sqnbcadmin/CardType/index', 1615847023, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479172, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847025, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479173, 1, '13800000000', 'Sqnbcadmin/Card/index', 1615847027, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479174, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847029, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479175, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847034, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479176, 1, '13800000000', 'Sqnbcadmin/Company/index', 1615847038, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479177, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847040, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479178, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847044, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479179, 1, '13800000000', 'Sqnbcadmin/Config/group', 1615847046, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479180, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847049, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479181, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847054, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479182, 1, '13800000000', 'Sqnbcadmin/Config/group', 1615847056, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479183, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847059, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479184, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847064, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479185, 1, '13800000000', 'Sqnbcadmin/Config/save', 1615847069, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479186, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847071, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479187, 1, '13800000000', 'Sqnbcadmin/Config/index', 1615847073, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479188, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847076, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479189, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847079, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479190, 1, '13800000000', 'Sqnbcadmin/Config/edit', 1615847083, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479191, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847085, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479192, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847089, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479193, 1, '13800000000', 'Sqnbcadmin/Config/edit', 1615847092, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479194, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847094, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479195, 1, '13800000000', 'Sqnbcadmin/Config/index', 1615847096, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479196, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847099, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479197, 1, '13800000000', 'Sqnbcadmin/Config/edit', 1615847102, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479198, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847104, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479199, 1, '13800000000', 'Sqnbcadmin/Config/index', 1615847107, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479200, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847109, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479201, 1, '13800000000', 'Sqnbcadmin/Config/edit', 1615847113, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479202, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847116, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479203, 1, '13800000000', 'Sqnbcadmin/Config/edit', 1615847118, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479204, 1, '13800000000', 'Sqnbcadmin/Config/index', 1615847120, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479205, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847123, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479206, 1, '13800000000', 'Sqnbcadmin/Config/index', 1615847125, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479207, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847127, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479208, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847129, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479209, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847134, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479210, 1, '13800000000', 'Sqnbcadmin/Config/index', 1615847137, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479211, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847139, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479212, 1, '13800000000', 'Sqnbcadmin/Config/edit', 1615847143, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479213, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847145, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479214, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847149, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479215, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847154, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479216, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847159, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479217, 1, '13800000000', 'Sqnbcadmin/Config/edit', 1615847163, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479218, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847165, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479219, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847170, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479220, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847175, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479221, 1, '13800000000', 'Sqnbcadmin/Config/group', 1615847179, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479222, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847181, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479223, 1, '13800000000', 'Sqnbcadmin/Announcement/index', 1615847184, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479224, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847187, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479225, 1, '13800000000', 'Sqnbcadmin/Announcement/edit', 1615847189, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479226, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847192, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479227, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847195, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479228, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847200, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479229, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847205, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479230, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847210, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479231, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847215, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479232, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847220, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479233, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847225, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479234, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847230, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479235, 1, '13800000000', 'Sqnbcadmin/Announcement/edit', 1615847232, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479236, 1, '13800000000', 'Sqnbcadmin/Announcement/index', 1615847237, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479237, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847239, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479238, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847242, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479239, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847248, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479240, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847254, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479241, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847260, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479242, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847266, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479243, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847272, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479244, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847277, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479245, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847282, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479246, 1, '13800000000', 'Sqnbcadmin/AuthManager/index', 1615847284, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479247, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847287, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479248, 1, '13800000000', 'Sqnbcadmin/Admin/index', 1615847290, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479249, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847293, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479250, 1, '13800000000', 'Sqnbcadmin/Admin/index', 1615847295, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479251, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847298, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479252, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847302, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479253, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847307, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479254, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847312, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479255, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847317, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479256, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847322, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479257, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847327, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479258, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847332, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479259, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847337, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479260, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847342, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479261, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847347, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479262, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847352, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479263, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847357, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479264, 1, '13800000000', 'Sqnbcadmin/Admin/index', 1615847359, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479265, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847362, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479266, 1, '13800000000', 'Sqnbcadmin/Index/index', 1615847364, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479267, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847372, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479268, 1, '13800000000', 'Sqnbcadmin/Member/adminsetting', 1615847376, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479269, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847378, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479270, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847382, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479271, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847387, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479272, 1, '13800000000', 'Sqnbcadmin/Member/adminsetting', 1615847391, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479273, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847393, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479274, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847397, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479275, 1, '13800000000', 'Sqnbcadmin/Index/index', 1615847399, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479276, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847407, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479277, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847413, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479278, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847419, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479279, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847425, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479280, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847431, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479281, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847437, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479282, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847444, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479283, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847449, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479284, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847455, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479285, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847461, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479286, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847469, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479287, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847473, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479288, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847479, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479289, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615847484, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479290, 1, '13800000000', 'Sqnbcadmin/Index/index', 1615848741, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479291, 1, '13800000000', 'Sqnbcadmin/User/index', 1615848746, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479292, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615848749, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479293, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615848754, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479294, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615848761, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479295, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615848766, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479296, 1, '13800000000', 'Sqnbcadmin/Config/group', 1615848768, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479297, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615848771, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479298, 1, '13800000000', 'Sqnbcadmin/Config/index', 1615848773, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479299, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615848776, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479300, 1, '13800000000', 'Sqnbcadmin/Config/edit', 1615848778, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479301, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615848781, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479302, 1, '13800000000', 'Sqnbcadmin/Config/edit', 1615848783, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479303, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615848786, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479304, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615848791, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479305, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615848796, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479306, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615848802, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479307, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615848808, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479308, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615848814, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479309, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615848821, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479310, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615848826, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479311, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615848832, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479312, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615848838, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479313, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615848844, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479314, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615848850, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479315, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615848856, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479316, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615848862, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479317, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615848868, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479318, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615848874, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479319, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615848880, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479320, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615848886, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479321, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615848892, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479322, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615848898, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479323, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615848904, '192.168.101.10');
INSERT INTO `ln_admin_log` VALUES (479324, 1, '13800000000', 'Sqnbcadmin/Card/ajaxcardnotice', 1615848910, '192.168.101.10');

-- ----------------------------
-- Table structure for ln_advert
-- ----------------------------
DROP TABLE IF EXISTS `ln_advert`;
CREATE TABLE `ln_advert`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '广告id',
  `type_id` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '广告类型',
  `ename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '英文名',
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '广告名称',
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '链接地址',
  `photo_path` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '图片地址',
  `start_time` int(11) NOT NULL DEFAULT 0 COMMENT '投放时间',
  `end_time` int(11) NOT NULL DEFAULT 0 COMMENT '结束时间',
  `click_count` mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT '点击量',
  `display` tinyint(1) UNSIGNED ZEROFILL NOT NULL DEFAULT 0 COMMENT '是否显示(默认为0显示，1为不显示)',
  `sort` smallint(6) NULL DEFAULT 50 COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '广告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ln_advert
-- ----------------------------

-- ----------------------------
-- Table structure for ln_advert_location
-- ----------------------------
DROP TABLE IF EXISTS `ln_advert_location`;
CREATE TABLE `ln_advert_location`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '位置名称',
  `sort` int(11) NOT NULL DEFAULT 0 COMMENT '排序',
  `simple_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '位置简称',
  `img_size` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '图片尺寸',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '广告类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ln_advert_location
-- ----------------------------
INSERT INTO `ln_advert_location` VALUES (36, 'PC端首页中间预留图片链接', 1, 'home_between_image', '第一张：120*80,第二张：120*80,第三张：200*80,第四张：120*80');
INSERT INTO `ln_advert_location` VALUES (37, 'PC端关于我们页面第一张大图位置', 10, 'about_us_first', '1920*1080');
INSERT INTO `ln_advert_location` VALUES (38, 'PC端关于我们第二张大图位置', 11, 'about_us_two', '');
INSERT INTO `ln_advert_location` VALUES (39, 'PC端关于我们页面第三张大图', 12, 'about_us_three', '');
INSERT INTO `ln_advert_location` VALUES (40, 'PC端关于我们第二张大图英文版', 11, 'about_us_etwo', '');
INSERT INTO `ln_advert_location` VALUES (41, 'm手机端首页中间预留图片链接', 1, 'mobile_home', '160*80');
INSERT INTO `ln_advert_location` VALUES (42, 'm手机端关于我们第一张图', 15, 'm_about_first', '640*374');
INSERT INTO `ln_advert_location` VALUES (43, 'm手机端关于我们第二张大图', 16, 'm_about_two', '640*257');
INSERT INTO `ln_advert_location` VALUES (44, 'm手机端关于我们第二张大图英文版', 16, 'm_about_etwo', '640*257');
INSERT INTO `ln_advert_location` VALUES (45, '手机端关于我们第三张大图', 17, 'm_about_three', '640*421');
INSERT INTO `ln_advert_location` VALUES (46, '（手机和PC公用）底部友情链接', 0, 'foot_friend', '');

-- ----------------------------
-- Table structure for ln_announcement
-- ----------------------------
DROP TABLE IF EXISTS `ln_announcement`;
CREATE TABLE `ln_announcement`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
  `add_time` int(11) NULL DEFAULT 0 COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ln_announcement
-- ----------------------------
INSERT INTO `ln_announcement` VALUES (18, '最新公告', '收卡网_专业回收二手礼品卡，加急处理联系客服！', 1560755506);

-- ----------------------------
-- Table structure for ln_area
-- ----------------------------
DROP TABLE IF EXISTS `ln_area`;
CREATE TABLE `ln_area`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `level` int(11) NULL DEFAULT 0 COMMENT '是否显示0 展示 1 不展示 默认0',
  `parent_id` int(11) NULL DEFAULT 0 COMMENT '分类父类id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ln_area
-- ----------------------------
INSERT INTO `ln_area` VALUES (6, '华北地区', 1, 0);
INSERT INTO `ln_area` VALUES (7, '华东地区', 1, 0);
INSERT INTO `ln_area` VALUES (8, '河北省', 2, 6);
INSERT INTO `ln_area` VALUES (9, '山西省', 2, 6);
INSERT INTO `ln_area` VALUES (10, '石家庄', 3, 8);
INSERT INTO `ln_area` VALUES (11, '保定', 3, 8);
INSERT INTO `ln_area` VALUES (12, '沧州', 3, 8);
INSERT INTO `ln_area` VALUES (16, '西部地区', 1, 0);
INSERT INTO `ln_area` VALUES (17, '山西省', 2, 16);

-- ----------------------------
-- Table structure for ln_article
-- ----------------------------
DROP TABLE IF EXISTS `ln_article`;
CREATE TABLE `ln_article`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '文章表自增id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '文章标题名称',
  `sub_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '小标题',
  `introduce` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '简介',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '内容',
  `add_time` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  `type_id` int(11) NOT NULL COMMENT '信息类型id',
  `photo_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '标题图片路径',
  `source` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '来源',
  `status` int(1) NOT NULL DEFAULT 1 COMMENT '2:删除',
  `photo_path_mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '手机端图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 420 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文章表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ln_article
-- ----------------------------
INSERT INTO `ln_article` VALUES (411, '京东购物卡', '', '京东购物卡京东购物卡京东购物卡', '&lt;p microsoft=&quot;&quot; helvetica=&quot;&quot; white-space:=&quot;&quot; background-color:=&quot;&quot; style=&quot;margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 0px; color: rgb(51, 51, 51);&quot;&gt;&lt;span microsoft=&quot;&quot;&gt;&lt;span style=&quot;line-height: 21px;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; 京东E卡是京东的单用途商业预付卡，仅可购买京东网上商城的自营商品（“自营商品”指在商品详情页明确标识为”商品从京东库房出库，由京东安排配送，且商品发票由京东提供”的商品，但出版物、虚拟产品、部分团购及抢购商品、投资金银类、夺宝岛和第三方卖家商品不在此内）&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p microsoft=&quot;&quot; helvetica=&quot;&quot; white-space:=&quot;&quot; background-color:=&quot;&quot; style=&quot;margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 0px; color: rgb(51, 51, 51);&quot;&gt;&lt;span microsoft=&quot;&quot; font-size:=&quot;&quot;&gt;&lt;span style=&quot;line-height: 21px;&quot;&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;span style=&quot;font-size: 24px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p microsoft=&quot;&quot; helvetica=&quot;&quot; white-space:=&quot;&quot; background-color:=&quot;&quot; style=&quot;margin-top: 0px; margin-bottom: 0px; white-space: normal; padding: 0px; color: rgb(51, 51, 51);&quot;&gt;&lt;span microsoft=&quot;&quot;&gt;&lt;span style=&quot;line-height: 21px;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; 京东e卡有2种：电子卡、实体卡，&lt;span style=&quot;line-height: 21px;&quot;&gt;上图为电子卡，下图为实体卡的经典卡。面值有100元、200元、500元、1000元，小的面值有10元、20元等。实体卡还可分为经典卡、新春卡、感谢卡、生日卡、爱情卡、等款式。（&lt;a href=&quot;http://search.jd.com/Search?keyword=%E4%BA%AC%E4%B8%9CE%E5%8D%A1&amp;amp;enc=utf-8&amp;amp;pvid=17apedli.w1mdpb&quot; target=&quot;_blank&quot; style=&quot;color: rgb(51, 51, 51); text-decoration-line: none; transition: color 0.3s, background-color 0.3s;&quot;&gt;点击此处查看详情&lt;/a&gt;）&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span microsoft=&quot;&quot;&gt;&lt;span style=&quot;line-height: 21px;&quot;&gt;&lt;span style=&quot;line-height: 21px;&quot;&gt;&lt;br/&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 1499672688, 42, '', '', 2, '');
INSERT INTO `ln_article` VALUES (412, '京东E卡介绍说明', '', '京东E卡介绍说明', '&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;;&quot;&gt;&lt;span style=&quot;line-height: 21px;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; 京东E卡是京东的单用途商业预付卡，仅可购买京东网上商城的自营商品（“自营商品”指在商品详情页明确标识为”商品从京东库房出库，由京东安排配送，且商品发票由京东提供”的商品，但出版物、虚拟产品、部分团购及抢购商品、投资金银类、夺宝岛和第三方卖家商品不在此内）&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: small;&quot;&gt;&lt;span style=&quot;line-height: 21px;&quot;&gt;&amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;span style=&quot;font-size: 24px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;;&quot;&gt;&lt;span style=&quot;line-height: 21px;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; 京东e卡有2种：电子卡、实体卡，&lt;span style=&quot;line-height: 21px;&quot;&gt;上图为电子卡，下图为实体卡的经典卡。面值有100元、200元、500元、1000元，小的面值有10元、20元等。实体卡还可分为经典卡、新春卡、感谢卡、生日卡、爱情卡、等款式。（&lt;a href=&quot;http://search.jd.com/Search?keyword=%E4%BA%AC%E4%B8%9CE%E5%8D%A1&amp;enc=utf-8&amp;pvid=17apedli.w1mdpb&quot; target=&quot;_blank&quot; style=&quot;color: rgb(51, 51, 51); text-decoration-line: none; transition: color 0.3s, background-color 0.3s;&quot;&gt;点击此处查看详情&lt;/a&gt;）&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 1499673088, 42, '', '', 2, '');
INSERT INTO `ln_article` VALUES (413, '天猫商城点券介绍说明', '', '天猫商城点券介绍说明', '&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; line-height: 24px; text-indent: 28px;&quot;&gt;天猫点券卡是一种可在天猫商城抵用购物的积分卡，每100点抵扣1元钱，分为电子卡和实体卡。实体卡有10000点、20000点、50000点和100000点四种。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; line-height: 24px; text-indent: 28px;&quot;&gt;&lt;img src=&quot;http://img.lipin.com/upfile/image/160304/170105752.png&quot; alt=&quot;&quot; style=&quot;border: 0px; display: block; padding-top: 15px; max-width: 910px; margin: 0px auto;&quot;/&gt;&lt;br/&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; line-height: 24px; text-indent: 28px;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;天猫点券可以抵用购物的积分，作为营销工具用于企业的促销活动。点券在抵用购物同时，商家还可以为使用点券的用户提供额外的促销和优惠。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; line-height: 24px; text-indent: 28px;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;网上银行支付或支付宝余额支付的订单，款项将退至您的原支付银行卡或支付宝帐户中。点券抵用部分，点数将退至用户的支付宝点券卡账户中，有效期不变。过期的点券依旧会过期。&lt;/span&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; line-height: 24px; text-indent: 28px;&quot;&gt;&lt;span style=&quot;line-height: 24px;&quot;&gt;天猫点券卡提供在线订购线上点券卡（分电子点券卡和实体点券卡两种）或通过天猫特约经销商销售购买实体卡。&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; line-height: 24px; text-indent: 28px;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;span style=&quot;line-height: 24px;&quot;&gt;企业点券卡分实体卡和电子卡两种。实体卡有四种固定面值，分别为等值人民币：100元、200元、500元、1000元（面值用“点”表示）；电子卡可以订购任意面值（每张卡面1点~10万点（即￥0.01~￥1,000），最小单位1点）。&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; line-height: 24px; text-indent: 28px;&quot;&gt;&lt;span style=&quot;line-height: 24px;&quot;&gt;&lt;br/&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; line-height: 24px; text-indent: 28px;&quot;&gt;&lt;span style=&quot;line-height: 24px;&quot;&gt;&lt;br/&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; line-height: 24px; text-indent: 28px; font-size: 24px;&quot;&gt;&lt;span style=&quot;line-height: 24px;&quot;&gt;天猫点券卡注意事项：&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; line-height: 24px; text-indent: 28px; font-size: 24px;&quot;&gt;&lt;span style=&quot;line-height: 24px;&quot;&gt;&lt;br/&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; line-height: 24px; text-indent: 28px; font-size: 24px;&quot;&gt;&lt;span style=&quot;line-height: 24px;&quot;&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 16px;&quot;&gt;　　1、“天猫点券”积分由集分宝南京商务服务有限公司发行，天猫（www.tmall.com）做品牌冠名。根据载体的不同分为实体卡和电子卡。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 16px;&quot;&gt;　　2、持卡人（您）凭天猫点券卡可在天猫（www.tmall.com）网店进行购物抵扣（直冲、淘花、二维码、电子凭证、线下支付、旅游、保险、拍卖、医药馆、天猫预售等暂不支持，具体以您使用点券卡进行购物抵扣时的天猫公示规定为准）,100点抵扣一元人民币。天猫点券卡不记名，不赎回、不挂失、不换卡。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 16px;&quot;&gt;　　3、使用天猫点券卡抵扣的金额商户不向消费者开具发票。发生退货或退款时抵扣的点数将退回到点账户内，不退现金。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 16px;&quot;&gt;　　4、请妥善保管天猫点券卡及密码。若因保管不当等持卡人自身原因造成损失，责任自负。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 16px;&quot;&gt;　　5、请在有效期内使用，具体有效期请查看卡背或账户提示。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 16px;&quot;&gt;　　6、单笔订单抵扣上限为2000000点，单个点账户单日抵扣上限为2000000点。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 16px;&quot;&gt;　　7、商品交易及售后事宜，请联系商家咨询或处理。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; font-size: 16px;&quot;&gt;　　8、天猫可经发卡方授权对本规则内容进行调整，具体内容以天猫公示为准，敬请关注ka.tmall.com。您提交充值即表示您接受本规则并同意发卡方后续调整的规则内容。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;/&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; line-height: 24px; text-indent: 28px; font-size: 24px;&quot;&gt;&lt;span style=&quot;line-height: 24px;&quot;&gt;&lt;br/&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; line-height: 24px; text-indent: 28px; font-size: 24px;&quot;&gt;&lt;span style=&quot;line-height: 24px;&quot;&gt;&lt;br/&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; line-height: 24px; text-indent: 28px;&quot;&gt;&lt;span style=&quot;line-height: 24px;&quot;&gt;&lt;span style=&quot;line-height: 26px;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; 天猫为了补充自己没有礼品卡的短板，推出了天猫点券。但是由于其并不像天猫积分赠送可得，实体卡又没有其他电商的知名所以一直不温不火。所以就开始天天签到领猫券的活动，每天签到可以随机领取1~1000点点券，也算是相继集分宝、淘金币之后的另一个可以每天入手的小羊毛了。&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 1499673127, 42, '', '', 2, '');
INSERT INTO `ln_article` VALUES (414, '亚马逊礼品卡介绍说明', '', '亚马逊礼品卡介绍说明', '&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot; microsoft=&quot;&quot; helvetica=&quot;&quot; white-space:=&quot;&quot; background-color:=&quot;&quot;&gt;&lt;span style=&quot;font-family: &quot; microsoft=&quot;&quot;&gt;一、礼品卡种类和功能&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 14px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot; microsoft=&quot;&quot; helvetica=&quot;&quot; white-space:=&quot;&quot; background-color:=&quot;&quot; box-sizing:=&quot;&quot; line-height:=&quot;&quot;&gt;&lt;span style=&quot;font-family: &quot; microsoft=&quot;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; 亚马逊礼品卡或充值卡（以下统称“礼品卡”）指由北京世纪卓越信息技术有限公司（“本公司”）发行的，可以在www.amazon.cn （“本网站”）上兑付商品或服务的不记名预付卡。礼品卡仅限在本网站购买产品和服务使用。礼品卡面值均不得超过1,000元人民币。“账户充值”指通过本网站支持的支付方式进行付款并充值到购买人的亚马逊账户的行为。“账户充值”视同购买礼品卡并且已经直接充值到“帐户余额”。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 14px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot; microsoft=&quot;&quot; helvetica=&quot;&quot; white-space:=&quot;&quot; background-color:=&quot;&quot; box-sizing:=&quot;&quot; line-height:=&quot;&quot;&gt;&lt;span style=&quot;font-family: &quot; microsoft=&quot;&quot;&gt;二、一般性规定&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 14px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot; microsoft=&quot;&quot; helvetica=&quot;&quot; white-space:=&quot;&quot; background-color:=&quot;&quot; box-sizing:=&quot;&quot; line-height:=&quot;&quot;&gt;&lt;span style=&quot;font-family: &quot; microsoft=&quot;&quot;&gt;1 购买&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: -4px; margin-bottom: 14px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot; microsoft=&quot;&quot; helvetica=&quot;&quot; white-space:=&quot;&quot; background-color:=&quot;&quot; box-sizing:=&quot;&quot; line-height:=&quot;&quot;&gt;&lt;span style=&quot;font-family: &quot; microsoft=&quot;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; 1.1 礼品卡的购买分为个人购卡人在线订购礼品卡和企业购卡人大额订购礼品卡两种：&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: -4px; margin-bottom: 14px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot; microsoft=&quot;&quot; helvetica=&quot;&quot; white-space:=&quot;&quot; background-color:=&quot;&quot; box-sizing:=&quot;&quot; line-height:=&quot;&quot;&gt;&lt;span style=&quot;font-family: &quot; microsoft=&quot;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; 1） 个人购卡人在线订购礼品卡可通过货到付款、在线信用卡、网上银行等支付，且只能一次性购买少于1万元人民币的礼品卡；如一次性购买1万元（含）人民币以上的，应线下购买，并按1.2条规定出具身份证件；&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: -4px; margin-bottom: 14px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot; microsoft=&quot;&quot; helvetica=&quot;&quot; white-space:=&quot;&quot; background-color:=&quot;&quot; box-sizing:=&quot;&quot; line-height:=&quot;&quot;&gt;&lt;span style=&quot;font-family: &quot; microsoft=&quot;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;2）企业购卡人购买礼品卡可通过银行转账汇款和支票支付；&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: -4px; margin-bottom: 14px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot; microsoft=&quot;&quot; helvetica=&quot;&quot; white-space:=&quot;&quot; background-color:=&quot;&quot; box-sizing:=&quot;&quot; line-height:=&quot;&quot;&gt;&lt;span style=&quot;font-family: &quot; microsoft=&quot;&quot;&gt;个人购卡人一次性购卡金额达5万元（含）人民币以上或企业购卡人一次性购卡金额达5,000元（含）人民币以上的，以及采用非现场方式购卡的，不能通过现金付款。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: -4px; margin-bottom: 14px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot; microsoft=&quot;&quot; helvetica=&quot;&quot; white-space:=&quot;&quot; background-color:=&quot;&quot; box-sizing:=&quot;&quot; line-height:=&quot;&quot;&gt;&lt;span style=&quot;font-family: &quot; microsoft=&quot;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; 1.2 个人或企业购卡人一次性购买1万元（含）以上礼品卡，购卡人及其代理人应出示有效身份证件，并留存购卡人及其代理人姓名或单位名称、有效身份证件号码和联系方式。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: -4px; margin-bottom: 14px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot; microsoft=&quot;&quot; helvetica=&quot;&quot; white-space:=&quot;&quot; background-color:=&quot;&quot; box-sizing:=&quot;&quot; line-height:=&quot;&quot;&gt;&lt;span style=&quot;font-family: &quot; microsoft=&quot;&quot;&gt;2 充值&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: -4px; margin-bottom: 14px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot; microsoft=&quot;&quot; helvetica=&quot;&quot; white-space:=&quot;&quot; background-color:=&quot;&quot; box-sizing:=&quot;&quot; line-height:=&quot;&quot;&gt;&lt;span style=&quot;font-family: &quot; microsoft=&quot;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;本公司发行的礼品卡必须充值到持卡人在本网站的注册账户的“账户余额”中使用。本公司不对充值完毕的礼品卡提供再次充值服务。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: -4px; margin-bottom: 14px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot; microsoft=&quot;&quot; helvetica=&quot;&quot; white-space:=&quot;&quot; background-color:=&quot;&quot; box-sizing:=&quot;&quot; line-height:=&quot;&quot;&gt;&lt;span style=&quot;font-family: &quot; microsoft=&quot;&quot;&gt;3 使用&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: -4px; margin-bottom: 14px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot; microsoft=&quot;&quot; helvetica=&quot;&quot; white-space:=&quot;&quot; background-color:=&quot;&quot; box-sizing:=&quot;&quot; line-height:=&quot;&quot;&gt;&lt;span style=&quot;font-family: &quot; microsoft=&quot;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; 礼品卡使用前，持卡人需将礼品卡金额充值入持卡人在本网站账户的“账户余额”中，如不进行充值将无法使用。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: -4px; margin-bottom: 14px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot; microsoft=&quot;&quot; helvetica=&quot;&quot; white-space:=&quot;&quot; background-color:=&quot;&quot; box-sizing:=&quot;&quot; line-height:=&quot;&quot;&gt;&lt;span style=&quot;font-family: &quot; microsoft=&quot;&quot;&gt;4 退卡&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: -4px; margin-bottom: 14px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot; microsoft=&quot;&quot; helvetica=&quot;&quot; white-space:=&quot;&quot; background-color:=&quot;&quot; box-sizing:=&quot;&quot; line-height:=&quot;&quot;&gt;&lt;span style=&quot;font-family: &quot; microsoft=&quot;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; 4.1 礼品卡购买成功后，在同时满足以下所有条件前提下，礼品卡购买人可以退卡：&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: -4px; margin-bottom: 14px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot; microsoft=&quot;&quot; helvetica=&quot;&quot; white-space:=&quot;&quot; background-color:=&quot;&quot; box-sizing:=&quot;&quot; line-height:=&quot;&quot;&gt;&lt;span style=&quot;font-family: &quot; microsoft=&quot;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;1）礼品卡按本章程第4.2条规定交付后的3个工作日内。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: -4px; margin-bottom: 14px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot; microsoft=&quot;&quot; helvetica=&quot;&quot; white-space:=&quot;&quot; background-color:=&quot;&quot; box-sizing:=&quot;&quot; line-height:=&quot;&quot;&gt;&lt;span style=&quot;font-family: &quot; microsoft=&quot;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;2）礼品卡中的任何金额应未被充值到账户。此外，如果需要退卡的礼品卡是实体卡，该实体卡上充值码覆盖区应未刮开或毁损。 本条不适用于“账户充值”的情况。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: -4px; margin-bottom: 14px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot; microsoft=&quot;&quot; helvetica=&quot;&quot; white-space:=&quot;&quot; background-color:=&quot;&quot; box-sizing:=&quot;&quot; line-height:=&quot;&quot;&gt;&lt;span style=&quot;font-family: &quot; microsoft=&quot;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;3）礼品卡退卡人应是从本公司购买礼品卡的原购买人。办理退卡时，退卡人应提供与原购卡人一致的有效身份证件，此外企业退卡人应提供加盖公章的退卡申请和企业身份证件。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: -4px; margin-bottom: 14px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot; microsoft=&quot;&quot; helvetica=&quot;&quot; white-space:=&quot;&quot; background-color:=&quot;&quot; box-sizing:=&quot;&quot; line-height:=&quot;&quot;&gt;&lt;span style=&quot;font-family: &quot; microsoft=&quot;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;4）退卡人只能要求对购买礼品卡的整张订单退款，本公司不接受部分订单退款。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: -4px; margin-bottom: 14px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot; microsoft=&quot;&quot; helvetica=&quot;&quot; white-space:=&quot;&quot; background-color:=&quot;&quot; box-sizing:=&quot;&quot; line-height:=&quot;&quot;&gt;&lt;span style=&quot;font-family: &quot; microsoft=&quot;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;5）礼品卡退卡人应自费退还购卡的原始发票以及相关的付款凭证。退卡金额应与发票金额相符，本公司不接受要求只退还部分金额的礼品卡退卡请求。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: -4px; margin-bottom: 14px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot; microsoft=&quot;&quot; helvetica=&quot;&quot; white-space:=&quot;&quot; background-color:=&quot;&quot; box-sizing:=&quot;&quot; line-height:=&quot;&quot;&gt;&lt;span style=&quot;font-family: &quot; microsoft=&quot;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;6）如礼品卡退卡人要求退还其在购买时享受过任何折扣或优惠的礼品卡，本公司在计算退款时将按退卡人在购买时实际支付的金额或按礼品卡全额扣除上述优惠 后的金额办理退款。如礼品卡退卡人购买礼品卡可按其年度累计购卡金额享有任何折扣或优惠的，本公司在办理退卡后会将退卡金额从其年度累计购卡金额中扣除。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: -4px; margin-bottom: 14px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot; microsoft=&quot;&quot; helvetica=&quot;&quot; white-space:=&quot;&quot; background-color:=&quot;&quot; box-sizing:=&quot;&quot; line-height:=&quot;&quot;&gt;&lt;span style=&quot;font-family: &quot; microsoft=&quot;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;7）礼品卡退卡人按第3条的规定支付退卡手续费。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: -4px; margin-bottom: 14px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot; microsoft=&quot;&quot; helvetica=&quot;&quot; white-space:=&quot;&quot; background-color:=&quot;&quot; box-sizing:=&quot;&quot; line-height:=&quot;&quot;&gt;&lt;span style=&quot;font-family: &quot; microsoft=&quot;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;4.2 礼品卡退卡后，本公司将会把退卡金额退至原购卡时付款的原账户。如原购卡使用现金或支票，退卡人需提供与购卡人同名的银行账户以供退款。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: -4px; margin-bottom: 14px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot; microsoft=&quot;&quot; helvetica=&quot;&quot; white-space:=&quot;&quot; background-color:=&quot;&quot; box-sizing:=&quot;&quot; line-height:=&quot;&quot;&gt;&lt;span style=&quot;font-family: &quot; microsoft=&quot;&quot;&gt;5 激活&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: -4px; margin-bottom: 14px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot; microsoft=&quot;&quot; helvetica=&quot;&quot; white-space:=&quot;&quot; background-color:=&quot;&quot; box-sizing:=&quot;&quot; line-height:=&quot;&quot;&gt;&lt;span style=&quot;font-family: &quot; microsoft=&quot;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;礼品卡有效期届满后，如该礼品卡仍有余额未被使用的，本公司可根据礼品卡使用人的申请办理重新激活该礼品卡一次。重新激活后，礼品卡余额可在3个月内有效使用。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: -4px; margin-bottom: 14px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot; microsoft=&quot;&quot; helvetica=&quot;&quot; white-space:=&quot;&quot; background-color:=&quot;&quot; box-sizing:=&quot;&quot; line-height:=&quot;&quot;&gt;&lt;span style=&quot;font-family: &quot; microsoft=&quot;&quot;&gt;6 有关礼品卡购买、充值、退卡和使用的问题详细解答参见礼品卡常见问题解答。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: -4px; margin-bottom: 14px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot; microsoft=&quot;&quot; helvetica=&quot;&quot; white-space:=&quot;&quot; background-color:=&quot;&quot; box-sizing:=&quot;&quot; line-height:=&quot;&quot;&gt;&lt;span style=&quot;font-family: &quot; microsoft=&quot;&quot;&gt;三、收费项目和标准&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 14px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot; microsoft=&quot;&quot; helvetica=&quot;&quot; white-space:=&quot;&quot; background-color:=&quot;&quot; box-sizing:=&quot;&quot; line-height:=&quot;&quot;&gt;&lt;span style=&quot;font-family: &quot; microsoft=&quot;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; 在礼品卡购买成功并全额支付购卡款后，礼品卡持卡人在礼品卡有效期内使用礼品卡无须支付额外费用。但在以下情况下，礼品卡持卡人仍需按相应的标准支付费用：在满足第2.4条规定退卡的情况下，本公司将收取退还礼品卡面值2%的退卡手续费。上述收费，本公司将在退卡金额中直接扣除。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-family: &quot; microsoft=&quot;&quot;&gt;四、&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-family: &quot; microsoft=&quot;&quot;&gt;权利和义务&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &quot; microsoft=&quot;&quot; helvetica=&quot;&quot; background-color:=&quot;&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 14px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot; microsoft=&quot;&quot; helvetica=&quot;&quot; white-space:=&quot;&quot; background-color:=&quot;&quot; box-sizing:=&quot;&quot; line-height:=&quot;&quot;&gt;&lt;span style=&quot;font-family: &quot; microsoft=&quot;&quot;&gt;1 权利和限制&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: -4px; margin-bottom: 14px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot; microsoft=&quot;&quot; helvetica=&quot;&quot; white-space:=&quot;&quot; background-color:=&quot;&quot; box-sizing:=&quot;&quot; line-height:=&quot;&quot;&gt;&lt;span style=&quot;font-family: &quot; microsoft=&quot;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; 1.1 礼品卡适用于本网站上可供购买的任何商品和服务，但礼品卡不能被用于购买礼品卡。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: -4px; margin-bottom: 14px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot; microsoft=&quot;&quot; helvetica=&quot;&quot; white-space:=&quot;&quot; background-color:=&quot;&quot; box-sizing:=&quot;&quot; line-height:=&quot;&quot;&gt;&lt;span style=&quot;font-family: &quot; microsoft=&quot;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; 1.2 礼品卡只能在本网站使用，不能购买亚马逊全球其它网站 （Amazon.com,Amazon.co.uk, Amazon.de, Amazon.fr, Amazon.co.jp, Amazon.ca等）和任何其它亚马逊运营的网站、关联公司、个人和团体的商品和服务，除非本条款和条件另有规定。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: -4px; margin-bottom: 14px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot; microsoft=&quot;&quot; helvetica=&quot;&quot; white-space:=&quot;&quot; background-color:=&quot;&quot; box-sizing:=&quot;&quot; line-height:=&quot;&quot;&gt;&lt;span style=&quot;font-family: &quot; microsoft=&quot;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;1.3 礼品卡只能在礼品卡开通后的三年内有效使用，如礼品卡有效期另有规定的按其特别规定。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: -4px; margin-bottom: 14px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot; microsoft=&quot;&quot; helvetica=&quot;&quot; white-space:=&quot;&quot; background-color:=&quot;&quot; box-sizing:=&quot;&quot; line-height:=&quot;&quot;&gt;&lt;span style=&quot;font-family: &quot; microsoft=&quot;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; 1.4 除根据本章程第2.4的规定退卡外，礼品卡购买成功后不能退卡、不能再次销售。在充值到账户后，不能被重新充值。一个账户中的礼品卡未使用金额不能被转移到另一个账户中。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: -4px; margin-bottom: 14px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot; microsoft=&quot;&quot; helvetica=&quot;&quot; white-space:=&quot;&quot; background-color:=&quot;&quot; box-sizing:=&quot;&quot; line-height:=&quot;&quot;&gt;&lt;span style=&quot;font-family: &quot; microsoft=&quot;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; 1.5 使用礼品卡购买商品或服务后需要退货的，本公司将会把货款退至原购买商品或服务账户的账户余额中。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: -4px; margin-bottom: 14px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot; microsoft=&quot;&quot; helvetica=&quot;&quot; white-space:=&quot;&quot; background-color:=&quot;&quot; box-sizing:=&quot;&quot; line-height:=&quot;&quot;&gt;&lt;span style=&quot;font-family: &quot; microsoft=&quot;&quot;&gt;2 交付、遗失风险&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: -4px; margin-bottom: 14px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot; microsoft=&quot;&quot; helvetica=&quot;&quot; white-space:=&quot;&quot; background-color:=&quot;&quot; box-sizing:=&quot;&quot; line-height:=&quot;&quot;&gt;&lt;span style=&quot;font-family: &quot; microsoft=&quot;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; 礼品卡的风险和所有权在本公司将礼品卡通过电子方式发送给购买人或接收人或将实体卡交付给配送商时转移给礼品卡购买人（简称“交付”）。礼品卡交付后，本公司不对礼品卡的丢失、被窃、损毁或未经授权使用负责。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: -4px; margin-bottom: 14px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot; microsoft=&quot;&quot; helvetica=&quot;&quot; white-space:=&quot;&quot; background-color:=&quot;&quot; box-sizing:=&quot;&quot; line-height:=&quot;&quot;&gt;&lt;span style=&quot;font-family: &quot; microsoft=&quot;&quot;&gt;3 对于不正当行为的处理&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: -4px; margin-bottom: 14px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot; microsoft=&quot;&quot; helvetica=&quot;&quot; white-space:=&quot;&quot; background-color:=&quot;&quot; box-sizing:=&quot;&quot; line-height:=&quot;&quot;&gt;&lt;span style=&quot;font-family: &quot; microsoft=&quot;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;如果在本网站使用通过不正当手段获得的礼品卡购物，本公司有权利关闭该使用人的帐户并要求其通过其它方式支付货款。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: -4px; margin-bottom: 14px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot; microsoft=&quot;&quot; helvetica=&quot;&quot; white-space:=&quot;&quot; background-color:=&quot;&quot; box-sizing:=&quot;&quot; line-height:=&quot;&quot;&gt;&lt;span style=&quot;font-family: &quot; microsoft=&quot;&quot;&gt;4 条款修改&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: -4px; margin-bottom: 14px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot; microsoft=&quot;&quot; helvetica=&quot;&quot; white-space:=&quot;&quot; background-color:=&quot;&quot; box-sizing:=&quot;&quot; line-height:=&quot;&quot;&gt;&lt;span style=&quot;font-family: &quot; microsoft=&quot;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; 除本礼品卡章程外，本网站“使用条件”和“隐私声明”同样适用于礼品卡。此外，礼品卡购买人就礼品卡所签订的购买合同中的相应规定也将适用礼品卡。如本章程规定与上述文件中的规定有冲突，以本章程的规定为准。本公司保留随时修改上述条款和条件的权利，所有条款和条件将在法律允许的最大限度内适用。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: -4px; margin-bottom: 14px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot; microsoft=&quot;&quot; helvetica=&quot;&quot; white-space:=&quot;&quot; background-color:=&quot;&quot; box-sizing:=&quot;&quot; line-height:=&quot;&quot;&gt;&lt;span style=&quot;font-family: &quot; microsoft=&quot;&quot;&gt;五、纠纷处理和违约责任&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 14px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot; microsoft=&quot;&quot; helvetica=&quot;&quot; white-space:=&quot;&quot; background-color:=&quot;&quot; box-sizing:=&quot;&quot; line-height:=&quot;&quot;&gt;&lt;span style=&quot;font-family: &quot; microsoft=&quot;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; 有关礼品卡以及本章程相关解释、争议均适用中华人民共和国法律并应提交北京市有管辖权的法院诉讼解决。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-family: &quot; microsoft=&quot;&quot;&gt;六、&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-family: &quot; microsoft=&quot;&quot;&gt;责任限制&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &quot; microsoft=&quot;&quot; helvetica=&quot;&quot; background-color:=&quot;&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 14px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot; microsoft=&quot;&quot; helvetica=&quot;&quot; white-space:=&quot;&quot; background-color:=&quot;&quot; box-sizing:=&quot;&quot; line-height:=&quot;&quot;&gt;&lt;span style=&quot;font-family: &quot; microsoft=&quot;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; 本公司及其关联公司不提供与礼品卡有关的明示或暗示的保证，包括但不限于对于其商业性或适用于特定用途的任何明示或暗示的保证。在礼品卡不能使用的情况下，购卡人或持卡人唯一的救济和我们唯一的责任是更换该礼品卡。如果某些特定法律不允许对某些保证进行限制或免除或对某些损害进行限制，而这些法律适用于本章程，则上述关于不承诺、免责或限制的部分规定可能不适用，在这种情况下，购卡人或持卡人可能拥有更多的权利。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-family: &quot; microsoft=&quot;&quot;&gt;七、&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-family: &quot; microsoft=&quot;&quot;&gt;章程的效力&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &quot; microsoft=&quot;&quot; helvetica=&quot;&quot; background-color:=&quot;&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 14px; padding: 0px; color: rgb(51, 51, 51); font-family: &quot; microsoft=&quot;&quot; helvetica=&quot;&quot; white-space:=&quot;&quot; background-color:=&quot;&quot; box-sizing:=&quot;&quot; line-height:=&quot;&quot;&gt;&lt;span style=&quot;font-family: &quot; microsoft=&quot;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; 1 购卡人、持卡人在购买和使用礼品卡前，确认已经就全部条款进行了详细地阅读，双方对章程的全部条款均无疑义，并对本章程涉及的权利义务、责任限制及免责条款的法律含义有了准确无误的理解。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 1499673172, 42, '', '', 2, '');
INSERT INTO `ln_article` VALUES (415, '移动卡（神州行）介绍说明', '', '移动卡（神州行）介绍说明', '&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;;&quot;&gt;移动卡（神州行）充值卡业务是指可以为中国移动“神州行”客户进行充值/交费的充值卡，使用手机充值卡可以轻松实现异地交费。客户购买手机充值卡后，可通过网上营业厅或拨打电话进行充值卡充值。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;;&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;;&quot;&gt;手机充值卡上有序列号、摩玛、面值、截止日期等要素，其密码具有唯一性。&lt;br/&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;;&quot;&gt;手机充值卡背面标注的时间是指手机充值卡的最晚启用时间，客户必须在此时间前将该手机充值卡冲入客户手机SIM卡账户中，超过此时间该手机充值卡将失效。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;;&quot;&gt;&lt;br/&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;;&quot;&gt;&lt;span style=&quot;line-height: 24px;&quot;&gt;目前发行的手机充值卡有10元、30元、50元、100元、300元、500元等六种面值。具体销售面值请以您所在地移动公司情况为准。&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 1499673201, 44, '', '', 2, '');
INSERT INTO `ln_article` VALUES (416, '联通卡介绍说明', '', '联通卡介绍说明', '&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; color: rgb(0, 0, 0);&quot;&gt;联通一卡充是&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/view/6561.htm&quot; style=&quot;color: rgb(51, 51, 51); text-decoration-line: none; transition: color 0.3s, background-color 0.3s; line-height: 24px;&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; color: rgb(0, 0, 0);&quot;&gt;中国联通&lt;/span&gt;&lt;/a&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; color: rgb(0, 0, 0);&quot;&gt;为进一步提升服务质量、完善服务功能，于2009年8月17日7时起推出的一项充值业务。一卡充全国通用（含&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/subview/2607/15855979.htm&quot; style=&quot;color: rgb(51, 51, 51); text-decoration-line: none; transition: color 0.3s, background-color 0.3s; line-height: 24px;&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; color: rgb(0, 0, 0);&quot;&gt;香港&lt;/span&gt;&lt;/a&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; color: rgb(0, 0, 0);&quot;&gt;），均可实现为中国联通移动电话（包括GSM和&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/view/6035.htm&quot; style=&quot;color: rgb(51, 51, 51); text-decoration-line: none; transition: color 0.3s, background-color 0.3s; line-height: 24px;&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; color: rgb(0, 0, 0);&quot;&gt;WCDMA&lt;/span&gt;&lt;/a&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; color: rgb(0, 0, 0);&quot;&gt;）、固话、小（大）灵通及宽带（与固话捆绑），在全国（含香港地区，不含台湾、澳门）范围内无障碍充值。&lt;/span&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; color: rgb(0, 0, 0);&quot;&gt;&amp;nbsp;该卡不计名，不挂失。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; color: rgb(0, 0, 0);&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;h3 class=&quot;title-text&quot; style=&quot;margin: 0px; padding: 0px; font-weight: 400; font-size: 18px;&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; color: rgb(0, 0, 0); font-size: 16px;&quot;&gt;卡的面值&lt;/span&gt;&lt;/h3&gt;&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; color: rgb(0, 0, 0);&quot;&gt;一卡充实物卡主要面值为20元、30元、50元、100元、300元、500元。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; color: rgb(0, 0, 0);&quot;&gt;一卡充电子卡主要面值为20元、30元、50元、100元、300元。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; color: rgb(0, 0, 0);&quot;&gt;不同购买渠道，提供充值卡面值不同。&lt;/span&gt;&lt;/p&gt;&lt;h3 class=&quot;title-text&quot; style=&quot;margin: 0px; padding: 0px; font-weight: 400; font-size: 18px;&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; color: rgb(0, 0, 0); font-size: 16px;&quot;&gt;卡号及密码&lt;/span&gt;&lt;/h3&gt;&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; color: rgb(0, 0, 0);&quot;&gt;卡号15位、密码19位。&lt;/span&gt;&lt;/p&gt;&lt;h3 class=&quot;title-text&quot; style=&quot;margin: 0px; padding: 0px; font-weight: 400; font-size: 18px;&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; color: rgb(0, 0, 0); font-size: 16px;&quot;&gt;充值方式&lt;/span&gt;&lt;/h3&gt;&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; color: rgb(0, 0, 0);&quot;&gt;1、充值专线：&lt;/span&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; color: rgb(0, 0, 0);&quot;&gt;拨打全国统一的免费充值专线10011（&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/view/527.htm&quot; style=&quot;color: rgb(51, 51, 51); text-decoration-line: none; transition: color 0.3s, background-color 0.3s;&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; color: rgb(0, 0, 0);&quot;&gt;漫游&lt;/span&gt;&lt;/a&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; color: rgb(0, 0, 0);&quot;&gt;到香港地区的中国联通用户拨打66110011）即可充值；为本机充值拨打10011拨1再拨1；为其他号码充值拨打10011拨1再拨2。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; color: rgb(0, 0, 0);&quot;&gt;联通用户在国内（不含港、澳、台地区）直接拨打10011免收通话费，用户在拨打10011前加拨长途区号，按标准资费收费。联通用户在香港地区直接拨打66110011免收通话费。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; color: rgb(0, 0, 0);&quot;&gt;2、&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/view/9565635.htm&quot; style=&quot;color: rgb(51, 51, 51); text-decoration-line: none; transition: color 0.3s, background-color 0.3s;&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; color: rgb(0, 0, 0);&quot;&gt;中国联通网上营业厅&lt;/span&gt;&lt;/a&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; color: rgb(0, 0, 0);&quot;&gt;：用户可登陆&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/view/9565635.htm&quot; style=&quot;color: rgb(51, 51, 51); text-decoration-line: none; transition: color 0.3s, background-color 0.3s;&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; color: rgb(0, 0, 0);&quot;&gt;中国联通网上营业厅&lt;/span&gt;&lt;/a&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; color: rgb(0, 0, 0);&quot;&gt;进行充值，选择交费充值&amp;gt;交话费&amp;gt;选择类型（手机/上网卡交费、固话/&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/view/792.htm&quot; style=&quot;color: rgb(51, 51, 51); text-decoration-line: none; transition: color 0.3s, background-color 0.3s;&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; color: rgb(0, 0, 0);&quot;&gt;宽带&lt;/span&gt;&lt;/a&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; color: rgb(0, 0, 0);&quot;&gt;交费）&amp;gt;支付方式选择用充值卡充值&amp;gt;输入充值卡密码，即可充值。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; color: rgb(0, 0, 0);&quot;&gt;3、手机营厅&lt;/span&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; color: rgb(0, 0, 0);&quot;&gt;：登陆&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/view/9179960.htm&quot; style=&quot;color: rgb(51, 51, 51); text-decoration-line: none; transition: color 0.3s, background-color 0.3s;&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; color: rgb(0, 0, 0);&quot;&gt;联通手机营业厅&lt;/span&gt;&lt;/a&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; color: rgb(0, 0, 0);&quot;&gt;首页，选择服务&amp;gt;交费&amp;gt;充值卡为手机充值&amp;gt;输入充值号码、充值卡密码即可充值。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; color: rgb(0, 0, 0);&quot;&gt;4、&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/view/3066361.htm&quot; style=&quot;color: rgb(51, 51, 51); text-decoration-line: none; transition: color 0.3s, background-color 0.3s;&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; color: rgb(0, 0, 0);&quot;&gt;短信营业厅&lt;/span&gt;&lt;/a&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; color: rgb(0, 0, 0);&quot;&gt;：&lt;/span&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; color: rgb(0, 0, 0);&quot;&gt;CZ#充值卡密码#被充值号码到&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/view/115511.htm&quot; style=&quot;color: rgb(51, 51, 51); text-decoration-line: none; transition: color 0.3s, background-color 0.3s;&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; color: rgb(0, 0, 0);&quot;&gt;10010&lt;/span&gt;&lt;/a&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; color: rgb(0, 0, 0);&quot;&gt;就能为手机充值，不加号码即为本机充值。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; color: rgb(0, 0, 0);&quot;&gt;5、自助终端充值：&lt;/span&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; color: rgb(0, 0, 0);&quot;&gt;用户可在联通自助服务终端上选择“充值”功能进行充值。&lt;/span&gt;&lt;/p&gt;&lt;h3 class=&quot;title-text&quot; style=&quot;margin: 0px; padding: 0px; font-weight: 400; font-size: 18px;&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; color: rgb(0, 0, 0); font-size: 16px;&quot;&gt;有效期&lt;/span&gt;&lt;/h3&gt;&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; color: rgb(0, 0, 0);&quot;&gt;一卡充有效期指一卡充充值有效期，是用户可以使用该卡对相应业务进行充值的截止日期。用户应在一卡充的充值有效期内使用该卡进行账户充值，逾期一卡充将失效。充值有效期印制于卡片背版。&lt;/span&gt;&lt;/p&gt;&lt;h3 class=&quot;title-text&quot; style=&quot;margin: 0px; padding: 0px; font-weight: 400; font-size: 18px;&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; color: rgb(0, 0, 0); font-size: 16px;&quot;&gt;充值范围&lt;/span&gt;&lt;/h3&gt;&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; color: rgb(0, 0, 0);&quot;&gt;中国大陆地区、香港地区通用，可为：&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; color: rgb(0, 0, 0);&quot;&gt;◆中国联通移动电话用户（包括&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/view/7530.htm&quot; style=&quot;color: rgb(51, 51, 51); text-decoration-line: none; transition: color 0.3s, background-color 0.3s;&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; color: rgb(0, 0, 0);&quot;&gt;GSM&lt;/span&gt;&lt;/a&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; color: rgb(0, 0, 0);&quot;&gt;、&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/view/6035.htm&quot; style=&quot;color: rgb(51, 51, 51); text-decoration-line: none; transition: color 0.3s, background-color 0.3s;&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; color: rgb(0, 0, 0);&quot;&gt;WCDMA&lt;/span&gt;&lt;/a&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; color: rgb(0, 0, 0);&quot;&gt;及&lt;/span&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/view/27827.htm&quot; style=&quot;color: rgb(51, 51, 51); text-decoration-line: none; transition: color 0.3s, background-color 0.3s;&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; color: rgb(0, 0, 0);&quot;&gt;4G&lt;/span&gt;&lt;/a&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/view/3723673.htm&quot; style=&quot;color: rgb(51, 51, 51); text-decoration-line: none; transition: color 0.3s, background-color 0.3s;&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; color: rgb(0, 0, 0);&quot;&gt;FDD-LTE&lt;/span&gt;&lt;/a&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; color: rgb(0, 0, 0);&quot;&gt;用户）&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; color: rgb(0, 0, 0);&quot;&gt;◆无线上网卡用户&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; color: rgb(0, 0, 0);&quot;&gt;◆固定电话用户&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; color: rgb(0, 0, 0);&quot;&gt;◆宽带用户（仅支持与固话捆绑的宽带用户）&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; color: rgb(0, 0, 0);&quot;&gt;◆大灵通用户&lt;/span&gt;&lt;/p&gt;&lt;h3 class=&quot;title-text&quot; style=&quot;margin: 0px; padding: 0px; font-weight: 400; font-size: 18px;&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; color: rgb(0, 0, 0); font-size: 16px;&quot;&gt;购买途径&lt;/span&gt;&lt;/h3&gt;&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; color: rgb(0, 0, 0);&quot;&gt;中国联通一卡充的销售渠道主要包括中国联通自有营业厅、各级代理渠道及中国联通网上营业厅等。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/view/11832860.htm&quot; style=&quot;color: rgb(51, 51, 51); text-decoration-line: none; transition: color 0.3s, background-color 0.3s;&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; color: rgb(0, 0, 0);&quot;&gt;联通网上营业厅&lt;/span&gt;&lt;/a&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; color: rgb(0, 0, 0);&quot;&gt;可以购买充值卡，只要用户的银行卡有开通网上银行的支付功能，即可购买20元、30元、50元、100元等面值的充值卡。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; color: rgb(0, 0, 0);&quot;&gt;用户可凭账号和密码登陆网上营业厅网站首页，点击充值卡 &amp;gt;选择需要购买的充值卡面值&amp;gt;输入购买数量及验证码&amp;gt;输入手机号码、获取的随机手机验证码及购卡邮箱&amp;gt;确认购卡信息及在线支付&amp;gt;完成购卡。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://baike.baidu.com/view/61339.htm&quot; style=&quot;color: rgb(51, 51, 51); text-decoration-line: none; transition: color 0.3s, background-color 0.3s;&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; color: rgb(0, 0, 0);&quot;&gt;积分&lt;/span&gt;&lt;/a&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;; color: rgb(0, 0, 0);&quot;&gt;达到兑换标准的联通个人移动手机用户还可使用积分兑换充值卡。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 1499673245, 44, '', '', 2, '');
INSERT INTO `ln_article` VALUES (417, '盛大一卡通介绍说明', '', '盛大一卡通介绍说明', '&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; 盛大一卡通是盛大在线为了解决用户在购买盛大产品过程中的支付不便而发行的一种带有点数的一次性预付卡。用户可在有效期内将点数冲值到盛大通行证中，用来消费盛大公司所有可用的点数支付的产品。盛大团购是河北网弦信息技术有限公司于2011年全力打造的面对广大盛大游戏玩家的数字产品销售平台。&lt;/span&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;;&quot;&gt;&lt;br/&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&lt;img src=&quot;http://img.lipin.com/upfile/image/160306/111310493.png&quot; alt=&quot;&quot; style=&quot;border: 0px; display: block; padding-top: 15px; max-width: 910px; margin: 0px auto;&quot;/&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;img src=&quot;http://img.lipin.com/upfile/image/160306/111323986.png&quot; alt=&quot;&quot; style=&quot;border: 0px; display: block; padding-top: 15px; max-width: 910px; margin: 0px auto;&quot;/&gt;&lt;br/&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-family: &amp;quot;Microsoft YaHei&amp;quot;;&quot;&gt;&lt;br/&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 18px; font-family: &amp;quot;Microsoft YaHei&amp;quot;; color: rgb(229, 51, 51);&quot;&gt;盛大一卡通适用游戏&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 18px; font-family: &amp;quot;Microsoft YaHei&amp;quot;; color: rgb(229, 51, 51);&quot;&gt;&lt;br/&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 18px; font-family: &amp;quot;Microsoft YaHei&amp;quot;; color: rgb(229, 51, 51);&quot;&gt;&lt;span style=&quot;font-size: 16px; line-height: 24px;&quot;&gt;&amp;nbsp; &amp;nbsp;&lt;span style=&quot;color: rgb(0, 0, 0);&quot;&gt;&amp;nbsp;&amp;nbsp; &amp;nbsp;摩尔庄园、赛尔号、传奇世界、热血传奇、龙之谷、冒险岛、彩虹岛、霸王、龙与地下城、苍天、泡泡堂、神迹、梦幻国度、仙境、疯狂赛车、超级跑跑、功夫小子、迪士尼魔幻飞板、热血英豪、纵横天下、乱武天下、X-乒乓、推推侠、泡泡岛、起点、浩方、边锋（三国杀等）、永恒之塔、热血传奇、欧冠足球、盛大传奇3游戏等盛大旗下产品提供充值。&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;color: rgb(0, 0, 0);&quot;&gt;&lt;/span&gt;&lt;br/&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 18px; font-family: &amp;quot;Microsoft YaHei&amp;quot;; color: rgb(229, 51, 51);&quot;&gt;&lt;span style=&quot;font-size: 16px; line-height: 24px;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 1499673292, 43, '', '', 2, '');
INSERT INTO `ln_article` VALUES (418, '久游一卡通介绍说明', '', '久游一卡通介绍说明', '&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 24px; font-family: &amp;quot;Microsoft YaHei&amp;quot;; color: rgb(229, 51, 51);&quot;&gt;&lt;span style=&quot;font-size: 16px; color: rgb(0, 0, 0);&quot;&gt;久游一卡通久游一卡通是由久之游信息技术（上海）有限公司发行的游戏充值点卡，是久游网为实现以大型音乐网络游戏《劲乐团》和《劲舞团AU》以及久游网社区服务中所包含的随心秀、彩信、短信收费等一系列项目而推出的一卡通式预缴点卡。&lt;/span&gt;&lt;span style=&quot;font-size: 16px; color: rgb(0, 0, 0);&quot;&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 16px; color: rgb(0, 0, 0);&quot;&gt;&lt;/span&gt;&lt;br/&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 24px; font-family: &amp;quot;Microsoft YaHei&amp;quot;; color: rgb(229, 51, 51);&quot;&gt;&lt;span style=&quot;font-size: 16px; color: rgb(0, 0, 0);&quot;&gt;&lt;br/&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 24px; font-family: &amp;quot;Microsoft YaHei&amp;quot;; color: rgb(229, 51, 51);&quot;&gt;&lt;span style=&quot;font-size: 16px; color: rgb(0, 0, 0);&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; 久游一卡通面值有&lt;/span&gt;&lt;span style=&quot;color: rgb(0, 0, 0);&quot;&gt;&lt;span style=&quot;color: rgb(51, 51, 51); line-height: 24px; text-indent: 28px; font-size: 16px;&quot;&gt;5元、8元、10元、30元、50元&lt;/span&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;。可充值的游戏有劲舞团、GT劲舞团2、仙剑OL、超级舞者、魔力宝贝2、蓝海战记、SD敢达等。&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 24px; font-family: &amp;quot;Microsoft YaHei&amp;quot;; color: rgb(229, 51, 51);&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0);&quot;&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;&lt;br/&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 24px; font-family: &amp;quot;Microsoft YaHei&amp;quot;; color: rgb(229, 51, 51);&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0);&quot;&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp;久游一卡通可购&lt;span style=&quot;color: rgb(36, 36, 36); line-height: 20px;&quot;&gt;买虚拟物品，为久游所有游戏充值，卡号12-13位，卡密5或10位。&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 24px; font-family: &amp;quot;Microsoft YaHei&amp;quot;; color: rgb(229, 51, 51);&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0);&quot;&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;&lt;span style=&quot;color: rgb(36, 36, 36); line-height: 20px;&quot;&gt;&lt;br/&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft Yahei&amp;quot;, &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;font-size: 24px; font-family: &amp;quot;Microsoft YaHei&amp;quot;; color: rgb(229, 51, 51);&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0);&quot;&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;&lt;span style=&quot;color: rgb(36, 36, 36); line-height: 20px;&quot;&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 1499673325, 43, '', '', 2, '');
INSERT INTO `ln_article` VALUES (419, '测试稍后删除', '测试', '测试', '&lt;p&gt;测试&lt;br/&gt;&lt;/p&gt;', 1557815738, 44, '/Uploads/Picture/Article/2019-05-14/5cda61b480525.jpg', '', 2, '');

-- ----------------------------
-- Table structure for ln_article_category
-- ----------------------------
DROP TABLE IF EXISTS `ln_article_category`;
CREATE TABLE `ln_article_category`  (
  `id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '文章分类表id',
  `ename` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '英文分类名称',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '文章分类名称',
  `simple_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '文章分类简称',
  `display` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否显示0 展示 1 不展示 默认0',
  `parent_id` int(11) NOT NULL DEFAULT 0 COMMENT '文章分类父类id',
  `sort` smallint(6) NOT NULL DEFAULT 50 COMMENT '排序',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 正常  1 删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文章分类表，该表主要记录文章的一些分类数据' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ln_article_category
-- ----------------------------

-- ----------------------------
-- Table structure for ln_article_type
-- ----------------------------
DROP TABLE IF EXISTS `ln_article_type`;
CREATE TABLE `ln_article_type`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '分类名称',
  `is_member` int(1) NOT NULL DEFAULT 0 COMMENT '0：表示非会员；1：表示会员',
  `photo_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '标题图片路径',
  `sort` int(3) NULL DEFAULT 0,
  `add_time` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 120 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文章表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ln_article_type
-- ----------------------------
INSERT INTO `ln_article_type` VALUES (110, '每日点评', 0, '', 1, 1488969956);
INSERT INTO `ln_article_type` VALUES (111, '操盘必读', 0, '', 2, 1488958944);
INSERT INTO `ln_article_type` VALUES (115, '消息面股', 0, '/Uploads/Picture/ArticleType/2017-03-13/58c115ff608dc.png', 3, 1489050291);
INSERT INTO `ln_article_type` VALUES (116, '腾龙在天', 1, '/Uploads/Picture/ArticleType/2017-03-13/58c0f71332eb6.png', 1, 1489041172);
INSERT INTO `ln_article_type` VALUES (117, '牛气冲天', 1, '/Uploads/Picture/ArticleType/2017-03-13/58c0f70cba615.png', 2, 1489041165);
INSERT INTO `ln_article_type` VALUES (118, '软件选股', 1, '/Uploads/Picture/ArticleType/2017-03-13/58c0f6f668c1b.png', 3, 1489041145);
INSERT INTO `ln_article_type` VALUES (119, '盈利模式', 1, '/Uploads/Picture/ArticleType/2017-03-13/58c0f6e4e19b5.png', 4, 1489041159);

-- ----------------------------
-- Table structure for ln_auth_group
-- ----------------------------
DROP TABLE IF EXISTS `ln_auth_group`;
CREATE TABLE `ln_auth_group`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `module` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户组所属模块',
  `type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '组类型',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户组描述信息',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '状态 0正常 1 删除 2 禁用',
  `rules` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户组拥有的菜单id，多个规则 , 隔开',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户组表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ln_auth_group
-- ----------------------------
INSERT INTO `ln_auth_group` VALUES (8, 'admin', 1, '管理员', '管理员', 0, '68,69,70,71,72,73,74,75,96,98,114,119,120,252,255,265,266,273,276,279,284,285,286,287,288,289,290,291,292,293,294,295,296,297,298,299,300,301,302,303,304,305,306,307,308,309,311,312,313,314,315,316,317,318,319,320');
INSERT INTO `ln_auth_group` VALUES (13, 'admin', 1, '财务', '财务', 0, '273,279,289,290,291,294');
INSERT INTO `ln_auth_group` VALUES (14, 'admin', 1, '卡片运营者', '针对每个卡类设置的', 0, '252,255,276,286,287,288,304,305,306,307,308,309');

-- ----------------------------
-- Table structure for ln_auth_group_access
-- ----------------------------
DROP TABLE IF EXISTS `ln_auth_group_access`;
CREATE TABLE `ln_auth_group_access`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `uid` int(11) NOT NULL DEFAULT 0 COMMENT '用户id',
  `group_id` int(11) NOT NULL DEFAULT 0 COMMENT '用户组id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户组和用户关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ln_auth_group_access
-- ----------------------------
INSERT INTO `ln_auth_group_access` VALUES (5, 0, 8);
INSERT INTO `ln_auth_group_access` VALUES (12, 2, 8);
INSERT INTO `ln_auth_group_access` VALUES (15, 3, 14);
INSERT INTO `ln_auth_group_access` VALUES (16, 4, 8);
INSERT INTO `ln_auth_group_access` VALUES (17, 5, 8);
INSERT INTO `ln_auth_group_access` VALUES (18, 6, 14);
INSERT INTO `ln_auth_group_access` VALUES (19, 7, 8);
INSERT INTO `ln_auth_group_access` VALUES (20, 8, 8);
INSERT INTO `ln_auth_group_access` VALUES (21, 9, 8);
INSERT INTO `ln_auth_group_access` VALUES (22, 10, 8);
INSERT INTO `ln_auth_group_access` VALUES (23, 11, 8);
INSERT INTO `ln_auth_group_access` VALUES (24, 1, 8);

-- ----------------------------
-- Table structure for ln_bank_card_data
-- ----------------------------
DROP TABLE IF EXISTS `ln_bank_card_data`;
CREATE TABLE `ln_bank_card_data`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_card` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '开户名',
  `content` tinytext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `add_time` int(11) NULL DEFAULT NULL,
  `cardNo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '银行卡',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ln_bank_card_data
-- ----------------------------

-- ----------------------------
-- Table structure for ln_can_do
-- ----------------------------
DROP TABLE IF EXISTS `ln_can_do`;
CREATE TABLE `ln_can_do`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `photo_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `keywords` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `photo_blue` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ln_can_do
-- ----------------------------
INSERT INTO `ln_can_do` VALUES (1, '/Application/Home/Static/images/cando1.png', '解决浪费', '直接面对用户回收 ', '出户即可提交卡号卡密完成回收交易 解决每年上十亿礼品卡闲置的问题', '/Application/Home/Static/images/jiejlf_svg_w.png');
INSERT INTO `ln_can_do` VALUES (2, '/Application/Home/Static/images/cando2.png', '资金回流', '让企业闲置、员工福利、 ', '亲友相赠等方式获取的礼品卡快速 变现，以达到资金回流最大化实现利益', '/Application/Home/Static/images/zjhl_svg_w.png');
INSERT INTO `ln_can_do` VALUES (3, '/Application/Home/Static/images/cando3.png', '交易多样', '提供线上回收、线下交易', 'API接口等多种交易方式，还可以根\r\n		据用户自由定制实现交易多样化方式', '/Application/Home/Static/images/jydy_svg_w.png');

-- ----------------------------
-- Table structure for ln_card
-- ----------------------------
DROP TABLE IF EXISTS `ln_card`;
CREATE TABLE `ln_card`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '文章表自增id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '文章标题名称',
  `introduce` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '提交方式下提示语',
  `add_time` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  `type_id` int(11) NOT NULL COMMENT '信息类型id',
  `offline` int(1) NULL DEFAULT 0 COMMENT '是否线下回收0否1是',
  `photo_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '标题图片路径',
  `sale_proportion` double(10, 2) NOT NULL DEFAULT 1.00 COMMENT '比例',
  `cardexample` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '卡号示例',
  `openpassword` int(1) NULL DEFAULT 0 COMMENT '卡密是否拆分',
  `moreintroduce` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '多行输入框内提示语',
  `is_entitycard` tinyint(4) NULL DEFAULT 0 COMMENT '是否是实体卡(0 否 1是)',
  `card_length` int(11) NULL DEFAULT 0 COMMENT '卡号长度',
  `card_password_length` int(11) NULL DEFAULT 0 COMMENT '卡密长度',
  `card_logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '卡片logo',
  `zdy_proportion` double(10, 2) NOT NULL DEFAULT 1.00 COMMENT '自定义比例',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文章表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ln_card
-- ----------------------------

-- ----------------------------
-- Table structure for ln_card_data
-- ----------------------------
DROP TABLE IF EXISTS `ln_card_data`;
CREATE TABLE `ln_card_data`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_card` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` tinytext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `add_time` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ln_card_data
-- ----------------------------

-- ----------------------------
-- Table structure for ln_card_price
-- ----------------------------
DROP TABLE IF EXISTS `ln_card_price`;
CREATE TABLE `ln_card_price`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id',
  `card_id` int(11) NOT NULL COMMENT '卡片id',
  `price` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '卡片的金额',
  `card_proportion` double(10, 2) NOT NULL DEFAULT 1.00 COMMENT '比例',
  `sale_price` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '回收价格',
  `add_time` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  `price_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '面值名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文章表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ln_card_price
-- ----------------------------

-- ----------------------------
-- Table structure for ln_card_type
-- ----------------------------
DROP TABLE IF EXISTS `ln_card_type`;
CREATE TABLE `ln_card_type`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '分类名称',
  `photo_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `wapphoto_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '手机端图片',
  `add_time` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  `wapdropphoto_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 124 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文章表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ln_card_type
-- ----------------------------
INSERT INTO `ln_card_type` VALUES (110, '电商卡', '/Uploads/Picture/CardType/2019-04-27/5980447f1e047.png', '/Uploads/Picture/CardType/2019-04-27/59804485be9b9.png', 1556328504, '/Uploads/Picture/CardType/2019-04-27/5cc3b0367ae5f.png');
INSERT INTO `ln_card_type` VALUES (111, '商超卡', '/Uploads/Picture/CardType/2019-05-13/595ae0a2b1ce2.png', '/Uploads/Picture/CardType/2019-04-27/59804589b0489.png', 1557727477, '/Uploads/Picture/CardType/2019-04-27/5cc3b044d1099.png');
INSERT INTO `ln_card_type` VALUES (116, '旅游卡', '/Uploads/Picture/CardType/2019-05-29/596c7278bf80d.png', '/Uploads/Picture/CardType/2019-05-29/598112e837d08.png', 1559120961, '/Uploads/Picture/CardType/2019-05-29/5cc3b069d9560.png');
INSERT INTO `ln_card_type` VALUES (118, '视频会员卡券', '/Uploads/Picture/CardType/2019-05-13/59705696d45b3.png', '/Uploads/Picture/CardType/2019-04-27/598112f33ca50.png', 1559038815, '/Uploads/Picture/CardType/2019-04-27/5cc3b0769d620.png');
INSERT INTO `ln_card_type` VALUES (122, '游戏卡', '/Uploads/Picture/CardType/2019-05-28/5cecfeb215f17.png', '/Uploads/Picture/CardType/2019-05-29/5cecfeb4b6ff7.png', 1559119270, '/Uploads/Picture/CardType/2019-05-28/5cecfeb7225ed.png');
INSERT INTO `ln_card_type` VALUES (123, '餐饮券', '/Uploads/Picture/CardType/2019-05-31/5cf0af91a21f2.png', '/Uploads/Picture/CardType/2019-05-31/5cf0af9494af8.png', 1559277464, '/Uploads/Picture/CardType/2019-05-31/5cf0af9732b38.png');

-- ----------------------------
-- Table structure for ln_company
-- ----------------------------
DROP TABLE IF EXISTS `ln_company`;
CREATE TABLE `ln_company`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `province_id` int(10) NOT NULL,
  `city_id` int(10) NOT NULL,
  `country_id` int(10) NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tel` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公司简介',
  `qq` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qq',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ln_company
-- ----------------------------
INSERT INTO `ln_company` VALUES (11, 'x有限公司', 21, 253, 2449, 'xxxxxx', '4000-8000', '&lt;p&gt;每天收卡网是广西律动宇盟科技有限公司旗下网站，任何关于每天收卡网的意见与建议，以及相关合作事宜，请通过以下方式与我们联系：12&lt;/p&gt;', '76891828', 'admin@cainiaoge.com');

-- ----------------------------
-- Table structure for ln_config
-- ----------------------------
DROP TABLE IF EXISTS `ln_config`;
CREATE TABLE `ln_config`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '配置名称',
  `type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '配置类型',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '配置标题',
  `group` tinyint(1) NOT NULL DEFAULT 0 COMMENT '配置分组',
  `extra` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '如果配置项是枚举型 需要配置该项',
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '配置说明',
  `create_time` int(10) NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(10) NULL DEFAULT 0 COMMENT '修改时间',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '状态 0启用 1删除 ',
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '配置值',
  `sort` int(4) NOT NULL DEFAULT 0 COMMENT '排序值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 67 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '参数配置表,主要记录系统的一些参数配置，默认的有配置类型和配置分组两大类' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ln_config
-- ----------------------------
INSERT INTO `ln_config` VALUES (1, 'WEB_SITE_TITLE', 2, '网站标题', 2, '', '网站标题,前台标题', 1378898976, 1566545601, 0, '收卡网_一家专注二手礼品卡回收的网站', 2);
INSERT INTO `ln_config` VALUES (9, 'CONFIG_TYPE_LIST', 3, '配置类型列表', 1, '', '主要用于数据解析和页面表单的生成', 1378898976, 1479914304, 0, '0:数字\r\n1:字符\r\n2:文本\r\n3:数组\r\n4:枚举', 3);
INSERT INTO `ln_config` VALUES (10, 'WEB_SITE_ICP', 1, '网站备案号', 1, '', '设置在网站底部显示的备案号，如“沪ICP备12007941号-2', 1378900335, 1488203034, 0, 'xxxxxx号', 4);
INSERT INTO `ln_config` VALUES (13, 'COLOR_STYLE', 4, '后台色系', 1, 'default_color:默认\r\nblue_color:紫罗兰', '后台颜色风格', 1379122533, 1379235904, 0, 'blue_color', 5);
INSERT INTO `ln_config` VALUES (20, 'CONFIG_GROUP_LIST', 3, '配置分组', 1, '', '配置分组', 1379228036, 1480908134, 0, '1:基本\r\n2:首页seo\r\n\r\n\r\n', 2);
INSERT INTO `ln_config` VALUES (42, 'USER_ADMINISTRATOR', 0, '超级管理员ID', 0, '', '超级管理员ID', 1473227334, 1501742529, 0, '1', 5);
INSERT INTO `ln_config` VALUES (43, 'PAGE_SIZE', 0, '后台分页大小', 1, '', '后台分页大小', 1473328320, 1475807675, 0, '10', 0);
INSERT INTO `ln_config` VALUES (44, 'SEO_KEYWORDS', 0, '关键字', 2, '', 'seo关键字', 1479288617, 1479913779, 2, '顽豆', 0);
INSERT INTO `ln_config` VALUES (45, 'SEO_DISCRIPTION', 0, '网站描述', 2, '', 'seo网站描述', 1479288672, 1479913791, 2, '嘎嘎磨打破减肥卡片机', 0);
INSERT INTO `ln_config` VALUES (46, 'LOAN_SEO_TITLE', 1, '标题', 3, '', '', 1479913881, 1556238260, 0, '每天收卡', 1);
INSERT INTO `ln_config` VALUES (47, 'LOAN_SEO_KEYWORDS', 1, '关键字', 3, '', '贷款关键字', 1479914076, 1479914076, 0, '贷款,正规贷款,个人贷款,信用贷款,网贷,小额贷款,企业贷款', 1);
INSERT INTO `ln_config` VALUES (48, 'LOAN_SEO_DISCRIPTION', 1, '描述', 3, '', '贷款描述', 1479914111, 1479914111, 0, '全国领先的贷款服务平台，找贷款，就上新口子', 1);
INSERT INTO `ln_config` VALUES (49, 'LT_SEO_DISCRIPTION', 2, '描述', 4, '', '', 1479914172, 1566545584, 0, '', 1);
INSERT INTO `ln_config` VALUES (50, 'LT_SEO_TITLE', 1, '标题', 4, '', '贷款攻略标题', 1479914209, 1556238293, 0, '每天收卡', 1);
INSERT INTO `ln_config` VALUES (51, 'LT_SEO_KEYWORDS', 1, '关键字', 4, '', '', 1479914247, 1566545573, 0, '', 1);
INSERT INTO `ln_config` VALUES (52, 'WEB_NOTICE', 2, '站内公告', 0, '', '', 1487837436, 1615847163, 0, '专业回收二手礼品卡', 6);
INSERT INTO `ln_config` VALUES (53, 'WEB_TITLE_CN', 2, '标题', 0, '', '', 1488202425, 1566545516, 0, '百分百收卡', 0);
INSERT INTO `ln_config` VALUES (54, 'WEB_TITLE_EN', 2, '标题', 0, '', '', 1488202484, 1556238321, 0, '', 9);
INSERT INTO `ln_config` VALUES (55, 'WORK_DAY', 2, '工作日', 0, '', '', 1488202605, 1501742561, 0, '9：00-18：00', 7);
INSERT INTO `ln_config` VALUES (56, 'WEB_TEL', 2, '联系电话', 0, '', '', 1488202662, 1500621106, 0, '0771-6730212', 0);
INSERT INTO `ln_config` VALUES (57, 'WEB_SITE', 2, '备案信息', 0, '', '', 1488203263, 1566546530, 0, 'Powered by www.xxxx.com @c 2008-2017 xxxxxx号', 7);
INSERT INTO `ln_config` VALUES (58, 'WEB_COPY_RIGHT', 2, '版权', 0, '', '', 1488203331, 1566546497, 0, 'Copyright©xxxxxxx有限公司 All Rights Reserved 版权所有 复制必究', 8);
INSERT INTO `ln_config` VALUES (59, 'SMS_USERNAME', 1, '短信接口用户名', 0, '', '', 1497432717, 1556086548, 0, 'xxxxxxx', 0);
INSERT INTO `ln_config` VALUES (60, 'SMS_PASSWORD', 1, '短信接口密码', 0, '', '', 1497432807, 1556086560, 0, 'xxxxx', 0);
INSERT INTO `ln_config` VALUES (61, 'SMS_SIGN', 1, '短信签名', 0, '', '', 1497432886, 1556086537, 0, '【收卡网】', 0);
INSERT INTO `ln_config` VALUES (62, 'INVOICE_SITE', 0, '提供发票是否显示', 1, '', '1提供 0 不提供  ', 1501742428, 1501742642, 0, '1', 1);
INSERT INTO `ln_config` VALUES (63, 'SMS_EXPIRE_TIME', 0, '短信验证时间', 0, '', '', 1558007406, 1558007425, 0, '5', 0);
INSERT INTO `ln_config` VALUES (64, 'QQ', 0, '在线客服', 0, '', '', 1558523627, 1615848783, 0, '8373185', 0);
INSERT INTO `ln_config` VALUES (65, 'KEYWORDS', 0, '关键词', 0, '', '', 1559207605, 1559207886, 0, '每天收卡网,礼品卡兑换,二手礼品卡回收,礼品卡,电子卡,电商卡,有价卡券', 0);
INSERT INTO `ln_config` VALUES (66, 'DESCRIPTION', 0, '简介', 0, '', '', 1559207625, 1559207625, 0, '每天收卡网是一家专业的二手卡回收平台,主营礼品卡、电子卡、电商卡、有价卡券回收。', 0);

-- ----------------------------
-- Table structure for ln_email_message
-- ----------------------------
DROP TABLE IF EXISTS `ln_email_message`;
CREATE TABLE `ln_email_message`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '邮箱',
  `email_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '发送内容',
  `email_code` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` int(11) NOT NULL DEFAULT 0 COMMENT '创建时间',
  `send_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '发送状态',
  `send_response_msg` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发送返回信息',
  `is_used` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否使用 1是 0否',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '手机验证码记录表' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of ln_email_message
-- ----------------------------

-- ----------------------------
-- Table structure for ln_favour
-- ----------------------------
DROP TABLE IF EXISTS `ln_favour`;
CREATE TABLE `ln_favour`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `from_member_id` int(11) NOT NULL DEFAULT 0 COMMENT '点赞人ID',
  `to_member_id` int(11) NOT NULL DEFAULT 0 COMMENT '被点赞人ID',
  `add_time` int(10) NOT NULL DEFAULT 0 COMMENT '点赞时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '点赞表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ln_favour
-- ----------------------------

-- ----------------------------
-- Table structure for ln_help
-- ----------------------------
DROP TABLE IF EXISTS `ln_help`;
CREATE TABLE `ln_help`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '标题',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '内容',
  `static` int(1) NULL DEFAULT 1 COMMENT '2不在前台显示',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ln_help
-- ----------------------------
INSERT INTO `ln_help` VALUES (8, '交易保障', '&lt;p&gt;&lt;span style=&quot;color: rgb(255, 0, 0);&quot;&gt;每天收卡网回收的交易流程:&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;1.注册账号，进入会员中心选择&amp;quot;我要卖卡&amp;quot;进行点卡供货。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;2.成功提交点卡后可以点击&amp;quot;订单管理&amp;quot;查看您的点卡处理状态。&lt;br/&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;3.进入会员中心点击提现管理，设置好收款账号后提取货款即可。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 1, 1497404340);
INSERT INTO `ln_help` VALUES (10, '收卡网卡券转让协议', '&lt;p&gt;用户通过网络页面点击确认或以其他方式选择接受本协议，即表示用户与本平台已达成协议并同意接受本协议的全部约定内容。&lt;/p&gt;&lt;p&gt;在接受本协议之前，请用户仔细阅读本协议的全部内容（特别是以粗体下划线标注的内容）。如果您不同意本协议的任意内容，或者无法准确理解本平台对条款的解释，请不要进行后续操作。&lt;/p&gt;&lt;p&gt;第一条：相关定义&lt;/p&gt;&lt;p&gt;礼品卡：本协议所称礼品卡，是指电子商务卡、商城超市卡、游戏充值卡、话费充值卡、旅游预付卡、石油预付充值卡等业务运营商发行的具有一定面值、可用于购买商品或服务的卡片；&lt;/p&gt;&lt;p&gt;礼品卡转让：本协议所称礼品卡转让，是指本平台提供的礼品卡转让服务。用户可将其持有的礼品卡，转让给本平台或本平台合作商户，转让所得的金额将直接转入用户每天收卡网的账户余额中。具体支持的礼品卡卡种以用户使用本服务时的页面提示为准。&lt;/p&gt;&lt;p&gt;第二条：费用&lt;/p&gt;&lt;p&gt;用户使用本服务需要支付一定的手续费，手续费已包含在礼品卡的回收价中；&lt;/p&gt;&lt;p&gt;如果用户选项加急服务，另需支付加急的费用，具体费用由每天收卡网提交礼品卡的页面提示为准，加急服务费将直接从到账金额中扣除。&lt;/p&gt;&lt;p&gt;第三条：权利义务&lt;/p&gt;&lt;p&gt;使用本服务的用户，需符每天收卡网用户实名制度（验证本人手机号码，并上传身份证正反面与手持身份证正面自拍照）；&lt;/p&gt;&lt;p&gt;用户需按照页面提示选择正确的礼品卡面值。如有面值错误余额恕不退还，损失自行承担！&lt;/p&gt;&lt;p&gt;如因礼品卡卡号、卡密不正确或转让前已经使用等原因，导致礼品卡不能转让的，用户需自行解决或联系发卡业务运营商解决，本平台不介入处理；&lt;/p&gt;&lt;p&gt;本平台应按照本协议的约定及页面提示，向用户提供礼品卡转让服务，并保证用户成功转让的资金及时转入其每天收卡网账户；&lt;/p&gt;&lt;p&gt;鉴于互联网及网络交易的特殊性，本平台无法鉴别和判断虚拟交易或正在交易或已交易的礼品卡来源、权属、真伪、等权力属性、自然属性及其他各状况。因此，用户在交易前应加以仔细辨明，并慎重考虑和评估交易可能产生的各项风险。基于此，用户承诺，用户在本平台所从事的礼品卡交易活动属于合法的，用户所提供的礼品卡均具有合法正当的来源；&lt;/p&gt;&lt;p&gt;经国家生效法律文书或行政处罚决定确认用户存在违法行为，或者本平台有足够事实依据可以认定用户存在违法或违反服务协议行为的，本平台有权选择下列一种或多种处理措施进行处理：&lt;/p&gt;&lt;p&gt;中止或终止用户网上交易权限；&lt;/p&gt;&lt;p&gt;注销或删除用户帐户；&lt;/p&gt;&lt;p&gt;在本平台公告上公布用户的违法行为；&lt;/p&gt;&lt;p&gt;保留相应的交易记录提交公安机关处理。&lt;/p&gt;&lt;p&gt;第四条：其他&lt;/p&gt;&lt;p&gt;本协议适用中华人民共和国大陆地区法律。因本平台与用户就本协议的签订、履行或解释发生争议，双方应努力友好协商解决。如协商不成，本平台和用户同意由广西律动宇盟技术有限公司所在地法院管辖审理双方的纠纷或争议；&lt;/p&gt;&lt;p&gt;本协议内容包括协议正文及所有本平台已经发布的或将来可能发布的服务协议、隐私政策、交易规则等条款与本协议具有同等效力，您均应遵照执行；&lt;/p&gt;&lt;p&gt;本协议未尽事宜，以网站上公布的转让服务协议》等相关规则为准。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 2, 1500022384);
INSERT INTO `ln_help` VALUES (11, '平台公告', '&lt;p&gt;平台公告&lt;br/&gt;&lt;/p&gt;', 1, 1505957457);
INSERT INTO `ln_help` VALUES (12, '礼品卡回收说明', '&lt;p&gt;1、礼品卡回收成功后，金额将打入您的账户余额中，您需要通过实名认证之后才可提现；&lt;/p&gt;&lt;p&gt;2、当选择的面值与实际面值不一致时，您将损失差额，而且会造成延迟到账，请正确选择；&lt;/p&gt;&lt;p&gt;3、转让成功前请不要丢弃实体卡；&lt;/p&gt;&lt;p&gt;4、您的账号因自身原因礼品卡被盗取或封存导致不能审核的责任由您自己承担，我们将直接撤单；&lt;/p&gt;&lt;p&gt;5、若您重复提交同一卡号或故意提交错误信息的，我们会取消交易，并冻结您的账户信息；&lt;/p&gt;&lt;p&gt;6、如果您私下将礼品卡信息交易给其他买家，并再次出售给本网站，造成的损失由您承担，我们将对您的账户信息进行冻结处理；&lt;/p&gt;&lt;p&gt;7、礼品卡交易在未给您打款期间出现问题的话，您应积极配合解决问题，根据要求我们将延迟打款，如果问题没有解决我们将按责任轻重来加以处理；&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 2, 1557741152);
INSERT INTO `ln_help` VALUES (13, '卖卡流程', '&lt;h3 class=&quot;panel-title&quot; style=&quot;margin: 0px; padding: 10px 0px 0px; font-weight: 300; font-size: 32px; line-height: 1; color: rgb(0, 132, 0);&quot;&gt;&lt;span style=&quot;color: rgb(255, 0, 0);&quot;&gt;线上回收交易流程&lt;/span&gt;&lt;/h3&gt;&lt;ul class=&quot;stepflow-group clearfix list-paddingleft-2&quot; style=&quot;list-style-type: none;&quot;&gt;&lt;li&gt;&lt;p&gt;1、帐号请绑定手机号码，或者填写正确的联系QQ，以便我们处理您提交的卡出现问题时可以及时和您联系；&lt;/p&gt;&lt;/li&gt;&lt;li&gt;&lt;p&gt;2、请务必按照格式提交正确的卡号卡密，以免浪费您的时间并给您造成不必要的困扰；&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 1, 1557812560);

-- ----------------------------
-- Table structure for ln_institutional_stay
-- ----------------------------
DROP TABLE IF EXISTS `ln_institutional_stay`;
CREATE TABLE `ln_institutional_stay`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '机构入驻人姓名',
  `phone` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '机构入驻人电话',
  `institution_name` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '机构名称',
  `add_time` int(11) NOT NULL DEFAULT 0 COMMENT '机构入驻人提交时间',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '处理状态 (0未处理 1已处理)',
  `treat_time` int(11) NOT NULL DEFAULT 0 COMMENT '管理员处理时间',
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '管理员处理意见',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '机构入驻审核表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ln_institutional_stay
-- ----------------------------

-- ----------------------------
-- Table structure for ln_job_category
-- ----------------------------
DROP TABLE IF EXISTS `ln_job_category`;
CREATE TABLE `ln_job_category`  (
  `id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '文章分类表id',
  `ename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '英文',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '岗位类别名称',
  `sort` smallint(6) NOT NULL DEFAULT 50 COMMENT '排序',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 正常  1 删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '岗位类别' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ln_job_category
-- ----------------------------
INSERT INTO `ln_job_category` VALUES (1, 'R&amp; D depart', '研发部', 0, 0);
INSERT INTO `ln_job_category` VALUES (2, 'Sales', '销售部', 0, 0);
INSERT INTO `ln_job_category` VALUES (4, 'Personnel', '人事部', 0, 0);
INSERT INTO `ln_job_category` VALUES (5, 'Accounting', '会计部', 0, 0);

-- ----------------------------
-- Table structure for ln_loan
-- ----------------------------
DROP TABLE IF EXISTS `ln_loan`;
CREATE TABLE `ln_loan`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '贷款名称',
  `click_count` int(8) NOT NULL DEFAULT 0 COMMENT '查看次数',
  `photo_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '图片路径',
  `approval_cycle_w` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '审批周期单位',
  `approval_cycle` int(6) NULL DEFAULT NULL COMMENT '审批周期',
  `term_loan_start` int(11) NULL DEFAULT NULL COMMENT '借款期限开始',
  `term_loan_end` int(11) NULL DEFAULT NULL COMMENT '借款期限结束',
  `term_loan_w` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '期限单位',
  `rate_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '利率类型',
  `rate` float(5, 2) NULL DEFAULT NULL COMMENT '利率',
  `amount_start` int(6) NULL DEFAULT NULL COMMENT '金额开始',
  `amount_end` int(6) NULL DEFAULT NULL COMMENT '金额结束',
  `application_conditions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '申请条件',
  `materials` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '所需材料',
  `repayment_method` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '还款方式',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '详细说明',
  `add_time` int(11) NULL DEFAULT NULL COMMENT '添加时间',
  `type_id` int(11) UNSIGNED NULL DEFAULT NULL COMMENT '类型id',
  `m_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '手机端链接',
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '申请贷款链接地址',
  `tag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '标签',
  `is_hot` int(2) NULL DEFAULT 0 COMMENT '0：不热门 1：热门',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '贷款信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ln_loan
-- ----------------------------
INSERT INTO `ln_loan` VALUES (5, '测试数据4', 56, '/Uploads/Picture/Loan/2016-11-16/58292e6b57cb5.png', NULL, 4, 2, 36, NULL, '', 0.23, 1000, 200000, '&lt;p&gt;大概多少分&lt;/p&gt;', '&lt;p&gt;的是GV的是分v&lt;/p&gt;', '&lt;p&gt;山东分GV分山东GV&lt;/p&gt;', '&lt;p&gt;DVD是分v&lt;/p&gt;', 1479254397, 1, NULL, 'www.baidu.com', '2', 1);
INSERT INTO `ln_loan` VALUES (6, '测试数据5', 59, '/Uploads/Picture/Loan/2016-11-16/58292ec7471e2.png', NULL, 5, 3, 18, NULL, '', 0.33, 5000, 100000, '&lt;p&gt;二个人风格大方&lt;/p&gt;', '&lt;p&gt;地方GV山东GV&lt;/p&gt;', '&lt;p&gt;&amp;nbsp;的分GV分的是v&lt;/p&gt;', '&lt;p&gt;分GV山东分v山东的是分v&lt;/p&gt;', 1479254376, 1, NULL, 'www.baidu.com', '2', 1);
INSERT INTO `ln_loan` VALUES (7, '测试数据7', 10, '/Uploads/Picture/Loan/2016-11-16/58292f29554df.png', NULL, 2, 3, 9, NULL, '', 0.12, 1000, 20000, '&lt;p&gt;胜多负少&lt;/p&gt;', '&lt;p&gt;山东分GV分山东GV吧&lt;/p&gt;', '&lt;p&gt;同法国的恢复到&lt;/p&gt;', '&lt;p&gt;地方GV大幅度&lt;/p&gt;', 1479254366, 5, NULL, 'www.baidu.com', '2', 0);
INSERT INTO `ln_loan` VALUES (8, '测试数据8', 41, '/Uploads/Picture/Loan/2016-11-16/58292f836b13a.png', NULL, 3, 6, 18, NULL, '', 0.16, 2000, 40000, '&lt;p&gt;对方更好的方式vfd&lt;/p&gt;', '&lt;p&gt;&amp;nbsp;本次代表vdfvbf&lt;/p&gt;', '&lt;p&gt;反对改版费多少个百分点&lt;/p&gt;', '&lt;p&gt;而关于人体后估计&lt;/p&gt;', 1479254357, 5, NULL, 'www.baidu.com', '3', 0);
INSERT INTO `ln_loan` VALUES (9, '测试数据9', 9, '/Uploads/Picture/Loan/2016-11-16/58292fcae0698.png', NULL, 1, 6, 12, NULL, '', 0.30, 1000, 30000, '&lt;p&gt;lk,mbnvcbcGV方便能够分v&lt;/p&gt;', '&lt;p&gt;vfgbgfngngfbvngfghngf刚好能发个&lt;/p&gt;', '&lt;p&gt;规划明年还见过没看好你&lt;/p&gt;', '&lt;p&gt;gfnghkjl,jkh,gb分v灌灌灌灌灌灌灌灌灌哥哥好&lt;/p&gt;', 1479254349, 2, NULL, 'www.baidu.com', '4,2', 0);
INSERT INTO `ln_loan` VALUES (10, '测试数据10', 11, '/Uploads/Picture/Loan/2016-11-16/58292fcae0698.png', NULL, 3, 4, 24, NULL, '', 0.35, 3000, 80000, '&lt;p&gt;GV奋斗改变vdfgvb&lt;/p&gt;', '&lt;p&gt;地方GV播放的&lt;/p&gt;', '&lt;p&gt;发的方法对方的答复&lt;/p&gt;', '&lt;p&gt;福福福福福福福福福福福福福&lt;/p&gt;', 1479254341, 4, NULL, 'www.baidu.com', '5', 0);
INSERT INTO `ln_loan` VALUES (11, '测试数据11', 21, '/Uploads/Picture/Loan/2016-11-16/582930503ac91.png', NULL, 6, 12, 24, NULL, '', 0.21, 30000, 200000, '&lt;p&gt;和嘎嘎嘎灌灌灌灌灌哥哥&lt;/p&gt;', '&lt;p&gt;顶顶顶顶顶顶顶顶顶大大大&lt;/p&gt;', '&lt;p&gt;他天天天天天天天天天天天天&lt;/p&gt;', '&lt;p&gt;人人人人人人人人人人人人人&lt;/p&gt;', 1479254333, 1, NULL, 'www.baidu.com', '5', 0);
INSERT INTO `ln_loan` VALUES (12, '测试数据6', 7, '/Uploads/Picture/Loan/2016-11-16/582964a1f1b61.jpg', NULL, 2, 3, 10, NULL, '', 0.22, 1000, 50000, '&lt;p&gt;fdsgfdsvdc&lt;/p&gt;', '&lt;p&gt;的发布的发布分&lt;/p&gt;', '&lt;p&gt;发的红包&lt;/p&gt;', '&lt;p&gt;地方环保的的&lt;/p&gt;', 1479254325, 1, NULL, 'www.baidu.com', '6', 0);
INSERT INTO `ln_loan` VALUES (13, '哈哈哈哈哈哈哈', 162, '/Uploads/Picture/Loan/2016-11-16/582965bdb4fef.png', NULL, 1, 3, 9, NULL, '', 0.11, 100, 1000, '&lt;p&gt;人更好的发挥不反对改版费&lt;/p&gt;', '&lt;p&gt;对吧分v分v犯错VC&lt;/p&gt;', '&lt;p&gt;fgbfnhgm,jk不管能不能&lt;/p&gt;', '&lt;p&gt;ghmkjk.l;kjkhgfv;后国家哪个服不服&lt;/p&gt;', 1479254316, 1, NULL, 'www.baidu.com', '6', 0);
INSERT INTO `ln_loan` VALUES (14, '现金巴士', 9, '', NULL, 1, 7, 14, NULL, '', 0.70, 500, 1000, '', '', '', '', 1479987596, 1, NULL, 'https://weixin.cashbus.com/#/events/promo/21501', '5', 1);
INSERT INTO `ln_loan` VALUES (15, '你我贷嘉卡贷', 20, '/Uploads/Picture/Loan/2016-11-29/583da1b432c8e.jpg', '小时', 1, 12, 36, '月', '月利率', 0.00, 2000, 10000, '&lt;p&gt;这是测试行距、字体间距等文字展示的一段话（段落无空格）&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; 四个空格键&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; 四个空格键&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; 四个空格键加换行，四个空格键加换行，四个空格键加换行，四个空格键加换行，四个空格键加换行，四个空格键加换行，四个空格键加换行，四个空格键加换行，四个空格键加换行，四个空格键加换行，&lt;/p&gt;', '&lt;p style=&quot;white-space: normal;&quot;&gt;这是测试行距、字体间距等文字展示的一段话（段落无空格）&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;&amp;nbsp; &amp;nbsp; 四个空格键&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;&amp;nbsp; &amp;nbsp; 四个空格键&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;&amp;nbsp; &amp;nbsp; 四个空格键加换行，四个空格键加换行，四个空格键加换行，四个空格键加换行，四个空格键加换行，四个空格键加换行，四个空格键加换行，四个空格键加换行，四个空格键加换行，四个空格键加换行，&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '&lt;p style=&quot;white-space: normal;&quot;&gt;这是测试行距、字体间距等文字展示的一段话（段落无空格）&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;&amp;nbsp; &amp;nbsp; 四个空格键&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;&amp;nbsp; &amp;nbsp; 四个空格键&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;&amp;nbsp; &amp;nbsp; 四个空格键加换行，四个空格键加换行，四个空格键加换行，四个空格键加换行，四个空格键加换行，四个空格键加换行，四个空格键加换行，四个空格键加换行，四个空格键加换行，四个空格键加换行，&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '&lt;p style=&quot;white-space: normal;&quot;&gt;这是测试行距、字体间距等文字展示的一段话（段落无空格）&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;&amp;nbsp; &amp;nbsp; 四个空格键&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;&amp;nbsp; &amp;nbsp; 四个空格键&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;&amp;nbsp; &amp;nbsp; 四个空格键加换行，四个空格键加换行，四个空格键加换行，四个空格键加换行，四个空格键加换行，四个空格键加换行，四个空格键加换行，四个空格键加换行，四个空格键加换行，四个空格键加换行，&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 1480434403, 1, NULL, '', '3', 0);

-- ----------------------------
-- Table structure for ln_loan_record
-- ----------------------------
DROP TABLE IF EXISTS `ln_loan_record`;
CREATE TABLE `ln_loan_record`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NOT NULL DEFAULT 0 COMMENT '用户ID',
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '贷款链接',
  `look_time` int(11) NOT NULL DEFAULT 0 COMMENT '查看时间',
  `loan_id` int(11) NULL DEFAULT NULL COMMENT '贷款id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ln_loan_record
-- ----------------------------
INSERT INTO `ln_loan_record` VALUES (1, 36, 'www.baidu.com', 1479795214, 6);
INSERT INTO `ln_loan_record` VALUES (2, 36, 'www.baidu.com', 1479795294, 9);
INSERT INTO `ln_loan_record` VALUES (3, 36, 'www.baidu.com', 1479795341, 7);
INSERT INTO `ln_loan_record` VALUES (4, 36, 'www.baidu.com', 1479795527, 8);
INSERT INTO `ln_loan_record` VALUES (5, 36, 'www.baidu.com', 1479795570, 10);
INSERT INTO `ln_loan_record` VALUES (6, 36, 'www.baidu.com', 1479795582, 11);
INSERT INTO `ln_loan_record` VALUES (7, 36, 'www.baidu.com', 1479795697, 12);
INSERT INTO `ln_loan_record` VALUES (8, 26, 'www.baidu.com', 1479795935, NULL);
INSERT INTO `ln_loan_record` VALUES (9, 26, 'www.baidu.com', 1479795986, NULL);
INSERT INTO `ln_loan_record` VALUES (10, 26, 'www.baidu.com', 1479796035, NULL);
INSERT INTO `ln_loan_record` VALUES (11, 26, 'www.baidu.com', 1479796045, NULL);
INSERT INTO `ln_loan_record` VALUES (12, 26, 'www.baidu.com', 1479796097, NULL);
INSERT INTO `ln_loan_record` VALUES (13, 26, 'www.baidu.com', 1479796198, NULL);
INSERT INTO `ln_loan_record` VALUES (14, 26, 'www.baidu.com', 1479796252, NULL);
INSERT INTO `ln_loan_record` VALUES (15, 26, 'www.baidu.com', 1479796282, NULL);
INSERT INTO `ln_loan_record` VALUES (16, 26, 'www.baidu.com', 1479796407, NULL);
INSERT INTO `ln_loan_record` VALUES (17, 26, 'www.baidu.com', 1479796416, NULL);
INSERT INTO `ln_loan_record` VALUES (18, 26, 'www.baidu.com', 1479796478, NULL);
INSERT INTO `ln_loan_record` VALUES (19, 26, 'www.baidu.com', 1479796488, NULL);
INSERT INTO `ln_loan_record` VALUES (20, 26, 'www.baidu.com', 1479796517, NULL);
INSERT INTO `ln_loan_record` VALUES (21, 26, 'www.baidu.com', 1479796540, NULL);
INSERT INTO `ln_loan_record` VALUES (22, 24, 'www.baidu.com', 1479796633, NULL);
INSERT INTO `ln_loan_record` VALUES (23, 24, 'www.baidu.com', 1479796674, NULL);
INSERT INTO `ln_loan_record` VALUES (24, 28, 'www.baidu.com', 1479798699, NULL);
INSERT INTO `ln_loan_record` VALUES (25, 28, 'www.baidu.com', 1479799202, NULL);
INSERT INTO `ln_loan_record` VALUES (26, 30, 'www.baidu.com', 1479867117, NULL);
INSERT INTO `ln_loan_record` VALUES (27, 36, 'www.baidu.com', 1480329548, NULL);

-- ----------------------------
-- Table structure for ln_loan_type
-- ----------------------------
DROP TABLE IF EXISTS `ln_loan_type`;
CREATE TABLE `ln_loan_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '名称',
  `sort` int(10) NULL DEFAULT NULL COMMENT '排序',
  `add_time` int(10) NULL DEFAULT NULL,
  `keywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'seo关键字',
  `discription` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'seo描述',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '标题',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ln_loan_type
-- ----------------------------
INSERT INTO `ln_loan_type` VALUES (1, '个人信用贷款', 2, 1480381262, '个人，信用，贷款', '这是一个测试', NULL);
INSERT INTO `ln_loan_type` VALUES (2, '月供贷', 3, 1478746823, NULL, NULL, NULL);
INSERT INTO `ln_loan_type` VALUES (3, '保单贷', 4, 1478746849, NULL, NULL, NULL);
INSERT INTO `ln_loan_type` VALUES (4, '消费贷', 5, 1478746877, NULL, NULL, NULL);
INSERT INTO `ln_loan_type` VALUES (5, '身份证贷', 6, 1478746943, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for ln_mb_user_token
-- ----------------------------
DROP TABLE IF EXISTS `ln_mb_user_token`;
CREATE TABLE `ln_mb_user_token`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '令牌编号',
  `member_id` int(10) UNSIGNED NOT NULL COMMENT '用户编号',
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `login_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `token` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '登录令牌',
  `login_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '登录时间',
  `client_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '客户端类型 android wap',
  `lang` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '移动端登录令牌表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ln_mb_user_token
-- ----------------------------

-- ----------------------------
-- Table structure for ln_member
-- ----------------------------
DROP TABLE IF EXISTS `ln_member`;
CREATE TABLE `ln_member`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `login_type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '登录方式: 0:第三方,1账号(用户名邮箱)',
  `open_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '第三方登录open_id',
  `supplier` tinyint(1) NOT NULL DEFAULT 0 COMMENT '第三方标识',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户名,登录使用 (使用邮箱)',
  `email` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '邮箱',
  `phone` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '手机号',
  `usernick` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户昵称',
  `online_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '用户在线状态,0不在线,1在线',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '密码',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '头像图片',
  `avatar_thumb` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '头像图片缩略图',
  `community_cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '朋友圈形象图片',
  `qr_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户二维码',
  `address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户地址',
  `country` int(11) NOT NULL DEFAULT 0 COMMENT '用户所在国家',
  `langauge` smallint(5) NOT NULL DEFAULT 0 COMMENT '用户所用语言',
  `longitude` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户所在经度',
  `latitude` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户所在纬度',
  `push_channel` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '推送标识',
  `token` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户登录标识',
  `chat_username` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT 'emchat用户名',
  `chat_password` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT 'emchat密码',
  `birthday` int(10) NOT NULL DEFAULT 0 COMMENT '出生日期',
  `sex` tinyint(1) NOT NULL DEFAULT 1 COMMENT '性别 1-男,2-女,0-保密 默认0',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '用户状态  0禁用 1启用 2 删除',
  `reg_time` int(10) NOT NULL DEFAULT 0 COMMENT '注册时间',
  `reg_ip` char(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '注册ip',
  `last_login_ip` char(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '上次登录ip',
  `last_login_time` int(10) NOT NULL DEFAULT 0 COMMENT '上次登录时间',
  `favour_count` int(11) NOT NULL DEFAULT 0 COMMENT '对我的点赞数量',
  `time_zone` int(10) NOT NULL DEFAULT 8 COMMENT '时区',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ln_member
-- ----------------------------
INSERT INTO `ln_member` VALUES (35, 0, '', 0, 'zhengnian', '', '15065901982', '', 0, 'c78b6663d47cfbdb4d65ea51c104044e', '', '', '', '', '', 0, 0, '', '', '', '', '', '', 0, 1, 1, 1480041065, '0.0.0.0', '', 0, 0, 8);

-- ----------------------------
-- Table structure for ln_menu
-- ----------------------------
DROP TABLE IF EXISTS `ln_menu`;
CREATE TABLE `ln_menu`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '菜单名称',
  `pid` int(11) NOT NULL DEFAULT 0 COMMENT '上级菜单ID',
  `sort` int(10) NOT NULL DEFAULT 0 COMMENT '排序（同级有效）',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '链接地址',
  `display` tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否展示 0:否  1;是',
  `tip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '提示',
  `group` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '分组',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 330 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '菜单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ln_menu
-- ----------------------------
INSERT INTO `ln_menu` VALUES (17, '管理员列表', 16, 1, 'Sqnbcadmin/Admin/index', 1, '', '用户管理');
INSERT INTO `ln_menu` VALUES (18, '新增用户', 17, 0, 'Sqnbcadmin/Admin/edit', 1, '添加新用户', '');
INSERT INTO `ln_menu` VALUES (27, '管理员权限管理', 16, 1, 'Sqnbcadmin/AuthManager/index', 1, '', '用户管理');
INSERT INTO `ln_menu` VALUES (28, '删除', 27, 0, 'Sqnbcadmin/AuthManager/changeStatus?method=deleteGroup', 1, '删除用户组', '');
INSERT INTO `ln_menu` VALUES (29, '禁用', 27, 0, 'Sqnbcadmin/AuthManager/changeStatus?method=forbidGroup', 1, '禁用用户组', '');
INSERT INTO `ln_menu` VALUES (30, '恢复', 27, 0, 'Sqnbcadmin/AuthManager/changeStatus?method=resumeGroup', 1, '恢复已禁用的用户组', '');
INSERT INTO `ln_menu` VALUES (31, '新增', 27, 0, 'Sqnbcadmin/AuthManager/createGroup', 1, '创建新的用户组', '');
INSERT INTO `ln_menu` VALUES (32, '编辑', 27, 0, 'Sqnbcadmin/AuthManager/editGroup', 1, '编辑用户组名称和描述', '');
INSERT INTO `ln_menu` VALUES (33, '保存用户组', 27, 0, 'Sqnbcadmin/AuthManager/writeGroup', 1, '新增和编辑用户组的\"保存\"按钮', '');
INSERT INTO `ln_menu` VALUES (34, '授权', 27, 0, 'Sqnbcadmin/AuthManager/group', 1, '\"后台 \\ 用户 \\ 用户信息\"列表页的\"授权\"操作按钮,用于设置用户所属用户组', '');
INSERT INTO `ln_menu` VALUES (35, '访问授权', 27, 0, 'Sqnbcadmin/AuthManager/access', 1, '\"后台 \\ 用户 \\ 权限管理\"列表页的\"访问授权\"操作按钮', '');
INSERT INTO `ln_menu` VALUES (36, '成员授权', 27, 0, 'Sqnbcadmin/AuthManager/user', 1, '\"后台 \\ 用户 \\ 权限管理\"列表页的\"成员授权\"操作按钮', '');
INSERT INTO `ln_menu` VALUES (37, '解除授权', 27, 0, 'Sqnbcadmin/AuthManager/removeFromGroup', 1, '\"成员授权\"列表页内的解除授权操作按钮', '');
INSERT INTO `ln_menu` VALUES (38, '保存成员授权', 27, 0, 'Sqnbcadmin/AuthManager/addToGroup', 1, '\"用户信息\"列表页\"授权\"时的\"保存\"按钮和\"成员授权\"里右上角的\"添加\"按钮)', '');
INSERT INTO `ln_menu` VALUES (39, '分类授权', 27, 0, 'Sqnbcadmin/AuthManager/category', 1, '\"后台 \\ 用户 \\ 权限管理\"列表页的\"分类授权\"操作按钮', '');
INSERT INTO `ln_menu` VALUES (40, '保存分类授权', 27, 0, 'Sqnbcadmin/AuthManager/addToCategory', 1, '\"分类授权\"页面的\"保存\"按钮', '');
INSERT INTO `ln_menu` VALUES (41, '模型授权', 27, 0, 'Sqnbcadmin/AuthManager/modelauth', 1, '\"后台 \\ 用户 \\ 权限管理\"列表页的\"模型授权\"操作按钮', '');
INSERT INTO `ln_menu` VALUES (42, '保存模型授权', 27, 0, 'Sqnbcadmin/AuthManager/addToModel', 1, '\"分类授权\"页面的\"保存\"按钮', '');
INSERT INTO `ln_menu` VALUES (68, '系统设置', 0, 99, 'Sqnbcadmin/Config/group', 1, '', '');
INSERT INTO `ln_menu` VALUES (69, '网站设置', 68, 1, 'Sqnbcadmin/Config/group', 1, '', '系统设置');
INSERT INTO `ln_menu` VALUES (70, '配置管理', 68, 4, 'Sqnbcadmin/Config/index', 1, '', '系统设置');
INSERT INTO `ln_menu` VALUES (71, '编辑', 70, 0, 'Sqnbcadmin/Config/edit', 1, '新增编辑和保存配置', '');
INSERT INTO `ln_menu` VALUES (72, '删除', 70, 0, 'Sqnbcadmin/Config/del', 1, '删除配置', '');
INSERT INTO `ln_menu` VALUES (73, '新增', 70, 0, 'Sqnbcadmin/Config/add', 1, '新增配置', '');
INSERT INTO `ln_menu` VALUES (74, '保存', 70, 0, 'Sqnbcadmin/Config/save', 1, '保存配置', '');
INSERT INTO `ln_menu` VALUES (75, '菜单管理', 68, 5, 'Sqnbcadmin/Menu/index', 1, '', '系统设置');
INSERT INTO `ln_menu` VALUES (96, '新增', 75, 0, 'Sqnbcadmin/Menu/add', 1, '', '系统设置');
INSERT INTO `ln_menu` VALUES (98, '编辑', 75, 0, 'Sqnbcadmin/Menu/edit', 1, '', '');
INSERT INTO `ln_menu` VALUES (109, '修改昵称', 17, 0, 'Sqnbcadmin/Admin/updateNickname', 1, '', '');
INSERT INTO `ln_menu` VALUES (114, '导入', 75, 0, 'Sqnbcadmin/Menu/import', 1, '', '');
INSERT INTO `ln_menu` VALUES (119, '排序', 70, 0, 'AdminConfig/sort', 1, '', '');
INSERT INTO `ln_menu` VALUES (120, '排序', 75, 0, 'Sqnbcadmin/Menu/sort', 1, '', '');
INSERT INTO `ln_menu` VALUES (138, '添加用户', 137, 0, 'Sqnbcadmin/User/addUser', 1, '', '');
INSERT INTO `ln_menu` VALUES (139, '用户详情/修改', 137, 0, 'Sqnbcadmin/User/editUser', 1, '', '');
INSERT INTO `ln_menu` VALUES (140, '用户修改', 17, 0, 'Sqnbcadmin/Admin/editAdmin', 1, '', '');
INSERT INTO `ln_menu` VALUES (159, '查看', 141, 0, 'Sqnbcadmin/OpenClassReservation/seeReservation', 1, '', '');
INSERT INTO `ln_menu` VALUES (162, '资料文章', 162, 8, 'Sqnbcadmin/article/index', 1, '文章管理', '');
INSERT INTO `ln_menu` VALUES (182, '调研问题管理', 181, 0, 'Question/index', 1, '', '数据调研');
INSERT INTO `ln_menu` VALUES (185, 'add', 165, 0, 'Sqnbcadmin/Area/edit', 1, '', '');
INSERT INTO `ln_menu` VALUES (197, '新闻分类', 195, 0, 'Sqnbcadmin/ArticleCategory/index', 1, '', '信息配置管理');
INSERT INTO `ln_menu` VALUES (221, '用户列表', 16, 1, 'Sqnbcadmin/Member/userList', 1, '', '用户管理');
INSERT INTO `ln_menu` VALUES (223, '用户回收站', 16, 2, 'Sqnbcadmin/Member/recycleList', 1, '', '用户管理');
INSERT INTO `ln_menu` VALUES (235, '贷款信息', 233, 0, 'Sqnbcadmin/Loan/index', 1, '', '贷款管理');
INSERT INTO `ln_menu` VALUES (236, '贷款分类', 233, 0, 'Sqnbcadmin/LoanType/index', 1, '', '贷款管理');
INSERT INTO `ln_menu` VALUES (238, '图片管理', 237, 0, 'Sqnbcadmin/Advert/index', 1, '', '图片管理');
INSERT INTO `ln_menu` VALUES (239, '位置管理', 237, 0, 'Sqnbcadmin/AdvertLocation/index', 1, '广告位置管理', '图片管理');
INSERT INTO `ln_menu` VALUES (242, '招聘信息', 241, 0, 'Sqnbcadmin/Recruit/index', 1, '', '招聘管理');
INSERT INTO `ln_menu` VALUES (246, '招聘图文', 241, 0, 'Sqnbcadmin/RecruitImageText/index', 1, '', '招聘管理');
INSERT INTO `ln_menu` VALUES (247, '岗位类别', 241, 0, 'Sqnbcadmin/JobCategory/index', 1, '', '招聘管理');
INSERT INTO `ln_menu` VALUES (249, '启富通团队', 248, 4, 'Sqnbcadmin/Team/index', 1, '', '关于我们');
INSERT INTO `ln_menu` VALUES (251, '产品列表', 250, 3, 'Sqnbcadmin/Product/index', 1, '', '产品服务');
INSERT INTO `ln_menu` VALUES (252, '卡片管理', 0, 3, 'Sqnbcadmin/Card/index', 1, '', '卡片管理');
INSERT INTO `ln_menu` VALUES (255, '卡片分类', 252, 1, 'Sqnbcadmin/CardType/index', 1, '', '卡片管理');
INSERT INTO `ln_menu` VALUES (260, '公司简介', 248, 1, 'Sqnbcadmin/Company/index', 1, '', '关于我们');
INSERT INTO `ln_menu` VALUES (261, '友情链接', 248, 5, 'Sqnbcadmin/Link/index', 1, '', '关于我们');
INSERT INTO `ln_menu` VALUES (263, '课程分类', 262, 1, 'Sqnbcadmin/EductionType/index', 1, '', '教学专区');
INSERT INTO `ln_menu` VALUES (264, '课程列表', 262, 1, 'Sqnbcadmin/Eduction/index', 1, '', '教学专区');
INSERT INTO `ln_menu` VALUES (265, '用户管理', 0, 1, 'Sqnbcadmin/User/index', 1, '', '');
INSERT INTO `ln_menu` VALUES (266, '用户列表', 265, 1, 'Sqnbcadmin/User/index', 1, '', '用户管理');
INSERT INTO `ln_menu` VALUES (269, '手机端产品列表', 267, 1, 'Sqnbcadmin/ProductMobile/index', 1, '', '手机端产品管理');
INSERT INTO `ln_menu` VALUES (271, '咨询类别', 270, 1, 'Sqnbcadmin/ArticleType/index', 1, '', '咨询平台管理');
INSERT INTO `ln_menu` VALUES (272, '咨询列表', 270, 2, 'Sqnbcadmin/Article/index', 1, '', '咨询平台管理');
INSERT INTO `ln_menu` VALUES (273, '关于我们', 0, 5, 'Sqnbcadmin/About/index', 1, '', '');
INSERT INTO `ln_menu` VALUES (274, '公司简介', 273, 1, 'Sqnbcadmin/Company/index', 1, '', '关于我们');
INSERT INTO `ln_menu` VALUES (276, '卡片列表', 252, 2, 'Sqnbcadmin/Card/index', 1, '', '卡片管理');
INSERT INTO `ln_menu` VALUES (278, '产品列表', 277, 1, 'Sqnbcadmin/Product/index', 1, '', '产品服务');
INSERT INTO `ln_menu` VALUES (279, '合作商', 273, 2, 'Sqnbcadmin/Partner/index', 0, '', '关于我们');
INSERT INTO `ln_menu` VALUES (283, '针股记录', 282, 1, 'Sqnbcadmin/referenceRecord/index', 1, '', '针股记录');
INSERT INTO `ln_menu` VALUES (284, '后台用户管理', 0, 8, 'Sqnbcadmin/Admin/index', 1, '', '');
INSERT INTO `ln_menu` VALUES (285, '后台用户列表', 284, 1, 'Sqnbcadmin/Admin/index', 1, '', '后台用户管理');
INSERT INTO `ln_menu` VALUES (286, '卖卡记录', 0, 4, 'Sqnbcadmin/SaleRecord/index', 1, '', '卖卡记录');
INSERT INTO `ln_menu` VALUES (287, '待审核', 286, 1, 'Sqnbcadmin/SaleRecord/index?flag=1', 1, '', '卖卡记录');
INSERT INTO `ln_menu` VALUES (288, '已审核', 286, 2, 'Sqnbcadmin/SaleRecord/index?flag=2', 1, '', '卖卡记录');
INSERT INTO `ln_menu` VALUES (289, '支付提现管理', 0, 5, 'Sqnbcadmin/PaymentRecord/index', 1, '', '支付提现管理');
INSERT INTO `ln_menu` VALUES (290, '已审核提现申请', 289, 1, 'Sqnbcadmin/PaymentRecord/index?static=1', 1, '', '支付提现管理');
INSERT INTO `ln_menu` VALUES (291, '提现申请', 289, 0, 'Sqnbcadmin/PaymentRecord/index', 0, '', '支付提现管理');
INSERT INTO `ln_menu` VALUES (292, '文章中心', 0, 6, 'Sqnbcadmin/Help/index', 1, '', '');
INSERT INTO `ln_menu` VALUES (293, '帮助中心', 292, 1, 'Sqnbcadmin/Help/index', 1, '', '文章中心');
INSERT INTO `ln_menu` VALUES (294, '协议', 273, 3, 'Sqnbcadmin/Protocol/index', 0, '', '关于我们');
INSERT INTO `ln_menu` VALUES (295, '已审核', 265, 3, 'Sqnbcadmin/User/realname?type=1', 1, '', '实名认证');
INSERT INTO `ln_menu` VALUES (296, '文章分类', 292, 0, 'Sqnbcadmin/ArticleCategory/index', 1, '', '文章中心');
INSERT INTO `ln_menu` VALUES (297, '文章列表', 292, 0, 'Sqnbcadmin/Article/index', 1, '', '文章中心');
INSERT INTO `ln_menu` VALUES (298, '管理员角色', 284, 0, 'Sqnbcadmin/AuthManager/index', 1, '', '后台用户管理');
INSERT INTO `ln_menu` VALUES (299, '管理员登录日志', 284, 0, 'Sqnbcadmin/AdminLog/index', 1, '', '后台用户管理');
INSERT INTO `ln_menu` VALUES (300, '通过实名认证', 295, 0, 'Sqnbcadmin/User/permission', 1, '', '');
INSERT INTO `ln_menu` VALUES (301, '认证不通过', 295, 0, 'Sqnbcadmin/User/nopermission', 1, '', '');
INSERT INTO `ln_menu` VALUES (302, '编辑', 266, 0, 'Sqnbcadmin/User/edit', 1, '', '');
INSERT INTO `ln_menu` VALUES (303, '删除', 266, 0, 'Sqnbcadmin/User/del', 1, '', '');
INSERT INTO `ln_menu` VALUES (304, '编辑', 255, 0, 'Sqnbcadmin/CardType/edit', 1, '', '');
INSERT INTO `ln_menu` VALUES (305, '删除', 255, 0, 'Sqnbcadmin/CardType/del', 1, '', '');
INSERT INTO `ln_menu` VALUES (306, '编辑', 276, 0, 'Sqnbcadmin/Card/edit', 1, '', '');
INSERT INTO `ln_menu` VALUES (307, '删除', 276, 0, 'Sqnbcadmin/Card/del', 1, '', '');
INSERT INTO `ln_menu` VALUES (308, '审核通过', 287, 0, 'Sqnbcadmin/SaleRecord/cardRecommend', 1, '', '');
INSERT INTO `ln_menu` VALUES (309, '审核不通过', 287, 0, 'Sqnbcadmin/SaleRecord/cardNoRecommend', 1, '', '');
INSERT INTO `ln_menu` VALUES (310, '编辑', 274, 0, '/Sqnbcadmin/Company/edit', 1, '', '');
INSERT INTO `ln_menu` VALUES (311, '编辑', 279, 0, '/Sqnbcadmin/Partner/edit', 1, '', '');
INSERT INTO `ln_menu` VALUES (312, '删除', 279, 0, '/Sqnbcadmin/Partner/del', 1, '', '');
INSERT INTO `ln_menu` VALUES (313, '立即打款', 291, 0, '/Sqnbcadmin/PaymentRecord/payRecommend', 1, '', '');
INSERT INTO `ln_menu` VALUES (314, '不予打款', 291, 0, '/Sqnbcadmin/PaymentRecord/payNoRecommend', 1, '', '');
INSERT INTO `ln_menu` VALUES (315, '编辑', 296, 0, '/Sqnbcadmin/ArticleCategory/edit', 1, '', '');
INSERT INTO `ln_menu` VALUES (316, '删除', 296, 0, '/Sqnbcadmin/ArticleCategory/del', 1, '', '');
INSERT INTO `ln_menu` VALUES (317, '编辑', 297, 0, '/Sqnbcadmin/Article/edit', 1, '', '');
INSERT INTO `ln_menu` VALUES (318, '删除', 297, 0, '/Sqnbcadmin/Article/del', 1, '', '');
INSERT INTO `ln_menu` VALUES (319, '编辑', 293, 0, '/Sqnbcadmin/Help/edit', 1, '', '');
INSERT INTO `ln_menu` VALUES (320, '删除', 293, 0, '/Sqnbcadmin/Help/del', 1, '', '');
INSERT INTO `ln_menu` VALUES (321, '公告管理', 0, 7, '/Sqnbcadmin/Announcement', 1, '', '公告管理');
INSERT INTO `ln_menu` VALUES (322, '公告列表', 321, 0, '/Sqnbcadmin/Announcement/index', 1, '', '公告管理');
INSERT INTO `ln_menu` VALUES (323, '网点管理', 0, 9, 'Sqnbcadmin/Area/index', 0, '', '地址管理');
INSERT INTO `ln_menu` VALUES (324, '地址管理', 323, 0, 'Sqnbcadmin/Area/index', 1, '', '地址管理');
INSERT INTO `ln_menu` VALUES (326, '网点管理', 323, 0, '/Sqnbcadmin/Network/index', 1, '', '网点管理');
INSERT INTO `ln_menu` VALUES (327, '未审核', 265, 2, 'Sqnbcadmin/User/realname?type=2', 1, '', '实名认证');
INSERT INTO `ln_menu` VALUES (328, '支付宝提现申请', 289, 0, '/Sqnbcadmin/PaymentRecord/aliapply', 1, '', '支付提现管理');
INSERT INTO `ln_menu` VALUES (329, '银行卡提现申请', 289, 0, '/Sqnbcadmin/PaymentRecord/bankapply', 1, '', '支付提现管理');

-- ----------------------------
-- Table structure for ln_network
-- ----------------------------
DROP TABLE IF EXISTS `ln_network`;
CREATE TABLE `ln_network`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '网点名称',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '座机',
  `phone` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `level1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `level2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `level3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` tinyint(4) NULL DEFAULT 0 COMMENT '0正常 2删除',
  `add_time` int(11) NULL DEFAULT NULL,
  `sort` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ln_network
-- ----------------------------
INSERT INTO `ln_network` VALUES (1, '施工费', '三个', '124', '13564613212', '6', '8', '11', 2, 1506049106, 0);
INSERT INTO `ln_network` VALUES (2, '石家庄网点', '公司', '7564856', '13468152366', '6', '8', '10', 0, 1506049169, 0);
INSERT INTO `ln_network` VALUES (3, '石家庄网点', '大大发大大发大大发大大发大大发大大发大大发大大发大大发大大发大大发大大发大大发大大发大大发大大发大大发大大发大大发', '1234567', '12345678909', '6', '8', '10', 0, 1506058618, 0);
INSERT INTO `ln_network` VALUES (4, '3423', '23423423', '342342', '34234', '6', '8', '10', 2, 1506130797, 0);
INSERT INTO `ln_network` VALUES (5, '二二恶', '尔', '', '', '6', '8', '11', 2, 1506131049, 0);
INSERT INTO `ln_network` VALUES (6, 'dfsd', 'fsdf', '', '', '6', '8', '10', 0, 1506414258, 0);

-- ----------------------------
-- Table structure for ln_order
-- ----------------------------
DROP TABLE IF EXISTS `ln_order`;
CREATE TABLE `ln_order`  (
  `order_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `order_sn` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '订单编号',
  `user_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户id',
  `order_status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '订单状态(1待验证 2交易成功 3交易失败)',
  `pay_status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '支付状态',
  `mobile` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '手机',
  `order_amount` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '实际到账',
  `total_amount` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '预计可得',
  `add_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '下单时间',
  `card_id` int(11) NULL DEFAULT NULL COMMENT '卡种',
  `card_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '卡种名称',
  `service_price` decimal(10, 2) NULL DEFAULT NULL,
  `end_time` int(11) NULL DEFAULT NULL COMMENT '交易完成时间',
  `type_id` int(11) NULL DEFAULT NULL COMMENT '卡类',
  `is_entitycard` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '\'是否是实体卡(0 否 1是)\',',
  PRIMARY KEY (`order_id`) USING BTREE,
  UNIQUE INDEX `order_sn`(`order_sn`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  INDEX `order_status`(`order_status`) USING BTREE,
  INDEX `pay_status`(`pay_status`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ln_order
-- ----------------------------

-- ----------------------------
-- Table structure for ln_order_card
-- ----------------------------
DROP TABLE IF EXISTS `ln_order_card`;
CREATE TABLE `ln_order_card`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `sale_record_id` int(11) NOT NULL COMMENT '订单id',
  `card_number` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '卡号',
  `card_password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '卡片密码',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ln_order_card
-- ----------------------------

-- ----------------------------
-- Table structure for ln_partner
-- ----------------------------
DROP TABLE IF EXISTS `ln_partner`;
CREATE TABLE `ln_partner`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '标题',
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '简介',
  `photo_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '图片',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ln_partner
-- ----------------------------
INSERT INTO `ln_partner` VALUES (5, '江西银行', 'http://www.zgymw.com/', '/Uploads/Picture/Partner/2017-07-12/59473dac72222.png', 1499820814);
INSERT INTO `ln_partner` VALUES (6, '中国银联', 'http://www.zgymw.com/', '/Uploads/Picture/Partner/2017-07-12/59473de25596c.png', 1499820828);
INSERT INTO `ln_partner` VALUES (7, '招商银行', 'http://www.zgymw.com/', '/Uploads/Picture/Partner/2017-07-12/59473dfce96be.png', 1499820797);
INSERT INTO `ln_partner` VALUES (8, '新浪支付', 'http://www.zgymw.com/', '/Uploads/Picture/Partner/2017-07-12/59473e13a699a.png', 1499820783);
INSERT INTO `ln_partner` VALUES (9, '微财富', 'http://www.zgymw.com/', '/Uploads/Picture/Partner/2017-07-12/59473e77455bb.png', 1499820768);
INSERT INTO `ln_partner` VALUES (10, '汇添富基金', 'http://www.zgymw.com/', '/Uploads/Picture/Partner/2017-07-12/59473ea2aa8ce.png', 1499820753);
INSERT INTO `ln_partner` VALUES (11, '易联支付', 'http://www.zgymw.com/', '/Uploads/Picture/Partner/2017-07-12/59473ec2b6b77.png', 1499820737);
INSERT INTO `ln_partner` VALUES (12, '民生银行', 'http://www.zgymw.com/', '/Uploads/Picture/Partner/2017-07-12/59473edad7093.png', 1499820722);

-- ----------------------------
-- Table structure for ln_payment_record
-- ----------------------------
DROP TABLE IF EXISTS `ln_payment_record`;
CREATE TABLE `ln_payment_record`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `sale_record_id` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '提现订单id',
  `member_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '打款人名称',
  `alipaycount` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '支付宝帐号',
  `balance` decimal(10, 2) NULL DEFAULT NULL COMMENT '账户余额',
  `pay_cash` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '提现金额',
  `user` varchar(14) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户id',
  `flag` int(1) NOT NULL DEFAULT 1 COMMENT '是否审核 1：未审核  2：已审核',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `flag_time` int(11) NULL DEFAULT NULL COMMENT '提现时间',
  `static` int(1) NULL DEFAULT NULL COMMENT '是否通过 1：未通过  2：已打款',
  `falg_type` int(1) NULL DEFAULT NULL COMMENT '提现方式：1支付宝2银行卡',
  `account_id` int(11) NULL DEFAULT NULL COMMENT '提现账号的id',
  `bankname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '银行名称',
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '说明',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '提现记录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ln_payment_record
-- ----------------------------

-- ----------------------------
-- Table structure for ln_product
-- ----------------------------
DROP TABLE IF EXISTS `ln_product`;
CREATE TABLE `ln_product`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '标题',
  `product_type_id` int(11) NULL DEFAULT 0 COMMENT '分类',
  `define` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '产品定义',
  `ideas` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '选股思路',
  `feature` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '产品特点',
  `advantage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '产品优势',
  `price` decimal(10, 0) NOT NULL DEFAULT 0 COMMENT '价格',
  `used_time` int(2) NOT NULL DEFAULT 0 COMMENT '使用时间',
  `customers` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '适合客户',
  `photo_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '媒体图标',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `attach_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '上传文件的路径',
  `sort` int(3) NOT NULL DEFAULT 0 COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ln_product
-- ----------------------------
INSERT INTO `ln_product` VALUES (5, '标准版', 0, '从当前市场热点题材中选取一大主题进行投资;', '热点消息+热点板块+热点资金，把握市场中热门的主题投资，任何一位投资者热点消息+热点板块+热点资金，把握市场中热门的主题投资，任何一位投资者热点消息+热点板块+热点资金，把握市场中热门的主题投资，任何一位投资者热点消息+热点板块+热点资金，把握市场中热门的主题投资，任何一位投资者热点消息+热点板块+热点资金，把握市场中热门的主题投资，任何一位投资者热点消息+热点板块+热点资金，把握市场中热门的主题投资，任何一位投资者热点消息+热点板块+热点资金，把握市场中热门的主题投资，任何一位投资者热点消息+热点板块+热点资金，把握市场中热门的主题投资，任何一位投资者热点消息+热点板块+热点资金，把握市场中热门的主题投资，任何一位投资者', '热点消息、热点题材、选中题材即可锁定利润', ' 把握主流热点、每周更新两次、从此不错是短信热点', 12000, 6, '拥有资金量在10万-20万之间，具有一定持股耐心的投资者', '/Uploads/Picture/Product/2017-04-19/58ad5e10cdf29.png', 1487756866, '/Uploads/UploadsField/Product/2017-04-19/58be0457d1af2.zip', 1);
INSERT INTO `ln_product` VALUES (6, '经典版', 0, '从当前市场热点题材中选取一大主题进行投资;', '热点消息+热点板块+热点资金，把握市场中热门的主题投资，任何一位投资者热点消息+热点板块+热点资金，把握市场中热门的主题投资，任何一位投资者热点消息+热点板块+热点资金，把握市场中热门的主题投资，任何一位投资者热点消息+热点板块+热点资金，把握市场中热门的主题投资，任何一位投资者热点消息+热点板块+热点资金，把握市场中热门的主题投资，任何一位投资者热点消息+热点板块+热点资金，把握市场中热门的主题投资，任何一位投资者热点消息+热点板块+热点资金，把握市场中热门的主题投资，任何一位投资者热点消息+热点板块+热点资金，把握市场中热门的主题投资，任何一位投资者热点消息+热点板块+热点资金，把握市场中热门的主题投资，任何一位投资者', '热点消息、热点题材、选中题材即可锁定利润', '把握主流热点、每周更新两次、从此不错是短信热点', 12000, 6, '拥有资金量在10万-20万之间，具有一定持股耐心的投资者', '/Uploads/Picture/Product/2017-03-15/58ae295f3e11b.png', 1487808864, '/Uploads/UploadsField/Product/2017-03-16/58be4caf3037a.zip', 2);
INSERT INTO `ln_product` VALUES (7, '至尊VIP版', 0, '从当前市场热点题材中选取一大主题进行投资;', '热点消息+热点板块+热点资金，把握市场中热门的主题投资，任何一位投资者热点消息+热点板块+热点资金，把握市场中热门的主题投资，任何一位投资者热点消息+热点板块+热点资金，把握市场中热门的主题投资，任何一位投资者热点消息+热点板块+热点资金，把握市场中热门的主题投资，任何一位投资者热点消息+热点板块+热点资金，把握市场中热门的主题投资，任何一位投资者热点消息+热点板块+热点资金，把握市场中热门的主题投资，任何一位投资者热点消息', '热点消息、热点题材、选中题材即可锁定利润', ' 把握主流热点、每周更新两次、从此不错是短信热点', 12000, 6, '拥有资金量在10万-20万之间，具有一定持股耐心的投资者', '/Uploads/Picture/Product/2017-03-15/58ae2a20c32be.png', 1487809059, '/Uploads/UploadsField/Product/2017-03-16/58be0440afab6.zip', 4);
INSERT INTO `ln_product` VALUES (8, '至尊定制版', 0, '从当前市场热点题材中选取一大主题进行投资;', '热点消息+热点板块+热点资金，把握市场中热门的主题投资，任何一位投资者热点消息+热点板块+热点资金，把握市场中热门的主题投资，任何一位投资者热点消息+热点板块+热点资金，把握市场中热门的主题投资，任何一位投资者热点消息+热点板块+热点资金，把握市场中热门的主题投资，任何一位投资者热点消息+热点板块+热点资金，把握市场中热门的主题投资，任何一位投资者热点消息+热点板块+热点资金，把握市场中热门的主题投资，任何一位投资者热点消息', '热点消息、热点题材、选中题材即可锁定利润', '把握主流热点、每周更新两次、从此不错是短信热点', 12000, 6, '拥有资金量在10万-20万之间，具有一定持股耐心的投资者', '/Uploads/Picture/Product/2017-03-15/58ae2a860706c.png', 1487809159, '/Uploads/UploadsField/Product/2017-03-16/58be044b61b19.zip', 3);

-- ----------------------------
-- Table structure for ln_product_mobile
-- ----------------------------
DROP TABLE IF EXISTS `ln_product_mobile`;
CREATE TABLE `ln_product_mobile`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '文章表自增id',
  `stock_no` int(14) NOT NULL COMMENT '股票编码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '文章标题名称',
  `introduce` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '简介',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '内容',
  `add_time` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  `photo_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '标题图片路径',
  `for_member` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0:适用非会员；1:适用于会员',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 204 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文章表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ln_product_mobile
-- ----------------------------
INSERT INTO `ln_product_mobile` VALUES (198, 2147483647, '消息面股', '在线针股', '&lt;p&gt;消息面股消息面股消息面股消息面股消息面股消息面股消息面股消息面股消息面股消息面股消息面股消息面股消息面股消息面股消息面股消息面股消息面股消息面股消息面股消息面股消息面股消息面股消息面股消息面股消息面股消息面股消息面股消息面股消息面股消息面股消息面股消息面股消息面股消息面股消息面股消息面股消息面股消息面股消息面股消息面股消息面股消息面股消息面股消息面股消息面股消息面股消息面股消息面股消息面股消息面股消息面股消息面股消息面股消息面股消息面股消息面股消息面股消息面股&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20170308/1488940985616775.png&quot; title=&quot;1488940985616775.png&quot; alt=&quot;teach.png&quot;/&gt;&lt;/p&gt;', 1488940987, '/Uploads/Picture/ProductMobile/2017-03-08/58b779c5a3c9a.png', 1);
INSERT INTO `ln_product_mobile` VALUES (199, 2147483647, '消息面股', '消息面股', '&lt;p&gt;消息面股消息面股消息面股消息面股消息面股消息面股消息面股消息面股消息面股消息面股消息面股消息面股消息面股消息面股消息面股消息面股消息面股消息面股消息面股消息面股消息面股消息面股消息面股消息面股&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20170308/1488940842730323.png&quot; title=&quot;1488940842730323.png&quot; alt=&quot;teach.png&quot;/&gt;&lt;/p&gt;', 1488940844, '/Uploads/Picture/ProductMobile/2017-03-08/58b77a675c124.png', 0);
INSERT INTO `ln_product_mobile` VALUES (200, 2147483647, '腾龙在天', '腾龙在天', '&lt;p&gt;腾龙在天腾龙在天腾龙在天腾龙在天腾龙在天腾龙在天腾龙在天腾龙在天腾龙在天腾龙在天腾龙在天腾龙在天腾龙在天腾龙在天腾龙在天腾龙在天腾龙在天腾龙在天腾龙在天腾龙在天腾龙在天腾龙在天腾龙在天腾龙在天腾龙在天腾龙在天腾龙在天腾龙在天腾龙在天&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20170308/1488940922803434.png&quot; title=&quot;1488940922803434.png&quot; alt=&quot;teach.png&quot;/&gt;&lt;/p&gt;', 1488940924, '/Uploads/Picture/ProductMobile/2017-03-08/58b77a8f18ffc.png', 1);
INSERT INTO `ln_product_mobile` VALUES (201, 2147483647, '牛气冲天', '牛气冲天', '&lt;p&gt;牛气冲天牛气冲天牛气冲天牛气冲天牛气冲天牛气冲天牛气冲天牛气冲天牛气冲天牛气冲天牛气冲天牛气冲天牛气冲天牛气冲天牛气冲天牛气冲天牛气冲天牛气冲天牛气冲天牛气冲天牛气冲天牛气冲天牛气冲天牛气冲天牛气冲天牛气冲天牛气冲天牛气冲天牛气冲天牛气冲天牛气冲天牛气冲天牛气冲天牛气冲天&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20170308/1488940865748129.png&quot; title=&quot;1488940865748129.png&quot; alt=&quot;teach.png&quot;/&gt;&lt;/p&gt;', 1488940867, '/Uploads/Picture/ProductMobile/2017-03-08/58b77ae169bd1.png', 1);
INSERT INTO `ln_product_mobile` VALUES (202, 2147483647, '软件选股', '软件选股', '&lt;p&gt;软件选股软件选股软件选股软件选股软件选股软件选股软件选股软件选股软件选股软件选股软件选股软件选股软件选股软件选股软件选股软件选股软件选股软件选股软件选股软件选股软件选股软件选股软件选股软件选股软件选股软件选股软件选股软件选股软件选股软件选股软件选股软件选股软件选股软件选股软件选股软件选股软件选股软件选股软件选股软件选股软件选股软件选股软件选股软件选股软件选股软件选股软件选股&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20170308/1488940954802070.png&quot; title=&quot;1488940954802070.png&quot; alt=&quot;teach.png&quot;/&gt;&lt;/p&gt;', 1488940955, '/Uploads/Picture/ProductMobile/2017-03-08/58b77b1692852.png', 1);
INSERT INTO `ln_product_mobile` VALUES (203, 2147483647, '盈利模式', '盈利模式', '&lt;p&gt;盈利模式盈利模式盈利模式盈利模式盈利模式盈利模式盈利模式盈利模式盈利模式盈利模式盈利模式盈利模式盈利模式盈利模式盈利模式盈利模式盈利模式盈利模式盈利模式盈利模式盈利模式盈利模式盈利模式盈利模式盈利模式&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/ueditor/php/upload/image/20170308/1488940973540206.png&quot; title=&quot;1488940973540206.png&quot; alt=&quot;teach.png&quot;/&gt;&lt;/p&gt;', 1488940974, '/Uploads/Picture/ProductMobile/2017-03-08/58b77b3c92517.png', 1);

-- ----------------------------
-- Table structure for ln_product_type
-- ----------------------------
DROP TABLE IF EXISTS `ln_product_type`;
CREATE TABLE `ln_product_type`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '分类名称',
  `add_time` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 112 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文章表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ln_product_type
-- ----------------------------
INSERT INTO `ln_product_type` VALUES (110, '产品类型01', 1487922033);
INSERT INTO `ln_product_type` VALUES (111, '产品类型02', 1487922043);

-- ----------------------------
-- Table structure for ln_protocol
-- ----------------------------
DROP TABLE IF EXISTS `ln_protocol`;
CREATE TABLE `ln_protocol`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '内容',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ln_protocol
-- ----------------------------
INSERT INTO `ln_protocol` VALUES (1, '&lt;p&gt;&amp;nbsp;4564564564&lt;br/&gt;&lt;/p&gt;', 0);

-- ----------------------------
-- Table structure for ln_push
-- ----------------------------
DROP TABLE IF EXISTS `ln_push`;
CREATE TABLE `ln_push`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `open_type` tinyint(255) UNSIGNED NULL DEFAULT 1 COMMENT '1 打开URL  2打开公告文章',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '推送标题',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '打开URL',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '描述',
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '形象图片',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '推送内容',
  `add_time` int(10) NULL DEFAULT 0 COMMENT '添加时间',
  `push_time` int(11) NULL DEFAULT 0 COMMENT '推送时间',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '状态 0正常 1删除',
  `send_state` tinyint(4) NULL DEFAULT 1 COMMENT '是否推送 0已经推送, 1未推送',
  `delete_time` int(11) NULL DEFAULT 0 COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '推送表' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of ln_push
-- ----------------------------

-- ----------------------------
-- Table structure for ln_recruit
-- ----------------------------
DROP TABLE IF EXISTS `ln_recruit`;
CREATE TABLE `ln_recruit`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '表自增id',
  `ename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '职务名称',
  `eaddress` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `category_id` smallint(6) NOT NULL DEFAULT 0 COMMENT '关联岗位表id',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '工作地点',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT 'hr 邮箱',
  `edescription` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '英文描述',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '职位描述',
  `add_time` int(11) NOT NULL DEFAULT 0 COMMENT '添加新闻的时间',
  `phone` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT 'hr联系电话',
  `salary` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '薪资范围',
  `disable` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0启用1禁用',
  `sort` int(4) NOT NULL DEFAULT 0 COMMENT '排序',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '状态 0正常 1删除 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '招聘表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ln_recruit
-- ----------------------------
INSERT INTO `ln_recruit` VALUES (1, 'fffae', 'fff', 'fffa', 1, 'fff', '779733435@qq.com', '', '&lt;p&gt;fffffff&lt;/p&gt;', 111, '15376243997', '10k-20k', 1, 100, 0);
INSERT INTO `ln_recruit` VALUES (7, 'aaa', '前段主程', 'fffffda ee ', 1, 'faf', '779733435@qq.com', '', '&lt;p style=&quot;white-space: normal; line-height: 24px; background: white;&quot;&gt;&lt;span style=&quot;font-size: 16px;&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-family: 宋体; color: rgb(51, 51, 51);&quot;&gt;工作职责：&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;white-space: normal; line-height: 24px; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12px; font-family: &quot; microsoft=&quot;&quot; color:=&quot;&quot;&gt;1&lt;/span&gt;&lt;span style=&quot;font-size: 12px; font-family: 宋体; color: rgb(51, 51, 51);&quot;&gt;、使&lt;/span&gt;&lt;span style=&quot;font-size: 12px;&quot;&gt;&lt;span style=&quot;font-family: 宋体; color: rgb(51, 51, 51);&quot;&gt;用&lt;/span&gt;&lt;span microsoft=&quot;&quot; color:=&quot;&quot;&gt;Unity 3D&lt;/span&gt;&lt;span style=&quot;font-family: 宋体; color: rgb(51, 51, 51);&quot;&gt;技术带领开发团队进行项目开发；&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;white-space: normal; line-height: 24px; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12px; font-family: &quot; microsoft=&quot;&quot; color:=&quot;&quot;&gt;2&lt;/span&gt;&lt;span style=&quot;font-size: 12px; font-family: 宋体; color: rgb(51, 51, 51);&quot;&gt;、负责核心架构的搭建以及技术攻关；&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;white-space: normal; line-height: 24px; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12px; font-family: &quot; microsoft=&quot;&quot; color:=&quot;&quot;&gt;3&lt;/span&gt;&lt;span style=&quot;font-size: 12px; font-family: 宋体; color: rgb(51, 51, 51);&quot;&gt;、负责项目内开发人员的工作分配、工作质量把控、评估、培训及团队技术提升工作；&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;white-space: normal; line-height: 24px; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12px; font-family: &quot; microsoft=&quot;&quot; color:=&quot;&quot;&gt;4&lt;/span&gt;&lt;span style=&quot;font-size: 12px; font-family: 宋体; color: rgb(51, 51, 51);&quot;&gt;、负责与策划和美术部门沟通与对接，制定开发团队的工作计划、保障项目进度。&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;white-space: normal; line-height: 24px; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12px; font-family: 宋体; color: rgb(51, 51, 51);&quot;&gt;任职要求：&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;white-space: normal; line-height: 24px; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12px; font-family: &quot; microsoft=&quot;&quot; color:=&quot;&quot;&gt;1&lt;/span&gt;&lt;span style=&quot;font-size: 12px; font-family: 宋体; color: rgb(51, 51, 51);&quot;&gt;、本科及以上学历，&lt;/span&gt;&lt;span style=&quot;font-size: 12px; font-family: &quot; microsoft=&quot;&quot; color:=&quot;&quot;&gt;5&lt;/span&gt;&lt;span style=&quot;font-size: 12px; font-family: 宋体; color: rgb(51, 51, 51);&quot;&gt;年以上游戏开发经验，至少&lt;/span&gt;&lt;span style=&quot;font-size: 12px; font-family: &quot; microsoft=&quot;&quot; color:=&quot;&quot;&gt;3&lt;/span&gt;&lt;span style=&quot;font-size: 12px; font-family: 宋体; color: rgb(51, 51, 51);&quot;&gt;款完整项目的制作，&lt;/span&gt;&lt;span style=&quot;font-size: 12px; font-family: &quot; microsoft=&quot;&quot; color:=&quot;&quot;&gt;3&lt;/span&gt;&lt;span style=&quot;font-size: 12px; font-family: 宋体; color: rgb(51, 51, 51);&quot;&gt;年以上&lt;/span&gt;&lt;span style=&quot;font-size: 12px; font-family: &quot; microsoft=&quot;&quot; color:=&quot;&quot;&gt;Unity 3D&lt;/span&gt;&lt;span style=&quot;font-size: 12px; font-family: 宋体; color: rgb(51, 51, 51);&quot;&gt;游戏开发经验；&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;white-space: normal; line-height: 24px; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12px; font-family: &quot; microsoft=&quot;&quot; color:=&quot;&quot;&gt;2&lt;/span&gt;&lt;span style=&quot;font-size: 12px; font-family: 宋体; color: rgb(51, 51, 51);&quot;&gt;、热爱技术和游戏，熟悉移动平台开发技术，熟悉&lt;/span&gt;&lt;span style=&quot;font-size: 12px; font-family: &quot; microsoft=&quot;&quot; color:=&quot;&quot;&gt;Unity 3D&lt;/span&gt;&lt;span style=&quot;font-size: 12px; font-family: 宋体; color: rgb(51, 51, 51);&quot;&gt;引擎架构设计；&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;white-space: normal; line-height: 24px; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12px; font-family: &quot; microsoft=&quot;&quot; color:=&quot;&quot;&gt;3&lt;/span&gt;&lt;span style=&quot;font-size: 12px; font-family: 宋体; color: rgb(51, 51, 51);&quot;&gt;、有较强分析和解决问题的能力；&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;white-space: normal; line-height: 24px; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12px; font-family: &quot; microsoft=&quot;&quot; color:=&quot;&quot;&gt;4&lt;/span&gt;&lt;span style=&quot;font-size: 12px; font-family: 宋体; color: rgb(51, 51, 51);&quot;&gt;、具有一定的管理经验，富于团队精神；&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;white-space: normal; line-height: 24px; background: white;&quot;&gt;&lt;span style=&quot;font-size: 12px; font-family: &quot; microsoft=&quot;&quot; color:=&quot;&quot;&gt;5&lt;/span&gt;&lt;span style=&quot;font-size: 12px; font-family: 宋体; color: rgb(51, 51, 51);&quot;&gt;、强烈的事业心，具有创业者精神，严谨的工作作风。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 0, '15376243997', '20k-30k', 0, 1111, 0);
INSERT INTO `ln_recruit` VALUES (8, 'ddd', 'fff', 'fffaegsagg', 4, 'fff', '779733435@qq.com', '', '&lt;p&gt;ffaf&lt;/p&gt;', 1481083621, '15376243997', '20k-30k', 0, 12, 0);
INSERT INTO `ln_recruit` VALUES (9, 'test position', '测试国际化', 'chinese global', 2, '中关村', '', '&lt;p&gt;ddddddddd jifj iopg ;pkfoa kme fjia p;loe kijioah fiha kh foiahf ghai &lt;br/&gt;&lt;/p&gt;&lt;p&gt;fhaihf ohga oijhg &lt;br/&gt;&lt;/p&gt;&lt;p&gt;gao &lt;br/&gt;&lt;/p&gt;', '&lt;p&gt;&lt;br/&gt;顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶帆帆帆帆帆帆帆帆帆帆&lt;/p&gt;&lt;p&gt;&lt;br/&gt;发发发发烦烦烦烦烦烦烦烦烦烦烦烦烦烦烦哦了谔谔谔谔评价&lt;/p&gt;&lt;p&gt;&lt;br/&gt;烦烦烦烦烦烦烦烦烦烦烦烦烦烦烦烦烦烦发方法烦烦烦烦烦烦烦烦烦&lt;/p&gt;&lt;p&gt;&lt;br/&gt;烦烦烦烦烦烦烦烦烦烦烦烦啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊&lt;/p&gt;', 1481521000, '', '20k-30k', 0, 0, 0);
INSERT INTO `ln_recruit` VALUES (10, 'mfamf', 'fff ', 'ddddd', 1, 'ffafaf', '', '', '&lt;p&gt;ffffffffffffffffffffffffffffffffffffffff&lt;br/&gt;&lt;/p&gt;&lt;p&gt;ffffffffffffffffffffffffffffffffffffffff&lt;/p&gt;&lt;p&gt;fffffffffffffffffffffffffffffffffffffff&lt;/p&gt;&lt;p&gt;ffffffffffffffffffffffffffffffffffffff&lt;/p&gt;&lt;p&gt;ffffffffffffffffffffffffffffffffffffff&lt;/p&gt;&lt;p&gt;fffffffffffffffffffffffffffffffffffffffffff&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 1481710072, '', '20-30k', 0, 1, 0);
INSERT INTO `ln_recruit` VALUES (11, 'mfamf', 'fff ', 'ddddd', 1, 'ffafaf', '', '', '&lt;p&gt;ffffffffffffffffffffffffffffffffffffffff&lt;br/&gt;&lt;/p&gt;&lt;p&gt;ffffffffffffffffffffffffffffffffffffffff&lt;/p&gt;&lt;p&gt;fffffffffffffffffffffffffffffffffffffff&lt;/p&gt;&lt;p&gt;ffffffffffffffffffffffffffffffffffffff&lt;/p&gt;&lt;p&gt;ffffffffffffffffffffffffffffffffffffff&lt;/p&gt;&lt;p&gt;fffffffffffffffffffffffffffffffffffffffffff&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;ffffffffffffffffffffffffffffffffffffffff&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;ffffffffffffffffffffffffffffffffffffffff&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;fffffffffffffffffffffffffffffffffffffff&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;ffffffffffffffffffffffffffffffffffffff&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;ffffffffffffffffffffffffffffffffffffff&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;fffffffffffffffffffffffffffffffffffffffffff&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;ffffffffffffffffffffffffffffffffffffffff&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;ffffffffffffffffffffffffffffffffffffffff&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;fffffffffffffffffffffffffffffffffffffff&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;ffffffffffffffffffffffffffffffffffffff&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;ffffffffffffffffffffffffffffffffffffff&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;fffffffffffffffffffffffffffffffffffffffffff&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;ffffffffffffffffffffffffffffffffffffffff&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;ffffffffffffffffffffffffffffffffffffffff&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;fffffffffffffffffffffffffffffffffffffff&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;ffffffffffffffffffffffffffffffffffffff&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;ffffffffffffffffffffffffffffffffffffff&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;fffffffffffffffffffffffffffffffffffffffffff&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;ffffffffffffffffffffffffffffffffffffffff&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;ffffffffffffffffffffffffffffffffffffffff&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;fffffffffffffffffffffffffffffffffffffff&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;ffffffffffffffffffffffffffffffffffffff&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;ffffffffffffffffffffffffffffffffffffff&lt;/p&gt;&lt;p style=&quot;white-space: normal;&quot;&gt;fffffffffffffffffffffffffffffffffffffffffff&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 1481710234, '', '20-30k', 0, 1, 0);

-- ----------------------------
-- Table structure for ln_recruit_image_text
-- ----------------------------
DROP TABLE IF EXISTS `ln_recruit_image_text`;
CREATE TABLE `ln_recruit_image_text`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '表自增id',
  `ename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '英文名称',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '图文名称',
  `m_photo_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '手机图片',
  `photo_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '图片名称',
  `edescription` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '英文描述',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '福利描述',
  `add_time` int(11) NOT NULL DEFAULT 0 COMMENT '添加时间',
  `disable` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 启用 1 禁用',
  `sort` int(5) NOT NULL DEFAULT 0 COMMENT '排序',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '状态 0正常 1删除 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '招聘图文表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ln_recruit_image_text
-- ----------------------------
INSERT INTO `ln_recruit_image_text` VALUES (1, 'Day-to-day benefits', '日常福利', '/Uploads/Picture/RecruitImageText/2016-12-20/5858ce49a4564.jpg', '/Uploads/Picture/RecruitImageText/2016-12-09/584a05ad04014.jpg', 'Snacks, afternoon tea, Friday Party, monthly birthday parties, quarterly team building activities, annual tours', '触手可及的零食下午茶，Friday Party，月度生日会，季度团建，年度外出旅游。', 111, 0, 3, 0);
INSERT INTO `ln_recruit_image_text` VALUES (2, 'Develop revolutionary frontier technology', '做颠覆性前沿炫黑科技', '/Uploads/Picture/RecruitImageText/2016-12-20/5858ce2ed5a4c.jpg', '/Uploads/Picture/RecruitImageText/2016-12-09/5847896d21273.jpg', 'One of the earliest VR Research teams in China，culminating in more than 30core patented technologies.', '国内最早虚拟现实研究的团队之一，十余年仿真系统研究经验，30余项核心专利技术', 0, 0, 2, 0);
INSERT INTO `ln_recruit_image_text` VALUES (3, 'Work with hardcore geeks', '与骨灰级极客共事', '/Uploads/Picture/RecruitImageText/2016-12-20/5858cdcf8c0e2.jpg', '/Uploads/Picture/RecruitImageText/2016-12-09/584a04c37bb1f.jpg', 'There are expert who have worked for Mcrosoft,oogle,Huawei,\r\nBaidu,Perfect world,and UC,from Silicon Valley,South Korea,      \r\nJapan and other developed countries.', '团队囊括美国硅谷、韩国、日本等海内外顶尖技术研究专家，微软、Google、华为、百度、完美、UC优视等巨头企业视觉、浏览器、美术、动画、交互领域技术专家。', 1481245977, 0, 1, 0);
INSERT INTO `ln_recruit_image_text` VALUES (4, ' Non-hierarchical management and open environment', '扁平化管理，开放性环境', '/Uploads/Picture/RecruitImageText/2016-12-20/5858ce5b938da.jpg', '/Uploads/Picture/RecruitImageText/2016-12-09/584a05da4ed3c.jpg', 'A more relaxed communication structure, as well as a comfortable and open working environment', '逗比轻松的相处模式，舒适开放的工作环境。', 1481246179, 0, 4, 0);
INSERT INTO `ln_recruit_image_text` VALUES (5, 'Special benefits', '特别福利', '/Uploads/Picture/RecruitImageText/2016-12-20/5858ce68b36b3.jpg', '/Uploads/Picture/RecruitImageText/2016-12-09/584a05f35cc93.jpg', 'Five insurances and housing fund available even during probationary period, flexible attendance, paid annual leave, enjoyable VR experience room, and fraternity activities', '试用期购买五险一金，弹性考勤，福利年休假，爽歪歪的VR体验师，不定期兄弟公司联谊会。', 1481246223, 0, 5, 0);

-- ----------------------------
-- Table structure for ln_reference_record
-- ----------------------------
DROP TABLE IF EXISTS `ln_reference_record`;
CREATE TABLE `ln_reference_record`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户电话',
  `number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '风险控制',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `is_notice` int(1) NOT NULL DEFAULT 1 COMMENT '1:未联系 2：已联系',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ln_reference_record
-- ----------------------------

-- ----------------------------
-- Table structure for ln_region
-- ----------------------------
DROP TABLE IF EXISTS `ln_region`;
CREATE TABLE `ln_region`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '表id',
  `region_code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '地区代码',
  `region_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '地区名称',
  `parent_id` int(11) NOT NULL DEFAULT 0 COMMENT '上级地区id',
  `region_level` tinyint(1) NOT NULL DEFAULT 0 COMMENT '地区等级',
  `region_order` int(4) NOT NULL DEFAULT 0 COMMENT '排序',
  `region_name_en` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '地区英文名',
  `region_shortname_en` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '地区英文简拼',
  `is_display` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否可用 0显示 1不显示',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5001 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '省市县表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ln_region
-- ----------------------------
INSERT INTO `ln_region` VALUES (1, '中国', '中国', 0, 0, 0, 'Zhong Guo', '2', 0);
INSERT INTO `ln_region` VALUES (2, '110000', '北京市', 1, 0, 0, 'Beijing Shi', 'BJ', 0);
INSERT INTO `ln_region` VALUES (3, '120000', '天津市', 1, 0, 0, 'Tianjin Shi', 'TJ', 0);
INSERT INTO `ln_region` VALUES (4, '130000', '河北省', 1, 0, 0, 'Hebei Sheng', 'HE', 0);
INSERT INTO `ln_region` VALUES (5, '140000', '山西省', 1, 0, 0, 'Shanxi Sheng ', 'SX', 0);
INSERT INTO `ln_region` VALUES (6, '150000', '内蒙古自治区', 1, 0, 0, 'Nei Mongol Zizhiqu', 'NM', 0);
INSERT INTO `ln_region` VALUES (7, '210000', '辽宁省', 1, 0, 0, 'Liaoning Sheng', 'LN', 0);
INSERT INTO `ln_region` VALUES (8, '220000', '吉林省', 1, 0, 0, 'Jilin Sheng', 'JL', 0);
INSERT INTO `ln_region` VALUES (9, '230000', '黑龙江省', 1, 0, 0, 'Heilongjiang Sheng', 'HL', 0);
INSERT INTO `ln_region` VALUES (10, '310000', '上海市', 1, 0, 0, 'Shanghai Shi', 'SH', 0);
INSERT INTO `ln_region` VALUES (11, '320000', '江苏省', 1, 0, 0, 'Jiangsu Sheng', 'JS', 0);
INSERT INTO `ln_region` VALUES (12, '330000', '浙江省', 1, 0, 0, 'Zhejiang Sheng', 'ZJ', 0);
INSERT INTO `ln_region` VALUES (13, '340000', '安徽省', 1, 0, 0, 'Anhui Sheng', 'AH', 0);
INSERT INTO `ln_region` VALUES (14, '350000', '福建省', 1, 0, 0, 'Fujian Sheng ', 'FJ', 0);
INSERT INTO `ln_region` VALUES (15, '360000', '江西省', 1, 0, 0, 'Jiangxi Sheng', 'JX', 0);
INSERT INTO `ln_region` VALUES (16, '370000', '山东省', 1, 0, 0, 'Shandong Sheng ', 'SD', 0);
INSERT INTO `ln_region` VALUES (17, '410000', '河南省', 1, 0, 0, 'Henan Sheng', 'HA', 0);
INSERT INTO `ln_region` VALUES (18, '420000', '湖北省', 1, 0, 0, 'Hubei Sheng', 'HB', 0);
INSERT INTO `ln_region` VALUES (19, '430000', '湖南省', 1, 0, 0, 'Hunan Sheng', 'HN', 0);
INSERT INTO `ln_region` VALUES (20, '440000', '广东省', 1, 0, 0, 'Guangdong Sheng', 'GD', 0);
INSERT INTO `ln_region` VALUES (21, '450000', '广西壮族自治区', 1, 0, 0, 'Guangxi Zhuangzu Zizhiqu', 'GX', 0);
INSERT INTO `ln_region` VALUES (22, '460000', '海南省', 1, 0, 0, 'Hainan Sheng', 'HI', 0);
INSERT INTO `ln_region` VALUES (23, '500000', '重庆市', 1, 0, 0, 'Chongqing Shi', 'CQ', 0);
INSERT INTO `ln_region` VALUES (24, '510000', '四川省', 1, 0, 0, 'Sichuan Sheng', 'SC', 0);
INSERT INTO `ln_region` VALUES (25, '520000', '贵州省', 1, 0, 0, 'Guizhou Sheng', 'GZ', 0);
INSERT INTO `ln_region` VALUES (26, '530000', '云南省', 1, 0, 0, 'Yunnan Sheng', 'YN', 0);
INSERT INTO `ln_region` VALUES (27, '540000', '西藏自治区', 1, 0, 0, 'Xizang Zizhiqu', 'XZ', 0);
INSERT INTO `ln_region` VALUES (28, '610000', '陕西省', 1, 0, 0, 'Shanxi Sheng ', 'SN', 0);
INSERT INTO `ln_region` VALUES (29, '620000', '甘肃省', 1, 0, 0, 'Gansu Sheng', 'GS', 0);
INSERT INTO `ln_region` VALUES (30, '630000', '青海省', 1, 0, 0, 'Qinghai Sheng', 'QH', 0);
INSERT INTO `ln_region` VALUES (31, '640000', '宁夏回族自治区', 1, 0, 0, 'Ningxia Huizu Zizhiqu', 'NX', 0);
INSERT INTO `ln_region` VALUES (32, '650000', '新疆维吾尔自治区', 1, 0, 0, 'Xinjiang Uygur Zizhiqu', 'XJ', 0);
INSERT INTO `ln_region` VALUES (33, '110100', '市辖区', 2, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (34, '110200', '县', 2, 0, 0, 'Xian', '2', 0);
INSERT INTO `ln_region` VALUES (35, '120100', '市辖区', 3, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (36, '120200', '县', 3, 0, 0, 'Xian', '2', 0);
INSERT INTO `ln_region` VALUES (37, '130100', '石家庄市', 4, 0, 0, 'Shijiazhuang Shi', 'SJW', 0);
INSERT INTO `ln_region` VALUES (38, '130200', '唐山市', 4, 0, 0, 'Tangshan Shi', 'TGS', 0);
INSERT INTO `ln_region` VALUES (39, '130300', '秦皇岛市', 4, 0, 0, 'Qinhuangdao Shi', 'SHP', 0);
INSERT INTO `ln_region` VALUES (40, '130400', '邯郸市', 4, 0, 0, 'Handan Shi', 'HDS', 0);
INSERT INTO `ln_region` VALUES (41, '130500', '邢台市', 4, 0, 0, 'Xingtai Shi', 'XTS', 0);
INSERT INTO `ln_region` VALUES (42, '130600', '保定市', 4, 0, 0, 'Baoding Shi', 'BDS', 0);
INSERT INTO `ln_region` VALUES (43, '130700', '张家口市', 4, 0, 0, 'Zhangjiakou Shi ', 'ZJK', 0);
INSERT INTO `ln_region` VALUES (44, '130800', '承德市', 4, 0, 0, 'Chengde Shi', 'CDS', 0);
INSERT INTO `ln_region` VALUES (45, '130900', '沧州市', 4, 0, 0, 'Cangzhou Shi', 'CGZ', 0);
INSERT INTO `ln_region` VALUES (46, '131000', '廊坊市', 4, 0, 0, 'Langfang Shi', 'LFS', 0);
INSERT INTO `ln_region` VALUES (47, '131100', '衡水市', 4, 0, 0, 'Hengshui Shi ', 'HGS', 0);
INSERT INTO `ln_region` VALUES (48, '140100', '太原市', 5, 0, 0, 'Taiyuan Shi', 'TYN', 0);
INSERT INTO `ln_region` VALUES (49, '140200', '大同市', 5, 0, 0, 'Datong Shi ', 'DTG', 0);
INSERT INTO `ln_region` VALUES (50, '140300', '阳泉市', 5, 0, 0, 'Yangquan Shi', 'YQS', 0);
INSERT INTO `ln_region` VALUES (51, '140400', '长治市', 5, 0, 0, 'Changzhi Shi', 'CZS', 0);
INSERT INTO `ln_region` VALUES (52, '140500', '晋城市', 5, 0, 0, 'Jincheng Shi ', 'JCG', 0);
INSERT INTO `ln_region` VALUES (53, '140600', '朔州市', 5, 0, 0, 'Shuozhou Shi ', 'SZJ', 0);
INSERT INTO `ln_region` VALUES (54, '140700', '晋中市', 5, 0, 0, 'Jinzhong Shi', '2', 0);
INSERT INTO `ln_region` VALUES (55, '140800', '运城市', 5, 0, 0, 'Yuncheng Shi', '2', 0);
INSERT INTO `ln_region` VALUES (56, '140900', '忻州市', 5, 0, 0, 'Xinzhou Shi', '2', 0);
INSERT INTO `ln_region` VALUES (57, '141000', '临汾市', 5, 0, 0, 'Linfen Shi', '2', 0);
INSERT INTO `ln_region` VALUES (58, '141100', '吕梁市', 5, 0, 0, 'Lvliang Shi', '2', 0);
INSERT INTO `ln_region` VALUES (59, '150100', '呼和浩特市', 6, 0, 0, 'Hohhot Shi', 'Hhht', 0);
INSERT INTO `ln_region` VALUES (60, '150200', '包头市', 6, 0, 0, 'Baotou Shi ', 'BTS', 0);
INSERT INTO `ln_region` VALUES (61, '150300', '乌海市', 6, 0, 0, 'Wuhai Shi', 'WHM', 0);
INSERT INTO `ln_region` VALUES (62, '150400', '赤峰市', 6, 0, 0, 'Chifeng (Ulanhad)Shi', 'CFS', 0);
INSERT INTO `ln_region` VALUES (63, '150500', '通辽市', 6, 0, 0, 'Tongliao Shi', '2', 0);
INSERT INTO `ln_region` VALUES (64, '150600', '鄂尔多斯市', 6, 0, 0, 'Eerduosi Shi', '2', 0);
INSERT INTO `ln_region` VALUES (65, '150700', '呼伦贝尔市', 6, 0, 0, 'Hulunbeier Shi ', '2', 0);
INSERT INTO `ln_region` VALUES (66, '150800', '巴彦淖尔市', 6, 0, 0, 'Bayannaoer Shi', '2', 0);
INSERT INTO `ln_region` VALUES (67, '150900', '乌兰察布市', 6, 0, 0, 'Wulanchabu Shi', '2', 0);
INSERT INTO `ln_region` VALUES (68, '152200', '兴安盟', 6, 0, 0, 'Hinggan Meng', 'HIN', 0);
INSERT INTO `ln_region` VALUES (69, '152500', '锡林郭勒盟', 6, 0, 0, 'Xilin Gol Meng', 'XGO', 0);
INSERT INTO `ln_region` VALUES (70, '152900', '阿拉善盟', 6, 0, 0, 'Alxa Meng', 'ALM', 0);
INSERT INTO `ln_region` VALUES (71, '210100', '沈阳市', 7, 0, 0, 'Shenyang Shi', 'SHE', 0);
INSERT INTO `ln_region` VALUES (72, '210200', '大连市', 7, 0, 0, 'Dalian Shi', 'DLC', 0);
INSERT INTO `ln_region` VALUES (73, '210300', '鞍山市', 7, 0, 0, 'AnShan Shi', 'ASN', 0);
INSERT INTO `ln_region` VALUES (74, '210400', '抚顺市', 7, 0, 0, 'Fushun Shi', 'FSN', 0);
INSERT INTO `ln_region` VALUES (75, '210500', '本溪市', 7, 0, 0, 'Benxi Shi', 'BXS', 0);
INSERT INTO `ln_region` VALUES (76, '210600', '丹东市', 7, 0, 0, 'Dandong Shi', 'DDG', 0);
INSERT INTO `ln_region` VALUES (77, '210700', '锦州市', 7, 0, 0, 'Jinzhou Shi', 'JNZ', 0);
INSERT INTO `ln_region` VALUES (78, '210800', '营口市', 7, 0, 0, 'Yingkou Shi', 'YIK', 0);
INSERT INTO `ln_region` VALUES (79, '210900', '阜新市', 7, 0, 0, 'Fuxin Shi', 'FXS', 0);
INSERT INTO `ln_region` VALUES (80, '211000', '辽阳市', 7, 0, 0, 'Liaoyang Shi', 'LYL', 0);
INSERT INTO `ln_region` VALUES (81, '211100', '盘锦市', 7, 0, 0, 'Panjin Shi', 'PJS', 0);
INSERT INTO `ln_region` VALUES (82, '211200', '铁岭市', 7, 0, 0, 'Tieling Shi', 'TLS', 0);
INSERT INTO `ln_region` VALUES (83, '211300', '朝阳市', 7, 0, 0, 'Chaoyang Shi', 'CYS', 0);
INSERT INTO `ln_region` VALUES (84, '211400', '葫芦岛市', 7, 0, 0, 'Huludao Shi', 'HLD', 0);
INSERT INTO `ln_region` VALUES (85, '220100', '长春市', 8, 0, 0, 'Changchun Shi ', 'CGQ', 0);
INSERT INTO `ln_region` VALUES (86, '220200', '吉林市', 8, 0, 0, 'Jilin Shi ', 'JLS', 0);
INSERT INTO `ln_region` VALUES (87, '220300', '四平市', 8, 0, 0, 'Siping Shi', 'SPS', 0);
INSERT INTO `ln_region` VALUES (88, '220400', '辽源市', 8, 0, 0, 'Liaoyuan Shi', 'LYH', 0);
INSERT INTO `ln_region` VALUES (89, '220500', '通化市', 8, 0, 0, 'Tonghua Shi', 'THS', 0);
INSERT INTO `ln_region` VALUES (90, '220600', '白山市', 8, 0, 0, 'Baishan Shi', 'BSN', 0);
INSERT INTO `ln_region` VALUES (91, '220700', '松原市', 8, 0, 0, 'Songyuan Shi', 'SYU', 0);
INSERT INTO `ln_region` VALUES (92, '220800', '白城市', 8, 0, 0, 'Baicheng Shi', 'BCS', 0);
INSERT INTO `ln_region` VALUES (93, '222400', '延边朝鲜族自治州', 8, 0, 0, 'Yanbian Chosenzu Zizhizhou', 'YBZ', 0);
INSERT INTO `ln_region` VALUES (94, '230100', '哈尔滨市', 9, 0, 0, 'Harbin Shi', 'HRB', 0);
INSERT INTO `ln_region` VALUES (95, '230200', '齐齐哈尔市', 9, 0, 0, 'Qiqihar Shi', 'NDG', 0);
INSERT INTO `ln_region` VALUES (96, '230300', '鸡西市', 9, 0, 0, 'Jixi Shi', 'JXI', 0);
INSERT INTO `ln_region` VALUES (97, '230400', '鹤岗市', 9, 0, 0, 'Hegang Shi', 'HEG', 0);
INSERT INTO `ln_region` VALUES (98, '230500', '双鸭山市', 9, 0, 0, 'Shuangyashan Shi', 'SYS', 0);
INSERT INTO `ln_region` VALUES (99, '230600', '大庆市', 9, 0, 0, 'Daqing Shi', 'DQG', 0);
INSERT INTO `ln_region` VALUES (100, '230700', '伊春市', 9, 0, 0, 'Yichun Shi', 'YCH', 0);
INSERT INTO `ln_region` VALUES (101, '230800', '佳木斯市', 9, 0, 0, 'Jiamusi Shi', 'JMU', 0);
INSERT INTO `ln_region` VALUES (102, '230900', '七台河市', 9, 0, 0, 'Qitaihe Shi', 'QTH', 0);
INSERT INTO `ln_region` VALUES (103, '231000', '牡丹江市', 9, 0, 0, 'Mudanjiang Shi', 'MDG', 0);
INSERT INTO `ln_region` VALUES (104, '231100', '黑河市', 9, 0, 0, 'Heihe Shi', 'HEK', 0);
INSERT INTO `ln_region` VALUES (105, '231200', '绥化市', 9, 0, 0, 'Suihua Shi', '2', 0);
INSERT INTO `ln_region` VALUES (106, '232700', '大兴安岭地区', 9, 0, 0, 'Da Hinggan Ling Diqu', 'DHL', 0);
INSERT INTO `ln_region` VALUES (107, '310100', '市辖区', 10, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (108, '310200', '县', 10, 0, 0, 'Xian', '2', 0);
INSERT INTO `ln_region` VALUES (109, '320100', '南京市', 11, 0, 0, 'Nanjing Shi', 'NKG', 0);
INSERT INTO `ln_region` VALUES (110, '320200', '无锡市', 11, 0, 0, 'Wuxi Shi', 'WUX', 0);
INSERT INTO `ln_region` VALUES (111, '320300', '徐州市', 11, 0, 0, 'Xuzhou Shi', 'XUZ', 0);
INSERT INTO `ln_region` VALUES (112, '320400', '常州市', 11, 0, 0, 'Changzhou Shi', 'CZX', 0);
INSERT INTO `ln_region` VALUES (113, '320500', '苏州市', 11, 0, 0, 'Suzhou Shi', 'SZH', 0);
INSERT INTO `ln_region` VALUES (114, '320600', '南通市', 11, 0, 0, 'Nantong Shi', 'NTG', 0);
INSERT INTO `ln_region` VALUES (115, '320700', '连云港市', 11, 0, 0, 'Lianyungang Shi', 'LYG', 0);
INSERT INTO `ln_region` VALUES (116, '320800', '淮安市', 11, 0, 0, 'Huai,an Xian', '2', 0);
INSERT INTO `ln_region` VALUES (117, '320900', '盐城市', 11, 0, 0, 'Yancheng Shi', 'YCK', 0);
INSERT INTO `ln_region` VALUES (118, '321000', '扬州市', 11, 0, 0, 'Yangzhou Shi', 'YZH', 0);
INSERT INTO `ln_region` VALUES (119, '321100', '镇江市', 11, 0, 0, 'Zhenjiang Shi', 'ZHE', 0);
INSERT INTO `ln_region` VALUES (120, '321200', '泰州市', 11, 0, 0, 'Taizhou Shi', 'TZS', 0);
INSERT INTO `ln_region` VALUES (121, '321300', '宿迁市', 11, 0, 0, 'Suqian Shi', 'SUQ', 0);
INSERT INTO `ln_region` VALUES (122, '330100', '杭州市', 12, 0, 0, 'Hangzhou Shi', 'HGH', 0);
INSERT INTO `ln_region` VALUES (123, '330200', '宁波市', 12, 0, 0, 'Ningbo Shi', 'NGB', 0);
INSERT INTO `ln_region` VALUES (124, '330300', '温州市', 12, 0, 0, 'Wenzhou Shi', 'WNZ', 0);
INSERT INTO `ln_region` VALUES (125, '330400', '嘉兴市', 12, 0, 0, 'Jiaxing Shi', 'JIX', 0);
INSERT INTO `ln_region` VALUES (126, '330500', '湖州市', 12, 0, 0, 'Huzhou Shi ', 'HZH', 0);
INSERT INTO `ln_region` VALUES (127, '330600', '绍兴市', 12, 0, 0, 'Shaoxing Shi', 'SXG', 0);
INSERT INTO `ln_region` VALUES (128, '330700', '金华市', 12, 0, 0, 'Jinhua Shi', 'JHA', 0);
INSERT INTO `ln_region` VALUES (129, '330800', '衢州市', 12, 0, 0, 'Quzhou Shi', 'QUZ', 0);
INSERT INTO `ln_region` VALUES (130, '330900', '舟山市', 12, 0, 0, 'Zhoushan Shi', 'ZOS', 0);
INSERT INTO `ln_region` VALUES (131, '331000', '台州市', 12, 0, 0, 'Taizhou Shi', 'TZZ', 0);
INSERT INTO `ln_region` VALUES (132, '331100', '丽水市', 12, 0, 0, 'Lishui Shi', '2', 0);
INSERT INTO `ln_region` VALUES (133, '340100', '合肥市', 13, 0, 0, 'Hefei Shi', 'HFE', 0);
INSERT INTO `ln_region` VALUES (134, '340200', '芜湖市', 13, 0, 0, 'Wuhu Shi', 'WHI', 0);
INSERT INTO `ln_region` VALUES (135, '340300', '蚌埠市', 13, 0, 0, 'Bengbu Shi', 'BBU', 0);
INSERT INTO `ln_region` VALUES (136, '340400', '淮南市', 13, 0, 0, 'Huainan Shi', 'HNS', 0);
INSERT INTO `ln_region` VALUES (137, '340500', '马鞍山市', 13, 0, 0, 'Ma,anshan Shi', 'MAA', 0);
INSERT INTO `ln_region` VALUES (138, '340600', '淮北市', 13, 0, 0, 'Huaibei Shi', 'HBE', 0);
INSERT INTO `ln_region` VALUES (139, '340700', '铜陵市', 13, 0, 0, 'Tongling Shi', 'TOL', 0);
INSERT INTO `ln_region` VALUES (140, '340800', '安庆市', 13, 0, 0, 'Anqing Shi', 'AQG', 0);
INSERT INTO `ln_region` VALUES (141, '341000', '黄山市', 13, 0, 0, 'Huangshan Shi', 'HSN', 0);
INSERT INTO `ln_region` VALUES (142, '341100', '滁州市', 13, 0, 0, 'Chuzhou Shi', 'CUZ', 0);
INSERT INTO `ln_region` VALUES (143, '341200', '阜阳市', 13, 0, 0, 'Fuyang Shi', 'FYS', 0);
INSERT INTO `ln_region` VALUES (144, '341300', '宿州市', 13, 0, 0, 'Suzhou Shi', 'SUZ', 0);
INSERT INTO `ln_region` VALUES (145, '341400', '巢湖市', 13, 0, 0, 'Chaohu Shi', '2', 0);
INSERT INTO `ln_region` VALUES (146, '341500', '六安市', 13, 0, 0, 'Liu,an Shi', '2', 0);
INSERT INTO `ln_region` VALUES (147, '341600', '亳州市', 13, 0, 0, 'Bozhou Shi', '2', 0);
INSERT INTO `ln_region` VALUES (148, '341700', '池州市', 13, 0, 0, 'Chizhou Shi', '2', 0);
INSERT INTO `ln_region` VALUES (149, '341800', '宣城市', 13, 0, 0, 'Xuancheng Shi', '2', 0);
INSERT INTO `ln_region` VALUES (150, '350100', '福州市', 14, 0, 0, 'Fuzhou Shi', 'FOC', 0);
INSERT INTO `ln_region` VALUES (151, '350200', '厦门市', 14, 0, 0, 'Xiamen Shi', 'XMN', 0);
INSERT INTO `ln_region` VALUES (152, '350300', '莆田市', 14, 0, 0, 'Putian Shi', 'PUT', 0);
INSERT INTO `ln_region` VALUES (153, '350400', '三明市', 14, 0, 0, 'Sanming Shi', 'SMS', 0);
INSERT INTO `ln_region` VALUES (154, '350500', '泉州市', 14, 0, 0, 'Quanzhou Shi', 'QZJ', 0);
INSERT INTO `ln_region` VALUES (155, '350600', '漳州市', 14, 0, 0, 'Zhangzhou Shi', 'ZZU', 0);
INSERT INTO `ln_region` VALUES (156, '350700', '南平市', 14, 0, 0, 'Nanping Shi', 'NPS', 0);
INSERT INTO `ln_region` VALUES (157, '350800', '龙岩市', 14, 0, 0, 'Longyan Shi', 'LYF', 0);
INSERT INTO `ln_region` VALUES (158, '350900', '宁德市', 14, 0, 0, 'Ningde Shi', '2', 0);
INSERT INTO `ln_region` VALUES (159, '360100', '南昌市', 15, 0, 0, 'Nanchang Shi', 'KHN', 0);
INSERT INTO `ln_region` VALUES (160, '360200', '景德镇市', 15, 0, 0, 'Jingdezhen Shi', 'JDZ', 0);
INSERT INTO `ln_region` VALUES (161, '360300', '萍乡市', 15, 0, 0, 'Pingxiang Shi', 'PXS', 0);
INSERT INTO `ln_region` VALUES (162, '360400', '九江市', 15, 0, 0, 'Jiujiang Shi', 'JIU', 0);
INSERT INTO `ln_region` VALUES (163, '360500', '新余市', 15, 0, 0, 'Xinyu Shi', 'XYU', 0);
INSERT INTO `ln_region` VALUES (164, '360600', '鹰潭市', 15, 0, 0, 'Yingtan Shi', '2', 0);
INSERT INTO `ln_region` VALUES (165, '360700', '赣州市', 15, 0, 0, 'Ganzhou Shi', 'GZH', 0);
INSERT INTO `ln_region` VALUES (166, '360800', '吉安市', 15, 0, 0, 'Ji,an Shi', '2', 0);
INSERT INTO `ln_region` VALUES (167, '360900', '宜春市', 15, 0, 0, 'Yichun Shi', '2', 0);
INSERT INTO `ln_region` VALUES (168, '361000', '抚州市', 15, 0, 0, 'Wuzhou Shi', '2', 0);
INSERT INTO `ln_region` VALUES (169, '361100', '上饶市', 15, 0, 0, 'Shangrao Shi', '2', 0);
INSERT INTO `ln_region` VALUES (170, '370100', '济南市', 16, 0, 0, 'Jinan Shi', 'TNA', 0);
INSERT INTO `ln_region` VALUES (171, '370200', '青岛市', 16, 0, 0, 'Qingdao Shi', 'TAO', 0);
INSERT INTO `ln_region` VALUES (172, '370300', '淄博市', 16, 0, 0, 'Zibo Shi', 'ZBO', 0);
INSERT INTO `ln_region` VALUES (173, '370400', '枣庄市', 16, 0, 0, 'Zaozhuang Shi', 'ZZG', 0);
INSERT INTO `ln_region` VALUES (174, '370500', '东营市', 16, 0, 0, 'Dongying Shi', 'DYG', 0);
INSERT INTO `ln_region` VALUES (175, '370600', '烟台市', 16, 0, 0, 'Yantai Shi', 'YNT', 0);
INSERT INTO `ln_region` VALUES (176, '370700', '潍坊市', 16, 0, 0, 'Weifang Shi', 'WEF', 0);
INSERT INTO `ln_region` VALUES (177, '370800', '济宁市', 16, 0, 0, 'Jining Shi', 'JNG', 0);
INSERT INTO `ln_region` VALUES (178, '370900', '泰安市', 16, 0, 0, 'Tai,an Shi', 'TAI', 0);
INSERT INTO `ln_region` VALUES (179, '371000', '威海市', 16, 0, 0, 'Weihai Shi', 'WEH', 0);
INSERT INTO `ln_region` VALUES (180, '371100', '日照市', 16, 0, 0, 'Rizhao Shi', 'RZH', 0);
INSERT INTO `ln_region` VALUES (181, '371200', '莱芜市', 16, 0, 0, 'Laiwu Shi', 'LWS', 0);
INSERT INTO `ln_region` VALUES (182, '371300', '临沂市', 16, 0, 0, 'Linyi Shi', 'LYI', 0);
INSERT INTO `ln_region` VALUES (183, '371400', '德州市', 16, 0, 0, 'Dezhou Shi', 'DZS', 0);
INSERT INTO `ln_region` VALUES (184, '371500', '聊城市', 16, 0, 0, 'Liaocheng Shi', 'LCH', 0);
INSERT INTO `ln_region` VALUES (185, '371600', '滨州市', 16, 0, 0, 'Binzhou Shi', '2', 0);
INSERT INTO `ln_region` VALUES (186, '371700', '菏泽市', 16, 3, 0, 'Heze Shi', 'HZ', 0);
INSERT INTO `ln_region` VALUES (187, '410100', '郑州市', 17, 0, 0, 'Zhengzhou Shi', 'CGO', 0);
INSERT INTO `ln_region` VALUES (188, '410200', '开封市', 17, 0, 0, 'Kaifeng Shi', 'KFS', 0);
INSERT INTO `ln_region` VALUES (189, '410300', '洛阳市', 17, 0, 0, 'Luoyang Shi', 'LYA', 0);
INSERT INTO `ln_region` VALUES (190, '410400', '平顶山市', 17, 0, 0, 'Pingdingshan Shi', 'PDS', 0);
INSERT INTO `ln_region` VALUES (191, '410500', '安阳市', 17, 0, 0, 'Anyang Shi', 'AYS', 0);
INSERT INTO `ln_region` VALUES (192, '410600', '鹤壁市', 17, 0, 0, 'Hebi Shi', 'HBS', 0);
INSERT INTO `ln_region` VALUES (193, '410700', '新乡市', 17, 0, 0, 'Xinxiang Shi', 'XXS', 0);
INSERT INTO `ln_region` VALUES (194, '410800', '焦作市', 17, 0, 0, 'Jiaozuo Shi', 'JZY', 0);
INSERT INTO `ln_region` VALUES (195, '410900', '濮阳市', 17, 0, 0, 'Puyang Shi', 'PYS', 0);
INSERT INTO `ln_region` VALUES (196, '411000', '许昌市', 17, 0, 0, 'Xuchang Shi', 'XCS', 0);
INSERT INTO `ln_region` VALUES (197, '411100', '漯河市', 17, 0, 0, 'Luohe Shi', 'LHS', 0);
INSERT INTO `ln_region` VALUES (198, '411200', '三门峡市', 17, 0, 0, 'Sanmenxia Shi', 'SMX', 0);
INSERT INTO `ln_region` VALUES (199, '411300', '南阳市', 17, 0, 0, 'Nanyang Shi', 'NYS', 0);
INSERT INTO `ln_region` VALUES (200, '411400', '商丘市', 17, 0, 0, 'Shangqiu Shi', 'SQS', 0);
INSERT INTO `ln_region` VALUES (201, '411500', '信阳市', 17, 0, 0, 'Xinyang Shi', 'XYG', 0);
INSERT INTO `ln_region` VALUES (202, '411600', '周口市', 17, 0, 0, 'Zhoukou Shi', '2', 0);
INSERT INTO `ln_region` VALUES (203, '411700', '驻马店市', 17, 0, 0, 'Zhumadian Shi', '2', 0);
INSERT INTO `ln_region` VALUES (204, '420100', '武汉市', 18, 0, 0, 'Wuhan Shi', 'WUH', 0);
INSERT INTO `ln_region` VALUES (205, '420200', '黄石市', 18, 0, 0, 'Huangshi Shi', 'HIS', 0);
INSERT INTO `ln_region` VALUES (206, '420300', '十堰市', 18, 0, 0, 'Shiyan Shi', 'SYE', 0);
INSERT INTO `ln_region` VALUES (207, '420500', '宜昌市', 18, 0, 0, 'Yichang Shi', 'YCO', 0);
INSERT INTO `ln_region` VALUES (208, '420600', '襄樊市', 18, 0, 0, 'Xiangfan Shi', 'XFN', 0);
INSERT INTO `ln_region` VALUES (209, '420700', '鄂州市', 18, 0, 0, 'Ezhou Shi', 'EZS', 0);
INSERT INTO `ln_region` VALUES (210, '420800', '荆门市', 18, 0, 0, 'Jingmen Shi', 'JMS', 0);
INSERT INTO `ln_region` VALUES (211, '420900', '孝感市', 18, 0, 0, 'Xiaogan Shi', 'XGE', 0);
INSERT INTO `ln_region` VALUES (212, '421000', '荆州市', 18, 0, 0, 'Jingzhou Shi', 'JGZ', 0);
INSERT INTO `ln_region` VALUES (213, '421100', '黄冈市', 18, 0, 0, 'Huanggang Shi', 'HE', 0);
INSERT INTO `ln_region` VALUES (214, '421200', '咸宁市', 18, 0, 0, 'Xianning Xian', 'XNS', 0);
INSERT INTO `ln_region` VALUES (215, '421300', '随州市', 18, 0, 0, 'Suizhou Shi', '2', 0);
INSERT INTO `ln_region` VALUES (216, '422800', '恩施土家族苗族自治州', 18, 0, 0, 'Enshi Tujiazu Miaozu Zizhizhou', 'ESH', 0);
INSERT INTO `ln_region` VALUES (217, '429000', '省直辖县级行政区划', 18, 0, 0, 'shengzhixiaxianjixingzhengquhua', '2', 0);
INSERT INTO `ln_region` VALUES (218, '430100', '长沙市', 19, 0, 0, 'Changsha Shi', 'CSX', 0);
INSERT INTO `ln_region` VALUES (219, '430200', '株洲市', 19, 0, 0, 'Zhuzhou Shi', 'ZZS', 0);
INSERT INTO `ln_region` VALUES (220, '430300', '湘潭市', 19, 0, 0, 'Xiangtan Shi', 'XGT', 0);
INSERT INTO `ln_region` VALUES (221, '430400', '衡阳市', 19, 0, 0, 'Hengyang Shi', 'HNY', 0);
INSERT INTO `ln_region` VALUES (222, '430500', '邵阳市', 19, 0, 0, 'Shaoyang Shi', 'SYR', 0);
INSERT INTO `ln_region` VALUES (223, '430600', '岳阳市', 19, 0, 0, 'Yueyang Shi', 'YYG', 0);
INSERT INTO `ln_region` VALUES (224, '430700', '常德市', 19, 0, 0, 'Changde Shi', 'CDE', 0);
INSERT INTO `ln_region` VALUES (225, '430800', '张家界市', 19, 0, 0, 'Zhangjiajie Shi', 'ZJJ', 0);
INSERT INTO `ln_region` VALUES (226, '430900', '益阳市', 19, 0, 0, 'Yiyang Shi', 'YYS', 0);
INSERT INTO `ln_region` VALUES (227, '431000', '郴州市', 19, 0, 0, 'Chenzhou Shi', 'CNZ', 0);
INSERT INTO `ln_region` VALUES (228, '431100', '永州市', 19, 0, 0, 'Yongzhou Shi', 'YZS', 0);
INSERT INTO `ln_region` VALUES (229, '431200', '怀化市', 19, 0, 0, 'Huaihua Shi', 'HHS', 0);
INSERT INTO `ln_region` VALUES (230, '431300', '娄底市', 19, 0, 0, 'Loudi Shi', '2', 0);
INSERT INTO `ln_region` VALUES (231, '433100', '湘西土家族苗族自治州', 19, 0, 0, 'Xiangxi Tujiazu Miaozu Zizhizhou ', 'XXZ', 0);
INSERT INTO `ln_region` VALUES (232, '440100', '广州市', 20, 0, 0, 'Guangzhou Shi', 'CAN', 0);
INSERT INTO `ln_region` VALUES (233, '440200', '韶关市', 20, 0, 0, 'Shaoguan Shi', 'HSC', 0);
INSERT INTO `ln_region` VALUES (234, '440300', '深圳市', 20, 0, 0, 'Shenzhen Shi', 'SZX', 0);
INSERT INTO `ln_region` VALUES (235, '440400', '珠海市', 20, 0, 0, 'Zhuhai Shi', 'ZUH', 0);
INSERT INTO `ln_region` VALUES (236, '440500', '汕头市', 20, 0, 0, 'Shantou Shi', 'SWA', 0);
INSERT INTO `ln_region` VALUES (237, '440600', '佛山市', 20, 0, 0, 'Foshan Shi', 'FOS', 0);
INSERT INTO `ln_region` VALUES (238, '440700', '江门市', 20, 0, 0, 'Jiangmen Shi', 'JMN', 0);
INSERT INTO `ln_region` VALUES (239, '440800', '湛江市', 20, 0, 0, 'Zhanjiang Shi', 'ZHA', 0);
INSERT INTO `ln_region` VALUES (240, '440900', '茂名市', 20, 0, 0, 'Maoming Shi', 'MMI', 0);
INSERT INTO `ln_region` VALUES (241, '441200', '肇庆市', 20, 0, 0, 'Zhaoqing Shi', 'ZQG', 0);
INSERT INTO `ln_region` VALUES (242, '441300', '惠州市', 20, 0, 0, 'Huizhou Shi', 'HUI', 0);
INSERT INTO `ln_region` VALUES (243, '441400', '梅州市', 20, 0, 0, 'Meizhou Shi', 'MXZ', 0);
INSERT INTO `ln_region` VALUES (244, '441500', '汕尾市', 20, 0, 0, 'Shanwei Shi', 'SWE', 0);
INSERT INTO `ln_region` VALUES (245, '441600', '河源市', 20, 0, 0, 'Heyuan Shi', 'HEY', 0);
INSERT INTO `ln_region` VALUES (246, '441700', '阳江市', 20, 0, 0, 'Yangjiang Shi', 'YJI', 0);
INSERT INTO `ln_region` VALUES (247, '441800', '清远市', 20, 0, 0, 'Qingyuan Shi', 'QYN', 0);
INSERT INTO `ln_region` VALUES (248, '441900', '东莞市', 20, 0, 0, 'Dongguan Shi', 'DGG', 0);
INSERT INTO `ln_region` VALUES (249, '442000', '中山市', 20, 0, 0, 'Zhongshan Shi', 'ZSN', 0);
INSERT INTO `ln_region` VALUES (250, '445100', '潮州市', 20, 0, 0, 'Chaozhou Shi', 'CZY', 0);
INSERT INTO `ln_region` VALUES (251, '445200', '揭阳市', 20, 0, 0, 'Jieyang Shi', 'JIY', 0);
INSERT INTO `ln_region` VALUES (252, '445300', '云浮市', 20, 0, 0, 'Yunfu Shi', 'YFS', 0);
INSERT INTO `ln_region` VALUES (253, '450100', '南宁市', 21, 0, 0, 'Nanning Shi', 'NNG', 0);
INSERT INTO `ln_region` VALUES (254, '450200', '柳州市', 21, 0, 0, 'Liuzhou Shi', 'LZH', 0);
INSERT INTO `ln_region` VALUES (255, '450300', '桂林市', 21, 0, 0, 'Guilin Shi', 'KWL', 0);
INSERT INTO `ln_region` VALUES (256, '450400', '梧州市', 21, 0, 0, 'Wuzhou Shi', 'WUZ', 0);
INSERT INTO `ln_region` VALUES (257, '450500', '北海市', 21, 0, 0, 'Beihai Shi', 'BHY', 0);
INSERT INTO `ln_region` VALUES (258, '450600', '防城港市', 21, 0, 0, 'Fangchenggang Shi', 'FAN', 0);
INSERT INTO `ln_region` VALUES (259, '450700', '钦州市', 21, 0, 0, 'Qinzhou Shi', 'QZH', 0);
INSERT INTO `ln_region` VALUES (260, '450800', '贵港市', 21, 0, 0, 'Guigang Shi', 'GUG', 0);
INSERT INTO `ln_region` VALUES (261, '450900', '玉林市', 21, 0, 0, 'Yulin Shi', 'YUL', 0);
INSERT INTO `ln_region` VALUES (262, '451000', '百色市', 21, 0, 0, 'Baise Shi', '2', 0);
INSERT INTO `ln_region` VALUES (263, '451100', '贺州市', 21, 0, 0, 'Hezhou Shi', '2', 0);
INSERT INTO `ln_region` VALUES (264, '451200', '河池市', 21, 0, 0, 'Hechi Shi', '2', 0);
INSERT INTO `ln_region` VALUES (265, '451300', '来宾市', 21, 0, 0, 'Laibin Shi', '2', 0);
INSERT INTO `ln_region` VALUES (266, '451400', '崇左市', 21, 0, 0, 'Chongzuo Shi', '2', 0);
INSERT INTO `ln_region` VALUES (267, '460100', '海口市', 22, 0, 0, 'Haikou Shi', 'HAK', 0);
INSERT INTO `ln_region` VALUES (268, '460200', '三亚市', 22, 0, 0, 'Sanya Shi', 'SYX', 0);
INSERT INTO `ln_region` VALUES (269, '469000', '省直辖县级行政区划', 22, 0, 0, 'shengzhixiaxianjixingzhengquhua', '2', 0);
INSERT INTO `ln_region` VALUES (270, '500100', '市辖区', 23, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (271, '500200', '县', 23, 0, 0, 'Xian', '2', 0);
INSERT INTO `ln_region` VALUES (273, '510100', '成都市', 24, 0, 0, 'Chengdu Shi', 'CTU', 0);
INSERT INTO `ln_region` VALUES (274, '510300', '自贡市', 24, 0, 0, 'Zigong Shi', 'ZGS', 0);
INSERT INTO `ln_region` VALUES (275, '510400', '攀枝花市', 24, 0, 0, 'Panzhihua Shi', 'PZH', 0);
INSERT INTO `ln_region` VALUES (276, '510500', '泸州市', 24, 0, 0, 'Luzhou Shi', 'LUZ', 0);
INSERT INTO `ln_region` VALUES (277, '510600', '德阳市', 24, 0, 0, 'Deyang Shi', 'DEY', 0);
INSERT INTO `ln_region` VALUES (278, '510700', '绵阳市', 24, 0, 0, 'Mianyang Shi', 'MYG', 0);
INSERT INTO `ln_region` VALUES (279, '510800', '广元市', 24, 0, 0, 'Guangyuan Shi', 'GYC', 0);
INSERT INTO `ln_region` VALUES (280, '510900', '遂宁市', 24, 0, 0, 'Suining Shi', 'SNS', 0);
INSERT INTO `ln_region` VALUES (281, '511000', '内江市', 24, 0, 0, 'Neijiang Shi', 'NJS', 0);
INSERT INTO `ln_region` VALUES (282, '511100', '乐山市', 24, 0, 0, 'Leshan Shi', 'LES', 0);
INSERT INTO `ln_region` VALUES (283, '511300', '南充市', 24, 0, 0, 'Nanchong Shi', 'NCO', 0);
INSERT INTO `ln_region` VALUES (284, '511400', '眉山市', 24, 0, 0, 'Meishan Shi', '2', 0);
INSERT INTO `ln_region` VALUES (285, '511500', '宜宾市', 24, 0, 0, 'Yibin Shi', 'YBS', 0);
INSERT INTO `ln_region` VALUES (286, '511600', '广安市', 24, 0, 0, 'Guang,an Shi', 'GAC', 0);
INSERT INTO `ln_region` VALUES (287, '511700', '达州市', 24, 0, 0, 'Dazhou Shi', '2', 0);
INSERT INTO `ln_region` VALUES (288, '511800', '雅安市', 24, 0, 0, 'Ya,an Shi', '2', 0);
INSERT INTO `ln_region` VALUES (289, '511900', '巴中市', 24, 0, 0, 'Bazhong Shi', '2', 0);
INSERT INTO `ln_region` VALUES (290, '512000', '资阳市', 24, 0, 0, 'Ziyang Shi', '2', 0);
INSERT INTO `ln_region` VALUES (291, '513200', '阿坝藏族羌族自治州', 24, 0, 0, 'Aba(Ngawa) Zangzu Qiangzu Zizhizhou', 'ABA', 0);
INSERT INTO `ln_region` VALUES (292, '513300', '甘孜藏族自治州', 24, 0, 0, 'Garze Zangzu Zizhizhou', 'GAZ', 0);
INSERT INTO `ln_region` VALUES (293, '513400', '凉山彝族自治州', 24, 0, 0, 'Liangshan Yizu Zizhizhou', 'LSY', 0);
INSERT INTO `ln_region` VALUES (294, '520100', '贵阳市', 25, 0, 0, 'Guiyang Shi', 'KWE', 0);
INSERT INTO `ln_region` VALUES (295, '520200', '六盘水市', 25, 0, 0, 'Liupanshui Shi', 'LPS', 0);
INSERT INTO `ln_region` VALUES (296, '520300', '遵义市', 25, 0, 0, 'Zunyi Shi', 'ZNY', 0);
INSERT INTO `ln_region` VALUES (297, '520400', '安顺市', 25, 0, 0, 'Anshun Xian', '2', 0);
INSERT INTO `ln_region` VALUES (298, '522200', '铜仁地区', 25, 0, 0, 'Tongren Diqu', 'TRD', 0);
INSERT INTO `ln_region` VALUES (299, '522300', '黔西南布依族苗族自治州', 25, 0, 0, 'Qianxinan Buyeizu Zizhizhou', 'QXZ', 0);
INSERT INTO `ln_region` VALUES (300, '522400', '毕节地区', 25, 0, 0, 'Bijie Diqu', 'BJD', 0);
INSERT INTO `ln_region` VALUES (301, '522600', '黔东南苗族侗族自治州', 25, 0, 0, 'Qiandongnan Miaozu Dongzu Zizhizhou', 'QND', 0);
INSERT INTO `ln_region` VALUES (302, '522700', '黔南布依族苗族自治州', 25, 0, 0, 'Qiannan Buyeizu Miaozu Zizhizhou', 'QNZ', 0);
INSERT INTO `ln_region` VALUES (303, '530100', '昆明市', 26, 0, 0, 'Kunming Shi', 'KMG', 0);
INSERT INTO `ln_region` VALUES (304, '530300', '曲靖市', 26, 0, 0, 'Qujing Shi', 'QJS', 0);
INSERT INTO `ln_region` VALUES (305, '530400', '玉溪市', 26, 0, 0, 'Yuxi Shi', 'YXS', 0);
INSERT INTO `ln_region` VALUES (306, '530500', '保山市', 26, 0, 0, 'Baoshan Shi', '2', 0);
INSERT INTO `ln_region` VALUES (307, '530600', '昭通市', 26, 0, 0, 'Zhaotong Shi', '2', 0);
INSERT INTO `ln_region` VALUES (308, '530700', '丽江市', 26, 0, 0, 'Lijiang Shi', '2', 0);
INSERT INTO `ln_region` VALUES (309, '530800', '普洱市', 26, 0, 0, 'Simao Shi', '2', 0);
INSERT INTO `ln_region` VALUES (310, '530900', '临沧市', 26, 0, 0, 'Lincang Shi', '2', 0);
INSERT INTO `ln_region` VALUES (311, '532300', '楚雄彝族自治州', 26, 0, 0, 'Chuxiong Yizu Zizhizhou', 'CXD', 0);
INSERT INTO `ln_region` VALUES (312, '532500', '红河哈尼族彝族自治州', 26, 0, 0, 'Honghe Hanizu Yizu Zizhizhou', 'HHZ', 0);
INSERT INTO `ln_region` VALUES (313, '532600', '文山壮族苗族自治州', 26, 0, 0, 'Wenshan Zhuangzu Miaozu Zizhizhou', 'WSZ', 0);
INSERT INTO `ln_region` VALUES (314, '532800', '西双版纳傣族自治州', 26, 0, 0, 'Xishuangbanna Daizu Zizhizhou', 'XSB', 0);
INSERT INTO `ln_region` VALUES (315, '532900', '大理白族自治州', 26, 0, 0, 'Dali Baizu Zizhizhou', 'DLZ', 0);
INSERT INTO `ln_region` VALUES (316, '533100', '德宏傣族景颇族自治州', 26, 0, 0, 'Dehong Daizu Jingpozu Zizhizhou', 'DHG', 0);
INSERT INTO `ln_region` VALUES (317, '533300', '怒江傈僳族自治州', 26, 0, 0, 'Nujiang Lisuzu Zizhizhou', 'NUJ', 0);
INSERT INTO `ln_region` VALUES (318, '533400', '迪庆藏族自治州', 26, 0, 0, 'Deqen Zangzu Zizhizhou', 'DEZ', 0);
INSERT INTO `ln_region` VALUES (319, '540100', '拉萨市', 27, 0, 0, 'Lhasa Shi', 'LXA', 0);
INSERT INTO `ln_region` VALUES (320, '542100', '昌都地区', 27, 0, 0, 'Qamdo Diqu', 'QAD', 0);
INSERT INTO `ln_region` VALUES (321, '542200', '山南地区', 27, 0, 0, 'Shannan Diqu', 'SND', 0);
INSERT INTO `ln_region` VALUES (322, '542300', '日喀则地区', 27, 0, 0, 'Xigaze Diqu', 'XID', 0);
INSERT INTO `ln_region` VALUES (323, '542400', '那曲地区', 27, 0, 0, 'Nagqu Diqu', 'NAD', 0);
INSERT INTO `ln_region` VALUES (324, '542500', '阿里地区', 27, 0, 0, 'Ngari Diqu', 'NGD', 0);
INSERT INTO `ln_region` VALUES (325, '542600', '林芝地区', 27, 0, 0, 'Nyingchi Diqu', 'NYD', 0);
INSERT INTO `ln_region` VALUES (326, '610100', '西安市', 28, 0, 0, 'Xi,an Shi', 'SIA', 0);
INSERT INTO `ln_region` VALUES (327, '610200', '铜川市', 28, 0, 0, 'Tongchuan Shi', 'TCN', 0);
INSERT INTO `ln_region` VALUES (328, '610300', '宝鸡市', 28, 0, 0, 'Baoji Shi', 'BJI', 0);
INSERT INTO `ln_region` VALUES (329, '610400', '咸阳市', 28, 0, 0, 'Xianyang Shi', 'XYS', 0);
INSERT INTO `ln_region` VALUES (330, '610500', '渭南市', 28, 0, 0, 'Weinan Shi', 'WNA', 0);
INSERT INTO `ln_region` VALUES (331, '610600', '延安市', 28, 0, 0, 'Yan,an Shi', 'YNA', 0);
INSERT INTO `ln_region` VALUES (332, '610700', '汉中市', 28, 0, 0, 'Hanzhong Shi', 'HZJ', 0);
INSERT INTO `ln_region` VALUES (333, '610800', '榆林市', 28, 0, 0, 'Yulin Shi', '2', 0);
INSERT INTO `ln_region` VALUES (334, '610900', '安康市', 28, 0, 0, 'Ankang Shi', '2', 0);
INSERT INTO `ln_region` VALUES (335, '611000', '商洛市', 28, 0, 0, 'Shangluo Shi', '2', 0);
INSERT INTO `ln_region` VALUES (336, '620100', '兰州市', 29, 0, 0, 'Lanzhou Shi', 'LHW', 0);
INSERT INTO `ln_region` VALUES (337, '620200', '嘉峪关市', 29, 0, 0, 'Jiayuguan Shi', 'JYG', 0);
INSERT INTO `ln_region` VALUES (338, '620300', '金昌市', 29, 0, 0, 'Jinchang Shi', 'JCS', 0);
INSERT INTO `ln_region` VALUES (339, '620400', '白银市', 29, 0, 0, 'Baiyin Shi', 'BYS', 0);
INSERT INTO `ln_region` VALUES (340, '620500', '天水市', 29, 0, 0, 'Tianshui Shi', 'TSU', 0);
INSERT INTO `ln_region` VALUES (341, '620600', '武威市', 29, 0, 0, 'Wuwei Shi', '2', 0);
INSERT INTO `ln_region` VALUES (342, '620700', '张掖市', 29, 0, 0, 'Zhangye Shi', '2', 0);
INSERT INTO `ln_region` VALUES (343, '620800', '平凉市', 29, 0, 0, 'Pingliang Shi', '2', 0);
INSERT INTO `ln_region` VALUES (344, '620900', '酒泉市', 29, 0, 0, 'Jiuquan Shi', '2', 0);
INSERT INTO `ln_region` VALUES (345, '621000', '庆阳市', 29, 0, 0, 'Qingyang Shi', '2', 0);
INSERT INTO `ln_region` VALUES (346, '621100', '定西市', 29, 0, 0, 'Dingxi Shi', '2', 0);
INSERT INTO `ln_region` VALUES (347, '621200', '陇南市', 29, 0, 0, 'Longnan Shi', '2', 0);
INSERT INTO `ln_region` VALUES (348, '622900', '临夏回族自治州', 29, 0, 0, 'Linxia Huizu Zizhizhou ', 'LXH', 0);
INSERT INTO `ln_region` VALUES (349, '623000', '甘南藏族自治州', 29, 0, 0, 'Gannan Zangzu Zizhizhou', 'GNZ', 0);
INSERT INTO `ln_region` VALUES (350, '630100', '西宁市', 30, 0, 0, 'Xining Shi', 'XNN', 0);
INSERT INTO `ln_region` VALUES (351, '632100', '海东地区', 30, 0, 0, 'Haidong Diqu', 'HDD', 0);
INSERT INTO `ln_region` VALUES (352, '632200', '海北藏族自治州', 30, 0, 0, 'Haibei Zangzu Zizhizhou', 'HBZ', 0);
INSERT INTO `ln_region` VALUES (353, '632300', '黄南藏族自治州', 30, 0, 0, 'Huangnan Zangzu Zizhizhou', 'HNZ', 0);
INSERT INTO `ln_region` VALUES (354, '632500', '海南藏族自治州', 30, 0, 0, 'Hainan Zangzu Zizhizhou', 'HNN', 0);
INSERT INTO `ln_region` VALUES (355, '632600', '果洛藏族自治州', 30, 0, 0, 'Golog Zangzu Zizhizhou', 'GOL', 0);
INSERT INTO `ln_region` VALUES (356, '632700', '玉树藏族自治州', 30, 0, 0, 'Yushu Zangzu Zizhizhou', 'YSZ', 0);
INSERT INTO `ln_region` VALUES (357, '632800', '海西蒙古族藏族自治州', 30, 0, 0, 'Haixi Mongolzu Zangzu Zizhizhou', 'HXZ', 0);
INSERT INTO `ln_region` VALUES (358, '640100', '银川市', 31, 0, 0, 'Yinchuan Shi', 'INC', 0);
INSERT INTO `ln_region` VALUES (359, '640200', '石嘴山市', 31, 0, 0, 'Shizuishan Shi', 'SZS', 0);
INSERT INTO `ln_region` VALUES (360, '640300', '吴忠市', 31, 0, 0, 'Wuzhong Shi', 'WZS', 0);
INSERT INTO `ln_region` VALUES (361, '640400', '固原市', 31, 0, 0, 'Guyuan Shi', '2', 0);
INSERT INTO `ln_region` VALUES (362, '640500', '中卫市', 31, 0, 0, 'Zhongwei Shi', '2', 0);
INSERT INTO `ln_region` VALUES (363, '650100', '乌鲁木齐市', 32, 0, 0, 'Urumqi Shi', 'URC', 0);
INSERT INTO `ln_region` VALUES (364, '650200', '克拉玛依市', 32, 0, 0, 'Karamay Shi', 'KAR', 0);
INSERT INTO `ln_region` VALUES (365, '652100', '吐鲁番地区', 32, 0, 0, 'Turpan Diqu', 'TUD', 0);
INSERT INTO `ln_region` VALUES (366, '652200', '哈密地区', 32, 0, 0, 'Hami(kumul) Diqu', 'HMD', 0);
INSERT INTO `ln_region` VALUES (367, '652300', '昌吉回族自治州', 32, 0, 0, 'Changji Huizu Zizhizhou', 'CJZ', 0);
INSERT INTO `ln_region` VALUES (368, '652700', '博尔塔拉蒙古自治州', 32, 0, 0, 'Bortala Monglo Zizhizhou', 'BOR', 0);
INSERT INTO `ln_region` VALUES (369, '652800', '巴音郭楞蒙古自治州', 32, 0, 0, 'bayinguolengmengguzizhizhou', '2', 0);
INSERT INTO `ln_region` VALUES (370, '652900', '阿克苏地区', 32, 0, 0, 'Aksu Diqu', 'AKD', 0);
INSERT INTO `ln_region` VALUES (371, '653000', '克孜勒苏柯尔克孜自治州', 32, 0, 0, 'Kizilsu Kirgiz Zizhizhou', 'KIZ', 0);
INSERT INTO `ln_region` VALUES (372, '653100', '喀什地区', 32, 0, 0, 'Kashi(Kaxgar) Diqu', 'KSI', 0);
INSERT INTO `ln_region` VALUES (373, '653200', '和田地区', 32, 0, 0, 'Hotan Diqu', 'HOD', 0);
INSERT INTO `ln_region` VALUES (374, '654000', '伊犁哈萨克自治州', 32, 0, 0, 'Ili Kazak Zizhizhou', 'ILD', 0);
INSERT INTO `ln_region` VALUES (375, '654200', '塔城地区', 32, 0, 0, 'Tacheng(Qoqek) Diqu', 'TCD', 0);
INSERT INTO `ln_region` VALUES (376, '654300', '阿勒泰地区', 32, 0, 0, 'Altay Diqu', 'ALD', 0);
INSERT INTO `ln_region` VALUES (377, '659000', '自治区直辖县级行政区划', 32, 0, 0, 'zizhiquzhixiaxianjixingzhengquhua', '2', 0);
INSERT INTO `ln_region` VALUES (378, '110101', '东城区', 33, 0, 0, 'Dongcheng Qu', 'DCQ', 0);
INSERT INTO `ln_region` VALUES (379, '110102', '西城区', 33, 0, 0, 'Xicheng Qu', 'XCQ', 0);
INSERT INTO `ln_region` VALUES (382, '110105', '朝阳区', 33, 0, 0, 'Chaoyang Qu', 'CYQ', 0);
INSERT INTO `ln_region` VALUES (383, '110106', '丰台区', 33, 0, 0, 'Fengtai Qu', 'FTQ', 0);
INSERT INTO `ln_region` VALUES (384, '110107', '石景山区', 33, 0, 0, 'Shijingshan Qu', 'SJS', 0);
INSERT INTO `ln_region` VALUES (385, '110108', '海淀区', 33, 0, 0, 'Haidian Qu', 'HDN', 0);
INSERT INTO `ln_region` VALUES (386, '110109', '门头沟区', 33, 0, 0, 'Mentougou Qu', 'MTG', 0);
INSERT INTO `ln_region` VALUES (387, '110111', '房山区', 33, 0, 0, 'Fangshan Qu', 'FSQ', 0);
INSERT INTO `ln_region` VALUES (388, '110112', '通州区', 33, 0, 0, 'Tongzhou Qu', 'TZQ', 0);
INSERT INTO `ln_region` VALUES (389, '110113', '顺义区', 33, 0, 0, 'Shunyi Qu', 'SYI', 0);
INSERT INTO `ln_region` VALUES (390, '110114', '昌平区', 33, 0, 0, 'Changping Qu', 'CP Q', 0);
INSERT INTO `ln_region` VALUES (391, '110115', '大兴区', 33, 0, 0, 'Daxing Qu', 'DX Q', 0);
INSERT INTO `ln_region` VALUES (392, '110116', '怀柔区', 33, 0, 0, 'Huairou Qu', 'HR Q', 0);
INSERT INTO `ln_region` VALUES (393, '110117', '平谷区', 33, 0, 0, 'Pinggu Qu', 'PG Q', 0);
INSERT INTO `ln_region` VALUES (394, '110228', '密云县', 34, 0, 0, 'Miyun Xian ', 'MYN', 0);
INSERT INTO `ln_region` VALUES (395, '110229', '延庆县', 34, 0, 0, 'Yanqing Xian', 'YQX', 0);
INSERT INTO `ln_region` VALUES (396, '120101', '和平区', 35, 0, 0, 'Heping Qu', 'HPG', 0);
INSERT INTO `ln_region` VALUES (397, '120102', '河东区', 35, 0, 0, 'Hedong Qu', 'HDQ', 0);
INSERT INTO `ln_region` VALUES (398, '120103', '河西区', 35, 0, 0, 'Hexi Qu', 'HXQ', 0);
INSERT INTO `ln_region` VALUES (399, '120104', '南开区', 35, 0, 0, 'Nankai Qu', 'NKQ', 0);
INSERT INTO `ln_region` VALUES (400, '120105', '河北区', 35, 0, 0, 'Hebei Qu', 'HBQ', 0);
INSERT INTO `ln_region` VALUES (401, '120106', '红桥区', 35, 0, 0, 'Hongqiao Qu', 'HQO', 0);
INSERT INTO `ln_region` VALUES (404, '120116', '滨海新区', 35, 0, 0, 'Dagang Qu', '2', 0);
INSERT INTO `ln_region` VALUES (405, '120110', '东丽区', 35, 0, 0, 'Dongli Qu', 'DLI', 0);
INSERT INTO `ln_region` VALUES (406, '120111', '西青区', 35, 0, 0, 'Xiqing Qu', 'XQG', 0);
INSERT INTO `ln_region` VALUES (407, '120112', '津南区', 35, 0, 0, 'Jinnan Qu', 'JNQ', 0);
INSERT INTO `ln_region` VALUES (408, '120113', '北辰区', 35, 0, 0, 'Beichen Qu', 'BCQ', 0);
INSERT INTO `ln_region` VALUES (409, '120114', '武清区', 35, 0, 0, 'Wuqing Qu', 'WQ Q', 0);
INSERT INTO `ln_region` VALUES (410, '120115', '宝坻区', 35, 0, 0, 'Baodi Qu', 'BDI', 0);
INSERT INTO `ln_region` VALUES (411, '120221', '宁河县', 36, 0, 0, 'Ninghe Xian', 'NHE', 0);
INSERT INTO `ln_region` VALUES (412, '120223', '静海县', 36, 0, 0, 'Jinghai Xian', 'JHT', 0);
INSERT INTO `ln_region` VALUES (413, '120225', '蓟县', 36, 0, 0, 'Ji Xian', 'JIT', 0);
INSERT INTO `ln_region` VALUES (414, '130101', '市辖区', 37, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (415, '130102', '长安区', 37, 0, 0, 'Chang,an Qu', 'CAQ', 0);
INSERT INTO `ln_region` VALUES (416, '130103', '桥东区', 37, 0, 0, 'Qiaodong Qu', 'QDQ', 0);
INSERT INTO `ln_region` VALUES (417, '130104', '桥西区', 37, 0, 0, 'Qiaoxi Qu', 'QXQ', 0);
INSERT INTO `ln_region` VALUES (418, '130105', '新华区', 37, 0, 0, 'Xinhua Qu', 'XHK', 0);
INSERT INTO `ln_region` VALUES (419, '130107', '井陉矿区', 37, 0, 0, 'Jingxing Kuangqu', 'JXK', 0);
INSERT INTO `ln_region` VALUES (420, '130108', '裕华区', 37, 0, 0, 'Yuhua Qu', '2', 0);
INSERT INTO `ln_region` VALUES (421, '130121', '井陉县', 37, 0, 0, 'Jingxing Xian', 'JXJ', 0);
INSERT INTO `ln_region` VALUES (422, '130123', '正定县', 37, 0, 0, 'Zhengding Xian', 'ZDJ', 0);
INSERT INTO `ln_region` VALUES (423, '130124', '栾城县', 37, 0, 0, 'Luancheng Xian', 'LCG', 0);
INSERT INTO `ln_region` VALUES (424, '130125', '行唐县', 37, 0, 0, 'Xingtang Xian', 'XTG', 0);
INSERT INTO `ln_region` VALUES (425, '130126', '灵寿县', 37, 0, 0, 'Lingshou Xian ', 'LSO', 0);
INSERT INTO `ln_region` VALUES (426, '130127', '高邑县', 37, 0, 0, 'Gaoyi Xian', 'GYJ', 0);
INSERT INTO `ln_region` VALUES (427, '130128', '深泽县', 37, 0, 0, 'Shenze Xian', '2', 0);
INSERT INTO `ln_region` VALUES (428, '130129', '赞皇县', 37, 0, 0, 'Zanhuang Xian', 'ZHG', 0);
INSERT INTO `ln_region` VALUES (429, '130130', '无极县', 37, 0, 0, 'Wuji Xian', 'WJI', 0);
INSERT INTO `ln_region` VALUES (430, '130131', '平山县', 37, 0, 0, 'Pingshan Xian', 'PSH', 0);
INSERT INTO `ln_region` VALUES (431, '130132', '元氏县', 37, 0, 0, 'Yuanshi Xian', 'YSI', 0);
INSERT INTO `ln_region` VALUES (432, '130133', '赵县', 37, 0, 0, 'Zhao Xian', 'ZAO', 0);
INSERT INTO `ln_region` VALUES (433, '130181', '辛集市', 37, 0, 0, 'Xinji Shi', 'XJS', 0);
INSERT INTO `ln_region` VALUES (434, '130182', '藁城市', 37, 0, 0, 'Gaocheng Shi', 'GCS', 0);
INSERT INTO `ln_region` VALUES (435, '130183', '晋州市', 37, 0, 0, 'Jinzhou Shi', 'JZJ', 0);
INSERT INTO `ln_region` VALUES (436, '130184', '新乐市', 37, 0, 0, 'Xinle Shi', 'XLE', 0);
INSERT INTO `ln_region` VALUES (437, '130185', '鹿泉市', 37, 0, 0, 'Luquan Shi', 'LUQ', 0);
INSERT INTO `ln_region` VALUES (438, '130201', '市辖区', 38, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (439, '130202', '路南区', 38, 0, 0, 'Lunan Qu', 'LNB', 0);
INSERT INTO `ln_region` VALUES (440, '130203', '路北区', 38, 0, 0, 'Lubei Qu', 'LBQ', 0);
INSERT INTO `ln_region` VALUES (441, '130204', '古冶区', 38, 0, 0, 'Guye Qu', 'GYE', 0);
INSERT INTO `ln_region` VALUES (442, '130205', '开平区', 38, 0, 0, 'Kaiping Qu', 'KPQ', 0);
INSERT INTO `ln_region` VALUES (443, '130207', '丰南区', 38, 0, 0, 'Fengnan Qu', '2', 0);
INSERT INTO `ln_region` VALUES (444, '130208', '丰润区', 38, 0, 0, 'Fengrun Qu', '2', 0);
INSERT INTO `ln_region` VALUES (445, '130223', '滦县', 38, 0, 0, 'Luan Xian', 'LUA', 0);
INSERT INTO `ln_region` VALUES (446, '130224', '滦南县', 38, 0, 0, 'Luannan Xian', 'LNJ', 0);
INSERT INTO `ln_region` VALUES (447, '130225', '乐亭县', 38, 0, 0, 'Leting Xian', 'LTJ', 0);
INSERT INTO `ln_region` VALUES (448, '130227', '迁西县', 38, 0, 0, 'Qianxi Xian', 'QXX', 0);
INSERT INTO `ln_region` VALUES (449, '130229', '玉田县', 38, 0, 0, 'Yutian Xian', 'YTJ', 0);
INSERT INTO `ln_region` VALUES (450, '130230', '唐海县', 38, 0, 0, 'Tanghai Xian ', 'THA', 0);
INSERT INTO `ln_region` VALUES (451, '130281', '遵化市', 38, 0, 0, 'Zunhua Shi', 'ZNH', 0);
INSERT INTO `ln_region` VALUES (452, '130283', '迁安市', 38, 0, 0, 'Qian,an Shi', 'QAS', 0);
INSERT INTO `ln_region` VALUES (453, '130301', '市辖区', 39, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (454, '130302', '海港区', 39, 0, 0, 'Haigang Qu', 'HGG', 0);
INSERT INTO `ln_region` VALUES (455, '130303', '山海关区', 39, 0, 0, 'Shanhaiguan Qu', 'SHG', 0);
INSERT INTO `ln_region` VALUES (456, '130304', '北戴河区', 39, 0, 0, 'Beidaihe Qu', 'BDH', 0);
INSERT INTO `ln_region` VALUES (457, '130321', '青龙满族自治县', 39, 0, 0, 'Qinglong Manzu Zizhixian', 'QLM', 0);
INSERT INTO `ln_region` VALUES (458, '130322', '昌黎县', 39, 0, 0, 'Changli Xian', 'CGL', 0);
INSERT INTO `ln_region` VALUES (459, '130323', '抚宁县', 39, 0, 0, 'Funing Xian ', 'FUN', 0);
INSERT INTO `ln_region` VALUES (460, '130324', '卢龙县', 39, 0, 0, 'Lulong Xian', 'LLG', 0);
INSERT INTO `ln_region` VALUES (461, '130401', '市辖区', 40, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (462, '130402', '邯山区', 40, 0, 0, 'Hanshan Qu', 'HHD', 0);
INSERT INTO `ln_region` VALUES (463, '130403', '丛台区', 40, 0, 0, 'Congtai Qu', 'CTQ', 0);
INSERT INTO `ln_region` VALUES (464, '130404', '复兴区', 40, 0, 0, 'Fuxing Qu', 'FXQ', 0);
INSERT INTO `ln_region` VALUES (465, '130406', '峰峰矿区', 40, 0, 0, 'Fengfeng Kuangqu', 'FFK', 0);
INSERT INTO `ln_region` VALUES (466, '130421', '邯郸县', 40, 0, 0, 'Handan Xian ', 'HDX', 0);
INSERT INTO `ln_region` VALUES (467, '130423', '临漳县', 40, 0, 0, 'Linzhang Xian ', 'LNZ', 0);
INSERT INTO `ln_region` VALUES (468, '130424', '成安县', 40, 0, 0, 'Cheng,an Xian', 'CAJ', 0);
INSERT INTO `ln_region` VALUES (469, '130425', '大名县', 40, 0, 0, 'Daming Xian', 'DMX', 0);
INSERT INTO `ln_region` VALUES (470, '130426', '涉县', 40, 0, 0, 'She Xian', 'SEJ', 0);
INSERT INTO `ln_region` VALUES (471, '130427', '磁县', 40, 0, 0, 'Ci Xian', 'CIX', 0);
INSERT INTO `ln_region` VALUES (472, '130428', '肥乡县', 40, 0, 0, 'Feixiang Xian', 'FXJ', 0);
INSERT INTO `ln_region` VALUES (473, '130429', '永年县', 40, 0, 0, 'Yongnian Xian', 'YON', 0);
INSERT INTO `ln_region` VALUES (474, '130430', '邱县', 40, 0, 0, 'Qiu Xian', 'QIU', 0);
INSERT INTO `ln_region` VALUES (475, '130431', '鸡泽县', 40, 0, 0, 'Jize Xian', 'JZE', 0);
INSERT INTO `ln_region` VALUES (476, '130432', '广平县', 40, 0, 0, 'Guangping Xian ', 'GPX', 0);
INSERT INTO `ln_region` VALUES (477, '130433', '馆陶县', 40, 0, 0, 'Guantao Xian', 'GTO', 0);
INSERT INTO `ln_region` VALUES (478, '130434', '魏县', 40, 0, 0, 'Wei Xian ', 'WEI', 0);
INSERT INTO `ln_region` VALUES (479, '130435', '曲周县', 40, 0, 0, 'Quzhou Xian ', 'QZX', 0);
INSERT INTO `ln_region` VALUES (480, '130481', '武安市', 40, 0, 0, 'Wu,an Shi', 'WUA', 0);
INSERT INTO `ln_region` VALUES (481, '130501', '市辖区', 41, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (482, '130502', '桥东区', 41, 0, 0, 'Qiaodong Qu', 'QDG', 0);
INSERT INTO `ln_region` VALUES (483, '130503', '桥西区', 41, 0, 0, 'Qiaoxi Qu', 'QXT', 0);
INSERT INTO `ln_region` VALUES (484, '130521', '邢台县', 41, 0, 0, 'Xingtai Xian', 'XTJ', 0);
INSERT INTO `ln_region` VALUES (485, '130522', '临城县', 41, 0, 0, 'Lincheng Xian ', 'LNC', 0);
INSERT INTO `ln_region` VALUES (486, '130523', '内丘县', 41, 0, 0, 'Neiqiu Xian ', 'NQU', 0);
INSERT INTO `ln_region` VALUES (487, '130524', '柏乡县', 41, 0, 0, 'Baixiang Xian', 'BXG', 0);
INSERT INTO `ln_region` VALUES (488, '130525', '隆尧县', 41, 0, 0, 'Longyao Xian', 'LYO', 0);
INSERT INTO `ln_region` VALUES (489, '130526', '任县', 41, 0, 0, 'Ren Xian', 'REN', 0);
INSERT INTO `ln_region` VALUES (490, '130527', '南和县', 41, 0, 0, 'Nanhe Xian', 'NHX', 0);
INSERT INTO `ln_region` VALUES (491, '130528', '宁晋县', 41, 0, 0, 'Ningjin Xian', 'NJN', 0);
INSERT INTO `ln_region` VALUES (492, '130529', '巨鹿县', 41, 0, 0, 'Julu Xian', 'JLU', 0);
INSERT INTO `ln_region` VALUES (493, '130530', '新河县', 41, 0, 0, 'Xinhe Xian ', 'XHJ', 0);
INSERT INTO `ln_region` VALUES (494, '130531', '广宗县', 41, 0, 0, 'Guangzong Xian ', 'GZJ', 0);
INSERT INTO `ln_region` VALUES (495, '130532', '平乡县', 41, 0, 0, 'Pingxiang Xian', 'PXX', 0);
INSERT INTO `ln_region` VALUES (496, '130533', '威县', 41, 0, 0, 'Wei Xian ', 'WEX', 0);
INSERT INTO `ln_region` VALUES (497, '130534', '清河县', 41, 0, 0, 'Qinghe Xian', 'QHE', 0);
INSERT INTO `ln_region` VALUES (498, '130535', '临西县', 41, 0, 0, 'Linxi Xian', 'LXI', 0);
INSERT INTO `ln_region` VALUES (499, '130581', '南宫市', 41, 0, 0, 'Nangong Shi', 'NGO', 0);
INSERT INTO `ln_region` VALUES (500, '130582', '沙河市', 41, 0, 0, 'Shahe Shi', 'SHS', 0);
INSERT INTO `ln_region` VALUES (501, '130601', '市辖区', 42, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (502, '130600', '新市区', 42, 0, 0, 'Xinshi Qu', '2', 0);
INSERT INTO `ln_region` VALUES (503, '130603', '北市区', 42, 0, 0, 'Beishi Qu', 'BSI', 0);
INSERT INTO `ln_region` VALUES (504, '130604', '南市区', 42, 0, 0, 'Nanshi Qu', 'NSB', 0);
INSERT INTO `ln_region` VALUES (505, '130621', '满城县', 42, 0, 0, 'Mancheng Xian ', 'MCE', 0);
INSERT INTO `ln_region` VALUES (506, '130622', '清苑县', 42, 0, 0, 'Qingyuan Xian', 'QYJ', 0);
INSERT INTO `ln_region` VALUES (507, '130623', '涞水县', 42, 0, 0, 'Laishui Xian', 'LSM', 0);
INSERT INTO `ln_region` VALUES (508, '130624', '阜平县', 42, 0, 0, 'Fuping Xian ', 'FUP', 0);
INSERT INTO `ln_region` VALUES (509, '130625', '徐水县', 42, 0, 0, 'Xushui Xian ', 'XSJ', 0);
INSERT INTO `ln_region` VALUES (510, '130626', '定兴县', 42, 0, 0, 'Dingxing Xian ', 'DXG', 0);
INSERT INTO `ln_region` VALUES (511, '130627', '唐县', 42, 0, 0, 'Tang Xian ', 'TAG', 0);
INSERT INTO `ln_region` VALUES (512, '130628', '高阳县', 42, 0, 0, 'Gaoyang Xian ', 'GAY', 0);
INSERT INTO `ln_region` VALUES (513, '130629', '容城县', 42, 0, 0, 'Rongcheng Xian ', 'RCX', 0);
INSERT INTO `ln_region` VALUES (514, '130630', '涞源县', 42, 0, 0, 'Laiyuan Xian ', 'LIY', 0);
INSERT INTO `ln_region` VALUES (515, '130631', '望都县', 42, 0, 0, 'Wangdu Xian ', 'WDU', 0);
INSERT INTO `ln_region` VALUES (516, '130632', '安新县', 42, 0, 0, 'Anxin Xian ', 'AXX', 0);
INSERT INTO `ln_region` VALUES (517, '130633', '易县', 42, 0, 0, 'Yi Xian', 'YII', 0);
INSERT INTO `ln_region` VALUES (518, '130634', '曲阳县', 42, 0, 0, 'Quyang Xian ', 'QUY', 0);
INSERT INTO `ln_region` VALUES (519, '130635', '蠡县', 42, 0, 0, 'Li Xian', 'LXJ', 0);
INSERT INTO `ln_region` VALUES (520, '130636', '顺平县', 42, 0, 0, 'Shunping Xian ', 'SPI', 0);
INSERT INTO `ln_region` VALUES (521, '130637', '博野县', 42, 0, 0, 'Boye Xian ', 'BYE', 0);
INSERT INTO `ln_region` VALUES (522, '130638', '雄县', 42, 0, 0, 'Xiong Xian', 'XOX', 0);
INSERT INTO `ln_region` VALUES (523, '130681', '涿州市', 42, 0, 0, 'Zhuozhou Shi', 'ZZO', 0);
INSERT INTO `ln_region` VALUES (524, '130682', '定州市', 42, 0, 0, 'Dingzhou Shi ', 'DZO', 0);
INSERT INTO `ln_region` VALUES (525, '130683', '安国市', 42, 0, 0, 'Anguo Shi ', 'AGO', 0);
INSERT INTO `ln_region` VALUES (526, '130684', '高碑店市', 42, 0, 0, 'Gaobeidian Shi', 'GBD', 0);
INSERT INTO `ln_region` VALUES (527, '130701', '市辖区', 43, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (528, '130702', '桥东区', 43, 0, 0, 'Qiaodong Qu', 'QDZ', 0);
INSERT INTO `ln_region` VALUES (529, '130703', '桥西区', 43, 0, 0, 'Qiaoxi Qu', 'QXI', 0);
INSERT INTO `ln_region` VALUES (530, '130705', '宣化区', 43, 0, 0, 'Xuanhua Qu', 'XHZ', 0);
INSERT INTO `ln_region` VALUES (531, '130706', '下花园区', 43, 0, 0, 'Xiahuayuan Qu ', 'XHY', 0);
INSERT INTO `ln_region` VALUES (532, '130721', '宣化县', 43, 0, 0, 'Xuanhua Xian ', 'XHX', 0);
INSERT INTO `ln_region` VALUES (533, '130722', '张北县', 43, 0, 0, 'Zhangbei Xian ', 'ZGB', 0);
INSERT INTO `ln_region` VALUES (534, '130723', '康保县', 43, 0, 0, 'Kangbao Xian', 'KBO', 0);
INSERT INTO `ln_region` VALUES (535, '130724', '沽源县', 43, 0, 0, 'Guyuan Xian', '2', 0);
INSERT INTO `ln_region` VALUES (536, '130725', '尚义县', 43, 0, 0, 'Shangyi Xian', 'SYK', 0);
INSERT INTO `ln_region` VALUES (537, '130726', '蔚县', 43, 0, 0, 'Yu Xian', 'YXJ', 0);
INSERT INTO `ln_region` VALUES (538, '130727', '阳原县', 43, 0, 0, 'Yangyuan Xian', 'YYN', 0);
INSERT INTO `ln_region` VALUES (539, '130728', '怀安县', 43, 0, 0, 'Huai,an Xian', 'HAX', 0);
INSERT INTO `ln_region` VALUES (540, '130729', '万全县', 43, 0, 0, 'Wanquan Xian ', 'WQN', 0);
INSERT INTO `ln_region` VALUES (541, '130730', '怀来县', 43, 0, 0, 'Huailai Xian', 'HLA', 0);
INSERT INTO `ln_region` VALUES (542, '130731', '涿鹿县', 43, 0, 0, 'Zhuolu Xian ', 'ZLU', 0);
INSERT INTO `ln_region` VALUES (543, '130732', '赤城县', 43, 0, 0, 'Chicheng Xian', 'CCX', 0);
INSERT INTO `ln_region` VALUES (544, '130733', '崇礼县', 43, 0, 0, 'Chongli Xian', 'COL', 0);
INSERT INTO `ln_region` VALUES (545, '130801', '市辖区', 44, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (546, '130802', '双桥区', 44, 0, 0, 'Shuangqiao Qu ', 'SQO', 0);
INSERT INTO `ln_region` VALUES (547, '130803', '双滦区', 44, 0, 0, 'Shuangluan Qu', 'SLQ', 0);
INSERT INTO `ln_region` VALUES (548, '130804', '鹰手营子矿区', 44, 0, 0, 'Yingshouyingzi Kuangqu', 'YSY', 0);
INSERT INTO `ln_region` VALUES (549, '130821', '承德县', 44, 0, 0, 'Chengde Xian', 'CDX', 0);
INSERT INTO `ln_region` VALUES (550, '130822', '兴隆县', 44, 0, 0, 'Xinglong Xian', 'XLJ', 0);
INSERT INTO `ln_region` VALUES (551, '130823', '平泉县', 44, 0, 0, 'Pingquan Xian', 'PQN', 0);
INSERT INTO `ln_region` VALUES (552, '130824', '滦平县', 44, 0, 0, 'Luanping Xian ', 'LUP', 0);
INSERT INTO `ln_region` VALUES (553, '130825', '隆化县', 44, 0, 0, 'Longhua Xian', 'LHJ', 0);
INSERT INTO `ln_region` VALUES (554, '130826', '丰宁满族自治县', 44, 0, 0, 'Fengning Manzu Zizhixian', 'FNJ', 0);
INSERT INTO `ln_region` VALUES (555, '130827', '宽城满族自治县', 44, 0, 0, 'Kuancheng Manzu Zizhixian', 'KCX', 0);
INSERT INTO `ln_region` VALUES (556, '130828', '围场满族蒙古族自治县', 44, 0, 0, 'Weichang Manzu Menggolzu Zizhixian', 'WCJ', 0);
INSERT INTO `ln_region` VALUES (557, '130901', '市辖区', 45, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (558, '130902', '新华区', 45, 0, 0, 'Xinhua Qu', 'XHF', 0);
INSERT INTO `ln_region` VALUES (559, '130903', '运河区', 45, 0, 0, 'Yunhe Qu', 'YHC', 0);
INSERT INTO `ln_region` VALUES (560, '130921', '沧县', 45, 0, 0, 'Cang Xian', 'CAG', 0);
INSERT INTO `ln_region` VALUES (561, '130922', '青县', 45, 0, 0, 'Qing Xian', 'QIG', 0);
INSERT INTO `ln_region` VALUES (562, '130923', '东光县', 45, 0, 0, 'Dongguang Xian ', 'DGU', 0);
INSERT INTO `ln_region` VALUES (563, '130924', '海兴县', 45, 0, 0, 'Haixing Xian', 'HXG', 0);
INSERT INTO `ln_region` VALUES (564, '130925', '盐山县', 45, 0, 0, 'Yanshan Xian', 'YNS', 0);
INSERT INTO `ln_region` VALUES (565, '130926', '肃宁县', 45, 0, 0, 'Suning Xian ', 'SNG', 0);
INSERT INTO `ln_region` VALUES (566, '130927', '南皮县', 45, 0, 0, 'Nanpi Xian', 'NPI', 0);
INSERT INTO `ln_region` VALUES (567, '130928', '吴桥县', 45, 0, 0, 'Wuqiao Xian ', 'WUQ', 0);
INSERT INTO `ln_region` VALUES (568, '130929', '献县', 45, 0, 0, 'Xian Xian ', 'XXN', 0);
INSERT INTO `ln_region` VALUES (569, '130930', '孟村回族自治县', 45, 0, 0, 'Mengcun Huizu Zizhixian', 'MCN', 0);
INSERT INTO `ln_region` VALUES (570, '130981', '泊头市', 45, 0, 0, 'Botou Shi ', 'BOT', 0);
INSERT INTO `ln_region` VALUES (571, '130982', '任丘市', 45, 0, 0, 'Renqiu Shi', 'RQS', 0);
INSERT INTO `ln_region` VALUES (572, '130983', '黄骅市', 45, 0, 0, 'Huanghua Shi', 'HHJ', 0);
INSERT INTO `ln_region` VALUES (573, '130984', '河间市', 45, 0, 0, 'Hejian Shi', 'HJN', 0);
INSERT INTO `ln_region` VALUES (574, '131001', '市辖区', 46, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (575, '131002', '安次区', 46, 0, 0, 'Anci Qu', 'ACI', 0);
INSERT INTO `ln_region` VALUES (576, '131003', '广阳区', 46, 0, 0, 'Guangyang Qu', '2', 0);
INSERT INTO `ln_region` VALUES (577, '131022', '固安县', 46, 0, 0, 'Gu,an Xian', 'GUA', 0);
INSERT INTO `ln_region` VALUES (578, '131023', '永清县', 46, 0, 0, 'Yongqing Xian ', 'YQG', 0);
INSERT INTO `ln_region` VALUES (579, '131024', '香河县', 46, 0, 0, 'Xianghe Xian', 'XGH', 0);
INSERT INTO `ln_region` VALUES (580, '131025', '大城县', 46, 0, 0, 'Dacheng Xian', 'DCJ', 0);
INSERT INTO `ln_region` VALUES (581, '131026', '文安县', 46, 0, 0, 'Wen,an Xian', 'WEA', 0);
INSERT INTO `ln_region` VALUES (582, '131028', '大厂回族自治县', 46, 0, 0, 'Dachang Huizu Zizhixian', 'DCG', 0);
INSERT INTO `ln_region` VALUES (583, '131081', '霸州市', 46, 0, 0, 'Bazhou Shi', 'BZO', 0);
INSERT INTO `ln_region` VALUES (584, '131082', '三河市', 46, 0, 0, 'Sanhe Shi', 'SNH', 0);
INSERT INTO `ln_region` VALUES (585, '131101', '市辖区', 47, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (586, '131102', '桃城区', 47, 0, 0, 'Taocheng Qu', 'TOC', 0);
INSERT INTO `ln_region` VALUES (587, '131121', '枣强县', 47, 0, 0, 'Zaoqiang Xian ', 'ZQJ', 0);
INSERT INTO `ln_region` VALUES (588, '131122', '武邑县', 47, 0, 0, 'Wuyi Xian', 'WYI', 0);
INSERT INTO `ln_region` VALUES (589, '131123', '武强县', 47, 0, 0, 'Wuqiang Xian ', 'WQG', 0);
INSERT INTO `ln_region` VALUES (590, '131124', '饶阳县', 47, 0, 0, 'Raoyang Xian', 'RYG', 0);
INSERT INTO `ln_region` VALUES (591, '131125', '安平县', 47, 0, 0, 'Anping Xian', 'APG', 0);
INSERT INTO `ln_region` VALUES (592, '131126', '故城县', 47, 0, 0, 'Gucheng Xian', 'GCE', 0);
INSERT INTO `ln_region` VALUES (593, '131127', '景县', 47, 0, 0, 'Jing Xian ', 'JIG', 0);
INSERT INTO `ln_region` VALUES (594, '131128', '阜城县', 47, 0, 0, 'Fucheng Xian ', 'FCE', 0);
INSERT INTO `ln_region` VALUES (595, '131181', '冀州市', 47, 0, 0, 'Jizhou Shi ', 'JIZ', 0);
INSERT INTO `ln_region` VALUES (596, '131182', '深州市', 47, 0, 0, 'Shenzhou Shi', 'SNZ', 0);
INSERT INTO `ln_region` VALUES (597, '140101', '市辖区', 48, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (598, '140105', '小店区', 48, 0, 0, 'Xiaodian Qu', 'XDQ', 0);
INSERT INTO `ln_region` VALUES (599, '140106', '迎泽区', 48, 0, 0, 'Yingze Qu', 'YZT', 0);
INSERT INTO `ln_region` VALUES (600, '140107', '杏花岭区', 48, 0, 0, 'Xinghualing Qu', 'XHL', 0);
INSERT INTO `ln_region` VALUES (601, '140108', '尖草坪区', 48, 0, 0, 'Jiancaoping Qu', 'JCP', 0);
INSERT INTO `ln_region` VALUES (602, '140109', '万柏林区', 48, 0, 0, 'Wanbailin Qu', 'WBL', 0);
INSERT INTO `ln_region` VALUES (603, '140110', '晋源区', 48, 0, 0, 'Jinyuan Qu', 'JYM', 0);
INSERT INTO `ln_region` VALUES (604, '140121', '清徐县', 48, 0, 0, 'Qingxu Xian ', 'QXU', 0);
INSERT INTO `ln_region` VALUES (605, '140122', '阳曲县', 48, 0, 0, 'Yangqu Xian ', 'YGQ', 0);
INSERT INTO `ln_region` VALUES (606, '140123', '娄烦县', 48, 0, 0, 'Loufan Xian', 'LFA', 0);
INSERT INTO `ln_region` VALUES (607, '140181', '古交市', 48, 0, 0, 'Gujiao Shi', 'GUJ', 0);
INSERT INTO `ln_region` VALUES (608, '140201', '市辖区', 49, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (609, '140202', '城区', 49, 0, 0, 'Chengqu', 'CQD', 0);
INSERT INTO `ln_region` VALUES (610, '140203', '矿区', 49, 0, 0, 'Kuangqu', 'KQD', 0);
INSERT INTO `ln_region` VALUES (611, '140211', '南郊区', 49, 0, 0, 'Nanjiao Qu', 'NJQ', 0);
INSERT INTO `ln_region` VALUES (612, '140212', '新荣区', 49, 0, 0, 'Xinrong Qu', 'XRQ', 0);
INSERT INTO `ln_region` VALUES (613, '140221', '阳高县', 49, 0, 0, 'Yanggao Xian ', 'YGO', 0);
INSERT INTO `ln_region` VALUES (614, '140222', '天镇县', 49, 0, 0, 'Tianzhen Xian ', 'TZE', 0);
INSERT INTO `ln_region` VALUES (615, '140223', '广灵县', 49, 0, 0, 'Guangling Xian ', 'GLJ', 0);
INSERT INTO `ln_region` VALUES (616, '140224', '灵丘县', 49, 0, 0, 'Lingqiu Xian ', 'LQX', 0);
INSERT INTO `ln_region` VALUES (617, '140225', '浑源县', 49, 0, 0, 'Hunyuan Xian', 'HYM', 0);
INSERT INTO `ln_region` VALUES (618, '140226', '左云县', 49, 0, 0, 'Zuoyun Xian', 'ZUY', 0);
INSERT INTO `ln_region` VALUES (619, '140227', '大同县', 49, 0, 0, 'Datong Xian ', 'DTX', 0);
INSERT INTO `ln_region` VALUES (620, '140301', '市辖区', 50, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (621, '140302', '城区', 50, 0, 0, 'Chengqu', 'CQU', 0);
INSERT INTO `ln_region` VALUES (622, '140303', '矿区', 50, 0, 0, 'Kuangqu', 'KQY', 0);
INSERT INTO `ln_region` VALUES (623, '140311', '郊区', 50, 0, 0, 'Jiaoqu', 'JQY', 0);
INSERT INTO `ln_region` VALUES (624, '140321', '平定县', 50, 0, 0, 'Pingding Xian', 'PDG', 0);
INSERT INTO `ln_region` VALUES (625, '140322', '盂县', 50, 0, 0, 'Yu Xian', 'YUX', 0);
INSERT INTO `ln_region` VALUES (626, '140401', '市辖区', 51, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (627, '140402', '城区', 51, 0, 0, 'Chengqu ', 'CQC', 0);
INSERT INTO `ln_region` VALUES (628, '140411', '郊区', 51, 0, 0, 'Jiaoqu', 'JQZ', 0);
INSERT INTO `ln_region` VALUES (629, '140421', '长治县', 51, 0, 0, 'Changzhi Xian', 'CZI', 0);
INSERT INTO `ln_region` VALUES (630, '140423', '襄垣县', 51, 0, 0, 'Xiangyuan Xian', 'XYJ', 0);
INSERT INTO `ln_region` VALUES (631, '140424', '屯留县', 51, 0, 0, 'Tunliu Xian', 'TNL', 0);
INSERT INTO `ln_region` VALUES (632, '140425', '平顺县', 51, 0, 0, 'Pingshun Xian', 'PSX', 0);
INSERT INTO `ln_region` VALUES (633, '140426', '黎城县', 51, 0, 0, 'Licheng Xian', 'LIC', 0);
INSERT INTO `ln_region` VALUES (634, '140427', '壶关县', 51, 0, 0, 'Huguan Xian', 'HGN', 0);
INSERT INTO `ln_region` VALUES (635, '140428', '长子县', 51, 0, 0, 'Zhangzi Xian ', 'ZHZ', 0);
INSERT INTO `ln_region` VALUES (636, '140429', '武乡县', 51, 0, 0, 'Wuxiang Xian', 'WXG', 0);
INSERT INTO `ln_region` VALUES (637, '140430', '沁县', 51, 0, 0, 'Qin Xian', 'QIN', 0);
INSERT INTO `ln_region` VALUES (638, '140431', '沁源县', 51, 0, 0, 'Qinyuan Xian ', 'QYU', 0);
INSERT INTO `ln_region` VALUES (639, '140481', '潞城市', 51, 0, 0, 'Lucheng Shi', 'LCS', 0);
INSERT INTO `ln_region` VALUES (640, '140501', '市辖区', 52, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (641, '140502', '城区', 52, 0, 0, 'Chengqu ', 'CQJ', 0);
INSERT INTO `ln_region` VALUES (642, '140521', '沁水县', 52, 0, 0, 'Qinshui Xian', 'QSI', 0);
INSERT INTO `ln_region` VALUES (643, '140522', '阳城县', 52, 0, 0, 'Yangcheng Xian ', 'YGC', 0);
INSERT INTO `ln_region` VALUES (644, '140524', '陵川县', 52, 0, 0, 'Lingchuan Xian', 'LGC', 0);
INSERT INTO `ln_region` VALUES (645, '140525', '泽州县', 52, 0, 0, 'Zezhou Xian', 'ZEZ', 0);
INSERT INTO `ln_region` VALUES (646, '140581', '高平市', 52, 0, 0, 'Gaoping Shi ', 'GPG', 0);
INSERT INTO `ln_region` VALUES (647, '140601', '市辖区', 53, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (648, '140602', '朔城区', 53, 0, 0, 'Shuocheng Qu', 'SCH', 0);
INSERT INTO `ln_region` VALUES (649, '140603', '平鲁区', 53, 0, 0, 'Pinglu Qu', 'PLU', 0);
INSERT INTO `ln_region` VALUES (650, '140621', '山阴县', 53, 0, 0, 'Shanyin Xian', 'SYP', 0);
INSERT INTO `ln_region` VALUES (651, '140622', '应县', 53, 0, 0, 'Ying Xian', 'YIG', 0);
INSERT INTO `ln_region` VALUES (652, '140623', '右玉县', 53, 0, 0, 'Youyu Xian ', 'YOY', 0);
INSERT INTO `ln_region` VALUES (653, '140624', '怀仁县', 53, 0, 0, 'Huairen Xian', 'HRN', 0);
INSERT INTO `ln_region` VALUES (654, '140701', '市辖区', 54, 0, 0, '1', '2', 0);
INSERT INTO `ln_region` VALUES (655, '140702', '榆次区', 54, 0, 0, 'Yuci Qu', '2', 0);
INSERT INTO `ln_region` VALUES (656, '140721', '榆社县', 54, 0, 0, 'Yushe Xian', '2', 0);
INSERT INTO `ln_region` VALUES (657, '140722', '左权县', 54, 0, 0, 'Zuoquan Xian', '2', 0);
INSERT INTO `ln_region` VALUES (658, '140723', '和顺县', 54, 0, 0, 'Heshun Xian', '2', 0);
INSERT INTO `ln_region` VALUES (659, '140724', '昔阳县', 54, 0, 0, 'Xiyang Xian', '2', 0);
INSERT INTO `ln_region` VALUES (660, '140725', '寿阳县', 54, 0, 0, 'Shouyang Xian', '2', 0);
INSERT INTO `ln_region` VALUES (661, '140726', '太谷县', 54, 0, 0, 'Taigu Xian', '2', 0);
INSERT INTO `ln_region` VALUES (662, '140727', '祁县', 54, 0, 0, 'Qi Xian', '2', 0);
INSERT INTO `ln_region` VALUES (663, '140728', '平遥县', 54, 0, 0, 'Pingyao Xian', '2', 0);
INSERT INTO `ln_region` VALUES (664, '140729', '灵石县', 54, 0, 0, 'Lingshi Xian', '2', 0);
INSERT INTO `ln_region` VALUES (665, '140781', '介休市', 54, 0, 0, 'Jiexiu Shi', '2', 0);
INSERT INTO `ln_region` VALUES (666, '140801', '市辖区', 55, 0, 0, '1', '2', 0);
INSERT INTO `ln_region` VALUES (667, '140802', '盐湖区', 55, 0, 0, 'Yanhu Qu', '2', 0);
INSERT INTO `ln_region` VALUES (668, '140821', '临猗县', 55, 0, 0, 'Linyi Xian', '2', 0);
INSERT INTO `ln_region` VALUES (669, '140822', '万荣县', 55, 0, 0, 'Wanrong Xian', '2', 0);
INSERT INTO `ln_region` VALUES (670, '140823', '闻喜县', 55, 0, 0, 'Wenxi Xian', '2', 0);
INSERT INTO `ln_region` VALUES (671, '140824', '稷山县', 55, 0, 0, 'Jishan Xian', '2', 0);
INSERT INTO `ln_region` VALUES (672, '140825', '新绛县', 55, 0, 0, 'Xinjiang Xian', '2', 0);
INSERT INTO `ln_region` VALUES (673, '140826', '绛县', 55, 0, 0, 'Jiang Xian', '2', 0);
INSERT INTO `ln_region` VALUES (674, '140827', '垣曲县', 55, 0, 0, 'Yuanqu Xian', '2', 0);
INSERT INTO `ln_region` VALUES (675, '140828', '夏县', 55, 0, 0, 'Xia Xian ', '2', 0);
INSERT INTO `ln_region` VALUES (676, '140829', '平陆县', 55, 0, 0, 'Pinglu Xian', '2', 0);
INSERT INTO `ln_region` VALUES (677, '140830', '芮城县', 55, 0, 0, 'Ruicheng Xian', '2', 0);
INSERT INTO `ln_region` VALUES (678, '140881', '永济市', 55, 0, 0, 'Yongji Shi ', '2', 0);
INSERT INTO `ln_region` VALUES (679, '140882', '河津市', 55, 0, 0, 'Hejin Shi', '2', 0);
INSERT INTO `ln_region` VALUES (680, '140901', '市辖区', 56, 0, 0, '1', '2', 0);
INSERT INTO `ln_region` VALUES (681, '140902', '忻府区', 56, 0, 0, 'Xinfu Qu', '2', 0);
INSERT INTO `ln_region` VALUES (682, '140921', '定襄县', 56, 0, 0, 'Dingxiang Xian', '2', 0);
INSERT INTO `ln_region` VALUES (683, '140922', '五台县', 56, 0, 0, 'Wutai Xian', '2', 0);
INSERT INTO `ln_region` VALUES (684, '140923', '代县', 56, 0, 0, 'Dai Xian', '2', 0);
INSERT INTO `ln_region` VALUES (685, '140924', '繁峙县', 56, 0, 0, 'Fanshi Xian', '2', 0);
INSERT INTO `ln_region` VALUES (686, '140925', '宁武县', 56, 0, 0, 'Ningwu Xian', '2', 0);
INSERT INTO `ln_region` VALUES (687, '140926', '静乐县', 56, 0, 0, 'Jingle Xian', '2', 0);
INSERT INTO `ln_region` VALUES (688, '140927', '神池县', 56, 0, 0, 'Shenchi Xian', '2', 0);
INSERT INTO `ln_region` VALUES (689, '140928', '五寨县', 56, 0, 0, 'Wuzhai Xian', '2', 0);
INSERT INTO `ln_region` VALUES (690, '140929', '岢岚县', 56, 0, 0, 'Kelan Xian', '2', 0);
INSERT INTO `ln_region` VALUES (691, '140930', '河曲县', 56, 0, 0, 'Hequ Xian ', '2', 0);
INSERT INTO `ln_region` VALUES (692, '140931', '保德县', 56, 0, 0, 'Baode Xian', '2', 0);
INSERT INTO `ln_region` VALUES (693, '140932', '偏关县', 56, 0, 0, 'Pianguan Xian', '2', 0);
INSERT INTO `ln_region` VALUES (694, '140981', '原平市', 56, 0, 0, 'Yuanping Shi', '2', 0);
INSERT INTO `ln_region` VALUES (695, '141001', '市辖区', 57, 0, 0, '1', '2', 0);
INSERT INTO `ln_region` VALUES (696, '141002', '尧都区', 57, 0, 0, 'Yaodu Qu', '2', 0);
INSERT INTO `ln_region` VALUES (697, '141021', '曲沃县', 57, 0, 0, 'Quwo Xian ', '2', 0);
INSERT INTO `ln_region` VALUES (698, '141022', '翼城县', 57, 0, 0, 'Yicheng Xian', '2', 0);
INSERT INTO `ln_region` VALUES (699, '141023', '襄汾县', 57, 0, 0, 'Xiangfen Xian', '2', 0);
INSERT INTO `ln_region` VALUES (700, '141024', '洪洞县', 57, 0, 0, 'Hongtong Xian', '2', 0);
INSERT INTO `ln_region` VALUES (701, '141025', '古县', 57, 0, 0, 'Gu Xian', '2', 0);
INSERT INTO `ln_region` VALUES (702, '141026', '安泽县', 57, 0, 0, 'Anze Xian', '2', 0);
INSERT INTO `ln_region` VALUES (703, '141027', '浮山县', 57, 0, 0, 'Fushan Xian ', '2', 0);
INSERT INTO `ln_region` VALUES (704, '141028', '吉县', 57, 0, 0, 'Ji Xian', '2', 0);
INSERT INTO `ln_region` VALUES (705, '141029', '乡宁县', 57, 0, 0, 'Xiangning Xian', '2', 0);
INSERT INTO `ln_region` VALUES (706, '141030', '大宁县', 57, 0, 0, 'Daning Xian', '2', 0);
INSERT INTO `ln_region` VALUES (707, '141031', '隰县', 57, 0, 0, 'Xi Xian', '2', 0);
INSERT INTO `ln_region` VALUES (708, '141032', '永和县', 57, 0, 0, 'Yonghe Xian', '2', 0);
INSERT INTO `ln_region` VALUES (709, '141033', '蒲县', 57, 0, 0, 'Pu Xian', '2', 0);
INSERT INTO `ln_region` VALUES (710, '141034', '汾西县', 57, 0, 0, 'Fenxi Xian', '2', 0);
INSERT INTO `ln_region` VALUES (711, '141081', '侯马市', 57, 0, 0, 'Houma Shi ', '2', 0);
INSERT INTO `ln_region` VALUES (712, '141082', '霍州市', 57, 0, 0, 'Huozhou Shi ', '2', 0);
INSERT INTO `ln_region` VALUES (713, '141101', '市辖区', 58, 0, 0, '1', '2', 0);
INSERT INTO `ln_region` VALUES (714, '141102', '离石区', 58, 0, 0, 'Lishi Qu', '2', 0);
INSERT INTO `ln_region` VALUES (715, '141121', '文水县', 58, 0, 0, 'Wenshui Xian', '2', 0);
INSERT INTO `ln_region` VALUES (716, '141122', '交城县', 58, 0, 0, 'Jiaocheng Xian', '2', 0);
INSERT INTO `ln_region` VALUES (717, '141123', '兴县', 58, 0, 0, 'Xing Xian', '2', 0);
INSERT INTO `ln_region` VALUES (718, '141124', '临县', 58, 0, 0, 'Lin Xian ', '2', 0);
INSERT INTO `ln_region` VALUES (719, '141125', '柳林县', 58, 0, 0, 'Liulin Xian', '2', 0);
INSERT INTO `ln_region` VALUES (720, '141126', '石楼县', 58, 0, 0, 'Shilou Xian', '2', 0);
INSERT INTO `ln_region` VALUES (721, '141127', '岚县', 58, 0, 0, 'Lan Xian', '2', 0);
INSERT INTO `ln_region` VALUES (722, '141128', '方山县', 58, 0, 0, 'Fangshan Xian', '2', 0);
INSERT INTO `ln_region` VALUES (723, '141129', '中阳县', 58, 0, 0, 'Zhongyang Xian', '2', 0);
INSERT INTO `ln_region` VALUES (724, '141130', '交口县', 58, 0, 0, 'Jiaokou Xian', '2', 0);
INSERT INTO `ln_region` VALUES (725, '141181', '孝义市', 58, 0, 0, 'Xiaoyi Shi', '2', 0);
INSERT INTO `ln_region` VALUES (726, '141182', '汾阳市', 58, 0, 0, 'Fenyang Shi', '2', 0);
INSERT INTO `ln_region` VALUES (727, '150101', '市辖区', 59, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (728, '150102', '新城区', 59, 0, 0, 'Xincheng Qu', 'XCN', 0);
INSERT INTO `ln_region` VALUES (729, '150103', '回民区', 59, 0, 0, 'Huimin Qu', 'HMQ', 0);
INSERT INTO `ln_region` VALUES (730, '150104', '玉泉区', 59, 0, 0, 'Yuquan Qu', 'YQN', 0);
INSERT INTO `ln_region` VALUES (731, '150105', '赛罕区', 59, 0, 0, 'Saihan Qu', '2', 0);
INSERT INTO `ln_region` VALUES (732, '150121', '土默特左旗', 59, 0, 0, 'Tumd Zuoqi', 'TUZ', 0);
INSERT INTO `ln_region` VALUES (733, '150122', '托克托县', 59, 0, 0, 'Togtoh Xian', 'TOG', 0);
INSERT INTO `ln_region` VALUES (734, '150123', '和林格尔县', 59, 0, 0, 'Horinger Xian', 'HOR', 0);
INSERT INTO `ln_region` VALUES (735, '150124', '清水河县', 59, 0, 0, 'Qingshuihe Xian', 'QSH', 0);
INSERT INTO `ln_region` VALUES (736, '150125', '武川县', 59, 0, 0, 'Wuchuan Xian', 'WCX', 0);
INSERT INTO `ln_region` VALUES (737, '150201', '市辖区', 60, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (738, '150202', '东河区', 60, 0, 0, 'Donghe Qu', 'DHE', 0);
INSERT INTO `ln_region` VALUES (739, '150203', '昆都仑区', 60, 0, 0, 'Kundulun Qu', '2', 0);
INSERT INTO `ln_region` VALUES (740, '150204', '青山区', 60, 0, 0, 'Qingshan Qu', 'QSB', 0);
INSERT INTO `ln_region` VALUES (741, '150205', '石拐区', 60, 0, 0, 'Shiguai Qu', '2', 0);
INSERT INTO `ln_region` VALUES (742, '150206', '白云鄂博矿区', 60, 0, 0, 'Baiyun Kuangqu', '2', 0);
INSERT INTO `ln_region` VALUES (743, '150207', '九原区', 60, 0, 0, 'Jiuyuan Qu', '2', 0);
INSERT INTO `ln_region` VALUES (744, '150221', '土默特右旗', 60, 0, 0, 'Tumd Youqi', 'TUY', 0);
INSERT INTO `ln_region` VALUES (745, '150222', '固阳县', 60, 0, 0, 'Guyang Xian', 'GYM', 0);
INSERT INTO `ln_region` VALUES (746, '150223', '达尔罕茂明安联合旗', 60, 0, 0, 'Darhan Muminggan Lianheqi', 'DML', 0);
INSERT INTO `ln_region` VALUES (747, '150301', '市辖区', 61, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (748, '150302', '海勃湾区', 61, 0, 0, 'Haibowan Qu', 'HBW', 0);
INSERT INTO `ln_region` VALUES (749, '150303', '海南区', 61, 0, 0, 'Hainan Qu', 'HNU', 0);
INSERT INTO `ln_region` VALUES (750, '150304', '乌达区', 61, 0, 0, 'Ud Qu', 'UDQ', 0);
INSERT INTO `ln_region` VALUES (751, '150401', '市辖区', 62, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (752, '150402', '红山区', 62, 0, 0, 'Hongshan Qu', 'HSZ', 0);
INSERT INTO `ln_region` VALUES (753, '150403', '元宝山区', 62, 0, 0, 'Yuanbaoshan Qu', 'YBO', 0);
INSERT INTO `ln_region` VALUES (754, '150404', '松山区', 62, 0, 0, 'Songshan Qu', 'SSQ', 0);
INSERT INTO `ln_region` VALUES (755, '150421', '阿鲁科尔沁旗', 62, 0, 0, 'Ar Horqin Qi', 'AHO', 0);
INSERT INTO `ln_region` VALUES (756, '150422', '巴林左旗', 62, 0, 0, 'Bairin Zuoqi', 'BAZ', 0);
INSERT INTO `ln_region` VALUES (757, '150423', '巴林右旗', 62, 0, 0, 'Bairin Youqi', 'BAY', 0);
INSERT INTO `ln_region` VALUES (758, '150424', '林西县', 62, 0, 0, 'Linxi Xian', 'LXM', 0);
INSERT INTO `ln_region` VALUES (759, '150425', '克什克腾旗', 62, 0, 0, 'Hexigten Qi', 'HXT', 0);
INSERT INTO `ln_region` VALUES (760, '150426', '翁牛特旗', 62, 0, 0, 'Ongniud Qi', 'ONG', 0);
INSERT INTO `ln_region` VALUES (761, '150428', '喀喇沁旗', 62, 0, 0, 'Harqin Qi', 'HAR', 0);
INSERT INTO `ln_region` VALUES (762, '150429', '宁城县', 62, 0, 0, 'Ningcheng Xian', 'NCH', 0);
INSERT INTO `ln_region` VALUES (763, '150430', '敖汉旗', 62, 0, 0, 'Aohan Qi', 'AHN', 0);
INSERT INTO `ln_region` VALUES (764, '150501', '市辖区', 63, 0, 0, '1', '2', 0);
INSERT INTO `ln_region` VALUES (765, '150502', '科尔沁区', 63, 0, 0, 'Keermi Qu', '2', 0);
INSERT INTO `ln_region` VALUES (766, '150521', '科尔沁左翼中旗', 63, 0, 0, 'Horqin Zuoyi Zhongqi', '2', 0);
INSERT INTO `ln_region` VALUES (767, '150522', '科尔沁左翼后旗', 63, 0, 0, 'Horqin Zuoyi Houqi', '2', 0);
INSERT INTO `ln_region` VALUES (768, '150523', '开鲁县', 63, 0, 0, 'Kailu Xian', '2', 0);
INSERT INTO `ln_region` VALUES (769, '150524', '库伦旗', 63, 0, 0, 'Hure Qi', '2', 0);
INSERT INTO `ln_region` VALUES (770, '150525', '奈曼旗', 63, 0, 0, 'Naiman Qi', '2', 0);
INSERT INTO `ln_region` VALUES (771, '150526', '扎鲁特旗', 63, 0, 0, 'Jarud Qi', '2', 0);
INSERT INTO `ln_region` VALUES (772, '150581', '霍林郭勒市', 63, 0, 0, 'Holingol Shi', '2', 0);
INSERT INTO `ln_region` VALUES (773, '150602', '东胜区', 64, 0, 0, 'Dongsheng Qu', '2', 0);
INSERT INTO `ln_region` VALUES (774, '150621', '达拉特旗', 64, 0, 0, 'Dalad Qi', '2', 0);
INSERT INTO `ln_region` VALUES (775, '150622', '准格尔旗', 64, 0, 0, 'Jungar Qi', '2', 0);
INSERT INTO `ln_region` VALUES (776, '150623', '鄂托克前旗', 64, 0, 0, 'Otog Qianqi', '2', 0);
INSERT INTO `ln_region` VALUES (777, '150624', '鄂托克旗', 64, 0, 0, 'Otog Qi', '2', 0);
INSERT INTO `ln_region` VALUES (778, '150625', '杭锦旗', 64, 0, 0, 'Hanggin Qi', '2', 0);
INSERT INTO `ln_region` VALUES (779, '150626', '乌审旗', 64, 0, 0, 'Uxin Qi', '2', 0);
INSERT INTO `ln_region` VALUES (780, '150627', '伊金霍洛旗', 64, 0, 0, 'Ejin Horo Qi', '2', 0);
INSERT INTO `ln_region` VALUES (781, '150701', '市辖区', 65, 0, 0, '1', '2', 0);
INSERT INTO `ln_region` VALUES (782, '150702', '海拉尔区', 65, 0, 0, 'Hailaer Qu', '2', 0);
INSERT INTO `ln_region` VALUES (783, '150721', '阿荣旗', 65, 0, 0, 'Arun Qi', '2', 0);
INSERT INTO `ln_region` VALUES (784, '150722', '莫力达瓦达斡尔族自治旗', 65, 0, 0, 'Morin Dawa Daurzu Zizhiqi', '2', 0);
INSERT INTO `ln_region` VALUES (785, '150723', '鄂伦春自治旗', 65, 0, 0, 'Oroqen Zizhiqi', '2', 0);
INSERT INTO `ln_region` VALUES (786, '150724', '鄂温克族自治旗', 65, 0, 0, 'Ewenkizu Zizhiqi', '2', 0);
INSERT INTO `ln_region` VALUES (787, '150725', '陈巴尔虎旗', 65, 0, 0, 'Chen Barag Qi', '2', 0);
INSERT INTO `ln_region` VALUES (788, '150726', '新巴尔虎左旗', 65, 0, 0, 'Xin Barag Zuoqi', '2', 0);
INSERT INTO `ln_region` VALUES (789, '150727', '新巴尔虎右旗', 65, 0, 0, 'Xin Barag Youqi', '2', 0);
INSERT INTO `ln_region` VALUES (790, '150781', '满洲里市', 65, 0, 0, 'Manzhouli Shi', '2', 0);
INSERT INTO `ln_region` VALUES (791, '150782', '牙克石市', 65, 0, 0, 'Yakeshi Shi', '2', 0);
INSERT INTO `ln_region` VALUES (792, '150783', '扎兰屯市', 65, 0, 0, 'Zalantun Shi', '2', 0);
INSERT INTO `ln_region` VALUES (793, '150784', '额尔古纳市', 65, 0, 0, 'Ergun Shi', '2', 0);
INSERT INTO `ln_region` VALUES (794, '150785', '根河市', 65, 0, 0, 'Genhe Shi', '2', 0);
INSERT INTO `ln_region` VALUES (795, '150801', '市辖区', 66, 0, 0, '1', '2', 0);
INSERT INTO `ln_region` VALUES (796, '150802', '临河区', 66, 0, 0, 'Linhe Qu', '2', 0);
INSERT INTO `ln_region` VALUES (797, '150821', '五原县', 66, 0, 0, 'Wuyuan Xian', '2', 0);
INSERT INTO `ln_region` VALUES (798, '150822', '磴口县', 66, 0, 0, 'Dengkou Xian', '2', 0);
INSERT INTO `ln_region` VALUES (799, '150823', '乌拉特前旗', 66, 0, 0, 'Urad Qianqi', '2', 0);
INSERT INTO `ln_region` VALUES (800, '150824', '乌拉特中旗', 66, 0, 0, 'Urad Zhongqi', '2', 0);
INSERT INTO `ln_region` VALUES (801, '150825', '乌拉特后旗', 66, 0, 0, 'Urad Houqi', '2', 0);
INSERT INTO `ln_region` VALUES (802, '150826', '杭锦后旗', 66, 0, 0, 'Hanggin Houqi', '2', 0);
INSERT INTO `ln_region` VALUES (803, '150901', '市辖区', 67, 0, 0, '1', '2', 0);
INSERT INTO `ln_region` VALUES (804, '150902', '集宁区', 67, 0, 0, 'Jining Qu', '2', 0);
INSERT INTO `ln_region` VALUES (805, '150921', '卓资县', 67, 0, 0, 'Zhuozi Xian', '2', 0);
INSERT INTO `ln_region` VALUES (806, '150922', '化德县', 67, 0, 0, 'Huade Xian', '2', 0);
INSERT INTO `ln_region` VALUES (807, '150923', '商都县', 67, 0, 0, 'Shangdu Xian', '2', 0);
INSERT INTO `ln_region` VALUES (808, '150924', '兴和县', 67, 0, 0, 'Xinghe Xian', '2', 0);
INSERT INTO `ln_region` VALUES (809, '150925', '凉城县', 67, 0, 0, 'Liangcheng Xian', '2', 0);
INSERT INTO `ln_region` VALUES (810, '150926', '察哈尔右翼前旗', 67, 0, 0, 'Qahar Youyi Qianqi', '2', 0);
INSERT INTO `ln_region` VALUES (811, '150927', '察哈尔右翼中旗', 67, 0, 0, 'Qahar Youyi Zhongqi', '2', 0);
INSERT INTO `ln_region` VALUES (812, '150928', '察哈尔右翼后旗', 67, 0, 0, 'Qahar Youyi Houqi', '2', 0);
INSERT INTO `ln_region` VALUES (813, '150929', '四子王旗', 67, 0, 0, 'Dorbod Qi', '2', 0);
INSERT INTO `ln_region` VALUES (814, '150981', '丰镇市', 67, 0, 0, 'Fengzhen Shi', '2', 0);
INSERT INTO `ln_region` VALUES (815, '152201', '乌兰浩特市', 68, 0, 0, 'Ulan Hot Shi', 'ULO', 0);
INSERT INTO `ln_region` VALUES (816, '152202', '阿尔山市', 68, 0, 0, 'Arxan Shi', 'ARS', 0);
INSERT INTO `ln_region` VALUES (817, '152221', '科尔沁右翼前旗', 68, 0, 0, 'Horqin Youyi Qianqi', 'HYQ', 0);
INSERT INTO `ln_region` VALUES (818, '152222', '科尔沁右翼中旗', 68, 0, 0, 'Horqin Youyi Zhongqi', 'HYZ', 0);
INSERT INTO `ln_region` VALUES (819, '152223', '扎赉特旗', 68, 0, 0, 'Jalaid Qi', 'JAL', 0);
INSERT INTO `ln_region` VALUES (820, '152224', '突泉县', 68, 0, 0, 'Tuquan Xian', 'TUQ', 0);
INSERT INTO `ln_region` VALUES (821, '152501', '二连浩特市', 69, 0, 0, 'Erenhot Shi', 'ERC', 0);
INSERT INTO `ln_region` VALUES (822, '152502', '锡林浩特市', 69, 0, 0, 'Xilinhot Shi', 'XLI', 0);
INSERT INTO `ln_region` VALUES (823, '152522', '阿巴嘎旗', 69, 0, 0, 'Abag Qi', 'ABG', 0);
INSERT INTO `ln_region` VALUES (824, '152523', '苏尼特左旗', 69, 0, 0, 'Sonid Zuoqi', 'SOZ', 0);
INSERT INTO `ln_region` VALUES (825, '152524', '苏尼特右旗', 69, 0, 0, 'Sonid Youqi', 'SOY', 0);
INSERT INTO `ln_region` VALUES (826, '152525', '东乌珠穆沁旗', 69, 0, 0, 'Dong Ujimqin Qi', 'DUJ', 0);
INSERT INTO `ln_region` VALUES (827, '152526', '西乌珠穆沁旗', 69, 0, 0, 'Xi Ujimqin Qi', 'XUJ', 0);
INSERT INTO `ln_region` VALUES (828, '152527', '太仆寺旗', 69, 0, 0, 'Taibus Qi', 'TAB', 0);
INSERT INTO `ln_region` VALUES (829, '152528', '镶黄旗', 69, 0, 0, 'Xianghuang(Hobot Xar) Qi', 'XHG', 0);
INSERT INTO `ln_region` VALUES (830, '152529', '正镶白旗', 69, 0, 0, 'Zhengxiangbai(Xulun Hobot Qagan)Qi', 'ZXB', 0);
INSERT INTO `ln_region` VALUES (831, '152530', '正蓝旗', 69, 0, 0, 'Zhenglan(Xulun Hoh)Qi', 'ZLM', 0);
INSERT INTO `ln_region` VALUES (832, '152531', '多伦县', 69, 0, 0, 'Duolun (Dolonnur)Xian', 'DLM', 0);
INSERT INTO `ln_region` VALUES (833, '152921', '阿拉善左旗', 70, 0, 0, 'Alxa Zuoqi', 'ALZ', 0);
INSERT INTO `ln_region` VALUES (834, '152922', '阿拉善右旗', 70, 0, 0, 'Alxa Youqi', 'ALY', 0);
INSERT INTO `ln_region` VALUES (835, '152923', '额济纳旗', 70, 0, 0, 'Ejin Qi', 'EJI', 0);
INSERT INTO `ln_region` VALUES (836, '210101', '市辖区', 71, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (837, '210102', '和平区', 71, 0, 0, 'Heping Qu', 'HEP', 0);
INSERT INTO `ln_region` VALUES (838, '210103', '沈河区', 71, 0, 0, 'Shenhe Qu ', 'SHQ', 0);
INSERT INTO `ln_region` VALUES (839, '210104', '大东区', 71, 0, 0, 'Dadong Qu ', 'DDQ', 0);
INSERT INTO `ln_region` VALUES (840, '210105', '皇姑区', 71, 0, 0, 'Huanggu Qu', 'HGU', 0);
INSERT INTO `ln_region` VALUES (841, '210106', '铁西区', 71, 0, 0, 'Tiexi Qu', 'TXI', 0);
INSERT INTO `ln_region` VALUES (842, '210111', '苏家屯区', 71, 0, 0, 'Sujiatun Qu', 'SJT', 0);
INSERT INTO `ln_region` VALUES (843, '210112', '东陵区', 71, 0, 0, 'Dongling Qu ', 'DLQ', 0);
INSERT INTO `ln_region` VALUES (844, '210113', '沈北新区', 71, 0, 0, 'Xinchengzi Qu', '2', 0);
INSERT INTO `ln_region` VALUES (845, '210114', '于洪区', 71, 0, 0, 'Yuhong Qu ', 'YHQ', 0);
INSERT INTO `ln_region` VALUES (846, '210122', '辽中县', 71, 0, 0, 'Liaozhong Xian', 'LZL', 0);
INSERT INTO `ln_region` VALUES (847, '210123', '康平县', 71, 0, 0, 'Kangping Xian', 'KPG', 0);
INSERT INTO `ln_region` VALUES (848, '210124', '法库县', 71, 0, 0, 'Faku Xian', 'FKU', 0);
INSERT INTO `ln_region` VALUES (849, '210181', '新民市', 71, 0, 0, 'Xinmin Shi', 'XMS', 0);
INSERT INTO `ln_region` VALUES (850, '210201', '市辖区', 72, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (851, '210202', '中山区', 72, 0, 0, 'Zhongshan Qu', 'ZSD', 0);
INSERT INTO `ln_region` VALUES (852, '210203', '西岗区', 72, 0, 0, 'Xigang Qu', 'XGD', 0);
INSERT INTO `ln_region` VALUES (853, '210204', '沙河口区', 72, 0, 0, 'Shahekou Qu', 'SHK', 0);
INSERT INTO `ln_region` VALUES (854, '210211', '甘井子区', 72, 0, 0, 'Ganjingzi Qu', 'GJZ', 0);
INSERT INTO `ln_region` VALUES (855, '210212', '旅顺口区', 72, 0, 0, 'Lvshunkou Qu ', 'LSK', 0);
INSERT INTO `ln_region` VALUES (856, '210213', '金州区', 72, 0, 0, 'Jinzhou Qu', 'JZH', 0);
INSERT INTO `ln_region` VALUES (857, '210224', '长海县', 72, 0, 0, 'Changhai Xian', 'CHX', 0);
INSERT INTO `ln_region` VALUES (858, '210281', '瓦房店市', 72, 0, 0, 'Wafangdian Shi', 'WFD', 0);
INSERT INTO `ln_region` VALUES (859, '210282', '普兰店市', 72, 0, 0, 'Pulandian Shi', 'PLD', 0);
INSERT INTO `ln_region` VALUES (860, '210283', '庄河市', 72, 0, 0, 'Zhuanghe Shi', 'ZHH', 0);
INSERT INTO `ln_region` VALUES (861, '210301', '市辖区', 73, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (862, '210302', '铁东区', 73, 0, 0, 'Tiedong Qu ', 'TED', 0);
INSERT INTO `ln_region` VALUES (863, '210303', '铁西区', 73, 0, 0, 'Tiexi Qu', 'TXL', 0);
INSERT INTO `ln_region` VALUES (864, '210304', '立山区', 73, 0, 0, 'Lishan Qu', 'LAS', 0);
INSERT INTO `ln_region` VALUES (865, '210311', '千山区', 73, 0, 0, 'Qianshan Qu ', 'QSQ', 0);
INSERT INTO `ln_region` VALUES (866, '210321', '台安县', 73, 0, 0, 'Tai,an Xian', 'TAX', 0);
INSERT INTO `ln_region` VALUES (867, '210323', '岫岩满族自治县', 73, 0, 0, 'Xiuyan Manzu Zizhixian', 'XYL', 0);
INSERT INTO `ln_region` VALUES (868, '210381', '海城市', 73, 0, 0, 'Haicheng Shi', 'HCL', 0);
INSERT INTO `ln_region` VALUES (869, '210401', '市辖区', 74, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (870, '210402', '新抚区', 74, 0, 0, 'Xinfu Qu', 'XFU', 0);
INSERT INTO `ln_region` VALUES (871, '210403', '东洲区', 74, 0, 0, 'Dongzhou Qu', '2', 0);
INSERT INTO `ln_region` VALUES (872, '210404', '望花区', 74, 0, 0, 'Wanghua Qu', 'WHF', 0);
INSERT INTO `ln_region` VALUES (873, '210411', '顺城区', 74, 0, 0, 'Shuncheng Qu', 'SCF', 0);
INSERT INTO `ln_region` VALUES (874, '210421', '抚顺县', 74, 0, 0, 'Fushun Xian', 'FSX', 0);
INSERT INTO `ln_region` VALUES (875, '210422', '新宾满族自治县', 74, 0, 0, 'Xinbinmanzuzizhi Xian', '2', 0);
INSERT INTO `ln_region` VALUES (876, '210423', '清原满族自治县', 74, 0, 0, 'Qingyuanmanzuzizhi Xian', '2', 0);
INSERT INTO `ln_region` VALUES (877, '210501', '市辖区', 75, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (878, '210502', '平山区', 75, 0, 0, 'Pingshan Qu', 'PSN', 0);
INSERT INTO `ln_region` VALUES (879, '210503', '溪湖区', 75, 0, 0, 'Xihu Qu ', 'XHB', 0);
INSERT INTO `ln_region` VALUES (880, '210504', '明山区', 75, 0, 0, 'Mingshan Qu', 'MSB', 0);
INSERT INTO `ln_region` VALUES (881, '210505', '南芬区', 75, 0, 0, 'Nanfen Qu', 'NFQ', 0);
INSERT INTO `ln_region` VALUES (882, '210521', '本溪满族自治县', 75, 0, 0, 'Benxi Manzu Zizhixian', 'BXX', 0);
INSERT INTO `ln_region` VALUES (883, '210522', '桓仁满族自治县', 75, 0, 0, 'Huanren Manzu Zizhixian', 'HRL', 0);
INSERT INTO `ln_region` VALUES (884, '210601', '市辖区', 76, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (885, '210602', '元宝区', 76, 0, 0, 'Yuanbao Qu', 'YBD', 0);
INSERT INTO `ln_region` VALUES (886, '210603', '振兴区', 76, 0, 0, 'Zhenxing Qu ', 'ZXQ', 0);
INSERT INTO `ln_region` VALUES (887, '210604', '振安区', 76, 0, 0, 'Zhen,an Qu', 'ZAQ', 0);
INSERT INTO `ln_region` VALUES (888, '210624', '宽甸满族自治县', 76, 0, 0, 'Kuandian Manzu Zizhixian', 'KDN', 0);
INSERT INTO `ln_region` VALUES (889, '210681', '东港市', 76, 0, 0, 'Donggang Shi', 'DGS', 0);
INSERT INTO `ln_region` VALUES (890, '210682', '凤城市', 76, 0, 0, 'Fengcheng Shi', 'FCL', 0);
INSERT INTO `ln_region` VALUES (891, '210701', '市辖区', 77, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (892, '210702', '古塔区', 77, 0, 0, 'Guta Qu', 'GTQ', 0);
INSERT INTO `ln_region` VALUES (893, '210703', '凌河区', 77, 0, 0, 'Linghe Qu', 'LHF', 0);
INSERT INTO `ln_region` VALUES (894, '210711', '太和区', 77, 0, 0, 'Taihe Qu', '2', 0);
INSERT INTO `ln_region` VALUES (895, '210726', '黑山县', 77, 0, 0, 'Heishan Xian', 'HSL', 0);
INSERT INTO `ln_region` VALUES (896, '210727', '义县', 77, 0, 0, 'Yi Xian', 'YXL', 0);
INSERT INTO `ln_region` VALUES (897, '210781', '凌海市', 77, 0, 0, 'Linghai Shi ', 'LHL', 0);
INSERT INTO `ln_region` VALUES (898, '210782', '北镇市', 77, 0, 0, 'Beining Shi', '2', 0);
INSERT INTO `ln_region` VALUES (899, '210801', '市辖区', 78, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (900, '210802', '站前区', 78, 0, 0, 'Zhanqian Qu', 'ZQQ', 0);
INSERT INTO `ln_region` VALUES (901, '210803', '西市区', 78, 0, 0, 'Xishi Qu', 'XII', 0);
INSERT INTO `ln_region` VALUES (902, '210804', '鲅鱼圈区', 78, 0, 0, 'Bayuquan Qu', 'BYQ', 0);
INSERT INTO `ln_region` VALUES (903, '210811', '老边区', 78, 0, 0, 'Laobian Qu', 'LOB', 0);
INSERT INTO `ln_region` VALUES (904, '210881', '盖州市', 78, 0, 0, 'Gaizhou Shi', 'GZU', 0);
INSERT INTO `ln_region` VALUES (905, '210882', '大石桥市', 78, 0, 0, 'Dashiqiao Shi', 'DSQ', 0);
INSERT INTO `ln_region` VALUES (906, '210901', '市辖区', 79, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (907, '210902', '海州区', 79, 0, 0, 'Haizhou Qu', 'HZF', 0);
INSERT INTO `ln_region` VALUES (908, '210903', '新邱区', 79, 0, 0, 'Xinqiu Qu', 'XQF', 0);
INSERT INTO `ln_region` VALUES (909, '210904', '太平区', 79, 0, 0, 'Taiping Qu', 'TPG', 0);
INSERT INTO `ln_region` VALUES (910, '210905', '清河门区', 79, 0, 0, 'Qinghemen Qu', 'QHM', 0);
INSERT INTO `ln_region` VALUES (911, '210911', '细河区', 79, 0, 0, 'Xihe Qu', 'XHO', 0);
INSERT INTO `ln_region` VALUES (912, '210921', '阜新蒙古族自治县', 79, 0, 0, 'Fuxin Mongolzu Zizhixian', 'FXX', 0);
INSERT INTO `ln_region` VALUES (913, '210922', '彰武县', 79, 0, 0, 'Zhangwu Xian', 'ZWU', 0);
INSERT INTO `ln_region` VALUES (914, '211001', '市辖区', 80, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (915, '211002', '白塔区', 80, 0, 0, 'Baita Qu', 'BTL', 0);
INSERT INTO `ln_region` VALUES (916, '211003', '文圣区', 80, 0, 0, 'Wensheng Qu', 'WST', 0);
INSERT INTO `ln_region` VALUES (917, '211004', '宏伟区', 80, 0, 0, 'Hongwei Qu', 'HWQ', 0);
INSERT INTO `ln_region` VALUES (918, '211005', '弓长岭区', 80, 0, 0, 'Gongchangling Qu', 'GCL', 0);
INSERT INTO `ln_region` VALUES (919, '211011', '太子河区', 80, 0, 0, 'Taizihe Qu', 'TZH', 0);
INSERT INTO `ln_region` VALUES (920, '211021', '辽阳县', 80, 0, 0, 'Liaoyang Xian', 'LYX', 0);
INSERT INTO `ln_region` VALUES (921, '211081', '灯塔市', 80, 0, 0, 'Dengta Shi', 'DTL', 0);
INSERT INTO `ln_region` VALUES (922, '211101', '市辖区', 81, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (923, '211102', '双台子区', 81, 0, 0, 'Shuangtaizi Qu', 'STZ', 0);
INSERT INTO `ln_region` VALUES (924, '211103', '兴隆台区', 81, 0, 0, 'Xinglongtai Qu', 'XLT', 0);
INSERT INTO `ln_region` VALUES (925, '211121', '大洼县', 81, 0, 0, 'Dawa Xian', 'DWA', 0);
INSERT INTO `ln_region` VALUES (926, '211122', '盘山县', 81, 0, 0, 'Panshan Xian', 'PNS', 0);
INSERT INTO `ln_region` VALUES (927, '211201', '市辖区', 82, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (928, '211202', '银州区', 82, 0, 0, 'Yinzhou Qu', 'YZU', 0);
INSERT INTO `ln_region` VALUES (929, '211204', '清河区', 82, 0, 0, 'Qinghe Qu', 'QHQ', 0);
INSERT INTO `ln_region` VALUES (930, '211221', '铁岭县', 82, 0, 0, 'Tieling Xian', 'TLG', 0);
INSERT INTO `ln_region` VALUES (931, '211223', '西丰县', 82, 0, 0, 'Xifeng Xian', 'XIF', 0);
INSERT INTO `ln_region` VALUES (932, '211224', '昌图县', 82, 0, 0, 'Changtu Xian', 'CTX', 0);
INSERT INTO `ln_region` VALUES (933, '211281', '调兵山市', 82, 0, 0, 'Diaobingshan Shi', '2', 0);
INSERT INTO `ln_region` VALUES (934, '211282', '开原市', 82, 0, 0, 'Kaiyuan Shi', 'KYS', 0);
INSERT INTO `ln_region` VALUES (935, '211301', '市辖区', 83, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (936, '211302', '双塔区', 83, 0, 0, 'Shuangta Qu', 'STQ', 0);
INSERT INTO `ln_region` VALUES (937, '211303', '龙城区', 83, 0, 0, 'Longcheng Qu', 'LCL', 0);
INSERT INTO `ln_region` VALUES (938, '211321', '朝阳县', 83, 0, 0, 'Chaoyang Xian', 'CYG', 0);
INSERT INTO `ln_region` VALUES (939, '211322', '建平县', 83, 0, 0, 'Jianping Xian', 'JPG', 0);
INSERT INTO `ln_region` VALUES (940, '211324', '喀喇沁左翼蒙古族自治县', 83, 0, 0, 'Harqin Zuoyi Mongolzu Zizhixian', 'HAZ', 0);
INSERT INTO `ln_region` VALUES (941, '211381', '北票市', 83, 0, 0, 'Beipiao Shi', 'BPO', 0);
INSERT INTO `ln_region` VALUES (942, '211382', '凌源市', 83, 0, 0, 'Lingyuan Shi', 'LYK', 0);
INSERT INTO `ln_region` VALUES (943, '211401', '市辖区', 84, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (944, '211402', '连山区', 84, 0, 0, 'Lianshan Qu', 'LSQ', 0);
INSERT INTO `ln_region` VALUES (945, '211403', '龙港区', 84, 0, 0, 'Longgang Qu', 'LGD', 0);
INSERT INTO `ln_region` VALUES (946, '211404', '南票区', 84, 0, 0, 'Nanpiao Qu', 'NPQ', 0);
INSERT INTO `ln_region` VALUES (947, '211421', '绥中县', 84, 0, 0, 'Suizhong Xian', 'SZL', 0);
INSERT INTO `ln_region` VALUES (948, '211422', '建昌县', 84, 0, 0, 'Jianchang Xian', 'JCL', 0);
INSERT INTO `ln_region` VALUES (949, '211481', '兴城市', 84, 0, 0, 'Xingcheng Shi', 'XCL', 0);
INSERT INTO `ln_region` VALUES (950, '220101', '市辖区', 85, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (951, '220102', '南关区', 85, 0, 0, 'Nanguan Qu', 'NGN', 0);
INSERT INTO `ln_region` VALUES (952, '220103', '宽城区', 85, 0, 0, 'Kuancheng Qu', 'KCQ', 0);
INSERT INTO `ln_region` VALUES (953, '220104', '朝阳区', 85, 0, 0, 'Chaoyang Qu ', 'CYC', 0);
INSERT INTO `ln_region` VALUES (954, '220105', '二道区', 85, 0, 0, 'Erdao Qu', 'EDQ', 0);
INSERT INTO `ln_region` VALUES (955, '220106', '绿园区', 85, 0, 0, 'Lvyuan Qu', 'LYQ', 0);
INSERT INTO `ln_region` VALUES (956, '220112', '双阳区', 85, 0, 0, 'Shuangyang Qu', 'SYQ', 0);
INSERT INTO `ln_region` VALUES (957, '220122', '农安县', 85, 0, 0, 'Nong,an Xian ', 'NAJ', 0);
INSERT INTO `ln_region` VALUES (958, '220181', '九台市', 85, 0, 0, 'Jiutai Shi', '2', 0);
INSERT INTO `ln_region` VALUES (959, '220182', '榆树市', 85, 0, 0, 'Yushu Shi', 'YSS', 0);
INSERT INTO `ln_region` VALUES (960, '220183', '德惠市', 85, 0, 0, 'Dehui Shi', 'DEH', 0);
INSERT INTO `ln_region` VALUES (961, '220201', '市辖区', 86, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (962, '220202', '昌邑区', 86, 0, 0, 'Changyi Qu', 'CYI', 0);
INSERT INTO `ln_region` VALUES (963, '220203', '龙潭区', 86, 0, 0, 'Longtan Qu', 'LTQ', 0);
INSERT INTO `ln_region` VALUES (964, '220204', '船营区', 86, 0, 0, 'Chuanying Qu', 'CYJ', 0);
INSERT INTO `ln_region` VALUES (965, '220211', '丰满区', 86, 0, 0, 'Fengman Qu', 'FMQ', 0);
INSERT INTO `ln_region` VALUES (966, '220221', '永吉县', 86, 0, 0, 'Yongji Xian', 'YOJ', 0);
INSERT INTO `ln_region` VALUES (967, '220281', '蛟河市', 86, 0, 0, 'Jiaohe Shi', 'JHJ', 0);
INSERT INTO `ln_region` VALUES (968, '220282', '桦甸市', 86, 0, 0, 'Huadian Shi', 'HDJ', 0);
INSERT INTO `ln_region` VALUES (969, '220283', '舒兰市', 86, 0, 0, 'Shulan Shi', 'SLN', 0);
INSERT INTO `ln_region` VALUES (970, '220284', '磐石市', 86, 0, 0, 'Panshi Shi', 'PSI', 0);
INSERT INTO `ln_region` VALUES (971, '220301', '市辖区', 87, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (972, '220302', '铁西区', 87, 0, 0, 'Tiexi Qu', 'TXS', 0);
INSERT INTO `ln_region` VALUES (973, '220303', '铁东区', 87, 0, 0, 'Tiedong Qu ', 'TDQ', 0);
INSERT INTO `ln_region` VALUES (974, '220322', '梨树县', 87, 0, 0, 'Lishu Xian', 'LSU', 0);
INSERT INTO `ln_region` VALUES (975, ' ', '伊通满族自治县', 87, 0, 0, 'Yitong Manzu Zizhixian', 'YTO', 0);
INSERT INTO `ln_region` VALUES (976, '220381', '公主岭市', 87, 0, 0, 'Gongzhuling Shi', 'GZL', 0);
INSERT INTO `ln_region` VALUES (977, '220382', '双辽市', 87, 0, 0, 'Shuangliao Shi', 'SLS', 0);
INSERT INTO `ln_region` VALUES (978, '220401', '市辖区', 88, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (979, '220402', '龙山区', 88, 0, 0, 'Longshan Qu', 'LGS', 0);
INSERT INTO `ln_region` VALUES (980, '220403', '西安区', 88, 0, 0, 'Xi,an Qu', 'XAA', 0);
INSERT INTO `ln_region` VALUES (981, '220421', '东丰县', 88, 0, 0, 'Dongfeng Xian', 'DGF', 0);
INSERT INTO `ln_region` VALUES (982, '220422', '东辽县', 88, 0, 0, 'Dongliao Xian ', 'DLX', 0);
INSERT INTO `ln_region` VALUES (983, '220501', '市辖区', 89, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (984, '220502', '东昌区', 89, 0, 0, 'Dongchang Qu', 'DCT', 0);
INSERT INTO `ln_region` VALUES (985, '220503', '二道江区', 89, 0, 0, 'Erdaojiang Qu', 'EDJ', 0);
INSERT INTO `ln_region` VALUES (986, '220521', '通化县', 89, 0, 0, 'Tonghua Xian ', 'THX', 0);
INSERT INTO `ln_region` VALUES (987, '220523', '辉南县', 89, 0, 0, 'Huinan Xian ', 'HNA', 0);
INSERT INTO `ln_region` VALUES (988, '220524', '柳河县', 89, 0, 0, 'Liuhe Xian ', 'LHC', 0);
INSERT INTO `ln_region` VALUES (989, '220581', '梅河口市', 89, 0, 0, 'Meihekou Shi', 'MHK', 0);
INSERT INTO `ln_region` VALUES (990, '220582', '集安市', 89, 0, 0, 'Ji,an Shi', 'KNC', 0);
INSERT INTO `ln_region` VALUES (991, '220601', '市辖区', 90, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (992, '220602', '八道江区', 90, 0, 0, 'Badaojiang Qu', 'BDJ', 0);
INSERT INTO `ln_region` VALUES (993, '220621', '抚松县', 90, 0, 0, 'Fusong Xian', 'FSG', 0);
INSERT INTO `ln_region` VALUES (994, '220622', '靖宇县', 90, 0, 0, 'Jingyu Xian', 'JYJ', 0);
INSERT INTO `ln_region` VALUES (995, '220623', '长白朝鲜族自治县', 90, 0, 0, 'Changbaichaoxianzuzizhi Xian', '2', 0);
INSERT INTO `ln_region` VALUES (996, '220605', '江源区', 90, 0, 0, 'Jiangyuan Xian', '2', 0);
INSERT INTO `ln_region` VALUES (997, '220681', '临江市', 90, 0, 0, 'Linjiang Shi', 'LIN', 0);
INSERT INTO `ln_region` VALUES (998, '220701', '市辖区', 91, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (999, '220702', '宁江区', 91, 0, 0, 'Ningjiang Qu', 'NJA', 0);
INSERT INTO `ln_region` VALUES (1000, '220721', '前郭尔罗斯蒙古族自治县', 91, 0, 0, 'Qian Gorlos Mongolzu Zizhixian', 'QGO', 0);
INSERT INTO `ln_region` VALUES (1001, '220722', '长岭县', 91, 0, 0, 'Changling Xian', 'CLG', 0);
INSERT INTO `ln_region` VALUES (1002, '220723', '乾安县', 91, 0, 0, 'Qian,an Xian', 'QAJ', 0);
INSERT INTO `ln_region` VALUES (1003, '220724', '扶余县', 91, 0, 0, 'Fuyu Xian', 'FYU', 0);
INSERT INTO `ln_region` VALUES (1004, '220801', '市辖区', 92, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1005, '220802', '洮北区', 92, 0, 0, 'Taobei Qu', 'TBQ', 0);
INSERT INTO `ln_region` VALUES (1006, '220821', '镇赉县', 92, 0, 0, 'Zhenlai Xian', 'ZLA', 0);
INSERT INTO `ln_region` VALUES (1007, '220822', '通榆县', 92, 0, 0, 'Tongyu Xian', 'TGY', 0);
INSERT INTO `ln_region` VALUES (1008, '220881', '洮南市', 92, 0, 0, 'Taonan Shi', 'TNS', 0);
INSERT INTO `ln_region` VALUES (1009, '220882', '大安市', 92, 0, 0, 'Da,an Shi', 'DNA', 0);
INSERT INTO `ln_region` VALUES (1010, '222401', '延吉市', 93, 0, 0, 'Yanji Shi', 'YNJ', 0);
INSERT INTO `ln_region` VALUES (1011, '222402', '图们市', 93, 0, 0, 'Tumen Shi', 'TME', 0);
INSERT INTO `ln_region` VALUES (1012, '222403', '敦化市', 93, 0, 0, 'Dunhua Shi', 'DHS', 0);
INSERT INTO `ln_region` VALUES (1013, '222404', '珲春市', 93, 0, 0, 'Hunchun Shi', 'HUC', 0);
INSERT INTO `ln_region` VALUES (1014, '222405', '龙井市', 93, 0, 0, 'Longjing Shi', 'LJJ', 0);
INSERT INTO `ln_region` VALUES (1015, '222406', '和龙市', 93, 0, 0, 'Helong Shi', 'HEL', 0);
INSERT INTO `ln_region` VALUES (1016, '222424', '汪清县', 93, 0, 0, 'Wangqing Xian', 'WGQ', 0);
INSERT INTO `ln_region` VALUES (1017, '222426', '安图县', 93, 0, 0, 'Antu Xian', 'ATU', 0);
INSERT INTO `ln_region` VALUES (1018, '230101', '市辖区', 94, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1019, '230102', '道里区', 94, 0, 0, 'Daoli Qu', 'DLH', 0);
INSERT INTO `ln_region` VALUES (1020, '230103', '南岗区', 94, 0, 0, 'Nangang Qu', 'NGQ', 0);
INSERT INTO `ln_region` VALUES (1021, '230104', '道外区', 94, 0, 0, 'Daowai Qu', 'DWQ', 0);
INSERT INTO `ln_region` VALUES (1022, '230110', '香坊区', 94, 0, 0, 'Xiangfang Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1024, '230108', '平房区', 94, 0, 0, 'Pingfang Qu', 'PFQ', 0);
INSERT INTO `ln_region` VALUES (1025, '230109', '松北区', 94, 0, 0, 'Songbei Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1026, '230111', '呼兰区', 94, 0, 0, 'Hulan Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1027, '230123', '依兰县', 94, 0, 0, 'Yilan Xian', 'YLH', 0);
INSERT INTO `ln_region` VALUES (1028, '230124', '方正县', 94, 0, 0, 'Fangzheng Xian', 'FZH', 0);
INSERT INTO `ln_region` VALUES (1029, '230125', '宾县', 94, 0, 0, 'Bin Xian', 'BNX', 0);
INSERT INTO `ln_region` VALUES (1030, '230126', '巴彦县', 94, 0, 0, 'Bayan Xian', 'BYH', 0);
INSERT INTO `ln_region` VALUES (1031, '230127', '木兰县', 94, 0, 0, 'Mulan Xian ', 'MUL', 0);
INSERT INTO `ln_region` VALUES (1032, '230128', '通河县', 94, 0, 0, 'Tonghe Xian', 'TOH', 0);
INSERT INTO `ln_region` VALUES (1033, '230129', '延寿县', 94, 0, 0, 'Yanshou Xian', 'YSU', 0);
INSERT INTO `ln_region` VALUES (1034, '230112', '阿城区', 94, 0, 0, 'Acheng Shi', '2', 0);
INSERT INTO `ln_region` VALUES (1035, '230182', '双城市', 94, 0, 0, 'Shuangcheng Shi', 'SCS', 0);
INSERT INTO `ln_region` VALUES (1036, '230183', '尚志市', 94, 0, 0, 'Shangzhi Shi', 'SZI', 0);
INSERT INTO `ln_region` VALUES (1037, '230184', '五常市', 94, 0, 0, 'Wuchang Shi', 'WCA', 0);
INSERT INTO `ln_region` VALUES (1038, '230201', '市辖区', 95, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1039, '230202', '龙沙区', 95, 0, 0, 'Longsha Qu', 'LQQ', 0);
INSERT INTO `ln_region` VALUES (1040, '230203', '建华区', 95, 0, 0, 'Jianhua Qu', 'JHQ', 0);
INSERT INTO `ln_region` VALUES (1041, '230204', '铁锋区', 95, 0, 0, 'Tiefeng Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1042, '230205', '昂昂溪区', 95, 0, 0, 'Ang,angxi Qu', 'AAX', 0);
INSERT INTO `ln_region` VALUES (1043, '230206', '富拉尔基区', 95, 0, 0, 'Hulan Ergi Qu', 'HUE', 0);
INSERT INTO `ln_region` VALUES (1044, '230207', '碾子山区', 95, 0, 0, 'Nianzishan Qu', 'NZS', 0);
INSERT INTO `ln_region` VALUES (1045, '230208', '梅里斯达斡尔族区', 95, 0, 0, 'Meilisidawoerzu Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1046, '230221', '龙江县', 95, 0, 0, 'Longjiang Xian', 'LGJ', 0);
INSERT INTO `ln_region` VALUES (1047, '230223', '依安县', 95, 0, 0, 'Yi,an Xian', 'YAN', 0);
INSERT INTO `ln_region` VALUES (1048, '230224', '泰来县', 95, 0, 0, 'Tailai Xian', 'TLA', 0);
INSERT INTO `ln_region` VALUES (1049, '230225', '甘南县', 95, 0, 0, 'Gannan Xian', 'GNX', 0);
INSERT INTO `ln_region` VALUES (1050, '230227', '富裕县', 95, 0, 0, 'Fuyu Xian', 'FYX', 0);
INSERT INTO `ln_region` VALUES (1051, '230229', '克山县', 95, 0, 0, 'Keshan Xian', 'KSN', 0);
INSERT INTO `ln_region` VALUES (1052, '230230', '克东县', 95, 0, 0, 'Kedong Xian', 'KDO', 0);
INSERT INTO `ln_region` VALUES (1053, '230231', '拜泉县', 95, 0, 0, 'Baiquan Xian', 'BQN', 0);
INSERT INTO `ln_region` VALUES (1054, '230281', '讷河市', 95, 0, 0, 'Nehe Shi', 'NEH', 0);
INSERT INTO `ln_region` VALUES (1055, '230301', '市辖区', 96, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1056, '230302', '鸡冠区', 96, 0, 0, 'Jiguan Qu', 'JGU', 0);
INSERT INTO `ln_region` VALUES (1057, '230303', '恒山区', 96, 0, 0, 'Hengshan Qu', 'HSD', 0);
INSERT INTO `ln_region` VALUES (1058, '230304', '滴道区', 96, 0, 0, 'Didao Qu', 'DDO', 0);
INSERT INTO `ln_region` VALUES (1059, '230305', '梨树区', 96, 0, 0, 'Lishu Qu', 'LJX', 0);
INSERT INTO `ln_region` VALUES (1060, '230306', '城子河区', 96, 0, 0, 'Chengzihe Qu', 'CZH', 0);
INSERT INTO `ln_region` VALUES (1061, '230307', '麻山区', 96, 0, 0, 'Mashan Qu', 'MSN', 0);
INSERT INTO `ln_region` VALUES (1062, '230321', '鸡东县', 96, 0, 0, 'Jidong Xian', 'JID', 0);
INSERT INTO `ln_region` VALUES (1063, '230381', '虎林市', 96, 0, 0, 'Hulin Shi', 'HUL', 0);
INSERT INTO `ln_region` VALUES (1064, '230382', '密山市', 96, 0, 0, 'Mishan Shi', 'MIS', 0);
INSERT INTO `ln_region` VALUES (1065, '230401', '市辖区', 97, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1066, '230402', '向阳区', 97, 0, 0, 'Xiangyang  Qu ', 'XYZ', 0);
INSERT INTO `ln_region` VALUES (1067, '230403', '工农区', 97, 0, 0, 'Gongnong Qu', 'GNH', 0);
INSERT INTO `ln_region` VALUES (1068, '230404', '南山区', 97, 0, 0, 'Nanshan Qu', 'NSQ', 0);
INSERT INTO `ln_region` VALUES (1069, '230405', '兴安区', 97, 0, 0, 'Xing,an Qu', 'XAH', 0);
INSERT INTO `ln_region` VALUES (1070, '230406', '东山区', 97, 0, 0, 'Dongshan Qu', 'DSA', 0);
INSERT INTO `ln_region` VALUES (1071, '230407', '兴山区', 97, 0, 0, 'Xingshan Qu', 'XSQ', 0);
INSERT INTO `ln_region` VALUES (1072, '230421', '萝北县', 97, 0, 0, 'Luobei Xian', 'LUB', 0);
INSERT INTO `ln_region` VALUES (1073, '230422', '绥滨县', 97, 0, 0, 'Suibin Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1074, '230501', '市辖区', 98, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1075, '230502', '尖山区', 98, 0, 0, 'Jianshan Qu', 'JSQ', 0);
INSERT INTO `ln_region` VALUES (1076, '230503', '岭东区', 98, 0, 0, 'Lingdong Qu', 'LDQ', 0);
INSERT INTO `ln_region` VALUES (1077, '230505', '四方台区', 98, 0, 0, 'Sifangtai Qu', 'SFT', 0);
INSERT INTO `ln_region` VALUES (1078, '230506', '宝山区', 98, 0, 0, 'Baoshan Qu', 'BSQ', 0);
INSERT INTO `ln_region` VALUES (1079, '230521', '集贤县', 98, 0, 0, 'Jixian Xian', 'JXH', 0);
INSERT INTO `ln_region` VALUES (1080, '230522', '友谊县', 98, 0, 0, 'Youyi Xian', 'YYI', 0);
INSERT INTO `ln_region` VALUES (1081, '230523', '宝清县', 98, 0, 0, 'Baoqing Xian', 'BQG', 0);
INSERT INTO `ln_region` VALUES (1082, '230524', '饶河县', 98, 0, 0, 'Raohe Xian ', 'ROH', 0);
INSERT INTO `ln_region` VALUES (1083, '230601', '市辖区', 99, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1084, '230602', '萨尔图区', 99, 0, 0, 'Sairt Qu', 'SAI', 0);
INSERT INTO `ln_region` VALUES (1085, '230603', '龙凤区', 99, 0, 0, 'Longfeng Qu', 'LFQ', 0);
INSERT INTO `ln_region` VALUES (1086, '230604', '让胡路区', 99, 0, 0, 'Ranghulu Qu', 'RHL', 0);
INSERT INTO `ln_region` VALUES (1087, '230605', '红岗区', 99, 0, 0, 'Honggang Qu', 'HGD', 0);
INSERT INTO `ln_region` VALUES (1088, '230606', '大同区', 99, 0, 0, 'Datong Qu', 'DHD', 0);
INSERT INTO `ln_region` VALUES (1089, '230621', '肇州县', 99, 0, 0, 'Zhaozhou Xian', 'ZAZ', 0);
INSERT INTO `ln_region` VALUES (1090, '230622', '肇源县', 99, 0, 0, 'Zhaoyuan Xian', 'ZYH', 0);
INSERT INTO `ln_region` VALUES (1091, '230623', '林甸县', 99, 0, 0, 'Lindian Xian ', 'LDN', 0);
INSERT INTO `ln_region` VALUES (1092, '230624', '杜尔伯特蒙古族自治县', 99, 0, 0, 'Dorbod Mongolzu Zizhixian', 'DOM', 0);
INSERT INTO `ln_region` VALUES (1093, '230701', '市辖区', 100, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1094, '230702', '伊春区', 100, 0, 0, 'Yichun Qu', 'YYC', 0);
INSERT INTO `ln_region` VALUES (1095, '230703', '南岔区', 100, 0, 0, 'Nancha Qu', 'NCQ', 0);
INSERT INTO `ln_region` VALUES (1096, '230704', '友好区', 100, 0, 0, 'Youhao Qu', 'YOH', 0);
INSERT INTO `ln_region` VALUES (1097, '230705', '西林区', 100, 0, 0, 'Xilin Qu', 'XIL', 0);
INSERT INTO `ln_region` VALUES (1098, '230706', '翠峦区', 100, 0, 0, 'Cuiluan Qu', 'CLN', 0);
INSERT INTO `ln_region` VALUES (1099, '230707', '新青区', 100, 0, 0, 'Xinqing Qu', 'XQQ', 0);
INSERT INTO `ln_region` VALUES (1100, '230708', '美溪区', 100, 0, 0, 'Meixi Qu', 'MXQ', 0);
INSERT INTO `ln_region` VALUES (1101, '230709', '金山屯区', 100, 0, 0, 'Jinshantun Qu', 'JST', 0);
INSERT INTO `ln_region` VALUES (1102, '230710', '五营区', 100, 0, 0, 'Wuying Qu', 'WYQ', 0);
INSERT INTO `ln_region` VALUES (1103, '230711', '乌马河区', 100, 0, 0, 'Wumahe Qu', 'WMH', 0);
INSERT INTO `ln_region` VALUES (1104, '230712', '汤旺河区', 100, 0, 0, 'Tangwanghe Qu', 'TWH', 0);
INSERT INTO `ln_region` VALUES (1105, '230713', '带岭区', 100, 0, 0, 'Dailing Qu', 'DLY', 0);
INSERT INTO `ln_region` VALUES (1106, '230714', '乌伊岭区', 100, 0, 0, 'Wuyiling Qu', 'WYL', 0);
INSERT INTO `ln_region` VALUES (1107, '230715', '红星区', 100, 0, 0, 'Hongxing Qu', 'HGX', 0);
INSERT INTO `ln_region` VALUES (1108, '230716', '上甘岭区', 100, 0, 0, 'Shangganling Qu', 'SGL', 0);
INSERT INTO `ln_region` VALUES (1109, '230722', '嘉荫县', 100, 0, 0, 'Jiayin Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1110, '230781', '铁力市', 100, 0, 0, 'Tieli Shi', 'TEL', 0);
INSERT INTO `ln_region` VALUES (1111, '230801', '市辖区', 101, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1113, '230803', '向阳区', 101, 0, 0, 'Xiangyang  Qu ', 'XYQ', 0);
INSERT INTO `ln_region` VALUES (1114, '230804', '前进区', 101, 0, 0, 'Qianjin Qu', 'QJQ', 0);
INSERT INTO `ln_region` VALUES (1115, '230805', '东风区', 101, 0, 0, 'Dongfeng Qu', 'DFQ', 0);
INSERT INTO `ln_region` VALUES (1116, '230811', '郊区', 101, 0, 0, 'Jiaoqu', 'JQJ', 0);
INSERT INTO `ln_region` VALUES (1117, '230822', '桦南县', 101, 0, 0, 'Huanan Xian', 'HNH', 0);
INSERT INTO `ln_region` VALUES (1118, '230826', '桦川县', 101, 0, 0, 'Huachuan Xian', 'HCN', 0);
INSERT INTO `ln_region` VALUES (1119, '230828', '汤原县', 101, 0, 0, 'Tangyuan Xian', 'TYX', 0);
INSERT INTO `ln_region` VALUES (1120, '230833', '抚远县', 101, 0, 0, 'Fuyuan Xian', 'FUY', 0);
INSERT INTO `ln_region` VALUES (1121, '230881', '同江市', 101, 0, 0, 'Tongjiang Shi', 'TOJ', 0);
INSERT INTO `ln_region` VALUES (1122, '230882', '富锦市', 101, 0, 0, 'Fujin Shi', 'FUJ', 0);
INSERT INTO `ln_region` VALUES (1123, '230901', '市辖区', 102, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1124, '230902', '新兴区', 102, 0, 0, 'Xinxing Qu', 'XXQ', 0);
INSERT INTO `ln_region` VALUES (1125, '230903', '桃山区', 102, 0, 0, 'Taoshan Qu', 'TSC', 0);
INSERT INTO `ln_region` VALUES (1126, '230904', '茄子河区', 102, 0, 0, 'Qiezihe Qu', 'QZI', 0);
INSERT INTO `ln_region` VALUES (1127, '230921', '勃利县', 102, 0, 0, 'Boli Xian', 'BLI', 0);
INSERT INTO `ln_region` VALUES (1128, '231001', '市辖区', 103, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1129, '231002', '东安区', 103, 0, 0, 'Dong,an Qu', 'DGA', 0);
INSERT INTO `ln_region` VALUES (1130, '231003', '阳明区', 103, 0, 0, 'Yangming Qu', 'YMQ', 0);
INSERT INTO `ln_region` VALUES (1131, '231004', '爱民区', 103, 0, 0, 'Aimin Qu', 'AMQ', 0);
INSERT INTO `ln_region` VALUES (1132, '231005', '西安区', 103, 0, 0, 'Xi,an Qu', 'XAQ', 0);
INSERT INTO `ln_region` VALUES (1133, '231024', '东宁县', 103, 0, 0, 'Dongning Xian', 'DON', 0);
INSERT INTO `ln_region` VALUES (1134, '231025', '林口县', 103, 0, 0, 'Linkou Xian', 'LKO', 0);
INSERT INTO `ln_region` VALUES (1135, '231081', '绥芬河市', 103, 0, 0, 'Suifenhe Shi', 'SFE', 0);
INSERT INTO `ln_region` VALUES (1136, '231083', '海林市', 103, 0, 0, 'Hailin Shi', 'HLS', 0);
INSERT INTO `ln_region` VALUES (1137, '231084', '宁安市', 103, 0, 0, 'Ning,an Shi', 'NAI', 0);
INSERT INTO `ln_region` VALUES (1138, '231085', '穆棱市', 103, 0, 0, 'Muling Shi', 'MLG', 0);
INSERT INTO `ln_region` VALUES (1139, '231101', '市辖区', 104, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1140, '231102', '爱辉区', 104, 0, 0, 'Aihui Qu', 'AHQ', 0);
INSERT INTO `ln_region` VALUES (1141, '231121', '嫩江县', 104, 0, 0, 'Nenjiang Xian', 'NJH', 0);
INSERT INTO `ln_region` VALUES (1142, '231123', '逊克县', 104, 0, 0, 'Xunke Xian', 'XUK', 0);
INSERT INTO `ln_region` VALUES (1143, '231124', '孙吴县', 104, 0, 0, 'Sunwu Xian', 'SUW', 0);
INSERT INTO `ln_region` VALUES (1144, '231181', '北安市', 104, 0, 0, 'Bei,an Shi', 'BAS', 0);
INSERT INTO `ln_region` VALUES (1145, '231182', '五大连池市', 104, 0, 0, 'Wudalianchi Shi', 'WDL', 0);
INSERT INTO `ln_region` VALUES (1146, '231201', '市辖区', 105, 0, 0, '1', '2', 0);
INSERT INTO `ln_region` VALUES (1147, '231202', '北林区', 105, 0, 0, 'Beilin Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1148, '231221', '望奎县', 105, 0, 0, 'Wangkui Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1149, '231222', '兰西县', 105, 0, 0, 'Lanxi Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1150, '231223', '青冈县', 105, 0, 0, 'Qinggang Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1151, '231224', '庆安县', 105, 0, 0, 'Qing,an Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1152, '231225', '明水县', 105, 0, 0, 'Mingshui Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1153, '231226', '绥棱县', 105, 0, 0, 'Suileng Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1154, '231281', '安达市', 105, 0, 0, 'Anda Shi', '2', 0);
INSERT INTO `ln_region` VALUES (1155, '231282', '肇东市', 105, 0, 0, 'Zhaodong Shi', '2', 0);
INSERT INTO `ln_region` VALUES (1156, '231283', '海伦市', 105, 0, 0, 'Hailun Shi', '2', 0);
INSERT INTO `ln_region` VALUES (1157, '232721', '呼玛县', 106, 0, 0, 'Huma Xian', 'HUM', 0);
INSERT INTO `ln_region` VALUES (1158, '232722', '塔河县', 106, 0, 0, 'Tahe Xian', 'TAH', 0);
INSERT INTO `ln_region` VALUES (1159, '232723', '漠河县', 106, 0, 0, 'Mohe Xian', 'MOH', 0);
INSERT INTO `ln_region` VALUES (1160, '310101', '黄浦区', 107, 0, 0, 'Huangpu Qu', 'HGP', 0);
INSERT INTO `ln_region` VALUES (1161, '310103', '卢湾区', 107, 0, 0, 'Luwan Qu', 'LWN', 0);
INSERT INTO `ln_region` VALUES (1162, '310104', '徐汇区', 107, 0, 0, 'Xuhui Qu', 'XHI', 0);
INSERT INTO `ln_region` VALUES (1163, '310105', '长宁区', 107, 0, 0, 'Changning Qu', 'CNQ', 0);
INSERT INTO `ln_region` VALUES (1164, '310106', '静安区', 107, 0, 0, 'Jing,an Qu', 'JAQ', 0);
INSERT INTO `ln_region` VALUES (1165, '310107', '普陀区', 107, 0, 0, 'Putuo Qu', 'PTQ', 0);
INSERT INTO `ln_region` VALUES (1166, '310108', '闸北区', 107, 0, 0, 'Zhabei Qu', 'ZBE', 0);
INSERT INTO `ln_region` VALUES (1167, '310109', '虹口区', 107, 0, 0, 'Hongkou Qu', 'HKQ', 0);
INSERT INTO `ln_region` VALUES (1168, '310110', '杨浦区', 107, 0, 0, 'Yangpu Qu', 'YPU', 0);
INSERT INTO `ln_region` VALUES (1169, '310112', '闵行区', 107, 0, 0, 'Minhang Qu', 'MHQ', 0);
INSERT INTO `ln_region` VALUES (1170, '310113', '宝山区', 107, 0, 0, 'Baoshan Qu', 'BAO', 0);
INSERT INTO `ln_region` VALUES (1171, '310114', '嘉定区', 107, 0, 0, 'Jiading Qu', 'JDG', 0);
INSERT INTO `ln_region` VALUES (1172, '310115', '浦东新区', 107, 0, 0, 'Pudong Xinqu', 'PDX', 0);
INSERT INTO `ln_region` VALUES (1173, '310116', '金山区', 107, 0, 0, 'Jinshan Qu', 'JSH', 0);
INSERT INTO `ln_region` VALUES (1174, '310117', '松江区', 107, 0, 0, 'Songjiang Qu', 'SOJ', 0);
INSERT INTO `ln_region` VALUES (1175, '310118', '青浦区', 107, 0, 0, 'Qingpu  Qu', 'QPU', 0);
INSERT INTO `ln_region` VALUES (1177, '310120', '奉贤区', 107, 0, 0, 'Fengxian Qu', 'FXI', 0);
INSERT INTO `ln_region` VALUES (1178, '310230', '崇明县', 108, 0, 0, 'Chongming Xian', 'CMI', 0);
INSERT INTO `ln_region` VALUES (1179, '320101', '市辖区', 109, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1180, '320102', '玄武区', 109, 0, 0, 'Xuanwu Qu', 'XWU', 0);
INSERT INTO `ln_region` VALUES (1181, '320103', '白下区', 109, 0, 0, 'Baixia Qu', 'BXQ', 0);
INSERT INTO `ln_region` VALUES (1182, '320104', '秦淮区', 109, 0, 0, 'Qinhuai Qu', 'QHU', 0);
INSERT INTO `ln_region` VALUES (1183, '320105', '建邺区', 109, 0, 0, 'Jianye Qu', 'JYQ', 0);
INSERT INTO `ln_region` VALUES (1184, '320106', '鼓楼区', 109, 0, 0, 'Gulou Qu', 'GLQ', 0);
INSERT INTO `ln_region` VALUES (1185, '320107', '下关区', 109, 0, 0, 'Xiaguan Qu', 'XGQ', 0);
INSERT INTO `ln_region` VALUES (1186, '320111', '浦口区', 109, 0, 0, 'Pukou Qu', 'PKO', 0);
INSERT INTO `ln_region` VALUES (1187, '320113', '栖霞区', 109, 0, 0, 'Qixia Qu', 'QAX', 0);
INSERT INTO `ln_region` VALUES (1188, '320114', '雨花台区', 109, 0, 0, 'Yuhuatai Qu', 'YHT', 0);
INSERT INTO `ln_region` VALUES (1189, '320115', '江宁区', 109, 0, 0, 'Jiangning Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1190, '320116', '六合区', 109, 0, 0, 'Liuhe Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1191, '320124', '溧水县', 109, 0, 0, 'Lishui Xian', 'LIS', 0);
INSERT INTO `ln_region` VALUES (1192, '320125', '高淳县', 109, 0, 0, 'Gaochun Xian', 'GCN', 0);
INSERT INTO `ln_region` VALUES (1193, '320201', '市辖区', 110, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1194, '320202', '崇安区', 110, 0, 0, 'Chong,an Qu', 'CGA', 0);
INSERT INTO `ln_region` VALUES (1195, '320203', '南长区', 110, 0, 0, 'Nanchang Qu', 'NCG', 0);
INSERT INTO `ln_region` VALUES (1196, '320204', '北塘区', 110, 0, 0, 'Beitang Qu', 'BTQ', 0);
INSERT INTO `ln_region` VALUES (1197, '320205', '锡山区', 110, 0, 0, 'Xishan Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1198, '320206', '惠山区', 110, 0, 0, 'Huishan Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1199, '320211', '滨湖区', 110, 0, 0, 'Binhu Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1200, '320281', '江阴市', 110, 0, 0, 'Jiangyin Shi', 'JIA', 0);
INSERT INTO `ln_region` VALUES (1201, '320282', '宜兴市', 110, 0, 0, 'Yixing Shi', 'YIX', 0);
INSERT INTO `ln_region` VALUES (1202, '320301', '市辖区', 111, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1203, '320302', '鼓楼区', 111, 0, 0, 'Gulou Qu', 'GLU', 0);
INSERT INTO `ln_region` VALUES (1204, '320303', '云龙区', 111, 0, 0, 'Yunlong Qu', 'YLF', 0);
INSERT INTO `ln_region` VALUES (1206, '320305', '贾汪区', 111, 0, 0, 'Jiawang Qu', 'JWQ', 0);
INSERT INTO `ln_region` VALUES (1207, '320311', '泉山区', 111, 0, 0, 'Quanshan Qu', 'QSX', 0);
INSERT INTO `ln_region` VALUES (1208, '320321', '丰县', 111, 0, 0, 'Feng Xian', 'FXN', 0);
INSERT INTO `ln_region` VALUES (1209, '320322', '沛县', 111, 0, 0, 'Pei Xian', 'PEI', 0);
INSERT INTO `ln_region` VALUES (1210, '320312', '铜山区', 111, 0, 0, 'Tongshan Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1211, '320324', '睢宁县', 111, 0, 0, 'Suining Xian', 'SNI', 0);
INSERT INTO `ln_region` VALUES (1212, '320381', '新沂市', 111, 0, 0, 'Xinyi Shi', 'XYW', 0);
INSERT INTO `ln_region` VALUES (1213, '320382', '邳州市', 111, 0, 0, 'Pizhou Shi', 'PZO', 0);
INSERT INTO `ln_region` VALUES (1214, '320401', '市辖区', 112, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1215, '320402', '天宁区', 112, 0, 0, 'Tianning Qu', 'TNQ', 0);
INSERT INTO `ln_region` VALUES (1216, '320404', '钟楼区', 112, 0, 0, 'Zhonglou Qu', 'ZLQ', 0);
INSERT INTO `ln_region` VALUES (1217, '320405', '戚墅堰区', 112, 0, 0, 'Qishuyan Qu', 'QSY', 0);
INSERT INTO `ln_region` VALUES (1218, '320411', '新北区', 112, 0, 0, 'Xinbei Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1219, '320412', '武进区', 112, 0, 0, 'Wujin Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1220, '320481', '溧阳市', 112, 0, 0, 'Liyang Shi', 'LYR', 0);
INSERT INTO `ln_region` VALUES (1221, '320482', '金坛市', 112, 0, 0, 'Jintan Shi', 'JTS', 0);
INSERT INTO `ln_region` VALUES (1222, '320501', '市辖区', 113, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1223, '320502', '沧浪区', 113, 0, 0, 'Canglang Qu', 'CLQ', 0);
INSERT INTO `ln_region` VALUES (1224, '320503', '平江区', 113, 0, 0, 'Pingjiang Qu', 'PJQ', 0);
INSERT INTO `ln_region` VALUES (1225, '320504', '金阊区', 113, 0, 0, 'Jinchang Qu', 'JCA', 0);
INSERT INTO `ln_region` VALUES (1226, '320505', '虎丘区', 113, 0, 0, 'Huqiu Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1227, '320506', '吴中区', 113, 0, 0, 'Wuzhong Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1228, '320507', '相城区', 113, 0, 0, 'Xiangcheng Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1229, '320581', '常熟市', 113, 0, 0, 'Changshu Shi', 'CGS', 0);
INSERT INTO `ln_region` VALUES (1230, '320582', '张家港市', 113, 0, 0, 'Zhangjiagang Shi ', 'ZJG', 0);
INSERT INTO `ln_region` VALUES (1231, '320583', '昆山市', 113, 0, 0, 'Kunshan Shi', 'KUS', 0);
INSERT INTO `ln_region` VALUES (1232, '320584', '吴江市', 113, 0, 0, 'Wujiang Shi', 'WUJ', 0);
INSERT INTO `ln_region` VALUES (1233, '320585', '太仓市', 113, 0, 0, 'Taicang Shi', 'TAC', 0);
INSERT INTO `ln_region` VALUES (1234, '320601', '市辖区', 114, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1235, '320602', '崇川区', 114, 0, 0, 'Chongchuan Qu', 'CCQ', 0);
INSERT INTO `ln_region` VALUES (1236, '320611', '港闸区', 114, 0, 0, 'Gangzha Qu', 'GZQ', 0);
INSERT INTO `ln_region` VALUES (1237, '320621', '海安县', 114, 0, 0, 'Hai,an Xian', 'HIA', 0);
INSERT INTO `ln_region` VALUES (1238, '320623', '如东县', 114, 0, 0, 'Rudong Xian', 'RDG', 0);
INSERT INTO `ln_region` VALUES (1239, '320681', '启东市', 114, 0, 0, 'Qidong Shi', 'QID', 0);
INSERT INTO `ln_region` VALUES (1240, '320682', '如皋市', 114, 0, 0, 'Rugao Shi', 'RGO', 0);
INSERT INTO `ln_region` VALUES (1241, '320612', '通州区', 114, 0, 0, 'Tongzhou Shi', '2', 0);
INSERT INTO `ln_region` VALUES (1242, '320684', '海门市', 114, 0, 0, 'Haimen Shi', 'HME', 0);
INSERT INTO `ln_region` VALUES (1243, '320701', '市辖区', 115, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1244, '320703', '连云区', 115, 0, 0, 'Lianyun Qu', 'LYB', 0);
INSERT INTO `ln_region` VALUES (1245, '320705', '新浦区', 115, 0, 0, 'Xinpu Qu', 'XPQ', 0);
INSERT INTO `ln_region` VALUES (1246, '320706', '海州区', 115, 0, 0, 'Haizhou Qu', 'HIZ', 0);
INSERT INTO `ln_region` VALUES (1247, '320721', '赣榆县', 115, 0, 0, 'Ganyu Xian', 'GYU', 0);
INSERT INTO `ln_region` VALUES (1248, '320722', '东海县', 115, 0, 0, 'Donghai Xian', 'DHX', 0);
INSERT INTO `ln_region` VALUES (1249, '320723', '灌云县', 115, 0, 0, 'Guanyun Xian', 'GYS', 0);
INSERT INTO `ln_region` VALUES (1250, '320724', '灌南县', 115, 0, 0, 'Guannan Xian', 'GUN', 0);
INSERT INTO `ln_region` VALUES (1251, '320801', '市辖区', 116, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1252, '320802', '清河区', 116, 0, 0, 'Qinghe Qu', 'QHH', 0);
INSERT INTO `ln_region` VALUES (1253, '320803', '楚州区', 116, 0, 0, 'Chuzhou Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1254, '320804', '淮阴区', 116, 0, 0, 'Huaiyin Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1255, '320811', '清浦区', 116, 0, 0, 'Qingpu Qu', 'QPQ', 0);
INSERT INTO `ln_region` VALUES (1256, '320826', '涟水县', 116, 0, 0, 'Lianshui Xian', 'LSI', 0);
INSERT INTO `ln_region` VALUES (1257, '320829', '洪泽县', 116, 0, 0, 'Hongze Xian', 'HGZ', 0);
INSERT INTO `ln_region` VALUES (1258, '320830', '盱眙县', 116, 0, 0, 'Xuyi Xian', 'XUY', 0);
INSERT INTO `ln_region` VALUES (1259, '320831', '金湖县', 116, 0, 0, 'Jinhu Xian', 'JHU', 0);
INSERT INTO `ln_region` VALUES (1260, '320901', '市辖区', 117, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1261, '320902', '亭湖区', 117, 0, 0, 'Tinghu Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1262, '320903', '盐都区', 117, 0, 0, 'Yandu Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1263, '320921', '响水县', 117, 0, 0, 'Xiangshui Xian', 'XSH', 0);
INSERT INTO `ln_region` VALUES (1264, '320922', '滨海县', 117, 0, 0, 'Binhai Xian', 'BHI', 0);
INSERT INTO `ln_region` VALUES (1265, '320923', '阜宁县', 117, 0, 0, 'Funing Xian', 'FNG', 0);
INSERT INTO `ln_region` VALUES (1266, '320924', '射阳县', 117, 0, 0, 'Sheyang Xian', 'SEY', 0);
INSERT INTO `ln_region` VALUES (1267, '320925', '建湖县', 117, 0, 0, 'Jianhu Xian', 'JIH', 0);
INSERT INTO `ln_region` VALUES (1268, '320981', '东台市', 117, 0, 0, 'Dongtai Shi', 'DTS', 0);
INSERT INTO `ln_region` VALUES (1269, '320982', '大丰市', 117, 0, 0, 'Dafeng Shi', 'DFS', 0);
INSERT INTO `ln_region` VALUES (1270, '321001', '市辖区', 118, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1271, '321002', '广陵区', 118, 0, 0, 'Guangling Qu', 'GGL', 0);
INSERT INTO `ln_region` VALUES (1272, '321003', '邗江区', 118, 0, 0, 'Hanjiang Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1273, '321011', '维扬区', 118, 0, 0, 'Weiyang Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1274, '321023', '宝应县', 118, 0, 0, 'Baoying Xian ', 'BYI', 0);
INSERT INTO `ln_region` VALUES (1275, '321081', '仪征市', 118, 0, 0, 'Yizheng Shi', 'YZE', 0);
INSERT INTO `ln_region` VALUES (1276, '321084', '高邮市', 118, 0, 0, 'Gaoyou Shi', 'GYO', 0);
INSERT INTO `ln_region` VALUES (1277, '321088', '江都市', 118, 0, 0, 'Jiangdu Shi', 'JDU', 0);
INSERT INTO `ln_region` VALUES (1278, '321101', '市辖区', 119, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1279, '321102', '京口区', 119, 0, 0, 'Jingkou Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1280, '321111', '润州区', 119, 0, 0, 'Runzhou Qu', 'RZQ', 0);
INSERT INTO `ln_region` VALUES (1281, '321112', '丹徒区', 119, 0, 0, 'Dantu Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1282, '321181', '丹阳市', 119, 0, 0, 'Danyang Xian', 'DNY', 0);
INSERT INTO `ln_region` VALUES (1283, '321182', '扬中市', 119, 0, 0, 'Yangzhong Shi', 'YZG', 0);
INSERT INTO `ln_region` VALUES (1284, '321183', '句容市', 119, 0, 0, 'Jurong Shi', 'JRG', 0);
INSERT INTO `ln_region` VALUES (1285, '321201', '市辖区', 120, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1286, '321202', '海陵区', 120, 0, 0, 'Hailing Qu', 'HIL', 0);
INSERT INTO `ln_region` VALUES (1287, '321203', '高港区', 120, 0, 0, 'Gaogang Qu', 'GGQ', 0);
INSERT INTO `ln_region` VALUES (1288, '321281', '兴化市', 120, 0, 0, 'Xinghua Shi', 'XHS', 0);
INSERT INTO `ln_region` VALUES (1289, '321282', '靖江市', 120, 0, 0, 'Jingjiang Shi', 'JGJ', 0);
INSERT INTO `ln_region` VALUES (1290, '321283', '泰兴市', 120, 0, 0, 'Taixing Shi', 'TXG', 0);
INSERT INTO `ln_region` VALUES (1291, '321284', '姜堰市', 120, 0, 0, 'Jiangyan Shi', 'JYS', 0);
INSERT INTO `ln_region` VALUES (1292, '321301', '市辖区', 121, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1293, '321302', '宿城区', 121, 0, 0, 'Sucheng Qu', 'SCE', 0);
INSERT INTO `ln_region` VALUES (1294, '321311', '宿豫区', 121, 0, 0, 'Suyu Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1295, '321322', '沭阳县', 121, 0, 0, 'Shuyang Xian', 'SYD', 0);
INSERT INTO `ln_region` VALUES (1296, '321323', '泗阳县', 121, 0, 0, 'Siyang Xian ', 'SIY', 0);
INSERT INTO `ln_region` VALUES (1297, '321324', '泗洪县', 121, 0, 0, 'Sihong Xian', 'SIH', 0);
INSERT INTO `ln_region` VALUES (1298, '330101', '市辖区', 122, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1299, '330102', '上城区', 122, 0, 0, 'Shangcheng Qu', 'SCQ', 0);
INSERT INTO `ln_region` VALUES (1300, '330103', '下城区', 122, 0, 0, 'Xiacheng Qu', 'XCG', 0);
INSERT INTO `ln_region` VALUES (1301, '330104', '江干区', 122, 0, 0, 'Jianggan Qu', 'JGQ', 0);
INSERT INTO `ln_region` VALUES (1302, '330105', '拱墅区', 122, 0, 0, 'Gongshu Qu', 'GSQ', 0);
INSERT INTO `ln_region` VALUES (1303, '330106', '西湖区', 122, 0, 0, 'Xihu Qu ', 'XHU', 0);
INSERT INTO `ln_region` VALUES (1304, '330108', '滨江区', 122, 0, 0, 'Binjiang Qu', 'BJQ', 0);
INSERT INTO `ln_region` VALUES (1305, '330109', '萧山区', 122, 0, 0, 'Xiaoshan Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1306, '330110', '余杭区', 122, 0, 0, 'Yuhang Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1307, '330122', '桐庐县', 122, 0, 0, 'Tonglu Xian', 'TLU', 0);
INSERT INTO `ln_region` VALUES (1308, '330127', '淳安县', 122, 0, 0, 'Chun,an Xian', 'CAZ', 0);
INSERT INTO `ln_region` VALUES (1309, '330182', '建德市', 122, 0, 0, 'Jiande Shi', 'JDS', 0);
INSERT INTO `ln_region` VALUES (1310, '330183', '富阳市', 122, 0, 0, 'Fuyang Shi', 'FYZ', 0);
INSERT INTO `ln_region` VALUES (1311, '330185', '临安市', 122, 0, 0, 'Lin,an Shi', 'LNA', 0);
INSERT INTO `ln_region` VALUES (1312, '330201', '市辖区', 123, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1313, '330203', '海曙区', 123, 0, 0, 'Haishu Qu', 'HNB', 0);
INSERT INTO `ln_region` VALUES (1314, '330204', '江东区', 123, 0, 0, 'Jiangdong Qu', 'JDO', 0);
INSERT INTO `ln_region` VALUES (1315, '330205', '江北区', 123, 0, 0, 'Jiangbei Qu', 'JBQ', 0);
INSERT INTO `ln_region` VALUES (1316, '330206', '北仑区', 123, 0, 0, 'Beilun Qu', 'BLN', 0);
INSERT INTO `ln_region` VALUES (1317, '330211', '镇海区', 123, 0, 0, 'Zhenhai Qu', 'ZHF', 0);
INSERT INTO `ln_region` VALUES (1318, '330212', '鄞州区', 123, 0, 0, 'Yinzhou Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1319, '330225', '象山县', 123, 0, 0, 'Xiangshan Xian', 'YSZ', 0);
INSERT INTO `ln_region` VALUES (1320, '330226', '宁海县', 123, 0, 0, 'Ninghai Xian', 'NHI', 0);
INSERT INTO `ln_region` VALUES (1321, '330281', '余姚市', 123, 0, 0, 'Yuyao Shi', 'YYO', 0);
INSERT INTO `ln_region` VALUES (1322, '330282', '慈溪市', 123, 0, 0, 'Cixi Shi', 'CXI', 0);
INSERT INTO `ln_region` VALUES (1323, '330283', '奉化市', 123, 0, 0, 'Fenghua Shi', 'FHU', 0);
INSERT INTO `ln_region` VALUES (1324, '330301', '市辖区', 124, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1325, '330302', '鹿城区', 124, 0, 0, 'Lucheng Qu', 'LUW', 0);
INSERT INTO `ln_region` VALUES (1326, '330303', '龙湾区', 124, 0, 0, 'Longwan Qu', 'LWW', 0);
INSERT INTO `ln_region` VALUES (1327, '330304', '瓯海区', 124, 0, 0, 'Ouhai Qu', 'OHQ', 0);
INSERT INTO `ln_region` VALUES (1328, '330322', '洞头县', 124, 0, 0, 'Dongtou Xian', 'DTO', 0);
INSERT INTO `ln_region` VALUES (1329, '330324', '永嘉县', 124, 0, 0, 'Yongjia Xian', 'YJX', 0);
INSERT INTO `ln_region` VALUES (1330, '330326', '平阳县', 124, 0, 0, 'Pingyang Xian', 'PYG', 0);
INSERT INTO `ln_region` VALUES (1331, '330327', '苍南县', 124, 0, 0, 'Cangnan Xian', 'CAN', 0);
INSERT INTO `ln_region` VALUES (1332, '330328', '文成县', 124, 0, 0, 'Wencheng Xian', 'WCZ', 0);
INSERT INTO `ln_region` VALUES (1333, '330329', '泰顺县', 124, 0, 0, 'Taishun Xian', 'TSZ', 0);
INSERT INTO `ln_region` VALUES (1334, '330381', '瑞安市', 124, 0, 0, 'Rui,an Xian', 'RAS', 0);
INSERT INTO `ln_region` VALUES (1335, '330382', '乐清市', 124, 0, 0, 'Yueqing Shi', 'YQZ', 0);
INSERT INTO `ln_region` VALUES (1336, '330401', '市辖区', 125, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1338, '330411', '秀洲区', 125, 0, 0, 'Xiuzhou Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1339, '330421', '嘉善县', 125, 0, 0, 'Jiashan Xian', 'JSK', 0);
INSERT INTO `ln_region` VALUES (1340, '330424', '海盐县', 125, 0, 0, 'Haiyan Xian', 'HYN', 0);
INSERT INTO `ln_region` VALUES (1341, '330481', '海宁市', 125, 0, 0, 'Haining Shi', 'HNG', 0);
INSERT INTO `ln_region` VALUES (1342, '330482', '平湖市', 125, 0, 0, 'Pinghu Shi', 'PHU', 0);
INSERT INTO `ln_region` VALUES (1343, '330483', '桐乡市', 125, 0, 0, 'Tongxiang Shi', 'TXZ', 0);
INSERT INTO `ln_region` VALUES (1344, '330501', '市辖区', 126, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1345, '330502', '吴兴区', 126, 0, 0, 'Wuxing Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1346, '330503', '南浔区', 126, 0, 0, 'Nanxun Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1347, '330521', '德清县', 126, 0, 0, 'Deqing Xian', 'DQX', 0);
INSERT INTO `ln_region` VALUES (1348, '330522', '长兴县', 126, 0, 0, 'Changxing Xian', 'CXG', 0);
INSERT INTO `ln_region` VALUES (1349, '330523', '安吉县', 126, 0, 0, 'Anji Xian', 'AJI', 0);
INSERT INTO `ln_region` VALUES (1350, '330601', '市辖区', 127, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1351, '330602', '越城区', 127, 0, 0, 'Yuecheng Qu', 'YSX', 0);
INSERT INTO `ln_region` VALUES (1352, '330621', '绍兴县', 127, 0, 0, 'Shaoxing Xian', 'SXZ', 0);
INSERT INTO `ln_region` VALUES (1353, '330624', '新昌县', 127, 0, 0, 'Xinchang Xian', 'XCX', 0);
INSERT INTO `ln_region` VALUES (1354, '330681', '诸暨市', 127, 0, 0, 'Zhuji Shi', 'ZHJ', 0);
INSERT INTO `ln_region` VALUES (1355, '330682', '上虞市', 127, 0, 0, 'Shangyu Shi', 'SYZ', 0);
INSERT INTO `ln_region` VALUES (1356, '330683', '嵊州市', 127, 0, 0, 'Shengzhou Shi', 'SGZ', 0);
INSERT INTO `ln_region` VALUES (1357, '330701', '市辖区', 128, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1358, '330702', '婺城区', 128, 0, 0, 'Wucheng Qu', 'WCF', 0);
INSERT INTO `ln_region` VALUES (1359, '330703', '金东区', 128, 0, 0, 'Jindong Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1360, '330723', '武义县', 128, 0, 0, 'Wuyi Xian', 'WYX', 0);
INSERT INTO `ln_region` VALUES (1361, '330726', '浦江县', 128, 0, 0, 'Pujiang Xian ', 'PJG', 0);
INSERT INTO `ln_region` VALUES (1362, '330727', '磐安县', 128, 0, 0, 'Pan,an Xian', 'PAX', 0);
INSERT INTO `ln_region` VALUES (1363, '330781', '兰溪市', 128, 0, 0, 'Lanxi Shi', 'LXZ', 0);
INSERT INTO `ln_region` VALUES (1364, '330782', '义乌市', 128, 0, 0, 'Yiwu Shi', 'YWS', 0);
INSERT INTO `ln_region` VALUES (1365, '330783', '东阳市', 128, 0, 0, 'Dongyang Shi', 'DGY', 0);
INSERT INTO `ln_region` VALUES (1366, '330784', '永康市', 128, 0, 0, 'Yongkang Shi', 'YKG', 0);
INSERT INTO `ln_region` VALUES (1367, '330801', '市辖区', 129, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1368, '330802', '柯城区', 129, 0, 0, 'Kecheng Qu', 'KEC', 0);
INSERT INTO `ln_region` VALUES (1369, '330803', '衢江区', 129, 0, 0, 'Qujiang Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1370, '330822', '常山县', 129, 0, 0, 'Changshan Xian', 'CSN', 0);
INSERT INTO `ln_region` VALUES (1371, '330824', '开化县', 129, 0, 0, 'Kaihua Xian', 'KHU', 0);
INSERT INTO `ln_region` VALUES (1372, '330825', '龙游县', 129, 0, 0, 'Longyou Xian ', 'LGY', 0);
INSERT INTO `ln_region` VALUES (1373, '330881', '江山市', 129, 0, 0, 'Jiangshan Shi', 'JIS', 0);
INSERT INTO `ln_region` VALUES (1374, '330901', '市辖区', 130, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1375, '330902', '定海区', 130, 0, 0, 'Dinghai Qu', 'DHQ', 0);
INSERT INTO `ln_region` VALUES (1376, '330903', '普陀区', 130, 0, 0, 'Putuo Qu', 'PTO', 0);
INSERT INTO `ln_region` VALUES (1377, '330921', '岱山县', 130, 0, 0, 'Daishan Xian', 'DSH', 0);
INSERT INTO `ln_region` VALUES (1378, '330922', '嵊泗县', 130, 0, 0, 'Shengsi Xian', 'SSZ', 0);
INSERT INTO `ln_region` VALUES (1379, '331001', '市辖区', 131, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1380, '331002', '椒江区', 131, 0, 0, 'Jiaojiang Qu', 'JJT', 0);
INSERT INTO `ln_region` VALUES (1381, '331003', '黄岩区', 131, 0, 0, 'Huangyan Qu', 'HYT', 0);
INSERT INTO `ln_region` VALUES (1382, '331004', '路桥区', 131, 0, 0, 'Luqiao Qu', 'LQT', 0);
INSERT INTO `ln_region` VALUES (1383, '331021', '玉环县', 131, 0, 0, 'Yuhuan Xian', 'YHN', 0);
INSERT INTO `ln_region` VALUES (1384, '331022', '三门县', 131, 0, 0, 'Sanmen Xian', 'SMN', 0);
INSERT INTO `ln_region` VALUES (1385, '331023', '天台县', 131, 0, 0, 'Tiantai Xian', 'TTA', 0);
INSERT INTO `ln_region` VALUES (1386, '331024', '仙居县', 131, 0, 0, 'Xianju Xian', 'XJU', 0);
INSERT INTO `ln_region` VALUES (1387, '331081', '温岭市', 131, 0, 0, 'Wenling Shi', 'WLS', 0);
INSERT INTO `ln_region` VALUES (1388, '331082', '临海市', 131, 0, 0, 'Linhai Shi', 'LHI', 0);
INSERT INTO `ln_region` VALUES (1389, '331101', '市辖区', 132, 0, 0, '1', '2', 0);
INSERT INTO `ln_region` VALUES (1390, '331102', '莲都区', 132, 0, 0, 'Liandu Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1391, '331121', '青田县', 132, 0, 0, 'Qingtian Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1392, '331122', '缙云县', 132, 0, 0, 'Jinyun Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1393, '331123', '遂昌县', 132, 0, 0, 'Suichang Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1394, '331124', '松阳县', 132, 0, 0, 'Songyang Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1395, '331125', '云和县', 132, 0, 0, 'Yunhe Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1396, '331126', '庆元县', 132, 0, 0, 'Qingyuan Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1397, '331127', '景宁畲族自治县', 132, 0, 0, 'Jingning Shezu Zizhixian', '2', 0);
INSERT INTO `ln_region` VALUES (1398, '331181', '龙泉市', 132, 0, 0, 'Longquan Shi', '2', 0);
INSERT INTO `ln_region` VALUES (1399, '340101', '市辖区', 133, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1400, '340102', '瑶海区', 133, 0, 0, 'Yaohai Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1401, '340103', '庐阳区', 133, 0, 0, 'Luyang Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1402, '340104', '蜀山区', 133, 0, 0, 'Shushan Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1403, '340111', '包河区', 133, 0, 0, 'Baohe Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1404, '340121', '长丰县', 133, 0, 0, 'Changfeng Xian', 'CFG', 0);
INSERT INTO `ln_region` VALUES (1405, '340122', '肥东县', 133, 0, 0, 'Feidong Xian', 'FDO', 0);
INSERT INTO `ln_region` VALUES (1406, '340123', '肥西县', 133, 0, 0, 'Feixi Xian', 'FIX', 0);
INSERT INTO `ln_region` VALUES (1407, '340201', '市辖区', 1412, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1408, '340202', '镜湖区', 1412, 0, 0, 'Jinghu Qu', 'JHW', 0);
INSERT INTO `ln_region` VALUES (1409, '340208', '三山区', 1412, 0, 0, 'Matang Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1410, '340203', '弋江区', 1412, 0, 0, 'Xinwu Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1411, '340207', '鸠江区', 1412, 0, 0, 'Jiujiang Qu', 'JJW', 0);
INSERT INTO `ln_region` VALUES (1412, '340200', '芜湖市', 134, 0, 0, 'Wuhu Shi', 'WHI', 0);
INSERT INTO `ln_region` VALUES (1413, '340222', '繁昌县', 1412, 0, 0, 'Fanchang Xian', 'FCH', 0);
INSERT INTO `ln_region` VALUES (1414, '340223', '南陵县', 1412, 0, 0, 'Nanling Xian', 'NLX', 0);
INSERT INTO `ln_region` VALUES (1415, '340301', '市辖区', 135, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1416, '340302', '龙子湖区', 135, 0, 0, 'Longzihu Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1417, '340303', '蚌山区', 135, 0, 0, 'Bangshan Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1418, '340304', '禹会区', 135, 0, 0, 'Yuhui Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1419, '340311', '淮上区', 135, 0, 0, 'Huaishang Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1420, '340321', '怀远县', 135, 0, 0, 'Huaiyuan Qu', 'HYW', 0);
INSERT INTO `ln_region` VALUES (1421, '340322', '五河县', 135, 0, 0, 'Wuhe Xian', 'WHE', 0);
INSERT INTO `ln_region` VALUES (1422, '340323', '固镇县', 135, 0, 0, 'Guzhen Xian', 'GZX', 0);
INSERT INTO `ln_region` VALUES (1423, '340401', '市辖区', 136, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1424, '340402', '大通区', 136, 0, 0, 'Datong Qu', 'DTQ', 0);
INSERT INTO `ln_region` VALUES (1425, '340403', '田家庵区', 136, 0, 0, 'Tianjia,an Qu', 'TJA', 0);
INSERT INTO `ln_region` VALUES (1426, '340404', '谢家集区', 136, 0, 0, 'Xiejiaji Qu', 'XJJ', 0);
INSERT INTO `ln_region` VALUES (1427, '340405', '八公山区', 136, 0, 0, 'Bagongshan Qu', 'BGS', 0);
INSERT INTO `ln_region` VALUES (1428, '340406', '潘集区', 136, 0, 0, 'Panji Qu', 'PJI', 0);
INSERT INTO `ln_region` VALUES (1429, '340421', '凤台县', 136, 0, 0, 'Fengtai Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1430, '340501', '市辖区', 137, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1431, '340502', '金家庄区', 137, 0, 0, 'Jinjiazhuang Qu', 'JJZ', 0);
INSERT INTO `ln_region` VALUES (1432, '340503', '花山区', 137, 0, 0, 'Huashan Qu', 'HSM', 0);
INSERT INTO `ln_region` VALUES (1433, '340504', '雨山区', 137, 0, 0, 'Yushan Qu', 'YSQ', 0);
INSERT INTO `ln_region` VALUES (1434, '340521', '当涂县', 137, 0, 0, 'Dangtu Xian', 'DTU', 0);
INSERT INTO `ln_region` VALUES (1435, '340601', '市辖区', 138, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1436, '340602', '杜集区', 138, 0, 0, 'Duji Qu', 'DJQ', 0);
INSERT INTO `ln_region` VALUES (1437, '340603', '相山区', 138, 0, 0, 'Xiangshan Qu', 'XSA', 0);
INSERT INTO `ln_region` VALUES (1438, '340604', '烈山区', 138, 0, 0, 'Lieshan Qu', 'LHB', 0);
INSERT INTO `ln_region` VALUES (1439, '340621', '濉溪县', 138, 0, 0, 'Suixi Xian', 'SXW', 0);
INSERT INTO `ln_region` VALUES (1440, '340701', '市辖区', 139, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1441, '340702', '铜官山区', 139, 0, 0, 'Tongguanshan Qu', 'TGQ', 0);
INSERT INTO `ln_region` VALUES (1442, '340703', '狮子山区', 139, 0, 0, 'Shizishan Qu', 'SZN', 0);
INSERT INTO `ln_region` VALUES (1443, '340711', '郊区', 139, 0, 0, 'Jiaoqu', 'JTL', 0);
INSERT INTO `ln_region` VALUES (1444, '340721', '铜陵县', 139, 0, 0, 'Tongling Xian', 'TLX', 0);
INSERT INTO `ln_region` VALUES (1445, '340801', '市辖区', 140, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1446, '340802', '迎江区', 140, 0, 0, 'Yingjiang Qu', 'YJQ', 0);
INSERT INTO `ln_region` VALUES (1447, '340803', '大观区', 140, 0, 0, 'Daguan Qu', 'DGQ', 0);
INSERT INTO `ln_region` VALUES (1448, '340811', '宜秀区', 140, 0, 0, 'Yixiu Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1449, '340822', '怀宁县', 140, 0, 0, 'Huaining Xian', 'HNW', 0);
INSERT INTO `ln_region` VALUES (1450, '340823', '枞阳县', 140, 0, 0, 'Zongyang Xian', 'ZYW', 0);
INSERT INTO `ln_region` VALUES (1451, '340824', '潜山县', 140, 0, 0, 'Qianshan Xian', 'QSW', 0);
INSERT INTO `ln_region` VALUES (1452, '340825', '太湖县', 140, 0, 0, 'Taihu Xian', 'THU', 0);
INSERT INTO `ln_region` VALUES (1453, '340826', '宿松县', 140, 0, 0, 'Susong Xian', 'SUS', 0);
INSERT INTO `ln_region` VALUES (1454, '340827', '望江县', 140, 0, 0, 'Wangjiang Xian', 'WJX', 0);
INSERT INTO `ln_region` VALUES (1455, '340828', '岳西县', 140, 0, 0, 'Yuexi Xian', 'YXW', 0);
INSERT INTO `ln_region` VALUES (1456, '340881', '桐城市', 140, 0, 0, 'Tongcheng Shi', 'TCW', 0);
INSERT INTO `ln_region` VALUES (1457, '341001', '市辖区', 141, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1458, '341002', '屯溪区', 141, 0, 0, 'Tunxi Qu', 'TXN', 0);
INSERT INTO `ln_region` VALUES (1459, '341003', '黄山区', 141, 0, 0, 'Huangshan Qu', 'HSK', 0);
INSERT INTO `ln_region` VALUES (1460, '341004', '徽州区', 141, 0, 0, 'Huizhou Qu', 'HZQ', 0);
INSERT INTO `ln_region` VALUES (1461, '341021', '歙县', 141, 0, 0, 'She Xian', 'SEX', 0);
INSERT INTO `ln_region` VALUES (1462, '341022', '休宁县', 141, 0, 0, 'Xiuning Xian', 'XUN', 0);
INSERT INTO `ln_region` VALUES (1463, '341023', '黟县', 141, 0, 0, 'Yi Xian', 'YIW', 0);
INSERT INTO `ln_region` VALUES (1464, '341024', '祁门县', 141, 0, 0, 'Qimen Xian', 'QMN', 0);
INSERT INTO `ln_region` VALUES (1465, '341101', '市辖区', 142, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1466, '341102', '琅琊区', 142, 0, 0, 'Langya Qu', 'LYU', 0);
INSERT INTO `ln_region` VALUES (1467, '341103', '南谯区', 142, 0, 0, 'Nanqiao Qu', 'NQQ', 0);
INSERT INTO `ln_region` VALUES (1468, '341122', '来安县', 142, 0, 0, 'Lai,an Xian', 'LAX', 0);
INSERT INTO `ln_region` VALUES (1469, '341124', '全椒县', 142, 0, 0, 'Quanjiao Xian', 'QJO', 0);
INSERT INTO `ln_region` VALUES (1470, '341125', '定远县', 142, 0, 0, 'Dingyuan Xian', 'DYW', 0);
INSERT INTO `ln_region` VALUES (1471, '341126', '凤阳县', 142, 0, 0, 'Fengyang Xian', 'FYG', 0);
INSERT INTO `ln_region` VALUES (1472, '341181', '天长市', 142, 0, 0, 'Tianchang Shi', 'TNC', 0);
INSERT INTO `ln_region` VALUES (1473, '341182', '明光市', 142, 0, 0, 'Mingguang Shi', 'MGG', 0);
INSERT INTO `ln_region` VALUES (1474, '341201', '市辖区', 143, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1475, '341202', '颍州区', 143, 0, 0, 'Yingzhou Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1476, '341203', '颍东区', 143, 0, 0, 'Yingdong Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1477, '341204', '颍泉区', 143, 0, 0, 'Yingquan Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1478, '341221', '临泉县', 143, 0, 0, 'Linquan Xian', 'LQN', 0);
INSERT INTO `ln_region` VALUES (1479, '341222', '太和县', 143, 0, 0, 'Taihe Xian', 'TIH', 0);
INSERT INTO `ln_region` VALUES (1480, '341225', '阜南县', 143, 0, 0, 'Funan Xian', 'FNX', 0);
INSERT INTO `ln_region` VALUES (1481, '341226', '颍上县', 143, 0, 0, 'Yingshang Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1482, '341282', '界首市', 143, 0, 0, 'Jieshou Shi', 'JSW', 0);
INSERT INTO `ln_region` VALUES (1483, '341301', '市辖区', 144, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1484, '341302', '埇桥区', 144, 0, 0, 'Yongqiao Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1485, '341321', '砀山县', 144, 0, 0, 'Dangshan Xian', 'DSW', 0);
INSERT INTO `ln_region` VALUES (1486, '341322', '萧县', 144, 0, 0, 'Xiao Xian', 'XIO', 0);
INSERT INTO `ln_region` VALUES (1487, '341323', '灵璧县', 144, 0, 0, 'Lingbi Xian', 'LBI', 0);
INSERT INTO `ln_region` VALUES (1488, '341324', '泗县', 144, 0, 0, 'Si Xian ', 'SIX', 0);
INSERT INTO `ln_region` VALUES (1489, '341401', '市辖区', 145, 0, 0, '1', '2', 0);
INSERT INTO `ln_region` VALUES (1490, '341402', '居巢区', 145, 0, 0, 'Juchao Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1491, '341421', '庐江县', 145, 0, 0, 'Lujiang Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1492, '341422', '无为县', 145, 0, 0, 'Wuwei Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1493, '341423', '含山县', 145, 0, 0, 'Hanshan Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1494, '341424', '和县', 145, 0, 0, 'He Xian ', '2', 0);
INSERT INTO `ln_region` VALUES (1495, '341501', '市辖区', 146, 0, 0, '1', '2', 0);
INSERT INTO `ln_region` VALUES (1496, '341502', '金安区', 146, 0, 0, 'Jinan Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1497, '341503', '裕安区', 146, 0, 0, 'Yuan Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1498, '341521', '寿县', 146, 0, 0, 'Shou Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1499, '341522', '霍邱县', 146, 0, 0, 'Huoqiu Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1500, '341523', '舒城县', 146, 0, 0, 'Shucheng Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1501, '341524', '金寨县', 146, 0, 0, 'Jingzhai Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1502, '341525', '霍山县', 146, 0, 0, 'Huoshan Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1503, '341601', '市辖区', 147, 0, 0, '1', '2', 0);
INSERT INTO `ln_region` VALUES (1504, '341602', '谯城区', 147, 0, 0, 'Qiaocheng Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1505, '341621', '涡阳县', 147, 0, 0, 'Guoyang Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1506, '341622', '蒙城县', 147, 0, 0, 'Mengcheng Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1507, '341623', '利辛县', 147, 0, 0, 'Lixin Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1508, '341701', '市辖区', 148, 0, 0, '1', '2', 0);
INSERT INTO `ln_region` VALUES (1509, '341702', '贵池区', 148, 0, 0, 'Guichi Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1510, '341721', '东至县', 148, 0, 0, 'Dongzhi Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1511, '341722', '石台县', 148, 0, 0, 'Shitai Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1512, '341723', '青阳县', 148, 0, 0, 'Qingyang Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1513, '341801', '市辖区', 149, 0, 0, '1', '2', 0);
INSERT INTO `ln_region` VALUES (1514, '341802', '宣州区', 149, 0, 0, 'Xuanzhou Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1515, '341821', '郎溪县', 149, 0, 0, 'Langxi Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1516, '341822', '广德县', 149, 0, 0, 'Guangde Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1517, '341823', '泾县', 149, 0, 0, 'Jing Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1518, '341824', '绩溪县', 149, 0, 0, 'Jixi Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1519, '341825', '旌德县', 149, 0, 0, 'Jingde Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1520, '341881', '宁国市', 149, 0, 0, 'Ningguo Shi', '2', 0);
INSERT INTO `ln_region` VALUES (1521, '350101', '市辖区', 150, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1522, '350102', '鼓楼区', 150, 0, 0, 'Gulou Qu', 'GLR', 0);
INSERT INTO `ln_region` VALUES (1523, '350103', '台江区', 150, 0, 0, 'Taijiang Qu', 'TJQ', 0);
INSERT INTO `ln_region` VALUES (1524, '350104', '仓山区', 150, 0, 0, 'Cangshan Qu', 'CSQ', 0);
INSERT INTO `ln_region` VALUES (1525, '350105', '马尾区', 150, 0, 0, 'Mawei Qu', 'MWQ', 0);
INSERT INTO `ln_region` VALUES (1526, '350111', '晋安区', 150, 0, 0, 'Jin,an Qu', 'JAF', 0);
INSERT INTO `ln_region` VALUES (1527, '350121', '闽侯县', 150, 0, 0, 'Minhou Qu', 'MHO', 0);
INSERT INTO `ln_region` VALUES (1528, '350122', '连江县', 150, 0, 0, 'Lianjiang Xian', 'LJF', 0);
INSERT INTO `ln_region` VALUES (1529, '350123', '罗源县', 150, 0, 0, 'Luoyuan Xian', 'LOY', 0);
INSERT INTO `ln_region` VALUES (1530, '350124', '闽清县', 150, 0, 0, 'Minqing Xian', 'MQG', 0);
INSERT INTO `ln_region` VALUES (1531, '350125', '永泰县', 150, 0, 0, 'Yongtai Xian', 'YTX', 0);
INSERT INTO `ln_region` VALUES (1532, '350128', '平潭县', 150, 0, 0, 'Pingtan Xian', 'PTN', 0);
INSERT INTO `ln_region` VALUES (1533, '350181', '福清市', 150, 0, 0, 'Fuqing Shi', 'FQS', 0);
INSERT INTO `ln_region` VALUES (1534, '350182', '长乐市', 150, 0, 0, 'Changle Shi', 'CLS', 0);
INSERT INTO `ln_region` VALUES (1535, '350201', '市辖区', 151, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1536, '350203', '思明区', 151, 0, 0, 'Siming Qu', 'SMQ', 0);
INSERT INTO `ln_region` VALUES (1537, '350205', '海沧区', 151, 0, 0, 'Haicang Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1538, '350206', '湖里区', 151, 0, 0, 'Huli Qu', 'HLQ', 0);
INSERT INTO `ln_region` VALUES (1539, '350211', '集美区', 151, 0, 0, 'Jimei Qu', 'JMQ', 0);
INSERT INTO `ln_region` VALUES (1540, '350212', '同安区', 151, 0, 0, 'Tong,an Qu', 'TAQ', 0);
INSERT INTO `ln_region` VALUES (1541, '350213', '翔安区', 151, 0, 0, 'Xiangan Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1542, '350301', '市辖区', 152, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1543, '350302', '城厢区', 152, 0, 0, 'Chengxiang Qu', 'CXP', 0);
INSERT INTO `ln_region` VALUES (1544, '350303', '涵江区', 152, 0, 0, 'Hanjiang Qu', 'HJQ', 0);
INSERT INTO `ln_region` VALUES (1545, '350304', '荔城区', 152, 0, 0, 'Licheng Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1546, '350305', '秀屿区', 152, 0, 0, 'Xiuyu Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1547, '350322', '仙游县', 152, 0, 0, 'Xianyou Xian', 'XYF', 0);
INSERT INTO `ln_region` VALUES (1548, '350401', '市辖区', 153, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1549, '350402', '梅列区', 153, 0, 0, 'Meilie Qu', 'MLQ', 0);
INSERT INTO `ln_region` VALUES (1550, '350403', '三元区', 153, 0, 0, 'Sanyuan Qu', 'SYB', 0);
INSERT INTO `ln_region` VALUES (1551, '350421', '明溪县', 153, 0, 0, 'Mingxi Xian', 'MXI', 0);
INSERT INTO `ln_region` VALUES (1552, '350423', '清流县', 153, 0, 0, 'Qingliu Xian', 'QLX', 0);
INSERT INTO `ln_region` VALUES (1553, '350424', '宁化县', 153, 0, 0, 'Ninghua Xian', 'NGH', 0);
INSERT INTO `ln_region` VALUES (1554, '350425', '大田县', 153, 0, 0, 'Datian Xian', 'DTM', 0);
INSERT INTO `ln_region` VALUES (1555, '350426', '尤溪县', 153, 0, 0, 'Youxi Xian', 'YXF', 0);
INSERT INTO `ln_region` VALUES (1556, '350427', '沙县', 153, 0, 0, 'Sha Xian', 'SAX', 0);
INSERT INTO `ln_region` VALUES (1557, '350428', '将乐县', 153, 0, 0, 'Jiangle Xian', 'JLE', 0);
INSERT INTO `ln_region` VALUES (1558, '350429', '泰宁县', 153, 0, 0, 'Taining Xian', 'TNG', 0);
INSERT INTO `ln_region` VALUES (1559, '350430', '建宁县', 153, 0, 0, 'Jianning Xian', 'JNF', 0);
INSERT INTO `ln_region` VALUES (1560, '350481', '永安市', 153, 0, 0, 'Yong,an Shi', 'YAF', 0);
INSERT INTO `ln_region` VALUES (1561, '350501', '市辖区', 154, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1562, '350502', '鲤城区', 154, 0, 0, 'Licheng Qu', 'LCQ', 0);
INSERT INTO `ln_region` VALUES (1563, '350503', '丰泽区', 154, 0, 0, 'Fengze Qu', 'FZE', 0);
INSERT INTO `ln_region` VALUES (1564, '350504', '洛江区', 154, 0, 0, 'Luojiang Qu', 'LJQ', 0);
INSERT INTO `ln_region` VALUES (1565, '350505', '泉港区', 154, 0, 0, 'Quangang Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1566, '350521', '惠安县', 154, 0, 0, 'Hui,an Xian', 'HAF', 0);
INSERT INTO `ln_region` VALUES (1567, '350524', '安溪县', 154, 0, 0, 'Anxi Xian', 'ANX', 0);
INSERT INTO `ln_region` VALUES (1568, '350525', '永春县', 154, 0, 0, 'Yongchun Xian', 'YCM', 0);
INSERT INTO `ln_region` VALUES (1569, '350526', '德化县', 154, 0, 0, 'Dehua Xian', 'DHA', 0);
INSERT INTO `ln_region` VALUES (1570, '350527', '金门县', 154, 0, 0, 'Jinmen Xian', 'JME', 0);
INSERT INTO `ln_region` VALUES (1571, '350581', '石狮市', 154, 0, 0, 'Shishi Shi', 'SHH', 0);
INSERT INTO `ln_region` VALUES (1572, '350582', '晋江市', 154, 0, 0, 'Jinjiang Shi', 'JJG', 0);
INSERT INTO `ln_region` VALUES (1573, '350583', '南安市', 154, 0, 0, 'Nan,an Shi', 'NAS', 0);
INSERT INTO `ln_region` VALUES (1574, '350601', '市辖区', 155, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1575, '350602', '芗城区', 155, 0, 0, 'Xiangcheng Qu', 'XZZ', 0);
INSERT INTO `ln_region` VALUES (1576, '350603', '龙文区', 155, 0, 0, 'Longwen Qu', 'LWZ', 0);
INSERT INTO `ln_region` VALUES (1577, '350622', '云霄县', 155, 0, 0, 'Yunxiao Xian', 'YXO', 0);
INSERT INTO `ln_region` VALUES (1578, '350623', '漳浦县', 155, 0, 0, 'Zhangpu Xian', 'ZPU', 0);
INSERT INTO `ln_region` VALUES (1579, '350624', '诏安县', 155, 0, 0, 'Zhao,an Xian', 'ZAF', 0);
INSERT INTO `ln_region` VALUES (1580, '350625', '长泰县', 155, 0, 0, 'Changtai Xian', 'CTA', 0);
INSERT INTO `ln_region` VALUES (1581, '350626', '东山县', 155, 0, 0, 'Dongshan Xian', 'DSN', 0);
INSERT INTO `ln_region` VALUES (1582, '350627', '南靖县', 155, 0, 0, 'Nanjing Xian', 'NJX', 0);
INSERT INTO `ln_region` VALUES (1583, '350628', '平和县', 155, 0, 0, 'Pinghe Xian', 'PHE', 0);
INSERT INTO `ln_region` VALUES (1584, '350629', '华安县', 155, 0, 0, 'Hua,an Xian', 'HAN', 0);
INSERT INTO `ln_region` VALUES (1585, '350681', '龙海市', 155, 0, 0, 'Longhai Shi', 'LHM', 0);
INSERT INTO `ln_region` VALUES (1586, '350701', '市辖区', 156, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1587, '350702', '延平区', 156, 0, 0, 'Yanping Qu', 'YPQ', 0);
INSERT INTO `ln_region` VALUES (1588, '350721', '顺昌县', 156, 0, 0, 'Shunchang Xian', 'SCG', 0);
INSERT INTO `ln_region` VALUES (1589, '350722', '浦城县', 156, 0, 0, 'Pucheng Xian', 'PCX', 0);
INSERT INTO `ln_region` VALUES (1590, '350723', '光泽县', 156, 0, 0, 'Guangze Xian', 'GZE', 0);
INSERT INTO `ln_region` VALUES (1591, '350724', '松溪县', 156, 0, 0, 'Songxi Xian', 'SOX', 0);
INSERT INTO `ln_region` VALUES (1592, '350725', '政和县', 156, 0, 0, 'Zhenghe Xian', 'ZGH', 0);
INSERT INTO `ln_region` VALUES (1593, '350781', '邵武市', 156, 0, 0, 'Shaowu Shi', 'SWU', 0);
INSERT INTO `ln_region` VALUES (1594, '350782', '武夷山市', 156, 0, 0, 'Wuyishan Shi', 'WUS', 0);
INSERT INTO `ln_region` VALUES (1595, '350783', '建瓯市', 156, 0, 0, 'Jian,ou Shi', 'JOU', 0);
INSERT INTO `ln_region` VALUES (1596, '350784', '建阳市', 156, 0, 0, 'Jianyang Shi', 'JNY', 0);
INSERT INTO `ln_region` VALUES (1597, '350801', '市辖区', 157, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1598, '350802', '新罗区', 157, 0, 0, 'Xinluo Qu', 'XNL', 0);
INSERT INTO `ln_region` VALUES (1599, '350821', '长汀县', 157, 0, 0, 'Changting Xian', 'CTG', 0);
INSERT INTO `ln_region` VALUES (1600, '350822', '永定县', 157, 0, 0, 'Yongding Xian', 'YDI', 0);
INSERT INTO `ln_region` VALUES (1601, '350823', '上杭县', 157, 0, 0, 'Shanghang Xian', 'SHF', 0);
INSERT INTO `ln_region` VALUES (1602, '350824', '武平县', 157, 0, 0, 'Wuping Xian', 'WPG', 0);
INSERT INTO `ln_region` VALUES (1603, '350825', '连城县', 157, 0, 0, 'Liancheng Xian', 'LCF', 0);
INSERT INTO `ln_region` VALUES (1604, '350881', '漳平市', 157, 0, 0, 'Zhangping Xian', 'ZGP', 0);
INSERT INTO `ln_region` VALUES (1605, '350901', '市辖区', 158, 0, 0, '1', '2', 0);
INSERT INTO `ln_region` VALUES (1606, '350902', '蕉城区', 158, 0, 0, 'Jiaocheng Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1607, '350921', '霞浦县', 158, 0, 0, 'Xiapu Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1608, '350922', '古田县', 158, 0, 0, 'Gutian Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1609, '350923', '屏南县', 158, 0, 0, 'Pingnan Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1610, '350924', '寿宁县', 158, 0, 0, 'Shouning Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1611, '350925', '周宁县', 158, 0, 0, 'Zhouning Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1612, '350926', '柘荣县', 158, 0, 0, 'Zherong Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1613, '350981', '福安市', 158, 0, 0, 'Fu,an Shi', '2', 0);
INSERT INTO `ln_region` VALUES (1614, '350982', '福鼎市', 158, 0, 0, 'Fuding Shi', '2', 0);
INSERT INTO `ln_region` VALUES (1615, '360101', '市辖区', 159, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1616, '360102', '东湖区', 159, 0, 0, 'Donghu Qu', 'DHU', 0);
INSERT INTO `ln_region` VALUES (1617, '360103', '西湖区', 159, 0, 0, 'Xihu Qu ', 'XHQ', 0);
INSERT INTO `ln_region` VALUES (1618, '360104', '青云谱区', 159, 0, 0, 'Qingyunpu Qu', 'QYP', 0);
INSERT INTO `ln_region` VALUES (1619, '360105', '湾里区', 159, 0, 0, 'Wanli Qu', 'WLI', 0);
INSERT INTO `ln_region` VALUES (1620, '360111', '青山湖区', 159, 0, 0, 'Qingshanhu Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1621, '360121', '南昌县', 159, 0, 0, 'Nanchang Xian', 'NCA', 0);
INSERT INTO `ln_region` VALUES (1622, '360122', '新建县', 159, 0, 0, 'Xinjian Xian', 'XJN', 0);
INSERT INTO `ln_region` VALUES (1623, '360123', '安义县', 159, 0, 0, 'Anyi Xian', 'AYI', 0);
INSERT INTO `ln_region` VALUES (1624, '360124', '进贤县', 159, 0, 0, 'Jinxian Xian', 'JXX', 0);
INSERT INTO `ln_region` VALUES (1625, '360201', '市辖区', 160, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1626, '360202', '昌江区', 160, 0, 0, 'Changjiang Qu', 'CJG', 0);
INSERT INTO `ln_region` VALUES (1627, '360203', '珠山区', 160, 0, 0, 'Zhushan Qu', 'ZSJ', 0);
INSERT INTO `ln_region` VALUES (1628, '360222', '浮梁县', 160, 0, 0, 'Fuliang Xian', 'FLX', 0);
INSERT INTO `ln_region` VALUES (1629, '360281', '乐平市', 160, 0, 0, 'Leping Shi', 'LEP', 0);
INSERT INTO `ln_region` VALUES (1630, '360301', '市辖区', 161, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1631, '360302', '安源区', 161, 0, 0, 'Anyuan Qu', 'AYQ', 0);
INSERT INTO `ln_region` VALUES (1632, '360313', '湘东区', 161, 0, 0, 'Xiangdong Qu', 'XDG', 0);
INSERT INTO `ln_region` VALUES (1633, '360321', '莲花县', 161, 0, 0, 'Lianhua Xian', 'LHG', 0);
INSERT INTO `ln_region` VALUES (1634, '360322', '上栗县', 161, 0, 0, 'Shangli Xian', 'SLI', 0);
INSERT INTO `ln_region` VALUES (1635, '360323', '芦溪县', 161, 0, 0, 'Lixi Xian', 'LXP', 0);
INSERT INTO `ln_region` VALUES (1636, '360401', '市辖区', 162, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1637, '360402', '庐山区', 162, 0, 0, 'Lushan Qu', 'LSV', 0);
INSERT INTO `ln_region` VALUES (1638, '360403', '浔阳区', 162, 0, 0, 'Xunyang Qu', 'XYC', 0);
INSERT INTO `ln_region` VALUES (1639, '360421', '九江县', 162, 0, 0, 'Jiujiang Xian', 'JUJ', 0);
INSERT INTO `ln_region` VALUES (1640, '360423', '武宁县', 162, 0, 0, 'Wuning Xian', 'WUN', 0);
INSERT INTO `ln_region` VALUES (1641, '360424', '修水县', 162, 0, 0, 'Xiushui Xian', 'XSG', 0);
INSERT INTO `ln_region` VALUES (1642, '360425', '永修县', 162, 0, 0, 'Yongxiu Xian', 'YOX', 0);
INSERT INTO `ln_region` VALUES (1643, '360426', '德安县', 162, 0, 0, 'De,an Xian', 'DEA', 0);
INSERT INTO `ln_region` VALUES (1644, '360427', '星子县', 162, 0, 0, 'Xingzi Xian', 'XZI', 0);
INSERT INTO `ln_region` VALUES (1645, '360428', '都昌县', 162, 0, 0, 'Duchang Xian', 'DUC', 0);
INSERT INTO `ln_region` VALUES (1646, '360429', '湖口县', 162, 0, 0, 'Hukou Xian', 'HUK', 0);
INSERT INTO `ln_region` VALUES (1647, '360430', '彭泽县', 162, 0, 0, 'Pengze Xian', 'PZE', 0);
INSERT INTO `ln_region` VALUES (1648, '360481', '瑞昌市', 162, 0, 0, 'Ruichang Shi', 'RCG', 0);
INSERT INTO `ln_region` VALUES (1649, '360501', '市辖区', 163, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1650, '360502', '渝水区', 163, 0, 0, 'Yushui Qu', 'YSR', 0);
INSERT INTO `ln_region` VALUES (1651, '360521', '分宜县', 163, 0, 0, 'Fenyi Xian', 'FYI', 0);
INSERT INTO `ln_region` VALUES (1652, '360601', '市辖区', 164, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1653, '360602', '月湖区', 164, 0, 0, 'Yuehu Qu', 'YHY', 0);
INSERT INTO `ln_region` VALUES (1654, '360622', '余江县', 164, 0, 0, 'Yujiang Xian', 'YUJ', 0);
INSERT INTO `ln_region` VALUES (1655, '360681', '贵溪市', 164, 0, 0, 'Guixi Shi', 'GXS', 0);
INSERT INTO `ln_region` VALUES (1656, '360701', '市辖区', 165, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1657, '360702', '章贡区', 165, 0, 0, 'Zhanggong Qu', 'ZGG', 0);
INSERT INTO `ln_region` VALUES (1658, '360721', '赣县', 165, 0, 0, 'Gan Xian', 'GXN', 0);
INSERT INTO `ln_region` VALUES (1659, '360722', '信丰县', 165, 0, 0, 'Xinfeng Xian ', 'XNF', 0);
INSERT INTO `ln_region` VALUES (1660, '360723', '大余县', 165, 0, 0, 'Dayu Xian', 'DYX', 0);
INSERT INTO `ln_region` VALUES (1661, '360724', '上犹县', 165, 0, 0, 'Shangyou Xian', 'SYO', 0);
INSERT INTO `ln_region` VALUES (1662, '360725', '崇义县', 165, 0, 0, 'Chongyi Xian', 'CYX', 0);
INSERT INTO `ln_region` VALUES (1663, '360726', '安远县', 165, 0, 0, 'Anyuan Xian', 'AYN', 0);
INSERT INTO `ln_region` VALUES (1664, '360727', '龙南县', 165, 0, 0, 'Longnan Xian', 'LNX', 0);
INSERT INTO `ln_region` VALUES (1665, '360728', '定南县', 165, 0, 0, 'Dingnan Xian', 'DNN', 0);
INSERT INTO `ln_region` VALUES (1666, '360729', '全南县', 165, 0, 0, 'Quannan Xian', 'QNN', 0);
INSERT INTO `ln_region` VALUES (1667, '360730', '宁都县', 165, 0, 0, 'Ningdu Xian', 'NDU', 0);
INSERT INTO `ln_region` VALUES (1668, '360731', '于都县', 165, 0, 0, 'Yudu Xian', 'YUD', 0);
INSERT INTO `ln_region` VALUES (1669, '360732', '兴国县', 165, 0, 0, 'Xingguo Xian', 'XGG', 0);
INSERT INTO `ln_region` VALUES (1670, '360733', '会昌县', 165, 0, 0, 'Huichang Xian', 'HIC', 0);
INSERT INTO `ln_region` VALUES (1671, '360734', '寻乌县', 165, 0, 0, 'Xunwu Xian', 'XNW', 0);
INSERT INTO `ln_region` VALUES (1672, '360735', '石城县', 165, 0, 0, 'Shicheng Xian', 'SIC', 0);
INSERT INTO `ln_region` VALUES (1673, '360781', '瑞金市', 165, 0, 0, 'Ruijin Shi', 'RJS', 0);
INSERT INTO `ln_region` VALUES (1674, '360782', '南康市', 165, 0, 0, 'Nankang Shi', 'NNK', 0);
INSERT INTO `ln_region` VALUES (1675, '360801', '市辖区', 166, 0, 0, '1', '2', 0);
INSERT INTO `ln_region` VALUES (1676, '360802', '吉州区', 166, 0, 0, 'Jizhou Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1677, '360803', '青原区', 166, 0, 0, 'Qingyuan Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1678, '360821', '吉安县', 166, 0, 0, 'Ji,an Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1679, '360822', '吉水县', 166, 0, 0, 'Jishui Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1680, '360823', '峡江县', 166, 0, 0, 'Xiajiang Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1681, '360824', '新干县', 166, 0, 0, 'Xingan Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1682, '360825', '永丰县', 166, 0, 0, 'Yongfeng Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1683, '360826', '泰和县', 166, 0, 0, 'Taihe Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1684, '360827', '遂川县', 166, 0, 0, 'Suichuan Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1685, '360828', '万安县', 166, 0, 0, 'Wan,an Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1686, '360829', '安福县', 166, 0, 0, 'Anfu Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1687, '360830', '永新县', 166, 0, 0, 'Yongxin Xian ', '2', 0);
INSERT INTO `ln_region` VALUES (1688, '360881', '井冈山市', 166, 0, 0, 'Jinggangshan Shi', '2', 0);
INSERT INTO `ln_region` VALUES (1689, '360901', '市辖区', 167, 0, 0, '1', '2', 0);
INSERT INTO `ln_region` VALUES (1690, '360902', '袁州区', 167, 0, 0, 'Yuanzhou Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1691, '360921', '奉新县', 167, 0, 0, 'Fengxin Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1692, '360922', '万载县', 167, 0, 0, 'Wanzai Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1693, '360923', '上高县', 167, 0, 0, 'Shanggao Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1694, '360924', '宜丰县', 167, 0, 0, 'Yifeng Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1695, '360925', '靖安县', 167, 0, 0, 'Jing,an Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1696, '360926', '铜鼓县', 167, 0, 0, 'Tonggu Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1697, '360981', '丰城市', 167, 0, 0, 'Fengcheng Shi', '2', 0);
INSERT INTO `ln_region` VALUES (1698, '360982', '樟树市', 167, 0, 0, 'Zhangshu Shi', '2', 0);
INSERT INTO `ln_region` VALUES (1699, '360983', '高安市', 167, 0, 0, 'Gao,an Shi', '2', 0);
INSERT INTO `ln_region` VALUES (1700, '361001', '市辖区', 168, 0, 0, '1', '2', 0);
INSERT INTO `ln_region` VALUES (1701, '361002', '临川区', 168, 0, 0, 'Linchuan Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1702, '361021', '南城县', 168, 0, 0, 'Nancheng Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1703, '361022', '黎川县', 168, 0, 0, 'Lichuan Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1704, '361023', '南丰县', 168, 0, 0, 'Nanfeng Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1705, '361024', '崇仁县', 168, 0, 0, 'Chongren Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1706, '361025', '乐安县', 168, 0, 0, 'Le,an Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1707, '361026', '宜黄县', 168, 0, 0, 'Yihuang Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1708, '361027', '金溪县', 168, 0, 0, 'Jinxi Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1709, '361028', '资溪县', 168, 0, 0, 'Zixi Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1710, '361029', '东乡县', 168, 0, 0, 'Dongxiang Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1711, '361030', '广昌县', 168, 0, 0, 'Guangchang Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1712, '361101', '市辖区', 169, 0, 0, '1', '2', 0);
INSERT INTO `ln_region` VALUES (1713, '361102', '信州区', 169, 0, 0, 'Xinzhou Qu', 'XZQ', 0);
INSERT INTO `ln_region` VALUES (1714, '361121', '上饶县', 169, 0, 0, 'Shangrao Xian ', '2', 0);
INSERT INTO `ln_region` VALUES (1715, '361122', '广丰县', 169, 0, 0, 'Guangfeng Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1716, '361123', '玉山县', 169, 0, 0, 'Yushan Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1717, '361124', '铅山县', 169, 0, 0, 'Qianshan Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1718, '361125', '横峰县', 169, 0, 0, 'Hengfeng Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1719, '361126', '弋阳县', 169, 0, 0, 'Yiyang Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1720, '361127', '余干县', 169, 0, 0, 'Yugan Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1721, '361128', '鄱阳县', 169, 0, 0, 'Poyang Xian', 'PYX', 0);
INSERT INTO `ln_region` VALUES (1722, '361129', '万年县', 169, 0, 0, 'Wannian Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1723, '361130', '婺源县', 169, 0, 0, 'Wuyuan Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1724, '361181', '德兴市', 169, 0, 0, 'Dexing Shi', '2', 0);
INSERT INTO `ln_region` VALUES (1725, '370101', '市辖区', 170, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1726, '370102', '历下区', 170, 0, 0, 'Lixia Qu', 'LXQ', 0);
INSERT INTO `ln_region` VALUES (1727, '370101', '市中区', 170, 0, 0, 'Shizhong Qu', 'SZQ', 0);
INSERT INTO `ln_region` VALUES (1728, '370104', '槐荫区', 170, 0, 0, 'Huaiyin Qu', 'HYF', 0);
INSERT INTO `ln_region` VALUES (1729, '370105', '天桥区', 170, 0, 0, 'Tianqiao Qu', 'TQQ', 0);
INSERT INTO `ln_region` VALUES (1730, '370112', '历城区', 170, 0, 0, 'Licheng Qu', 'LCZ', 0);
INSERT INTO `ln_region` VALUES (1731, '370113', '长清区', 170, 0, 0, 'Changqing Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1732, '370124', '平阴县', 170, 0, 0, 'Pingyin Xian', 'PYL', 0);
INSERT INTO `ln_region` VALUES (1733, '370125', '济阳县', 170, 0, 0, 'Jiyang Xian', 'JYL', 0);
INSERT INTO `ln_region` VALUES (1734, '370126', '商河县', 170, 0, 0, 'Shanghe Xian', 'SGH', 0);
INSERT INTO `ln_region` VALUES (1735, '370181', '章丘市', 170, 0, 0, 'Zhangqiu Shi', 'ZQS', 0);
INSERT INTO `ln_region` VALUES (1736, '370201', '市辖区', 171, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1737, '370202', '市南区', 171, 0, 0, 'Shinan Qu', 'SNQ', 0);
INSERT INTO `ln_region` VALUES (1738, '370203', '市北区', 171, 0, 0, 'Shibei Qu', 'SBQ', 0);
INSERT INTO `ln_region` VALUES (1739, '370205', '四方区', 171, 0, 0, 'Sifang Qu', 'SFQ', 0);
INSERT INTO `ln_region` VALUES (1740, '370211', '黄岛区', 171, 0, 0, 'Huangdao Qu', 'HDO', 0);
INSERT INTO `ln_region` VALUES (1741, '370212', '崂山区', 171, 0, 0, 'Laoshan Qu', 'LQD', 0);
INSERT INTO `ln_region` VALUES (1742, '370213', '李沧区', 171, 0, 0, 'Licang Qu', 'LCT', 0);
INSERT INTO `ln_region` VALUES (1743, '370214', '城阳区', 171, 0, 0, 'Chengyang Qu', 'CEY', 0);
INSERT INTO `ln_region` VALUES (1744, '370281', '胶州市', 171, 0, 0, 'Jiaozhou Shi', 'JZS', 0);
INSERT INTO `ln_region` VALUES (1745, '370282', '即墨市', 171, 0, 0, 'Jimo Shi', 'JMO', 0);
INSERT INTO `ln_region` VALUES (1746, '370283', '平度市', 171, 0, 0, 'Pingdu Shi', 'PDU', 0);
INSERT INTO `ln_region` VALUES (1747, '370284', '胶南市', 171, 0, 0, 'Jiaonan Shi', 'JNS', 0);
INSERT INTO `ln_region` VALUES (1748, '370285', '莱西市', 171, 0, 0, 'Laixi Shi', 'LXE', 0);
INSERT INTO `ln_region` VALUES (1749, '370301', '市辖区', 172, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1750, '370302', '淄川区', 172, 0, 0, 'Zichuan Qu', 'ZCQ', 0);
INSERT INTO `ln_region` VALUES (1751, '370303', '张店区', 172, 0, 0, 'Zhangdian Qu', 'ZDQ', 0);
INSERT INTO `ln_region` VALUES (1752, '370304', '博山区', 172, 0, 0, 'Boshan Qu', 'BSZ', 0);
INSERT INTO `ln_region` VALUES (1753, '370305', '临淄区', 172, 0, 0, 'Linzi Qu', 'LZQ', 0);
INSERT INTO `ln_region` VALUES (1754, '370306', '周村区', 172, 0, 0, 'Zhoucun Qu', 'ZCN', 0);
INSERT INTO `ln_region` VALUES (1755, '370321', '桓台县', 172, 0, 0, 'Huantai Xian', 'HTL', 0);
INSERT INTO `ln_region` VALUES (1756, '370322', '高青县', 172, 0, 0, 'Gaoqing Xian', 'GQG', 0);
INSERT INTO `ln_region` VALUES (1757, '370323', '沂源县', 172, 0, 0, 'Yiyuan Xian', 'YIY', 0);
INSERT INTO `ln_region` VALUES (1758, '370401', '市辖区', 173, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1759, '370402', '市中区', 173, 0, 0, 'Shizhong Qu', 'SZZ', 0);
INSERT INTO `ln_region` VALUES (1760, '370403', '薛城区', 173, 0, 0, 'Xuecheng Qu', 'XEC', 0);
INSERT INTO `ln_region` VALUES (1761, '370404', '峄城区', 173, 0, 0, 'Yicheng Qu', 'YZZ', 0);
INSERT INTO `ln_region` VALUES (1762, '370405', '台儿庄区', 173, 0, 0, 'Tai,erzhuang Qu', 'TEZ', 0);
INSERT INTO `ln_region` VALUES (1763, '370406', '山亭区', 173, 0, 0, 'Shanting Qu', 'STG', 0);
INSERT INTO `ln_region` VALUES (1764, '370481', '滕州市', 173, 0, 0, 'Tengzhou Shi', 'TZO', 0);
INSERT INTO `ln_region` VALUES (1765, '370501', '市辖区', 174, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1766, '370502', '东营区', 174, 0, 0, 'Dongying Qu', 'DYQ', 0);
INSERT INTO `ln_region` VALUES (1767, '370503', '河口区', 174, 0, 0, 'Hekou Qu', 'HKO', 0);
INSERT INTO `ln_region` VALUES (1768, '370521', '垦利县', 174, 0, 0, 'Kenli Xian', 'KLI', 0);
INSERT INTO `ln_region` VALUES (1769, '370522', '利津县', 174, 0, 0, 'Lijin Xian', 'LJN', 0);
INSERT INTO `ln_region` VALUES (1770, '370523', '广饶县', 174, 0, 0, 'Guangrao Xian ', 'GRO', 0);
INSERT INTO `ln_region` VALUES (1771, '370601', '市辖区', 175, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1772, '370602', '芝罘区', 175, 0, 0, 'Zhifu Qu', 'ZFQ', 0);
INSERT INTO `ln_region` VALUES (1773, '370611', '福山区', 175, 0, 0, 'Fushan Qu', 'FUS', 0);
INSERT INTO `ln_region` VALUES (1774, '370612', '牟平区', 175, 0, 0, 'Muping Qu', 'MPQ', 0);
INSERT INTO `ln_region` VALUES (1775, '370613', '莱山区', 175, 0, 0, 'Laishan Qu', 'LYT', 0);
INSERT INTO `ln_region` VALUES (1776, '370634', '长岛县', 175, 0, 0, 'Changdao Xian', 'CDO', 0);
INSERT INTO `ln_region` VALUES (1777, '370681', '龙口市', 175, 0, 0, 'Longkou Shi', 'LKU', 0);
INSERT INTO `ln_region` VALUES (1778, '370682', '莱阳市', 175, 0, 0, 'Laiyang Shi', 'LYD', 0);
INSERT INTO `ln_region` VALUES (1779, '370683', '莱州市', 175, 0, 0, 'Laizhou Shi', 'LZG', 0);
INSERT INTO `ln_region` VALUES (1780, '370684', '蓬莱市', 175, 0, 0, 'Penglai Shi', 'PLI', 0);
INSERT INTO `ln_region` VALUES (1781, '370685', '招远市', 175, 0, 0, 'Zhaoyuan Shi', 'ZYL', 0);
INSERT INTO `ln_region` VALUES (1782, '370686', '栖霞市', 175, 0, 0, 'Qixia Shi', 'QXS', 0);
INSERT INTO `ln_region` VALUES (1783, '370687', '海阳市', 175, 0, 0, 'Haiyang Shi', 'HYL', 0);
INSERT INTO `ln_region` VALUES (1784, '370701', '市辖区', 176, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1785, '370702', '潍城区', 176, 0, 0, 'Weicheng Qu', 'WCG', 0);
INSERT INTO `ln_region` VALUES (1786, '370703', '寒亭区', 176, 0, 0, 'Hanting Qu', 'HNT', 0);
INSERT INTO `ln_region` VALUES (1787, '370704', '坊子区', 176, 0, 0, 'Fangzi Qu', 'FZQ', 0);
INSERT INTO `ln_region` VALUES (1788, '370705', '奎文区', 176, 0, 0, 'Kuiwen Qu', 'KWN', 0);
INSERT INTO `ln_region` VALUES (1789, '370724', '临朐县', 176, 0, 0, 'Linqu Xian', 'LNQ', 0);
INSERT INTO `ln_region` VALUES (1790, '370725', '昌乐县', 176, 0, 0, 'Changle Xian', 'CLX', 0);
INSERT INTO `ln_region` VALUES (1791, '370781', '青州市', 176, 0, 0, 'Qingzhou Shi', 'QGZ', 0);
INSERT INTO `ln_region` VALUES (1792, '370782', '诸城市', 176, 0, 0, 'Zhucheng Shi', 'ZCL', 0);
INSERT INTO `ln_region` VALUES (1793, '370783', '寿光市', 176, 0, 0, 'Shouguang Shi', 'SGG', 0);
INSERT INTO `ln_region` VALUES (1794, '370784', '安丘市', 176, 0, 0, 'Anqiu Shi', 'AQU', 0);
INSERT INTO `ln_region` VALUES (1795, '370785', '高密市', 176, 0, 0, 'Gaomi Shi', 'GMI', 0);
INSERT INTO `ln_region` VALUES (1796, '370786', '昌邑市', 176, 0, 0, 'Changyi Shi', 'CYL', 0);
INSERT INTO `ln_region` VALUES (1797, '370801', '市辖区', 177, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1798, '370802', '市中区', 177, 0, 0, 'Shizhong Qu', 'SZU', 0);
INSERT INTO `ln_region` VALUES (1799, '370811', '任城区', 177, 0, 0, 'Rencheng Qu', 'RCQ', 0);
INSERT INTO `ln_region` VALUES (1800, '370826', '微山县', 177, 0, 0, 'Weishan Xian', 'WSA', 0);
INSERT INTO `ln_region` VALUES (1801, '370827', '鱼台县', 177, 0, 0, 'Yutai Xian', 'YTL', 0);
INSERT INTO `ln_region` VALUES (1802, '370828', '金乡县', 177, 0, 0, 'Jinxiang Xian', 'JXG', 0);
INSERT INTO `ln_region` VALUES (1803, '370829', '嘉祥县', 177, 0, 0, 'Jiaxiang Xian', 'JXP', 0);
INSERT INTO `ln_region` VALUES (1804, '370830', '汶上县', 177, 0, 0, 'Wenshang Xian', 'WNS', 0);
INSERT INTO `ln_region` VALUES (1805, '370831', '泗水县', 177, 0, 0, 'Sishui Xian', 'SSH', 0);
INSERT INTO `ln_region` VALUES (1806, '370832', '梁山县', 177, 0, 0, 'Liangshan Xian', 'LSN', 0);
INSERT INTO `ln_region` VALUES (1807, '370881', '曲阜市', 177, 0, 0, 'Qufu Shi', 'QFU', 0);
INSERT INTO `ln_region` VALUES (1808, '370882', '兖州市', 177, 0, 0, 'Yanzhou Shi', 'YZL', 0);
INSERT INTO `ln_region` VALUES (1809, '370883', '邹城市', 177, 0, 0, 'Zoucheng Shi', 'ZCG', 0);
INSERT INTO `ln_region` VALUES (1810, '370901', '市辖区', 178, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1811, '370902', '泰山区', 178, 0, 0, 'Taishan Qu', 'TSQ', 0);
INSERT INTO `ln_region` VALUES (1812, '370911', '岱岳区', 178, 0, 0, 'Daiyue Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1813, '370921', '宁阳县', 178, 0, 0, 'Ningyang Xian', 'NGY', 0);
INSERT INTO `ln_region` VALUES (1814, '370923', '东平县', 178, 0, 0, 'Dongping Xian', 'DPG', 0);
INSERT INTO `ln_region` VALUES (1815, '370982', '新泰市', 178, 0, 0, 'Xintai Shi', 'XTA', 0);
INSERT INTO `ln_region` VALUES (1816, '370983', '肥城市', 178, 0, 0, 'Feicheng Shi', 'FEC', 0);
INSERT INTO `ln_region` VALUES (1817, '371001', '市辖区', 179, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1818, '371002', '环翠区', 179, 0, 0, 'Huancui Qu', 'HNC', 0);
INSERT INTO `ln_region` VALUES (1819, '371081', '文登市', 179, 0, 0, 'Wendeng Shi', 'WDS', 0);
INSERT INTO `ln_region` VALUES (1820, '371082', '荣成市', 179, 0, 0, 'Rongcheng Shi', '2', 0);
INSERT INTO `ln_region` VALUES (1821, '371083', '乳山市', 179, 0, 0, 'Rushan Shi', 'RSN', 0);
INSERT INTO `ln_region` VALUES (1822, '371101', '市辖区', 180, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1823, '371102', '东港区', 180, 0, 0, 'Donggang Qu', 'DGR', 0);
INSERT INTO `ln_region` VALUES (1824, '371103', '岚山区', 180, 0, 0, 'Lanshan Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1825, '371121', '五莲县', 180, 0, 0, 'Wulian Xian', 'WLN', 0);
INSERT INTO `ln_region` VALUES (1826, '371122', '莒县', 180, 0, 0, 'Ju Xian', 'JUX', 0);
INSERT INTO `ln_region` VALUES (1827, '371201', '市辖区', 181, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1828, '371202', '莱城区', 181, 0, 0, 'Laicheng Qu', 'LAC', 0);
INSERT INTO `ln_region` VALUES (1829, '371203', '钢城区', 181, 0, 0, 'Gangcheng Qu', 'GCQ', 0);
INSERT INTO `ln_region` VALUES (1830, '371301', '市辖区', 182, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1831, '371302', '兰山区', 182, 0, 0, 'Lanshan Qu', 'LLS', 0);
INSERT INTO `ln_region` VALUES (1832, '371311', '罗庄区', 182, 0, 0, 'Luozhuang Qu', 'LZU', 0);
INSERT INTO `ln_region` VALUES (1833, '371301', '河东区', 182, 0, 0, 'Hedong Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1834, '371321', '沂南县', 182, 0, 0, 'Yinan Xian', 'YNN', 0);
INSERT INTO `ln_region` VALUES (1835, '371322', '郯城县', 182, 0, 0, 'Tancheng Xian', 'TCE', 0);
INSERT INTO `ln_region` VALUES (1836, '371323', '沂水县', 182, 0, 0, 'Yishui Xian', 'YIS', 0);
INSERT INTO `ln_region` VALUES (1837, '371324', '苍山县', 182, 0, 0, 'Cangshan Xian', 'CSH', 0);
INSERT INTO `ln_region` VALUES (1838, '371325', '费县', 182, 0, 0, 'Fei Xian', 'FEI', 0);
INSERT INTO `ln_region` VALUES (1839, '371326', '平邑县', 182, 0, 0, 'Pingyi Xian', 'PYI', 0);
INSERT INTO `ln_region` VALUES (1840, '371327', '莒南县', 182, 0, 0, 'Junan Xian', 'JNB', 0);
INSERT INTO `ln_region` VALUES (1841, '371328', '蒙阴县', 182, 0, 0, 'Mengyin Xian', 'MYL', 0);
INSERT INTO `ln_region` VALUES (1842, '371329', '临沭县', 182, 0, 0, 'Linshu Xian', 'LSP', 0);
INSERT INTO `ln_region` VALUES (1843, '371401', '市辖区', 183, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1844, '371402', '德城区', 183, 0, 0, 'Decheng Qu', 'DCD', 0);
INSERT INTO `ln_region` VALUES (1845, '371421', '陵县', 183, 0, 0, 'Ling Xian', 'LXL', 0);
INSERT INTO `ln_region` VALUES (1846, '371422', '宁津县', 183, 0, 0, 'Ningjin Xian', 'NGJ', 0);
INSERT INTO `ln_region` VALUES (1847, '371423', '庆云县', 183, 0, 0, 'Qingyun Xian', 'QYL', 0);
INSERT INTO `ln_region` VALUES (1848, '371424', '临邑县', 183, 0, 0, 'Linyi xian', 'LYM', 0);
INSERT INTO `ln_region` VALUES (1849, '371425', '齐河县', 183, 0, 0, 'Qihe Xian', 'QIH', 0);
INSERT INTO `ln_region` VALUES (1850, '371426', '平原县', 183, 0, 0, 'Pingyuan Xian', 'PYN', 0);
INSERT INTO `ln_region` VALUES (1851, '371427', '夏津县', 183, 0, 0, 'Xiajin Xian', 'XAJ', 0);
INSERT INTO `ln_region` VALUES (1852, '371428', '武城县', 183, 0, 0, 'Wucheng Xian', 'WUC', 0);
INSERT INTO `ln_region` VALUES (1853, '371481', '乐陵市', 183, 0, 0, 'Leling Shi', 'LEL', 0);
INSERT INTO `ln_region` VALUES (1854, '371482', '禹城市', 183, 0, 0, 'Yucheng Shi', 'YCL', 0);
INSERT INTO `ln_region` VALUES (1855, '371501', '市辖区', 184, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1856, '371502', '东昌府区', 184, 0, 0, 'Dongchangfu Qu', 'DCF', 0);
INSERT INTO `ln_region` VALUES (1857, '371521', '阳谷县', 184, 0, 0, 'Yanggu Xian ', 'YGU', 0);
INSERT INTO `ln_region` VALUES (1858, '371522', '莘县', 184, 0, 0, 'Shen Xian', 'SHN', 0);
INSERT INTO `ln_region` VALUES (1859, '371523', '茌平县', 184, 0, 0, 'Chiping Xian ', 'CPG', 0);
INSERT INTO `ln_region` VALUES (1860, '371524', '东阿县', 184, 0, 0, 'Dong,e Xian', 'DGE', 0);
INSERT INTO `ln_region` VALUES (1861, '371525', '冠县', 184, 0, 0, 'Guan Xian', 'GXL', 0);
INSERT INTO `ln_region` VALUES (1862, '371526', '高唐县', 184, 0, 0, 'Gaotang Xian', 'GTG', 0);
INSERT INTO `ln_region` VALUES (1863, '371581', '临清市', 184, 0, 0, 'Linqing Xian', 'LQS', 0);
INSERT INTO `ln_region` VALUES (1864, '371601', '市辖区', 185, 0, 0, '1', '2', 0);
INSERT INTO `ln_region` VALUES (1865, '371602', '滨城区', 185, 0, 0, 'Bincheng Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1866, '371621', '惠民县', 185, 0, 0, 'Huimin Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1867, '371622', '阳信县', 185, 0, 0, 'Yangxin Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1868, '371623', '无棣县', 185, 0, 0, 'Wudi Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1869, '371624', '沾化县', 185, 0, 0, 'Zhanhua Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1870, '371625', '博兴县', 185, 0, 0, 'Boxing Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1871, '371626', '邹平县', 185, 0, 0, 'Zouping Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1873, '371702', '牡丹区', 186, 0, 0, 'Mudan Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1874, '371721', '曹县', 186, 0, 0, 'Cao Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1875, '371722', '单县', 186, 0, 0, 'Shan Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1876, '371723', '成武县', 186, 0, 0, 'Chengwu Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1877, '371724', '巨野县', 186, 0, 0, 'Juye Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1878, '371725', '郓城县', 186, 0, 0, 'Yuncheng Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1879, '371726', '鄄城县', 186, 0, 0, 'Juancheng Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1880, '371727', '定陶县', 186, 0, 0, 'Dingtao Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1881, '371728', '东明县', 186, 0, 0, 'Dongming Xian', '2', 0);
INSERT INTO `ln_region` VALUES (1882, '410101', '市辖区', 187, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1883, '410102', '中原区', 187, 0, 0, 'Zhongyuan Qu', 'ZYQ', 0);
INSERT INTO `ln_region` VALUES (1884, '410103', '二七区', 187, 0, 0, 'Erqi Qu', 'EQQ', 0);
INSERT INTO `ln_region` VALUES (1885, '410104', '管城回族区', 187, 0, 0, 'Guancheng Huizu Qu', 'GCH', 0);
INSERT INTO `ln_region` VALUES (1886, '410105', '金水区', 187, 0, 0, 'Jinshui Qu', 'JSU', 0);
INSERT INTO `ln_region` VALUES (1887, '410106', '上街区', 187, 0, 0, 'Shangjie Qu', 'SJE', 0);
INSERT INTO `ln_region` VALUES (1888, '410108', '惠济区', 187, 0, 0, 'Mangshan Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1889, '410122', '中牟县', 187, 0, 0, 'Zhongmou Xian', 'ZMO', 0);
INSERT INTO `ln_region` VALUES (1890, '410181', '巩义市', 187, 0, 0, 'Gongyi Shi', 'GYI', 0);
INSERT INTO `ln_region` VALUES (1891, '410182', '荥阳市', 187, 0, 0, 'Xingyang Shi', 'XYK', 0);
INSERT INTO `ln_region` VALUES (1892, '410183', '新密市', 187, 0, 0, 'Xinmi Shi', 'XMI', 0);
INSERT INTO `ln_region` VALUES (1893, '410184', '新郑市', 187, 0, 0, 'Xinzheng Shi', 'XZG', 0);
INSERT INTO `ln_region` VALUES (1894, '410185', '登封市', 187, 0, 0, 'Dengfeng Shi', '2', 0);
INSERT INTO `ln_region` VALUES (1895, '410201', '市辖区', 188, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1896, '410202', '龙亭区', 188, 0, 0, 'Longting Qu', 'LTK', 0);
INSERT INTO `ln_region` VALUES (1897, '410203', '顺河回族区', 188, 0, 0, 'Shunhe Huizu Qu', 'SHR', 0);
INSERT INTO `ln_region` VALUES (1898, '410204', '鼓楼区', 188, 0, 0, 'Gulou Qu', 'GLK', 0);
INSERT INTO `ln_region` VALUES (1899, '410205', '禹王台区', 188, 0, 0, 'Yuwangtai Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1900, '410211', '金明区', 188, 0, 0, 'Jinming Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1901, '410221', '杞县', 188, 0, 0, 'Qi Xian', 'QIX', 0);
INSERT INTO `ln_region` VALUES (1902, '410222', '通许县', 188, 0, 0, 'Tongxu Xian', 'TXY', 0);
INSERT INTO `ln_region` VALUES (1903, '410223', '尉氏县', 188, 0, 0, 'Weishi Xian', 'WSI', 0);
INSERT INTO `ln_region` VALUES (1904, '410224', '开封县', 188, 0, 0, 'Kaifeng Xian', 'KFX', 0);
INSERT INTO `ln_region` VALUES (1905, '410225', '兰考县', 188, 0, 0, 'Lankao Xian', 'LKA', 0);
INSERT INTO `ln_region` VALUES (1906, '410301', '市辖区', 189, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1907, '410302', '老城区', 189, 0, 0, 'Laocheng Qu', 'LLY', 0);
INSERT INTO `ln_region` VALUES (1908, '410303', '西工区', 189, 0, 0, 'Xigong Qu', 'XGL', 0);
INSERT INTO `ln_region` VALUES (1909, '410304', '瀍河回族区', 189, 0, 0, 'Chanhehuizu Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1910, '410305', '涧西区', 189, 0, 0, 'Jianxi Qu', 'JXL', 0);
INSERT INTO `ln_region` VALUES (1911, '410306', '吉利区', 189, 0, 0, 'Jili Qu', 'JLL', 0);
INSERT INTO `ln_region` VALUES (1912, '410311', '洛龙区', 189, 0, 0, 'Luolong Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1913, '410322', '孟津县', 189, 0, 0, 'Mengjin Xian', 'MGJ', 0);
INSERT INTO `ln_region` VALUES (1914, '410323', '新安县', 189, 0, 0, 'Xin,an Xian', 'XAX', 0);
INSERT INTO `ln_region` VALUES (1915, '410324', '栾川县', 189, 0, 0, 'Luanchuan Xian', 'LCK', 0);
INSERT INTO `ln_region` VALUES (1916, '410325', '嵩县', 189, 0, 0, 'Song Xian', 'SON', 0);
INSERT INTO `ln_region` VALUES (1917, '410326', '汝阳县', 189, 0, 0, 'Ruyang Xian', 'RUY', 0);
INSERT INTO `ln_region` VALUES (1918, '410327', '宜阳县', 189, 0, 0, 'Yiyang Xian', 'YYY', 0);
INSERT INTO `ln_region` VALUES (1919, '410328', '洛宁县', 189, 0, 0, 'Luoning Xian', 'LNI', 0);
INSERT INTO `ln_region` VALUES (1920, '410329', '伊川县', 189, 0, 0, 'Yichuan Xian', 'YCZ', 0);
INSERT INTO `ln_region` VALUES (1921, '410381', '偃师市', 189, 0, 0, 'Yanshi Shi', 'YST', 0);
INSERT INTO `ln_region` VALUES (1922, '410401', '市辖区', 190, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1923, '410402', '新华区', 190, 0, 0, 'Xinhua Qu', 'XHP', 0);
INSERT INTO `ln_region` VALUES (1924, '410403', '卫东区', 190, 0, 0, 'Weidong Qu', 'WDG', 0);
INSERT INTO `ln_region` VALUES (1925, '410404', '石龙区', 190, 0, 0, 'Shilong Qu', 'SIL', 0);
INSERT INTO `ln_region` VALUES (1926, '410411', '湛河区', 190, 0, 0, 'Zhanhe Qu', 'ZHQ', 0);
INSERT INTO `ln_region` VALUES (1927, '410421', '宝丰县', 190, 0, 0, 'Baofeng Xian', 'BFG', 0);
INSERT INTO `ln_region` VALUES (1928, '410422', '叶县', 190, 0, 0, 'Ye Xian', 'YEX', 0);
INSERT INTO `ln_region` VALUES (1929, '410423', '鲁山县', 190, 0, 0, 'Lushan Xian', 'LUS', 0);
INSERT INTO `ln_region` VALUES (1930, '410425', '郏县', 190, 0, 0, 'Jia Xian', 'JXY', 0);
INSERT INTO `ln_region` VALUES (1931, '410481', '舞钢市', 190, 0, 0, 'Wugang Shi', 'WGY', 0);
INSERT INTO `ln_region` VALUES (1932, '410482', '汝州市', 190, 0, 0, 'Ruzhou Shi', 'RZO', 0);
INSERT INTO `ln_region` VALUES (1933, '410501', '市辖区', 191, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1934, '410502', '文峰区', 191, 0, 0, 'Wenfeng Qu', 'WFQ', 0);
INSERT INTO `ln_region` VALUES (1935, '410503', '北关区', 191, 0, 0, 'Beiguan Qu', 'BGQ', 0);
INSERT INTO `ln_region` VALUES (1936, '410505', '殷都区', 191, 0, 0, 'Yindu Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1937, '410506', '龙安区', 191, 0, 0, 'Longan Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1938, '410522', '安阳县', 191, 0, 0, 'Anyang Xian', 'AYX', 0);
INSERT INTO `ln_region` VALUES (1939, '410523', '汤阴县', 191, 0, 0, 'Tangyin Xian', 'TYI', 0);
INSERT INTO `ln_region` VALUES (1940, '410526', '滑县', 191, 0, 0, 'Hua Xian', 'HUA', 0);
INSERT INTO `ln_region` VALUES (1941, '410527', '内黄县', 191, 0, 0, 'Neihuang Xian', 'NHG', 0);
INSERT INTO `ln_region` VALUES (1942, '410581', '林州市', 191, 0, 0, 'Linzhou Shi', 'LZY', 0);
INSERT INTO `ln_region` VALUES (1943, '410601', '市辖区', 192, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1944, '410602', '鹤山区', 192, 0, 0, 'Heshan Qu', 'HSF', 0);
INSERT INTO `ln_region` VALUES (1945, '410603', '山城区', 192, 0, 0, 'Shancheng Qu', 'SCB', 0);
INSERT INTO `ln_region` VALUES (1946, '410611', '淇滨区', 192, 0, 0, 'Qibin Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1947, '410621', '浚县', 192, 0, 0, 'Xun Xian', 'XUX', 0);
INSERT INTO `ln_region` VALUES (1948, '410622', '淇县', 192, 0, 0, 'Qi Xian', 'QXY', 0);
INSERT INTO `ln_region` VALUES (1949, '410701', '市辖区', 193, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1950, '410702', '红旗区', 193, 0, 0, 'Hongqi Qu', 'HQQ', 0);
INSERT INTO `ln_region` VALUES (1951, '410703', '卫滨区', 193, 0, 0, 'Weibin Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1952, '410704', '凤泉区', 193, 0, 0, 'Fengquan Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1953, '410711', '牧野区', 193, 0, 0, 'Muye Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1954, '410721', '新乡县', 193, 0, 0, 'Xinxiang Xian', 'XXX', 0);
INSERT INTO `ln_region` VALUES (1955, '410724', '获嘉县', 193, 0, 0, 'Huojia Xian', 'HOJ', 0);
INSERT INTO `ln_region` VALUES (1956, '410725', '原阳县', 193, 0, 0, 'Yuanyang Xian', 'YYA', 0);
INSERT INTO `ln_region` VALUES (1957, '410726', '延津县', 193, 0, 0, 'Yanjin Xian', 'YJN', 0);
INSERT INTO `ln_region` VALUES (1958, '410727', '封丘县', 193, 0, 0, 'Fengqiu Xian', 'FQU', 0);
INSERT INTO `ln_region` VALUES (1959, '410728', '长垣县', 193, 0, 0, 'Changyuan Xian', 'CYU', 0);
INSERT INTO `ln_region` VALUES (1960, '410781', '卫辉市', 193, 0, 0, 'Weihui Shi', 'WHS', 0);
INSERT INTO `ln_region` VALUES (1961, '410782', '辉县市', 193, 0, 0, 'Huixian Shi', 'HXS', 0);
INSERT INTO `ln_region` VALUES (1962, '410801', '市辖区', 194, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1963, '410802', '解放区', 194, 0, 0, 'Jiefang Qu', 'JFQ', 0);
INSERT INTO `ln_region` VALUES (1964, '410803', '中站区', 194, 0, 0, 'Zhongzhan Qu', 'ZZQ', 0);
INSERT INTO `ln_region` VALUES (1965, '410804', '马村区', 194, 0, 0, 'Macun Qu', 'MCQ', 0);
INSERT INTO `ln_region` VALUES (1966, '410811', '山阳区', 194, 0, 0, 'Shanyang Qu', 'SYC', 0);
INSERT INTO `ln_region` VALUES (1967, '410821', '修武县', 194, 0, 0, 'Xiuwu Xian', 'XUW', 0);
INSERT INTO `ln_region` VALUES (1968, '410822', '博爱县', 194, 0, 0, 'Bo,ai Xian', 'BOA', 0);
INSERT INTO `ln_region` VALUES (1969, '410823', '武陟县', 194, 0, 0, 'Wuzhi Xian', 'WZI', 0);
INSERT INTO `ln_region` VALUES (1970, '410825', '温县', 194, 0, 0, 'Wen Xian', 'WEN', 0);
INSERT INTO `ln_region` VALUES (1971, '419001', '济源市', 194, 0, 0, 'Jiyuan Shi', '2', 0);
INSERT INTO `ln_region` VALUES (1972, '410882', '沁阳市', 194, 0, 0, 'Qinyang Shi', 'QYS', 0);
INSERT INTO `ln_region` VALUES (1973, '410883', '孟州市', 194, 0, 0, 'Mengzhou Shi', 'MZO', 0);
INSERT INTO `ln_region` VALUES (1974, '410901', '市辖区', 195, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1975, '410902', '华龙区', 195, 0, 0, 'Hualong Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1976, '410922', '清丰县', 195, 0, 0, 'Qingfeng Xian', 'QFG', 0);
INSERT INTO `ln_region` VALUES (1977, '410923', '南乐县', 195, 0, 0, 'Nanle Xian', 'NLE', 0);
INSERT INTO `ln_region` VALUES (1978, '410926', '范县', 195, 0, 0, 'Fan Xian', 'FAX', 0);
INSERT INTO `ln_region` VALUES (1979, '410927', '台前县', 195, 0, 0, 'Taiqian Xian', 'TQN', 0);
INSERT INTO `ln_region` VALUES (1980, '410928', '濮阳县', 195, 0, 0, 'Puyang Xian', 'PUY', 0);
INSERT INTO `ln_region` VALUES (1981, '411001', '市辖区', 196, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1982, '411002', '魏都区', 196, 0, 0, 'Weidu Qu', 'WED', 0);
INSERT INTO `ln_region` VALUES (1983, '411023', '许昌县', 196, 0, 0, 'Xuchang Xian', 'XUC', 0);
INSERT INTO `ln_region` VALUES (1984, '411024', '鄢陵县', 196, 0, 0, 'Yanling Xian', 'YLY', 0);
INSERT INTO `ln_region` VALUES (1985, '411025', '襄城县', 196, 0, 0, 'Xiangcheng Xian', 'XAC', 0);
INSERT INTO `ln_region` VALUES (1986, '411081', '禹州市', 196, 0, 0, 'Yuzhou Shi', 'YUZ', 0);
INSERT INTO `ln_region` VALUES (1987, '411082', '长葛市', 196, 0, 0, 'Changge Shi', 'CGE', 0);
INSERT INTO `ln_region` VALUES (1988, '411101', '市辖区', 197, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1989, '411102', '源汇区', 197, 0, 0, 'Yuanhui Qu', 'YHI', 0);
INSERT INTO `ln_region` VALUES (1990, '411103', '郾城区', 197, 0, 0, 'Yancheng Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1991, '411104', '召陵区', 197, 0, 0, 'Zhaoling Qu', '2', 0);
INSERT INTO `ln_region` VALUES (1992, '411121', '舞阳县', 197, 0, 0, 'Wuyang Xian', 'WYG', 0);
INSERT INTO `ln_region` VALUES (1993, '411122', '临颍县', 197, 0, 0, 'Linying Xian', 'LNY', 0);
INSERT INTO `ln_region` VALUES (1994, '411201', '市辖区', 198, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (1995, '411202', '湖滨区', 198, 0, 0, 'Hubin Qu', 'HBI', 0);
INSERT INTO `ln_region` VALUES (1996, '411221', '渑池县', 198, 0, 0, 'Mianchi Xian', 'MCI', 0);
INSERT INTO `ln_region` VALUES (1997, '411222', '陕县', 198, 0, 0, 'Shan Xian', 'SHX', 0);
INSERT INTO `ln_region` VALUES (1998, '411224', '卢氏县', 198, 0, 0, 'Lushi Xian', 'LUU', 0);
INSERT INTO `ln_region` VALUES (1999, '411281', '义马市', 198, 0, 0, 'Yima Shi', 'YMA', 0);
INSERT INTO `ln_region` VALUES (2000, '411282', '灵宝市', 198, 0, 0, 'Lingbao Shi', 'LBS', 0);
INSERT INTO `ln_region` VALUES (2001, '411301', '市辖区', 199, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (2002, '411302', '宛城区', 199, 0, 0, 'Wancheng Qu', 'WCN', 0);
INSERT INTO `ln_region` VALUES (2003, '411303', '卧龙区', 199, 0, 0, 'Wolong Qu', 'WOL', 0);
INSERT INTO `ln_region` VALUES (2004, '411321', '南召县', 199, 0, 0, 'Nanzhao Xian', 'NZO', 0);
INSERT INTO `ln_region` VALUES (2005, '411322', '方城县', 199, 0, 0, 'Fangcheng Xian', 'FCX', 0);
INSERT INTO `ln_region` VALUES (2006, '411323', '西峡县', 199, 0, 0, 'Xixia Xian', 'XXY', 0);
INSERT INTO `ln_region` VALUES (2007, '411324', '镇平县', 199, 0, 0, 'Zhenping Xian', 'ZPX', 0);
INSERT INTO `ln_region` VALUES (2008, '411325', '内乡县', 199, 0, 0, 'Neixiang Xian', 'NXG', 0);
INSERT INTO `ln_region` VALUES (2009, '411326', '淅川县', 199, 0, 0, 'Xichuan Xian', 'XCY', 0);
INSERT INTO `ln_region` VALUES (2010, '411327', '社旗县', 199, 0, 0, 'Sheqi Xian', 'SEQ', 0);
INSERT INTO `ln_region` VALUES (2011, '411328', '唐河县', 199, 0, 0, 'Tanghe Xian', 'TGH', 0);
INSERT INTO `ln_region` VALUES (2012, '411329', '新野县', 199, 0, 0, 'Xinye Xian', 'XYE', 0);
INSERT INTO `ln_region` VALUES (2013, '411330', '桐柏县', 199, 0, 0, 'Tongbai Xian', 'TBX', 0);
INSERT INTO `ln_region` VALUES (2014, '411381', '邓州市', 199, 0, 0, 'Dengzhou Shi', 'DGZ', 0);
INSERT INTO `ln_region` VALUES (2015, '411401', '市辖区', 200, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (2016, '411402', '梁园区', 200, 0, 0, 'Liangyuan Qu', 'LYY', 0);
INSERT INTO `ln_region` VALUES (2017, '411403', '睢阳区', 200, 0, 0, 'Suiyang Qu', 'SYA', 0);
INSERT INTO `ln_region` VALUES (2018, '411421', '民权县', 200, 0, 0, 'Minquan Xian', 'MQY', 0);
INSERT INTO `ln_region` VALUES (2019, '411422', '睢县', 200, 0, 0, 'Sui Xian', 'SUI', 0);
INSERT INTO `ln_region` VALUES (2020, '411423', '宁陵县', 200, 0, 0, 'Ningling Xian', 'NGL', 0);
INSERT INTO `ln_region` VALUES (2021, '411424', '柘城县', 200, 0, 0, 'Zhecheng Xian', 'ZHC', 0);
INSERT INTO `ln_region` VALUES (2022, '411425', '虞城县', 200, 0, 0, 'Yucheng Xian', 'YUC', 0);
INSERT INTO `ln_region` VALUES (2023, '411426', '夏邑县', 200, 0, 0, 'Xiayi Xian', 'XAY', 0);
INSERT INTO `ln_region` VALUES (2024, '411481', '永城市', 200, 0, 0, 'Yongcheng Shi', 'YOC', 0);
INSERT INTO `ln_region` VALUES (2025, '411501', '市辖区', 201, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (2026, '411502', '浉河区', 201, 0, 0, 'Shihe Qu', 'SHU', 0);
INSERT INTO `ln_region` VALUES (2027, '411503', '平桥区', 201, 0, 0, 'Pingqiao Qu', 'PQQ', 0);
INSERT INTO `ln_region` VALUES (2028, '411521', '罗山县', 201, 0, 0, 'Luoshan Xian', 'LSE', 0);
INSERT INTO `ln_region` VALUES (2029, '411522', '光山县', 201, 0, 0, 'Guangshan Xian', 'GSX', 0);
INSERT INTO `ln_region` VALUES (2030, '411523', '新县', 201, 0, 0, 'Xin Xian', 'XXI', 0);
INSERT INTO `ln_region` VALUES (2031, '411524', '商城县', 201, 0, 0, 'Shangcheng Xian', 'SCX', 0);
INSERT INTO `ln_region` VALUES (2032, '411525', '固始县', 201, 0, 0, 'Gushi Xian', 'GSI', 0);
INSERT INTO `ln_region` VALUES (2033, '411526', '潢川县', 201, 0, 0, 'Huangchuan Xian', 'HCU', 0);
INSERT INTO `ln_region` VALUES (2034, '411527', '淮滨县', 201, 0, 0, 'Huaibin Xian', 'HBN', 0);
INSERT INTO `ln_region` VALUES (2035, '411528', '息县', 201, 0, 0, 'Xi Xian', 'XIX', 0);
INSERT INTO `ln_region` VALUES (2036, '411601', '市辖区', 202, 0, 0, '1', '2', 0);
INSERT INTO `ln_region` VALUES (2037, '411602', '川汇区', 202, 0, 0, 'Chuanhui Qu', '2', 0);
INSERT INTO `ln_region` VALUES (2038, '411621', '扶沟县', 202, 0, 0, 'Fugou Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2039, '411622', '西华县', 202, 0, 0, 'Xihua Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2040, '411623', '商水县', 202, 0, 0, 'Shangshui Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2041, '411624', '沈丘县', 202, 0, 0, 'Shenqiu Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2042, '411625', '郸城县', 202, 0, 0, 'Dancheng Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2043, '411626', '淮阳县', 202, 0, 0, 'Huaiyang Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2044, '411627', '太康县', 202, 0, 0, 'Taikang Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2045, '411628', '鹿邑县', 202, 0, 0, 'Luyi Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2046, '411681', '项城市', 202, 0, 0, 'Xiangcheng Shi', '2', 0);
INSERT INTO `ln_region` VALUES (2047, '411701', '市辖区', 203, 0, 0, '1', '2', 0);
INSERT INTO `ln_region` VALUES (2048, '411702', '驿城区', 203, 0, 0, 'Yicheng Qu', '2', 0);
INSERT INTO `ln_region` VALUES (2049, '411721', '西平县', 203, 0, 0, 'Xiping Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2050, '411722', '上蔡县', 203, 0, 0, 'Shangcai Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2051, '411723', '平舆县', 203, 0, 0, 'Pingyu Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2052, '411724', '正阳县', 203, 0, 0, 'Zhengyang Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2053, '411725', '确山县', 203, 0, 0, 'Queshan Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2054, '411726', '泌阳县', 203, 0, 0, 'Biyang Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2055, '411727', '汝南县', 203, 0, 0, 'Runan Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2056, '411728', '遂平县', 203, 0, 0, 'Suiping Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2057, '411729', '新蔡县', 203, 0, 0, 'Xincai Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2058, '420101', '市辖区', 204, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (2059, '420102', '江岸区', 204, 0, 0, 'Jiang,an Qu', 'JAA', 0);
INSERT INTO `ln_region` VALUES (2060, '420103', '江汉区', 204, 0, 0, 'Jianghan Qu', 'JHN', 0);
INSERT INTO `ln_region` VALUES (2061, '420104', '硚口区', 204, 0, 0, 'Qiaokou Qu', 'QKQ', 0);
INSERT INTO `ln_region` VALUES (2062, '420105', '汉阳区', 204, 0, 0, 'Hanyang Qu', 'HYA', 0);
INSERT INTO `ln_region` VALUES (2063, '420106', '武昌区', 204, 0, 0, 'Wuchang Qu', 'WCQ', 0);
INSERT INTO `ln_region` VALUES (2064, '420107', '青山区', 204, 0, 0, 'Qingshan Qu', 'QSN', 0);
INSERT INTO `ln_region` VALUES (2065, '420111', '洪山区', 204, 0, 0, 'Hongshan Qu', 'HSQ', 0);
INSERT INTO `ln_region` VALUES (2066, '420112', '东西湖区', 204, 0, 0, 'Dongxihu Qu', 'DXH', 0);
INSERT INTO `ln_region` VALUES (2067, '420113', '汉南区', 204, 0, 0, 'Hannan Qu', 'HNQ', 0);
INSERT INTO `ln_region` VALUES (2068, '420114', '蔡甸区', 204, 0, 0, 'Caidian Qu', 'CDN', 0);
INSERT INTO `ln_region` VALUES (2069, '420115', '江夏区', 204, 0, 0, 'Jiangxia Qu', 'JXQ', 0);
INSERT INTO `ln_region` VALUES (2070, '420116', '黄陂区', 204, 0, 0, 'Huangpi Qu', 'HPI', 0);
INSERT INTO `ln_region` VALUES (2071, '420117', '新洲区', 204, 0, 0, 'Xinzhou Qu', 'XNZ', 0);
INSERT INTO `ln_region` VALUES (2072, '420201', '市辖区', 205, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (2073, '420202', '黄石港区', 205, 0, 0, 'Huangshigang Qu', 'HSG', 0);
INSERT INTO `ln_region` VALUES (2074, '420203', '西塞山区', 205, 0, 0, 'Xisaishan Qu', '2', 0);
INSERT INTO `ln_region` VALUES (2075, '420204', '下陆区', 205, 0, 0, 'Xialu Qu', 'XAL', 0);
INSERT INTO `ln_region` VALUES (2076, '420205', '铁山区', 205, 0, 0, 'Tieshan Qu', 'TSH', 0);
INSERT INTO `ln_region` VALUES (2077, '420222', '阳新县', 205, 0, 0, 'Yangxin Xian', 'YXE', 0);
INSERT INTO `ln_region` VALUES (2078, '420281', '大冶市', 205, 0, 0, 'Daye Shi', 'DYE', 0);
INSERT INTO `ln_region` VALUES (2079, '420301', '市辖区', 206, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (2080, '420302', '茅箭区', 206, 0, 0, 'Maojian Qu', 'MJN', 0);
INSERT INTO `ln_region` VALUES (2081, '420303', '张湾区', 206, 0, 0, 'Zhangwan Qu', 'ZWQ', 0);
INSERT INTO `ln_region` VALUES (2082, '420321', '郧县', 206, 0, 0, 'Yun Xian', 'YUN', 0);
INSERT INTO `ln_region` VALUES (2083, '420322', '郧西县', 206, 0, 0, 'Yunxi Xian', 'YNX', 0);
INSERT INTO `ln_region` VALUES (2084, '420323', '竹山县', 206, 0, 0, 'Zhushan Xian', 'ZHS', 0);
INSERT INTO `ln_region` VALUES (2085, '420324', '竹溪县', 206, 0, 0, 'Zhuxi Xian', 'ZXX', 0);
INSERT INTO `ln_region` VALUES (2086, '420325', '房县', 206, 0, 0, 'Fang Xian', 'FAG', 0);
INSERT INTO `ln_region` VALUES (2087, '420381', '丹江口市', 206, 0, 0, 'Danjiangkou Shi', 'DJK', 0);
INSERT INTO `ln_region` VALUES (2088, '420501', '市辖区', 207, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (2089, '420502', '西陵区', 207, 0, 0, 'Xiling Qu', 'XLQ', 0);
INSERT INTO `ln_region` VALUES (2090, '420503', '伍家岗区', 207, 0, 0, 'Wujiagang Qu', 'WJG', 0);
INSERT INTO `ln_region` VALUES (2091, '420504', '点军区', 207, 0, 0, 'Dianjun Qu', 'DJN', 0);
INSERT INTO `ln_region` VALUES (2092, '420505', '猇亭区', 207, 0, 0, 'Xiaoting Qu', 'XTQ', 0);
INSERT INTO `ln_region` VALUES (2093, '420506', '夷陵区', 207, 0, 0, 'Yiling Qu', '2', 0);
INSERT INTO `ln_region` VALUES (2094, '420525', '远安县', 207, 0, 0, 'Yuan,an Xian', 'YAX', 0);
INSERT INTO `ln_region` VALUES (2095, '420526', '兴山县', 207, 0, 0, 'Xingshan Xian', 'XSX', 0);
INSERT INTO `ln_region` VALUES (2096, '420527', '秭归县', 207, 0, 0, 'Zigui Xian', 'ZGI', 0);
INSERT INTO `ln_region` VALUES (2097, '420528', '长阳土家族自治县', 207, 0, 0, 'Changyang Tujiazu Zizhixian', 'CYA', 0);
INSERT INTO `ln_region` VALUES (2098, '420529', '五峰土家族自治县', 207, 0, 0, 'Wufeng Tujiazu Zizhixian', 'WFG', 0);
INSERT INTO `ln_region` VALUES (2099, '420581', '宜都市', 207, 0, 0, 'Yidu Shi', 'YID', 0);
INSERT INTO `ln_region` VALUES (2100, '420582', '当阳市', 207, 0, 0, 'Dangyang Shi', 'DYS', 0);
INSERT INTO `ln_region` VALUES (2101, '420583', '枝江市', 207, 0, 0, 'Zhijiang Shi', 'ZIJ', 0);
INSERT INTO `ln_region` VALUES (2102, '420601', '市辖区', 208, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (2103, '420602', '襄城区', 208, 0, 0, 'Xiangcheng Qu', 'XXF', 0);
INSERT INTO `ln_region` VALUES (2104, '420606', '樊城区', 208, 0, 0, 'Fancheng Qu', 'FNC', 0);
INSERT INTO `ln_region` VALUES (2105, '420607', '襄阳区', 208, 0, 0, 'Xiangyang Qu', '2', 0);
INSERT INTO `ln_region` VALUES (2106, '420624', '南漳县', 208, 0, 0, 'Nanzhang Xian', 'NZH', 0);
INSERT INTO `ln_region` VALUES (2107, '420625', '谷城县', 208, 0, 0, 'Gucheng Xian', 'GUC', 0);
INSERT INTO `ln_region` VALUES (2108, '420626', '保康县', 208, 0, 0, 'Baokang Xian', 'BKG', 0);
INSERT INTO `ln_region` VALUES (2109, '420682', '老河口市', 208, 0, 0, 'Laohekou Shi', 'LHK', 0);
INSERT INTO `ln_region` VALUES (2110, '420683', '枣阳市', 208, 0, 0, 'Zaoyang Shi', 'ZOY', 0);
INSERT INTO `ln_region` VALUES (2111, '420684', '宜城市', 208, 0, 0, 'Yicheng Shi', 'YCW', 0);
INSERT INTO `ln_region` VALUES (2112, '420701', '市辖区', 209, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (2113, '420702', '梁子湖区', 209, 0, 0, 'Liangzihu Qu', 'LZI', 0);
INSERT INTO `ln_region` VALUES (2114, '420703', '华容区', 209, 0, 0, 'Huarong Qu', 'HRQ', 0);
INSERT INTO `ln_region` VALUES (2115, '420704', '鄂城区', 209, 0, 0, 'Echeng Qu', 'ECQ', 0);
INSERT INTO `ln_region` VALUES (2116, '420801', '市辖区', 210, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (2117, '420802', '东宝区', 210, 0, 0, 'Dongbao Qu', 'DBQ', 0);
INSERT INTO `ln_region` VALUES (2118, '420804', '掇刀区', 210, 0, 0, 'Duodao Qu', '2', 0);
INSERT INTO `ln_region` VALUES (2119, '420821', '京山县', 210, 0, 0, 'Jingshan Xian', 'JSA', 0);
INSERT INTO `ln_region` VALUES (2120, '420822', '沙洋县', 210, 0, 0, 'Shayang Xian', 'SYF', 0);
INSERT INTO `ln_region` VALUES (2121, '420881', '钟祥市', 210, 0, 0, 'Zhongxiang Shi', '2', 0);
INSERT INTO `ln_region` VALUES (2122, '420901', '市辖区', 211, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (2123, '420902', '孝南区', 211, 0, 0, 'Xiaonan Qu', 'XNA', 0);
INSERT INTO `ln_region` VALUES (2124, '420921', '孝昌县', 211, 0, 0, 'Xiaochang Xian', 'XOC', 0);
INSERT INTO `ln_region` VALUES (2125, '420922', '大悟县', 211, 0, 0, 'Dawu Xian', 'DWU', 0);
INSERT INTO `ln_region` VALUES (2126, '420923', '云梦县', 211, 0, 0, 'Yunmeng Xian', 'YMX', 0);
INSERT INTO `ln_region` VALUES (2127, '420981', '应城市', 211, 0, 0, 'Yingcheng Shi', 'YCG', 0);
INSERT INTO `ln_region` VALUES (2128, '420982', '安陆市', 211, 0, 0, 'Anlu Shi', 'ALU', 0);
INSERT INTO `ln_region` VALUES (2129, '420984', '汉川市', 211, 0, 0, 'Hanchuan Shi', 'HCH', 0);
INSERT INTO `ln_region` VALUES (2130, '421001', '市辖区', 212, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (2131, '421002', '沙市区', 212, 0, 0, 'Shashi Qu', 'SSJ', 0);
INSERT INTO `ln_region` VALUES (2132, '421003', '荆州区', 212, 0, 0, 'Jingzhou Qu', 'JZQ', 0);
INSERT INTO `ln_region` VALUES (2133, '421022', '公安县', 212, 0, 0, 'Gong,an Xian', 'GGA', 0);
INSERT INTO `ln_region` VALUES (2134, '421023', '监利县', 212, 0, 0, 'Jianli Xian', 'JLI', 0);
INSERT INTO `ln_region` VALUES (2135, '421024', '江陵县', 212, 0, 0, 'Jiangling Xian', 'JLX', 0);
INSERT INTO `ln_region` VALUES (2136, '421081', '石首市', 212, 0, 0, 'Shishou Shi', 'SSO', 0);
INSERT INTO `ln_region` VALUES (2137, '421083', '洪湖市', 212, 0, 0, 'Honghu Shi', 'HHU', 0);
INSERT INTO `ln_region` VALUES (2138, '421087', '松滋市', 212, 0, 0, 'Songzi Shi', 'SZF', 0);
INSERT INTO `ln_region` VALUES (2139, '421101', '市辖区', 213, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (2140, '421102', '黄州区', 213, 0, 0, 'Huangzhou Qu', 'HZC', 0);
INSERT INTO `ln_region` VALUES (2141, '421121', '团风县', 213, 0, 0, 'Tuanfeng Xian', 'TFG', 0);
INSERT INTO `ln_region` VALUES (2142, '421122', '红安县', 213, 0, 0, 'Hong,an Xian', 'HGA', 0);
INSERT INTO `ln_region` VALUES (2143, '421123', '罗田县', 213, 0, 0, 'Luotian Xian', 'LTE', 0);
INSERT INTO `ln_region` VALUES (2144, '421124', '英山县', 213, 0, 0, 'Yingshan Xian', 'YSE', 0);
INSERT INTO `ln_region` VALUES (2145, '421125', '浠水县', 213, 0, 0, 'Xishui Xian', 'XSE', 0);
INSERT INTO `ln_region` VALUES (2146, '421126', '蕲春县', 213, 0, 0, 'Qichun Xian', 'QCN', 0);
INSERT INTO `ln_region` VALUES (2147, '421127', '黄梅县', 213, 0, 0, 'Huangmei Xian', 'HGM', 0);
INSERT INTO `ln_region` VALUES (2148, '421181', '麻城市', 213, 0, 0, 'Macheng Shi', 'MCS', 0);
INSERT INTO `ln_region` VALUES (2149, '421182', '武穴市', 213, 0, 0, 'Wuxue Shi', 'WXE', 0);
INSERT INTO `ln_region` VALUES (2150, '421201', '市辖区', 214, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (2151, '421202', '咸安区', 214, 0, 0, 'Xian,an Qu', 'XAN', 0);
INSERT INTO `ln_region` VALUES (2152, '421221', '嘉鱼县', 214, 0, 0, 'Jiayu Xian', 'JYX', 0);
INSERT INTO `ln_region` VALUES (2153, '421222', '通城县', 214, 0, 0, 'Tongcheng Xian', 'TCX', 0);
INSERT INTO `ln_region` VALUES (2154, '421223', '崇阳县', 214, 0, 0, 'Chongyang Xian', 'CGY', 0);
INSERT INTO `ln_region` VALUES (2155, '421224', '通山县', 214, 0, 0, 'Tongshan Xian', 'TSA', 0);
INSERT INTO `ln_region` VALUES (2156, '421281', '赤壁市', 214, 0, 0, 'Chibi Shi', 'CBI', 0);
INSERT INTO `ln_region` VALUES (2157, '421301', '市辖区', 215, 0, 0, '1', '2', 0);
INSERT INTO `ln_region` VALUES (2158, '421303', '曾都区', 215, 0, 0, 'Zengdu Qu', '2', 0);
INSERT INTO `ln_region` VALUES (2159, '421381', '广水市', 215, 0, 0, 'Guangshui Shi', '2', 0);
INSERT INTO `ln_region` VALUES (2160, '422801', '恩施市', 216, 0, 0, 'Enshi Shi', 'ESS', 0);
INSERT INTO `ln_region` VALUES (2161, '422802', '利川市', 216, 0, 0, 'Lichuan Shi', 'LCE', 0);
INSERT INTO `ln_region` VALUES (2162, '422822', '建始县', 216, 0, 0, 'Jianshi Xian', 'JSE', 0);
INSERT INTO `ln_region` VALUES (2163, '422823', '巴东县', 216, 0, 0, 'Badong Xian', 'BDG', 0);
INSERT INTO `ln_region` VALUES (2164, '422825', '宣恩县', 216, 0, 0, 'Xuan,en Xian', 'XEN', 0);
INSERT INTO `ln_region` VALUES (2165, '422826', '咸丰县', 216, 0, 0, 'Xianfeng Xian', 'XFG', 0);
INSERT INTO `ln_region` VALUES (2166, '422827', '来凤县', 216, 0, 0, 'Laifeng Xian', 'LFG', 0);
INSERT INTO `ln_region` VALUES (2167, '422828', '鹤峰县', 216, 0, 0, 'Hefeng Xian', 'HEF', 0);
INSERT INTO `ln_region` VALUES (2168, '429004', '仙桃市', 217, 0, 0, 'Xiantao Shi', 'XNT', 0);
INSERT INTO `ln_region` VALUES (2169, '429005', '潜江市', 217, 0, 0, 'Qianjiang Shi', 'QNJ', 0);
INSERT INTO `ln_region` VALUES (2170, '429006', '天门市', 217, 0, 0, 'Tianmen Shi', 'TMS', 0);
INSERT INTO `ln_region` VALUES (2171, '429021', '神农架林区', 217, 0, 0, 'Shennongjia Linqu', 'SNJ', 0);
INSERT INTO `ln_region` VALUES (2172, '430101', '市辖区', 218, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (2173, '430102', '芙蓉区', 218, 0, 0, 'Furong Qu', 'FRQ', 0);
INSERT INTO `ln_region` VALUES (2174, '430103', '天心区', 218, 0, 0, 'Tianxin Qu', 'TXQ', 0);
INSERT INTO `ln_region` VALUES (2175, '430104', '岳麓区', 218, 0, 0, 'Yuelu Qu', 'YLU', 0);
INSERT INTO `ln_region` VALUES (2176, '430105', '开福区', 218, 0, 0, 'Kaifu Qu', 'KFQ', 0);
INSERT INTO `ln_region` VALUES (2177, '430111', '雨花区', 218, 0, 0, 'Yuhua Qu', 'YHA', 0);
INSERT INTO `ln_region` VALUES (2178, '430121', '长沙县', 218, 0, 0, 'Changsha Xian', 'CSA', 0);
INSERT INTO `ln_region` VALUES (2179, '430122', '望城县', 218, 0, 0, 'Wangcheng Xian', 'WCH', 0);
INSERT INTO `ln_region` VALUES (2180, '430124', '宁乡县', 218, 0, 0, 'Ningxiang Xian', 'NXX', 0);
INSERT INTO `ln_region` VALUES (2181, '430181', '浏阳市', 218, 0, 0, 'Liuyang Shi', 'LYS', 0);
INSERT INTO `ln_region` VALUES (2182, '430201', '市辖区', 219, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (2183, '430202', '荷塘区', 219, 0, 0, 'Hetang Qu', 'HTZ', 0);
INSERT INTO `ln_region` VALUES (2184, '430203', '芦淞区', 219, 0, 0, 'Lusong Qu', 'LZZ', 0);
INSERT INTO `ln_region` VALUES (2185, '430204', '石峰区', 219, 0, 0, 'Shifeng Qu', 'SFG', 0);
INSERT INTO `ln_region` VALUES (2186, '430211', '天元区', 219, 0, 0, 'Tianyuan Qu', 'TYQ', 0);
INSERT INTO `ln_region` VALUES (2187, '430221', '株洲县', 219, 0, 0, 'Zhuzhou Xian', 'ZZX', 0);
INSERT INTO `ln_region` VALUES (2188, '430223', '攸县', 219, 0, 0, 'You Xian', 'YOU', 0);
INSERT INTO `ln_region` VALUES (2189, '430224', '茶陵县', 219, 0, 0, 'Chaling Xian', 'CAL', 0);
INSERT INTO `ln_region` VALUES (2190, '430225', '炎陵县', 219, 0, 0, 'Yanling Xian', 'YLX', 0);
INSERT INTO `ln_region` VALUES (2191, '430281', '醴陵市', 219, 0, 0, 'Liling Shi', 'LIL', 0);
INSERT INTO `ln_region` VALUES (2192, '430301', '市辖区', 220, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (2193, '430302', '雨湖区', 220, 0, 0, 'Yuhu Qu', 'YHU', 0);
INSERT INTO `ln_region` VALUES (2194, '430304', '岳塘区', 220, 0, 0, 'Yuetang Qu', 'YTG', 0);
INSERT INTO `ln_region` VALUES (2195, '430321', '湘潭县', 220, 0, 0, 'Xiangtan Qu', 'XTX', 0);
INSERT INTO `ln_region` VALUES (2196, '430381', '湘乡市', 220, 0, 0, 'Xiangxiang Shi', 'XXG', 0);
INSERT INTO `ln_region` VALUES (2197, '430382', '韶山市', 220, 0, 0, 'Shaoshan Shi', 'SSN', 0);
INSERT INTO `ln_region` VALUES (2198, '430401', '市辖区', 221, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (2199, '430405', '珠晖区', 221, 0, 0, 'Zhuhui Qu', '2', 0);
INSERT INTO `ln_region` VALUES (2200, '430406', '雁峰区', 221, 0, 0, 'Yanfeng Qu', '2', 0);
INSERT INTO `ln_region` VALUES (2201, '430407', '石鼓区', 221, 0, 0, 'Shigu Qu', '2', 0);
INSERT INTO `ln_region` VALUES (2202, '430408', '蒸湘区', 221, 0, 0, 'Zhengxiang Qu', '2', 0);
INSERT INTO `ln_region` VALUES (2203, '430412', '南岳区', 221, 0, 0, 'Nanyue Qu', 'NYQ', 0);
INSERT INTO `ln_region` VALUES (2204, '430421', '衡阳县', 221, 0, 0, 'Hengyang Xian', 'HYO', 0);
INSERT INTO `ln_region` VALUES (2205, '430422', '衡南县', 221, 0, 0, 'Hengnan Xian', 'HNX', 0);
INSERT INTO `ln_region` VALUES (2206, '430423', '衡山县', 221, 0, 0, 'Hengshan Xian', 'HSH', 0);
INSERT INTO `ln_region` VALUES (2207, '430424', '衡东县', 221, 0, 0, 'Hengdong Xian', 'HED', 0);
INSERT INTO `ln_region` VALUES (2208, '430426', '祁东县', 221, 0, 0, 'Qidong Xian', 'QDX', 0);
INSERT INTO `ln_region` VALUES (2209, '430481', '耒阳市', 221, 0, 0, 'Leiyang Shi', 'LEY', 0);
INSERT INTO `ln_region` VALUES (2210, '430482', '常宁市', 221, 0, 0, 'Changning Shi', 'CNS', 0);
INSERT INTO `ln_region` VALUES (2211, '430501', '市辖区', 222, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (2212, '430502', '双清区', 222, 0, 0, 'Shuangqing Qu', 'SGQ', 0);
INSERT INTO `ln_region` VALUES (2213, '430503', '大祥区', 222, 0, 0, 'Daxiang Qu', 'DXS', 0);
INSERT INTO `ln_region` VALUES (2214, '430511', '北塔区', 222, 0, 0, 'Beita Qu', 'BET', 0);
INSERT INTO `ln_region` VALUES (2215, '430521', '邵东县', 222, 0, 0, 'Shaodong Xian', 'SDG', 0);
INSERT INTO `ln_region` VALUES (2216, '430522', '新邵县', 222, 0, 0, 'Xinshao Xian', 'XSO', 0);
INSERT INTO `ln_region` VALUES (2217, '430523', '邵阳县', 222, 0, 0, 'Shaoyang Xian', 'SYW', 0);
INSERT INTO `ln_region` VALUES (2218, '430524', '隆回县', 222, 0, 0, 'Longhui Xian', 'LGH', 0);
INSERT INTO `ln_region` VALUES (2219, '430525', '洞口县', 222, 0, 0, 'Dongkou Xian', 'DGK', 0);
INSERT INTO `ln_region` VALUES (2220, '430527', '绥宁县', 222, 0, 0, 'Suining Xian', 'SNX', 0);
INSERT INTO `ln_region` VALUES (2221, '430528', '新宁县', 222, 0, 0, 'Xinning Xian', 'XNI', 0);
INSERT INTO `ln_region` VALUES (2222, '430529', '城步苗族自治县', 222, 0, 0, 'Chengbu Miaozu Zizhixian', 'CBU', 0);
INSERT INTO `ln_region` VALUES (2223, '430581', '武冈市', 222, 0, 0, 'Wugang Shi', 'WGS', 0);
INSERT INTO `ln_region` VALUES (2224, '430601', '市辖区', 223, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (2225, '430602', '岳阳楼区', 223, 0, 0, 'Yueyanglou Qu', 'YYL', 0);
INSERT INTO `ln_region` VALUES (2226, '430603', '云溪区', 223, 0, 0, 'Yunxi Qu', 'YXI', 0);
INSERT INTO `ln_region` VALUES (2227, '430611', '君山区', 223, 0, 0, 'Junshan Qu', 'JUS', 0);
INSERT INTO `ln_region` VALUES (2228, '430621', '岳阳县', 223, 0, 0, 'Yueyang Xian', 'YYX', 0);
INSERT INTO `ln_region` VALUES (2229, '430623', '华容县', 223, 0, 0, 'Huarong Xian', 'HRG', 0);
INSERT INTO `ln_region` VALUES (2230, '430624', '湘阴县', 223, 0, 0, 'Xiangyin Xian', 'XYN', 0);
INSERT INTO `ln_region` VALUES (2231, '430626', '平江县', 223, 0, 0, 'Pingjiang Xian', 'PJH', 0);
INSERT INTO `ln_region` VALUES (2232, '430681', '汨罗市', 223, 0, 0, 'Miluo Shi', 'MLU', 0);
INSERT INTO `ln_region` VALUES (2233, '430682', '临湘市', 223, 0, 0, 'Linxiang Shi', 'LXY', 0);
INSERT INTO `ln_region` VALUES (2234, '430701', '市辖区', 224, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (2235, '430702', '武陵区', 224, 0, 0, 'Wuling Qu', 'WLQ', 0);
INSERT INTO `ln_region` VALUES (2236, '430703', '鼎城区', 224, 0, 0, 'Dingcheng Qu', 'DCE', 0);
INSERT INTO `ln_region` VALUES (2237, '430721', '安乡县', 224, 0, 0, 'Anxiang Xian', 'AXG', 0);
INSERT INTO `ln_region` VALUES (2238, '430722', '汉寿县', 224, 0, 0, 'Hanshou Xian', 'HSO', 0);
INSERT INTO `ln_region` VALUES (2239, '430723', '澧县', 224, 0, 0, 'Li Xian', 'LXX', 0);
INSERT INTO `ln_region` VALUES (2240, '430724', '临澧县', 224, 0, 0, 'Linli Xian', 'LNL', 0);
INSERT INTO `ln_region` VALUES (2241, '430725', '桃源县', 224, 0, 0, 'Taoyuan Xian', 'TOY', 0);
INSERT INTO `ln_region` VALUES (2242, '430726', '石门县', 224, 0, 0, 'Shimen Xian', 'SHM', 0);
INSERT INTO `ln_region` VALUES (2243, '430781', '津市市', 224, 0, 0, 'Jinshi Shi', 'JSS', 0);
INSERT INTO `ln_region` VALUES (2244, '430801', '市辖区', 225, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (2245, '430802', '永定区', 225, 0, 0, 'Yongding Qu', 'YDQ', 0);
INSERT INTO `ln_region` VALUES (2246, '430811', '武陵源区', 225, 0, 0, 'Wulingyuan Qu', 'WLY', 0);
INSERT INTO `ln_region` VALUES (2247, '430821', '慈利县', 225, 0, 0, 'Cili Xian', 'CLI', 0);
INSERT INTO `ln_region` VALUES (2248, '430822', '桑植县', 225, 0, 0, 'Sangzhi Xian', 'SZT', 0);
INSERT INTO `ln_region` VALUES (2249, '430901', '市辖区', 226, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (2250, '430902', '资阳区', 226, 0, 0, 'Ziyang Qu', 'ZYC', 0);
INSERT INTO `ln_region` VALUES (2251, '430903', '赫山区', 226, 0, 0, 'Heshan Qu', 'HSY', 0);
INSERT INTO `ln_region` VALUES (2252, '430921', '南县', 226, 0, 0, 'Nan Xian', 'NXN', 0);
INSERT INTO `ln_region` VALUES (2253, '430922', '桃江县', 226, 0, 0, 'Taojiang Xian', 'TJG', 0);
INSERT INTO `ln_region` VALUES (2254, '430923', '安化县', 226, 0, 0, 'Anhua Xian', 'ANH', 0);
INSERT INTO `ln_region` VALUES (2255, '430981', '沅江市', 226, 0, 0, 'Yuanjiang Shi', 'YJS', 0);
INSERT INTO `ln_region` VALUES (2256, '431001', '市辖区', 227, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (2257, '431002', '北湖区', 227, 0, 0, 'Beihu Qu', 'BHQ', 0);
INSERT INTO `ln_region` VALUES (2258, '431003', '苏仙区', 227, 0, 0, 'Suxian Qu', '2', 0);
INSERT INTO `ln_region` VALUES (2259, '431021', '桂阳县', 227, 0, 0, 'Guiyang Xian', 'GYX', 0);
INSERT INTO `ln_region` VALUES (2260, '431022', '宜章县', 227, 0, 0, 'yizhang Xian', 'YZA', 0);
INSERT INTO `ln_region` VALUES (2261, '431023', '永兴县', 227, 0, 0, 'Yongxing Xian', 'YXX', 0);
INSERT INTO `ln_region` VALUES (2262, '431024', '嘉禾县', 227, 0, 0, 'Jiahe Xian', 'JAH', 0);
INSERT INTO `ln_region` VALUES (2263, '431025', '临武县', 227, 0, 0, 'Linwu Xian', 'LWX', 0);
INSERT INTO `ln_region` VALUES (2264, '431026', '汝城县', 227, 0, 0, 'Rucheng Xian', 'RCE', 0);
INSERT INTO `ln_region` VALUES (2265, '431027', '桂东县', 227, 0, 0, 'Guidong Xian', 'GDO', 0);
INSERT INTO `ln_region` VALUES (2266, '431028', '安仁县', 227, 0, 0, 'Anren Xian', 'ARN', 0);
INSERT INTO `ln_region` VALUES (2267, '431081', '资兴市', 227, 0, 0, 'Zixing Shi', 'ZXG', 0);
INSERT INTO `ln_region` VALUES (2268, '431101', '市辖区', 228, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (2270, '431103', '冷水滩区', 228, 0, 0, 'Lengshuitan Qu', 'LST', 0);
INSERT INTO `ln_region` VALUES (2271, '431121', '祁阳县', 228, 0, 0, 'Qiyang Xian', 'QJY', 0);
INSERT INTO `ln_region` VALUES (2272, '431122', '东安县', 228, 0, 0, 'Dong,an Xian', 'DOA', 0);
INSERT INTO `ln_region` VALUES (2273, '431123', '双牌县', 228, 0, 0, 'Shuangpai Xian', 'SPA', 0);
INSERT INTO `ln_region` VALUES (2274, '431124', '道县', 228, 0, 0, 'Dao Xian', 'DAO', 0);
INSERT INTO `ln_region` VALUES (2275, '431125', '江永县', 228, 0, 0, 'Jiangyong Xian', 'JYD', 0);
INSERT INTO `ln_region` VALUES (2276, '431126', '宁远县', 228, 0, 0, 'Ningyuan Xian', 'NYN', 0);
INSERT INTO `ln_region` VALUES (2277, '431127', '蓝山县', 228, 0, 0, 'Lanshan Xian', 'LNS', 0);
INSERT INTO `ln_region` VALUES (2278, '431128', '新田县', 228, 0, 0, 'Xintian Xian', 'XTN', 0);
INSERT INTO `ln_region` VALUES (2279, '431129', '江华瑶族自治县', 228, 0, 0, 'Jianghua Yaozu Zizhixian', 'JHX', 0);
INSERT INTO `ln_region` VALUES (2280, '431201', '市辖区', 229, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (2281, '431202', '鹤城区', 229, 0, 0, 'Hecheng Qu', 'HCG', 0);
INSERT INTO `ln_region` VALUES (2282, '431221', '中方县', 229, 0, 0, 'Zhongfang Xian', 'ZFX', 0);
INSERT INTO `ln_region` VALUES (2283, '431222', '沅陵县', 229, 0, 0, 'Yuanling Xian', 'YNL', 0);
INSERT INTO `ln_region` VALUES (2284, '431223', '辰溪县', 229, 0, 0, 'Chenxi Xian', 'CXX', 0);
INSERT INTO `ln_region` VALUES (2285, '431224', '溆浦县', 229, 0, 0, 'Xupu Xian', 'XUP', 0);
INSERT INTO `ln_region` VALUES (2286, '431225', '会同县', 229, 0, 0, 'Huitong Xian', 'HTG', 0);
INSERT INTO `ln_region` VALUES (2287, '431226', '麻阳苗族自治县', 229, 0, 0, 'Mayang Miaozu Zizhixian', 'MYX', 0);
INSERT INTO `ln_region` VALUES (2288, '431227', '新晃侗族自治县', 229, 0, 0, 'Xinhuang Dongzu Zizhixian', 'XHD', 0);
INSERT INTO `ln_region` VALUES (2289, '431228', '芷江侗族自治县', 229, 0, 0, 'Zhijiang Dongzu Zizhixian', 'ZJX', 0);
INSERT INTO `ln_region` VALUES (2290, '431229', '靖州苗族侗族自治县', 229, 0, 0, 'Jingzhou Miaozu Dongzu Zizhixian', 'JZO', 0);
INSERT INTO `ln_region` VALUES (2291, '431230', '通道侗族自治县', 229, 0, 0, 'Tongdao Dongzu Zizhixian', 'TDD', 0);
INSERT INTO `ln_region` VALUES (2292, '431281', '洪江市', 229, 0, 0, 'Hongjiang Shi', 'HGJ', 0);
INSERT INTO `ln_region` VALUES (2293, '431301', '市辖区', 230, 0, 0, '1', '2', 0);
INSERT INTO `ln_region` VALUES (2294, '431302', '娄星区', 230, 0, 0, 'Louxing Qu', '2', 0);
INSERT INTO `ln_region` VALUES (2295, '431321', '双峰县', 230, 0, 0, 'Shuangfeng Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2296, '431322', '新化县', 230, 0, 0, 'Xinhua Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2297, '431381', '冷水江市', 230, 0, 0, 'Lengshuijiang Shi', '2', 0);
INSERT INTO `ln_region` VALUES (2298, '431382', '涟源市', 230, 0, 0, 'Lianyuan Shi', '2', 0);
INSERT INTO `ln_region` VALUES (2299, '433101', '吉首市', 231, 0, 0, 'Jishou Shi', 'JSO', 0);
INSERT INTO `ln_region` VALUES (2300, '433122', '泸溪县', 231, 0, 0, 'Luxi Xian', 'LXW', 0);
INSERT INTO `ln_region` VALUES (2301, '433123', '凤凰县', 231, 0, 0, 'Fenghuang Xian', 'FHX', 0);
INSERT INTO `ln_region` VALUES (2302, '433124', '花垣县', 231, 0, 0, 'Huayuan Xian', 'HYH', 0);
INSERT INTO `ln_region` VALUES (2303, '433125', '保靖县', 231, 0, 0, 'Baojing Xian', 'BJG', 0);
INSERT INTO `ln_region` VALUES (2304, '433126', '古丈县', 231, 0, 0, 'Guzhang Xian', 'GZG', 0);
INSERT INTO `ln_region` VALUES (2305, '433127', '永顺县', 231, 0, 0, 'Yongshun Xian', 'YSF', 0);
INSERT INTO `ln_region` VALUES (2306, '433130', '龙山县', 231, 0, 0, 'Longshan Xian', 'LSR', 0);
INSERT INTO `ln_region` VALUES (2307, '440101', '市辖区', 232, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (2308, '440115', '南沙区', 232, 0, 0, 'Nansha Qu', '2', 0);
INSERT INTO `ln_region` VALUES (2309, '440103', '荔湾区', 232, 0, 0, 'Liwan Qu', 'LWQ', 0);
INSERT INTO `ln_region` VALUES (2310, '440104', '越秀区', 232, 0, 0, 'Yuexiu Qu', 'YXU', 0);
INSERT INTO `ln_region` VALUES (2311, '440105', '海珠区', 232, 0, 0, 'Haizhu Qu', 'HZU', 0);
INSERT INTO `ln_region` VALUES (2312, '440106', '天河区', 232, 0, 0, 'Tianhe Qu', 'THQ', 0);
INSERT INTO `ln_region` VALUES (2313, '440116', '萝岗区', 232, 0, 0, 'Luogang Qu', '2', 0);
INSERT INTO `ln_region` VALUES (2314, '440111', '白云区', 232, 0, 0, 'Baiyun Qu', 'BYN', 0);
INSERT INTO `ln_region` VALUES (2315, '440112', '黄埔区', 232, 0, 0, 'Huangpu Qu', 'HPU', 0);
INSERT INTO `ln_region` VALUES (2316, '440113', '番禺区', 232, 0, 0, 'Panyu Qu', 'PNY', 0);
INSERT INTO `ln_region` VALUES (2317, '440114', '花都区', 232, 0, 0, 'Huadu Qu', 'HDU', 0);
INSERT INTO `ln_region` VALUES (2318, '440183', '增城市', 232, 0, 0, 'Zengcheng Shi', 'ZEC', 0);
INSERT INTO `ln_region` VALUES (2319, '440184', '从化市', 232, 0, 0, 'Conghua Shi', 'CNH', 0);
INSERT INTO `ln_region` VALUES (2320, '440201', '市辖区', 233, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (2321, '440203', '武江区', 233, 0, 0, 'Wujiang Qu', 'WJQ', 0);
INSERT INTO `ln_region` VALUES (2322, '440204', '浈江区', 233, 0, 0, 'Zhenjiang Qu', 'ZJQ', 0);
INSERT INTO `ln_region` VALUES (2323, '440205', '曲江区', 233, 0, 0, 'Qujiang Qu', '2', 0);
INSERT INTO `ln_region` VALUES (2324, '440222', '始兴县', 233, 0, 0, 'Shixing Xian', 'SXX', 0);
INSERT INTO `ln_region` VALUES (2325, '440224', '仁化县', 233, 0, 0, 'Renhua Xian', 'RHA', 0);
INSERT INTO `ln_region` VALUES (2326, '440229', '翁源县', 233, 0, 0, 'Wengyuan Xian', 'WYN', 0);
INSERT INTO `ln_region` VALUES (2327, '440232', '乳源瑶族自治县', 233, 0, 0, 'Ruyuan Yaozu Zizhixian', 'RYN', 0);
INSERT INTO `ln_region` VALUES (2328, '440233', '新丰县', 233, 0, 0, 'Xinfeng Xian', 'XFY', 0);
INSERT INTO `ln_region` VALUES (2329, '440281', '乐昌市', 233, 0, 0, 'Lechang Shi', 'LEC', 0);
INSERT INTO `ln_region` VALUES (2330, '440282', '南雄市', 233, 0, 0, 'Nanxiong Shi', 'NXS', 0);
INSERT INTO `ln_region` VALUES (2331, '440301', '市辖区', 234, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (2332, '440303', '罗湖区', 234, 0, 0, 'Luohu Qu', 'LHQ', 0);
INSERT INTO `ln_region` VALUES (2333, '440304', '福田区', 234, 0, 0, 'Futian Qu', 'FTN', 0);
INSERT INTO `ln_region` VALUES (2334, '440305', '南山区', 234, 0, 0, 'Nanshan Qu', 'NSN', 0);
INSERT INTO `ln_region` VALUES (2335, '440306', '宝安区', 234, 0, 0, 'Bao,an Qu', 'BAQ', 0);
INSERT INTO `ln_region` VALUES (2336, '440307', '龙岗区', 234, 0, 0, 'Longgang Qu', 'LGG', 0);
INSERT INTO `ln_region` VALUES (2337, '440308', '盐田区', 234, 0, 0, 'Yan Tian Qu', 'YTQ', 0);
INSERT INTO `ln_region` VALUES (2338, '440401', '市辖区', 235, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (2339, '440402', '香洲区', 235, 0, 0, 'Xiangzhou Qu', 'XZQ', 0);
INSERT INTO `ln_region` VALUES (2340, '440403', '斗门区', 235, 0, 0, 'Doumen Qu', 'DOU', 0);
INSERT INTO `ln_region` VALUES (2341, '440404', '金湾区', 235, 0, 0, 'Jinwan Qu', 'JW Q', 0);
INSERT INTO `ln_region` VALUES (2342, '440501', '市辖区', 236, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (2343, '440507', '龙湖区', 236, 0, 0, 'Longhu Qu', 'LHH', 0);
INSERT INTO `ln_region` VALUES (2344, '440511', '金平区', 236, 0, 0, 'Jinping Qu', 'JPQ', 0);
INSERT INTO `ln_region` VALUES (2345, '440512', '濠江区', 236, 0, 0, 'Haojiang Qu', 'HJ Q', 0);
INSERT INTO `ln_region` VALUES (2346, '440513', '潮阳区', 236, 0, 0, 'Chaoyang  Qu', 'CHY', 0);
INSERT INTO `ln_region` VALUES (2347, '440514', '潮南区', 236, 0, 0, 'Chaonan Qu', 'CN Q', 0);
INSERT INTO `ln_region` VALUES (2348, '440515', '澄海区', 236, 0, 0, 'Chenghai QU', 'CHS', 0);
INSERT INTO `ln_region` VALUES (2349, '440523', '南澳县', 236, 0, 0, 'Nan,ao Xian', 'NAN', 0);
INSERT INTO `ln_region` VALUES (2350, '440601', '市辖区', 237, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (2351, '440604', '禅城区', 237, 0, 0, 'Chancheng Qu', 'CC Q', 0);
INSERT INTO `ln_region` VALUES (2352, '440605', '南海区', 237, 0, 0, 'Nanhai Shi', 'NAH', 0);
INSERT INTO `ln_region` VALUES (2353, '440606', '顺德区', 237, 0, 0, 'Shunde Shi', 'SUD', 0);
INSERT INTO `ln_region` VALUES (2354, '440607', '三水区', 237, 0, 0, 'Sanshui Shi', 'SJQ', 0);
INSERT INTO `ln_region` VALUES (2355, '440608', '高明区', 237, 0, 0, 'Gaoming Shi', 'GOM', 0);
INSERT INTO `ln_region` VALUES (2356, '440701', '市辖区', 238, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (2357, '440703', '蓬江区', 238, 0, 0, 'Pengjiang Qu', 'PJJ', 0);
INSERT INTO `ln_region` VALUES (2358, '440704', '江海区', 238, 0, 0, 'Jianghai Qu', 'JHI', 0);
INSERT INTO `ln_region` VALUES (2359, '440705', '新会区', 238, 0, 0, 'Xinhui Shi', 'XIN', 0);
INSERT INTO `ln_region` VALUES (2360, '440781', '台山市', 238, 0, 0, 'Taishan Shi', 'TSS', 0);
INSERT INTO `ln_region` VALUES (2361, '440783', '开平市', 238, 0, 0, 'Kaiping Shi', 'KPS', 0);
INSERT INTO `ln_region` VALUES (2362, '440784', '鹤山市', 238, 0, 0, 'Heshan Shi', 'HES', 0);
INSERT INTO `ln_region` VALUES (2363, '440785', '恩平市', 238, 0, 0, 'Enping Shi', 'ENP', 0);
INSERT INTO `ln_region` VALUES (2364, '440801', '市辖区', 239, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (2365, '440802', '赤坎区', 239, 0, 0, 'Chikan Qu', 'CKQ', 0);
INSERT INTO `ln_region` VALUES (2366, '440803', '霞山区', 239, 0, 0, 'Xiashan Qu', 'XAS', 0);
INSERT INTO `ln_region` VALUES (2367, '440804', '坡头区', 239, 0, 0, 'Potou Qu', 'PTU', 0);
INSERT INTO `ln_region` VALUES (2368, '440811', '麻章区', 239, 0, 0, 'Mazhang Qu', 'MZQ', 0);
INSERT INTO `ln_region` VALUES (2369, '440823', '遂溪县', 239, 0, 0, 'Suixi Xian', 'SXI', 0);
INSERT INTO `ln_region` VALUES (2370, '440825', '徐闻县', 239, 0, 0, 'Xuwen Xian', 'XWN', 0);
INSERT INTO `ln_region` VALUES (2371, '440881', '廉江市', 239, 0, 0, 'Lianjiang Shi', 'LJS', 0);
INSERT INTO `ln_region` VALUES (2372, '440882', '雷州市', 239, 0, 0, 'Leizhou Shi', 'LEZ', 0);
INSERT INTO `ln_region` VALUES (2373, '440883', '吴川市', 239, 0, 0, 'Wuchuan Shi', 'WCS', 0);
INSERT INTO `ln_region` VALUES (2374, '440901', '市辖区', 240, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (2375, '440902', '茂南区', 240, 0, 0, 'Maonan Qu', 'MNQ', 0);
INSERT INTO `ln_region` VALUES (2376, '440903', '茂港区', 240, 0, 0, 'Maogang Qu', 'MGQ', 0);
INSERT INTO `ln_region` VALUES (2377, '440923', '电白县', 240, 0, 0, 'Dianbai Xian', 'DBI', 0);
INSERT INTO `ln_region` VALUES (2378, '440981', '高州市', 240, 0, 0, 'Gaozhou Shi', 'GZO', 0);
INSERT INTO `ln_region` VALUES (2379, '440982', '化州市', 240, 0, 0, 'Huazhou Shi', 'HZY', 0);
INSERT INTO `ln_region` VALUES (2380, '440983', '信宜市', 240, 0, 0, 'Xinyi Shi', 'XYY', 0);
INSERT INTO `ln_region` VALUES (2381, '441201', '市辖区', 241, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (2382, '441202', '端州区', 241, 0, 0, 'Duanzhou Qu', 'DZQ', 0);
INSERT INTO `ln_region` VALUES (2383, '441203', '鼎湖区', 241, 0, 0, 'Dinghu Qu', 'DGH', 0);
INSERT INTO `ln_region` VALUES (2384, '441223', '广宁县', 241, 0, 0, 'Guangning Xian', 'GNG', 0);
INSERT INTO `ln_region` VALUES (2385, '441224', '怀集县', 241, 0, 0, 'Huaiji Xian', 'HJX', 0);
INSERT INTO `ln_region` VALUES (2386, '441225', '封开县', 241, 0, 0, 'Fengkai Xian', 'FKX', 0);
INSERT INTO `ln_region` VALUES (2387, '441226', '德庆县', 241, 0, 0, 'Deqing Xian', 'DQY', 0);
INSERT INTO `ln_region` VALUES (2388, '441283', '高要市', 241, 0, 0, 'Gaoyao Xian', 'GYY', 0);
INSERT INTO `ln_region` VALUES (2389, '441284', '四会市', 241, 0, 0, 'Sihui Shi', 'SHI', 0);
INSERT INTO `ln_region` VALUES (2390, '441301', '市辖区', 242, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (2391, '441302', '惠城区', 242, 0, 0, 'Huicheng Qu', 'HCQ', 0);
INSERT INTO `ln_region` VALUES (2392, '441303', '惠阳区', 242, 0, 0, 'Huiyang Shi', 'HUY', 0);
INSERT INTO `ln_region` VALUES (2393, '441322', '博罗县', 242, 0, 0, 'Boluo Xian', 'BOL', 0);
INSERT INTO `ln_region` VALUES (2394, '441323', '惠东县', 242, 0, 0, 'Huidong Xian', 'HID', 0);
INSERT INTO `ln_region` VALUES (2395, '441324', '龙门县', 242, 0, 0, 'Longmen Xian', 'LMN', 0);
INSERT INTO `ln_region` VALUES (2396, '441401', '市辖区', 243, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (2397, '441402', '梅江区', 243, 0, 0, 'Meijiang Qu', 'MJQ', 0);
INSERT INTO `ln_region` VALUES (2398, '441421', '梅县', 243, 0, 0, 'Mei Xian', 'MEX', 0);
INSERT INTO `ln_region` VALUES (2399, '441422', '大埔县', 243, 0, 0, 'Dabu Xian', 'DBX', 0);
INSERT INTO `ln_region` VALUES (2400, '441423', '丰顺县', 243, 0, 0, 'Fengshun Xian', 'FES', 0);
INSERT INTO `ln_region` VALUES (2401, '441424', '五华县', 243, 0, 0, 'Wuhua Xian', 'WHY', 0);
INSERT INTO `ln_region` VALUES (2402, '441426', '平远县', 243, 0, 0, 'Pingyuan Xian', 'PYY', 0);
INSERT INTO `ln_region` VALUES (2403, '441427', '蕉岭县', 243, 0, 0, 'Jiaoling Xian', 'JOL', 0);
INSERT INTO `ln_region` VALUES (2404, '441481', '兴宁市', 243, 0, 0, 'Xingning Shi', 'XNG', 0);
INSERT INTO `ln_region` VALUES (2405, '441501', '市辖区', 244, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (2406, '441502', '城区', 244, 0, 0, 'Chengqu', 'CQS', 0);
INSERT INTO `ln_region` VALUES (2407, '441521', '海丰县', 244, 0, 0, 'Haifeng Xian', 'HIF', 0);
INSERT INTO `ln_region` VALUES (2408, '441523', '陆河县', 244, 0, 0, 'Luhe Xian', 'LHY', 0);
INSERT INTO `ln_region` VALUES (2409, '441581', '陆丰市', 244, 0, 0, 'Lufeng Shi', 'LUF', 0);
INSERT INTO `ln_region` VALUES (2410, '441601', '市辖区', 245, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (2411, '441602', '源城区', 245, 0, 0, 'Yuancheng Qu', 'YCQ', 0);
INSERT INTO `ln_region` VALUES (2412, '441621', '紫金县', 245, 0, 0, 'Zijin Xian', 'ZJY', 0);
INSERT INTO `ln_region` VALUES (2413, '441622', '龙川县', 245, 0, 0, 'Longchuan Xian', 'LCY', 0);
INSERT INTO `ln_region` VALUES (2414, '441623', '连平县', 245, 0, 0, 'Lianping Xian', 'LNP', 0);
INSERT INTO `ln_region` VALUES (2415, '441624', '和平县', 245, 0, 0, 'Heping Xian', 'HPY', 0);
INSERT INTO `ln_region` VALUES (2416, '441625', '东源县', 245, 0, 0, 'Dongyuan Xian', 'DYN', 0);
INSERT INTO `ln_region` VALUES (2417, '441701', '市辖区', 246, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (2418, '441702', '江城区', 246, 0, 0, 'Jiangcheng Qu', 'JCQ', 0);
INSERT INTO `ln_region` VALUES (2419, '441721', '阳西县', 246, 0, 0, 'Yangxi Xian', 'YXY', 0);
INSERT INTO `ln_region` VALUES (2420, '441723', '阳东县', 246, 0, 0, 'Yangdong Xian', 'YGD', 0);
INSERT INTO `ln_region` VALUES (2421, '441781', '阳春市', 246, 0, 0, 'Yangchun Shi', 'YCU', 0);
INSERT INTO `ln_region` VALUES (2422, '441801', '市辖区', 247, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (2423, '441802', '清城区', 247, 0, 0, 'Qingcheng Qu', 'QCQ', 0);
INSERT INTO `ln_region` VALUES (2424, '441821', '佛冈县', 247, 0, 0, 'Fogang Xian', 'FGY', 0);
INSERT INTO `ln_region` VALUES (2425, '441823', '阳山县', 247, 0, 0, 'Yangshan Xian', 'YSN', 0);
INSERT INTO `ln_region` VALUES (2426, '441825', '连山壮族瑶族自治县', 247, 0, 0, 'Lianshan Zhuangzu Yaozu Zizhixian', 'LSZ', 0);
INSERT INTO `ln_region` VALUES (2427, '441826', '连南瑶族自治县', 247, 0, 0, 'Liannanyaozuzizhi Qu', '2', 0);
INSERT INTO `ln_region` VALUES (2428, '441827', '清新县', 247, 0, 0, 'Qingxin Xian', 'QGX', 0);
INSERT INTO `ln_region` VALUES (2429, '441881', '英德市', 247, 0, 0, 'Yingde Shi', 'YDS', 0);
INSERT INTO `ln_region` VALUES (2430, '441882', '连州市', 247, 0, 0, 'Lianzhou Shi', 'LZO', 0);
INSERT INTO `ln_region` VALUES (2431, '445101', '市辖区', 250, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (2432, '445102', '湘桥区', 250, 0, 0, 'Xiangqiao Qu', 'XQO', 0);
INSERT INTO `ln_region` VALUES (2433, '445121', '潮安县', 250, 0, 0, 'Chao,an Xian', 'CAY', 0);
INSERT INTO `ln_region` VALUES (2434, '445122', '饶平县', 250, 0, 0, 'Raoping Xian', 'RPG', 0);
INSERT INTO `ln_region` VALUES (2435, '445201', '市辖区', 251, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (2436, '445202', '榕城区', 251, 0, 0, 'Rongcheng Qu', 'RCH', 0);
INSERT INTO `ln_region` VALUES (2437, '445221', '揭东县', 251, 0, 0, 'Jiedong Xian', 'JDX', 0);
INSERT INTO `ln_region` VALUES (2438, '445222', '揭西县', 251, 0, 0, 'Jiexi Xian', 'JEX', 0);
INSERT INTO `ln_region` VALUES (2439, '445224', '惠来县', 251, 0, 0, 'Huilai Xian', 'HLY', 0);
INSERT INTO `ln_region` VALUES (2440, '445281', '普宁市', 251, 0, 0, 'Puning Shi', 'PNG', 0);
INSERT INTO `ln_region` VALUES (2441, '445301', '市辖区', 252, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (2442, '445302', '云城区', 252, 0, 0, 'Yuncheng Qu', 'YYF', 0);
INSERT INTO `ln_region` VALUES (2443, '445321', '新兴县', 252, 0, 0, 'Xinxing Xian', 'XNX', 0);
INSERT INTO `ln_region` VALUES (2444, '445322', '郁南县', 252, 0, 0, 'Yunan Xian', 'YNK', 0);
INSERT INTO `ln_region` VALUES (2445, '445323', '云安县', 252, 0, 0, 'Yun,an Xian', 'YUA', 0);
INSERT INTO `ln_region` VALUES (2446, '445381', '罗定市', 252, 0, 0, 'Luoding Shi', 'LUO', 0);
INSERT INTO `ln_region` VALUES (2447, '450101', '市辖区', 253, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (2448, '450102', '兴宁区', 253, 0, 0, 'Xingning Qu', 'XNE', 0);
INSERT INTO `ln_region` VALUES (2449, '450103', '青秀区', 253, 0, 0, 'Qingxiu Qu', '2', 0);
INSERT INTO `ln_region` VALUES (2450, '450105', '江南区', 253, 0, 0, 'Jiangnan Qu', 'JNA', 0);
INSERT INTO `ln_region` VALUES (2451, '450107', '西乡塘区', 253, 0, 0, 'Xixiangtang Qu', '2', 0);
INSERT INTO `ln_region` VALUES (2452, '450108', '良庆区', 253, 0, 0, 'Liangqing Qu', '2', 0);
INSERT INTO `ln_region` VALUES (2453, '450109', '邕宁区', 253, 0, 0, 'Yongning Qu', '2', 0);
INSERT INTO `ln_region` VALUES (2454, '450122', '武鸣县', 253, 0, 0, 'Wuming Xian', 'WMG', 0);
INSERT INTO `ln_region` VALUES (2455, '450123', '隆安县', 253, 0, 0, 'Long,an Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2456, '450124', '马山县', 253, 0, 0, 'Mashan Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2457, '450125', '上林县', 253, 0, 0, 'Shanglin Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2458, '450126', '宾阳县', 253, 0, 0, 'Binyang Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2459, '450127', '横县', 253, 0, 0, 'Heng Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2460, '450201', '市辖区', 254, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (2461, '450202', '城中区', 254, 0, 0, 'Chengzhong Qu', 'CZG', 0);
INSERT INTO `ln_region` VALUES (2462, '450203', '鱼峰区', 254, 0, 0, 'Yufeng Qu', 'YFQ', 0);
INSERT INTO `ln_region` VALUES (2463, '450204', '柳南区', 254, 0, 0, 'Liunan Qu', 'LNU', 0);
INSERT INTO `ln_region` VALUES (2464, '450205', '柳北区', 254, 0, 0, 'Liubei Qu', 'LBE', 0);
INSERT INTO `ln_region` VALUES (2465, '450221', '柳江县', 254, 0, 0, 'Liujiang Xian', 'LUJ', 0);
INSERT INTO `ln_region` VALUES (2466, '450222', '柳城县', 254, 0, 0, 'Liucheng Xian', 'LCB', 0);
INSERT INTO `ln_region` VALUES (2467, '450223', '鹿寨县', 254, 0, 0, 'Luzhai Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2468, '450224', '融安县', 254, 0, 0, 'Rong,an Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2469, '450225', '融水苗族自治县', 254, 0, 0, 'Rongshui Miaozu Zizhixian', '2', 0);
INSERT INTO `ln_region` VALUES (2470, '450226', '三江侗族自治县', 254, 0, 0, 'Sanjiang Dongzu Zizhixian', '2', 0);
INSERT INTO `ln_region` VALUES (2471, '450301', '市辖区', 255, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (2472, '450302', '秀峰区', 255, 0, 0, 'Xiufeng Qu', 'XUF', 0);
INSERT INTO `ln_region` VALUES (2473, '450303', '叠彩区', 255, 0, 0, 'Diecai Qu', 'DCA', 0);
INSERT INTO `ln_region` VALUES (2474, '450304', '象山区', 255, 0, 0, 'Xiangshan Qu', 'XSK', 0);
INSERT INTO `ln_region` VALUES (2475, '450305', '七星区', 255, 0, 0, 'Qixing Qu', 'QXG', 0);
INSERT INTO `ln_region` VALUES (2476, '450311', '雁山区', 255, 0, 0, 'Yanshan Qu', 'YSA', 0);
INSERT INTO `ln_region` VALUES (2477, '450321', '阳朔县', 255, 0, 0, 'Yangshuo Xian', 'YSO', 0);
INSERT INTO `ln_region` VALUES (2478, '450322', '临桂县', 255, 0, 0, 'Lingui Xian', 'LGI', 0);
INSERT INTO `ln_region` VALUES (2479, '450323', '灵川县', 255, 0, 0, 'Lingchuan Xian', 'LCU', 0);
INSERT INTO `ln_region` VALUES (2480, '450324', '全州县', 255, 0, 0, 'Quanzhou Xian', 'QZO', 0);
INSERT INTO `ln_region` VALUES (2481, '450325', '兴安县', 255, 0, 0, 'Xing,an Xian', 'XAG', 0);
INSERT INTO `ln_region` VALUES (2482, '450326', '永福县', 255, 0, 0, 'Yongfu Xian', 'YFU', 0);
INSERT INTO `ln_region` VALUES (2483, '450327', '灌阳县', 255, 0, 0, 'Guanyang Xian', 'GNY', 0);
INSERT INTO `ln_region` VALUES (2484, '450328', '龙胜各族自治县', 255, 0, 0, 'Longsheng Gezu Zizhixian', 'LSG', 0);
INSERT INTO `ln_region` VALUES (2485, '450329', '资源县', 255, 0, 0, 'Ziyuan Xian', 'ZYU', 0);
INSERT INTO `ln_region` VALUES (2486, '450330', '平乐县', 255, 0, 0, 'Pingle Xian', 'PLE', 0);
INSERT INTO `ln_region` VALUES (2487, '450331', '荔蒲县', 255, 0, 0, 'Lipu Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2488, '450332', '恭城瑶族自治县', 255, 0, 0, 'Gongcheng Yaozu Zizhixian', 'GGC', 0);
INSERT INTO `ln_region` VALUES (2489, '450401', '市辖区', 256, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (2490, '450403', '万秀区', 256, 0, 0, 'Wanxiu Qu', 'WXQ', 0);
INSERT INTO `ln_region` VALUES (2491, '450404', '蝶山区', 256, 0, 0, 'Dieshan Qu', 'DES', 0);
INSERT INTO `ln_region` VALUES (2492, '450405', '长洲区', 256, 0, 0, 'Changzhou Qu', '2', 0);
INSERT INTO `ln_region` VALUES (2493, '450421', '苍梧县', 256, 0, 0, 'Cangwu Xian', 'CAW', 0);
INSERT INTO `ln_region` VALUES (2494, '450422', '藤县', 256, 0, 0, 'Teng Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2495, '450423', '蒙山县', 256, 0, 0, 'Mengshan Xian', 'MSA', 0);
INSERT INTO `ln_region` VALUES (2496, '450481', '岑溪市', 256, 0, 0, 'Cenxi Shi', 'CEX', 0);
INSERT INTO `ln_region` VALUES (2497, '450501', '市辖区', 257, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (2498, '450502', '海城区', 257, 0, 0, 'Haicheng Qu', 'HCB', 0);
INSERT INTO `ln_region` VALUES (2499, '450503', '银海区', 257, 0, 0, 'Yinhai Qu', 'YHB', 0);
INSERT INTO `ln_region` VALUES (2500, '450512', '铁山港区', 257, 0, 0, 'Tieshangangqu ', 'TSG', 0);
INSERT INTO `ln_region` VALUES (2501, '450521', '合浦县', 257, 0, 0, 'Hepu Xian', 'HPX', 0);
INSERT INTO `ln_region` VALUES (2502, '450601', '市辖区', 258, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (2503, '450602', '港口区', 258, 0, 0, 'Gangkou Qu', 'GKQ', 0);
INSERT INTO `ln_region` VALUES (2504, '450603', '防城区', 258, 0, 0, 'Fangcheng Qu', 'FCQ', 0);
INSERT INTO `ln_region` VALUES (2505, '450621', '上思县', 258, 0, 0, 'Shangsi Xian', 'SGS', 0);
INSERT INTO `ln_region` VALUES (2506, '450681', '东兴市', 258, 0, 0, 'Dongxing Shi', 'DOX', 0);
INSERT INTO `ln_region` VALUES (2507, '450701', '市辖区', 259, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (2508, '450702', '钦南区', 259, 0, 0, 'Qinnan Qu', 'QNQ', 0);
INSERT INTO `ln_region` VALUES (2509, '450703', '钦北区', 259, 0, 0, 'Qinbei Qu', 'QBQ', 0);
INSERT INTO `ln_region` VALUES (2510, '450721', '灵山县', 259, 0, 0, 'Lingshan Xian', 'LSB', 0);
INSERT INTO `ln_region` VALUES (2511, '450722', '浦北县', 259, 0, 0, 'Pubei Xian', 'PBE', 0);
INSERT INTO `ln_region` VALUES (2512, '450801', '市辖区', 260, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (2513, '450802', '港北区', 260, 0, 0, 'Gangbei Qu', 'GBE', 0);
INSERT INTO `ln_region` VALUES (2514, '450803', '港南区', 260, 0, 0, 'Gangnan Qu', 'GNQ', 0);
INSERT INTO `ln_region` VALUES (2515, '450804', '覃塘区', 260, 0, 0, 'Tantang Qu', '2', 0);
INSERT INTO `ln_region` VALUES (2516, '450821', '平南县', 260, 0, 0, 'Pingnan Xian', 'PNN', 0);
INSERT INTO `ln_region` VALUES (2517, '450881', '桂平市', 260, 0, 0, 'Guiping Shi', 'GPS', 0);
INSERT INTO `ln_region` VALUES (2518, '450901', '市辖区', 261, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (2519, '450902', '玉州区', 261, 0, 0, 'Yuzhou Qu', 'YZO', 0);
INSERT INTO `ln_region` VALUES (2520, '450921', '容县', 261, 0, 0, 'Rong Xian', 'ROG', 0);
INSERT INTO `ln_region` VALUES (2521, '450922', '陆川县', 261, 0, 0, 'Luchuan Xian', 'LCJ', 0);
INSERT INTO `ln_region` VALUES (2522, '450923', '博白县', 261, 0, 0, 'Bobai Xian', 'BBA', 0);
INSERT INTO `ln_region` VALUES (2523, '450924', '兴业县', 261, 0, 0, 'Xingye Xian', 'XGY', 0);
INSERT INTO `ln_region` VALUES (2524, '450981', '北流市', 261, 0, 0, 'Beiliu Shi', 'BLS', 0);
INSERT INTO `ln_region` VALUES (2525, '451001', '市辖区', 262, 0, 0, '1', '2', 0);
INSERT INTO `ln_region` VALUES (2526, '451002', '右江区', 262, 0, 0, 'Youjiang Qu', '2', 0);
INSERT INTO `ln_region` VALUES (2527, '451021', '田阳县', 262, 0, 0, 'Tianyang Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2528, '451022', '田东县', 262, 0, 0, 'Tiandong Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2529, '451023', '平果县', 262, 0, 0, 'Pingguo Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2530, '451024', '德保县', 262, 0, 0, 'Debao Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2531, '451025', '靖西县', 262, 0, 0, 'Jingxi Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2532, '451026', '那坡县', 262, 0, 0, 'Napo Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2533, '451027', '凌云县', 262, 0, 0, 'Lingyun Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2534, '451028', '乐业县', 262, 0, 0, 'Leye Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2535, '451029', '田林县', 262, 0, 0, 'Tianlin Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2536, '451030', '西林县', 262, 0, 0, 'Xilin Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2537, '451031', '隆林各族自治县', 262, 0, 0, 'Longlin Gezu Zizhixian', '2', 0);
INSERT INTO `ln_region` VALUES (2538, '451101', '市辖区', 263, 0, 0, '1', '2', 0);
INSERT INTO `ln_region` VALUES (2539, '451102', '八步区', 263, 0, 0, 'Babu Qu', '2', 0);
INSERT INTO `ln_region` VALUES (2540, '451121', '昭平县', 263, 0, 0, 'Zhaoping Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2541, '451122', '钟山县', 263, 0, 0, 'Zhongshan Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2542, '451123', '富川瑶族自治县', 263, 0, 0, 'Fuchuan Yaozu Zizhixian', '2', 0);
INSERT INTO `ln_region` VALUES (2543, '451201', '市辖区', 264, 0, 0, '1', '2', 0);
INSERT INTO `ln_region` VALUES (2544, '451202', '金城江区', 264, 0, 0, 'Jinchengjiang Qu', '2', 0);
INSERT INTO `ln_region` VALUES (2545, '451221', '南丹县', 264, 0, 0, 'Nandan Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2546, '451222', '天峨县', 264, 0, 0, 'Tian,e Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2547, '451223', '凤山县', 264, 0, 0, 'Fengshan Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2548, '451224', '东兰县', 264, 0, 0, 'Donglan Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2549, '451225', '罗城仫佬族自治县', 264, 0, 0, 'Luocheng Mulaozu Zizhixian', '2', 0);
INSERT INTO `ln_region` VALUES (2550, '451226', '环江毛南族自治县', 264, 0, 0, 'Huanjiang Maonanzu Zizhixian', '2', 0);
INSERT INTO `ln_region` VALUES (2551, '451227', '巴马瑶族自治县', 264, 0, 0, 'Bama Yaozu Zizhixian', '2', 0);
INSERT INTO `ln_region` VALUES (2552, '451228', '都安瑶族自治县', 264, 0, 0, 'Du,an Yaozu Zizhixian', '2', 0);
INSERT INTO `ln_region` VALUES (2553, '451229', '大化瑶族自治县', 264, 0, 0, 'Dahua Yaozu Zizhixian', '2', 0);
INSERT INTO `ln_region` VALUES (2554, '451281', '宜州市', 264, 0, 0, 'Yizhou Shi', '2', 0);
INSERT INTO `ln_region` VALUES (2555, '451301', '市辖区', 265, 0, 0, '1', '2', 0);
INSERT INTO `ln_region` VALUES (2556, '451302', '兴宾区', 265, 0, 0, 'Xingbin Qu', '2', 0);
INSERT INTO `ln_region` VALUES (2557, '451321', '忻城县', 265, 0, 0, 'Xincheng Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2558, '451322', '象州县', 265, 0, 0, 'Xiangzhou Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2559, '451323', '武宣县', 265, 0, 0, 'Wuxuan Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2560, '451324', '金秀瑶族自治县', 265, 0, 0, 'Jinxiu Yaozu Zizhixian', '2', 0);
INSERT INTO `ln_region` VALUES (2561, '451381', '合山市', 265, 0, 0, 'Heshan Shi', '2', 0);
INSERT INTO `ln_region` VALUES (2562, '451401', '市辖区', 266, 0, 0, '1', '2', 0);
INSERT INTO `ln_region` VALUES (2563, '451402', '江洲区', 266, 0, 0, 'Jiangzhou Qu', '2', 0);
INSERT INTO `ln_region` VALUES (2564, '451421', '扶绥县', 266, 0, 0, 'Fusui Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2565, '451422', '宁明县', 266, 0, 0, 'Ningming Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2566, '451423', '龙州县', 266, 0, 0, 'Longzhou Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2567, '451424', '大新县', 266, 0, 0, 'Daxin Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2568, '451425', '天等县', 266, 0, 0, 'Tiandeng Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2569, '451481', '凭祥市', 266, 0, 0, 'Pingxiang Shi', '2', 0);
INSERT INTO `ln_region` VALUES (2570, '460101', '市辖区', 267, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (2571, '460105', '秀英区', 267, 0, 0, 'Xiuying Qu', 'XYH', 0);
INSERT INTO `ln_region` VALUES (2572, '460106', '龙华区', 267, 0, 0, 'LongHua Qu', 'LH', 0);
INSERT INTO `ln_region` VALUES (2573, '460107', '琼山区', 267, 0, 0, 'QiongShan Qu', 'QS', 0);
INSERT INTO `ln_region` VALUES (2574, '460108', '美兰区', 267, 0, 0, 'MeiLan Qu', 'ML', 0);
INSERT INTO `ln_region` VALUES (2575, '460201', '市辖区', 268, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (2576, '469001', '五指山市', 269, 0, 0, 'Wuzhishan Qu', '2', 0);
INSERT INTO `ln_region` VALUES (2577, '469002', '琼海市', 269, 0, 0, 'Qionghai Shi', '2', 0);
INSERT INTO `ln_region` VALUES (2578, '469003', '儋州市', 269, 0, 0, 'Danzhou Shi', '2', 0);
INSERT INTO `ln_region` VALUES (2579, '469005', '文昌市', 269, 0, 0, 'Wenchang Shi', '2', 0);
INSERT INTO `ln_region` VALUES (2580, '469006', '万宁市', 269, 0, 0, 'Wanning Shi', '2', 0);
INSERT INTO `ln_region` VALUES (2581, '469007', '东方市', 269, 0, 0, 'Dongfang Shi', '2', 0);
INSERT INTO `ln_region` VALUES (2582, '469021', '定安县', 269, 0, 0, 'Ding,an Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2583, '469022', '屯昌县', 269, 0, 0, 'Tunchang Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2584, '469023', '澄迈县', 269, 0, 0, 'Chengmai Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2585, '469024', '临高县', 269, 0, 0, 'Lingao Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2586, '469025', '白沙黎族自治县', 269, 0, 0, 'Baisha Lizu Zizhixian', '2', 0);
INSERT INTO `ln_region` VALUES (2587, '469026', '昌江黎族自治县', 269, 0, 0, 'Changjiang Lizu Zizhixian', '2', 0);
INSERT INTO `ln_region` VALUES (2588, '469027', '乐东黎族自治县', 269, 0, 0, 'Ledong Lizu Zizhixian', '2', 0);
INSERT INTO `ln_region` VALUES (2589, '469028', '陵水黎族自治县', 269, 0, 0, 'Lingshui Lizu Zizhixian', '2', 0);
INSERT INTO `ln_region` VALUES (2590, '469029', '保亭黎族苗族自治县', 269, 0, 0, 'Baoting Lizu Miaozu Zizhixian', '2', 0);
INSERT INTO `ln_region` VALUES (2591, '469030', '琼中黎族苗族自治县', 269, 0, 0, 'Qiongzhong Lizu Miaozu Zizhixian', '2', 0);
INSERT INTO `ln_region` VALUES (2592, '469031', '西沙群岛', 269, 0, 0, 'Xisha Qundao', '2', 0);
INSERT INTO `ln_region` VALUES (2593, '469032', '南沙群岛', 269, 0, 0, 'Nansha Qundao', '2', 0);
INSERT INTO `ln_region` VALUES (2594, '469033', '中沙群岛的岛礁及其海域', 269, 0, 0, 'Zhongsha Qundao de Daojiao Jiqi Haiyu', '2', 0);
INSERT INTO `ln_region` VALUES (2595, '500101', '万州区', 270, 0, 0, 'Wanzhou Qu', 'WZO ', 0);
INSERT INTO `ln_region` VALUES (2596, '500102', '涪陵区', 270, 0, 0, 'Fuling Qu', 'FLG', 0);
INSERT INTO `ln_region` VALUES (2597, '500103', '渝中区', 270, 0, 0, 'Yuzhong Qu', 'YZQ', 0);
INSERT INTO `ln_region` VALUES (2598, '500104', '大渡口区', 270, 0, 0, 'Dadukou Qu', 'DDK', 0);
INSERT INTO `ln_region` VALUES (2599, '500105', '江北区', 270, 0, 0, 'Jiangbei Qu', 'JBE', 0);
INSERT INTO `ln_region` VALUES (2600, '500106', '沙坪坝区', 270, 0, 0, 'Shapingba Qu', 'SPB', 0);
INSERT INTO `ln_region` VALUES (2601, '500107', '九龙坡区', 270, 0, 0, 'Jiulongpo Qu', 'JLP', 0);
INSERT INTO `ln_region` VALUES (2602, '500108', '南岸区', 270, 0, 0, 'Nan,an Qu', 'NAQ', 0);
INSERT INTO `ln_region` VALUES (2603, '500109', '北碚区', 270, 0, 0, 'Beibei Qu', 'BBE', 0);
INSERT INTO `ln_region` VALUES (2604, '500110', '万盛区', 270, 0, 0, 'Wansheng Qu', 'WSQ', 0);
INSERT INTO `ln_region` VALUES (2605, '500111', '双桥区', 270, 0, 0, 'Shuangqiao Qu', 'SQQ', 0);
INSERT INTO `ln_region` VALUES (2606, '500112', '渝北区', 270, 0, 0, 'Yubei Qu', 'YBE', 0);
INSERT INTO `ln_region` VALUES (2607, '500113', '巴南区', 270, 0, 0, 'Banan Qu', 'BNN', 0);
INSERT INTO `ln_region` VALUES (2608, '500114', '黔江区', 270, 0, 0, 'Qianjiang Qu', '2', 0);
INSERT INTO `ln_region` VALUES (2609, '500115', '长寿区', 270, 0, 0, 'Changshou Qu', '2', 0);
INSERT INTO `ln_region` VALUES (2610, '500222', '綦江县', 271, 0, 0, 'Qijiang Xian', 'QJG', 0);
INSERT INTO `ln_region` VALUES (2611, '500223', '潼南县', 271, 0, 0, 'Tongnan Xian', 'TNN', 0);
INSERT INTO `ln_region` VALUES (2612, '500224', '铜梁县', 271, 0, 0, 'Tongliang Xian', 'TGL', 0);
INSERT INTO `ln_region` VALUES (2613, '500225', '大足县', 271, 0, 0, 'Dazu Xian', 'DZX', 0);
INSERT INTO `ln_region` VALUES (2614, '500226', '荣昌县', 271, 0, 0, 'Rongchang Xian', 'RGC', 0);
INSERT INTO `ln_region` VALUES (2615, '500227', '璧山县', 271, 0, 0, 'Bishan Xian', 'BSY', 0);
INSERT INTO `ln_region` VALUES (2616, '500228', '梁平县', 271, 0, 0, 'Liangping Xian', 'LGP', 0);
INSERT INTO `ln_region` VALUES (2617, '500229', '城口县', 271, 0, 0, 'Chengkou Xian', 'CKO', 0);
INSERT INTO `ln_region` VALUES (2618, '500230', '丰都县', 271, 0, 0, 'Fengdu Xian', 'FDU', 0);
INSERT INTO `ln_region` VALUES (2619, '500231', '垫江县', 271, 0, 0, 'Dianjiang Xian', 'DJG', 0);
INSERT INTO `ln_region` VALUES (2620, '500232', '武隆县', 271, 0, 0, 'Wulong Xian', 'WLG', 0);
INSERT INTO `ln_region` VALUES (2621, '500233', '忠县', 271, 0, 0, 'Zhong Xian', 'ZHX', 0);
INSERT INTO `ln_region` VALUES (2622, '500234', '开县', 271, 0, 0, 'Kai Xian', 'KAI', 0);
INSERT INTO `ln_region` VALUES (2623, '500235', '云阳县', 271, 0, 0, 'Yunyang Xian', 'YNY', 0);
INSERT INTO `ln_region` VALUES (2624, '500236', '奉节县', 271, 0, 0, 'Fengjie Xian', 'FJE', 0);
INSERT INTO `ln_region` VALUES (2625, '500237', '巫山县', 271, 0, 0, 'Wushan Xian', 'WSN', 0);
INSERT INTO `ln_region` VALUES (2626, '500238', '巫溪县', 271, 0, 0, 'Wuxi Xian', 'WXX', 0);
INSERT INTO `ln_region` VALUES (2627, '500240', '石柱土家族自治县', 271, 0, 0, 'Shizhu Tujiazu Zizhixian', 'SZY', 0);
INSERT INTO `ln_region` VALUES (2628, '500241', '秀山土家族苗族自治县', 271, 0, 0, 'Xiushan Tujiazu Miaozu Zizhixian', 'XUS', 0);
INSERT INTO `ln_region` VALUES (2629, '500242', '酉阳土家族苗族自治县', 271, 0, 0, 'Youyang Tujiazu Miaozu Zizhixian', 'YUY', 0);
INSERT INTO `ln_region` VALUES (2630, '500243', '彭水苗族土家族自治县', 271, 0, 0, 'Pengshui Miaozu Tujiazu Zizhixian', 'PSU', 0);
INSERT INTO `ln_region` VALUES (2631, '500116', '江津区', 272, 0, 0, 'Jiangjin Shi', '2', 0);
INSERT INTO `ln_region` VALUES (2632, '500117', '合川区', 272, 0, 0, 'Hechuan Shi', '2', 0);
INSERT INTO `ln_region` VALUES (2633, '500118', '永川区', 272, 0, 0, 'Yongchuan Shi', '2', 0);
INSERT INTO `ln_region` VALUES (2634, '500119', '南川区', 272, 0, 0, 'Nanchuan Shi', '2', 0);
INSERT INTO `ln_region` VALUES (2635, '510101', '市辖区', 273, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (2636, '510104', '锦江区', 273, 0, 0, 'Jinjiang Qu', 'JJQ', 0);
INSERT INTO `ln_region` VALUES (2637, '510105', '青羊区', 273, 0, 0, 'Qingyang Qu', 'QYQ', 0);
INSERT INTO `ln_region` VALUES (2638, '510106', '金牛区', 273, 0, 0, 'Jinniu Qu', 'JNU', 0);
INSERT INTO `ln_region` VALUES (2639, '510107', '武侯区', 273, 0, 0, 'Wuhou Qu', 'WHQ', 0);
INSERT INTO `ln_region` VALUES (2640, '510108', '成华区', 273, 0, 0, 'Chenghua Qu', 'CHQ', 0);
INSERT INTO `ln_region` VALUES (2641, '510112', '龙泉驿区', 273, 0, 0, 'Longquanyi Qu', 'LQY', 0);
INSERT INTO `ln_region` VALUES (2642, '510113', '青白江区', 273, 0, 0, 'Qingbaijiang Qu', 'QBJ', 0);
INSERT INTO `ln_region` VALUES (2643, '510114', '新都区', 273, 0, 0, 'Xindu Qu', '2', 0);
INSERT INTO `ln_region` VALUES (2644, '510115', '温江区', 273, 0, 0, 'Wenjiang Qu', '2', 0);
INSERT INTO `ln_region` VALUES (2645, '510121', '金堂县', 273, 0, 0, 'Jintang Xian', 'JNT', 0);
INSERT INTO `ln_region` VALUES (2646, '510122', '双流县', 273, 0, 0, 'Shuangliu Xian', 'SLU', 0);
INSERT INTO `ln_region` VALUES (2647, '510124', '郫县', 273, 0, 0, 'Pi Xian', 'PIX', 0);
INSERT INTO `ln_region` VALUES (2648, '510129', '大邑县', 273, 0, 0, 'Dayi Xian', 'DYI', 0);
INSERT INTO `ln_region` VALUES (2649, '510131', '蒲江县', 273, 0, 0, 'Pujiang Xian', 'PJX', 0);
INSERT INTO `ln_region` VALUES (2650, '510132', '新津县', 273, 0, 0, 'Xinjin Xian', 'XJC', 0);
INSERT INTO `ln_region` VALUES (2651, '510181', '都江堰市', 273, 0, 0, 'Dujiangyan Shi', 'DJY', 0);
INSERT INTO `ln_region` VALUES (2652, '510182', '彭州市', 273, 0, 0, 'Pengzhou Shi', 'PZS', 0);
INSERT INTO `ln_region` VALUES (2653, '510183', '邛崃市', 273, 0, 0, 'Qionglai Shi', 'QLA', 0);
INSERT INTO `ln_region` VALUES (2654, '510184', '崇州市', 273, 0, 0, 'Chongzhou Shi', 'CZO', 0);
INSERT INTO `ln_region` VALUES (2655, '510301', '市辖区', 274, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (2656, '510302', '自流井区', 274, 0, 0, 'Ziliujing Qu', 'ZLJ', 0);
INSERT INTO `ln_region` VALUES (2657, '510303', '贡井区', 274, 0, 0, 'Gongjing Qu', '2', 0);
INSERT INTO `ln_region` VALUES (2658, '510304', '大安区', 274, 0, 0, 'Da,an Qu', 'DAQ', 0);
INSERT INTO `ln_region` VALUES (2659, '510311', '沿滩区', 274, 0, 0, 'Yantan Qu', 'YTN', 0);
INSERT INTO `ln_region` VALUES (2660, '510321', '荣县', 274, 0, 0, 'Rong Xian', 'RGX', 0);
INSERT INTO `ln_region` VALUES (2661, '510322', '富顺县', 274, 0, 0, 'Fushun Xian', 'FSH', 0);
INSERT INTO `ln_region` VALUES (2662, '510401', '市辖区', 275, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (2663, '510402', '东区', 275, 0, 0, 'Dong Qu', 'DQP', 0);
INSERT INTO `ln_region` VALUES (2664, '510403', '西区', 275, 0, 0, 'Xi Qu', 'XIQ', 0);
INSERT INTO `ln_region` VALUES (2665, '510411', '仁和区', 275, 0, 0, 'Renhe Qu', 'RHQ', 0);
INSERT INTO `ln_region` VALUES (2666, '510421', '米易县', 275, 0, 0, 'Miyi Xian', 'MIY', 0);
INSERT INTO `ln_region` VALUES (2667, '510422', '盐边县', 275, 0, 0, 'Yanbian Xian', 'YBN', 0);
INSERT INTO `ln_region` VALUES (2668, '510501', '市辖区', 276, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (2669, '510502', '江阳区', 276, 0, 0, 'Jiangyang Qu', 'JYB', 0);
INSERT INTO `ln_region` VALUES (2670, '510503', '纳溪区', 276, 0, 0, 'Naxi Qu', 'NXI', 0);
INSERT INTO `ln_region` VALUES (2671, '510504', '龙马潭区', 276, 0, 0, 'Longmatan Qu', 'LMT', 0);
INSERT INTO `ln_region` VALUES (2672, '510521', '泸县', 276, 0, 0, 'Lu Xian', 'LUX', 0);
INSERT INTO `ln_region` VALUES (2673, '510522', '合江县', 276, 0, 0, 'Hejiang Xian', 'HEJ', 0);
INSERT INTO `ln_region` VALUES (2674, '510524', '叙永县', 276, 0, 0, 'Xuyong Xian', 'XYO', 0);
INSERT INTO `ln_region` VALUES (2675, '510525', '古蔺县', 276, 0, 0, 'Gulin Xian', 'GUL', 0);
INSERT INTO `ln_region` VALUES (2676, '510601', '市辖区', 277, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (2677, '510603', '旌阳区', 277, 0, 0, 'Jingyang Qu', 'JYF', 0);
INSERT INTO `ln_region` VALUES (2678, '510623', '中江县', 277, 0, 0, 'Zhongjiang Xian', 'ZGJ', 0);
INSERT INTO `ln_region` VALUES (2679, '510626', '罗江县', 277, 0, 0, 'Luojiang Xian', 'LOJ', 0);
INSERT INTO `ln_region` VALUES (2680, '510681', '广汉市', 277, 0, 0, 'Guanghan Shi', 'GHN', 0);
INSERT INTO `ln_region` VALUES (2681, '510682', '什邡市', 277, 0, 0, 'Shifang Shi', 'SFS', 0);
INSERT INTO `ln_region` VALUES (2682, '510683', '绵竹市', 277, 0, 0, 'Jinzhou Shi', 'MZU', 0);
INSERT INTO `ln_region` VALUES (2683, '510701', '市辖区', 278, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (2684, '510703', '涪城区', 278, 0, 0, 'Fucheng Qu', 'FCM', 0);
INSERT INTO `ln_region` VALUES (2685, '510704', '游仙区', 278, 0, 0, 'Youxian Qu', 'YXM', 0);
INSERT INTO `ln_region` VALUES (2686, '510722', '三台县', 278, 0, 0, 'Santai Xian', 'SNT', 0);
INSERT INTO `ln_region` VALUES (2687, '510723', '盐亭县', 278, 0, 0, 'Yanting Xian', 'YTC', 0);
INSERT INTO `ln_region` VALUES (2688, '510724', '安县', 278, 0, 0, 'An Xian', 'AXN', 0);
INSERT INTO `ln_region` VALUES (2689, '510725', '梓潼县', 278, 0, 0, 'Zitong Xian', 'ZTG', 0);
INSERT INTO `ln_region` VALUES (2690, '510726', '北川羌族自治县', 278, 0, 0, 'Beichuanqiangzuzizhi Qu', '2', 0);
INSERT INTO `ln_region` VALUES (2691, '510727', '平武县', 278, 0, 0, 'Pingwu Xian', 'PWU', 0);
INSERT INTO `ln_region` VALUES (2692, '510781', '江油市', 278, 0, 0, 'Jiangyou Shi', 'JYO', 0);
INSERT INTO `ln_region` VALUES (2693, '510801', '市辖区', 279, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (2694, '511002', '市中区', 279, 0, 0, 'Shizhong Qu', 'SZM', 0);
INSERT INTO `ln_region` VALUES (2695, '510811', '元坝区', 279, 0, 0, 'Yuanba Qu', 'YBQ', 0);
INSERT INTO `ln_region` VALUES (2696, '510812', '朝天区', 279, 0, 0, 'Chaotian Qu', 'CTN', 0);
INSERT INTO `ln_region` VALUES (2697, '510821', '旺苍县', 279, 0, 0, 'Wangcang Xian', 'WGC', 0);
INSERT INTO `ln_region` VALUES (2698, '510822', '青川县', 279, 0, 0, 'Qingchuan Xian', 'QCX', 0);
INSERT INTO `ln_region` VALUES (2699, '510823', '剑阁县', 279, 0, 0, 'Jiange Xian', 'JGE', 0);
INSERT INTO `ln_region` VALUES (2700, '510824', '苍溪县', 279, 0, 0, 'Cangxi Xian', 'CXC', 0);
INSERT INTO `ln_region` VALUES (2701, '510901', '市辖区', 280, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (2702, '510903', '船山区', 280, 0, 0, 'Chuanshan Qu', '2', 0);
INSERT INTO `ln_region` VALUES (2703, '510904', '安居区', 280, 0, 0, 'Anju Qu', '2', 0);
INSERT INTO `ln_region` VALUES (2704, '510921', '蓬溪县', 280, 0, 0, 'Pengxi Xian', 'PXI', 0);
INSERT INTO `ln_region` VALUES (2705, '510922', '射洪县', 280, 0, 0, 'Shehong Xian', 'SHE', 0);
INSERT INTO `ln_region` VALUES (2706, '510923', '大英县', 280, 0, 0, 'Daying Xian', 'DAY', 0);
INSERT INTO `ln_region` VALUES (2707, '511001', '市辖区', 281, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (2708, '511002', '市中区', 281, 0, 0, 'Shizhong Qu', 'SZM', 0);
INSERT INTO `ln_region` VALUES (2709, '511011', '东兴区', 281, 0, 0, 'Dongxing Qu', 'DXQ', 0);
INSERT INTO `ln_region` VALUES (2710, '511024', '威远县', 281, 0, 0, 'Weiyuan Xian', 'WYU', 0);
INSERT INTO `ln_region` VALUES (2711, '511025', '资中县', 281, 0, 0, 'Zizhong Xian', 'ZZC', 0);
INSERT INTO `ln_region` VALUES (2712, '511028', '隆昌县', 281, 0, 0, 'Longchang Xian', 'LCC', 0);
INSERT INTO `ln_region` VALUES (2713, '511101', '市辖区', 282, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (2714, '511102', '市中区', 282, 0, 0, 'Shizhong Qu', 'SZP', 0);
INSERT INTO `ln_region` VALUES (2715, '511111', '沙湾区', 282, 0, 0, 'Shawan Qu', 'SWN', 0);
INSERT INTO `ln_region` VALUES (2716, '511112', '五通桥区', 282, 0, 0, 'Wutongqiao Qu', 'WTQ', 0);
INSERT INTO `ln_region` VALUES (2717, '511113', '金口河区', 282, 0, 0, 'Jinkouhe Qu', 'JKH', 0);
INSERT INTO `ln_region` VALUES (2718, '511123', '犍为县', 282, 0, 0, 'Qianwei Xian', 'QWE', 0);
INSERT INTO `ln_region` VALUES (2719, '511124', '井研县', 282, 0, 0, 'Jingyan Xian', 'JYA', 0);
INSERT INTO `ln_region` VALUES (2720, '511126', '夹江县', 282, 0, 0, 'Jiajiang Xian', 'JJC', 0);
INSERT INTO `ln_region` VALUES (2721, '511129', '沐川县', 282, 0, 0, 'Muchuan Xian', 'MCH', 0);
INSERT INTO `ln_region` VALUES (2722, '511132', '峨边彝族自治县', 282, 0, 0, 'Ebian Yizu Zizhixian', 'EBN', 0);
INSERT INTO `ln_region` VALUES (2723, '511133', '马边彝族自治县', 282, 0, 0, 'Mabian Yizu Zizhixian', 'MBN', 0);
INSERT INTO `ln_region` VALUES (2724, '511181', '峨眉山市', 282, 0, 0, 'Emeishan Shi', 'EMS', 0);
INSERT INTO `ln_region` VALUES (2725, '511301', '市辖区', 283, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (2726, '511302', '顺庆区', 283, 0, 0, 'Shunqing Xian', 'SQG', 0);
INSERT INTO `ln_region` VALUES (2727, '511303', '高坪区', 283, 0, 0, 'Gaoping Qu', 'GPQ', 0);
INSERT INTO `ln_region` VALUES (2728, '511304', '嘉陵区', 283, 0, 0, 'Jialing Qu', 'JLG', 0);
INSERT INTO `ln_region` VALUES (2729, '511321', '南部县', 283, 0, 0, 'Nanbu Xian', 'NBU', 0);
INSERT INTO `ln_region` VALUES (2730, '511322', '营山县', 283, 0, 0, 'Yingshan Xian', 'YGS', 0);
INSERT INTO `ln_region` VALUES (2731, '511323', '蓬安县', 283, 0, 0, 'Peng,an Xian', 'PGA', 0);
INSERT INTO `ln_region` VALUES (2732, '511324', '仪陇县', 283, 0, 0, 'Yilong Xian', 'YLC', 0);
INSERT INTO `ln_region` VALUES (2733, '511325', '西充县', 283, 0, 0, 'Xichong Xian', 'XCO', 0);
INSERT INTO `ln_region` VALUES (2734, '511381', '阆中市', 283, 0, 0, 'Langzhong Shi', 'LZJ', 0);
INSERT INTO `ln_region` VALUES (2735, '511401', '市辖区', 284, 0, 0, '1', '2', 0);
INSERT INTO `ln_region` VALUES (2736, '511402', '东坡区', 284, 0, 0, 'Dongpo Qu', '2', 0);
INSERT INTO `ln_region` VALUES (2737, '511421', '仁寿县', 284, 0, 0, 'Renshou Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2738, '511422', '彭山县', 284, 0, 0, 'Pengshan Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2739, '511423', '洪雅县', 284, 0, 0, 'Hongya Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2740, '511424', '丹棱县', 284, 0, 0, 'Danling Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2741, '511425', '青神县', 284, 0, 0, 'Qingshen Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2742, '511501', '市辖区', 285, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (2743, '511502', '翠屏区', 285, 0, 0, 'Cuiping Qu', 'CPQ', 0);
INSERT INTO `ln_region` VALUES (2744, '511521', '宜宾县', 285, 0, 0, 'Yibin Xian', 'YBX', 0);
INSERT INTO `ln_region` VALUES (2745, '511522', '南溪县', 285, 0, 0, 'Nanxi Xian', 'NNX', 0);
INSERT INTO `ln_region` VALUES (2746, '511523', '江安县', 285, 0, 0, 'Jiang,an Xian', 'JAC', 0);
INSERT INTO `ln_region` VALUES (2747, '511524', '长宁县', 285, 0, 0, 'Changning Xian', 'CNX', 0);
INSERT INTO `ln_region` VALUES (2748, '511525', '高县', 285, 0, 0, 'Gao Xian', 'GAO', 0);
INSERT INTO `ln_region` VALUES (2749, '511526', '珙县', 285, 0, 0, 'Gong Xian', 'GOG', 0);
INSERT INTO `ln_region` VALUES (2750, '511527', '筠连县', 285, 0, 0, 'Junlian Xian', 'JNL', 0);
INSERT INTO `ln_region` VALUES (2751, '511528', '兴文县', 285, 0, 0, 'Xingwen Xian', 'XWC', 0);
INSERT INTO `ln_region` VALUES (2752, '511529', '屏山县', 285, 0, 0, 'Pingshan Xian', 'PSC', 0);
INSERT INTO `ln_region` VALUES (2753, '511601', '市辖区', 286, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (2754, '511602', '广安区', 286, 0, 0, 'Guang,an Qu', 'GAQ', 0);
INSERT INTO `ln_region` VALUES (2755, '511621', '岳池县', 286, 0, 0, 'Yuechi Xian', 'YCC', 0);
INSERT INTO `ln_region` VALUES (2756, '511622', '武胜县', 286, 0, 0, 'Wusheng Xian', 'WSG', 0);
INSERT INTO `ln_region` VALUES (2757, '511623', '邻水县', 286, 0, 0, 'Linshui Xian', 'LSH', 0);
INSERT INTO `ln_region` VALUES (2759, '511701', '市辖区', 287, 0, 0, '1', '2', 0);
INSERT INTO `ln_region` VALUES (2760, '511702', '通川区', 287, 0, 0, 'Tongchuan Qu', '2', 0);
INSERT INTO `ln_region` VALUES (2761, '511721', '达县', 287, 0, 0, 'Da Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2762, '511722', '宣汉县', 287, 0, 0, 'Xuanhan Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2763, '511723', '开江县', 287, 0, 0, 'Kaijiang Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2764, '511724', '大竹县', 287, 0, 0, 'Dazhu Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2765, '511725', '渠县', 287, 0, 0, 'Qu Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2766, '511781', '万源市', 287, 0, 0, 'Wanyuan Shi', '2', 0);
INSERT INTO `ln_region` VALUES (2767, '511801', '市辖区', 288, 0, 0, '1', '2', 0);
INSERT INTO `ln_region` VALUES (2768, '511802', '雨城区', 288, 0, 0, 'Yucheg Qu', '2', 0);
INSERT INTO `ln_region` VALUES (2769, '511821', '名山县', 288, 0, 0, 'Mingshan Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2770, '511822', '荥经县', 288, 0, 0, 'Yingjing Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2771, '511823', '汉源县', 288, 0, 0, 'Hanyuan Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2772, '511824', '石棉县', 288, 0, 0, 'Shimian Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2773, '511825', '天全县', 288, 0, 0, 'Tianquan Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2774, '511826', '芦山县', 288, 0, 0, 'Lushan Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2775, '511827', '宝兴县', 288, 0, 0, 'Baoxing Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2776, '511901', '市辖区', 289, 0, 0, '1', '2', 0);
INSERT INTO `ln_region` VALUES (2777, '511902', '巴州区', 289, 0, 0, 'Bazhou Qu', '2', 0);
INSERT INTO `ln_region` VALUES (2778, '511921', '通江县', 289, 0, 0, 'Tongjiang Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2779, '511922', '南江县', 289, 0, 0, 'Nanjiang Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2780, '511923', '平昌县', 289, 0, 0, 'Pingchang Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2781, '512001', '市辖区', 290, 0, 0, '1', '2', 0);
INSERT INTO `ln_region` VALUES (2782, '512002', '雁江区', 290, 0, 0, 'Yanjiang Qu', '2', 0);
INSERT INTO `ln_region` VALUES (2783, '512021', '安岳县', 290, 0, 0, 'Anyue Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2784, '512022', '乐至县', 290, 0, 0, 'Lezhi Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2785, '512081', '简阳市', 290, 0, 0, 'Jianyang Shi', '2', 0);
INSERT INTO `ln_region` VALUES (2786, '513221', '汶川县', 291, 0, 0, 'Wenchuan Xian', 'WNC', 0);
INSERT INTO `ln_region` VALUES (2787, '513222', '理县', 291, 0, 0, 'Li Xian', 'LXC', 0);
INSERT INTO `ln_region` VALUES (2788, '513223', '茂县', 291, 0, 0, 'Mao Xian', 'MAO', 0);
INSERT INTO `ln_region` VALUES (2789, '513224', '松潘县', 291, 0, 0, 'Songpan Xian', 'SOP', 0);
INSERT INTO `ln_region` VALUES (2790, '513225', '九寨沟县', 291, 0, 0, 'Jiuzhaigou Xian', 'JZG', 0);
INSERT INTO `ln_region` VALUES (2791, '513226', '金川县', 291, 0, 0, 'Jinchuan Xian', 'JCH', 0);
INSERT INTO `ln_region` VALUES (2792, '513227', '小金县', 291, 0, 0, 'Xiaojin Xian', 'XJX', 0);
INSERT INTO `ln_region` VALUES (2793, '513228', '黑水县', 291, 0, 0, 'Heishui Xian', 'HIS', 0);
INSERT INTO `ln_region` VALUES (2794, '513229', '马尔康县', 291, 0, 0, 'Barkam Xian', 'BAK', 0);
INSERT INTO `ln_region` VALUES (2795, '513230', '壤塘县', 291, 0, 0, 'Zamtang Xian', 'ZAM', 0);
INSERT INTO `ln_region` VALUES (2796, '513231', '阿坝县', 291, 0, 0, 'Aba(Ngawa) Xian', 'ABX', 0);
INSERT INTO `ln_region` VALUES (2797, '513232', '若尔盖县', 291, 0, 0, 'ZoigeXian', 'ZOI', 0);
INSERT INTO `ln_region` VALUES (2798, '513233', '红原县', 291, 0, 0, 'Hongyuan Xian', 'HOY', 0);
INSERT INTO `ln_region` VALUES (2799, '513321', '康定县', 292, 0, 0, 'Kangding(Dardo) Xian', 'KDX', 0);
INSERT INTO `ln_region` VALUES (2800, '513322', '泸定县', 292, 0, 0, 'Luding(Jagsamka) Xian', 'LUD', 0);
INSERT INTO `ln_region` VALUES (2801, '513323', '丹巴县', 292, 0, 0, 'Danba(Rongzhag) Xian', 'DBA', 0);
INSERT INTO `ln_region` VALUES (2802, '513324', '九龙县', 292, 0, 0, 'Jiulong(Gyaisi) Xian', 'JLC', 0);
INSERT INTO `ln_region` VALUES (2803, '513325', '雅江县', 292, 0, 0, 'Yajiang(Nyagquka) Xian', 'YAJ', 0);
INSERT INTO `ln_region` VALUES (2804, '513326', '道孚县', 292, 0, 0, 'Dawu Xian', 'DAW', 0);
INSERT INTO `ln_region` VALUES (2805, '513327', '炉霍县', 292, 0, 0, 'Luhuo(Zhaggo) Xian', 'LUH', 0);
INSERT INTO `ln_region` VALUES (2806, '513328', '甘孜县', 292, 0, 0, 'Garze Xian', 'GRZ', 0);
INSERT INTO `ln_region` VALUES (2807, '513329', '新龙县', 292, 0, 0, 'Xinlong(Nyagrong) Xian', 'XLG', 0);
INSERT INTO `ln_region` VALUES (2808, '513330', '德格县', 292, 0, 0, 'DegeXian', 'DEG', 0);
INSERT INTO `ln_region` VALUES (2809, '513331', '白玉县', 292, 0, 0, 'Baiyu Xian', 'BYC', 0);
INSERT INTO `ln_region` VALUES (2810, '513332', '石渠县', 292, 0, 0, 'Serxv Xian', 'SER', 0);
INSERT INTO `ln_region` VALUES (2811, '513333', '色达县', 292, 0, 0, 'Sertar Xian', 'STX', 0);
INSERT INTO `ln_region` VALUES (2812, '513334', '理塘县', 292, 0, 0, 'Litang Xian', 'LIT', 0);
INSERT INTO `ln_region` VALUES (2813, '513335', '巴塘县', 292, 0, 0, 'Batang Xian', 'BTC', 0);
INSERT INTO `ln_region` VALUES (2814, '513336', '乡城县', 292, 0, 0, 'Xiangcheng(Qagcheng) Xian', 'XCC', 0);
INSERT INTO `ln_region` VALUES (2815, '513337', '稻城县', 292, 0, 0, 'Daocheng(Dabba) Xian', 'DCX', 0);
INSERT INTO `ln_region` VALUES (2816, '513338', '得荣县', 292, 0, 0, 'Derong Xian', 'DER', 0);
INSERT INTO `ln_region` VALUES (2817, '513401', '西昌市', 293, 0, 0, 'Xichang Shi', 'XCA', 0);
INSERT INTO `ln_region` VALUES (2818, '513422', '木里藏族自治县', 293, 0, 0, 'Muli Zangzu Zizhixian', 'MLI', 0);
INSERT INTO `ln_region` VALUES (2819, '513423', '盐源县', 293, 0, 0, 'Yanyuan Xian', 'YYU', 0);
INSERT INTO `ln_region` VALUES (2820, '513424', '德昌县', 293, 0, 0, 'Dechang Xian', 'DEC', 0);
INSERT INTO `ln_region` VALUES (2821, '513425', '会理县', 293, 0, 0, 'Huili Xian', 'HLI', 0);
INSERT INTO `ln_region` VALUES (2822, '513426', '会东县', 293, 0, 0, 'Huidong Xian', 'HDG', 0);
INSERT INTO `ln_region` VALUES (2823, '513427', '宁南县', 293, 0, 0, 'Ningnan Xian', 'NIN', 0);
INSERT INTO `ln_region` VALUES (2824, '513428', '普格县', 293, 0, 0, 'Puge Xian', 'PGE', 0);
INSERT INTO `ln_region` VALUES (2825, '513429', '布拖县', 293, 0, 0, 'Butuo Xian', 'BTO', 0);
INSERT INTO `ln_region` VALUES (2826, '513430', '金阳县', 293, 0, 0, 'Jinyang Xian', 'JYW', 0);
INSERT INTO `ln_region` VALUES (2827, '513431', '昭觉县', 293, 0, 0, 'Zhaojue Xian', 'ZJE', 0);
INSERT INTO `ln_region` VALUES (2828, '513432', '喜德县', 293, 0, 0, 'Xide Xian', 'XDE', 0);
INSERT INTO `ln_region` VALUES (2829, '513433', '冕宁县', 293, 0, 0, 'Mianning Xian', 'MNG', 0);
INSERT INTO `ln_region` VALUES (2830, '513434', '越西县', 293, 0, 0, 'Yuexi Xian', 'YXC', 0);
INSERT INTO `ln_region` VALUES (2831, '513435', '甘洛县', 293, 0, 0, 'Ganluo Xian', 'GLO', 0);
INSERT INTO `ln_region` VALUES (2832, '513436', '美姑县', 293, 0, 0, 'Meigu Xian', 'MEG', 0);
INSERT INTO `ln_region` VALUES (2833, '513437', '雷波县', 293, 0, 0, 'Leibo Xian', 'LBX', 0);
INSERT INTO `ln_region` VALUES (2834, '520101', '市辖区', 294, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (2835, '520102', '南明区', 294, 0, 0, 'Nanming Qu', 'NMQ', 0);
INSERT INTO `ln_region` VALUES (2836, '520103', '云岩区', 294, 0, 0, 'Yunyan Qu', 'YYQ', 0);
INSERT INTO `ln_region` VALUES (2837, '520111', '花溪区', 294, 0, 0, 'Huaxi Qu', 'HXI', 0);
INSERT INTO `ln_region` VALUES (2838, '520112', '乌当区', 294, 0, 0, 'Wudang Qu', 'WDQ', 0);
INSERT INTO `ln_region` VALUES (2839, '520113', '白云区', 294, 0, 0, 'Baiyun Qu', 'BYU', 0);
INSERT INTO `ln_region` VALUES (2840, '520114', '小河区', 294, 0, 0, 'Xiaohe Qu', '2', 0);
INSERT INTO `ln_region` VALUES (2841, '520121', '开阳县', 294, 0, 0, 'Kaiyang Xian', 'KYG', 0);
INSERT INTO `ln_region` VALUES (2842, '520122', '息烽县', 294, 0, 0, 'Xifeng Xian', 'XFX', 0);
INSERT INTO `ln_region` VALUES (2843, '520123', '修文县', 294, 0, 0, 'Xiuwen Xian', 'XWX', 0);
INSERT INTO `ln_region` VALUES (2844, '520181', '清镇市', 294, 0, 0, 'Qingzhen Shi', 'QZN', 0);
INSERT INTO `ln_region` VALUES (2845, '520201', '钟山区', 295, 0, 0, 'Zhongshan Qu', 'ZSQ', 0);
INSERT INTO `ln_region` VALUES (2846, '520203', '六枝特区', 295, 0, 0, 'Liuzhi Tequ', 'LZT', 0);
INSERT INTO `ln_region` VALUES (2847, '520221', '水城县', 295, 0, 0, 'Shuicheng Xian', 'SUC', 0);
INSERT INTO `ln_region` VALUES (2848, '520222', '盘县', 295, 0, 0, 'Pan Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2849, '520301', '市辖区', 296, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (2850, '520302', '红花岗区', 296, 0, 0, 'Honghuagang Qu', 'HHG', 0);
INSERT INTO `ln_region` VALUES (2851, '520303', '汇川区', 296, 0, 0, 'Huichuan Qu', '2', 0);
INSERT INTO `ln_region` VALUES (2852, '520321', '遵义县', 296, 0, 0, 'Zunyi Xian', 'ZYI', 0);
INSERT INTO `ln_region` VALUES (2853, '520322', '桐梓县', 296, 0, 0, 'Tongzi Xian', 'TZI', 0);
INSERT INTO `ln_region` VALUES (2854, '520323', '绥阳县', 296, 0, 0, 'Suiyang Xian', 'SUY', 0);
INSERT INTO `ln_region` VALUES (2855, '520324', '正安县', 296, 0, 0, 'Zhengan Xan', '2', 0);
INSERT INTO `ln_region` VALUES (2856, '520325', '道真仡佬族苗族自治县', 296, 0, 0, 'Daozhen Gelaozu Miaozu Zizhixian', 'DZN', 0);
INSERT INTO `ln_region` VALUES (2857, '520326', '务川仡佬族苗族自治县', 296, 0, 0, 'Wuchuan Gelaozu Miaozu Zizhixian', 'WCU', 0);
INSERT INTO `ln_region` VALUES (2858, '520327', '凤冈县', 296, 0, 0, 'Fenggang Xian', 'FGG', 0);
INSERT INTO `ln_region` VALUES (2859, '520328', '湄潭县', 296, 0, 0, 'Meitan Xian', 'MTN', 0);
INSERT INTO `ln_region` VALUES (2860, '520329', '余庆县', 296, 0, 0, 'Yuqing Xian', 'YUQ', 0);
INSERT INTO `ln_region` VALUES (2861, '520330', '习水县', 296, 0, 0, 'Xishui Xian', 'XSI', 0);
INSERT INTO `ln_region` VALUES (2862, '520381', '赤水市', 296, 0, 0, 'Chishui Shi', 'CSS', 0);
INSERT INTO `ln_region` VALUES (2863, '520382', '仁怀市', 296, 0, 0, 'Renhuai Shi', 'RHS', 0);
INSERT INTO `ln_region` VALUES (2864, '520401', '市辖区', 297, 0, 0, '1', '2', 0);
INSERT INTO `ln_region` VALUES (2865, '520402', '西秀区', 297, 0, 0, 'Xixiu Qu', '2', 0);
INSERT INTO `ln_region` VALUES (2866, '520421', '平坝县', 297, 0, 0, 'Pingba Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2867, '520422', '普定县', 297, 0, 0, 'Puding Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2868, '520423', '镇宁布依族苗族自治县', 297, 0, 0, 'Zhenning Buyeizu Miaozu Zizhixian', '2', 0);
INSERT INTO `ln_region` VALUES (2869, '520424', '关岭布依族苗族自治县', 297, 0, 0, 'Guanling Buyeizu Miaozu Zizhixian', '2', 0);
INSERT INTO `ln_region` VALUES (2870, '520425', '紫云苗族布依族自治县', 297, 0, 0, 'Ziyun Miaozu Buyeizu Zizhixian', '2', 0);
INSERT INTO `ln_region` VALUES (2871, '522201', '铜仁市', 298, 0, 0, 'Tongren Shi', 'TRS', 0);
INSERT INTO `ln_region` VALUES (2872, '522222', '江口县', 298, 0, 0, 'Jiangkou Xian', 'JGK', 0);
INSERT INTO `ln_region` VALUES (2873, '522223', '玉屏侗族自治县', 298, 0, 0, 'Yuping Dongzu Zizhixian', 'YPG', 0);
INSERT INTO `ln_region` VALUES (2874, '522224', '石阡县', 298, 0, 0, 'Shiqian Xian', 'SQI', 0);
INSERT INTO `ln_region` VALUES (2875, '522225', '思南县', 298, 0, 0, 'Sinan Xian', 'SNA', 0);
INSERT INTO `ln_region` VALUES (2876, '522226', '印江土家族苗族自治县', 298, 0, 0, 'Yinjiang Tujiazu Miaozu Zizhixian', 'YJY', 0);
INSERT INTO `ln_region` VALUES (2877, '522227', '德江县', 298, 0, 0, 'Dejiang Xian', 'DEJ', 0);
INSERT INTO `ln_region` VALUES (2878, '522228', '沿河土家族自治县', 298, 0, 0, 'Yanhe Tujiazu Zizhixian', 'YHE', 0);
INSERT INTO `ln_region` VALUES (2879, '522229', '松桃苗族自治县', 298, 0, 0, 'Songtao Miaozu Zizhixian', 'STM', 0);
INSERT INTO `ln_region` VALUES (2880, '522230', '万山特区', 298, 0, 0, 'Wanshan Tequ', 'WAS', 0);
INSERT INTO `ln_region` VALUES (2881, '522301', '兴义市', 299, 0, 0, 'Xingyi Shi', 'XYI', 0);
INSERT INTO `ln_region` VALUES (2882, '522322', '兴仁县', 299, 0, 0, 'Xingren Xian', 'XRN', 0);
INSERT INTO `ln_region` VALUES (2883, '522323', '普安县', 299, 0, 0, 'Pu,an Xian', 'PUA', 0);
INSERT INTO `ln_region` VALUES (2884, '522324', '晴隆县', 299, 0, 0, 'Qinglong Xian', 'QLG', 0);
INSERT INTO `ln_region` VALUES (2885, '522325', '贞丰县', 299, 0, 0, 'Zhenfeng Xian', 'ZFG', 0);
INSERT INTO `ln_region` VALUES (2886, '522326', '望谟县', 299, 0, 0, 'Wangmo Xian', 'WMO', 0);
INSERT INTO `ln_region` VALUES (2887, '522327', '册亨县', 299, 0, 0, 'Ceheng Xian', 'CEH', 0);
INSERT INTO `ln_region` VALUES (2888, '522328', '安龙县', 299, 0, 0, 'Anlong Xian', 'ALG', 0);
INSERT INTO `ln_region` VALUES (2889, '522401', '毕节市', 300, 0, 0, 'Bijie Shi', 'BJE', 0);
INSERT INTO `ln_region` VALUES (2890, '522422', '大方县', 300, 0, 0, 'Dafang Xian', 'DAF', 0);
INSERT INTO `ln_region` VALUES (2891, '522423', '黔西县', 300, 0, 0, 'Qianxi Xian', 'QNX', 0);
INSERT INTO `ln_region` VALUES (2892, '522424', '金沙县', 300, 0, 0, 'Jinsha Xian', 'JSX', 0);
INSERT INTO `ln_region` VALUES (2893, '522425', '织金县', 300, 0, 0, 'Zhijin Xian', 'ZJN', 0);
INSERT INTO `ln_region` VALUES (2894, '522426', '纳雍县', 300, 0, 0, 'Nayong Xian', 'NYG', 0);
INSERT INTO `ln_region` VALUES (2895, '522427', '威宁彝族回族苗族自治县', 300, 0, 0, 'Weining Yizu Huizu Miaozu Zizhixian', 'WNG', 0);
INSERT INTO `ln_region` VALUES (2896, '522428', '赫章县', 300, 0, 0, 'Hezhang Xian', 'HZA', 0);
INSERT INTO `ln_region` VALUES (2897, '522601', '凯里市', 301, 0, 0, 'Kaili Shi', 'KLS', 0);
INSERT INTO `ln_region` VALUES (2898, '522622', '黄平县', 301, 0, 0, 'Huangping Xian', 'HPN', 0);
INSERT INTO `ln_region` VALUES (2899, '522623', '施秉县', 301, 0, 0, 'Shibing Xian', 'SBG', 0);
INSERT INTO `ln_region` VALUES (2900, '522624', '三穗县', 301, 0, 0, 'Sansui Xian', 'SAS', 0);
INSERT INTO `ln_region` VALUES (2901, '522625', '镇远县', 301, 0, 0, 'Zhenyuan Xian', 'ZYX', 0);
INSERT INTO `ln_region` VALUES (2902, '522626', '岑巩县', 301, 0, 0, 'Cengong Xian', 'CGX', 0);
INSERT INTO `ln_region` VALUES (2903, '522627', '天柱县', 301, 0, 0, 'Tianzhu Xian', 'TZU', 0);
INSERT INTO `ln_region` VALUES (2904, '522628', '锦屏县', 301, 0, 0, 'Jinping Xian', 'JPX', 0);
INSERT INTO `ln_region` VALUES (2905, '522629', '剑河县', 301, 0, 0, 'Jianhe Xian', 'JHE', 0);
INSERT INTO `ln_region` VALUES (2906, '522630', '台江县', 301, 0, 0, 'Taijiang Xian', 'TJX', 0);
INSERT INTO `ln_region` VALUES (2907, '522631', '黎平县', 301, 0, 0, 'Liping Xian', 'LIP', 0);
INSERT INTO `ln_region` VALUES (2908, '522632', '榕江县', 301, 0, 0, 'Rongjiang Xian', 'RJG', 0);
INSERT INTO `ln_region` VALUES (2909, '522633', '从江县', 301, 0, 0, 'Congjiang Xian', 'COJ', 0);
INSERT INTO `ln_region` VALUES (2910, '522634', '雷山县', 301, 0, 0, 'Leishan Xian', 'LSA', 0);
INSERT INTO `ln_region` VALUES (2911, '522635', '麻江县', 301, 0, 0, 'Majiang Xian', 'MAJ', 0);
INSERT INTO `ln_region` VALUES (2912, '522636', '丹寨县', 301, 0, 0, 'Danzhai Xian', 'DZH', 0);
INSERT INTO `ln_region` VALUES (2913, '522701', '都匀市', 302, 0, 0, 'Duyun Shi', 'DUY', 0);
INSERT INTO `ln_region` VALUES (2914, '522702', '福泉市', 302, 0, 0, 'Fuquan Shi', 'FQN', 0);
INSERT INTO `ln_region` VALUES (2915, '522722', '荔波县', 302, 0, 0, 'Libo Xian', 'LBO', 0);
INSERT INTO `ln_region` VALUES (2916, '522723', '贵定县', 302, 0, 0, 'Guiding Xian', 'GDG', 0);
INSERT INTO `ln_region` VALUES (2917, '522725', '瓮安县', 302, 0, 0, 'Weng,an Xian', 'WGA', 0);
INSERT INTO `ln_region` VALUES (2918, '522726', '独山县', 302, 0, 0, 'Dushan Xian', 'DSX', 0);
INSERT INTO `ln_region` VALUES (2919, '522727', '平塘县', 302, 0, 0, 'Pingtang Xian', 'PTG', 0);
INSERT INTO `ln_region` VALUES (2920, '522728', '罗甸县', 302, 0, 0, 'Luodian Xian', 'LOD', 0);
INSERT INTO `ln_region` VALUES (2921, '522729', '长顺县', 302, 0, 0, 'Changshun Xian', 'CSU', 0);
INSERT INTO `ln_region` VALUES (2922, '522730', '龙里县', 302, 0, 0, 'Longli Xian', 'LLI', 0);
INSERT INTO `ln_region` VALUES (2923, '522731', '惠水县', 302, 0, 0, 'Huishui Xian', 'HUS', 0);
INSERT INTO `ln_region` VALUES (2924, '522732', '三都水族自治县', 302, 0, 0, 'Sandu Suizu Zizhixian', 'SDU', 0);
INSERT INTO `ln_region` VALUES (2925, '530101', '市辖区', 303, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (2926, '530102', '五华区', 303, 0, 0, 'Wuhua Qu', 'WHA', 0);
INSERT INTO `ln_region` VALUES (2927, '530103', '盘龙区', 303, 0, 0, 'Panlong Qu', 'PLQ', 0);
INSERT INTO `ln_region` VALUES (2928, '530111', '官渡区', 303, 0, 0, 'Guandu Qu', 'GDU', 0);
INSERT INTO `ln_region` VALUES (2929, '530112', '西山区', 303, 0, 0, 'Xishan Qu', 'XSN', 0);
INSERT INTO `ln_region` VALUES (2930, '530113', '东川区', 303, 0, 0, 'Dongchuan Qu', 'DCU', 0);
INSERT INTO `ln_region` VALUES (2931, '530121', '呈贡县', 303, 0, 0, 'Chenggong Xian', 'CGD', 0);
INSERT INTO `ln_region` VALUES (2932, '530122', '晋宁县', 303, 0, 0, 'Jinning Xian', 'JND', 0);
INSERT INTO `ln_region` VALUES (2933, '530124', '富民县', 303, 0, 0, 'Fumin Xian', 'FMN', 0);
INSERT INTO `ln_region` VALUES (2934, '530125', '宜良县', 303, 0, 0, 'Yiliang Xian', 'YIL', 0);
INSERT INTO `ln_region` VALUES (2935, '530126', '石林彝族自治县', 303, 0, 0, 'Shilin Yizu Zizhixian', 'SLY', 0);
INSERT INTO `ln_region` VALUES (2936, '530127', '嵩明县', 303, 0, 0, 'Songming Xian', 'SMI', 0);
INSERT INTO `ln_region` VALUES (2937, '530128', '禄劝彝族苗族自治县', 303, 0, 0, 'Luchuan Yizu Miaozu Zizhixian', 'LUC', 0);
INSERT INTO `ln_region` VALUES (2938, '530129', '寻甸回族彝族自治县', 303, 0, 0, 'Xundian Huizu Yizu Zizhixian', 'XDN', 0);
INSERT INTO `ln_region` VALUES (2939, '530181', '安宁市', 303, 0, 0, 'Anning Shi', 'ANG', 0);
INSERT INTO `ln_region` VALUES (2940, '530301', '市辖区', 304, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (2941, '530302', '麒麟区', 304, 0, 0, 'Qilin Xian', 'QLQ', 0);
INSERT INTO `ln_region` VALUES (2942, '530321', '马龙县', 304, 0, 0, 'Malong Xian', 'MLO', 0);
INSERT INTO `ln_region` VALUES (2943, '530322', '陆良县', 304, 0, 0, 'Luliang Xian', 'LLX', 0);
INSERT INTO `ln_region` VALUES (2944, '530323', '师宗县', 304, 0, 0, 'Shizong Xian', 'SZD', 0);
INSERT INTO `ln_region` VALUES (2945, '530324', '罗平县', 304, 0, 0, 'Luoping Xian', 'LPX', 0);
INSERT INTO `ln_region` VALUES (2946, '530325', '富源县', 304, 0, 0, 'Fuyuan Xian', 'FYD', 0);
INSERT INTO `ln_region` VALUES (2947, '530326', '会泽县', 304, 0, 0, 'Huize Xian', 'HUZ', 0);
INSERT INTO `ln_region` VALUES (2948, '530328', '沾益县', 304, 0, 0, 'Zhanyi Xian', 'ZYD', 0);
INSERT INTO `ln_region` VALUES (2949, '530381', '宣威市', 304, 0, 0, 'Xuanwei Shi', 'XWS', 0);
INSERT INTO `ln_region` VALUES (2950, '530401', '市辖区', 305, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (2951, '530402', '红塔区', 305, 0, 0, 'Hongta Qu', 'HTA', 0);
INSERT INTO `ln_region` VALUES (2952, '530421', '江川县', 305, 0, 0, 'Jiangchuan Xian', 'JGC', 0);
INSERT INTO `ln_region` VALUES (2953, '530422', '澄江县', 305, 0, 0, 'Chengjiang Xian', 'CGJ', 0);
INSERT INTO `ln_region` VALUES (2954, '530423', '通海县', 305, 0, 0, 'Tonghai Xian', 'THI', 0);
INSERT INTO `ln_region` VALUES (2955, '530424', '华宁县', 305, 0, 0, 'Huaning Xian', 'HND', 0);
INSERT INTO `ln_region` VALUES (2956, '530425', '易门县', 305, 0, 0, 'Yimen Xian', 'YMD', 0);
INSERT INTO `ln_region` VALUES (2957, '530426', '峨山彝族自治县', 305, 0, 0, 'Eshan Yizu Zizhixian', 'ESN', 0);
INSERT INTO `ln_region` VALUES (2958, '530427', '新平彝族傣族自治县', 305, 0, 0, 'Xinping Yizu Daizu Zizhixian', 'XNP', 0);
INSERT INTO `ln_region` VALUES (2959, '530428', '元江哈尼族彝族傣族自治县', 305, 0, 0, 'Yuanjiang Hanizu Yizu Daizu Zizhixian', 'YJA', 0);
INSERT INTO `ln_region` VALUES (2960, '530501', '市辖区', 306, 0, 0, '1', '2', 0);
INSERT INTO `ln_region` VALUES (2961, '530502', '隆阳区', 306, 0, 0, 'Longyang Qu', '2', 0);
INSERT INTO `ln_region` VALUES (2962, '530521', '施甸县', 306, 0, 0, 'Shidian Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2963, '530522', '腾冲县', 306, 0, 0, 'Tengchong Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2964, '530523', '龙陵县', 306, 0, 0, 'Longling Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2965, '530524', '昌宁县', 306, 0, 0, 'Changning Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2966, '530601', '市辖区', 307, 0, 0, '1', '2', 0);
INSERT INTO `ln_region` VALUES (2967, '530602', '昭阳区', 307, 0, 0, 'Zhaoyang Qu', '2', 0);
INSERT INTO `ln_region` VALUES (2968, '530621', '鲁甸县', 307, 0, 0, 'Ludian Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2969, '530622', '巧家县', 307, 0, 0, 'Qiaojia Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2970, '530623', '盐津县', 307, 0, 0, 'Yanjin Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2971, '530624', '大关县', 307, 0, 0, 'Daguan Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2972, '530625', '永善县', 307, 0, 0, 'Yongshan Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2973, '530626', '绥江县', 307, 0, 0, 'Suijiang Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2974, '530627', '镇雄县', 307, 0, 0, 'Zhenxiong Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2975, '530628', '彝良县', 307, 0, 0, 'Yiliang Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2976, '530629', '威信县', 307, 0, 0, 'Weixin Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2977, '530630', '水富县', 307, 0, 0, 'Shuifu Xian ', '2', 0);
INSERT INTO `ln_region` VALUES (2978, '530701', '市辖区', 308, 0, 0, '1', '2', 0);
INSERT INTO `ln_region` VALUES (2979, '530702', '古城区', 308, 0, 0, 'Gucheng Qu', '2', 0);
INSERT INTO `ln_region` VALUES (2980, '530721', '玉龙纳西族自治县', 308, 0, 0, 'Yulongnaxizuzizhi Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2981, '530722', '永胜县', 308, 0, 0, 'Yongsheng Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2982, '530723', '华坪县', 308, 0, 0, 'Huaping Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2983, '530724', '宁蒗彝族自治县', 308, 0, 0, 'Ninglang Yizu Zizhixian', '2', 0);
INSERT INTO `ln_region` VALUES (2984, '530801', '市辖区', 309, 0, 0, '1', '2', 0);
INSERT INTO `ln_region` VALUES (2985, '530802', '思茅区', 309, 0, 0, 'Simao Qu', '2', 0);
INSERT INTO `ln_region` VALUES (2986, '530821', '宁洱哈尼族彝族自治县', 309, 0, 0, 'Pu,er Hanizu Yizu Zizhixian', '2', 0);
INSERT INTO `ln_region` VALUES (2987, '530822', '墨江哈尼族自治县', 309, 0, 0, 'Mojiang Hanizu Zizhixian', '2', 0);
INSERT INTO `ln_region` VALUES (2988, '530823', '景东彝族自治县', 309, 0, 0, 'Jingdong Yizu Zizhixian', '2', 0);
INSERT INTO `ln_region` VALUES (2989, '530824', '景谷傣族彝族自治县', 309, 0, 0, 'Jinggu Daizu Yizu Zizhixian', '2', 0);
INSERT INTO `ln_region` VALUES (2990, '530825', '镇沅彝族哈尼族拉祜族自治县', 309, 0, 0, 'Zhenyuan Yizu Hanizu Lahuzu Zizhixian', '2', 0);
INSERT INTO `ln_region` VALUES (2991, '530826', '江城哈尼族彝族自治县', 309, 0, 0, 'Jiangcheng Hanizu Yizu Zizhixian', '2', 0);
INSERT INTO `ln_region` VALUES (2992, '530827', '孟连傣族拉祜族佤族自治县', 309, 0, 0, 'Menglian Daizu Lahuzu Vazu Zizixian', '2', 0);
INSERT INTO `ln_region` VALUES (2993, '530828', '澜沧拉祜族自治县', 309, 0, 0, 'Lancang Lahuzu Zizhixian', '2', 0);
INSERT INTO `ln_region` VALUES (2994, '530829', '西盟佤族自治县', 309, 0, 0, 'Ximeng Vazu Zizhixian', '2', 0);
INSERT INTO `ln_region` VALUES (2995, '530901', '市辖区', 310, 0, 0, '1', '2', 0);
INSERT INTO `ln_region` VALUES (2996, '530902', '临翔区', 310, 0, 0, 'Linxiang Qu', '2', 0);
INSERT INTO `ln_region` VALUES (2997, '530921', '凤庆县', 310, 0, 0, 'Fengqing Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2998, '530922', '云县', 310, 0, 0, 'Yun Xian', '2', 0);
INSERT INTO `ln_region` VALUES (2999, '530923', '永德县', 310, 0, 0, 'Yongde Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3000, '530924', '镇康县', 310, 0, 0, 'Zhenkang Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3001, '530925', '双江拉祜族佤族布朗族傣族自治县', 310, 0, 0, 'Shuangjiang Lahuzu Vazu Bulangzu Daizu Zizhixian', '2', 0);
INSERT INTO `ln_region` VALUES (3002, '530926', '耿马傣族佤族自治县', 310, 0, 0, 'Gengma Daizu Vazu Zizhixian', '2', 0);
INSERT INTO `ln_region` VALUES (3003, '530927', '沧源佤族自治县', 310, 0, 0, 'Cangyuan Vazu Zizhixian', '2', 0);
INSERT INTO `ln_region` VALUES (3004, '532301', '楚雄市', 311, 0, 0, 'Chuxiong Shi', 'CXS', 0);
INSERT INTO `ln_region` VALUES (3005, '532322', '双柏县', 311, 0, 0, 'Shuangbai Xian', 'SBA', 0);
INSERT INTO `ln_region` VALUES (3006, '532323', '牟定县', 311, 0, 0, 'Mouding Xian', 'MDI', 0);
INSERT INTO `ln_region` VALUES (3007, '532324', '南华县', 311, 0, 0, 'Nanhua Xian', 'NHA', 0);
INSERT INTO `ln_region` VALUES (3008, '532325', '姚安县', 311, 0, 0, 'Yao,an Xian', 'YOA', 0);
INSERT INTO `ln_region` VALUES (3009, '532326', '大姚县', 311, 0, 0, 'Dayao Xian', 'DYO', 0);
INSERT INTO `ln_region` VALUES (3010, '532327', '永仁县', 311, 0, 0, 'Yongren Xian', 'YRN', 0);
INSERT INTO `ln_region` VALUES (3011, '532328', '元谋县', 311, 0, 0, 'Yuanmou Xian', 'YMO', 0);
INSERT INTO `ln_region` VALUES (3012, '532329', '武定县', 311, 0, 0, 'Wuding Xian', 'WDX', 0);
INSERT INTO `ln_region` VALUES (3013, '532331', '禄丰县', 311, 0, 0, 'Lufeng Xian', 'LFX', 0);
INSERT INTO `ln_region` VALUES (3014, '532501', '个旧市', 312, 0, 0, 'Gejiu Shi', 'GJU', 0);
INSERT INTO `ln_region` VALUES (3015, '532502', '开远市', 312, 0, 0, 'Kaiyuan Shi', 'KYD', 0);
INSERT INTO `ln_region` VALUES (3016, '532503', '蒙自市', 312, 0, 0, 'Mengzi Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3017, '532523', '屏边苗族自治县', 312, 0, 0, 'Pingbian Miaozu Zizhixian', 'PBN', 0);
INSERT INTO `ln_region` VALUES (3018, '532524', '建水县', 312, 0, 0, 'Jianshui Xian', 'JSD', 0);
INSERT INTO `ln_region` VALUES (3019, '532525', '石屏县', 312, 0, 0, 'Shiping Xian', 'SPG', 0);
INSERT INTO `ln_region` VALUES (3020, '532526', '弥勒县', 312, 0, 0, 'Mile Xian', 'MIL', 0);
INSERT INTO `ln_region` VALUES (3021, '532527', '泸西县', 312, 0, 0, 'Luxi Xian', 'LXD', 0);
INSERT INTO `ln_region` VALUES (3022, '532528', '元阳县', 312, 0, 0, 'Yuanyang Xian', 'YYD', 0);
INSERT INTO `ln_region` VALUES (3023, '532529', '红河县', 312, 0, 0, 'Honghe Xian', 'HHX', 0);
INSERT INTO `ln_region` VALUES (3024, '532530', '金平苗族瑶族傣族自治县', 312, 0, 0, 'Jinping Miaozu Yaozu Daizu Zizhixian', 'JNP', 0);
INSERT INTO `ln_region` VALUES (3025, '532531', '绿春县', 312, 0, 0, 'Lvchun Xian', 'LCX', 0);
INSERT INTO `ln_region` VALUES (3026, '532532', '河口瑶族自治县', 312, 0, 0, 'Hekou Yaozu Zizhixian', 'HKM', 0);
INSERT INTO `ln_region` VALUES (3027, '532621', '文山县', 313, 0, 0, 'Wenshan Xian', 'WES', 0);
INSERT INTO `ln_region` VALUES (3028, '532622', '砚山县', 313, 0, 0, 'Yanshan Xian', 'YSD', 0);
INSERT INTO `ln_region` VALUES (3029, '532623', '西畴县', 313, 0, 0, 'Xichou Xian', 'XIC', 0);
INSERT INTO `ln_region` VALUES (3030, '532624', '麻栗坡县', 313, 0, 0, 'Malipo Xian', 'MLP', 0);
INSERT INTO `ln_region` VALUES (3031, '532625', '马关县', 313, 0, 0, 'Maguan Xian', 'MGN', 0);
INSERT INTO `ln_region` VALUES (3032, '532626', '丘北县', 313, 0, 0, 'Qiubei Xian', 'QBE', 0);
INSERT INTO `ln_region` VALUES (3033, '532627', '广南县', 313, 0, 0, 'Guangnan Xian', 'GGN', 0);
INSERT INTO `ln_region` VALUES (3034, '532628', '富宁县', 313, 0, 0, 'Funing Xian', 'FND', 0);
INSERT INTO `ln_region` VALUES (3035, '532801', '景洪市', 314, 0, 0, 'Jinghong Shi', 'JHG', 0);
INSERT INTO `ln_region` VALUES (3036, '532822', '勐海县', 314, 0, 0, 'Menghai Xian', 'MHI', 0);
INSERT INTO `ln_region` VALUES (3037, '532823', '勐腊县', 314, 0, 0, 'Mengla Xian', 'MLA', 0);
INSERT INTO `ln_region` VALUES (3038, '532901', '大理市', 315, 0, 0, 'Dali Shi', 'DLS', 0);
INSERT INTO `ln_region` VALUES (3039, '532922', '漾濞彝族自治县', 315, 0, 0, 'Yangbi Yizu Zizhixian', 'YGB', 0);
INSERT INTO `ln_region` VALUES (3040, '532923', '祥云县', 315, 0, 0, 'Xiangyun Xian', 'XYD', 0);
INSERT INTO `ln_region` VALUES (3041, '532924', '宾川县', 315, 0, 0, 'Binchuan Xian', 'BCD', 0);
INSERT INTO `ln_region` VALUES (3042, '532925', '弥渡县', 315, 0, 0, 'Midu Xian', 'MDU', 0);
INSERT INTO `ln_region` VALUES (3043, '532926', '南涧彝族自治县', 315, 0, 0, 'Nanjian Yizu Zizhixian', 'NNJ', 0);
INSERT INTO `ln_region` VALUES (3044, '532927', '巍山彝族回族自治县', 315, 0, 0, 'Weishan Yizu Huizu Zizhixian', 'WSY', 0);
INSERT INTO `ln_region` VALUES (3045, '532928', '永平县', 315, 0, 0, 'Yongping Xian', 'YPX', 0);
INSERT INTO `ln_region` VALUES (3046, '532929', '云龙县', 315, 0, 0, 'Yunlong Xian', 'YLO', 0);
INSERT INTO `ln_region` VALUES (3047, '532930', '洱源县', 315, 0, 0, 'Eryuan Xian', 'EYN', 0);
INSERT INTO `ln_region` VALUES (3048, '532931', '剑川县', 315, 0, 0, 'Jianchuan Xian', 'JIC', 0);
INSERT INTO `ln_region` VALUES (3049, '532932', '鹤庆县', 315, 0, 0, 'Heqing Xian', 'HQG', 0);
INSERT INTO `ln_region` VALUES (3050, '533102', '瑞丽市', 316, 0, 0, 'Ruili Shi', 'RUI', 0);
INSERT INTO `ln_region` VALUES (3051, '533103', '芒市', 316, 0, 0, 'Luxi Shi', '2', 0);
INSERT INTO `ln_region` VALUES (3052, '533122', '梁河县', 316, 0, 0, 'Lianghe Xian', 'LHD', 0);
INSERT INTO `ln_region` VALUES (3053, '533123', '盈江县', 316, 0, 0, 'Yingjiang Xian', 'YGJ', 0);
INSERT INTO `ln_region` VALUES (3054, '533124', '陇川县', 316, 0, 0, 'Longchuan Xian', 'LCN', 0);
INSERT INTO `ln_region` VALUES (3055, '533321', '泸水县', 317, 0, 0, 'Lushui Xian', 'LSX', 0);
INSERT INTO `ln_region` VALUES (3056, '533323', '福贡县', 317, 0, 0, 'Fugong Xian', 'FGO', 0);
INSERT INTO `ln_region` VALUES (3057, '533324', '贡山独龙族怒族自治县', 317, 0, 0, 'Gongshan Dulongzu Nuzu Zizhixian', 'GSN', 0);
INSERT INTO `ln_region` VALUES (3058, '533325', '兰坪白族普米族自治县', 317, 0, 0, 'Lanping Baizu Pumizu Zizhixian', 'LPG', 0);
INSERT INTO `ln_region` VALUES (3059, '533421', '香格里拉县', 318, 0, 0, 'Xianggelila Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3060, '533422', '德钦县', 318, 0, 0, 'Deqen Xian', 'DQN', 0);
INSERT INTO `ln_region` VALUES (3061, '533423', '维西傈僳族自治县', 318, 0, 0, 'Weixi Lisuzu Zizhixian', 'WXI', 0);
INSERT INTO `ln_region` VALUES (3062, '540101', '市辖区', 319, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (3063, '540102', '城关区', 319, 0, 0, 'Chengguang Qu', 'CGN', 0);
INSERT INTO `ln_region` VALUES (3064, '540121', '林周县', 319, 0, 0, 'Lhvnzhub Xian', 'LZB', 0);
INSERT INTO `ln_region` VALUES (3065, '540122', '当雄县', 319, 0, 0, 'Damxung Xian', 'DAM', 0);
INSERT INTO `ln_region` VALUES (3066, '540123', '尼木县', 319, 0, 0, 'Nyemo Xian', 'NYE', 0);
INSERT INTO `ln_region` VALUES (3067, '540124', '曲水县', 319, 0, 0, 'Qvxv Xian', 'QUX', 0);
INSERT INTO `ln_region` VALUES (3068, '540125', '堆龙德庆县', 319, 0, 0, 'Doilungdeqen Xian', 'DOI', 0);
INSERT INTO `ln_region` VALUES (3069, '540126', '达孜县', 319, 0, 0, 'Dagze Xian', 'DAG', 0);
INSERT INTO `ln_region` VALUES (3070, '540127', '墨竹工卡县', 319, 0, 0, 'Maizhokunggar Xian', 'MAI', 0);
INSERT INTO `ln_region` VALUES (3071, '542121', '昌都县', 320, 0, 0, 'Qamdo Xian', 'QAX', 0);
INSERT INTO `ln_region` VALUES (3072, '542122', '江达县', 320, 0, 0, 'Jomda Xian', 'JOM', 0);
INSERT INTO `ln_region` VALUES (3073, '542123', '贡觉县', 320, 0, 0, 'Konjo Xian', 'KON', 0);
INSERT INTO `ln_region` VALUES (3074, '542124', '类乌齐县', 320, 0, 0, 'Riwoqe Xian', 'RIW', 0);
INSERT INTO `ln_region` VALUES (3075, '542125', '丁青县', 320, 0, 0, 'Dengqen Xian', 'DEN', 0);
INSERT INTO `ln_region` VALUES (3076, '542126', '察雅县', 320, 0, 0, 'Chagyab Xian', 'CHA', 0);
INSERT INTO `ln_region` VALUES (3077, '542127', '八宿县', 320, 0, 0, 'Baxoi Xian', 'BAX', 0);
INSERT INTO `ln_region` VALUES (3078, '542128', '左贡县', 320, 0, 0, 'Zogang Xian', 'ZOX', 0);
INSERT INTO `ln_region` VALUES (3079, '542129', '芒康县', 320, 0, 0, 'Mangkam Xian', 'MAN', 0);
INSERT INTO `ln_region` VALUES (3080, '542132', '洛隆县', 320, 0, 0, 'Lhorong Xian', 'LHO', 0);
INSERT INTO `ln_region` VALUES (3081, '542133', '边坝县', 320, 0, 0, 'Banbar Xian', 'BAN', 0);
INSERT INTO `ln_region` VALUES (3082, '542221', '乃东县', 321, 0, 0, 'Nedong Xian', 'NED', 0);
INSERT INTO `ln_region` VALUES (3083, '542222', '扎囊县', 321, 0, 0, 'Chanang(Chatang) Xian', 'CNG', 0);
INSERT INTO `ln_region` VALUES (3084, '542223', '贡嘎县', 321, 0, 0, 'Gonggar Xian', 'GON', 0);
INSERT INTO `ln_region` VALUES (3085, '542224', '桑日县', 321, 0, 0, 'Sangri Xian', 'SRI', 0);
INSERT INTO `ln_region` VALUES (3086, '542225', '琼结县', 321, 0, 0, 'Qonggyai Xian', 'QON', 0);
INSERT INTO `ln_region` VALUES (3087, '542226', '曲松县', 321, 0, 0, 'Qusum Xian', 'QUS', 0);
INSERT INTO `ln_region` VALUES (3088, '542227', '措美县', 321, 0, 0, 'Comai Xian', 'COM', 0);
INSERT INTO `ln_region` VALUES (3089, '542228', '洛扎县', 321, 0, 0, 'Lhozhag Xian', 'LHX', 0);
INSERT INTO `ln_region` VALUES (3090, '542229', '加查县', 321, 0, 0, 'Gyaca Xian', 'GYA', 0);
INSERT INTO `ln_region` VALUES (3091, '542231', '隆子县', 321, 0, 0, 'Lhvnze Xian', 'LHZ', 0);
INSERT INTO `ln_region` VALUES (3092, '542232', '错那县', 321, 0, 0, 'Cona Xian', 'CON', 0);
INSERT INTO `ln_region` VALUES (3093, '542233', '浪卡子县', 321, 0, 0, 'Nagarze Xian', 'NAX', 0);
INSERT INTO `ln_region` VALUES (3094, '542301', '日喀则市', 322, 0, 0, 'Xigaze Shi', 'XIG', 0);
INSERT INTO `ln_region` VALUES (3095, '542322', '南木林县', 322, 0, 0, 'Namling Xian', 'NAM', 0);
INSERT INTO `ln_region` VALUES (3096, '542323', '江孜县', 322, 0, 0, 'Gyangze Xian', 'GYZ', 0);
INSERT INTO `ln_region` VALUES (3097, '542324', '定日县', 322, 0, 0, 'Tingri Xian', 'TIN', 0);
INSERT INTO `ln_region` VALUES (3098, '542325', '萨迦县', 322, 0, 0, 'Sa,gya Xian', 'SGX', 0);
INSERT INTO `ln_region` VALUES (3099, '542326', '拉孜县', 322, 0, 0, 'Lhaze Xian', 'LAZ', 0);
INSERT INTO `ln_region` VALUES (3100, '542327', '昂仁县', 322, 0, 0, 'Ngamring Xian', 'NGA', 0);
INSERT INTO `ln_region` VALUES (3101, '542328', '谢通门县', 322, 0, 0, 'Xaitongmoin Xian', 'XTM', 0);
INSERT INTO `ln_region` VALUES (3102, '542329', '白朗县', 322, 0, 0, 'Bainang Xian', 'BAI', 0);
INSERT INTO `ln_region` VALUES (3103, '542330', '仁布县', 322, 0, 0, 'Rinbung Xian', 'RIN', 0);
INSERT INTO `ln_region` VALUES (3104, '542331', '康马县', 322, 0, 0, 'Kangmar Xian', 'KAN', 0);
INSERT INTO `ln_region` VALUES (3105, '542332', '定结县', 322, 0, 0, 'Dinggye Xian', 'DIN', 0);
INSERT INTO `ln_region` VALUES (3106, '542333', '仲巴县', 322, 0, 0, 'Zhongba Xian', 'ZHB', 0);
INSERT INTO `ln_region` VALUES (3107, '542334', '亚东县', 322, 0, 0, 'Yadong(Chomo) Xian', 'YDZ', 0);
INSERT INTO `ln_region` VALUES (3108, '542335', '吉隆县', 322, 0, 0, 'Gyirong Xian', 'GIR', 0);
INSERT INTO `ln_region` VALUES (3109, '542336', '聂拉木县', 322, 0, 0, 'Nyalam Xian', 'NYA', 0);
INSERT INTO `ln_region` VALUES (3110, '542337', '萨嘎县', 322, 0, 0, 'Saga Xian', 'SAG', 0);
INSERT INTO `ln_region` VALUES (3111, '542338', '岗巴县', 322, 0, 0, 'Gamba Xian', 'GAM', 0);
INSERT INTO `ln_region` VALUES (3112, '542421', '那曲县', 323, 0, 0, 'Nagqu Xian', 'NAG', 0);
INSERT INTO `ln_region` VALUES (3113, '542422', '嘉黎县', 323, 0, 0, 'Lhari Xian', 'LHR', 0);
INSERT INTO `ln_region` VALUES (3114, '542423', '比如县', 323, 0, 0, 'Biru Xian', 'BRU', 0);
INSERT INTO `ln_region` VALUES (3115, '542424', '聂荣县', 323, 0, 0, 'Nyainrong Xian', 'NRO', 0);
INSERT INTO `ln_region` VALUES (3116, '542425', '安多县', 323, 0, 0, 'Amdo Xian', 'AMD', 0);
INSERT INTO `ln_region` VALUES (3117, '542426', '申扎县', 323, 0, 0, 'Xainza Xian', 'XZX', 0);
INSERT INTO `ln_region` VALUES (3118, '542427', '索县', 323, 0, 0, 'Sog Xian', 'SOG', 0);
INSERT INTO `ln_region` VALUES (3119, '542428', '班戈县', 323, 0, 0, 'Bangoin Xian', 'BGX', 0);
INSERT INTO `ln_region` VALUES (3120, '542429', '巴青县', 323, 0, 0, 'Baqen Xian', 'BQE', 0);
INSERT INTO `ln_region` VALUES (3121, '542430', '尼玛县', 323, 0, 0, 'Nyima Xian', 'NYX', 0);
INSERT INTO `ln_region` VALUES (3122, '542521', '普兰县', 324, 0, 0, 'Burang Xian', 'BUR', 0);
INSERT INTO `ln_region` VALUES (3123, '542522', '札达县', 324, 0, 0, 'Zanda Xian', 'ZAN', 0);
INSERT INTO `ln_region` VALUES (3124, '542523', '噶尔县', 324, 0, 0, 'Gar Xian', 'GAR', 0);
INSERT INTO `ln_region` VALUES (3125, '542524', '日土县', 324, 0, 0, 'Rutog Xian', 'RUT', 0);
INSERT INTO `ln_region` VALUES (3126, '542525', '革吉县', 324, 0, 0, 'Ge,gyai Xian', 'GEG', 0);
INSERT INTO `ln_region` VALUES (3127, '542526', '改则县', 324, 0, 0, 'Gerze Xian', 'GER', 0);
INSERT INTO `ln_region` VALUES (3128, '542527', '措勤县', 324, 0, 0, 'Coqen Xian', 'COQ', 0);
INSERT INTO `ln_region` VALUES (3129, '542621', '林芝县', 325, 0, 0, 'Nyingchi Xian', 'NYI', 0);
INSERT INTO `ln_region` VALUES (3130, '542622', '工布江达县', 325, 0, 0, 'Gongbo,gyamda Xian', 'GOX', 0);
INSERT INTO `ln_region` VALUES (3131, '542623', '米林县', 325, 0, 0, 'Mainling Xian', 'MAX', 0);
INSERT INTO `ln_region` VALUES (3132, '542624', '墨脱县', 325, 0, 0, 'Metog Xian', 'MET', 0);
INSERT INTO `ln_region` VALUES (3133, '542625', '波密县', 325, 0, 0, 'Bomi(Bowo) Xian', 'BMI', 0);
INSERT INTO `ln_region` VALUES (3134, '542626', '察隅县', 325, 0, 0, 'Zayv Xian', 'ZAY', 0);
INSERT INTO `ln_region` VALUES (3135, '542627', '朗县', 325, 0, 0, 'Nang Xian', 'NGX', 0);
INSERT INTO `ln_region` VALUES (3136, '610101', '市辖区', 326, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (3137, '610102', '新城区', 326, 0, 0, 'Xincheng Qu', 'XCK', 0);
INSERT INTO `ln_region` VALUES (3138, '610103', '碑林区', 326, 0, 0, 'Beilin Qu', 'BLQ', 0);
INSERT INTO `ln_region` VALUES (3139, '610104', '莲湖区', 326, 0, 0, 'Lianhu Qu', 'LHU', 0);
INSERT INTO `ln_region` VALUES (3140, '610111', '灞桥区', 326, 0, 0, 'Baqiao Qu', 'BQQ', 0);
INSERT INTO `ln_region` VALUES (3141, '610112', '未央区', 326, 0, 0, 'Weiyang Qu', '2', 0);
INSERT INTO `ln_region` VALUES (3142, '610113', '雁塔区', 326, 0, 0, 'Yanta Qu', 'YTA', 0);
INSERT INTO `ln_region` VALUES (3143, '610114', '阎良区', 326, 0, 0, 'Yanliang Qu', 'YLQ', 0);
INSERT INTO `ln_region` VALUES (3144, '610115', '临潼区', 326, 0, 0, 'Lintong Qu', 'LTG', 0);
INSERT INTO `ln_region` VALUES (3145, '610116', '长安区', 326, 0, 0, 'Changan Qu', '2', 0);
INSERT INTO `ln_region` VALUES (3146, '610122', '蓝田县', 326, 0, 0, 'Lantian Xian', 'LNT', 0);
INSERT INTO `ln_region` VALUES (3147, '610124', '周至县', 326, 0, 0, 'Zhouzhi Xian', 'ZOZ', 0);
INSERT INTO `ln_region` VALUES (3148, '610125', '户县', 326, 0, 0, 'Hu Xian', 'HUX', 0);
INSERT INTO `ln_region` VALUES (3149, '610126', '高陵县', 326, 0, 0, 'Gaoling Xian', 'GLS', 0);
INSERT INTO `ln_region` VALUES (3150, '610201', '市辖区', 327, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (3151, '610202', '王益区', 327, 0, 0, 'Wangyi Qu', '2', 0);
INSERT INTO `ln_region` VALUES (3152, '610203', '印台区', 327, 0, 0, 'Yintai Qu', '2', 0);
INSERT INTO `ln_region` VALUES (3153, '610204', '耀州区', 327, 0, 0, 'Yaozhou Qu', '2', 0);
INSERT INTO `ln_region` VALUES (3154, '610222', '宜君县', 327, 0, 0, 'Yijun Xian', 'YJU', 0);
INSERT INTO `ln_region` VALUES (3155, '610301', '市辖区', 328, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (3156, '610302', '渭滨区', 328, 0, 0, 'Weibin Qu', 'WBQ', 0);
INSERT INTO `ln_region` VALUES (3157, '610303', '金台区', 328, 0, 0, 'Jintai Qu', 'JTQ', 0);
INSERT INTO `ln_region` VALUES (3158, '610304', '陈仓区', 328, 0, 0, 'Chencang Qu', '2', 0);
INSERT INTO `ln_region` VALUES (3159, '610322', '凤翔县', 328, 0, 0, 'Fengxiang Xian', 'FXG', 0);
INSERT INTO `ln_region` VALUES (3160, '610323', '岐山县', 328, 0, 0, 'Qishan Xian', 'QIS', 0);
INSERT INTO `ln_region` VALUES (3161, '610324', '扶风县', 328, 0, 0, 'Fufeng Xian', 'FFG', 0);
INSERT INTO `ln_region` VALUES (3162, '610326', '眉县', 328, 0, 0, 'Mei Xian', 'MEI', 0);
INSERT INTO `ln_region` VALUES (3163, '610327', '陇县', 328, 0, 0, 'Long Xian', 'LON', 0);
INSERT INTO `ln_region` VALUES (3164, '610328', '千阳县', 328, 0, 0, 'Qianyang Xian', 'QNY', 0);
INSERT INTO `ln_region` VALUES (3165, '610329', '麟游县', 328, 0, 0, 'Linyou Xian', 'LYP', 0);
INSERT INTO `ln_region` VALUES (3166, '610330', '凤县', 328, 0, 0, 'Feng Xian', 'FEG', 0);
INSERT INTO `ln_region` VALUES (3167, '610331', '太白县', 328, 0, 0, 'Taibai Xian', 'TBA', 0);
INSERT INTO `ln_region` VALUES (3168, '610401', '市辖区', 329, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (3169, '610402', '秦都区', 329, 0, 0, 'Qindu Qu', 'QDU', 0);
INSERT INTO `ln_region` VALUES (3170, '610403', '杨陵区', 329, 0, 0, 'Yangling Qu', 'YGL', 0);
INSERT INTO `ln_region` VALUES (3171, '610404', '渭城区', 329, 0, 0, 'Weicheng Qu', 'WIC', 0);
INSERT INTO `ln_region` VALUES (3172, '610422', '三原县', 329, 0, 0, 'Sanyuan Xian', 'SYN', 0);
INSERT INTO `ln_region` VALUES (3173, '610423', '泾阳县', 329, 0, 0, 'Jingyang Xian', 'JGY', 0);
INSERT INTO `ln_region` VALUES (3174, '610424', '乾县', 329, 0, 0, 'Qian Xian', 'QIA', 0);
INSERT INTO `ln_region` VALUES (3175, '610425', '礼泉县', 329, 0, 0, 'Liquan Xian', 'LIQ', 0);
INSERT INTO `ln_region` VALUES (3176, '610426', '永寿县', 329, 0, 0, 'Yongshou Xian', 'YSH', 0);
INSERT INTO `ln_region` VALUES (3177, '610427', '彬县', 329, 0, 0, 'Bin Xian', 'BIX', 0);
INSERT INTO `ln_region` VALUES (3178, '610428', '长武县', 329, 0, 0, 'Changwu Xian', 'CWU', 0);
INSERT INTO `ln_region` VALUES (3179, '610429', '旬邑县', 329, 0, 0, 'Xunyi Xian', 'XNY', 0);
INSERT INTO `ln_region` VALUES (3180, '610430', '淳化县', 329, 0, 0, 'Chunhua Xian', 'CHU', 0);
INSERT INTO `ln_region` VALUES (3181, '610431', '武功县', 329, 0, 0, 'Wugong Xian', 'WGG', 0);
INSERT INTO `ln_region` VALUES (3182, '610481', '兴平市', 329, 0, 0, 'Xingping Shi', 'XPG', 0);
INSERT INTO `ln_region` VALUES (3183, '610501', '市辖区', 330, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (3184, '610502', '临渭区', 330, 0, 0, 'Linwei Qu', 'LWE', 0);
INSERT INTO `ln_region` VALUES (3185, '610521', '华县', 330, 0, 0, 'Hua Xian', 'HXN', 0);
INSERT INTO `ln_region` VALUES (3186, '610522', '潼关县', 330, 0, 0, 'Tongguan Xian', 'TGN', 0);
INSERT INTO `ln_region` VALUES (3187, '610523', '大荔县', 330, 0, 0, 'Dali Xian', 'DAL', 0);
INSERT INTO `ln_region` VALUES (3188, '610524', '合阳县', 330, 0, 0, 'Heyang Xian', 'HYK', 0);
INSERT INTO `ln_region` VALUES (3189, '610525', '澄城县', 330, 0, 0, 'Chengcheng Xian', 'CCG', 0);
INSERT INTO `ln_region` VALUES (3190, '610526', '蒲城县', 330, 0, 0, 'Pucheng Xian', 'PUC', 0);
INSERT INTO `ln_region` VALUES (3191, '610527', '白水县', 330, 0, 0, 'Baishui Xian', 'BSU', 0);
INSERT INTO `ln_region` VALUES (3192, '610528', '富平县', 330, 0, 0, 'Fuping Xian', 'FPX', 0);
INSERT INTO `ln_region` VALUES (3193, '610581', '韩城市', 330, 0, 0, 'Hancheng Shi', 'HCE', 0);
INSERT INTO `ln_region` VALUES (3194, '610582', '华阴市', 330, 0, 0, 'Huayin Shi', 'HYI', 0);
INSERT INTO `ln_region` VALUES (3195, '610601', '市辖区', 331, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (3196, '610602', '宝塔区', 331, 0, 0, 'Baota Qu', 'BTA', 0);
INSERT INTO `ln_region` VALUES (3197, '610621', '延长县', 331, 0, 0, 'Yanchang Xian', 'YCA', 0);
INSERT INTO `ln_region` VALUES (3198, '610622', '延川县', 331, 0, 0, 'Yanchuan Xian', 'YCT', 0);
INSERT INTO `ln_region` VALUES (3199, '610623', '子长县', 331, 0, 0, 'Zichang Xian', 'ZCA', 0);
INSERT INTO `ln_region` VALUES (3200, '610624', '安塞县', 331, 0, 0, 'Ansai Xian', 'ANS', 0);
INSERT INTO `ln_region` VALUES (3201, '610625', '志丹县', 331, 0, 0, 'Zhidan Xian', 'ZDN', 0);
INSERT INTO `ln_region` VALUES (3202, '610626', '吴起县', 331, 0, 0, 'Wuqi Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3203, '610627', '甘泉县', 331, 0, 0, 'Ganquan Xian', 'GQN', 0);
INSERT INTO `ln_region` VALUES (3204, '610628', '富县', 331, 0, 0, 'Fu Xian', 'FUX', 0);
INSERT INTO `ln_region` VALUES (3205, '610629', '洛川县', 331, 0, 0, 'Luochuan Xian', 'LCW', 0);
INSERT INTO `ln_region` VALUES (3206, '610630', '宜川县', 331, 0, 0, 'Yichuan Xian', 'YIC', 0);
INSERT INTO `ln_region` VALUES (3207, '610631', '黄龙县', 331, 0, 0, 'Huanglong Xian', 'HGL', 0);
INSERT INTO `ln_region` VALUES (3208, '610632', '黄陵县', 331, 0, 0, 'Huangling Xian', 'HLG', 0);
INSERT INTO `ln_region` VALUES (3209, '610701', '市辖区', 332, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (3210, '610702', '汉台区', 332, 0, 0, 'Hantai Qu', 'HTQ', 0);
INSERT INTO `ln_region` VALUES (3211, '610721', '南郑县', 332, 0, 0, 'Nanzheng Xian', 'NZG', 0);
INSERT INTO `ln_region` VALUES (3212, '610722', '城固县', 332, 0, 0, 'Chenggu Xian', 'CGU', 0);
INSERT INTO `ln_region` VALUES (3213, '610723', '洋县', 332, 0, 0, 'Yang Xian', 'YGX', 0);
INSERT INTO `ln_region` VALUES (3214, '610724', '西乡县', 332, 0, 0, 'Xixiang Xian', 'XXA', 0);
INSERT INTO `ln_region` VALUES (3215, '610725', '勉县', 332, 0, 0, 'Mian Xian', 'MIA', 0);
INSERT INTO `ln_region` VALUES (3216, '610726', '宁强县', 332, 0, 0, 'Ningqiang Xian', 'NQG', 0);
INSERT INTO `ln_region` VALUES (3217, '610727', '略阳县', 332, 0, 0, 'Lueyang Xian', 'LYC', 0);
INSERT INTO `ln_region` VALUES (3218, '610728', '镇巴县', 332, 0, 0, 'Zhenba Xian', 'ZBA', 0);
INSERT INTO `ln_region` VALUES (3219, '610729', '留坝县', 332, 0, 0, 'Liuba Xian', 'LBA', 0);
INSERT INTO `ln_region` VALUES (3220, '610730', '佛坪县', 332, 0, 0, 'Foping Xian', 'FPG', 0);
INSERT INTO `ln_region` VALUES (3221, '610801', '市辖区', 333, 0, 0, '1', '2', 0);
INSERT INTO `ln_region` VALUES (3222, '610802', '榆阳区', 333, 0, 0, 'Yuyang Qu', '2', 0);
INSERT INTO `ln_region` VALUES (3223, '610821', '神木县', 333, 0, 0, 'Shenmu Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3224, '610822', '府谷县', 333, 0, 0, 'Fugu Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3225, '610823', '横山县', 333, 0, 0, 'Hengshan Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3226, '610824', '靖边县', 333, 0, 0, 'Jingbian Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3227, '610825', '定边县', 333, 0, 0, 'Dingbian Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3228, '610826', '绥德县', 333, 0, 0, 'Suide Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3229, '610827', '米脂县', 333, 0, 0, 'Mizhi Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3230, '610828', '佳县', 333, 0, 0, 'Jia Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3231, '610829', '吴堡县', 333, 0, 0, 'Wubu Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3232, '610830', '清涧县', 333, 0, 0, 'Qingjian Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3233, '610831', '子洲县', 333, 0, 0, 'Zizhou Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3234, '610901', '市辖区', 334, 0, 0, '1', '2', 0);
INSERT INTO `ln_region` VALUES (3235, '610902', '汉滨区', 334, 0, 0, 'Hanbin Qu', '2', 0);
INSERT INTO `ln_region` VALUES (3236, '610921', '汉阴县', 334, 0, 0, 'Hanyin Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3237, '610922', '石泉县', 334, 0, 0, 'Shiquan Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3238, '610923', '宁陕县', 334, 0, 0, 'Ningshan Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3239, '610924', '紫阳县', 334, 0, 0, 'Ziyang Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3240, '610925', '岚皋县', 334, 0, 0, 'Langao Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3241, '610926', '平利县', 334, 0, 0, 'Pingli Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3242, '610927', '镇坪县', 334, 0, 0, 'Zhenping Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3243, '610928', '旬阳县', 334, 0, 0, 'Xunyang Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3244, '610929', '白河县', 334, 0, 0, 'Baihe Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3245, '611001', '市辖区', 335, 0, 0, '1', '2', 0);
INSERT INTO `ln_region` VALUES (3246, '611002', '商州区', 335, 0, 0, 'Shangzhou Qu', '2', 0);
INSERT INTO `ln_region` VALUES (3247, '611021', '洛南县', 335, 0, 0, 'Luonan Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3248, '611022', '丹凤县', 335, 0, 0, 'Danfeng Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3249, '611023', '商南县', 335, 0, 0, 'Shangnan Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3250, '611024', '山阳县', 335, 0, 0, 'Shanyang Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3251, '611025', '镇安县', 335, 0, 0, 'Zhen,an Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3252, '611026', '柞水县', 335, 0, 0, 'Zhashui Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3253, '620101', '市辖区', 336, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (3254, '620102', '城关区', 336, 0, 0, 'Chengguan Qu', 'CLZ', 0);
INSERT INTO `ln_region` VALUES (3255, '620103', '七里河区', 336, 0, 0, 'Qilihe Qu', 'QLH', 0);
INSERT INTO `ln_region` VALUES (3256, '620104', '西固区', 336, 0, 0, 'Xigu Qu', 'XGU', 0);
INSERT INTO `ln_region` VALUES (3257, '620105', '安宁区', 336, 0, 0, 'Anning Qu', 'ANQ', 0);
INSERT INTO `ln_region` VALUES (3258, '620111', '红古区', 336, 0, 0, 'Honggu Qu', 'HOG', 0);
INSERT INTO `ln_region` VALUES (3259, '620121', '永登县', 336, 0, 0, 'Yongdeng Xian', 'YDG', 0);
INSERT INTO `ln_region` VALUES (3260, '620122', '皋兰县', 336, 0, 0, 'Gaolan Xian', 'GAL', 0);
INSERT INTO `ln_region` VALUES (3261, '620123', '榆中县', 336, 0, 0, 'Yuzhong Xian', 'YZX', 0);
INSERT INTO `ln_region` VALUES (3262, '620201', '市辖区', 337, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (3263, '620301', '市辖区', 338, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (3264, '620302', '金川区', 338, 0, 0, 'Jinchuan Qu', 'JCU', 0);
INSERT INTO `ln_region` VALUES (3265, '620321', '永昌县', 338, 0, 0, 'Yongchang Xian', 'YCF', 0);
INSERT INTO `ln_region` VALUES (3266, '620401', '市辖区', 339, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (3267, '620402', '白银区', 339, 0, 0, 'Baiyin Qu', 'BYB', 0);
INSERT INTO `ln_region` VALUES (3268, '620403', '平川区', 339, 0, 0, 'Pingchuan Qu', 'PCQ', 0);
INSERT INTO `ln_region` VALUES (3269, '620421', '靖远县', 339, 0, 0, 'Jingyuan Xian', 'JYH', 0);
INSERT INTO `ln_region` VALUES (3270, '620422', '会宁县', 339, 0, 0, 'Huining xian', 'HNI', 0);
INSERT INTO `ln_region` VALUES (3271, '620423', '景泰县', 339, 0, 0, 'Jingtai Xian', 'JGT', 0);
INSERT INTO `ln_region` VALUES (3272, '620501', '市辖区', 340, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (3274, '620502', '秦州区', 340, 0, 0, 'Beidao Qu', '2', 0);
INSERT INTO `ln_region` VALUES (3275, '620521', '清水县', 340, 0, 0, 'Qingshui Xian', 'QSG', 0);
INSERT INTO `ln_region` VALUES (3276, '620522', '秦安县', 340, 0, 0, 'Qin,an Xian', 'QNA', 0);
INSERT INTO `ln_region` VALUES (3277, '620523', '甘谷县', 340, 0, 0, 'Gangu Xian', 'GGU', 0);
INSERT INTO `ln_region` VALUES (3278, '620524', '武山县', 340, 0, 0, 'Wushan Xian', 'WSX', 0);
INSERT INTO `ln_region` VALUES (3279, '620525', '张家川回族自治县', 340, 0, 0, 'Zhangjiachuan Huizu Zizhixian', 'ZJC', 0);
INSERT INTO `ln_region` VALUES (3280, '620601', '市辖区', 341, 0, 0, '1', '2', 0);
INSERT INTO `ln_region` VALUES (3281, '620602', '凉州区', 341, 0, 0, 'Liangzhou Qu', '2', 0);
INSERT INTO `ln_region` VALUES (3282, '620621', '民勤县', 341, 0, 0, 'Minqin Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3283, '620622', '古浪县', 341, 0, 0, 'Gulang Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3284, '620623', '天祝藏族自治县', 341, 0, 0, 'Tianzhu Zangzu Zizhixian', '2', 0);
INSERT INTO `ln_region` VALUES (3285, '620701', '市辖区', 342, 0, 0, '1', '2', 0);
INSERT INTO `ln_region` VALUES (3286, '620702', '甘州区', 342, 0, 0, 'Ganzhou Qu', '2', 0);
INSERT INTO `ln_region` VALUES (3287, '620721', '肃南裕固族自治县', 342, 0, 0, 'Sunan Yugurzu Zizhixian', '2', 0);
INSERT INTO `ln_region` VALUES (3288, '620722', '民乐县', 342, 0, 0, 'Minle Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3289, '620723', '临泽县', 342, 0, 0, 'Linze Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3290, '620724', '高台县', 342, 0, 0, 'Gaotai Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3291, '620725', '山丹县', 342, 0, 0, 'Shandan Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3292, '620801', '市辖区', 343, 0, 0, '1', '2', 0);
INSERT INTO `ln_region` VALUES (3293, '620802', '崆峒区', 343, 0, 0, 'Kongdong Qu', '2', 0);
INSERT INTO `ln_region` VALUES (3294, '620821', '泾川县', 343, 0, 0, 'Jingchuan Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3295, '620822', '灵台县', 343, 0, 0, 'Lingtai Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3296, '620823', '崇信县', 343, 0, 0, 'Chongxin Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3297, '620824', '华亭县', 343, 0, 0, 'Huating Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3298, '620825', '庄浪县', 343, 0, 0, 'Zhuanglang Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3299, '620826', '静宁县', 343, 0, 0, 'Jingning Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3300, '620901', '市辖区', 344, 0, 0, '1', '2', 0);
INSERT INTO `ln_region` VALUES (3301, '620902', '肃州区', 344, 0, 0, 'Suzhou Qu', '2', 0);
INSERT INTO `ln_region` VALUES (3302, '620921', '金塔县', 344, 0, 0, 'Jinta Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3304, '620923', '肃北蒙古族自治县', 344, 0, 0, 'Subei Monguzu Zizhixian', '2', 0);
INSERT INTO `ln_region` VALUES (3305, '620924', '阿克塞哈萨克族自治县', 344, 0, 0, 'Aksay Kazakzu Zizhixian', '2', 0);
INSERT INTO `ln_region` VALUES (3306, '620981', '玉门市', 344, 0, 0, 'Yumen Shi', '2', 0);
INSERT INTO `ln_region` VALUES (3307, '620982', '敦煌市', 344, 0, 0, 'Dunhuang Shi', '2', 0);
INSERT INTO `ln_region` VALUES (3308, '621001', '市辖区', 345, 0, 0, '1', '2', 0);
INSERT INTO `ln_region` VALUES (3309, '621002', '西峰区', 345, 0, 0, 'Xifeng Qu', '2', 0);
INSERT INTO `ln_region` VALUES (3310, '621021', '庆城县', 345, 0, 0, 'Qingcheng Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3311, '621022', '环县', 345, 0, 0, 'Huan Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3312, '621023', '华池县', 345, 0, 0, 'Huachi Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3313, '621024', '合水县', 345, 0, 0, 'Heshui Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3314, '621025', '正宁县', 345, 0, 0, 'Zhengning Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3315, '621026', '宁县', 345, 0, 0, 'Ning Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3316, '621027', '镇原县', 345, 0, 0, 'Zhenyuan Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3317, '621101', '市辖区', 346, 0, 0, '1', '2', 0);
INSERT INTO `ln_region` VALUES (3318, '621102', '安定区', 346, 0, 0, 'Anding Qu', '2', 0);
INSERT INTO `ln_region` VALUES (3319, '621121', '通渭县', 346, 0, 0, 'Tongwei Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3320, '621122', '陇西县', 346, 0, 0, 'Longxi Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3321, '621123', '渭源县', 346, 0, 0, 'Weiyuan Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3322, '621124', '临洮县', 346, 0, 0, 'Lintao Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3323, '621125', '漳县', 346, 0, 0, 'Zhang Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3324, '621126', '岷县', 346, 0, 0, 'Min Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3325, '621201', '市辖区', 347, 0, 0, '1', '2', 0);
INSERT INTO `ln_region` VALUES (3326, '621202', '武都区', 347, 0, 0, 'Wudu Qu', '2', 0);
INSERT INTO `ln_region` VALUES (3327, '621221', '成县', 347, 0, 0, 'Cheng Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3328, '621222', '文县', 347, 0, 0, 'Wen Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3329, '621223', '宕昌县', 347, 0, 0, 'Dangchang Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3330, '621224', '康县', 347, 0, 0, 'Kang Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3331, '621225', '西和县', 347, 0, 0, 'Xihe Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3332, '621226', '礼县', 347, 0, 0, 'Li Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3333, '621227', '徽县', 347, 0, 0, 'Hui Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3334, '621228', '两当县', 347, 0, 0, 'Liangdang Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3335, '622901', '临夏市', 348, 0, 0, 'Linxia Shi', 'LXR', 0);
INSERT INTO `ln_region` VALUES (3336, '622921', '临夏县', 348, 0, 0, 'Linxia Xian', 'LXF', 0);
INSERT INTO `ln_region` VALUES (3337, '622922', '康乐县', 348, 0, 0, 'Kangle Xian', 'KLE', 0);
INSERT INTO `ln_region` VALUES (3338, '622923', '永靖县', 348, 0, 0, 'Yongjing Xian', 'YJG', 0);
INSERT INTO `ln_region` VALUES (3339, '622924', '广河县', 348, 0, 0, 'Guanghe Xian', 'GHX', 0);
INSERT INTO `ln_region` VALUES (3340, '622925', '和政县', 348, 0, 0, 'Hezheng Xian', 'HZG', 0);
INSERT INTO `ln_region` VALUES (3341, '622926', '东乡族自治县', 348, 0, 0, 'Dongxiangzu Zizhixian', 'DXZ', 0);
INSERT INTO `ln_region` VALUES (3342, '622927', '积石山保安族东乡族撒拉族自治县', 348, 0, 0, 'Jishishan Bonanzu Dongxiangzu Salarzu Zizhixian', 'JSN', 0);
INSERT INTO `ln_region` VALUES (3343, '623001', '合作市', 349, 0, 0, 'Hezuo Shi', 'HEZ', 0);
INSERT INTO `ln_region` VALUES (3344, '623021', '临潭县', 349, 0, 0, 'Lintan Xian', 'LTN', 0);
INSERT INTO `ln_region` VALUES (3345, '623022', '卓尼县', 349, 0, 0, 'Jone', 'JON', 0);
INSERT INTO `ln_region` VALUES (3346, '623023', '舟曲县', 349, 0, 0, 'Zhugqu Xian', 'ZQU', 0);
INSERT INTO `ln_region` VALUES (3347, '623024', '迭部县', 349, 0, 0, 'Tewo Xian', 'TEW', 0);
INSERT INTO `ln_region` VALUES (3348, '623025', '玛曲县', 349, 0, 0, 'Maqu Xian', 'MQU', 0);
INSERT INTO `ln_region` VALUES (3349, '623026', '碌曲县', 349, 0, 0, 'Luqu Xian', 'LQU', 0);
INSERT INTO `ln_region` VALUES (3350, '623027', '夏河县', 349, 0, 0, 'Xiahe Xian', 'XHN', 0);
INSERT INTO `ln_region` VALUES (3351, '630101', '市辖区', 350, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (3352, '630102', '城东区', 350, 0, 0, 'Chengdong Qu', 'CDQ', 0);
INSERT INTO `ln_region` VALUES (3353, '630103', '城中区', 350, 0, 0, 'Chengzhong Qu', 'CZQ', 0);
INSERT INTO `ln_region` VALUES (3354, '630104', '城西区', 350, 0, 0, 'Chengxi Qu', 'CXQ', 0);
INSERT INTO `ln_region` VALUES (3355, '630105', '城北区', 350, 0, 0, 'Chengbei Qu', 'CBE', 0);
INSERT INTO `ln_region` VALUES (3356, '630121', '大通回族土族自治县', 350, 0, 0, 'Datong Huizu Tuzu Zizhixian', 'DAT', 0);
INSERT INTO `ln_region` VALUES (3357, '630122', '湟中县', 350, 0, 0, 'Huangzhong Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3358, '630123', '湟源县', 350, 0, 0, 'Huangyuan Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3359, '632121', '平安县', 351, 0, 0, 'Ping,an Xian', 'PAN', 0);
INSERT INTO `ln_region` VALUES (3360, '632122', '民和回族土族自治县', 351, 0, 0, 'Minhe Huizu Tuzu Zizhixian', 'MHE', 0);
INSERT INTO `ln_region` VALUES (3361, '632123', '乐都县', 351, 0, 0, 'Ledu Xian', 'LDU', 0);
INSERT INTO `ln_region` VALUES (3362, '632126', '互助土族自治县', 351, 0, 0, 'Huzhu Tuzu Zizhixian', 'HZT', 0);
INSERT INTO `ln_region` VALUES (3363, '632127', '化隆回族自治县', 351, 0, 0, 'Hualong Huizu Zizhixian', 'HLO', 0);
INSERT INTO `ln_region` VALUES (3364, '632128', '循化撒拉族自治县', 351, 0, 0, 'Xunhua Salazu Zizhixian', 'XUH', 0);
INSERT INTO `ln_region` VALUES (3365, '632221', '门源回族自治县', 352, 0, 0, 'Menyuan Huizu Zizhixian', 'MYU', 0);
INSERT INTO `ln_region` VALUES (3366, '632222', '祁连县', 352, 0, 0, 'Qilian Xian', 'QLN', 0);
INSERT INTO `ln_region` VALUES (3367, '632223', '海晏县', 352, 0, 0, 'Haiyan Xian', 'HIY', 0);
INSERT INTO `ln_region` VALUES (3368, '632224', '刚察县', 352, 0, 0, 'Gangca Xian', 'GAN', 0);
INSERT INTO `ln_region` VALUES (3369, '632321', '同仁县', 353, 0, 0, 'Tongren Xian', 'TRN', 0);
INSERT INTO `ln_region` VALUES (3370, '632322', '尖扎县', 353, 0, 0, 'Jainca Xian', 'JAI', 0);
INSERT INTO `ln_region` VALUES (3371, '632323', '泽库县', 353, 0, 0, 'Zekog Xian', 'ZEK', 0);
INSERT INTO `ln_region` VALUES (3372, '632324', '河南蒙古族自治县', 353, 0, 0, 'Henan Mongolzu Zizhixian', 'HNM', 0);
INSERT INTO `ln_region` VALUES (3373, '632521', '共和县', 354, 0, 0, 'Gonghe Xian', 'GHE', 0);
INSERT INTO `ln_region` VALUES (3374, '632522', '同德县', 354, 0, 0, 'Tongde Xian', 'TDX', 0);
INSERT INTO `ln_region` VALUES (3375, '632523', '贵德县', 354, 0, 0, 'Guide Xian', 'GID', 0);
INSERT INTO `ln_region` VALUES (3376, '632524', '兴海县', 354, 0, 0, 'Xinghai Xian', 'XHA', 0);
INSERT INTO `ln_region` VALUES (3377, '632525', '贵南县', 354, 0, 0, 'Guinan Xian', 'GNN', 0);
INSERT INTO `ln_region` VALUES (3378, '632621', '玛沁县', 355, 0, 0, 'Maqen Xian', 'MAQ', 0);
INSERT INTO `ln_region` VALUES (3379, '632622', '班玛县', 355, 0, 0, 'Baima Xian', 'BMX', 0);
INSERT INTO `ln_region` VALUES (3380, '632623', '甘德县', 355, 0, 0, 'Gade Xian', 'GAD', 0);
INSERT INTO `ln_region` VALUES (3381, '632624', '达日县', 355, 0, 0, 'Tarlag Xian', 'TAR', 0);
INSERT INTO `ln_region` VALUES (3382, '632625', '久治县', 355, 0, 0, 'Jigzhi Xian', 'JUZ', 0);
INSERT INTO `ln_region` VALUES (3383, '632626', '玛多县', 355, 0, 0, 'Madoi Xian', 'MAD', 0);
INSERT INTO `ln_region` VALUES (3384, '632721', '玉树县', 356, 0, 0, 'Yushu Xian', 'YSK', 0);
INSERT INTO `ln_region` VALUES (3385, '632722', '杂多县', 356, 0, 0, 'Zadoi Xian', 'ZAD', 0);
INSERT INTO `ln_region` VALUES (3386, '632723', '称多县', 356, 0, 0, 'Chindu Xian', 'CHI', 0);
INSERT INTO `ln_region` VALUES (3387, '632724', '治多县', 356, 0, 0, 'Zhidoi Xian', 'ZHI', 0);
INSERT INTO `ln_region` VALUES (3388, '632725', '囊谦县', 356, 0, 0, 'Nangqen Xian', 'NQN', 0);
INSERT INTO `ln_region` VALUES (3389, '632726', '曲麻莱县', 356, 0, 0, 'Qumarleb Xian', 'QUM', 0);
INSERT INTO `ln_region` VALUES (3390, '632801', '格尔木市', 357, 0, 0, 'Golmud Shi', 'GOS', 0);
INSERT INTO `ln_region` VALUES (3391, '632802', '德令哈市', 357, 0, 0, 'Delhi Shi', 'DEL', 0);
INSERT INTO `ln_region` VALUES (3392, '632821', '乌兰县', 357, 0, 0, 'Ulan Xian', 'ULA', 0);
INSERT INTO `ln_region` VALUES (3393, '632822', '都兰县', 357, 0, 0, 'Dulan Xian', 'DUL', 0);
INSERT INTO `ln_region` VALUES (3394, '632823', '天峻县', 357, 0, 0, 'Tianjun Xian', 'TJN', 0);
INSERT INTO `ln_region` VALUES (3395, '640101', '市辖区', 358, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (3396, '640104', '兴庆区', 358, 0, 0, 'Xingqing Qu', '2', 0);
INSERT INTO `ln_region` VALUES (3397, '640105', '西夏区', 358, 0, 0, 'Xixia Qu', '2', 0);
INSERT INTO `ln_region` VALUES (3398, '640106', '金凤区', 358, 0, 0, 'Jinfeng Qu', '2', 0);
INSERT INTO `ln_region` VALUES (3399, '640121', '永宁县', 358, 0, 0, 'Yongning Xian', 'YGN', 0);
INSERT INTO `ln_region` VALUES (3400, '640122', '贺兰县', 358, 0, 0, 'Helan Xian', 'HLN', 0);
INSERT INTO `ln_region` VALUES (3401, '640181', '灵武市', 358, 0, 0, 'Lingwu Shi', '2', 0);
INSERT INTO `ln_region` VALUES (3402, '640201', '市辖区', 359, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (3403, '640202', '大武口区', 359, 0, 0, 'Dawukou Qu', 'DWK', 0);
INSERT INTO `ln_region` VALUES (3404, '640205', '惠农区', 359, 0, 0, 'Huinong Qu', '2', 0);
INSERT INTO `ln_region` VALUES (3405, '640221', '平罗县', 359, 0, 0, 'Pingluo Xian', 'PLO', 0);
INSERT INTO `ln_region` VALUES (3406, '640301', '市辖区', 360, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (3407, '640302', '利通区', 360, 0, 0, 'Litong Qu', 'LTW', 0);
INSERT INTO `ln_region` VALUES (3408, '640323', '盐池县', 360, 0, 0, 'Yanchi Xian', 'YCY', 0);
INSERT INTO `ln_region` VALUES (3409, '640324', '同心县', 360, 0, 0, 'Tongxin Xian', 'TGX', 0);
INSERT INTO `ln_region` VALUES (3410, '640381', '青铜峡市', 360, 0, 0, 'Qingtongxia Xian', 'QTX', 0);
INSERT INTO `ln_region` VALUES (3411, '640401', '市辖区', 361, 0, 0, '1', '2', 0);
INSERT INTO `ln_region` VALUES (3412, '640402', '原州区', 361, 0, 0, 'Yuanzhou Qu', '2', 0);
INSERT INTO `ln_region` VALUES (3413, '640422', '西吉县', 361, 0, 0, 'Xiji Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3414, '640423', '隆德县', 361, 0, 0, 'Longde Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3415, '640424', '泾源县', 361, 0, 0, 'Jingyuan Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3416, '640425', '彭阳县', 361, 0, 0, 'Pengyang Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3417, '640501', '市辖区', 362, 0, 0, '1', '2', 0);
INSERT INTO `ln_region` VALUES (3418, '640502', '沙坡头区', 362, 0, 0, 'Shapotou Qu', '2', 0);
INSERT INTO `ln_region` VALUES (3419, '640521', '中宁县', 362, 0, 0, 'Zhongning Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3420, '640522', '海原县', 362, 0, 0, 'Haiyuan Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3421, '650101', '市辖区', 363, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (3422, '650102', '天山区', 363, 0, 0, 'Tianshan Qu', 'TSL', 0);
INSERT INTO `ln_region` VALUES (3423, '650103', '沙依巴克区', 363, 0, 0, 'Saybag Qu', 'SAY', 0);
INSERT INTO `ln_region` VALUES (3424, '650104', '新市区', 363, 0, 0, 'Xinshi Qu', 'XSU', 0);
INSERT INTO `ln_region` VALUES (3425, '650105', '水磨沟区', 363, 0, 0, 'Shuimogou Qu', 'SMG', 0);
INSERT INTO `ln_region` VALUES (3426, '650106', '头屯河区', 363, 0, 0, 'Toutunhe Qu', 'TTH', 0);
INSERT INTO `ln_region` VALUES (3427, '650107', '达坂城区', 363, 0, 0, 'Dabancheng Qu', '2', 0);
INSERT INTO `ln_region` VALUES (3428, '650109', '米东区', 363, 0, 0, 'Midong Qu', '2', 0);
INSERT INTO `ln_region` VALUES (3429, '650121', '乌鲁木齐县', 363, 0, 0, 'Urumqi Xian', 'URX', 0);
INSERT INTO `ln_region` VALUES (3430, '650201', '市辖区', 364, 0, 0, 'Shixiaqu', '2', 0);
INSERT INTO `ln_region` VALUES (3431, '650202', '独山子区', 364, 0, 0, 'Dushanzi Qu', 'DSZ', 0);
INSERT INTO `ln_region` VALUES (3432, '650203', '克拉玛依区', 364, 0, 0, 'Karamay Qu', 'KRQ', 0);
INSERT INTO `ln_region` VALUES (3433, '650204', '白碱滩区', 364, 0, 0, 'Baijiantan Qu', 'BJT', 0);
INSERT INTO `ln_region` VALUES (3434, '650205', '乌尔禾区', 364, 0, 0, 'Orku Qu', 'ORK', 0);
INSERT INTO `ln_region` VALUES (3435, '652101', '吐鲁番市', 365, 0, 0, 'Turpan Shi', 'TUR', 0);
INSERT INTO `ln_region` VALUES (3436, '652122', '鄯善县', 365, 0, 0, 'Shanshan(piqan) Xian', 'SSX', 0);
INSERT INTO `ln_region` VALUES (3437, '652123', '托克逊县', 365, 0, 0, 'Toksun Xian', 'TOK', 0);
INSERT INTO `ln_region` VALUES (3438, '652201', '哈密市', 366, 0, 0, 'Hami(kumul) Shi', 'HAM', 0);
INSERT INTO `ln_region` VALUES (3439, '652222', '巴里坤哈萨克自治县', 366, 0, 0, 'Barkol Kazak Zizhixian', 'BAR', 0);
INSERT INTO `ln_region` VALUES (3440, '652223', '伊吾县', 366, 0, 0, 'Yiwu(Araturuk) Xian', 'YWX', 0);
INSERT INTO `ln_region` VALUES (3441, '652301', '昌吉市', 367, 0, 0, 'Changji Shi', 'CJS', 0);
INSERT INTO `ln_region` VALUES (3442, '652302', '阜康市', 367, 0, 0, 'Fukang Shi', 'FKG', 0);
INSERT INTO `ln_region` VALUES (3444, '652323', '呼图壁县', 367, 0, 0, 'Hutubi Xian', 'HTB', 0);
INSERT INTO `ln_region` VALUES (3445, '652324', '玛纳斯县', 367, 0, 0, 'Manas Xian', 'MAS', 0);
INSERT INTO `ln_region` VALUES (3446, '652325', '奇台县', 367, 0, 0, 'Qitai Xian', 'QTA', 0);
INSERT INTO `ln_region` VALUES (3447, '652327', '吉木萨尔县', 367, 0, 0, 'Jimsar Xian', 'JIM', 0);
INSERT INTO `ln_region` VALUES (3448, '652328', '木垒哈萨克自治县', 367, 0, 0, 'Mori Kazak Zizhixian', 'MOR', 0);
INSERT INTO `ln_region` VALUES (3449, '652701', '博乐市', 368, 0, 0, 'Bole(Bortala) Shi', 'BLE', 0);
INSERT INTO `ln_region` VALUES (3450, '652722', '精河县', 368, 0, 0, 'Jinghe(Jing) Xian', 'JGH', 0);
INSERT INTO `ln_region` VALUES (3451, '652723', '温泉县', 368, 0, 0, 'Wenquan(Arixang) Xian', 'WNQ', 0);
INSERT INTO `ln_region` VALUES (3452, '652801', '库尔勒市', 369, 0, 0, 'Korla Shi', 'KOR', 0);
INSERT INTO `ln_region` VALUES (3453, '652822', '轮台县', 369, 0, 0, 'Luntai(Bugur) Xian', 'LTX', 0);
INSERT INTO `ln_region` VALUES (3454, '652823', '尉犁县', 369, 0, 0, 'Yuli(Lopnur) Xian', 'YLI', 0);
INSERT INTO `ln_region` VALUES (3455, '652824', '若羌县', 369, 0, 0, 'Ruoqiang(Qakilik) Xian', 'RQG', 0);
INSERT INTO `ln_region` VALUES (3456, '652825', '且末县', 369, 0, 0, 'Qiemo(Qarqan) Xian', 'QMO', 0);
INSERT INTO `ln_region` VALUES (3457, '652826', '焉耆回族自治县', 369, 0, 0, 'Yanqi Huizu Zizhixian', 'YQI', 0);
INSERT INTO `ln_region` VALUES (3458, '652827', '和静县', 369, 0, 0, 'Hejing Xian', 'HJG', 0);
INSERT INTO `ln_region` VALUES (3459, '652828', '和硕县', 369, 0, 0, 'Hoxud Xian', 'HOX', 0);
INSERT INTO `ln_region` VALUES (3460, '652829', '博湖县', 369, 0, 0, 'Bohu(Bagrax) Xian', 'BHU', 0);
INSERT INTO `ln_region` VALUES (3461, '652901', '阿克苏市', 370, 0, 0, 'Aksu Shi', 'AKS', 0);
INSERT INTO `ln_region` VALUES (3462, '652922', '温宿县', 370, 0, 0, 'Wensu Xian', 'WSU', 0);
INSERT INTO `ln_region` VALUES (3463, '652923', '库车县', 370, 0, 0, 'Kuqa Xian', 'KUQ', 0);
INSERT INTO `ln_region` VALUES (3464, '652924', '沙雅县', 370, 0, 0, 'Xayar Xian', 'XYR', 0);
INSERT INTO `ln_region` VALUES (3465, '652925', '新和县', 370, 0, 0, 'Xinhe(Toksu) Xian', 'XHT', 0);
INSERT INTO `ln_region` VALUES (3466, '652926', '拜城县', 370, 0, 0, 'Baicheng(Bay) Xian', 'BCG', 0);
INSERT INTO `ln_region` VALUES (3467, '652927', '乌什县', 370, 0, 0, 'Wushi(Uqturpan) Xian', 'WSH', 0);
INSERT INTO `ln_region` VALUES (3468, '652928', '阿瓦提县', 370, 0, 0, 'Awat Xian', 'AWA', 0);
INSERT INTO `ln_region` VALUES (3469, '652929', '柯坪县', 370, 0, 0, 'Kalpin Xian', 'KAL', 0);
INSERT INTO `ln_region` VALUES (3470, '653001', '阿图什市', 371, 0, 0, 'Artux Shi', 'ART', 0);
INSERT INTO `ln_region` VALUES (3471, '653022', '阿克陶县', 371, 0, 0, 'Akto Xian', 'AKT', 0);
INSERT INTO `ln_region` VALUES (3472, '653023', '阿合奇县', 371, 0, 0, 'Akqi Xian', 'AKQ', 0);
INSERT INTO `ln_region` VALUES (3473, '653024', '乌恰县', 371, 0, 0, 'Wuqia(Ulugqat) Xian', 'WQA', 0);
INSERT INTO `ln_region` VALUES (3474, '653101', '喀什市', 372, 0, 0, 'Kashi (Kaxgar) Shi', 'KHG', 0);
INSERT INTO `ln_region` VALUES (3475, '653121', '疏附县', 372, 0, 0, 'Shufu Xian', 'SFU', 0);
INSERT INTO `ln_region` VALUES (3476, '653122', '疏勒县', 372, 0, 0, 'Shule Xian', 'SHL', 0);
INSERT INTO `ln_region` VALUES (3477, '653123', '英吉沙县', 372, 0, 0, 'Yengisar Xian', 'YEN', 0);
INSERT INTO `ln_region` VALUES (3478, '653124', '泽普县', 372, 0, 0, 'Zepu(Poskam) Xian', 'ZEP', 0);
INSERT INTO `ln_region` VALUES (3479, '653125', '莎车县', 372, 0, 0, 'Shache(Yarkant) Xian', 'SHC', 0);
INSERT INTO `ln_region` VALUES (3480, '653126', '叶城县', 372, 0, 0, 'Yecheng(Kargilik) Xian', 'YEC', 0);
INSERT INTO `ln_region` VALUES (3481, '653127', '麦盖提县', 372, 0, 0, 'Markit Xian', 'MAR', 0);
INSERT INTO `ln_region` VALUES (3482, '653128', '岳普湖县', 372, 0, 0, 'Yopurga Xian', 'YOP', 0);
INSERT INTO `ln_region` VALUES (3483, '653129', '伽师县', 372, 0, 0, 'Jiashi(Payzawat) Xian', 'JSI', 0);
INSERT INTO `ln_region` VALUES (3484, '653130', '巴楚县', 372, 0, 0, 'Bachu(Maralbexi) Xian', 'BCX', 0);
INSERT INTO `ln_region` VALUES (3485, '653131', '塔什库尔干塔吉克自治县', 372, 0, 0, 'Taxkorgan Tajik Zizhixian', 'TXK', 0);
INSERT INTO `ln_region` VALUES (3486, '653201', '和田市', 373, 0, 0, 'Hotan Shi', 'HTS', 0);
INSERT INTO `ln_region` VALUES (3487, '653221', '和田县', 373, 0, 0, 'Hotan Xian', 'HOT', 0);
INSERT INTO `ln_region` VALUES (3488, '653222', '墨玉县', 373, 0, 0, 'Moyu(Karakax) Xian', 'MOY', 0);
INSERT INTO `ln_region` VALUES (3489, '653223', '皮山县', 373, 0, 0, 'Pishan(Guma) Xian', 'PSA', 0);
INSERT INTO `ln_region` VALUES (3490, '653224', '洛浦县', 373, 0, 0, 'Lop Xian', 'LOP', 0);
INSERT INTO `ln_region` VALUES (3491, '653225', '策勒县', 373, 0, 0, 'Qira Xian', 'QIR', 0);
INSERT INTO `ln_region` VALUES (3492, '653226', '于田县', 373, 0, 0, 'Yutian(Keriya) Xian', 'YUT', 0);
INSERT INTO `ln_region` VALUES (3493, '653227', '民丰县', 373, 0, 0, 'Minfeng(Niya) Xian', 'MFG', 0);
INSERT INTO `ln_region` VALUES (3494, '654002', '伊宁市', 374, 0, 0, 'Yining(Gulja) Shi', '2', 0);
INSERT INTO `ln_region` VALUES (3495, '654003', '奎屯市', 374, 0, 0, 'Kuytun Shi', '2', 0);
INSERT INTO `ln_region` VALUES (3496, '654021', '伊宁县', 374, 0, 0, 'Yining(Gulja) Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3497, '654022', '察布查尔锡伯自治县', 374, 0, 0, 'Qapqal Xibe Zizhixian', '2', 0);
INSERT INTO `ln_region` VALUES (3498, '654023', '霍城县', 374, 0, 0, 'Huocheng Xin', '2', 0);
INSERT INTO `ln_region` VALUES (3499, '654024', '巩留县', 374, 0, 0, 'Gongliu(Tokkuztara) Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3500, '654025', '新源县', 374, 0, 0, 'Xinyuan(Kunes) Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3501, '654026', '昭苏县', 374, 0, 0, 'Zhaosu(Mongolkure) Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3502, '654027', '特克斯县', 374, 0, 0, 'Tekes Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3503, '654028', '尼勒克县', 374, 0, 0, 'Nilka Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3504, '654201', '塔城市', 375, 0, 0, 'Tacheng(Qoqek) Shi', 'TCS', 0);
INSERT INTO `ln_region` VALUES (3505, '654202', '乌苏市', 375, 0, 0, 'Usu Shi', 'USU', 0);
INSERT INTO `ln_region` VALUES (3506, '654221', '额敏县', 375, 0, 0, 'Emin(Dorbiljin) Xian', 'EMN', 0);
INSERT INTO `ln_region` VALUES (3507, '654223', '沙湾县', 375, 0, 0, 'Shawan Xian', 'SWX', 0);
INSERT INTO `ln_region` VALUES (3508, '654224', '托里县', 375, 0, 0, 'Toli Xian', 'TLI', 0);
INSERT INTO `ln_region` VALUES (3509, '654225', '裕民县', 375, 0, 0, 'Yumin(Qagantokay) Xian', 'YMN', 0);
INSERT INTO `ln_region` VALUES (3510, '654226', '和布克赛尔蒙古自治县', 375, 0, 0, 'Hebukesaiermengguzizhi Xian', '2', 0);
INSERT INTO `ln_region` VALUES (3511, '654301', '阿勒泰市', 376, 0, 0, 'Altay Shi', 'ALT', 0);
INSERT INTO `ln_region` VALUES (3512, '654321', '布尔津县', 376, 0, 0, 'Burqin Xian', 'BUX', 0);
INSERT INTO `ln_region` VALUES (3513, '654322', '富蕴县', 376, 0, 0, 'Fuyun(Koktokay) Xian', 'FYN', 0);
INSERT INTO `ln_region` VALUES (3514, '654323', '福海县', 376, 0, 0, 'Fuhai(Burultokay) Xian', 'FHI', 0);
INSERT INTO `ln_region` VALUES (3515, '654324', '哈巴河县', 376, 0, 0, 'Habahe(Kaba) Xian', 'HBH', 0);
INSERT INTO `ln_region` VALUES (3516, '654325', '青河县', 376, 0, 0, 'Qinghe(Qinggil) Xian', 'QHX', 0);
INSERT INTO `ln_region` VALUES (3517, '654326', '吉木乃县', 376, 0, 0, 'Jeminay Xian', 'JEM', 0);
INSERT INTO `ln_region` VALUES (3518, '659001', '石河子市', 377, 0, 0, 'Shihezi Shi', 'SHZ', 0);
INSERT INTO `ln_region` VALUES (3519, '659002', '阿拉尔市', 377, 0, 0, 'Alaer Shi', '2', 0);
INSERT INTO `ln_region` VALUES (3520, '659003', '图木舒克市', 377, 0, 0, 'Tumushuke Shi', '2', 0);
INSERT INTO `ln_region` VALUES (3521, '659004', '五家渠市', 377, 0, 0, 'Wujiaqu Shi', '2', 0);
INSERT INTO `ln_region` VALUES (4000, '620503', '麦积区', 340, 0, 0, 'Maiji Qu', '2', 0);
INSERT INTO `ln_region` VALUES (4001, '500116', '江津区', 270, 0, 0, 'Jiangjin Qu', '2', 0);
INSERT INTO `ln_region` VALUES (4002, '500117', '合川区', 270, 0, 0, 'Hechuan Qu', '2', 0);
INSERT INTO `ln_region` VALUES (4003, '500118', '永川区', 270, 0, 0, 'Yongchuan Qu', '2', 0);
INSERT INTO `ln_region` VALUES (4004, '500119', '南川区', 270, 0, 0, 'Nanchuan Qu', '2', 0);
INSERT INTO `ln_region` VALUES (4006, '340221', '芜湖县', 1412, 0, 0, 'Wuhu Xian', 'WHX', 0);
INSERT INTO `ln_region` VALUES (4100, '232701', '加格达奇区', 106, 0, 0, 'Jiagedaqi Qu', '2', 0);
INSERT INTO `ln_region` VALUES (4101, '232702', '松岭区', 106, 0, 0, 'Songling Qu', '2', 0);
INSERT INTO `ln_region` VALUES (4102, '232703', '新林区', 106, 0, 0, 'Xinlin Qu', '2', 0);
INSERT INTO `ln_region` VALUES (4103, '232704', '呼中区', 106, 0, 0, 'Huzhong Qu', '2', 0);
INSERT INTO `ln_region` VALUES (4200, '330402', '南湖区', 125, 0, 0, 'Nanhu Qu', '2', 0);
INSERT INTO `ln_region` VALUES (4300, '360482', '共青城市', 162, 0, 0, 'Gongqingcheng Shi', '2', 0);
INSERT INTO `ln_region` VALUES (4400, '640303', '红寺堡区', 360, 0, 0, 'Hongsibao Qu', '2', 0);
INSERT INTO `ln_region` VALUES (4500, '620922', '瓜州县', 344, 0, 0, 'Guazhou Xian', '2', 0);
INSERT INTO `ln_region` VALUES (4600, '421321', '随县', 215, 0, 0, 'Sui Xian', '2', 0);
INSERT INTO `ln_region` VALUES (4700, '431102', '零陵区', 228, 0, 0, 'Lingling Qu', '2', 0);
INSERT INTO `ln_region` VALUES (4800, '451119', '平桂管理区', 263, 0, 0, 'Pingguiguanli Qu', '2', 0);
INSERT INTO `ln_region` VALUES (4900, '510802', '利州区', 279, 0, 0, 'Lizhou Qu', '2', 0);
INSERT INTO `ln_region` VALUES (5000, '511681', '华蓥市', 286, 0, 0, 'Huaying Shi', 'HYC', 0);

-- ----------------------------
-- Table structure for ln_role
-- ----------------------------
DROP TABLE IF EXISTS `ln_role`;
CREATE TABLE `ln_role`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '表自增id',
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '角色名称',
  `pinyin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '名称拼音简写和全称',
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色备注',
  `sort` int(4) NOT NULL DEFAULT 0 COMMENT '排序',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '状态 0启用 1禁用 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ln_role
-- ----------------------------
INSERT INTO `ln_role` VALUES (2, '角色2', '', '', 0, 0);
INSERT INTO `ln_role` VALUES (5, '角色5', '', '', 0, 0);
INSERT INTO `ln_role` VALUES (6, '角色6', '', '', 0, 0);
INSERT INTO `ln_role` VALUES (7, '角色7', '', '', 0, 0);
INSERT INTO `ln_role` VALUES (8, '角色1', '', '这是一个角色', 0, 0);
INSERT INTO `ln_role` VALUES (10, '闫春福', 'yanchunfu-ycf', 'this is my name', 0, 0);
INSERT INTO `ln_role` VALUES (11, '规范化法国恢复规划法规和发挥发挥过', 'guifanhuafaguohuifuguihuafaguihefahuifahuiguo-gfhfghfghfghfhfhg', '', 0, 1);
INSERT INTO `ln_role` VALUES (12, '合法改好法国恢复合法', 'hefagaihaofaguohuifuhefa-hfghfghfhf', '45645646', 456, 1);
INSERT INTO `ln_role` VALUES (13, '水电费水电费', 'shuidianfeishuidianfei-sdfsdf', '', 0, 1);
INSERT INTO `ln_role` VALUES (14, '禁用', 'jinyong-jy', '个地方官', 0, 1);
INSERT INTO `ln_role` VALUES (15, '启用', 'qiyong-qy', '方水电费水电费梵蒂冈的鬼地方34234324', 110, 1);
INSERT INTO `ln_role` VALUES (16, '222222', '-', '1', 1, 1);
INSERT INTO `ln_role` VALUES (17, '角色1', 'jiaose-js', '', 0, 0);

-- ----------------------------
-- Table structure for ln_sale_record
-- ----------------------------
DROP TABLE IF EXISTS `ln_sale_record`;
CREATE TABLE `ln_sale_record`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `order_sn` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '订单号',
  `card_id` int(11) NOT NULL COMMENT '卡片id',
  `price` decimal(11, 2) NULL DEFAULT NULL COMMENT '面额',
  `saleprice` decimal(11, 2) NULL DEFAULT NULL COMMENT '回收价',
  `card_price_id` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '卡片价格id',
  `cardkey` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '卡密',
  `password` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '密码',
  `submission_type` int(11) NOT NULL COMMENT '提交卡片的方式 1：批量提交 2：单张提交 3:线下回收',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `express` int(1) NULL DEFAULT NULL COMMENT '是否加急 1：加急  0：未加急',
  `flag` int(1) NOT NULL DEFAULT 1 COMMENT '是否审核 1：未审核  2：已审核',
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  `flag_time` int(11) NULL DEFAULT NULL COMMENT '审核时间',
  `static` int(1) NULL DEFAULT NULL COMMENT '0卡密不正确 1全部正确 2 金额不正确',
  `imgs` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `actual_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '实际价',
  `card_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `is_entitycard` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '是否是实体卡(0 否 1是)',
  `offline` int(11) NULL DEFAULT NULL,
  `sale_proportion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '比例',
  `order_id` int(11) NULL DEFAULT NULL,
  `type_id` int(11) NULL DEFAULT 0 COMMENT '卡类',
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ln_sale_record
-- ----------------------------

-- ----------------------------
-- Table structure for ln_sms_message
-- ----------------------------
DROP TABLE IF EXISTS `ln_sms_message`;
CREATE TABLE `ln_sms_message`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `mobile` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '手机号码',
  `sms_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '验证码',
  `sms_code` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` int(11) NOT NULL DEFAULT 0 COMMENT '创建时间',
  `send_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '发送状态',
  `type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '发送短信类型',
  `send_response_msg` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发送返回信息',
  `is_used` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否使用 1是 0否',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '手机验证码记录表' ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of ln_sms_message
-- ----------------------------

-- ----------------------------
-- Table structure for ln_user
-- ----------------------------
DROP TABLE IF EXISTS `ln_user`;
CREATE TABLE `ln_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `open_id` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户登录的open_id',
  `username` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户名',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '真实姓名',
  `id_card` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '身份证信息',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '电话',
  `qq_openid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qquid',
  `qq_usernick` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'qq昵称',
  `qq_avatar_thumb` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT 'qq图像',
  `wx_usernick` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '微信昵称',
  `wx_unionid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '微信uid',
  `weixin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '微信',
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pay_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '支付密码',
  `is_member` int(1) NOT NULL DEFAULT 0 COMMENT '是否是会员 0:非会员；1：会员',
  `add_time` int(10) NOT NULL COMMENT '添加时间',
  `id_card_phone_upon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '身份证正面信息',
  `id_card_phone_down` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '身份证反面信息',
  `address_id` int(11) NULL DEFAULT 0 COMMENT '默认地址',
  `balance` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '账户余额',
  `is_permission` int(1) NOT NULL DEFAULT 0 COMMENT '0:未实名认证1：已实名认证2:等待审核',
  `status` int(1) NULL DEFAULT 0 COMMENT '0正常2删除',
  `id_card_phone_hold` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '手持身份证信息',
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `is_modify_username` tinyint(4) NULL DEFAULT 0 COMMENT '是否修改过登录名(0否 1是 用来控制登录名只能修改一次)',
  `login_account` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '登录账号',
  `disabled` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否可用: 0可用, 1为不可用',
  `qq` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'qq号',
  `error_real_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '实名认证失败的原因',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 91 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ln_user
-- ----------------------------
INSERT INTO `ln_user` VALUES (90, '90', '13800000000', '', NULL, NULL, '13800000000', '', '', '', NULL, NULL, '', '8351b6083df44414bd4b3ec255382c4b', NULL, 0, 1578881785, NULL, NULL, 0, 0.00, 0, 0, NULL, NULL, 0, NULL, 0, NULL, NULL);

-- ----------------------------
-- Table structure for ln_user_address
-- ----------------------------
DROP TABLE IF EXISTS `ln_user_address`;
CREATE TABLE `ln_user_address`  (
  `address_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '表id',
  `user_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户id',
  `consignee` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '收货人',
  `email` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '邮箱地址',
  `country` int(11) NOT NULL DEFAULT 0 COMMENT '国家',
  `province` int(11) NOT NULL DEFAULT 0 COMMENT '省份',
  `city` int(11) NOT NULL DEFAULT 0 COMMENT '城市',
  `district` int(11) NOT NULL DEFAULT 0 COMMENT '地区',
  `twon` int(11) NULL DEFAULT 0 COMMENT '乡镇',
  `address` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '地址',
  `zipcode` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '邮政编码',
  `mobile` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '手机',
  `is_default` tinyint(1) NULL DEFAULT 0 COMMENT '默认收货地址',
  `is_pickup` tinyint(1) NULL DEFAULT 0,
  PRIMARY KEY (`address_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ln_user_address
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
