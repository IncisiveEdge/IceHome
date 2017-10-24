/*
Navicat MySQL Data Transfer

Source Server         : rax
Source Server Version : 50715
Source Host           : localhost:3306
Source Database       : ice

Target Server Type    : MYSQL
Target Server Version : 50715
File Encoding         : 65001

Date: 2017-10-24 22:17:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `camp_schedule`
-- ----------------------------
DROP TABLE IF EXISTS `camp_schedule`;
CREATE TABLE `camp_schedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `intro` varchar(200) DEFAULT NULL,
  `start` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of camp_schedule
-- ----------------------------

-- ----------------------------
-- Table structure for `img_sub`
-- ----------------------------
DROP TABLE IF EXISTS `img_sub`;
CREATE TABLE `img_sub` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `proid` int(11) DEFAULT NULL,
  `subimg` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of img_sub
-- ----------------------------

-- ----------------------------
-- Table structure for `news_content`
-- ----------------------------
DROP TABLE IF EXISTS `news_content`;
CREATE TABLE `news_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `newsid` int(11) DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `content` varchar(200) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news_content
-- ----------------------------

-- ----------------------------
-- Table structure for `news_primary`
-- ----------------------------
DROP TABLE IF EXISTS `news_primary`;
CREATE TABLE `news_primary` (
  `newstime` date DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '新闻主表',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news_primary
-- ----------------------------

-- ----------------------------
-- Table structure for `pro_realia`
-- ----------------------------
DROP TABLE IF EXISTS `pro_realia`;
CREATE TABLE `pro_realia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `intro` varchar(200) DEFAULT NULL,
  `bigimg` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pro_realia
-- ----------------------------
