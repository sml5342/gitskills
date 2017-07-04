/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50630
Source Host           : localhost:3306
Source Database       : zhongshihuatow

Target Server Type    : MYSQL
Target Server Version : 50630
File Encoding         : 65001

Date: 2017-07-03 10:56:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `sdb_pam_account`
-- ----------------------------
DROP TABLE IF EXISTS `sdb_pam_account`;
CREATE TABLE `sdb_pam_account` (
  `account_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '账户序号ID',
  `account_type` varchar(30) DEFAULT NULL COMMENT '账户类型(会员和管理员等)',
  `login_name` varchar(100) NOT NULL COMMENT '登录用户名',
  `login_password` varchar(32) NOT NULL COMMENT '登录密码',
  `disabled` enum('true','false') DEFAULT 'false',
  `createtime` int(10) unsigned DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`account_id`),
  UNIQUE KEY `account` (`account_type`,`login_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sdb_pam_account
-- ----------------------------
INSERT INTO `sdb_pam_account` VALUES ('1', 'shopadmin', 'admin', 's84fc88fb01f51ffd88aedb627c52ce9', 'false', '1497950387');
