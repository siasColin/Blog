/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50527
 Source Host           : 127.0.0.1:3306
 Source Schema         : db_blog3

 Target Server Type    : MySQL
 Target Server Version : 50527
 File Encoding         : 65001

 Date: 10/03/2020 12:48:33
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_blog
-- ----------------------------
DROP TABLE IF EXISTS `t_blog`;
CREATE TABLE `t_blog`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `summary` varchar(400) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `releaseDate` datetime NULL DEFAULT NULL,
  `clickHit` int(11) NULL DEFAULT NULL,
  `replyHit` int(11) NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `typeId` int(11) NULL DEFAULT NULL,
  `keyWord` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `typeId`(`typeId`) USING BTREE,
  CONSTRAINT `t_blog_ibfk_1` FOREIGN KEY (`typeId`) REFERENCES `t_blogtype` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 69 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_blog
-- ----------------------------
INSERT INTO `t_blog` VALUES (62, 'hello world', '1111', '2017-04-13 23:17:43', 7, 1, '<p>1111</p>', 5, '');
INSERT INTO `t_blog` VALUES (63, '111', '11', '2017-04-13 23:21:44', 4, 0, '<p>11<img src=\"/static/userImages/20170413/1492096900067062177.jpg\" title=\"1492096900067062177.jpg\" alt=\"Penguins.jpg\"/></p>', 5, '');
INSERT INTO `t_blog` VALUES (64, '111', '111', '2017-04-14 20:17:42', 5, 1, '<p>111<br/></p>', 3, '');
INSERT INTO `t_blog` VALUES (65, '111', '111', '2017-04-14 21:22:21', 71, 1, '<p>111</p>', 1, '');
INSERT INTO `t_blog` VALUES (66, '111', '1111', '2017-04-15 15:56:40', 0, 0, '<p><img src=\"/static/userImages/20170415/1492242983262004445.jpg\" title=\"1492242983262004445.jpg\" alt=\"Desert.jpg\"/>1111</p>', 1, '');
INSERT INTO `t_blog` VALUES (67, '222', '2222222222222', '2017-04-20 21:03:06', 29, 2, '<p>2222222222222</p>', 1, '');
INSERT INTO `t_blog` VALUES (68, 'sxf测试', '哈哈', '2020-03-10 10:36:24', 5, 0, '<p><img src=\"http://img.baidu.com/hi/jx2/j_0002.gif\"/>哈哈</p><p><img src=\"/static/userImages/20200310/1583807837835077960.png\" title=\"1583807837835077960.png\" alt=\"APP应用图标3.png\"/></p>', 5, '');

-- ----------------------------
-- Table structure for t_blogger
-- ----------------------------
DROP TABLE IF EXISTS `t_blogger`;
CREATE TABLE `t_blogger`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `profile` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `nickName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sign` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `imageName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_blogger
-- ----------------------------
INSERT INTO `t_blogger` VALUES (1, 'admin', '70f57208b804bd90d51fdac84afe6472', '<p style=\"margin-bottom: 5px;\">hello</p>', 'hello', 'test', '20200310111020.png');

-- ----------------------------
-- Table structure for t_blogtype
-- ----------------------------
DROP TABLE IF EXISTS `t_blogtype`;
CREATE TABLE `t_blogtype`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typeName` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `orderNo` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_blogtype
-- ----------------------------
INSERT INTO `t_blogtype` VALUES (1, 'Java核心基础', 1);
INSERT INTO `t_blogtype` VALUES (3, 'Tomcat', 3);
INSERT INTO `t_blogtype` VALUES (5, '随心生活', 7);
INSERT INTO `t_blogtype` VALUES (16, 'spring', 2);
INSERT INTO `t_blogtype` VALUES (17, 'mybatis', 10);

-- ----------------------------
-- Table structure for t_comment
-- ----------------------------
DROP TABLE IF EXISTS `t_comment`;
CREATE TABLE `t_comment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userIp` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `blogId` int(11) NULL DEFAULT NULL,
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `commentDate` datetime NULL DEFAULT NULL,
  `state` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 342 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_comment
-- ----------------------------
INSERT INTO `t_comment` VALUES (336, '0:0:0:0:0:0:0:1', 62, '11111', '2017-04-13 23:18:16', 1);
INSERT INTO `t_comment` VALUES (337, '0:0:0:0:0:0:0:1', 65, '1111', '2017-04-14 21:23:15', 1);
INSERT INTO `t_comment` VALUES (338, '0:0:0:0:0:0:0:1', 67, '1111', '2017-05-01 21:07:34', 1);
INSERT INTO `t_comment` VALUES (339, '0:0:0:0:0:0:0:1', 67, '111', '2017-05-01 21:11:25', 1);
INSERT INTO `t_comment` VALUES (340, '0:0:0:0:0:0:0:1', 68, '1111y突然他摇摇头要33333344444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444若434555444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444444', '2017-05-04 10:49:08', 2);
INSERT INTO `t_comment` VALUES (341, '0:0:0:0:0:0:0:1', 64, '111', '2020-03-09 13:06:53', 0);

-- ----------------------------
-- Table structure for t_link
-- ----------------------------
DROP TABLE IF EXISTS `t_link`;
CREATE TABLE `t_link`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `linkName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `linkUrl` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `orderNo` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_link
-- ----------------------------
INSERT INTO `t_link` VALUES (3, '小图标下载', 'http://www.easyicon.net/', 3);
INSERT INTO `t_link` VALUES (4, 'Java贴吧', 'http://tieba.baidu.com/f?kw=java', 4);
INSERT INTO `t_link` VALUES (5, '免费logo在线制作', 'http://www.uugai.com/', 5);

SET FOREIGN_KEY_CHECKS = 1;
