/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 50721
 Source Host           : localhost:3306
 Source Schema         : cpssystem

 Target Server Type    : MySQL
 Target Server Version : 50721
 File Encoding         : 65001

 Date: 19/11/2018 21:34:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for superadmin
-- ----------------------------
DROP TABLE IF EXISTS `superadmin`;
CREATE TABLE `superadmin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of superadmin
-- ----------------------------
INSERT INTO `superadmin` VALUES (1, 'superadmin', '1997');

-- ----------------------------
-- Table structure for tbl_cu_address
-- ----------------------------
DROP TABLE IF EXISTS `tbl_cu_address`;
CREATE TABLE `tbl_cu_address`  (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `address1` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `address2` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `address3` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`record_id`) USING BTREE,
  INDEX `customer`(`customer_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 86 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_cu_address
-- ----------------------------
INSERT INTO `tbl_cu_address` VALUES (1, 22, '天津', '北京', '天津');
INSERT INTO `tbl_cu_address` VALUES (2, 23, '湖南', '湖北', '成都');
INSERT INTO `tbl_cu_address` VALUES (3, 25, '内蒙古', '广东', '西藏');
INSERT INTO `tbl_cu_address` VALUES (4, 27, '深圳', '合肥', '南京');
INSERT INTO `tbl_cu_address` VALUES (5, 24, '东方明珠国际酒店', '奔跑吧兄弟录制现场', '东方明珠足球场');
INSERT INTO `tbl_cu_address` VALUES (6, 26, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (7, 28, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (8, 29, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (9, 30, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (10, 31, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (11, 32, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (12, 33, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (13, 34, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (14, 35, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (15, 36, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (16, 37, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (17, 38, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (18, 39, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (19, 40, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (20, 41, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (21, 42, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (22, 43, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (23, 44, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (24, 45, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (25, 46, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (26, 47, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (27, 48, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (28, 49, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (29, 50, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (30, 51, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (31, 52, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (32, 53, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (33, 54, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (34, 55, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (35, 56, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (36, 57, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (37, 58, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (38, 59, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (39, 60, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (40, 61, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (41, 62, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (42, 63, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (43, 64, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (44, 65, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (45, 66, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (46, 67, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (47, 68, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (48, 69, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (49, 70, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (50, 71, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (51, 72, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (52, 73, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (53, 74, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (54, 75, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (55, 76, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (56, 77, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (57, 78, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (58, 79, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (59, 80, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (60, 81, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (61, 82, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (62, 83, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (63, 84, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (64, 85, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (65, 86, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (66, 87, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (67, 88, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (68, 89, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (69, 90, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (70, 100, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (71, 101, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (72, 102, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (73, 103, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (74, 104, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (75, 105, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (76, 106, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (77, 107, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (78, 108, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (79, 113, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (80, 138, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (81, 139, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (82, 140, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (83, 141, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (84, 142, NULL, NULL, NULL);
INSERT INTO `tbl_cu_address` VALUES (85, 143, '北京市昌平区', '北京市昌平区', '北京市昌平区');

-- ----------------------------
-- Table structure for tbl_cu_state
-- ----------------------------
DROP TABLE IF EXISTS `tbl_cu_state`;
CREATE TABLE `tbl_cu_state`  (
  `record_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `customer_state` int(11) NOT NULL,
  PRIMARY KEY (`record_id`) USING BTREE,
  INDEX `state`(`customer_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 96 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_cu_state
-- ----------------------------
INSERT INTO `tbl_cu_state` VALUES (1, 22, 1);
INSERT INTO `tbl_cu_state` VALUES (2, 23, 0);
INSERT INTO `tbl_cu_state` VALUES (3, 25, 1);
INSERT INTO `tbl_cu_state` VALUES (4, 26, 0);
INSERT INTO `tbl_cu_state` VALUES (5, 24, 0);
INSERT INTO `tbl_cu_state` VALUES (6, 27, 0);
INSERT INTO `tbl_cu_state` VALUES (7, 28, 0);
INSERT INTO `tbl_cu_state` VALUES (8, 29, 0);
INSERT INTO `tbl_cu_state` VALUES (9, 30, 0);
INSERT INTO `tbl_cu_state` VALUES (10, 31, 0);
INSERT INTO `tbl_cu_state` VALUES (11, 32, 0);
INSERT INTO `tbl_cu_state` VALUES (12, 33, 0);
INSERT INTO `tbl_cu_state` VALUES (13, 34, 0);
INSERT INTO `tbl_cu_state` VALUES (14, 35, 0);
INSERT INTO `tbl_cu_state` VALUES (15, 36, 0);
INSERT INTO `tbl_cu_state` VALUES (16, 37, 0);
INSERT INTO `tbl_cu_state` VALUES (17, 38, 0);
INSERT INTO `tbl_cu_state` VALUES (18, 39, 0);
INSERT INTO `tbl_cu_state` VALUES (19, 40, 0);
INSERT INTO `tbl_cu_state` VALUES (20, 41, 0);
INSERT INTO `tbl_cu_state` VALUES (21, 42, 0);
INSERT INTO `tbl_cu_state` VALUES (22, 43, 0);
INSERT INTO `tbl_cu_state` VALUES (23, 44, 0);
INSERT INTO `tbl_cu_state` VALUES (24, 45, 0);
INSERT INTO `tbl_cu_state` VALUES (25, 46, 0);
INSERT INTO `tbl_cu_state` VALUES (26, 47, 0);
INSERT INTO `tbl_cu_state` VALUES (27, 48, 0);
INSERT INTO `tbl_cu_state` VALUES (28, 49, 0);
INSERT INTO `tbl_cu_state` VALUES (29, 50, 0);
INSERT INTO `tbl_cu_state` VALUES (30, 51, 0);
INSERT INTO `tbl_cu_state` VALUES (31, 52, 0);
INSERT INTO `tbl_cu_state` VALUES (32, 53, 0);
INSERT INTO `tbl_cu_state` VALUES (33, 54, 0);
INSERT INTO `tbl_cu_state` VALUES (34, 55, 0);
INSERT INTO `tbl_cu_state` VALUES (35, 56, 0);
INSERT INTO `tbl_cu_state` VALUES (36, 57, 0);
INSERT INTO `tbl_cu_state` VALUES (37, 58, 0);
INSERT INTO `tbl_cu_state` VALUES (38, 59, 0);
INSERT INTO `tbl_cu_state` VALUES (39, 60, 0);
INSERT INTO `tbl_cu_state` VALUES (40, 61, 0);
INSERT INTO `tbl_cu_state` VALUES (41, 62, 0);
INSERT INTO `tbl_cu_state` VALUES (42, 63, 0);
INSERT INTO `tbl_cu_state` VALUES (43, 64, 0);
INSERT INTO `tbl_cu_state` VALUES (44, 65, 0);
INSERT INTO `tbl_cu_state` VALUES (45, 66, 0);
INSERT INTO `tbl_cu_state` VALUES (46, 67, 0);
INSERT INTO `tbl_cu_state` VALUES (47, 68, 0);
INSERT INTO `tbl_cu_state` VALUES (48, 69, 0);
INSERT INTO `tbl_cu_state` VALUES (49, 70, 0);
INSERT INTO `tbl_cu_state` VALUES (50, 71, 0);
INSERT INTO `tbl_cu_state` VALUES (51, 72, 0);
INSERT INTO `tbl_cu_state` VALUES (52, 73, 0);
INSERT INTO `tbl_cu_state` VALUES (53, 74, 0);
INSERT INTO `tbl_cu_state` VALUES (54, 75, 0);
INSERT INTO `tbl_cu_state` VALUES (55, 76, 0);
INSERT INTO `tbl_cu_state` VALUES (56, 77, 0);
INSERT INTO `tbl_cu_state` VALUES (57, 78, 0);
INSERT INTO `tbl_cu_state` VALUES (58, 79, 0);
INSERT INTO `tbl_cu_state` VALUES (59, 80, 0);
INSERT INTO `tbl_cu_state` VALUES (60, 81, 0);
INSERT INTO `tbl_cu_state` VALUES (61, 82, 0);
INSERT INTO `tbl_cu_state` VALUES (62, 83, 0);
INSERT INTO `tbl_cu_state` VALUES (63, 84, 0);
INSERT INTO `tbl_cu_state` VALUES (64, 85, 0);
INSERT INTO `tbl_cu_state` VALUES (65, 86, 0);
INSERT INTO `tbl_cu_state` VALUES (66, 87, 0);
INSERT INTO `tbl_cu_state` VALUES (67, 88, 0);
INSERT INTO `tbl_cu_state` VALUES (68, 89, 0);
INSERT INTO `tbl_cu_state` VALUES (69, 90, 0);
INSERT INTO `tbl_cu_state` VALUES (70, 91, 0);
INSERT INTO `tbl_cu_state` VALUES (71, 92, 0);
INSERT INTO `tbl_cu_state` VALUES (72, 93, 0);
INSERT INTO `tbl_cu_state` VALUES (73, 94, 0);
INSERT INTO `tbl_cu_state` VALUES (74, 95, 0);
INSERT INTO `tbl_cu_state` VALUES (75, 96, 0);
INSERT INTO `tbl_cu_state` VALUES (76, 97, 0);
INSERT INTO `tbl_cu_state` VALUES (77, 98, 0);
INSERT INTO `tbl_cu_state` VALUES (78, 99, 0);
INSERT INTO `tbl_cu_state` VALUES (79, 100, 0);
INSERT INTO `tbl_cu_state` VALUES (80, 101, 0);
INSERT INTO `tbl_cu_state` VALUES (81, 102, 0);
INSERT INTO `tbl_cu_state` VALUES (82, 103, 0);
INSERT INTO `tbl_cu_state` VALUES (83, 104, 0);
INSERT INTO `tbl_cu_state` VALUES (84, 105, 0);
INSERT INTO `tbl_cu_state` VALUES (85, 106, 0);
INSERT INTO `tbl_cu_state` VALUES (86, 107, 0);
INSERT INTO `tbl_cu_state` VALUES (87, 107, 0);
INSERT INTO `tbl_cu_state` VALUES (88, 108, 0);
INSERT INTO `tbl_cu_state` VALUES (89, 113, 0);
INSERT INTO `tbl_cu_state` VALUES (90, 139, 0);
INSERT INTO `tbl_cu_state` VALUES (91, 138, 0);
INSERT INTO `tbl_cu_state` VALUES (92, 140, 0);
INSERT INTO `tbl_cu_state` VALUES (93, 141, 0);
INSERT INTO `tbl_cu_state` VALUES (94, 142, 0);
INSERT INTO `tbl_cu_state` VALUES (95, 143, 0);

-- ----------------------------
-- Table structure for tbl_customer
-- ----------------------------
DROP TABLE IF EXISTS `tbl_customer`;
CREATE TABLE `tbl_customer`  (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `createdate` date NOT NULL,
  `telephone` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `delete_status` int(6) NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `weibo` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `qq` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `intro` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `headerimages` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE,
  INDEX `id`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 144 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_customer
-- ----------------------------
INSERT INTO `tbl_customer` VALUES (22, '阿吉', 'zl93QQQz9Kg=', '2018-09-27', '11111111111', 0, '1332245566@163.com', 'wuxiaojvo', '139862', '我不是一个随便的人，我随便起来不是人，啊哈哈哈哈哈哈哈，你呢', '/upload/assert/8ff4b2f7-9422-415f-a50f-3a84cc6f3a56_2580.jpg');
INSERT INTO `tbl_customer` VALUES (23, '小黑', 'zl93QQQz9Kg=', '2018-10-20', '11111111112', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (24, '蕾蕾', 'zl93QQQz9Kg=', '2018-09-24', '11111111113', 0, '1289435034@qq.com', 'leilei@weibo.cn', '1234567887', '我是蕾蕾，一个貌美如花的女子，哈啊哈哈哈哈哈哈，其实我是个女汉子，是吧，giao哥', '/upload/assert/d3b30370-9c15-4844-8436-6de6ed110499_20180508220900.png');
INSERT INTO `tbl_customer` VALUES (25, '热巴', 'zl93QQQz9Kg=', '2018-10-18', '11111111114', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (26, '朗朗', 'zl93QQQz9Kg=', '2018-11-30', '11111111115', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (27, '郑爽', 'zl93QQQz9Kg=', '2018-10-29', '11111111116', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (28, '琪琪', 'zl93QQQz9Kg=', '2018-10-25', '11111111117', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (29, '吴彦祖', 'zl93QQQz9Kg=', '2018-10-24', '11111111118', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (30, '六二', 'zl93QQQz9Kg=', '2018-11-24', '11111111119', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (31, '三八', 'zl93QQQz9Kg=', '2018-12-07', '11111111110', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (32, '窦漪房', 'zl93QQQz9Kg=', '2018-10-25', '11111111121', 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (33, '刘恒', 'zl93QQQz9Kg=', '2018-10-18', '11111111122', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (34, '小宋', 'zl93QQQz9Kg=', '2018-12-15', '11111111123', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (35, '张三', 'zl93QQQz9Kg=', '2018-10-17', '11111111124', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (36, '王红', 'zl93QQQz9Kg=', '2018-12-29', '11111111125', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (37, '李四', 'zl93QQQz9Kg=', '2018-09-13', '11111111126', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (38, '阿志', 'zl93QQQz9Kg=', '2018-11-15', '11111111127', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (39, '金钟仁', 'zl93QQQz9Kg=', '2018-10-22', '11111111128', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (40, '小雅', 'zl93QQQz9Kg=', '2018-11-22', '11111111129', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (41, '李钟硕', 'zl93QQQz9Kg=', '2018-10-24', '11111111120', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (42, '林总', 'zl93QQQz9Kg=', '2018-11-30', '11111111130', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (43, '陈赫', 'zl93QQQz9Kg=', '2018-10-15', '11111111131', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (44, '李晨', 'zl93QQQz9Kg=', '2018-10-16', '11111111132', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (45, '阿莲', 'zl93QQQz9Kg=', '2019-02-08', '11111111133', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (46, '巧儿', 'zl93QQQz9Kg=', '2019-03-29', '11111111134', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (47, '张飞', 'zl93QQQz9Kg=', '2018-10-17', '11111111135', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (48, '小瓜', 'zl93QQQz9Kg=', '2018-07-03', '11111111136', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (49, '公孙离', 'zl93QQQz9Kg=', '2018-10-18', '11111111137', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (50, '呆子', 'zl93QQQz9Kg=', '2018-10-25', '11111111138', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (51, '貂蝉', 'zl93QQQz9Kg=', '2018-09-26', '11111111139', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (52, '悟空', 'zl93QQQz9Kg=', '2018-07-12', '11111111140', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (53, '吕布', 'zl93QQQz9Kg=', '2018-10-10', '11111111141', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (54, '盲审', 'zl93QQQz9Kg=', '2018-05-08', '11111111142', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (55, '压缩', 'zl93QQQz9Kg=', '2018-07-05', '11111111143', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (56, '程咬金', 'zl93QQQz9Kg=', '2018-10-18', '11111111144', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (57, '泰坦', 'zl93QQQz9Kg=', '2018-06-14', '11111111145', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (58, '芈月', 'zl93QQQz9Kg=', '2018-10-17', '11111111146', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (59, '托儿', 'zl93QQQz9Kg=', '2020-03-30', '11111111147', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (60, '蔡文姬', 'zl93QQQz9Kg=', '2018-10-11', '11111111148', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (61, '夸父', 'zl93QQQz9Kg=', '2019-01-12', '11111111149', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (62, '虞姬', 'zl93QQQz9Kg=', '2018-10-13', '11111111150', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (63, '后羿', 'zl93QQQz9Kg=', '2019-05-23', '11111111151', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (64, '明世隐', 'zl93QQQz9Kg=', '2018-10-19', '11111111152', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (65, '怒将', 'zl93QQQz9Kg=', '2019-05-17', '11111111153', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (66, '刘邦', 'zl93QQQz9Kg=', '2018-10-17', '11111111154', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (67, '红孩儿', 'zl93QQQz9Kg=', '2019-05-18', '11111111155', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (68, '刘备', 'zl93QQQz9Kg=', '2018-10-02', '11111111156', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (69, '牛魔王', 'zl93QQQz9Kg=', '2019-01-26', '11111111157', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (70, '松江', 'zl93QQQz9Kg=', '2022-01-13', '11111111158', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (71, '妲己', 'zl93QQQz9Kg=', '2018-10-20', '11111111159', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (72, '李逵', 'zl93QQQz9Kg=', '2018-10-02', '11111111160', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (73, '甄姬', 'zl93QQQz9Kg=', '2018-10-02', '11111111161', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (74, '鲁智深', 'zl93QQQz9Kg=', '2020-12-23', '11111111162', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (75, '张良', 'zl93QQQz9Kg=', '2018-10-09', '11111111163', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (76, '孙二娘', 'zl93QQQz9Kg=', '2016-03-30', '11111111164', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (77, '武松', 'zl93QQQz9Kg=', '2015-06-30', '11111111165', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (78, '李白', 'zl93QQQz9Kg=', '2018-10-24', '11111111166', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (79, '小李光辉', 'zl93QQQz9Kg=', '2018-07-04', '11111111167', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (80, '韩信', 'zl93QQQz9Kg=', '2018-10-25', '11111111168', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (81, '华容', 'zl93QQQz9Kg=', '2018-08-28', '11111111169', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (82, '花木兰', 'zl93QQQz9Kg=', '2018-10-17', '11111111170', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (83, '无用', 'zl93QQQz9Kg=', '2022-11-30', '11111111171', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (84, '兰陵王', 'zl93QQQz9Kg=', '2018-08-14', '11111111172', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (85, '老虎', 'zl93QQQz9Kg=', '2016-06-30', '11111111173', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (86, '姜子牙', 'zl93QQQz9Kg=', '2018-10-13', '11111111174', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (87, '关于', 'zl93QQQz9Kg=', '2015-07-30', '11111111175', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (88, '诸葛亮', 'zl93QQQz9Kg=', '2018-10-18', '11111111176', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (89, '张飞', 'zl93QQQz9Kg=', '2014-11-30', '11111111177', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (90, '鬼谷子', 'zl93QQQz9Kg=', '2018-10-17', '11111111178', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (91, '潘长江', 'zl93QQQz9Kg=', '2013-06-20', '11111111179', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (92, '黄忠', 'zl93QQQz9Kg=', '2018-10-02', '11111111180', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (93, '大阪府', 'zl93QQQz9Kg=', '2018-10-17', '11111111181', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (94, '大棒子', 'zl93QQQz9Kg=', '2012-03-22', '11111111182', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (95, '郑秀晶', 'zl93QQQz9Kg=', '2018-09-25', '11111111183', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (96, '小崽子', 'zl93QQQz9Kg=', '2025-07-17', '11111111184', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (97, '苏烈', 'zl93QQQz9Kg=', '2018-10-09', '11111111185', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (98, '精钢', 'zl93QQQz9Kg=', '2023-07-05', '11111111186', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (99, '土坷垃', 'zl93QQQz9Kg=', '2020-12-30', '11111111187', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (100, '成吉思汗', 'zl93QQQz9Kg=', '2018-08-28', '11111111188', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (101, '懒真的而瑞', 'zl93QQQz9Kg=', '2019-04-30', '11111111189', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (102, '杨志', 'zl93QQQz9Kg=', '2018-06-13', '11111111190', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (103, '谢逊', 'zl93QQQz9Kg=', '2020-11-30', '11111111191', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (104, '张无忌', 'zl93QQQz9Kg=', '2024-08-30', '11111111192', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (105, '孙尚香', 'zl93QQQz9Kg=', '2018-11-29', '11111111193', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (106, '超人', 'zl93QQQz9Kg=', '2019-01-25', '11111111194', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (107, '母夜叉', 'zl93QQQz9Kg=', '2018-08-08', '11111111195', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (108, '郭靖', 'zl93QQQz9Kg=', '2018-10-17', '11111111196', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (113, 'TheShy', 'zl93QQQz9Kg=', '2018-10-31', '11111111197', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (138, '无线林', 'zl93QQQz9Kg=', '2018-11-07', '11111111198', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (139, '贤老师', 'zl93QQQz9Kg=', '2018-11-07', '11111111199', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (140, '我叫王二麻子', 'zl93QQQz9Kg=', '2018-11-09', '11133224433', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (141, '我是他弟弟', 'zl93QQQz9Kg=', '2018-11-09', '13322443355', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (142, '阿斯达', 'zl93QQQz9Kg=', '2018-11-12', '11133334444', 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_customer` VALUES (143, '苏苏', 'EG7MJAqMmSC+1tkfH+FaeQ==', '2018-11-14', '15148134645', 0, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tbl_orders
-- ----------------------------
DROP TABLE IF EXISTS `tbl_orders`;
CREATE TABLE `tbl_orders`  (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_file` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `money` decimal(10, 2) NULL DEFAULT NULL,
  `shop_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_state` int(11) NOT NULL,
  `overdate` date NULL DEFAULT NULL,
  `createdate` date NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `delete_status` int(11) NOT NULL,
  `ways` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 60 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_orders
-- ----------------------------
INSERT INTO `tbl_orders` VALUES (40, '/upload\\4\\10755f3ef6-541c-418a-b2af-8662a5dc8862_1.jpg', 3.44, 1, 24, 5, '2018-11-16', '2018-11-15', '东方明珠国际酒店', 0, '物流配送');
INSERT INTO `tbl_orders` VALUES (41, '/upload\\4\\10\\f8e86fe8-359b-4cd0-8eb5-e30632c223ca_1.jpg', 3.44, 1, 22, 3, '2018-11-19', '2018-11-15', '天津', 1, '物流配送');
INSERT INTO `tbl_orders` VALUES (42, '/upload\\15\\15\\4e2a8e09-7b12-46f3-a556-a61d119d8b4b_论文图模板.docx', 0.07, 2, 22, 1, NULL, '2018-11-15', '天津', 0, '物流配送');
INSERT INTO `tbl_orders` VALUES (43, '/upload\\15\\15\\6a1c699d-9d5e-45df-864e-d19234c0e0e6_论文图模板.docx', 0.07, 1, 24, 5, NULL, '2018-11-16', '东方明珠国际酒店', 0, '物流配送');
INSERT INTO `tbl_orders` VALUES (44, '/upload\\13\\4\\2962c135-ab61-4c7a-9b04-884abb76aac9_新建文本文档.txt', 0.00, 1, 22, 5, NULL, '2018-11-16', '天津', 0, '物流配送');
INSERT INTO `tbl_orders` VALUES (45, '/upload\\8\\12\\e9f54cad-56ed-4fe4-a433-54682a56d5f5_系统读码笔记.txt', 0.00, 1, 22, 1, NULL, '2018-11-17', '天津', 0, '物流配送');
INSERT INTO `tbl_orders` VALUES (46, '/upload\\0\\0\\8a4c4db1-7382-4ba3-87a8-6c908f438b04_框架事项.txt', 0.00, 1, 22, 3, '2018-11-17', '2018-11-17', '北京', 0, '到店自取');
INSERT INTO `tbl_orders` VALUES (47, '/upload\\14\\6\\f7bb0501-ef5c-44b5-974f-ba667642a080_201512109028-林玉磊- 学生成绩管理系统的设计与实现-初稿 (自动保存的).doc', 1.73, 1, 22, 3, '2018-11-17', '2018-11-17', '北京', 0, '物流配送');
INSERT INTO `tbl_orders` VALUES (48, '/upload\\9\\12\\c824df32-d470-4f0d-b0cf-3b737ba0ccda_另一个处理器映射器.PNG', 0.31, 1, 22, 5, NULL, '2018-11-17', '天津', 0, '到店自取');
INSERT INTO `tbl_orders` VALUES (49, '/upload\\8\\15\\234e087a-61cf-454e-a37b-a677ecd1ded1_论文要求.doc', 7.34, 1, 22, 3, '2018-11-17', '2018-11-17', '北京', 0, '到店自取');
INSERT INTO `tbl_orders` VALUES (50, '/upload\\12\\15\\5fd37926-ee65-42d7-9671-038d58a49b65_毕业论文.docx', 0.74, 1, 22, 1, NULL, '2018-11-17', '天津', 0, '物流配送');
INSERT INTO `tbl_orders` VALUES (51, '/upload\\2\\11\\295d3abd-e780-4f94-9452-5d430292f5b2_多对一保存3.PNG', 0.20, 1, 22, 3, '2018-11-17', '2018-11-17', '北京', 0, '物流配送');
INSERT INTO `tbl_orders` VALUES (52, '/upload\\9\\2\\6c3467a9-d1bf-4802-8448-c38555995767_员工mapper.PNG', 0.44, 1, 22, 1, NULL, '2018-11-17', '北京', 0, '到店自取');
INSERT INTO `tbl_orders` VALUES (53, '/upload\\15\\6\\9a7fa3e6-6da0-4831-a96d-f50ecd7b81b7_n+1.PNG', 0.11, 1, 22, 3, '2018-11-17', '2018-11-17', '天津', 0, '到店自取');
INSERT INTO `tbl_orders` VALUES (54, '/upload\\0\\13\\e2bbc094-d24d-4abd-b2ae-54258c8c2a9e_5.PNG', 0.12, 1, 22, 5, NULL, '2018-11-17', '北京', 0, '到店自取');
INSERT INTO `tbl_orders` VALUES (55, '/upload\\0\\7\\b8131386-decb-4d9a-afce-20e5d86dcb57_3b87370891a0dfc933721bdce0e4d0d7.jpg', 0.15, 1, 22, 5, NULL, '2018-11-17', '天津', 0, '物流配送');
INSERT INTO `tbl_orders` VALUES (56, '/upload\\4\\1\\a3aec610-b7b8-4f58-a782-38f2148df1e6_(详细)毕业设计要求.doc', 0.17, 1, 22, 0, NULL, '2018-11-19', '天津', 0, '物流配送');
INSERT INTO `tbl_orders` VALUES (57, '/upload\\4\\1\\56da4b8b-d490-4cac-9deb-32c098eb0aba_(详细)毕业设计要求.doc', 0.17, 1, 22, 0, NULL, '2018-11-19', '天津', 0, '物流配送');
INSERT INTO `tbl_orders` VALUES (58, '/upload\\4\\1\\e1cea61d-1bfc-49fc-9d85-092d1f16ff41_(详细)毕业设计要求.doc', 0.17, 1, 22, 1, NULL, '2018-11-19', '天津', 0, '物流配送');
INSERT INTO `tbl_orders` VALUES (59, '/upload\\4\\1\\0397b194-b346-4901-b234-7e57ecd119ca_(详细)毕业设计要求.doc', 0.17, 24, 22, 3, '2018-11-19', '2018-11-19', '天津', 0, '物流配送');

-- ----------------------------
-- Table structure for tbl_shop
-- ----------------------------
DROP TABLE IF EXISTS `tbl_shop`;
CREATE TABLE `tbl_shop`  (
  `shop_id` int(5) NOT NULL AUTO_INCREMENT,
  `shopname` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `shopaddress` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `createdate` date NOT NULL,
  `shopstate` int(4) NOT NULL,
  `telephone` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `businessman` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `shopinfo` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `delete_status` int(6) NOT NULL,
  PRIMARY KEY (`shop_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 64 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_shop
-- ----------------------------
INSERT INTO `tbl_shop` VALUES (1, '云去印', 'zl93QQQz9Kg=', '咸阳', '2018-10-24', 1, '22222222201', '胡先生', '到底发生了什么事情，我不知道呀，哈哈哈哈哈', 0);
INSERT INTO `tbl_shop` VALUES (3, '乔嘉园打印社', 'zl93QQQz9Kg=', '内蒙古呼伦贝尔市海拉尔区', '2018-10-24', 1, '22222222202', '李老板', NULL, 0);
INSERT INTO `tbl_shop` VALUES (4, '马什麽梅', 'zl93QQQz9Kg=', '内蒙古满洲里', '2018-10-24', 0, '22222222203', '张老板', NULL, 0);
INSERT INTO `tbl_shop` VALUES (6, '霍去病', 'zl93QQQz9Kg=', '广州', '2019-01-04', 0, '22222222204', '王总', NULL, 0);
INSERT INTO `tbl_shop` VALUES (7, '杂货铺', 'zl93QQQz9Kg=', '福建', '2018-10-24', 1, '22222222205', '张懂事', NULL, 0);
INSERT INTO `tbl_shop` VALUES (8, '无心', 'zl93QQQz9Kg=', '凉城', '2018-11-28', 1, '22222222206', '张大脑袋', NULL, 0);
INSERT INTO `tbl_shop` VALUES (9, '知了', 'zl93QQQz9Kg=', '新疆', '2018-09-13', 0, '22222222207', '刘二愣子', NULL, 0);
INSERT INTO `tbl_shop` VALUES (10, '自主申请', 'zl93QQQz9Kg=', '承德', '2019-03-22', 1, '22222222208', '刘二主', NULL, 0);
INSERT INTO `tbl_shop` VALUES (11, '方便零食', 'zl93QQQz9Kg=', '山西', '2018-11-27', 0, '22222222209', '李笨', NULL, 0);
INSERT INTO `tbl_shop` VALUES (12, '稻香村', 'zl93QQQz9Kg=', '北京', '2018-08-15', 0, '22222222210', '刘老板', NULL, 1);
INSERT INTO `tbl_shop` VALUES (13, '自助餐', 'zl93QQQz9Kg=', '四川', '2018-11-25', 0, '22222222211', '胡圈儿', NULL, 0);
INSERT INTO `tbl_shop` VALUES (14, '水果', 'zl93QQQz9Kg=', '海拉尔', '2018-08-28', 0, '22222222212', '沈万三', NULL, 0);
INSERT INTO `tbl_shop` VALUES (15, '辣嘴鸭', 'zl93QQQz9Kg=', '赤峰', '2018-11-21', 0, '22222222213', '赵老板', NULL, 0);
INSERT INTO `tbl_shop` VALUES (16, '嘎达汤', 'zl93QQQz9Kg=', '东北', '2019-01-31', 0, '22222222214', '杨树林', NULL, 0);
INSERT INTO `tbl_shop` VALUES (17, '刀削面', 'zl93QQQz9Kg=', '深圳', '2018-11-27', 0, '22222222215', '王董事长', NULL, 0);
INSERT INTO `tbl_shop` VALUES (18, '心之约', 'zl93QQQz9Kg=', '赤峰', '2018-11-26', 0, '22222222216', '钱老板', NULL, 0);
INSERT INTO `tbl_shop` VALUES (19, '麻辣烫', 'zl93QQQz9Kg=', '北京', '2018-04-24', 0, '22222222217', '阳阳', NULL, 0);
INSERT INTO `tbl_shop` VALUES (20, '星儿', 'zl93QQQz9Kg=', '广西', '2018-08-14', 0, '22222222218', '刘二', NULL, 0);
INSERT INTO `tbl_shop` VALUES (21, '张亮麻辣烫', 'zl93QQQz9Kg=', '昌平', '2018-04-18', 0, '22222222219', '孙老板', NULL, 0);
INSERT INTO `tbl_shop` VALUES (22, '天空的颜色', 'zl93QQQz9Kg=', '通辽', '2019-01-26', 0, '22222222220', '张三', NULL, 0);
INSERT INTO `tbl_shop` VALUES (23, '五金', 'zl93QQQz9Kg=', '赤峰', '2018-08-23', 0, '22222222221', '李四', NULL, 0);
INSERT INTO `tbl_shop` VALUES (24, '周黑鸭', 'zl93QQQz9Kg=', '北京', '2018-07-12', 0, '22222222222', '李老', NULL, 0);
INSERT INTO `tbl_shop` VALUES (25, '肯德基', 'zl93QQQz9Kg=', '莲花沟子', '2018-03-22', 0, '22222222223', '王五', NULL, 0);
INSERT INTO `tbl_shop` VALUES (26, '麦当劳', 'zl93QQQz9Kg=', '沈阳', '2018-09-05', 0, '22222222224', '幺爸', NULL, 0);
INSERT INTO `tbl_shop` VALUES (27, '男孩女孩', 'zl93QQQz9Kg=', '赤峰', '2018-11-02', 0, '22222222225', '周老板', NULL, 0);
INSERT INTO `tbl_shop` VALUES (28, '东北菜', 'zl93QQQz9Kg=', '陕西', '2018-10-05', 0, '22222222226', '二审', NULL, 0);
INSERT INTO `tbl_shop` VALUES (29, '大自然', 'zl93QQQz9Kg=', '赤峰', '2018-11-09', 0, '22222222227', '吴老板', NULL, 0);
INSERT INTO `tbl_shop` VALUES (30, '沐浴', 'zl93QQQz9Kg=', '广州', '2018-08-05', 0, '22222222228', '哟妹儿', NULL, 0);
INSERT INTO `tbl_shop` VALUES (31, '腊肠', 'zl93QQQz9Kg=', '广西', '2018-07-05', 0, '22222222229', '王大财主', NULL, 0);
INSERT INTO `tbl_shop` VALUES (32, '熟食', 'zl93QQQz9Kg=', '云南', '2018-07-05', 0, '22222222230', '李副总', NULL, 0);
INSERT INTO `tbl_shop` VALUES (33, '串来串去', 'zl93QQQz9Kg=', '海拉尔', '2018-11-13', 0, '22222222231', '郑老板', NULL, 0);
INSERT INTO `tbl_shop` VALUES (34, '美容', 'zl93QQQz9Kg=', '惠州', '2018-03-05', 0, '22222222232', '赵地主', NULL, 0);
INSERT INTO `tbl_shop` VALUES (35, '如家', 'zl93QQQz9Kg=', '北京', '2018-11-04', 0, '22222222233', '王老板', NULL, 0);
INSERT INTO `tbl_shop` VALUES (36, '文傻子', 'zl93QQQz9Kg=', '昌平', '2018-02-22', 0, '22222222234', '冯老板', NULL, 0);
INSERT INTO `tbl_shop` VALUES (37, '全友家私', 'zl93QQQz9Kg=', '北京', '2018-11-16', 0, '22222222235', '陈老板', NULL, 0);
INSERT INTO `tbl_shop` VALUES (38, '欧派', 'zl93QQQz9Kg=', '北京', '2018-11-30', 0, '22222222236', '楚老板', NULL, 0);
INSERT INTO `tbl_shop` VALUES (39, '王致和', 'zl93QQQz9Kg=', '河北', '2018-11-02', 0, '22222222237', '魏老板', NULL, 0);
INSERT INTO `tbl_shop` VALUES (40, '六婆串串香', 'zl93QQQz9Kg=', '海淀区', '2018-10-02', 0, '22222222238', '刘老板', NULL, 0);
INSERT INTO `tbl_shop` VALUES (41, '朱老六', 'zl93QQQz9Kg=', '赤峰', '2018-11-06', 0, '22222222239', '蒋老板', NULL, 0);
INSERT INTO `tbl_shop` VALUES (42, '王守义', 'zl93QQQz9Kg=', '河南', '2018-02-22', 0, '22222222240', '沈老板', NULL, 0);
INSERT INTO `tbl_shop` VALUES (43, '王婆大虾', 'zl93QQQz9Kg=', '海淀区', '2018-10-23', 1, '22222222241', '马老板', NULL, 0);
INSERT INTO `tbl_shop` VALUES (44, '曾礼和', 'zl93QQQz9Kg=', '山东', '2018-05-24', 0, '22222222242', '韩老板', NULL, 0);
INSERT INTO `tbl_shop` VALUES (45, '冒菜', 'zl93QQQz9Kg=', '海淀区', '2018-10-09', 0, '22222222243', '郝老板', NULL, 0);
INSERT INTO `tbl_shop` VALUES (46, '馨馨足疗', 'zl93QQQz9Kg=', '赤峰', '2018-11-10', 0, '22222222244', '杨老板', NULL, 0);
INSERT INTO `tbl_shop` VALUES (47, '老约翰中药店', 'zl93QQQz9Kg=', '敖汉', '2018-06-20', 0, '22222222245', '朱老板', NULL, 0);
INSERT INTO `tbl_shop` VALUES (48, '性福超市（无人售货）', 'zl93QQQz9Kg=', '敖汉', '2018-04-14', 0, '22222222246', '秦老板', NULL, 0);
INSERT INTO `tbl_shop` VALUES (49, '辣妹子', 'zl93QQQz9Kg=', '四川', '2018-11-04', 0, '22222222247', '辣老板', NULL, 0);
INSERT INTO `tbl_shop` VALUES (50, '周黑鸭', 'zl93QQQz9Kg=', '黑龙江', '2018-10-16', 0, '22222222248', '周老板', NULL, 0);
INSERT INTO `tbl_shop` VALUES (51, '黑店', 'zl93QQQz9Kg=', '赤峰', '2018-11-25', 0, '22222222249', '由老板', NULL, 0);
INSERT INTO `tbl_shop` VALUES (52, '没有烤肉', 'zl93QQQz9Kg=', '赤峰', '2018-05-24', 0, '22222222250', '许老板', NULL, 0);
INSERT INTO `tbl_shop` VALUES (53, '鱼头泡饼', 'zl93QQQz9Kg=', '锦州', '2018-10-18', 0, '22222222251', '胡老板', NULL, 0);
INSERT INTO `tbl_shop` VALUES (54, '热干面', 'zl93QQQz9Kg=', '新疆', '2018-10-15', 0, '22222222252', '啊老板', NULL, 0);
INSERT INTO `tbl_shop` VALUES (55, '新疆大饼', 'zl93QQQz9Kg=', '新疆', '2018-09-11', 0, '22222222253', '买买提', NULL, 0);
INSERT INTO `tbl_shop` VALUES (56, '北京烤鸭', 'zl93QQQz9Kg=', '北京', '2018-09-18', 0, '22222222254', '北老板', NULL, 0);
INSERT INTO `tbl_shop` VALUES (57, '久发超市', 'zl93QQQz9Kg=', '赤峰', '2018-10-04', 0, '22222222255', '贾老板', NULL, 0);
INSERT INTO `tbl_shop` VALUES (58, '热浪自助', 'zl93QQQz9Kg=', '赤峰', '2018-10-19', 0, '22222222256', '黑老板', NULL, 0);
INSERT INTO `tbl_shop` VALUES (59, '天骄烤肉拌饭', 'zl93QQQz9Kg=', '海拉尔', '2018-09-19', 0, '22222222257', '刘老板', NULL, 0);
INSERT INTO `tbl_shop` VALUES (60, '草原酒家', 'zl93QQQz9Kg=', '海拉尔', '2018-10-24', 0, '22222222258', '岳老板', NULL, 0);
INSERT INTO `tbl_shop` VALUES (61, '随行', 'zl93QQQz9Kg=', '北京', '2018-10-20', 0, '22222222259', '甄老板', NULL, 0);
INSERT INTO `tbl_shop` VALUES (62, '十三香', 'zl93QQQz9Kg=', '湖南省湘潭市', '2018-11-06', 0, '22222222260', '王致和', NULL, 0);
INSERT INTO `tbl_shop` VALUES (63, '木鱼坊', 'KuRpGh+IvpgaaHo6Scdyqg==', '11', '2018-11-19', 0, '11111111111', '11', NULL, 0);

SET FOREIGN_KEY_CHECKS = 1;
