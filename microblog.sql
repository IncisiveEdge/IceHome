/*
Navicat MySQL Data Transfer

Source Server         : rax
Source Server Version : 50715
Source Host           : localhost:3306
Source Database       : microblog

Target Server Type    : MYSQL
Target Server Version : 50715
File Encoding         : 65001

Date: 2017-10-25 12:07:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `posts`
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `time` datetime NOT NULL,
  `post` longtext,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES ('2017-08-17 14:11:20', 'hello,fuck', '1', '涂汉江');
INSERT INTO `posts` VALUES ('2017-08-17 14:20:32', 'Open Chinese Convert（OpenCC）是一个开源的中文简繁转换项目，致力于制作高质量的基于统计预料的简繁转换词库。 还提供函数库(libopencc)、命令行简繁转换工具、人工校对工具、词典生成程序、在线转换服务及图形用户界面。', '2', '涂汉江');
INSERT INTO `posts` VALUES ('2017-08-17 14:20:49', '中州韵输入法引擎 / Rime Input Method Engine 取意历史上通行的中州韵，愿写就一部汇集音韵学智慧的输入法经典之作。项目网站设在 http://code.google.com/p/rimeime/创造应用价值是一方面，更要坚持对好技术的追求，希望能写出灵动而易于扩展的代码，使其成为一款个性十足的开源输入法。', '3', '涂汉江');
INSERT INTO `posts` VALUES ('2017-08-17 14:21:19', '东风破早梅 向暖一枝开 冰雪无人见 春从天上来', '4', '涂汉江');
INSERT INTO `posts` VALUES ('2017-08-17 14:59:24', '欢迎来到 Microblog\r\nMicroblog 是一个基于 Node.js 的微博系统。', '5', '涂汉江');
INSERT INTO `posts` VALUES ('2017-08-17 15:02:13', '大家好，我是Caro，很高兴见到大家！', '6', 'Caro');
INSERT INTO `posts` VALUES ('2017-08-17 15:02:21', '你们好吗', '7', 'Caro');
INSERT INTO `posts` VALUES ('2017-08-17 15:02:40', '我来测试一下功能', '8', 'Caro');
INSERT INTO `posts` VALUES ('2017-08-17 15:03:40', '好像有点问题', '9', 'Caro');
INSERT INTO `posts` VALUES ('2017-08-17 15:04:30', '我是hjtu，我也是测试的\r\n', '10', 'hjtu');
INSERT INTO `posts` VALUES ('2017-08-17 15:05:10', '只想好好地说个话', '11', 'hjtu');
INSERT INTO `posts` VALUES ('2017-08-17 15:06:47', '还让不让人活', '12', 'hjtu');
INSERT INTO `posts` VALUES ('2017-08-17 17:02:30', '通合科技批发给客户', '13', '圣诞节哦igfo');
INSERT INTO `posts` VALUES ('2017-08-17 22:44:23', '我在每天的这个时候都会过来来看看\r\n', '14', 'Caro');
INSERT INTO `posts` VALUES ('2017-08-23 13:08:04', '我今天又来了\r\n', '15', '涂汉江');
INSERT INTO `posts` VALUES ('2017-08-24 17:49:58', null, '49', 'Caro');
INSERT INTO `posts` VALUES ('2017-08-24 18:00:05', null, '50', 'Caro');
INSERT INTO `posts` VALUES ('2017-08-24 18:09:39', null, '51', 'Caro');
INSERT INTO `posts` VALUES ('2017-08-24 18:09:51', null, '52', 'Caro');
INSERT INTO `posts` VALUES ('2017-08-24 18:10:34', null, '53', 'Caro');
INSERT INTO `posts` VALUES ('2017-10-12 23:16:42', '时隔多久了？', '54', 'Caro');
INSERT INTO `posts` VALUES ('2017-10-15 15:45:04', '终于调好了\r\n', '55', 'Caro');
INSERT INTO `posts` VALUES ('2017-10-15 15:50:37', null, '56', 'Caro');
INSERT INTO `posts` VALUES ('2017-10-15 16:09:43', '234324', '57', 'Caro');
INSERT INTO `posts` VALUES ('2017-10-15 16:10:51', '234324', '58', 'Caro');
INSERT INTO `posts` VALUES ('2017-10-15 16:11:15', '111222', '59', 'Caro');
INSERT INTO `posts` VALUES ('2017-10-15 16:11:23', '32432', '60', 'Caro');
INSERT INTO `posts` VALUES ('2017-10-15 16:11:51', '前后端分离后能否提交成功呢\n', '61', 'Caro');
INSERT INTO `posts` VALUES ('2017-10-15 16:17:22', '35', '62', 'Caro');
INSERT INTO `posts` VALUES ('2017-10-15 16:17:35', '351', '63', 'Caro');
INSERT INTO `posts` VALUES ('2017-10-15 16:19:16', '去问问', '64', 'Caro');
INSERT INTO `posts` VALUES ('2017-10-15 16:19:51', '哈哈', '65', 'Caro');
INSERT INTO `posts` VALUES ('2017-10-15 16:20:09', null, '66', 'Caro');
INSERT INTO `posts` VALUES ('2017-10-15 16:20:18', null, '67', 'Caro');
INSERT INTO `posts` VALUES ('2017-10-15 16:23:26', null, '68', 'Caro');
INSERT INTO `posts` VALUES ('2017-10-15 16:26:00', '啊哈哈啊哈', '69', 'Caro');
INSERT INTO `posts` VALUES ('2017-10-15 16:26:23', null, '70', 'Caro');
INSERT INTO `posts` VALUES ('2017-10-15 16:28:26', null, '71', 'Caro');
INSERT INTO `posts` VALUES ('2017-10-15 16:28:42', null, '72', 'Caro');
INSERT INTO `posts` VALUES ('2017-10-15 16:29:44', '12312', '73', 'Caro');
INSERT INTO `posts` VALUES ('2017-10-15 16:29:51', '12312', '74', 'Caro');
INSERT INTO `posts` VALUES ('2017-10-15 16:30:05', '123123333', '75', 'Caro');
INSERT INTO `posts` VALUES ('2017-10-15 16:30:09', '1233333', '76', 'Caro');
INSERT INTO `posts` VALUES ('2017-10-15 16:30:17', '123333355', '77', 'Caro');
INSERT INTO `posts` VALUES ('2017-10-15 17:41:58', '2352325', '78', 'Caro');
INSERT INTO `posts` VALUES ('2017-10-15 17:43:24', '235235345345', '79', 'Caro');
INSERT INTO `posts` VALUES ('2017-10-15 17:43:38', '2352353453453254346346456', '80', 'Caro');
INSERT INTO `posts` VALUES ('2017-10-15 17:45:15', '测试一下', '81', 'Caro');
INSERT INTO `posts` VALUES ('2017-10-19 22:56:05', '我用来测试getPost接口用的', '82', 'tuhanjiang');
INSERT INTO `posts` VALUES ('2017-10-19 22:56:18', '再来几条好不好？？', '83', 'tuhanjiang');
INSERT INTO `posts` VALUES ('2017-10-19 22:56:24', 'once again', '84', 'tuhanjiang');

-- ----------------------------
-- Table structure for `posttpl`
-- ----------------------------
DROP TABLE IF EXISTS `posttpl`;
CREATE TABLE `posttpl` (
  `field` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) DEFAULT '',
  `visible` tinyint(255) DEFAULT NULL,
  `readonly` tinyint(255) DEFAULT NULL,
  `sortable` tinyint(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`field`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of posttpl
-- ----------------------------
INSERT INTO `posttpl` VALUES ('id', '编号', '1', '0', '1', 'text');
INSERT INTO `posttpl` VALUES ('post', '发表内容', '1', '0', '0', 'textarea');
INSERT INTO `posttpl` VALUES ('time', '发表时间', '1', '0', '1', 'date');
INSERT INTO `posttpl` VALUES ('user', '用户id', '1', '0', '1', 'text');

-- ----------------------------
-- Table structure for `sessions`
-- ----------------------------
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int(11) unsigned NOT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sessions
-- ----------------------------
INSERT INTO `sessions` VALUES ('bxXGeb94CsKaVuHI5aDoD93lnP961MaB', '1508942405', 0x7B22636F6F6B6965223A7B226F726967696E616C4D6178416765223A6E756C6C2C2265787069726573223A6E756C6C2C22687474704F6E6C79223A747275652C2270617468223A222F227D2C22666C617368223A7B7D7D);
INSERT INTO `sessions` VALUES ('hUcuVf9qrAPKcipeWpv-BFgPilyDS4Fc', '1508942097', 0x7B22636F6F6B6965223A7B226F726967696E616C4D6178416765223A6E756C6C2C2265787069726573223A6E756C6C2C22687474704F6E6C79223A747275652C2270617468223A222F227D2C22666C617368223A7B7D2C2275736572223A7B226E616D65223A22747568616E6A69616E67222C2270617373776F7264223A2257376E73625736303863656F526A524C5475786648673D3D222C226964223A2230303030303030303237227D7D);
INSERT INTO `sessions` VALUES ('r0kcu32CAztFFZnqCd6ghgnjb92442Ni', '1508857312', 0x7B22636F6F6B6965223A7B226F726967696E616C4D6178416765223A6E756C6C2C2265787069726573223A6E756C6C2C22687474704F6E6C79223A747275652C2270617468223A222F227D2C22666C617368223A7B7D2C2275736572223A7B226E616D65223A22747568616E6A69616E67222C2270617373776F7264223A2257376E73625736303863656F526A524C5475786648673D3D222C226964223A2230303030303030303237227D7D);
INSERT INTO `sessions` VALUES ('wyBObSsKjp-BmFftON2uJOuxFvt3yNik', '1508943753', 0x7B22636F6F6B6965223A7B226F726967696E616C4D6178416765223A6E756C6C2C2265787069726573223A6E756C6C2C22687474704F6E6C79223A747275652C2270617468223A222F227D2C22666C617368223A7B7D2C2275736572223A7B226E616D65223A22747568616E6A69616E67222C2270617373776F7264223A2257376E73625736303863656F526A524C5475786648673D3D222C226964223A2230303030303030303237227D7D);

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `name` text NOT NULL,
  `password` text NOT NULL,
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('电饭锅', 'xMpCOKC5I4INzFCab3WEmw==', '0000000019');
INSERT INTO `users` VALUES ('玉玉', 'xMpCOKC5I4INzFCab3WEmw==', '0000000020');
INSERT INTO `users` VALUES ('大幅度发给', 'ZRK9Q9nKpuAsmQsKgmUtyg==', '0000000021');
INSERT INTO `users` VALUES ('涂汉江', 'W7nsbW608ceoRjRLTuxfHg==', '0000000022');
INSERT INTO `users` VALUES ('测试测试', 'ZRK9Q9nKpuAsmQsKgmUtyg==', '0000000023');
INSERT INTO `users` VALUES ('Caro', 'ZRK9Q9nKpuAsmQsKgmUtyg==', '0000000024');
INSERT INTO `users` VALUES ('hjtu', 'ZRK9Q9nKpuAsmQsKgmUtyg==', '0000000025');
INSERT INTO `users` VALUES ('圣诞节哦igfo', 'ZRK9Q9nKpuAsmQsKgmUtyg==', '0000000026');
INSERT INTO `users` VALUES ('tuhanjiang', 'W7nsbW608ceoRjRLTuxfHg==', '0000000027');
INSERT INTO `users` VALUES ('carotu', 'W7nsbW608ceoRjRLTuxfHg==', '0000000028');
