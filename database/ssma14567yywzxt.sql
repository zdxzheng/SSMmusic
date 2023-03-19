/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : ssma14567yywzxt

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2022-12-24 16:38:50
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `admins`
-- ----------------------------
DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL DEFAULT '' COMMENT '帐号',
  `pwd` varchar(50) NOT NULL DEFAULT '' COMMENT '密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='管理员';

-- ----------------------------
-- Records of admins
-- ----------------------------
INSERT INTO `admins` VALUES ('1', 'admin', 'admin');

-- ----------------------------
-- Table structure for `danqu`
-- ----------------------------
DROP TABLE IF EXISTS `danqu`;
CREATE TABLE `danqu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gequbianhao` varchar(50) NOT NULL DEFAULT '' COMMENT '歌曲编号',
  `tupian` varchar(255) NOT NULL COMMENT '图片',
  `geshou` int(10) unsigned NOT NULL COMMENT '歌手',
  `qufeng` int(10) unsigned NOT NULL COMMENT '曲风',
  `gequmingcheng` varchar(255) NOT NULL DEFAULT '' COMMENT '歌曲名称',
  `jiage` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '价格',
  `faburiqi` varchar(25) NOT NULL COMMENT '发布日期',
  `gequ` varchar(255) NOT NULL DEFAULT '' COMMENT '歌曲',
  `geci` longtext NOT NULL COMMENT '歌词',
  `faburen` varchar(64) NOT NULL DEFAULT '' COMMENT '发布人',
  `issh` varchar(10) NOT NULL DEFAULT '否' COMMENT '是否审核',
  PRIMARY KEY (`id`),
  KEY `danqu_geshou_index` (`geshou`),
  KEY `danqu_qufeng_index` (`qufeng`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COMMENT='单曲';

-- ----------------------------
-- Records of danqu
-- ----------------------------
INSERT INTO `danqu` VALUES ('1', '05111611231206', 'upload/0511161229721462.png', '4', '1', '梦的信笺', '68.00', '2022-05-11 16:13:16', 'upload/0511161325934086.mp3', '<p>梦的信笺梦的信笺梦的信笺梦的信笺梦的信笺梦的信笺梦的信笺梦的信笺梦的信笺梦的信笺梦的信笺梦的信笺梦的信笺梦的信笺梦的信笺梦的信笺梦的信笺梦的信笺梦的信笺梦的信笺梦的信笺梦的信笺梦的信笺梦的信笺梦的信笺梦的信笺梦的信笺梦的信笺梦的信笺梦的信笺梦的信笺梦的信笺梦的信笺梦的信笺梦的信笺梦的信笺梦的信笺梦的信笺梦的信笺梦的信笺梦的信笺梦的信笺梦的信笺梦的信笺梦的信笺梦的信笺梦的信笺</p>', 'admin', '是');
INSERT INTO `danqu` VALUES ('2', '05111613332876', 'upload/0511161359595220.png', '4', '4', 'ZOOM', '68.00', '2022-05-11 16:14:13', 'upload/0511161420445688.mp3', '<p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal;\">zoom out&nbsp;</span><a target=\"_blank\" href=\"http://undefined\" style=\"color: rgb(19, 110, 194); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">缩小</a><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal;\">&nbsp;; 缩小显示 ; 画面拉远</span><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal;\">zoom out&nbsp;</span><a target=\"_blank\" href=\"http://undefined\" style=\"color: rgb(19, 110, 194); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">缩小</a><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal;\">&nbsp;; 缩小显示 ; 画面拉远</span><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal;\">zoom out&nbsp;</span><a target=\"_blank\" href=\"http://undefined\" style=\"color: rgb(19, 110, 194); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">缩小</a><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal;\">&nbsp;; 缩小显示 ; 画面拉远</span><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal;\">zoom out&nbsp;</span><a target=\"_blank\" href=\"http://undefined\" style=\"color: rgb(19, 110, 194); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">缩小</a><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal;\">&nbsp;; 缩小显示 ; 画面拉远</span><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal;\">zoom out&nbsp;</span><a target=\"_blank\" href=\"http://undefined\" style=\"color: rgb(19, 110, 194); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">缩小</a><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal;\">&nbsp;; 缩小显示 ; 画面拉远</span><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal;\">zoom out&nbsp;</span><a target=\"_blank\" href=\"http://undefined\" style=\"color: rgb(19, 110, 194); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">缩小</a><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal;\">&nbsp;; 缩小显示 ; 画面拉远</span><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal;\">zoom out&nbsp;</span><a target=\"_blank\" href=\"http://undefined\" style=\"color: rgb(19, 110, 194); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">缩小</a><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal;\">&nbsp;; 缩小显示 ; 画面拉远</span><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal;\">zoom out&nbsp;</span><a target=\"_blank\" href=\"http://undefined\" style=\"color: rgb(19, 110, 194); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">缩小</a><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal;\">&nbsp;; 缩小显示 ; 画面拉远</span><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal;\">zoom out&nbsp;</span><a target=\"_blank\" href=\"http://undefined\" style=\"color: rgb(19, 110, 194); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">缩小</a><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal;\">&nbsp;; 缩小显示 ; 画面拉远</span><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal;\">zoom out&nbsp;</span><a target=\"_blank\" href=\"http://undefined\" style=\"color: rgb(19, 110, 194); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">缩小</a><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal;\">&nbsp;; 缩小显示 ; 画面拉远</span><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal;\">zoom out&nbsp;</span><a target=\"_blank\" href=\"http://undefined\" style=\"color: rgb(19, 110, 194); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">缩小</a><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal;\">&nbsp;; 缩小显示 ; 画面拉远</span><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal;\">zoom out&nbsp;</span><a target=\"_blank\" href=\"http://undefined\" style=\"color: rgb(19, 110, 194); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">缩小</a><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal;\">&nbsp;; 缩小显示 ; 画面拉远</span><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal;\">zoom out&nbsp;</span><a target=\"_blank\" href=\"http://undefined\" style=\"color: rgb(19, 110, 194); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">缩小</a><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal;\">&nbsp;; 缩小显示 ; 画面拉远</span><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal;\">zoom out&nbsp;</span><a target=\"_blank\" href=\"http://undefined\" style=\"color: rgb(19, 110, 194); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">缩小</a><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 14px; text-indent: 28px; white-space: normal;\">&nbsp;; 缩小显示 ; 画面拉远</span></p>', 'admin', '是');
INSERT INTO `danqu` VALUES ('3', '05111615102459', 'upload/0511161540277329.png', '4', '2', 'SAHKEit', '68.00', '2022-05-11 16:15:54', 'upload/0511161602630820.mp3', '', 'admin', '是');
INSERT INTO `danqu` VALUES ('4', '05111617404144', 'upload/0511161814437255.png', '1', '1', '本草纲目', '68.00', '2022-05-11 16:18:33', 'upload/0511161839263527.mp3', '<p>本草纲目本草纲目本草纲目本草纲目本草纲目本草纲目本草纲目本草纲目本草纲目本草纲目本草纲目本草纲目本草纲目本草纲目本草纲目本草纲目本草纲目本草纲目本草纲目本草纲目本草纲目本草纲目本草纲目本草纲目本草纲目本草纲目本草纲目本草纲目本草纲目本草纲目本草纲目本草纲目本草纲目本草纲目本草纲目本草纲目本草纲目本草纲目本草纲目本草纲目本草纲目本草纲目本草纲目本草纲目本草纲目本草纲目本草纲目本草纲目</p>', 'admin', '是');
INSERT INTO `danqu` VALUES ('5', '05111618448977', 'upload/0511161857180859.png', '1', '6', '晴天', '68.00', '2022-05-11 16:19:09', 'upload/0511161903331547.mp3', '<p style=\"text-align: center;\">晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天晴天</p>', 'admin', '是');
INSERT INTO `danqu` VALUES ('6', '05111619211248', 'upload/0511161938037069.png', '2', '1', '孤勇者', '68.00', '2022-05-11 16:19:53', 'upload/0511161943609925.mp3', '<p>孤勇者孤勇者孤勇者孤勇者孤勇者孤勇者孤勇者孤勇者孤勇者孤勇者孤勇者孤勇者孤勇者孤勇者孤勇者孤勇者孤勇者孤勇者孤勇者孤勇者孤勇者孤勇者孤勇者孤勇者孤勇者孤勇者孤勇者孤勇者孤勇者孤勇者孤勇者孤勇者孤勇者孤勇者孤勇者孤勇者孤勇者孤勇者孤勇者孤勇者孤勇者孤勇者孤勇者孤勇者孤勇者孤勇者孤勇者孤勇者孤勇者孤勇者孤勇者孤勇者孤勇者孤勇者孤勇者孤勇者孤勇者孤勇者孤勇者孤勇者孤勇者</p>', 'admin', '是');
INSERT INTO `danqu` VALUES ('8', '12241636171690', 'upload/20221224/22951671871006462.png', '6', '1', '隐形的翅膀', '68.00', '2018-12-10 16:36:59', 'upload/20221224/88971671871039133.mp3', '<p>隐形的翅膀隐形的翅膀隐形的翅膀隐形的翅膀隐形的翅膀隐形的翅膀隐形的翅膀隐形的翅膀隐形的翅膀隐形的翅膀隐形的翅膀隐形的翅膀隐形的翅膀隐形的翅膀隐形的翅膀隐形的翅膀隐形的翅膀隐形的翅膀隐形的翅膀隐形的翅膀隐形的翅膀隐形的翅膀隐形的翅膀隐形的翅膀隐形的翅膀隐形的翅膀隐形的翅膀隐形的翅膀隐形的翅膀隐形的翅膀隐形的翅膀隐形的翅膀隐形的翅膀隐形的翅膀隐形的翅膀隐形的翅膀隐形的翅膀隐形的翅膀隐形的翅膀隐形的翅膀隐形的翅膀隐形的翅膀隐形的翅膀</p>', 'admin', '是');

-- ----------------------------
-- Table structure for `diqu`
-- ----------------------------
DROP TABLE IF EXISTS `diqu`;
CREATE TABLE `diqu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `diqumingcheng` varchar(255) NOT NULL DEFAULT '' COMMENT '地区名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COMMENT='地区';

-- ----------------------------
-- Records of diqu
-- ----------------------------
INSERT INTO `diqu` VALUES ('1', '内地');
INSERT INTO `diqu` VALUES ('2', '港台');
INSERT INTO `diqu` VALUES ('3', '欧美');
INSERT INTO `diqu` VALUES ('4', '日韩');
INSERT INTO `diqu` VALUES ('5', '法国');

-- ----------------------------
-- Table structure for `geshou`
-- ----------------------------
DROP TABLE IF EXISTS `geshou`;
CREATE TABLE `geshou` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `geshoubianhao` varchar(50) NOT NULL DEFAULT '' COMMENT '歌手编号',
  `zhaopian` varchar(255) NOT NULL COMMENT '照片',
  `xingming` varchar(50) NOT NULL DEFAULT '' COMMENT '姓名',
  `diqu` int(10) unsigned NOT NULL COMMENT '地区',
  `xingbie` varchar(10) NOT NULL COMMENT '性别',
  `gongsi` varchar(50) NOT NULL DEFAULT '' COMMENT '公司',
  `gerenjianjie` text NOT NULL COMMENT '个人简介',
  PRIMARY KEY (`id`),
  KEY `geshou_diqu_index` (`diqu`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COMMENT='歌手';

-- ----------------------------
-- Records of geshou
-- ----------------------------
INSERT INTO `geshou` VALUES ('1', '05111553228256', 'upload/0511155625295718.png', '周杰伦', '2', '男', '杰威尔音乐有限公司', '2000年发行首张个人专辑《Jay》。2001年发行的专辑《范特西》奠定其融合中西方音乐的风格 [1]  。2002年举行“The One”世界巡回演唱会 [2]  。2003年成为美国《时代周刊》封面人物 [3-4]  。2004年获得世界音乐大奖中国区最畅销艺人奖 [333]  。2005年凭借动作片《头文字D》获得金马奖、金像奖最佳新人奖 [6]  。2006年起连续三年获得世界音乐大奖中国区最畅销艺人奖 [7]  。2007年自编自导的文艺片《不能说的秘密》获得金马奖年度台湾杰出电影奖 ');
INSERT INTO `geshou` VALUES ('2', '05111556503791', 'upload/0511155708152323.png', '陈奕迅', '2', '男', '廿一克有限公司', '陈奕迅（Eason Chan），1974年7月27日出生于中国香港，祖籍广东省东莞市 [1]  ，华语流行乐男歌手、演员、作曲人，拥有英国金斯顿大学荣誉博士的学历 ');
INSERT INTO `geshou` VALUES ('3', '05111557537177', 'upload/0511155817311151.png', '林俊杰', '2', '男', '杰威尔音乐有限公司', '林俊杰（JJ Lin），1981年3月27日出生于新加坡，祖籍中国福建省厦门市同安区，华语流行乐男歌手、音乐人、潮牌主理人。2003年发行首张创作专辑《乐行者》，并于次年凭借该专辑获得第15届台湾金曲奖最佳新人奖。2004年凭借专辑《第二天堂》中的主打歌《江南》获得广泛关注。2006年首次举办个人巡演“2006就是俊杰世界巡回演唱会”。2007年成立个人音乐制作公司JFJ Product');
INSERT INTO `geshou` VALUES ('4', '05111558468865', 'upload/0511155907347928.png', 'Sia', '3', '女', '希雅·富勒', '希雅·凯特·伊索贝尔·富勒（Sia Kate Isobelle Furler），1975年12月18日出生于澳大利亚南澳大利亚州阿德莱德，澳大利亚流行乐女歌手、词曲作者，毕业于阿德莱德高中。');
INSERT INTO `geshou` VALUES ('5', '05111559363851', 'upload/0511155951169606.png', '米津玄师', '4', '男', '廿一克有限公司', '米津玄师（Yonezu Kenshi），1991年3月10日出生于日本德岛县德岛市，日本男歌手、词曲作者、编曲人、插画家、摄影师、舞者。\r\n2009年，米津玄师在VOCALOID上以“ハチ”的名义投稿、创作歌曲 [1]  ，2012年2月以本名“米津玄师”开始自作自唱歌曲。2013年5月发行首张单曲《Santa Maria》正式出道');
INSERT INTO `geshou` VALUES ('6', '12241635084871', 'upload/20221224/40431671870925578.png', '张韶涵', '2', '女', '天涵有限公司', '张韶涵（Angela Zhang），1982年1月19日出生于中国台湾省桃园市中坜区，拥有四分之一维吾尔族血统 [1]  ，华语流行乐女歌手、影视演员，毕业于加拿大温斯顿爵士丘吉尔中学。');

-- ----------------------------
-- Table structure for `kuaixun`
-- ----------------------------
DROP TABLE IF EXISTS `kuaixun`;
CREATE TABLE `kuaixun` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bianhao` varchar(50) NOT NULL DEFAULT '' COMMENT '编号',
  `biaoti` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `tupian` varchar(255) NOT NULL COMMENT '图片',
  `neirong` longtext NOT NULL COMMENT '内容',
  `fabushijian` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '发布时间',
  `faburen` varchar(64) NOT NULL DEFAULT '' COMMENT '发布人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='快讯';

-- ----------------------------
-- Records of kuaixun
-- ----------------------------
INSERT INTO `kuaixun` VALUES ('1', '05111620343206', '李玉刚x方文山 打造全新中国风歌曲', 'upload/0511162135179866.png', '<p>由李玉刚演唱、方文山作词、高进作曲的全新中国风歌曲《诛仙忘尘》正式上线，歌曲讲述了玲珑与兽神的凄美爱情故事，在李玉刚的深情演绎下，显得更加动人心弦。</p><p></p><p><img src=\"upload/202205111621519545.jpg\" style=\"margin: 0px; padding: 0px; border-style: initial; outline: 0px; user-select: none; -webkit-tap-highlight-color: transparent; visibility: visible; width: 712.812px;\"/></p><p></p><p>此次，不仅是李玉刚和方文山酝酿已久的一次合作，更是一次全新的尝试。歌曲作曲由金牌音乐制作人高进为李玉刚量身打造，不仅有李玉刚最为擅长的国风曲调，更加入了全新的R&amp;B元素，在婉转的唱腔之外，透露着几分低吟的轻叹，让人不得不惊叹其演唱风格越来越多元化。</p><p>作为曾引领华语乐坛“中国风”的作词人，方文山一直对中国古典文化喜爱有加，在这首《诛仙忘尘》中，更是将“荒烟”“山门”等意象融入到歌词中，一句“几世轮回的那时的我们，几次分离才能不染尘”更是将玲珑与兽神的爱情故事刻画的入木三分。</p><p>不久前，李玉刚演绎的歌曲《清明客》被网友们频频点赞并迅速登上微博热搜榜第二，播出两天，全网浏览量超5亿+，收获了大批网友的喜爱。而这一次全新的国风单曲，也期待能为大家带来与众不同的音乐体验，领略不一样的国风情怀。</p><p><br/></p>', '2022-05-11 16:21:51', 'admin');
INSERT INTO `kuaixun` VALUES ('2', '05111621524165', '韩媒曝GOT7将于5月完整体回归', 'upload/0511162251098866.png', '<p style=\"text-align: center; margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%; color: rgb(77, 79, 83); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, SimSun, 宋体, Arial; font-size: 18px; letter-spacing: 1px; white-space: normal;\">新浪娱乐讯 4月22日，据韩国媒体报道，男子组合GOT7将于5月携新曲回归。</p><p style=\"text-align: center; margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%; color: rgb(77, 79, 83); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, SimSun, 宋体, Arial; font-size: 18px; letter-spacing: 1px; white-space: normal;\">　　据多位歌谣界相关人士透露，GOT7最近确定将在5月份以完整体回归，开始了最后的准备。据悉，歌曲的制作工作已经接近尾声。</p><p style=\"text-align: center; margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%; color: rgb(77, 79, 83); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, SimSun, 宋体, Arial; font-size: 18px; letter-spacing: 1px; white-space: normal;\">　　GOT7在去年1月和JYP娱乐的专属合约到期后，各自签约在新的经纪公司，成员各自solo活动，组合不解散。</p><p style=\"text-align: center; margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%; color: rgb(77, 79, 83); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, SimSun, 宋体, Arial; font-size: 18px; letter-spacing: 1px; white-space: normal;\">新浪娱乐讯 4月22日，据韩国媒体报道，男子组合GOT7将于5月携新曲回归。</p><p style=\"text-align: center; margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%; color: rgb(77, 79, 83); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, SimSun, 宋体, Arial; font-size: 18px; letter-spacing: 1px; white-space: normal;\">　　据多位歌谣界相关人士透露，GOT7最近确定将在5月份以完整体回归，开始了最后的准备。据悉，歌曲的制作工作已经接近尾声。</p><p style=\"text-align: center; margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%; color: rgb(77, 79, 83); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, SimSun, 宋体, Arial; font-size: 18px; letter-spacing: 1px; white-space: normal;\">　　GOT7在去年1月和JYP娱乐的专属合约到期后，各自签约在新的经纪公司，成员各自solo活动，组合不解散。</p><p style=\"text-align: center; margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%; color: rgb(77, 79, 83); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, SimSun, 宋体, Arial; font-size: 18px; letter-spacing: 1px; white-space: normal;\">新浪娱乐讯 4月22日，据韩国媒体报道，男子组合GOT7将于5月携新曲回归。</p><p style=\"text-align: center; margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%; color: rgb(77, 79, 83); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, SimSun, 宋体, Arial; font-size: 18px; letter-spacing: 1px; white-space: normal;\">　　据多位歌谣界相关人士透露，GOT7最近确定将在5月份以完整体回归，开始了最后的准备。据悉，歌曲的制作工作已经接近尾声。</p><p style=\"text-align: center; margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%; color: rgb(77, 79, 83); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, SimSun, 宋体, Arial; font-size: 18px; letter-spacing: 1px; white-space: normal;\">　　GOT7在去年1月和JYP娱乐的专属合约到期后，各自签约在新的经纪公司，成员各自solo活动，组合不解散。</p><p style=\"text-align: center; margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%; color: rgb(77, 79, 83); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, SimSun, 宋体, Arial; font-size: 18px; letter-spacing: 1px; white-space: normal;\">新浪娱乐讯 4月22日，据韩国媒体报道，男子组合GOT7将于5月携新曲回归。</p><p style=\"text-align: center; margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%; color: rgb(77, 79, 83); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, SimSun, 宋体, Arial; font-size: 18px; letter-spacing: 1px; white-space: normal;\">　　据多位歌谣界相关人士透露，GOT7最近确定将在5月份以完整体回归，开始了最后的准备。据悉，歌曲的制作工作已经接近尾声。</p><p style=\"text-align: center; margin-top: 0px; margin-bottom: 30px; padding: 0px; text-size-adjust: 100%; color: rgb(77, 79, 83); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft Yahei&quot;, 微软雅黑, SimSun, 宋体, Arial; font-size: 18px; letter-spacing: 1px; white-space: normal;\">　　GOT7在去年1月和JYP娱乐的专属合约到期后，各自签约在新的经纪公司，成员各自solo活动，组合不解散。</p><p style=\"text-align: center;\"><br/></p>', '2022-05-11 16:23:05', 'admin');

-- ----------------------------
-- Table structure for `lunbotu`
-- ----------------------------
DROP TABLE IF EXISTS `lunbotu`;
CREATE TABLE `lunbotu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '标题',
  `image` varchar(255) NOT NULL COMMENT '图片',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '连接地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='轮播图';

-- ----------------------------
-- Records of lunbotu
-- ----------------------------
INSERT INTO `lunbotu` VALUES ('1', '435435', 'upload/0511155242969181.png', '#');
INSERT INTO `lunbotu` VALUES ('2', '3254324', 'upload/0511155253830300.png', '#');
INSERT INTO `lunbotu` VALUES ('3', '32432', 'upload/0511155300370522.png', '#');
INSERT INTO `lunbotu` VALUES ('4', '46543', 'upload/0511155307659830.png', '#');

-- ----------------------------
-- Table structure for `pinglun`
-- ----------------------------
DROP TABLE IF EXISTS `pinglun`;
CREATE TABLE `pinglun` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `biao` varchar(50) NOT NULL DEFAULT '' COMMENT '表',
  `biaoid` int(11) NOT NULL DEFAULT '0' COMMENT '表id',
  `biaoti` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `pingfen` varchar(255) NOT NULL DEFAULT '' COMMENT '评分',
  `pinglunneirong` text NOT NULL COMMENT '评论内容',
  `pinglunren` varchar(64) NOT NULL DEFAULT '' COMMENT '评论人',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '评论时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='评论';

-- ----------------------------
-- Records of pinglun
-- ----------------------------
INSERT INTO `pinglun` VALUES ('1', 'danqu', '5', '晴天', '1', '66', '001', '2022-05-11 16:38:34');
INSERT INTO `pinglun` VALUES ('2', 'danqu', '6', '孤勇者', '1', '3245435', 'admin', '2022-12-24 16:31:14');
INSERT INTO `pinglun` VALUES ('3', 'danqu', '6', '孤勇者', '1', '66666666', '111', '2022-12-24 16:33:55');

-- ----------------------------
-- Table structure for `qufeng`
-- ----------------------------
DROP TABLE IF EXISTS `qufeng`;
CREATE TABLE `qufeng` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `qufengmingcheng` varchar(255) NOT NULL DEFAULT '' COMMENT '曲风名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COMMENT='曲风';

-- ----------------------------
-- Records of qufeng
-- ----------------------------
INSERT INTO `qufeng` VALUES ('1', '流行');
INSERT INTO `qufeng` VALUES ('2', '摇滚');
INSERT INTO `qufeng` VALUES ('3', '古典');
INSERT INTO `qufeng` VALUES ('4', '嘻哈');
INSERT INTO `qufeng` VALUES ('5', '复古');
INSERT INTO `qufeng` VALUES ('6', '乡村');
INSERT INTO `qufeng` VALUES ('7', '爵士');

-- ----------------------------
-- Table structure for `shoucang`
-- ----------------------------
DROP TABLE IF EXISTS `shoucang`;
CREATE TABLE `shoucang` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL DEFAULT '' COMMENT '用户',
  `xwid` int(11) NOT NULL DEFAULT '0' COMMENT '关联表id',
  `biao` varchar(50) NOT NULL DEFAULT '' COMMENT '关联表',
  `biaoti` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '收藏时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='收藏';

-- ----------------------------
-- Records of shoucang
-- ----------------------------
INSERT INTO `shoucang` VALUES ('1', '001', '5', 'danqu', '晴天', '2022-05-11 16:38:28');
INSERT INTO `shoucang` VALUES ('2', '111', '6', 'danqu', '孤勇者', '2022-12-24 16:33:51');
INSERT INTO `shoucang` VALUES ('3', '111', '6', 'zhuanji', 'POP SONG', '2022-12-24 16:34:01');

-- ----------------------------
-- Table structure for `yonghu`
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `yonghuming` varchar(50) NOT NULL DEFAULT '' COMMENT '用户名',
  `mima` varchar(50) NOT NULL DEFAULT '' COMMENT '密码',
  `xingming` varchar(50) NOT NULL DEFAULT '' COMMENT '姓名',
  `xingbie` varchar(10) NOT NULL COMMENT '性别',
  `shouji` varchar(50) NOT NULL DEFAULT '' COMMENT '手机',
  `youxiang` varchar(50) NOT NULL DEFAULT '' COMMENT '邮箱',
  `shenfenzheng` varchar(50) NOT NULL DEFAULT '' COMMENT '身份证',
  `touxiang` varchar(255) NOT NULL COMMENT '头像',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='用户';

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES ('1', '001', '001', '小明', '男', '13666666666', '123456@qq.com', '513436200003296474', 'upload/0511163812104206.png');
INSERT INTO `yonghu` VALUES ('2', '111', '111', '小明', '男', '13666666666', '123456@qq.com', '', 'upload/20221224/12361671870814520.png');

-- ----------------------------
-- Table structure for `zhuanji`
-- ----------------------------
DROP TABLE IF EXISTS `zhuanji`;
CREATE TABLE `zhuanji` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `zhuanjibianhao` varchar(50) NOT NULL DEFAULT '' COMMENT '专辑编号',
  `zhuanjimingcheng` varchar(255) NOT NULL DEFAULT '' COMMENT '专辑名称',
  `zhuanjitupian` varchar(255) NOT NULL COMMENT '专辑图片',
  `faxinggeshou` int(10) unsigned NOT NULL COMMENT '发行歌手',
  `faxingshijian` varchar(25) NOT NULL COMMENT '发行时间',
  `jiage` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '价格',
  `zhuanjixiangqing` longtext NOT NULL COMMENT '专辑详情',
  PRIMARY KEY (`id`),
  KEY `zhuanji_faxinggeshou_index` (`faxinggeshou`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COMMENT='专辑';

-- ----------------------------
-- Records of zhuanji
-- ----------------------------
INSERT INTO `zhuanji` VALUES ('1', '05111600323995', 'Mojito', 'upload/0511160057828379.png', '1', '2022-05-11', '68.00', '<p>夏季限定特调上架!周杰伦lay Chou最新拉丁嗔哈沁脾情歌MOTO一起恋上古巴的微醺浪漫在古巴的海滩，点一杯大文豪海明威最爱的Mcojto和周杰伦一起品尝国恋情般的微醺特调阅读整个夏季的浪漫!220日迈进下半年，终于听见周杰伦!睽违多时周杰伦再推新单曲，用音乐环游世界的他，这次带领大家来到充满音乐、舞蹈的迷幻之城「古巴」，以古巴最著名的鸡尾酒「Mojtol为名而写的这首情歌，一如古巴这个城市以它独有的建筑风景，写成一封封献给天空的情书，TMojito」就是献给每一对来自世界各地的恋人，最浪漫的特调。「Mojto」是一种传统的古巴鸡尾酒，更是大文豪海明威的最爱，如缪斯女神般存在的Mojito，黄俊郎以此酒为主题,为周杰伦这首充满古巴风情、带着轻快的节奏、随兴摇摆曲风的创作，写出一种遇见爱情时，令人神往的浪漫情调;来到一个第一次到访的异国城市，心头涌上一种「1旧城市里的新恋情」的激荡，是每个旅人的心情，彷佛前世就来过一般既视感与命运感，让旧城更添一种神秘向往。周杰伦以最信手捻来的迷人旋律、以浓郁摇曳的拉丁曲风搭配慵懒不羁的嘻哈，领着好友群，穿着异国情调清爽的夏衫，开着鲜艳复古的老爷车随性捕捉古巴景致，更在MV里跳着轻快骚莎(Salsa)的舞步，让人不自觉跟着摇摆，心也跟着一起私奔到连海明威都流连忘返的古巴!【未经许可，不得翻唱或使用】</p><p>夏季限定特调上架！周躺周最新拉丁嗔哈沁脾情歌莫托一起恋上古巴的微醺浪漫在古巴的海滩，点一杯大文豪海明威最爱的Mcojto和周一起品尝国恋情般的微醺特调阅读整个夏季的浪漫！220日迈进下半年，终于听见周！睽违多时周再推新单曲，用音乐环游世界的他，这次带领大家来到充满音乐、舞蹈的迷幻之城“古巴”，以古巴最著名的鸡尾酒“Mojtol为名而写的这首情歌，一如古巴这个城市以它独有的建筑风景，写成一封封献给天空的情书，TMojito”就是献给每一对来自世界各地的恋人，最浪漫的特调。是一种传统的古巴鸡尾酒，更是大文豪海明威的最爱，如缪斯女神般存在的Mojito，黄俊郎以此酒为主题，为周这首充满古巴风情、带着轻快的节奏、随兴摇摆曲风的创作，写出一种遇见爱情时，令人神往的浪漫情调；来到一个第一次到访的异国城市，心头涌上一种“1旧城市里的新恋情”的激荡，是每个旅人的心情，彷佛前世就来过一般既视感与命运感，让旧城更添一种神秘向往.周以最信手捻来的迷人旋律、以浓郁摇曳的拉丁曲风搭配慵懒不羁的嘻哈，领着好友群，穿着异国情调清爽的夏衫，开着鲜艳复古的老爷车随性捕捉古巴景致，更在mv里跳着轻快骚莎(Salsa)的舞步，让人不自觉跟着摇摆，心也跟着一起私奔到连海明威都流连忘返的古巴！[未经许可不得翻唱或使用]</p><p><br/></p>');
INSERT INTO `zhuanji` VALUES ('2', '05111601354498', '我是如此相信', 'upload/0511160146047633.png', '1', '2022-05-11', '68.00', '<p>周杰伦我是如此相信(MV助威电影天火’&#39;乐坛天王周杰伦为昆凌主演的新片天火′写歌并演唱主题曲′我是如此相信”，随着电影上映，粉丝在电影院里透过大屏幕及震撼的音响环境，已抢先听到这首气势磅礴的歌曲!歌曲搭配电影幕后画面的同时，也带给粉丝满满的震撼!周杰伦说:‘写一首好听的歌用不了太久，只要有感觉就行。&quot;动听的旋律及优美的歌词来自周杰伦与方文山的黄金词曲组合，同时包办演唱的周杰伦，也为这首歌拍摄MV，助威昆凌主演的电影天火&quot;不遗余力。妳为了切合电影天火”的氛围，拍摄MV的片厂用喷画及沙土打造出一片荒漠，周杰伦与乐手们犹如置身灾难即将来临的现场，看似处于绝望之中却仍然充满希望，歌词:“我是如此相信，在背后支撑的是你，一直与我并肩而行，仰望等太阳升起，听见鸟群回来的声音。&quot;表达了在面对灾难时，不畏艰难、不放弃的信念!方文山写的歌词充份呈现了电影的画面感，歌名&#39;我是如此相信‘是整首歌最重要的精神，鼓励大家以坚定的意志，相信希望永远在下一秒!周杰伦一身帅气、戴着鸭舌帽入镜这支MV中，令人联想到他初出道时总是戴着鸭舌帽出现在当时的MV里、甚至是上节目宣传时的造型，他笑说:“大家有没有觉得我回到第一张专辑的造型?哈哈!20年，始终如一。&quot;在乐坛迈入20年的此刻，周杰伦也用MV影像作品带大家重回初心!</p><p>周我是如此相信(MV助威电影天火‘’乐坛天王周为昆凌主演的新片天火‘写歌并演唱主题曲’我是如此相信“，随着电影上映，粉丝在电影院里透过大屏幕及震撼的音响环境，已抢先听到这首气势磅礴的歌曲！歌曲搭配电影幕后画面的同时，也带给粉丝满满的震撼！周说：‘写一首好听的歌用不了太久，只要有感觉就行.“动听的旋律及优美的歌词来自周与方文山的黄金词曲组合，同时包办演唱的周，也为这首歌拍摄MV，助威昆凌主演的电影天火”不遗余力.妳为了切合电影天火“的氛围，拍摄MV的片厂用喷画及沙土打造出一片荒漠，周与乐手们犹如置身灾难即将来临的现场，看似处于绝望之中却仍然充满希望，歌词：”我是如此相信，在背后支撑的是你，一直与我并肩而行，仰望等太阳升起，听见鸟群回来的声音.“表达了在面对灾难时，不畏艰难、不放弃的信念！方文山写的歌词充份呈现了电影的画面感，歌名‘我是如此相信’是整首歌最重要的精神，鼓励大家以坚定的意志，相信希望永远在下一秒！周一身帅气、戴着鸭舌帽入镜这支MV中，令人联想到他初出道时总是戴着鸭舌帽出现在当时的MV里、甚至是上节目宣传时的造型，他笑说：“大家有没有觉得我回到第一张专辑的造型？哈哈！20年，始终如一。“在乐坛迈入20年的此刻，周也用MV影像作品带大家重回初心！</p><p><br/></p>');
INSERT INTO `zhuanji` VALUES ('3', '05111602128633', '地表最强', 'upload/0511160221170846.png', '1', '2022-05-11', '68.00', '<p>地表最强音乐引力太空人也挡不住!用音乐出发，建构出神入化的感官新宇宙!周杰伦“地表最强THE INVINCIBLE&quot;演唱会DVD版蓝光版太空银宇宙黑特殊造型铁盒包装⑾0重磅回归地表发行连太空人也追不及待!回到地表，飞上太空遁入海底!演出成本突破1.6亿科技+幻想绝对冲击4D感官高规格拍摄后制收录25首精彩曲目重现现场震撼!从出道开始的第一套演唱会，到第七套【地表最强】演唱会，周杰伦就不断创下新纪录、不断开发新创意、不断超越历史、创造历史，周而复始，地表最强!坚持着最尾的原则，周杰伦的第七套世界巡回演唱会&quot;地表最强&quot;演唱会前导海报中，悠游在浩瀚宇宙中的太空人手持演唱会门票，打算搭乘航天飞机返回地球，连太空人都追不及待要回到地球，只为看这场一票难求的周杰伦演唱会!海报视觉预告了这场演唱会的太空科技元素，【地表最强】演唱会将视频的真实”、场景的华丽’、道具场面的夸张，完美三合一，创造出地球有史以来最令人期待的一场演唱会，如果只选一场演唱会，当然要地表最强!这场演唱会更以影音高规格将演唱会现场完整拍摄录影，并在巡演结束后耗时数月精心后制，收录25首精选曲目，推出DVD及蓝光两版，产品视觉设计延续演唱会的太空科技感，蓝光版采用神秘的宇宙黑殊造型铁盒包装、DVD则是采用酷炫的&quot;太空银&quot;′特殊造型铁盒包装，宛如时空胶囊般，希望让歌迷珍藏′地表最强&#39;演唱会这一晚的目不暇给、精彩绝伦的魔幻时刻!</p><p>地表最强音乐引力太空人也挡不住！用音乐出发，建构出神入化的感官新宇宙！周“地表最强无敌”演唱会DVD版蓝光版太空银宇宙黑特殊造型铁盒包装110重磅回归地表发行连太空人也追不及待！回到地表，飞上太空遁入海底！演出成本突破1.6亿科技+幻想绝对冲击4D感官高规格拍摄后制收录25首精彩曲目重现现场震撼！从出道开始的第一套演唱会，到第七套[地表最强]演唱会，周就不断创下新纪录、不断开发新创意、不断超越历史、创造历史，周而复始，地表最强！坚持着最尾的原则，周的第七套世界巡回演唱会“地表最强”演唱会前导海报中，悠游在浩瀚宇宙中的太空人手持演唱会门票，打算搭乘航天飞机返回地球，连太空人都追不及待要回到地球，只为看这场一票难求的周演唱会！海报视觉预告了这场演唱会的太空科技元素，[地表最强]演唱会将视频的真实“、场景的华丽‘、道具场面的夸张，完美三合一，创造出地球有史以来最令人期待的一场演唱会，如果只选一场演唱会，当然要地表最强！这场演唱会更以影音高规格将演唱会现场完整拍摄录影，并在巡演结束后耗时数月精心后制，收录25首精选曲目，推出及蓝光两版，产品视觉设计延续演唱会的太空科技感，蓝光版采用神秘的宇宙黑殊造型铁盒包装、dvd则是采用酷炫的“太空银”‘特殊造型铁盒包装，宛如时空胶囊般希望让歌迷珍藏‘地表最强’演唱会这一晚的目不暇给、精彩绝伦的魔幻时刻！</p><p><br/></p>');
INSERT INTO `zhuanji` VALUES ('4', '05111602503664', '说好不哭', 'upload/0511160318355398.png', '1', '2022-05-11', '68.00', '<p>全球等到哭的激动!全球听到哭的感动!周杰伦2019霸气推新歌“说好不哭”Ja)式心疼情歌重磅回归方文山以词说戏走心之作你的限时动态是我的过去式我的限时动态是你的未来式彼此的时间停格在分手时的那句说好不哭”说好不哭是一首关于成全&quot;与约定&#39;的情歌，以钢琴缓缓诉说这段凄美绝伦的爱情故事，整首歌以钢琴为主故事线、弦乐编织出抒情场景，营造出一种爱情电影的氛围;歌词以男生的第一人称，娓娓道来这段爱情的心情转折与故事情节﹔几句简短的歌词，将男女之间因为太替对方着想而牺牲这段爱情的细腻心思表达得丝丝入扣、令人容易产生共鸣与带入感;每段爱情都有各自的委屈与无奈，即使走向分手，还是要&quot;说好不哭，微笑面对。歌曲一开始就唱着&quot;没有了联络”，“放不下的人是我;女生总是护着男生，比起自己的悲伤，更在意别人怎么看男生的，即使分手了也让朋友觉得不是男生的错;为了成全男生的梦想，女生微笑放手，说好不哭让男生走;而失去联络之后，男生却依然不时听见女生的消息。当初分手，说好不哭，笑着离开，但是此刻的微笑比眼泪更令人心疼，更心疼的是，都过了多久，还在找理由等着男生。有一种爱情是宁愿牺牲也不愿造成对方的负担有一种爱情是明明心疼却什么事都无法为她做周杰伦仿佛是以一种说话的感觉，轻轻地唱出这段爱情故事;以声音演出′好像鼓起勇气对女生说出自己来不及说的抱歉，以及当初没说出口的挽留;像是女孩听着男生的留言，陷入了回忆、脸上微笑瓦解，再也无法做到当初承诺的&quot;说好不哭&quot;...</p><p>全球等到哭的激动！全球听到哭的感动！周2019霸气推新歌“说好不哭”Ja)式心疼情歌重磅回归方文山以词说戏走心之作你的限时动态是我的过去式我的限时动态是你的未来式彼此的时间停格在分手时的那句说好不哭“说好不哭是一首关于成全”与约定‘的情歌，以钢琴缓缓诉说这段凄美绝伦的爱情故事整首歌以钢琴为主故事线、弦乐编织出抒情场景，营造出一种爱情电影的氛围；歌词以男生的第一人称，娓娓道来这段爱情的心情转折与故事情节；几句简短的歌词，将男女之间因为太替对方着想而牺牲这段爱情的细腻心思表达得丝丝入扣、令人容易产生共鸣与带入感；每段爱情都有各自的委屈与无奈，即使走向分手，还是要“说好不哭，微笑面对.歌曲一开始就唱着“没有了联络”，“放不下的人是我；女生总是护着男生，比起自己的悲伤，更在意别人怎么看男生的，即使分手了也让朋友觉得不是男生的错；为了成全男生的梦想，女生微笑放手，说好不哭让男生走；而失去联络之后，男生却依然不时听见女生的消息.当初分手，说好不哭，笑着离开，但是此刻的微笑比眼泪更令人心疼，更心疼的是，都过了多久，还在找理由等着男生.有一种爱情是宁愿牺牲也不愿造成对方的负担有一种爱情是明明心疼却什么事都无法为她做周仿佛是以一种说话的感觉，轻轻地唱出这段爱情故事；以声音演出‘好像鼓起勇气对女生说出自己来不及说的抱歉，以及当初没说出口的挽留；像是女孩听着男生的留言，陷入了回忆、脸上微笑瓦解，再也无法做到当初承诺的“说好不哭”..。</p><p><br/></p>');
INSERT INTO `zhuanji` VALUES ('5', '05111603566800', '不期而遇的夏天', 'upload/0511160416283198.png', '2', '2022-05-11', '68.00', '<p>Eason陈奕迅倾情献唱电影主题曲感受夏日般治愈系温暖―8月17日，Eason陈奕迅即将推出全新单曲《不期而遇的夏天》，这首歌同时也是作为电影《不期而遇的夏的同名主题曲。8月16日当天歌曲MV首先释出，歌曲讲述了同名电影中主角的际遇，有时人与人之间的相遇只是匆匆相逢，但即便如此，也可能让人生如夏天股温暖。MV中简单温髻的画面，配上陈奕迅独具特色的低沉嗓音，有种娓娓道来的故事感。该歌曲由梁翘柏亲自操刀监制加作曲，李焯雄填词，这也是陈奕迅继《红玫瑰》《白玫瑰》后和梁翘柏时隔多年的再次合作，超强制作班底成为一大亮点。电影《不期而遇的夏天》讲述了留守儿童易水生意外结识了小镇上一事无成的小混混黄四毛，两个原本毫无交集的人，成为了彼此唯一的朋友，缺爱的小男孩与流浪汉相互治愈，共同成长的故事，这次有陈奕迅歌曲的加特也为电影增色不少。MV画面里,Eason身处在一个废弃瓦房里，坐在一张老旧的椅上，以成长后的男主角视角身临其境的讲述了一段故事。搭配上电影片段，两位主人公日常且生活化的互动，让人更加有代入感。陈奕迅的歌声富有穿透力，能触动人内心深处最柔软的位置，仿佛置身于夏日午后，田园般温暖且治愈，久违唱国语歌的陈奕迅，声音依旧感染力满分。</p><p>陈奕迅倾情献唱电影主题曲感受夏日般治愈系温暖-8月17日，Eason陈奕迅即将推出全新单曲“不期而遇的夏天”，这首歌同时也是作为电影“不期而遇的夏的同名主题曲.8月16日当天歌曲MV首先释出，歌曲讲述了同名电影中主角的际遇，有时人与人之间的相遇只是匆匆相逢，但即便如此，也可能让人生如夏天股温暖。MV中简单温髻的画面，配上陈奕迅独具特色的低沉嗓音，有种娓娓道来的故事感.该歌曲由梁翘柏亲自操刀监制加作曲，李焯雄填词，这也是陈奕迅继“红玫瑰”“白玫瑰”后和梁翘柏时隔多年的再次合作，超强制作班底成为一大亮点.电影“不期而遇的夏天”讲述了留守儿童易水生意外结识了小镇上一事无成的小混混黄四毛，两个原本毫无交集的人，成为了彼此唯一的朋友，缺爱的小男孩与流浪汉相互治愈，共同成长的故事，这次有陈奕迅歌曲的加特也为电影增色不少.MV画面里，Eason身处在一个废弃瓦房里，坐在一张老旧的椅上，以成长后的男主角视角身临其境的讲述了一段故事.搭配上电影片段，两位主人公日常且生活化的互动，让人更加有代入感.陈奕迅的歌声富有穿透力，能触动人内心深处最柔软的位置，仿佛置身于夏日午后，田园般温暖且治愈，久违唱国语歌的陈奕迅，声音依旧感染力满分.</p><p><br/></p>');
INSERT INTO `zhuanji` VALUES ('6', '05111604397680', 'POP SONG', 'upload/0511160500898533.png', '6', '2022-05-11', '68.00', '<p>继Pale Blue的成功后，日本现象级流行男歌手米津玄师在2022年又给粉丝们带来了—首高能单曲POP SONG!</p><p>继淡蓝的成功后，日本现象级流行男歌手米津玄师在2022年又给粉丝们带来了-首高能单曲流行歌曲！</p><p><br/></p>');

-- ----------------------------
-- Table structure for `zhuanjigequ`
-- ----------------------------
DROP TABLE IF EXISTS `zhuanjigequ`;
CREATE TABLE `zhuanjigequ` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `zhuanjiid` int(10) unsigned NOT NULL COMMENT '专辑id',
  `zhuanjibianhao` varchar(50) NOT NULL DEFAULT '' COMMENT '专辑编号',
  `zhuanjimingcheng` varchar(255) NOT NULL DEFAULT '' COMMENT '专辑名称',
  `faxinggeshou` int(10) unsigned NOT NULL COMMENT '发行歌手',
  `zhuanjitupian` varchar(255) NOT NULL COMMENT '专辑图片',
  `gequmingcheng` varchar(255) NOT NULL DEFAULT '' COMMENT '歌曲名称',
  `gequ` varchar(255) NOT NULL DEFAULT '' COMMENT '歌曲',
  `geci` longtext NOT NULL COMMENT '歌词',
  PRIMARY KEY (`id`),
  KEY `zhuanjigequ_zhuanjiid_index` (`zhuanjiid`),
  KEY `zhuanjigequ_faxinggeshou_index` (`faxinggeshou`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='专辑歌曲';

-- ----------------------------
-- Records of zhuanjigequ
-- ----------------------------
INSERT INTO `zhuanjigequ` VALUES ('1', '1', '05111600323995', 'Mojito', '1', 'upload/0511160057828379.png', 'Mojito', 'upload/0511160902863043.mp3', '<p>麻烦给我的爱人来—杯Mojito我喜欢阅读她微醺时的眼眸而我的咖啡糖不用太多</p><p>麻烦给我的爱人来-杯mojito我喜欢阅读她微醺时的眼眸而我的咖啡糖不用太多</p><p>麻烦给我的爱人来—杯Mojito我喜欢阅读她微醺时的眼眸而我的咖啡糖不用太多</p><p>麻烦给我的爱人来-杯mojito我喜欢阅读她微醺时的眼眸而我的咖啡糖不用太多</p><p><br/></p><p>麻烦给我的爱人来—杯Mojito我喜欢阅读她微醺时的眼眸而我的咖啡糖不用太多</p><p>麻烦给我的爱人来-杯mojito我喜欢阅读她微醺时的眼眸而我的咖啡糖不用太多</p><p><br/></p><p>麻烦给我的爱人来—杯Mojito我喜欢阅读她微醺时的眼眸而我的咖啡糖不用太多</p><p>麻烦给我的爱人来-杯mojito我喜欢阅读她微醺时的眼眸而我的咖啡糖不用太多</p><p><br/></p><p>麻烦给我的爱人来—杯Mojito我喜欢阅读她微醺时的眼眸而我的咖啡糖不用太多</p><p>麻烦给我的爱人来-杯mojito我喜欢阅读她微醺时的眼眸而我的咖啡糖不用太多</p><p><br/></p><p>麻烦给我的爱人来—杯Mojito我喜欢阅读她微醺时的眼眸而我的咖啡糖不用太多</p><p>麻烦给我的爱人来-杯mojito我喜欢阅读她微醺时的眼眸而我的咖啡糖不用太多</p><p><br/></p><p><br/></p>');
INSERT INTO `zhuanjigequ` VALUES ('2', '2', '05111601354498', '我是如此相信', '1', 'upload/0511160146047633.png', '我是如此相信', 'upload/0511161008486753.mp3', '<p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, sans-serif; font-size: 30px; font-weight: 600; white-space: normal;\">我是如此相信</span><span style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, sans-serif; font-size: 30px; font-weight: 600; white-space: normal;\">我是如此相信</span><span style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, sans-serif; font-size: 30px; font-weight: 600; white-space: normal;\">我是如此相信</span><span style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, sans-serif; font-size: 30px; font-weight: 600; white-space: normal;\">我是如此相信</span><span style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, sans-serif; font-size: 30px; font-weight: 600; white-space: normal;\">我是如此相信</span><span style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, sans-serif; font-size: 30px; font-weight: 600; white-space: normal;\">我是如此相信</span><span style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, sans-serif; font-size: 30px; font-weight: 600; white-space: normal;\">我是如此相信</span><span style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, sans-serif; font-size: 30px; font-weight: 600; white-space: normal;\">我是如此相信</span><span style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, sans-serif; font-size: 30px; font-weight: 600; white-space: normal;\">我是如此相信</span><span style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, sans-serif; font-size: 30px; font-weight: 600; white-space: normal;\">我是如此相信</span><span style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, sans-serif; font-size: 30px; font-weight: 600; white-space: normal;\">我是如此相信</span><span style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, sans-serif; font-size: 30px; font-weight: 600; white-space: normal;\">我是如此相信</span><span style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, sans-serif; font-size: 30px; font-weight: 600; white-space: normal;\">我是如此相信</span><span style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, sans-serif; font-size: 30px; font-weight: 600; white-space: normal;\">我是如此相信</span><span style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, sans-serif; font-size: 30px; font-weight: 600; white-space: normal;\">我是如此相信</span><span style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, sans-serif; font-size: 30px; font-weight: 600; white-space: normal;\">我是如此相信</span><span style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, sans-serif; font-size: 30px; font-weight: 600; white-space: normal;\">我是如此相信</span><span style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, sans-serif; font-size: 30px; font-weight: 600; white-space: normal;\">我是如此相信</span><span style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, sans-serif; font-size: 30px; font-weight: 600; white-space: normal;\">我是如此相信</span><span style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, sans-serif; font-size: 30px; font-weight: 600; white-space: normal;\">我是如此相信</span><span style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, sans-serif; font-size: 30px; font-weight: 600; white-space: normal;\">我是如此相信</span><span style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, sans-serif; font-size: 30px; font-weight: 600; white-space: normal;\">我是如此相信</span><span style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, sans-serif; font-size: 30px; font-weight: 600; white-space: normal;\">我是如此相信</span><span style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, sans-serif; font-size: 30px; font-weight: 600; white-space: normal;\">我是如此相信</span><span style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, sans-serif; font-size: 30px; font-weight: 600; white-space: normal;\">我是如此相信</span><span style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, sans-serif; font-size: 30px; font-weight: 600; white-space: normal;\">我是如此相信</span><span style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, sans-serif; font-size: 30px; font-weight: 600; white-space: normal;\">我是如此相信</span><span style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, sans-serif; font-size: 30px; font-weight: 600; white-space: normal;\">我是如此相信</span><span style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, sans-serif; font-size: 30px; font-weight: 600; white-space: normal;\">我是如此相信</span></p>');
INSERT INTO `zhuanjigequ` VALUES ('3', '3', '05111602128633', '地表最强', '1', 'upload/0511160221170846.png', '英雄', 'upload/0511161038299064.mp3', '<p style=\"text-align: center;\">英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄英雄</p>');
INSERT INTO `zhuanjigequ` VALUES ('4', '3', '05111602128633', '地表最强', '1', 'upload/0511160221170846.png', '双截棍', 'upload/0511161110581371.mp3', '<p>双截棍双截棍双截棍双截棍双截棍双截棍双截棍双截棍双截棍双截棍双截棍双截棍双截棍双截棍双截棍双截棍双截棍双截棍双截棍双截棍双截棍双截棍双截棍双截棍双截棍双截棍双截棍双截棍双截棍双截棍双截棍双截棍双截棍双截棍双截棍双截棍双截棍双截棍双截棍双截棍双截棍双截棍双截棍双截棍双截棍双截棍双截棍双截棍双截棍双截棍双截棍双截棍双截棍双截棍双截棍双截棍双截棍双截棍双截棍双截棍双截棍双截棍双截棍双截棍双截棍双截棍双截棍双截棍双截棍双截棍双截棍双截棍双截棍双截棍双截棍双截棍双截棍双截棍双截棍双截棍双截棍双截棍</p>');
