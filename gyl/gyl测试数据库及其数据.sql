/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50715
Source Host           : localhost:3306
Source Database       : gyl

Target Server Type    : MYSQL
Target Server Version : 50715
File Encoding         : 65001

Date: 2017-02-14 18:15:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `did` bigint(20) NOT NULL,
  `name` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `description` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`did`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('3', '销售部', '我是销售部');
INSERT INTO `department` VALUES ('4', '采购部', '我是采购部');
INSERT INTO `department` VALUES ('5', '财务部', '我是财务部。');
INSERT INTO `department` VALUES ('6', '集团部', '都是领导。');
INSERT INTO `department` VALUES ('8', '研发部', '我是研发部。');

-- ----------------------------
-- Table structure for menuitem
-- ----------------------------
DROP TABLE IF EXISTS `menuitem`;
CREATE TABLE `menuitem` (
  `mid` bigint(20) NOT NULL,
  `pid` bigint(20) DEFAULT NULL,
  `name` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `is_parent` bit(1) DEFAULT NULL,
  `icon` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of menuitem
-- ----------------------------
INSERT INTO `menuitem` VALUES ('1', '0', '供应链管理系统', '', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('2', '1', '基础数据', '', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('3', '2', '部门', '\0', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('4', '2', '用户', '\0', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('5', '2', '角色', '\0', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('6', '2', '商品', '\0', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('7', '2', '仓库', '\0', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('8', '2', '客户', '\0', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('9', '2', '供应商', '\0', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('10', '1', '权限管理', '', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('11', '10', '角色配置', '\0', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('12', '10', '权限配置', '\0', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('13', '1', '业务', '', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('14', '13', '采购管理', '', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('15', '14', '请购单管理', '', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('16', '15', '增加', '\0', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('17', '15', '修改', '\0', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('18', '15', '查询', '\0', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('19', '15', '审批', '\0', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('20', '14', '请购单管理', '', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('21', '20', '增加', '\0', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('22', '20', '修改', '\0', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('23', '20', '查询', '\0', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('24', '20', '审批', '\0', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('25', '14', '采购入库单管理', '', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('26', '25', '增加', '\0', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('27', '25', '修改', '\0', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('28', '25', '查询', '\0', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('29', '25', '审批', '\0', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('30', '14', '采购发票管理', '', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('31', '30', '增加', '\0', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('32', '30', '修改', '\0', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('33', '30', '查询', '\0', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('34', '30', '审批', '\0', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('35', '13', '销售管理', '', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('36', '35', '销售预订单管理', '', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('37', '36', '增加', '\0', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('38', '36', '修改', '\0', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('39', '36', '查询', '\0', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('40', '36', '审批', '\0', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('41', '35', '销售订单管理', '', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('42', '41', '增加', '\0', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('43', '41', '修改', '\0', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('44', '41', '查询', '\0', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('45', '41', '审批', '\0', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('46', '35', '发货单管理', '', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('47', '46', '增加', '\0', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('48', '46', '修改', '\0', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('49', '46', '查询', '\0', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('50', '46', '审批', '\0', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('51', '35', '销售出库单管理', '', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('52', '51', '增加', '\0', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('53', '51', '修改', '\0', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('54', '51', '查询', '\0', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('55', '51', '审批', '\0', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('56', '35', '销售开票管理', '', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('57', '56', '增加', '\0', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('58', '56', '修改', '\0', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('59', '56', '查询', '\0', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('60', '56', '审批', '\0', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('61', '13', '应收应付管理', '', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('62', '61', '销售应收管理', '', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('63', '62', '增加', '\0', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('64', '62', '修改', '\0', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('65', '62', '查询', '\0', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('66', '62', '审批', '\0', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('67', '61', '采购应付单管理', '', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('68', '67', '增加', '\0', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('69', '67', '修改', '\0', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('70', '67', '查询', '\0', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('71', '67', '审批', '\0', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('72', '13', '预警管理', '', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('73', '72', '采购入库时间预警', '\0', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('74', '72', '销售发货预警', '\0', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('75', '72', '销售出库预警', '\0', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('76', '13', '仓库管理', '', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('77', '76', '期初', '', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('78', '77', '增加', '\0', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('79', '77', '修改', '\0', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('80', '77', '查询', '\0', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('81', '77', '审批', '\0', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('82', '76', '盘点', '', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('83', '82', '增加', '\0', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('84', '82', '修改', '\0', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('85', '82', '查询', '\0', 'images/003.gif');
INSERT INTO `menuitem` VALUES ('86', '82', '审批', '\0', 'images/003.gif');

-- ----------------------------
-- Table structure for privilege
-- ----------------------------
DROP TABLE IF EXISTS `privilege`;
CREATE TABLE `privilege` (
  `id` bigint(20) NOT NULL,
  `description` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `pid` bigint(20) DEFAULT NULL,
  `isParent` bit(1) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `icon` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `url` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `target` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of privilege
-- ----------------------------
INSERT INTO `privilege` VALUES ('1', null, '供应链管理系统', '0', '', '1', 'images/003.gif', null, null);
INSERT INTO `privilege` VALUES ('2', null, '基础数据', '1', '', '1', 'images/003.gif', null, null);
INSERT INTO `privilege` VALUES ('3', null, '部门', '2', '', '1', 'images/003.gif', 'departmentAction_showPageResult.action', 'right');
INSERT INTO `privilege` VALUES ('4', null, '部门增加', '3', '\0', '2', 'images/002.gif', null, null);
INSERT INTO `privilege` VALUES ('5', null, '部门修改', '3', '\0', '2', 'images/002.gif', null, null);
INSERT INTO `privilege` VALUES ('6', null, '部门查询', '3', '\0', '2', 'images/002.gif', null, null);
INSERT INTO `privilege` VALUES ('7', null, '部门删除', '3', '\0', '2', 'images/002.gif', null, null);
INSERT INTO `privilege` VALUES ('8', null, '用户', '2', '', '1', 'images/003.gif', 'userAction_showPageResult.action', 'right');
INSERT INTO `privilege` VALUES ('9', null, '用户增加', '8', '\0', '2', 'images/002.gif', null, null);
INSERT INTO `privilege` VALUES ('10', null, '用户修改', '8', '\0', '2', 'images/002.gif', null, null);
INSERT INTO `privilege` VALUES ('11', null, '用户删除', '8', '\0', '2', 'images/002.gif', null, null);
INSERT INTO `privilege` VALUES ('12', null, '用户查询', '8', '\0', '2', 'images/002.gif', null, null);
INSERT INTO `privilege` VALUES ('13', null, '角色', '2', '\0', '1', 'images/003.gif', 'forwardAction.action?strMethod=role', 'right');
INSERT INTO `privilege` VALUES ('14', null, '角色增加', '13', '\0', '2', 'images/002.gif', null, null);
INSERT INTO `privilege` VALUES ('15', null, '角色修改', '13', '\0', '2', 'images/002.gif', null, null);
INSERT INTO `privilege` VALUES ('16', null, '角色增加', '13', '\0', '2', 'images/002.gif', null, null);
INSERT INTO `privilege` VALUES ('17', null, '角色删除', '13', '\0', '2', 'images/002.gif', null, null);
INSERT INTO `privilege` VALUES ('18', null, '商品', '2', '', '1', 'images/003.gif', '', '');
INSERT INTO `privilege` VALUES ('19', null, '商品增加', '18', '\0', '2', 'images/002.gif', null, null);
INSERT INTO `privilege` VALUES ('20', null, '商品增加', '18', '\0', '2', 'images/002.gif', null, null);
INSERT INTO `privilege` VALUES ('21', null, '商品查询', '18', '\0', '2', 'images/002.gif', null, null);
INSERT INTO `privilege` VALUES ('22', null, '商品删除', '18', '\0', '2', 'images/002.gif', null, null);
INSERT INTO `privilege` VALUES ('23', null, '仓库', '2', '\0', '1', 'images/003.gif', null, null);
INSERT INTO `privilege` VALUES ('24', null, '仓库增加', '23', '\0', '2', 'images/002.gif', null, null);
INSERT INTO `privilege` VALUES ('25', null, '仓库修改', '23', '\0', '2', 'images/002.gif', null, null);
INSERT INTO `privilege` VALUES ('26', null, '仓库查询', '23', '\0', '2', 'images/002.gif', null, null);
INSERT INTO `privilege` VALUES ('27', null, '仓库删除', '23', '\0', '2', 'images/002.gif', null, null);
INSERT INTO `privilege` VALUES ('28', null, '客户', '2', '\0', '1', 'images/003.gif', null, null);
INSERT INTO `privilege` VALUES ('29', null, '客户增加', '28', '\0', '2', 'images/002.gif', null, null);
INSERT INTO `privilege` VALUES ('30', null, '客户修改', '28', '\0', '2', 'images/002.gif', null, null);
INSERT INTO `privilege` VALUES ('31', null, '客户查询', '28', '\0', '2', 'images/002.gif', null, null);
INSERT INTO `privilege` VALUES ('32', null, '客户删除', '28', '\0', '2', 'images/002.gif', null, null);
INSERT INTO `privilege` VALUES ('33', null, '供应商', '2', '\0', '1', 'images/003.gif', null, null);
INSERT INTO `privilege` VALUES ('34', null, '供应商增加', '33', '\0', '2', 'images/002.gif', null, null);
INSERT INTO `privilege` VALUES ('35', null, '供应商修改', '33', '\0', '2', 'images/002.gif', null, null);
INSERT INTO `privilege` VALUES ('36', null, '供应商查询', '33', '\0', '2', 'images/002.gif', null, null);
INSERT INTO `privilege` VALUES ('37', null, '供应商删除', '33', '\0', '2', 'images/002.gif', null, null);
INSERT INTO `privilege` VALUES ('38', null, '权限管理', '1', '', '1', 'images/003.gif', null, null);
INSERT INTO `privilege` VALUES ('39', null, '角色配置', '38', '', '1', 'images/003.gif', 'rolePrivilegeAction_showRole.action', 'right');
INSERT INTO `privilege` VALUES ('40', null, '用户匹配角色', '39', '\0', '2', 'images/002.gif', null, null);
INSERT INTO `privilege` VALUES ('41', null, '权限配置', '38', '\0', '1', 'images/002.gif', 'userRoleAction_showUser.action', 'right');
INSERT INTO `privilege` VALUES ('42', null, '角色匹配权限', '41', '\0', '2', 'images/002.gif', '', '');
INSERT INTO `privilege` VALUES ('43', null, '业务', '1', '', '1', 'images/003.gif', null, null);
INSERT INTO `privilege` VALUES ('44', null, '采购管理', '43', '', '1', 'images/003.gif', null, null);
INSERT INTO `privilege` VALUES ('45', null, '请购单管理', '44', '', '1', 'images/003.gif', null, null);
INSERT INTO `privilege` VALUES ('46', null, '增加', '45', '\0', '1', 'images/003.gif', null, null);
INSERT INTO `privilege` VALUES ('47', null, '修改', '45', '\0', '1', 'images/003.gif', null, null);
INSERT INTO `privilege` VALUES ('48', null, '查询', '45', '\0', '1', 'images/003.gif', null, null);
INSERT INTO `privilege` VALUES ('49', null, '审批', '45', '\0', '1', 'images/003.gif', null, null);
INSERT INTO `privilege` VALUES ('50', null, '请购单管理', '44', '', '1', 'images/003.gif', null, null);
INSERT INTO `privilege` VALUES ('51', null, '增加', '50', '\0', '1', 'images/003.gif', null, null);
INSERT INTO `privilege` VALUES ('52', null, '修改', '50', '\0', '1', 'images/003.gif', null, null);
INSERT INTO `privilege` VALUES ('53', null, '查询', '50', '\0', '1', 'images/003.gif', null, null);
INSERT INTO `privilege` VALUES ('54', null, '审批', '50', '\0', '1', 'images/003.gif', null, null);
INSERT INTO `privilege` VALUES ('55', null, '采购入库单管理', '44', '', '1', 'images/003.gif', null, null);
INSERT INTO `privilege` VALUES ('56', null, '增加', '55', '\0', '1', 'images/003.gif', null, null);
INSERT INTO `privilege` VALUES ('57', null, '修改', '55', '\0', '1', 'images/003.gif', null, null);
INSERT INTO `privilege` VALUES ('58', null, '查询', '55', '\0', '1', 'images/003.gif', null, null);
INSERT INTO `privilege` VALUES ('59', null, '审批', '55', '\0', '1', 'images/003.gif', null, null);
INSERT INTO `privilege` VALUES ('60', null, '采购发票管理', '44', '', '1', 'images/003.gif', null, null);
INSERT INTO `privilege` VALUES ('61', null, '增加', '60', '\0', '1', 'images/003.gif', null, null);
INSERT INTO `privilege` VALUES ('62', null, '修改', '60', '\0', '1', 'images/003.gif', null, null);
INSERT INTO `privilege` VALUES ('63', null, '查询', '60', '\0', '1', 'images/003.gif', null, null);
INSERT INTO `privilege` VALUES ('64', null, '审批', '60', '\0', '1', 'images/003.gif', null, null);
INSERT INTO `privilege` VALUES ('65', null, '销售管理', '43', '', '1', 'images/003.gif', null, null);
INSERT INTO `privilege` VALUES ('66', null, '销售预订单管理', '65', '', '1', 'images/003.gif', null, null);
INSERT INTO `privilege` VALUES ('67', null, '增加', '66', '\0', '1', 'images/003.gif', 'xsyddAction_addUI.action', 'right');
INSERT INTO `privilege` VALUES ('68', null, '修改', '66', '\0', '1', 'images/003.gif', null, null);
INSERT INTO `privilege` VALUES ('69', null, '查询', '66', '\0', '1', 'images/003.gif', 'xsyddAction_showPageResultUI.action', 'right');
INSERT INTO `privilege` VALUES ('70', null, '审批', '66', '\0', '1', 'images/003.gif', null, null);
INSERT INTO `privilege` VALUES ('71', null, '销售订单管理', '65', '', '1', 'images/003.gif', null, null);
INSERT INTO `privilege` VALUES ('72', null, '增加', '71', '\0', '1', 'images/003.gif', 'xsddAction_addUI.action', 'right');
INSERT INTO `privilege` VALUES ('73', null, '修改', '71', '\0', '1', 'images/003.gif', 'xsddAction_updateUI.action', 'right');
INSERT INTO `privilege` VALUES ('74', null, '查询', '71', '\0', '1', 'images/003.gif', 'xsddAction_showPageResultUI.action', 'right');
INSERT INTO `privilege` VALUES ('75', null, '审批', '71', '\0', '1', 'images/003.gif', null, null);
INSERT INTO `privilege` VALUES ('76', null, '发货单管理', '65', '', '1', 'images/003.gif', null, null);
INSERT INTO `privilege` VALUES ('77', null, '增加', '76', '\0', '1', 'images/003.gif', null, null);
INSERT INTO `privilege` VALUES ('78', null, '修改', '76', '\0', '1', 'images/003.gif', null, null);
INSERT INTO `privilege` VALUES ('79', null, '查询', '76', '\0', '1', 'images/003.gif', null, null);
INSERT INTO `privilege` VALUES ('80', null, '审批', '76', '\0', '1', 'images/003.gif', null, null);
INSERT INTO `privilege` VALUES ('81', null, '销售出库单管理', '65', '', '1', 'images/003.gif', null, null);
INSERT INTO `privilege` VALUES ('82', null, '增加', '81', '\0', '1', 'images/003.gif', null, null);
INSERT INTO `privilege` VALUES ('83', null, '修改', '81', '\0', '1', 'images/003.gif', null, null);
INSERT INTO `privilege` VALUES ('84', null, '查询', '81', '\0', '1', 'images/003.gif', null, null);
INSERT INTO `privilege` VALUES ('85', null, '审批', '81', '\0', '1', 'images/003.gif', null, null);
INSERT INTO `privilege` VALUES ('86', null, '销售开票管理', '65', '', '1', 'images/003.gif', null, null);
INSERT INTO `privilege` VALUES ('87', null, '增加', '86', '\0', '1', 'images/003.gif', null, null);
INSERT INTO `privilege` VALUES ('88', null, '修改', '86', '\0', '1', 'images/003.gif', null, null);
INSERT INTO `privilege` VALUES ('89', null, '查询', '86', '\0', '1', 'images/003.gif', null, null);
INSERT INTO `privilege` VALUES ('90', null, '审批', '86', '\0', '1', 'images/003.gif', null, null);
INSERT INTO `privilege` VALUES ('91', null, '应收应付管理', '43', '', '1', 'images/003.gif', null, null);
INSERT INTO `privilege` VALUES ('92', null, '销售应收管理', '91', '', '1', 'images/003.gif', null, null);
INSERT INTO `privilege` VALUES ('93', null, '增加', '92', '\0', '1', 'images/003.gif', null, null);
INSERT INTO `privilege` VALUES ('94', null, '修改', '92', '\0', '1', 'images/003.gif', null, null);
INSERT INTO `privilege` VALUES ('95', null, '查询', '92', '\0', '1', 'images/003.gif', null, null);
INSERT INTO `privilege` VALUES ('96', null, '审批', '92', '\0', '1', 'images/003.gif', null, null);
INSERT INTO `privilege` VALUES ('97', null, '采购应付单管理', '91', '', '1', 'images/003.gif', null, null);
INSERT INTO `privilege` VALUES ('98', null, '增加', '97', '\0', '1', 'images/003.gif', null, null);
INSERT INTO `privilege` VALUES ('99', null, '修改', '97', '\0', '1', 'images/003.gif', null, null);
INSERT INTO `privilege` VALUES ('100', null, '查询', '97', '\0', '1', 'images/003.gif', null, null);
INSERT INTO `privilege` VALUES ('101', null, '审批', '97', '\0', '1', 'images/003.gif', null, null);
INSERT INTO `privilege` VALUES ('102', null, '预警管理', '43', '', '1', 'images/003.gif', null, null);
INSERT INTO `privilege` VALUES ('103', null, '采购入库时间预警', '102', '\0', null, 'images/003.gif', null, null);
INSERT INTO `privilege` VALUES ('104', null, '销售发货预警', '102', '\0', '1', 'images/003.gif', null, null);
INSERT INTO `privilege` VALUES ('105', null, '销售出库预警', '102', '\0', '1', 'images/003.gif', null, null);
INSERT INTO `privilege` VALUES ('106', null, '仓库管理', '43', '', '1', null, null, null);
INSERT INTO `privilege` VALUES ('107', null, '期初', '106', '', '1', 'images/003.gif', null, null);
INSERT INTO `privilege` VALUES ('108', null, '增加', '107', '\0', '1', 'images/003.gif', null, null);
INSERT INTO `privilege` VALUES ('109', null, '修改', '107', '\0', '1', 'images/003.gif', null, null);
INSERT INTO `privilege` VALUES ('110', null, '查询', '107', '\0', '1', 'images/003.gif', null, null);
INSERT INTO `privilege` VALUES ('111', null, '审批', '107', '\0', '1', 'images/003.gif', null, null);
INSERT INTO `privilege` VALUES ('112', null, '盘点', '106', '', '1', 'images/003.gif', null, null);
INSERT INTO `privilege` VALUES ('113', null, '增加', '112', '\0', '1', 'images/003.gif', null, null);
INSERT INTO `privilege` VALUES ('114', null, '修改', '112', '\0', '1', 'images/003.gif', null, null);
INSERT INTO `privilege` VALUES ('115', null, '查询', '112', '\0', '1', 'images/003.gif', null, null);
INSERT INTO `privilege` VALUES ('116', null, '审批', '112', '\0', '1', 'images/003.gif', null, null);

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `pid` bigint(20) NOT NULL,
  `spbm` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `jldw` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `spmc` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `xh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `shulv` double DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', '10087', '台', 'ThinkPad T440 14英寸超薄本', '20B6S00M00', '0.1');
INSERT INTO `product` VALUES ('3', '10086', '台', 'iPad mini', 'MD531CH/A', '0.2');
INSERT INTO `product` VALUES ('4', '10088', '台', '西门子BCD-610W冰箱', 'BCD-610W', '0.1');
INSERT INTO `product` VALUES ('5', '10089', '台', '海尔KFR-35GW/05KDP22A', 'KFR-35GW/05KDP22A', '0.2');
INSERT INTO `product` VALUES ('6', '10090', '台', '松下洗衣机', 'XQB65-Q76201', '0.1');
INSERT INTO `product` VALUES ('7', '12312', '台', '小天鹅TB55-V1068', 'TB55-V1068', '0.1');
INSERT INTO `product` VALUES ('8', '32405', '台', '老板CXW-200-8307', 'CXW-200-8307N+9B13N', '0.1');
INSERT INTO `product` VALUES ('9', '42787', '个', '海尔EC6002-D电热水器', 'EC6002-D', '0.1');
INSERT INTO `product` VALUES ('10', '100890', '台', '飞利浦WP3864/00饮水机', 'WP3864', '0.1');
INSERT INTO `product` VALUES ('11', '200089', '个', '公牛GN-110插座', 'GN-110', '0.1');
INSERT INTO `product` VALUES ('12', '4370089', '个', '美的FS40-13ER电风扇', 'FS40-13ER', '0.1');
INSERT INTO `product` VALUES ('13', '749896', '台', '志高FSG-12N空调扇', 'FSG-12N', '0.1');
INSERT INTO `product` VALUES ('14', '4074849', '个', '浪琴男表L4.774.4.12.6', 'L4.774.4.12.6', '0.2');
INSERT INTO `product` VALUES ('15', '10023759', '件', '雅戈尔2014新款纯白色男士短袖衬衫', 'WX550', '0.1');
INSERT INTO `product` VALUES ('16', '9230078', '个', '苹果4S', 'ipone4s', '0.1');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `rid` bigint(20) NOT NULL,
  `pid` bigint(20) DEFAULT NULL,
  `name` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `is_parent` bit(1) DEFAULT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '0', 'CEO', '\0');
INSERT INTO `role` VALUES ('2', '0', '采购员', '\0');
INSERT INTO `role` VALUES ('3', '0', '人事部', '\0');
INSERT INTO `role` VALUES ('4', '0', '后勤部', '\0');
INSERT INTO `role` VALUES ('5', '0', '采购管理员', '\0');

-- ----------------------------
-- Table structure for role_privilege
-- ----------------------------
DROP TABLE IF EXISTS `role_privilege`;
CREATE TABLE `role_privilege` (
  `id` bigint(20) NOT NULL,
  `rid` bigint(20) NOT NULL,
  PRIMARY KEY (`rid`,`id`),
  KEY `FK45FBD628F21F8B46` (`id`),
  KEY `FK45FBD628F8E66DC9` (`rid`),
  CONSTRAINT `FK45FBD628F21F8B46` FOREIGN KEY (`id`) REFERENCES `privilege` (`id`),
  CONSTRAINT `FK45FBD628F8E66DC9` FOREIGN KEY (`rid`) REFERENCES `role` (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of role_privilege
-- ----------------------------
INSERT INTO `role_privilege` VALUES ('1', '1');
INSERT INTO `role_privilege` VALUES ('1', '2');
INSERT INTO `role_privilege` VALUES ('1', '3');
INSERT INTO `role_privilege` VALUES ('1', '4');
INSERT INTO `role_privilege` VALUES ('1', '5');
INSERT INTO `role_privilege` VALUES ('2', '1');
INSERT INTO `role_privilege` VALUES ('2', '3');
INSERT INTO `role_privilege` VALUES ('2', '4');
INSERT INTO `role_privilege` VALUES ('3', '1');
INSERT INTO `role_privilege` VALUES ('3', '3');
INSERT INTO `role_privilege` VALUES ('4', '1');
INSERT INTO `role_privilege` VALUES ('4', '3');
INSERT INTO `role_privilege` VALUES ('5', '1');
INSERT INTO `role_privilege` VALUES ('5', '3');
INSERT INTO `role_privilege` VALUES ('6', '1');
INSERT INTO `role_privilege` VALUES ('6', '3');
INSERT INTO `role_privilege` VALUES ('7', '1');
INSERT INTO `role_privilege` VALUES ('7', '3');
INSERT INTO `role_privilege` VALUES ('8', '1');
INSERT INTO `role_privilege` VALUES ('8', '3');
INSERT INTO `role_privilege` VALUES ('8', '4');
INSERT INTO `role_privilege` VALUES ('9', '1');
INSERT INTO `role_privilege` VALUES ('9', '3');
INSERT INTO `role_privilege` VALUES ('9', '4');
INSERT INTO `role_privilege` VALUES ('10', '1');
INSERT INTO `role_privilege` VALUES ('10', '3');
INSERT INTO `role_privilege` VALUES ('10', '4');
INSERT INTO `role_privilege` VALUES ('11', '1');
INSERT INTO `role_privilege` VALUES ('11', '3');
INSERT INTO `role_privilege` VALUES ('11', '4');
INSERT INTO `role_privilege` VALUES ('12', '1');
INSERT INTO `role_privilege` VALUES ('12', '3');
INSERT INTO `role_privilege` VALUES ('12', '4');
INSERT INTO `role_privilege` VALUES ('13', '1');
INSERT INTO `role_privilege` VALUES ('13', '3');
INSERT INTO `role_privilege` VALUES ('13', '4');
INSERT INTO `role_privilege` VALUES ('14', '1');
INSERT INTO `role_privilege` VALUES ('14', '3');
INSERT INTO `role_privilege` VALUES ('14', '4');
INSERT INTO `role_privilege` VALUES ('15', '1');
INSERT INTO `role_privilege` VALUES ('15', '3');
INSERT INTO `role_privilege` VALUES ('15', '4');
INSERT INTO `role_privilege` VALUES ('16', '1');
INSERT INTO `role_privilege` VALUES ('16', '3');
INSERT INTO `role_privilege` VALUES ('16', '4');
INSERT INTO `role_privilege` VALUES ('17', '1');
INSERT INTO `role_privilege` VALUES ('17', '3');
INSERT INTO `role_privilege` VALUES ('17', '4');
INSERT INTO `role_privilege` VALUES ('18', '1');
INSERT INTO `role_privilege` VALUES ('18', '3');
INSERT INTO `role_privilege` VALUES ('18', '4');
INSERT INTO `role_privilege` VALUES ('19', '1');
INSERT INTO `role_privilege` VALUES ('19', '3');
INSERT INTO `role_privilege` VALUES ('19', '4');
INSERT INTO `role_privilege` VALUES ('20', '1');
INSERT INTO `role_privilege` VALUES ('20', '3');
INSERT INTO `role_privilege` VALUES ('20', '4');
INSERT INTO `role_privilege` VALUES ('21', '1');
INSERT INTO `role_privilege` VALUES ('21', '3');
INSERT INTO `role_privilege` VALUES ('21', '4');
INSERT INTO `role_privilege` VALUES ('22', '1');
INSERT INTO `role_privilege` VALUES ('22', '3');
INSERT INTO `role_privilege` VALUES ('22', '4');
INSERT INTO `role_privilege` VALUES ('23', '1');
INSERT INTO `role_privilege` VALUES ('23', '3');
INSERT INTO `role_privilege` VALUES ('23', '4');
INSERT INTO `role_privilege` VALUES ('24', '1');
INSERT INTO `role_privilege` VALUES ('24', '3');
INSERT INTO `role_privilege` VALUES ('24', '4');
INSERT INTO `role_privilege` VALUES ('25', '1');
INSERT INTO `role_privilege` VALUES ('25', '3');
INSERT INTO `role_privilege` VALUES ('25', '4');
INSERT INTO `role_privilege` VALUES ('26', '1');
INSERT INTO `role_privilege` VALUES ('26', '3');
INSERT INTO `role_privilege` VALUES ('26', '4');
INSERT INTO `role_privilege` VALUES ('27', '1');
INSERT INTO `role_privilege` VALUES ('27', '3');
INSERT INTO `role_privilege` VALUES ('27', '4');
INSERT INTO `role_privilege` VALUES ('28', '1');
INSERT INTO `role_privilege` VALUES ('28', '3');
INSERT INTO `role_privilege` VALUES ('28', '4');
INSERT INTO `role_privilege` VALUES ('29', '1');
INSERT INTO `role_privilege` VALUES ('29', '3');
INSERT INTO `role_privilege` VALUES ('29', '4');
INSERT INTO `role_privilege` VALUES ('30', '1');
INSERT INTO `role_privilege` VALUES ('30', '3');
INSERT INTO `role_privilege` VALUES ('30', '4');
INSERT INTO `role_privilege` VALUES ('31', '1');
INSERT INTO `role_privilege` VALUES ('31', '3');
INSERT INTO `role_privilege` VALUES ('31', '4');
INSERT INTO `role_privilege` VALUES ('32', '1');
INSERT INTO `role_privilege` VALUES ('32', '3');
INSERT INTO `role_privilege` VALUES ('32', '4');
INSERT INTO `role_privilege` VALUES ('33', '1');
INSERT INTO `role_privilege` VALUES ('33', '3');
INSERT INTO `role_privilege` VALUES ('33', '4');
INSERT INTO `role_privilege` VALUES ('34', '1');
INSERT INTO `role_privilege` VALUES ('34', '3');
INSERT INTO `role_privilege` VALUES ('34', '4');
INSERT INTO `role_privilege` VALUES ('35', '1');
INSERT INTO `role_privilege` VALUES ('35', '3');
INSERT INTO `role_privilege` VALUES ('35', '4');
INSERT INTO `role_privilege` VALUES ('36', '1');
INSERT INTO `role_privilege` VALUES ('36', '3');
INSERT INTO `role_privilege` VALUES ('36', '4');
INSERT INTO `role_privilege` VALUES ('37', '1');
INSERT INTO `role_privilege` VALUES ('37', '3');
INSERT INTO `role_privilege` VALUES ('37', '4');
INSERT INTO `role_privilege` VALUES ('38', '1');
INSERT INTO `role_privilege` VALUES ('39', '1');
INSERT INTO `role_privilege` VALUES ('40', '1');
INSERT INTO `role_privilege` VALUES ('41', '1');
INSERT INTO `role_privilege` VALUES ('42', '1');
INSERT INTO `role_privilege` VALUES ('43', '1');
INSERT INTO `role_privilege` VALUES ('43', '5');
INSERT INTO `role_privilege` VALUES ('44', '1');
INSERT INTO `role_privilege` VALUES ('44', '5');
INSERT INTO `role_privilege` VALUES ('45', '1');
INSERT INTO `role_privilege` VALUES ('45', '5');
INSERT INTO `role_privilege` VALUES ('46', '1');
INSERT INTO `role_privilege` VALUES ('46', '5');
INSERT INTO `role_privilege` VALUES ('47', '1');
INSERT INTO `role_privilege` VALUES ('47', '5');
INSERT INTO `role_privilege` VALUES ('48', '1');
INSERT INTO `role_privilege` VALUES ('48', '5');
INSERT INTO `role_privilege` VALUES ('49', '1');
INSERT INTO `role_privilege` VALUES ('49', '5');
INSERT INTO `role_privilege` VALUES ('50', '1');
INSERT INTO `role_privilege` VALUES ('50', '5');
INSERT INTO `role_privilege` VALUES ('51', '1');
INSERT INTO `role_privilege` VALUES ('51', '5');
INSERT INTO `role_privilege` VALUES ('52', '1');
INSERT INTO `role_privilege` VALUES ('52', '5');
INSERT INTO `role_privilege` VALUES ('53', '1');
INSERT INTO `role_privilege` VALUES ('53', '5');
INSERT INTO `role_privilege` VALUES ('54', '1');
INSERT INTO `role_privilege` VALUES ('54', '5');
INSERT INTO `role_privilege` VALUES ('55', '1');
INSERT INTO `role_privilege` VALUES ('55', '5');
INSERT INTO `role_privilege` VALUES ('56', '1');
INSERT INTO `role_privilege` VALUES ('56', '5');
INSERT INTO `role_privilege` VALUES ('57', '1');
INSERT INTO `role_privilege` VALUES ('57', '5');
INSERT INTO `role_privilege` VALUES ('58', '1');
INSERT INTO `role_privilege` VALUES ('58', '5');
INSERT INTO `role_privilege` VALUES ('59', '1');
INSERT INTO `role_privilege` VALUES ('59', '5');
INSERT INTO `role_privilege` VALUES ('60', '1');
INSERT INTO `role_privilege` VALUES ('60', '5');
INSERT INTO `role_privilege` VALUES ('61', '1');
INSERT INTO `role_privilege` VALUES ('61', '5');
INSERT INTO `role_privilege` VALUES ('62', '1');
INSERT INTO `role_privilege` VALUES ('62', '5');
INSERT INTO `role_privilege` VALUES ('63', '1');
INSERT INTO `role_privilege` VALUES ('63', '5');
INSERT INTO `role_privilege` VALUES ('64', '1');
INSERT INTO `role_privilege` VALUES ('64', '5');
INSERT INTO `role_privilege` VALUES ('65', '1');
INSERT INTO `role_privilege` VALUES ('66', '1');
INSERT INTO `role_privilege` VALUES ('67', '1');
INSERT INTO `role_privilege` VALUES ('68', '1');
INSERT INTO `role_privilege` VALUES ('69', '1');
INSERT INTO `role_privilege` VALUES ('70', '1');
INSERT INTO `role_privilege` VALUES ('71', '1');
INSERT INTO `role_privilege` VALUES ('72', '1');
INSERT INTO `role_privilege` VALUES ('73', '1');
INSERT INTO `role_privilege` VALUES ('74', '1');
INSERT INTO `role_privilege` VALUES ('75', '1');
INSERT INTO `role_privilege` VALUES ('76', '1');
INSERT INTO `role_privilege` VALUES ('77', '1');
INSERT INTO `role_privilege` VALUES ('78', '1');
INSERT INTO `role_privilege` VALUES ('79', '1');
INSERT INTO `role_privilege` VALUES ('80', '1');
INSERT INTO `role_privilege` VALUES ('81', '1');
INSERT INTO `role_privilege` VALUES ('82', '1');
INSERT INTO `role_privilege` VALUES ('83', '1');
INSERT INTO `role_privilege` VALUES ('84', '1');
INSERT INTO `role_privilege` VALUES ('85', '1');
INSERT INTO `role_privilege` VALUES ('86', '1');
INSERT INTO `role_privilege` VALUES ('87', '1');
INSERT INTO `role_privilege` VALUES ('88', '1');
INSERT INTO `role_privilege` VALUES ('89', '1');
INSERT INTO `role_privilege` VALUES ('90', '1');
INSERT INTO `role_privilege` VALUES ('91', '1');
INSERT INTO `role_privilege` VALUES ('92', '1');
INSERT INTO `role_privilege` VALUES ('93', '1');
INSERT INTO `role_privilege` VALUES ('94', '1');
INSERT INTO `role_privilege` VALUES ('95', '1');
INSERT INTO `role_privilege` VALUES ('96', '1');
INSERT INTO `role_privilege` VALUES ('97', '1');
INSERT INTO `role_privilege` VALUES ('98', '1');
INSERT INTO `role_privilege` VALUES ('99', '1');
INSERT INTO `role_privilege` VALUES ('100', '1');
INSERT INTO `role_privilege` VALUES ('101', '1');
INSERT INTO `role_privilege` VALUES ('102', '1');
INSERT INTO `role_privilege` VALUES ('103', '1');
INSERT INTO `role_privilege` VALUES ('104', '1');
INSERT INTO `role_privilege` VALUES ('105', '1');
INSERT INTO `role_privilege` VALUES ('106', '1');
INSERT INTO `role_privilege` VALUES ('106', '5');
INSERT INTO `role_privilege` VALUES ('107', '1');
INSERT INTO `role_privilege` VALUES ('107', '5');
INSERT INTO `role_privilege` VALUES ('108', '1');
INSERT INTO `role_privilege` VALUES ('108', '5');
INSERT INTO `role_privilege` VALUES ('109', '1');
INSERT INTO `role_privilege` VALUES ('109', '5');
INSERT INTO `role_privilege` VALUES ('110', '1');
INSERT INTO `role_privilege` VALUES ('110', '5');
INSERT INTO `role_privilege` VALUES ('111', '1');
INSERT INTO `role_privilege` VALUES ('111', '5');
INSERT INTO `role_privilege` VALUES ('112', '1');
INSERT INTO `role_privilege` VALUES ('112', '5');
INSERT INTO `role_privilege` VALUES ('113', '1');
INSERT INTO `role_privilege` VALUES ('113', '5');
INSERT INTO `role_privilege` VALUES ('114', '1');
INSERT INTO `role_privilege` VALUES ('114', '5');
INSERT INTO `role_privilege` VALUES ('115', '1');
INSERT INTO `role_privilege` VALUES ('115', '5');
INSERT INTO `role_privilege` VALUES ('116', '1');
INSERT INTO `role_privilege` VALUES ('116', '5');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` bigint(20) NOT NULL,
  `email` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(8) COLLATE utf8_bin DEFAULT NULL,
  `phone` varchar(11) COLLATE utf8_bin DEFAULT NULL,
  `sex` varchar(2) COLLATE utf8_bin DEFAULT NULL,
  `user_name` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `department_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `FK36EBCBD24270E4` (`department_id`),
  CONSTRAINT `FK36EBCBD24270E4` FOREIGN KEY (`department_id`) REFERENCES `department` (`did`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '110@gyl.com', '123', '110', '男', 'admin', '6');
INSERT INTO `user` VALUES ('2', '120@gyl.com', '123', '120', '女', 'root', '5');
INSERT INTO `user` VALUES ('3', '130@gyl.com', null, '130', '男', '研发部主管', '8');
INSERT INTO `user` VALUES ('4', '140@gyl.com', null, '140', '男', '销售部主管', '3');
INSERT INTO `user` VALUES ('5', '150@gyl.com', null, '150', '男', '采购部主管', '4');
INSERT INTO `user` VALUES ('6', '160@gyl.com', null, '160', '男', '财务部主管', '5');
INSERT INTO `user` VALUES ('7', '001@gyl.com', '123', '001', '男', 'ceo', '6');

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `uid` bigint(20) NOT NULL,
  `rid` bigint(20) NOT NULL,
  PRIMARY KEY (`rid`,`uid`),
  KEY `FK143BF46A7BEC6005` (`uid`),
  KEY `FK143BF46AF8E66DC9` (`rid`),
  CONSTRAINT `FK143BF46A7BEC6005` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`),
  CONSTRAINT `FK143BF46AF8E66DC9` FOREIGN KEY (`rid`) REFERENCES `role` (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('1', '1');
INSERT INTO `user_role` VALUES ('2', '3');
INSERT INTO `user_role` VALUES ('7', '1');

-- ----------------------------
-- Table structure for xsckdzhib
-- ----------------------------
DROP TABLE IF EXISTS `xsckdzhib`;
CREATE TABLE `xsckdzhib` (
  `xsckdzhibid` bigint(20) NOT NULL,
  `spbm` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `spmc` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `ckrq` datetime DEFAULT NULL,
  `dj` float DEFAULT NULL,
  `dw` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `hh` bigint(20) DEFAULT NULL,
  `isckgb` bit(1) DEFAULT NULL,
  `je` float DEFAULT NULL,
  `ljcksl` bigint(20) DEFAULT NULL,
  `scrq` datetime DEFAULT NULL,
  `sfsl` bigint(20) DEFAULT NULL,
  `sxrq` datetime DEFAULT NULL,
  `xh` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `yfsl` bigint(20) DEFAULT NULL,
  `ytdjh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `ythh` bigint(20) DEFAULT NULL,
  `lydjh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `lyhh` bigint(20) DEFAULT NULL,
  `zp` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `xsckdzhubid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`xsckdzhibid`),
  KEY `FKD306FC484F8C596A` (`xsckdzhubid`),
  CONSTRAINT `FKD306FC484F8C596A` FOREIGN KEY (`xsckdzhubid`) REFERENCES `xsckdzhub` (`xsckdzhubid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of xsckdzhib
-- ----------------------------
INSERT INTO `xsckdzhib` VALUES ('1', null, null, null, null, null, null, '\0', null, '10', null, '10', null, null, null, '201702090001', '1', null, null, null, null);
INSERT INTO `xsckdzhib` VALUES ('2', null, null, null, null, null, null, '\0', null, '20', null, '10', null, null, null, '201702090001', '1', null, null, null, null);
INSERT INTO `xsckdzhib` VALUES ('3', null, null, null, null, null, null, '', null, '30', null, '10', null, null, null, '201702090001', '1', null, null, null, null);

-- ----------------------------
-- Table structure for xsckdzhub
-- ----------------------------
DROP TABLE IF EXISTS `xsckdzhub`;
CREATE TABLE `xsckdzhub` (
  `xsckdzhubid` bigint(20) NOT NULL,
  `bm` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `ck` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `ddh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `djrq` datetime DEFAULT NULL,
  `isth` bit(1) DEFAULT NULL,
  `kgy` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `kh` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `qzr` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `shr` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `shrq` datetime DEFAULT NULL,
  `status` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `xgrq` datetime DEFAULT NULL,
  `xgr` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `zdr` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `zdrq` datetime DEFAULT NULL,
  PRIMARY KEY (`xsckdzhubid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of xsckdzhub
-- ----------------------------
INSERT INTO `xsckdzhub` VALUES ('1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `xsckdzhub` VALUES ('2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `xsckdzhub` VALUES ('3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for xsddzhib
-- ----------------------------
DROP TABLE IF EXISTS `xsddzhib`;
CREATE TABLE `xsddzhib` (
  `xsddzhibid` bigint(20) NOT NULL,
  `spbm` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `spmc` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `dpkl` float DEFAULT NULL,
  `lyhh` bigint(20) DEFAULT NULL,
  `fhck` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `hh` bigint(20) DEFAULT NULL,
  `hsdj` float DEFAULT NULL,
  `hsje` float DEFAULT NULL,
  `hstatus` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `isckgb` bit(1) DEFAULT NULL,
  `isfhgb` bit(1) DEFAULT NULL,
  `iskpgb` bit(1) DEFAULT NULL,
  `isskjs` bit(1) DEFAULT NULL,
  `jhfhrq` datetime DEFAULT NULL,
  `jldw` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ljcksl` bigint(20) DEFAULT NULL,
  `ljfhsl` bigint(20) DEFAULT NULL,
  `ljkpsl` bigint(20) DEFAULT NULL,
  `ljyssl` bigint(20) DEFAULT NULL,
  `se` float DEFAULT NULL,
  `shdw` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `shulv` float DEFAULT NULL,
  `sl` bigint(20) DEFAULT NULL,
  `wsdj` float DEFAULT NULL,
  `wsje` float DEFAULT NULL,
  `xh` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `yfwcksl` bigint(20) DEFAULT NULL,
  `yqshrq` datetime DEFAULT NULL,
  `zke` float DEFAULT NULL,
  `zp` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `xsddzhubid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`xsddzhibid`),
  KEY `FK2932E022AA781C10` (`xsddzhubid`),
  CONSTRAINT `FK2932E022AA781C10` FOREIGN KEY (`xsddzhubid`) REFERENCES `xsddzhub` (`xsddzhubid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of xsddzhib
-- ----------------------------
INSERT INTO `xsddzhib` VALUES ('2', '10088', '西门子BCD-610W冰箱', '0.4', null, '', '1', '2343', '70290', '1', '', '', '', '', null, '台', '0', '30', '30', '30', '6390', '', '0.1', '30', '2130', '63900', 'BCD-610W', '110', null, '28116', '1', '1');

-- ----------------------------
-- Table structure for xsddzhub
-- ----------------------------
DROP TABLE IF EXISTS `xsddzhub`;
CREATE TABLE `xsddzhub` (
  `xsddzhubid` bigint(20) NOT NULL,
  `ckjsbz` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `ddh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `dhrq` date DEFAULT NULL,
  `fhjsbz` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `khmc` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `kpdw` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `kpjsbz` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `shdq` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `shdz` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `spr` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `sprq` datetime DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `sxbm` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `lydjh` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `sxkje` float DEFAULT NULL,
  `sxrq` datetime DEFAULT NULL,
  `thbz` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `xgr` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `xgrq` datetime DEFAULT NULL,
  `zdjshj` float DEFAULT NULL,
  `ywy` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `zdkl` float DEFAULT NULL,
  `zdr` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `zdrq` datetime DEFAULT NULL,
  PRIMARY KEY (`xsddzhubid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of xsddzhub
-- ----------------------------
INSERT INTO `xsddzhub` VALUES ('1', '2', '201702090001', '2017-02-07', '2', '王者荣耀', '', '2', '', '', '', null, '2', null, null, null, null, '2', '', null, '0', '', '0.1', '', null);

-- ----------------------------
-- Table structure for xsfhdzhib
-- ----------------------------
DROP TABLE IF EXISTS `xsfhdzhib`;
CREATE TABLE `xsfhdzhib` (
  `xsfhdzhibid` bigint(20) NOT NULL,
  `spbm` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `spmc` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `fhrq` datetime DEFAULT NULL,
  `dj` float DEFAULT NULL,
  `dw` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `hh` bigint(20) DEFAULT NULL,
  `isfhgb` bit(1) DEFAULT NULL,
  `je` float DEFAULT NULL,
  `ljfhsl` bigint(20) DEFAULT NULL,
  `scrq` datetime DEFAULT NULL,
  `sfsl` bigint(20) DEFAULT NULL,
  `sxrq` datetime DEFAULT NULL,
  `xh` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `yfsl` bigint(20) DEFAULT NULL,
  `lydjh` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `lyhh` bigint(20) DEFAULT NULL,
  `ytdjh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `ythh` bigint(20) DEFAULT NULL,
  `zp` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `xsfhdzhubid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`xsfhdzhibid`),
  KEY `FK6C9B242E6E4A47B6` (`xsfhdzhubid`),
  CONSTRAINT `FK6C9B242E6E4A47B6` FOREIGN KEY (`xsfhdzhubid`) REFERENCES `xsfhdzhub` (`xsfhdzhubid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of xsfhdzhib
-- ----------------------------
INSERT INTO `xsfhdzhib` VALUES ('1', null, null, null, null, null, null, '\0', null, '10', null, '10', null, null, null, null, null, '201702090001', '1', null, null);
INSERT INTO `xsfhdzhib` VALUES ('2', null, null, null, null, null, null, '\0', null, '20', null, '10', null, null, null, null, null, '201702090001', '1', null, null);
INSERT INTO `xsfhdzhib` VALUES ('3', null, null, null, null, null, null, '', null, '30', null, '10', null, null, null, null, null, '201702090001', '1', null, null);

-- ----------------------------
-- Table structure for xsfhdzhub
-- ----------------------------
DROP TABLE IF EXISTS `xsfhdzhub`;
CREATE TABLE `xsfhdzhub` (
  `xsfhdzhubid` bigint(20) NOT NULL,
  `bm` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `ck` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `ddh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `djrq` datetime DEFAULT NULL,
  `isth` bit(1) DEFAULT NULL,
  `kgy` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `kh` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `qzr` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `shr` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `shrq` datetime DEFAULT NULL,
  `status` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `xgrq` datetime DEFAULT NULL,
  `zdr` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `zdrq` datetime DEFAULT NULL,
  PRIMARY KEY (`xsfhdzhubid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of xsfhdzhub
-- ----------------------------
INSERT INTO `xsfhdzhub` VALUES ('1', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `xsfhdzhub` VALUES ('2', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `xsfhdzhub` VALUES ('3', null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for xskpzhib
-- ----------------------------
DROP TABLE IF EXISTS `xskpzhib`;
CREATE TABLE `xskpzhib` (
  `xskpzhibid` bigint(20) NOT NULL,
  `ljkpsl` bigint(20) DEFAULT NULL,
  `ck` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `dpkl` float DEFAULT NULL,
  `dw` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `hh` bigint(20) DEFAULT NULL,
  `hsdj` float DEFAULT NULL,
  `hsje` float DEFAULT NULL,
  `iskpjs` bit(1) DEFAULT NULL,
  `lydjh` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `lyhh` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `shdw` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `shulv` float DEFAULT NULL,
  `sl` bigint(20) DEFAULT NULL,
  `spbm` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `spmc` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `wsdj` float DEFAULT NULL,
  `wsje` float DEFAULT NULL,
  `xh` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `ytdjh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `ythh` bigint(20) DEFAULT NULL,
  `zke` float DEFAULT NULL,
  `zp` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `xskpzhubid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`xskpzhibid`),
  KEY `FK35CDE687906239A` (`xskpzhubid`),
  CONSTRAINT `FK35CDE687906239A` FOREIGN KEY (`xskpzhubid`) REFERENCES `xskpzhub` (`xskpzhubid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of xskpzhib
-- ----------------------------
INSERT INTO `xskpzhib` VALUES ('1', '10', null, null, null, null, null, '2000', '\0', null, null, null, null, '10', null, null, null, null, null, '201702090001', '1', null, null, null);
INSERT INTO `xskpzhib` VALUES ('2', '20', null, null, null, null, null, '2000', '\0', null, null, null, null, '10', null, null, null, null, null, '201702090001', '1', null, null, null);
INSERT INTO `xskpzhib` VALUES ('3', '30', null, null, null, null, null, '3000', '', null, null, null, null, '10', null, null, null, null, null, '201702090001', '1', null, null, null);

-- ----------------------------
-- Table structure for xskpzhub
-- ----------------------------
DROP TABLE IF EXISTS `xskpzhub`;
CREATE TABLE `xskpzhub` (
  `xskpzhubid` bigint(20) NOT NULL,
  `bm` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `fph` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `fplx` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `fpzje` float DEFAULT NULL,
  `gs` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `kh` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `khdymc` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `kjnd` datetime DEFAULT NULL,
  `kprq` datetime DEFAULT NULL,
  `shdw` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `shdz` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `spr` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `spsj` datetime DEFAULT NULL,
  `status` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `xgr` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `xgsj` datetime DEFAULT NULL,
  `ywy` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `zdr` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `zdsj` datetime DEFAULT NULL,
  `zdzk` float DEFAULT NULL,
  PRIMARY KEY (`xskpzhubid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of xskpzhub
-- ----------------------------
INSERT INTO `xskpzhub` VALUES ('1', null, null, null, '2000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `xskpzhub` VALUES ('2', null, null, null, '2000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `xskpzhub` VALUES ('3', null, null, null, '3000', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for xsyddzhib
-- ----------------------------
DROP TABLE IF EXISTS `xsyddzhib`;
CREATE TABLE `xsyddzhib` (
  `xsyddzhibid` bigint(20) NOT NULL,
  `spbm` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `spmc` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `dpkl` float DEFAULT NULL,
  `hh` bigint(20) DEFAULT NULL,
  `hsdj` float DEFAULT NULL,
  `hsje` float DEFAULT NULL,
  `jldw` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `se` float DEFAULT NULL,
  `shdw` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `shulv` float DEFAULT NULL,
  `sl` bigint(20) DEFAULT NULL,
  `wsdj` float DEFAULT NULL,
  `wsje` float DEFAULT NULL,
  `xh` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `zke` float DEFAULT NULL,
  `xsyddzhubid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`xsyddzhibid`),
  KEY `FK52DE2785B61CD4A4` (`xsyddzhubid`),
  CONSTRAINT `FK52DE2785B61CD4A4` FOREIGN KEY (`xsyddzhubid`) REFERENCES `xsyddzhub` (`xsyddzhubid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of xsyddzhib
-- ----------------------------
INSERT INTO `xsyddzhib` VALUES ('1', null, '1111', null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `xsyddzhib` VALUES ('2', null, '2222', null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `xsyddzhib` VALUES ('3', null, '3333', null, null, null, null, null, null, null, null, null, null, null, null, null, '2');
INSERT INTO `xsyddzhib` VALUES ('4', null, '4444', null, null, null, null, null, null, null, null, null, null, null, null, null, '3');
INSERT INTO `xsyddzhib` VALUES ('5', null, '5555', null, null, null, null, null, null, null, null, null, null, null, null, null, '3');
INSERT INTO `xsyddzhib` VALUES ('6', null, '6666', null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `xsyddzhib` VALUES ('7', null, '7777', null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `xsyddzhib` VALUES ('8', null, '8888', null, null, null, null, null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `xsyddzhib` VALUES ('9', '9230078', '苹果4S', '0.3', '2', '3300', '660000', null, '60000', '', '0.1', '200', '3500', '600000', 'ipone4s', '198000', '6');
INSERT INTO `xsyddzhib` VALUES ('10', '10086', 'iPad mini', '0.2', '1', '2400', '1200000', null, '200000', '', '0.2', '500', '2000', '1000000', 'MD531CH/A', '240000', '6');
INSERT INTO `xsyddzhib` VALUES ('11', '200089', '公牛GN-110插座', '0.4', '2', '110', '55000', null, '5000', '', '0.1', '500', '100', '50000', 'GN-110', '22000', '7');
INSERT INTO `xsyddzhib` VALUES ('12', '10090', '松下洗衣机', '0.3', '1', '550', '165000', null, '15000', '', '0.1', '300', '500', '150000', 'XQB65-Q76201', '49500', '7');
INSERT INTO `xsyddzhib` VALUES ('13', '10089', '海尔KFR-35GW/05KDP22A', '0.2', '1', '360', '180000', '台', '30000', '', '0.2', '500', '300', '150000', 'KFR-35GW/05KDP22A', '36000', '8');
INSERT INTO `xsyddzhib` VALUES ('14', '4370089', '美的FS40-13ER电风扇', '0.2', '2', '110', '11000', '个', '1000', '', '0.1', '100', '100', '10000', 'FS40-13ER', '2200', '8');

-- ----------------------------
-- Table structure for xsyddzhub
-- ----------------------------
DROP TABLE IF EXISTS `xsyddzhub`;
CREATE TABLE `xsyddzhub` (
  `xsyddzhubid` bigint(20) NOT NULL,
  `ddh` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `dhrq` date DEFAULT NULL,
  `khmc` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `spr` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `sprq` datetime DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `sxbm` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `xgr` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `xgrq` datetime DEFAULT NULL,
  `ywy` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `zdr` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `zdrq` datetime DEFAULT NULL,
  PRIMARY KEY (`xsyddzhubid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of xsyddzhub
-- ----------------------------
INSERT INTO `xsyddzhub` VALUES ('1', '', null, 'asdf', null, null, null, null, null, null, null, null, null);
INSERT INTO `xsyddzhub` VALUES ('2', null, null, 'asdf123', null, null, null, null, null, null, null, null, null);
INSERT INTO `xsyddzhub` VALUES ('3', null, null, 'asdf456', null, null, null, null, null, null, null, null, null);
INSERT INTO `xsyddzhub` VALUES ('4', null, null, 'abc', null, null, null, null, null, null, null, null, null);
INSERT INTO `xsyddzhub` VALUES ('5', null, null, 'aaaaa', null, null, null, null, null, null, null, null, null);
INSERT INTO `xsyddzhub` VALUES ('6', '201702070001', '2017-02-07', '王者', '', null, null, null, '', null, '', '', null);
INSERT INTO `xsyddzhub` VALUES ('7', '201702070002', '2017-02-07', 'asd', '', null, null, null, '', null, '', '', null);
INSERT INTO `xsyddzhub` VALUES ('8', '201702090001', '2017-02-07', 'wang', '', null, null, null, '', null, '', '', null);

-- ----------------------------
-- Table structure for xsysdzhib
-- ----------------------------
DROP TABLE IF EXISTS `xsysdzhib`;
CREATE TABLE `xsysdzhib` (
  `xsysdzhibid` bigint(20) NOT NULL,
  `spbm` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `spmc` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `dj` float DEFAULT NULL,
  `dw` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `hh` bigint(20) DEFAULT NULL,
  `hsje` float DEFAULT NULL,
  `lydjh` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `lyhh` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `se` float DEFAULT NULL,
  `wsje` float DEFAULT NULL,
  `sl` bigint(20) DEFAULT NULL,
  `ytdjh` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ythh` bigint(20) DEFAULT NULL,
  `ljyssl` bigint(20) DEFAULT NULL,
  `isysgb` bit(1) DEFAULT NULL,
  `xsysdzhubid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`xsysdzhibid`),
  KEY `FK6C76D8D6E5E72706` (`xsysdzhubid`),
  CONSTRAINT `FK6C76D8D6E5E72706` FOREIGN KEY (`xsysdzhubid`) REFERENCES `xsysdzhub` (`xsysdzhubid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of xsysdzhib
-- ----------------------------
INSERT INTO `xsysdzhib` VALUES ('1', null, null, null, null, null, null, null, null, null, null, '10', '201702090001', '1', '10', '\0', '1');
INSERT INTO `xsysdzhib` VALUES ('2', null, null, null, null, null, null, null, null, null, null, '10', '201702090001', '1', '20', '\0', '2');
INSERT INTO `xsysdzhib` VALUES ('3', null, null, null, null, null, null, null, null, null, null, '10', '201702090001', '1', '30', '', '3');

-- ----------------------------
-- Table structure for xsysdzhub
-- ----------------------------
DROP TABLE IF EXISTS `xsysdzhub`;
CREATE TABLE `xsysdzhub` (
  `xsysdzhubid` bigint(20) NOT NULL,
  `bm` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `ddh` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `gs` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `ks` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `qsrq` datetime DEFAULT NULL,
  `qzr` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `qzrq` datetime DEFAULT NULL,
  `rq` datetime DEFAULT NULL,
  `shr` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `shrq` datetime DEFAULT NULL,
  `sxbz` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `xgr` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `xgrq` datetime DEFAULT NULL,
  `ywy` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `zdr` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `zdrq` datetime DEFAULT NULL,
  PRIMARY KEY (`xsysdzhubid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of xsysdzhub
-- ----------------------------
INSERT INTO `xsysdzhub` VALUES ('1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `xsysdzhub` VALUES ('2', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `xsysdzhub` VALUES ('3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
