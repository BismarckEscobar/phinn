/*
Navicat MySQL Data Transfer

Source Server         : localhost-new
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : phinn

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-06-19 13:25:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cargas_pulper
-- ----------------------------
DROP TABLE IF EXISTS `cargas_pulper`;
CREATE TABLE `cargas_pulper` (
  `IdCargaPulper` int(11) NOT NULL AUTO_INCREMENT,
  `IdInsumo` int(11) NOT NULL,
  `Cantidad` decimal(11,0) DEFAULT NULL,
  `IdReporteDiario` int(11) NOT NULL,
  PRIMARY KEY (`IdCargaPulper`)
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cargas_pulper
-- ----------------------------
INSERT INTO `cargas_pulper` VALUES ('5', '1', '500', '36');
INSERT INTO `cargas_pulper` VALUES ('6', '2', '5000', '36');
INSERT INTO `cargas_pulper` VALUES ('7', '2', '5000', '36');
INSERT INTO `cargas_pulper` VALUES ('8', '1', '5000', '36');
INSERT INTO `cargas_pulper` VALUES ('9', '1', '400', '36');
INSERT INTO `cargas_pulper` VALUES ('10', '1', '850', '36');
INSERT INTO `cargas_pulper` VALUES ('11', '1', '750', '36');
INSERT INTO `cargas_pulper` VALUES ('12', '1', '836', '36');
INSERT INTO `cargas_pulper` VALUES ('13', '3', '450', '36');
INSERT INTO `cargas_pulper` VALUES ('14', '3', '785', '36');
INSERT INTO `cargas_pulper` VALUES ('15', '3', '789', '36');
INSERT INTO `cargas_pulper` VALUES ('16', '3', '896', '36');
INSERT INTO `cargas_pulper` VALUES ('17', '1', '452', '36');
INSERT INTO `cargas_pulper` VALUES ('18', '3', '444', '36');
INSERT INTO `cargas_pulper` VALUES ('19', '3', '777', '36');
INSERT INTO `cargas_pulper` VALUES ('20', '3', '7779', '36');
INSERT INTO `cargas_pulper` VALUES ('21', '3', '365', '36');
INSERT INTO `cargas_pulper` VALUES ('22', '3', '7852', '36');
INSERT INTO `cargas_pulper` VALUES ('23', '2', '874', '36');
INSERT INTO `cargas_pulper` VALUES ('24', '2', '452', '36');
INSERT INTO `cargas_pulper` VALUES ('25', '2', '584', '36');
INSERT INTO `cargas_pulper` VALUES ('26', '2', '584', '36');
INSERT INTO `cargas_pulper` VALUES ('27', '2', '584', '36');
INSERT INTO `cargas_pulper` VALUES ('28', '2', '584', '36');
INSERT INTO `cargas_pulper` VALUES ('29', '2', '584', '36');
INSERT INTO `cargas_pulper` VALUES ('30', '2', '584', '36');
INSERT INTO `cargas_pulper` VALUES ('31', '2', '255', '36');
INSERT INTO `cargas_pulper` VALUES ('32', '2', '255', '36');
INSERT INTO `cargas_pulper` VALUES ('33', '2', '255', '36');
INSERT INTO `cargas_pulper` VALUES ('34', '2', '212', '33');
INSERT INTO `cargas_pulper` VALUES ('35', '2', '222', '33');
INSERT INTO `cargas_pulper` VALUES ('37', '1', '222', '33');
INSERT INTO `cargas_pulper` VALUES ('38', '1', '222', '33');
INSERT INTO `cargas_pulper` VALUES ('39', '2', '525', '34');
INSERT INTO `cargas_pulper` VALUES ('40', '3', '45088', '34');
INSERT INTO `cargas_pulper` VALUES ('41', '3', '852', '34');
INSERT INTO `cargas_pulper` VALUES ('42', '1', '719', '35');
INSERT INTO `cargas_pulper` VALUES ('43', '1', '758', '35');
INSERT INTO `cargas_pulper` VALUES ('44', '1', '734', '35');
INSERT INTO `cargas_pulper` VALUES ('45', '1', '716', '35');
INSERT INTO `cargas_pulper` VALUES ('46', '1', '720', '35');
INSERT INTO `cargas_pulper` VALUES ('47', '1', '767', '35');
INSERT INTO `cargas_pulper` VALUES ('48', '1', '625', '35');
INSERT INTO `cargas_pulper` VALUES ('49', '1', '610', '35');
INSERT INTO `cargas_pulper` VALUES ('50', '1', '573', '35');
INSERT INTO `cargas_pulper` VALUES ('51', '2', '160', '35');
INSERT INTO `cargas_pulper` VALUES ('52', '2', '160', '35');
INSERT INTO `cargas_pulper` VALUES ('53', '2', '160', '35');
INSERT INTO `cargas_pulper` VALUES ('54', '2', '160', '35');
INSERT INTO `cargas_pulper` VALUES ('55', '2', '260', '35');
INSERT INTO `cargas_pulper` VALUES ('56', '2', '360', '35');
INSERT INTO `cargas_pulper` VALUES ('57', '2', '260', '35');
INSERT INTO `cargas_pulper` VALUES ('58', '2', '160', '35');
INSERT INTO `cargas_pulper` VALUES ('59', '3', '160', '35');
INSERT INTO `cargas_pulper` VALUES ('60', '3', '160', '35');
INSERT INTO `cargas_pulper` VALUES ('61', '3', '160', '35');
INSERT INTO `cargas_pulper` VALUES ('62', '3', '160', '35');
INSERT INTO `cargas_pulper` VALUES ('65', '2', '7844', '37');
INSERT INTO `cargas_pulper` VALUES ('66', '2', '7858', '37');
INSERT INTO `cargas_pulper` VALUES ('69', '1', '7848', '38');
INSERT INTO `cargas_pulper` VALUES ('70', '1', '7848', '38');
INSERT INTO `cargas_pulper` VALUES ('71', '1', '1', '38');
INSERT INTO `cargas_pulper` VALUES ('72', '1', '522', '38');
INSERT INTO `cargas_pulper` VALUES ('73', '2', '874', '38');
INSERT INTO `cargas_pulper` VALUES ('74', '2', '874', '38');
INSERT INTO `cargas_pulper` VALUES ('75', '2', '85', '38');
INSERT INTO `cargas_pulper` VALUES ('76', '2', '874', '38');
INSERT INTO `cargas_pulper` VALUES ('77', '2', '874', '38');
INSERT INTO `cargas_pulper` VALUES ('78', '2', '874', '38');
INSERT INTO `cargas_pulper` VALUES ('79', '2', '874', '38');
INSERT INTO `cargas_pulper` VALUES ('80', '2', '874', '38');
INSERT INTO `cargas_pulper` VALUES ('81', '3', '5218', '38');
INSERT INTO `cargas_pulper` VALUES ('82', '3', '521', '38');
INSERT INTO `cargas_pulper` VALUES ('83', '3', '521', '38');
INSERT INTO `cargas_pulper` VALUES ('84', '3', '521', '38');
INSERT INTO `cargas_pulper` VALUES ('85', '3', '52188', '38');
INSERT INTO `cargas_pulper` VALUES ('86', '3', '521', '38');
INSERT INTO `cargas_pulper` VALUES ('87', '3', '521', '38');
INSERT INTO `cargas_pulper` VALUES ('88', '3', '5821', '38');
INSERT INTO `cargas_pulper` VALUES ('89', '3', '521', '38');
INSERT INTO `cargas_pulper` VALUES ('90', '3', '899', '38');
INSERT INTO `cargas_pulper` VALUES ('91', '3', '7777', '34');
INSERT INTO `cargas_pulper` VALUES ('92', '1', '855', '34');
INSERT INTO `cargas_pulper` VALUES ('93', '1', '8888', '34');
INSERT INTO `cargas_pulper` VALUES ('94', '1', '500', '37');
INSERT INTO `cargas_pulper` VALUES ('95', '1', '500', '37');
INSERT INTO `cargas_pulper` VALUES ('96', '1', '500', '37');
INSERT INTO `cargas_pulper` VALUES ('97', '1', '500', '37');
INSERT INTO `cargas_pulper` VALUES ('98', '1', '8850', '37');
INSERT INTO `cargas_pulper` VALUES ('99', '1', '850', '37');
INSERT INTO `cargas_pulper` VALUES ('100', '1', '850', '37');
INSERT INTO `cargas_pulper` VALUES ('101', '1', '850', '37');
INSERT INTO `cargas_pulper` VALUES ('102', '1', '850', '37');
INSERT INTO `cargas_pulper` VALUES ('103', '1', '850', '37');
INSERT INTO `cargas_pulper` VALUES ('104', '1', '850', '37');
INSERT INTO `cargas_pulper` VALUES ('105', '1', '0', '37');
INSERT INTO `cargas_pulper` VALUES ('106', '1', '785', '37');
INSERT INTO `cargas_pulper` VALUES ('107', '1', '785', '37');
INSERT INTO `cargas_pulper` VALUES ('108', '1', '785', '37');
INSERT INTO `cargas_pulper` VALUES ('109', '1', '785', '37');
INSERT INTO `cargas_pulper` VALUES ('110', '1', '500', '39');
INSERT INTO `cargas_pulper` VALUES ('111', '1', '620', '39');
INSERT INTO `cargas_pulper` VALUES ('112', '1', '7500', '39');
INSERT INTO `cargas_pulper` VALUES ('113', '2', '526', '39');
INSERT INTO `cargas_pulper` VALUES ('114', '2', '526', '39');
INSERT INTO `cargas_pulper` VALUES ('115', '2', '526', '39');
INSERT INTO `cargas_pulper` VALUES ('116', '3', '526', '39');
INSERT INTO `cargas_pulper` VALUES ('117', '3', '5267', '39');
INSERT INTO `cargas_pulper` VALUES ('118', '3', '855', '39');
INSERT INTO `cargas_pulper` VALUES ('119', '2', '8', '39');
INSERT INTO `cargas_pulper` VALUES ('120', '1', '999', '39');
INSERT INTO `cargas_pulper` VALUES ('121', '1', '150', '39');
INSERT INTO `cargas_pulper` VALUES ('122', '3', '8887', '39');
INSERT INTO `cargas_pulper` VALUES ('123', '3', '888', '39');
INSERT INTO `cargas_pulper` VALUES ('124', '3', '888', '39');
INSERT INTO `cargas_pulper` VALUES ('125', '1', '852', '39');
INSERT INTO `cargas_pulper` VALUES ('126', '1', '852', '39');
INSERT INTO `cargas_pulper` VALUES ('127', '1', '852', '39');
INSERT INTO `cargas_pulper` VALUES ('128', '1', '852', '39');
INSERT INTO `cargas_pulper` VALUES ('129', '2', '85', '39');
INSERT INTO `cargas_pulper` VALUES ('130', '2', '855', '39');
INSERT INTO `cargas_pulper` VALUES ('131', '2', '855', '39');
INSERT INTO `cargas_pulper` VALUES ('132', '2', '8', '39');
INSERT INTO `cargas_pulper` VALUES ('133', '2', '588', '39');
INSERT INTO `cargas_pulper` VALUES ('134', '2', '5885', '39');
INSERT INTO `cargas_pulper` VALUES ('135', '2', '350', '39');
INSERT INTO `cargas_pulper` VALUES ('136', '3', '255', '39');
INSERT INTO `cargas_pulper` VALUES ('139', '3', '822', '37');
INSERT INTO `cargas_pulper` VALUES ('140', '3', '522', '37');
INSERT INTO `cargas_pulper` VALUES ('143', '2', '255', '40');
INSERT INTO `cargas_pulper` VALUES ('144', '1', '200', '40');
INSERT INTO `cargas_pulper` VALUES ('145', '1', '255', '40');
INSERT INTO `cargas_pulper` VALUES ('146', '1', '200', '40');
INSERT INTO `cargas_pulper` VALUES ('147', '1', '200', '40');
INSERT INTO `cargas_pulper` VALUES ('148', '1', '500', '40');
INSERT INTO `cargas_pulper` VALUES ('149', '3', '200', '40');
INSERT INTO `cargas_pulper` VALUES ('150', '3', '52', '40');
INSERT INTO `cargas_pulper` VALUES ('151', '3', '200', '40');
INSERT INTO `cargas_pulper` VALUES ('152', '3', '255', '37');
INSERT INTO `cargas_pulper` VALUES ('153', '3', '633', '37');
INSERT INTO `cargas_pulper` VALUES ('154', '1', '256', '40');
INSERT INTO `cargas_pulper` VALUES ('155', '1', '895', '40');
INSERT INTO `cargas_pulper` VALUES ('156', '1', '785', '40');
INSERT INTO `cargas_pulper` VALUES ('157', '1', '785', '40');
INSERT INTO `cargas_pulper` VALUES ('158', '1', '785', '40');
INSERT INTO `cargas_pulper` VALUES ('159', '2', '555', '40');
INSERT INTO `cargas_pulper` VALUES ('160', '2', '554', '40');

-- ----------------------------
-- Table structure for categoria
-- ----------------------------
DROP TABLE IF EXISTS `categoria`;
CREATE TABLE `categoria` (
  `IdCategoria` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(100) NOT NULL,
  PRIMARY KEY (`IdCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of categoria
-- ----------------------------
INSERT INTO `categoria` VALUES ('1', 'CATEGORIA 1');
INSERT INTO `categoria` VALUES ('2', 'CATEGORIA 2');

-- ----------------------------
-- Table structure for horas_molienda
-- ----------------------------
DROP TABLE IF EXISTS `horas_molienda`;
CREATE TABLE `horas_molienda` (
  `IdHora` int(11) NOT NULL AUTO_INCREMENT,
  `carga` varchar(100) NOT NULL,
  `horaInicio` time NOT NULL,
  `horaFin` time NOT NULL,
  `IdReporteDiario` int(11) NOT NULL,
  PRIMARY KEY (`IdHora`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of horas_molienda
-- ----------------------------
INSERT INTO `horas_molienda` VALUES ('1', 'BATIDO', '06:00:00', '06:30:00', '37');
INSERT INTO `horas_molienda` VALUES ('2', 'BATIDO', '06:00:00', '06:30:00', '37');
INSERT INTO `horas_molienda` VALUES ('3', 'BATIDO', '06:00:00', '06:30:00', '37');
INSERT INTO `horas_molienda` VALUES ('4', 'BATIDO', '07:00:00', '07:30:00', '37');
INSERT INTO `horas_molienda` VALUES ('5', 'BATIDO', '08:10:00', '09:10:00', '37');
INSERT INTO `horas_molienda` VALUES ('6', 'BATIDO', '09:00:00', '09:35:00', '37');
INSERT INTO `horas_molienda` VALUES ('7', 'BATIDO', '09:55:00', '10:00:00', '37');
INSERT INTO `horas_molienda` VALUES ('8', 'BATIDO', '11:50:00', '12:20:00', '40');
INSERT INTO `horas_molienda` VALUES ('9', 'BATIDO', '13:58:00', '15:59:00', '40');
INSERT INTO `horas_molienda` VALUES ('10', 'BATIDO', '01:00:00', '01:00:00', '40');
INSERT INTO `horas_molienda` VALUES ('11', 'BATIDO', '17:10:00', '18:15:00', '40');
INSERT INTO `horas_molienda` VALUES ('12', 'BATIDO', '18:05:00', '19:05:00', '40');
INSERT INTO `horas_molienda` VALUES ('13', 'BATIDO', '18:00:00', '19:10:00', '40');
INSERT INTO `horas_molienda` VALUES ('14', 'BATIDO', '07:30:00', '08:00:00', '35');
INSERT INTO `horas_molienda` VALUES ('15', 'BATIDO', '08:30:00', '09:00:00', '35');
INSERT INTO `horas_molienda` VALUES ('16', 'BATIDO', '09:00:00', '09:30:00', '35');
INSERT INTO `horas_molienda` VALUES ('17', 'BATIDO', '10:00:00', '10:30:00', '35');
INSERT INTO `horas_molienda` VALUES ('18', 'BATIDO', '00:00:00', '12:30:00', '35');
INSERT INTO `horas_molienda` VALUES ('19', 'BATIDO', '13:00:00', '13:30:00', '35');
INSERT INTO `horas_molienda` VALUES ('20', 'BATIDO', '14:30:00', '15:00:00', '35');
INSERT INTO `horas_molienda` VALUES ('21', 'BATIDO', '16:00:00', '16:30:00', '35');
INSERT INTO `horas_molienda` VALUES ('22', 'BATIDO', '17:00:00', '17:30:00', '35');

-- ----------------------------
-- Table structure for insumos
-- ----------------------------
DROP TABLE IF EXISTS `insumos`;
CREATE TABLE `insumos` (
  `IdInsumo` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) NOT NULL,
  `IdCategoria` int(100) NOT NULL,
  PRIMARY KEY (`IdInsumo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of insumos
-- ----------------------------
INSERT INTO `insumos` VALUES ('1', 'Blanco impreso', '1');
INSERT INTO `insumos` VALUES ('2', 'Mezclado (color)', '1');
INSERT INTO `insumos` VALUES ('3', 'merma', '1');

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `IdUser` varchar(255) DEFAULT NULL,
  `Accion` varchar(255) DEFAULT NULL,
  `Fecha` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-05-26 00:52:12');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-05-26 01:46:35');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-05-26 15:55:07');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-05-26 16:07:33');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-05-26 16:08:23');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-05-26 16:10:41');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-05-26 16:13:56');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-05-26 16:38:23');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-05-26 17:05:00');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-05-26 17:30:40');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-05-26 17:31:56');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-05-26 17:32:21');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-05-26 19:38:13');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-05-26 20:06:43');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-05-26 21:25:37');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-05-26 22:07:59');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-05-26 22:41:10');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-05-26 22:47:20');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-05-26 23:13:29');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-05-27 00:22:31');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-05-30 15:45:49');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-05-30 16:30:43');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-05-30 17:04:05');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-05-30 17:26:11');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-05-30 17:28:40');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-05-30 17:28:59');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-05-30 17:30:39');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-05-30 17:49:18');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-05-30 18:12:29');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-05-30 18:54:14');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-05-30 18:56:50');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-05-30 19:00:19');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-05-30 19:33:08');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-05-30 19:41:07');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-05-30 19:42:56');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-05-31 16:24:45');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-05-31 16:37:21');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-05-31 17:08:46');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-05-31 18:28:55');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-05-31 19:07:33');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-05-31 21:55:37');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-01 02:01:40');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-01 15:44:47');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-01 19:50:35');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-02 00:55:01');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-02 15:39:45');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-05 15:59:42');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-05 17:45:19');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-05 19:36:45');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-05 19:42:48');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-05 19:54:14');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-05 21:03:33');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-06 15:46:59');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-06 17:15:39');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-06 17:23:19');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-06 17:58:24');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-06 18:01:57');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-06 18:07:20');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-06 18:07:50');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-06 18:09:19');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-06 18:09:46');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-06 18:12:08');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-06 18:19:34');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-06 18:23:04');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-06 18:45:23');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-06 18:51:41');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-06 19:06:07');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-06 19:12:27');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-06 19:14:46');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-06 19:15:33');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-06 19:18:48');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-06 19:22:36');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-06 20:07:37');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-06 20:07:58');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-06 21:17:40');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-07 01:06:32');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-07 01:26:10');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-07 15:38:46');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-07 15:40:16');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-07 15:40:28');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-07 16:22:11');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-07 17:07:54');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-07 17:18:29');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-07 20:06:25');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-07 21:31:19');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-07 22:28:49');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-08 01:01:33');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-08 01:13:15');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-08 01:30:09');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-08 01:32:59');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-08 15:42:29');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-08 15:44:30');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-08 16:53:03');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-08 16:54:53');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-08 17:07:36');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-08 19:06:07');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-08 19:06:41');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-08 22:27:17');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-08 23:02:51');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-09 00:29:24');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-09 00:53:15');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-09 15:51:47');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-09 16:47:25');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-09 16:51:15');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-09 19:06:08');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-09 19:40:15');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-09 21:27:27');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-10 02:10:43');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-12 15:42:53');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-12 18:43:48');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-13 15:53:49');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-13 17:28:32');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-13 19:48:06');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-13 19:48:06');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-13 21:12:28');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-14 15:43:57');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-14 19:49:53');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-14 21:25:48');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-14 22:11:18');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-14 22:35:30');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-15 01:18:53');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-15 02:07:16');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-15 15:44:29');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-15 17:42:06');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-15 18:40:34');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-15 18:51:29');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-16 01:50:04');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-16 15:45:44');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-16 17:33:15');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-17 01:36:14');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-19 15:44:39');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-19 18:53:24');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-19 20:15:18');

-- ----------------------------
-- Table structure for maquinas
-- ----------------------------
DROP TABLE IF EXISTS `maquinas`;
CREATE TABLE `maquinas` (
  `idMaquina` int(11) NOT NULL AUTO_INCREMENT,
  `maquina` varchar(30) NOT NULL,
  `comentario` varchar(300) NOT NULL,
  PRIMARY KEY (`idMaquina`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of maquinas
-- ----------------------------
INSERT INTO `maquinas` VALUES ('1', 'Maquina 1', 'Maquina 1 2017/06/05');
INSERT INTO `maquinas` VALUES ('2', 'Maquina 2', 'Maquina 2 2017/06/05');

-- ----------------------------
-- Table structure for orden_produccion
-- ----------------------------
DROP TABLE IF EXISTS `orden_produccion`;
CREATE TABLE `orden_produccion` (
  `IdOrden` int(100) unsigned NOT NULL AUTO_INCREMENT,
  `NoOrden` varchar(50) NOT NULL,
  `Usuario` varchar(50) NOT NULL,
  `FechaInicio` date DEFAULT NULL,
  `FechaFin` date DEFAULT NULL,
  `Estado` int(1) DEFAULT NULL,
  `comentarios` varchar(300) NOT NULL,
  PRIMARY KEY (`IdOrden`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of orden_produccion
-- ----------------------------
INSERT INTO `orden_produccion` VALUES ('16', '7845', '1', '2017-06-05', '2017-06-09', '0', 'd');
INSERT INTO `orden_produccion` VALUES ('17', '2154', '1', '2017-06-12', '2017-06-17', '2', 'd');
INSERT INTO `orden_produccion` VALUES ('18', '6358', '1', '2017-06-11', '2017-06-23', '2', 'd');
INSERT INTO `orden_produccion` VALUES ('19', '9662', '1', '2017-06-18', '2017-06-22', '2', 'd');
INSERT INTO `orden_produccion` VALUES ('20', '5688', '1', '2017-06-12', '2017-06-17', '0', 'Esta orden de trabajo estará vigente hasta nuevo aviso');
INSERT INTO `orden_produccion` VALUES ('21', '3214', '1', '2017-06-25', '2017-06-30', '0', 'Esta sera la orden de producción durante este mes');
INSERT INTO `orden_produccion` VALUES ('22', '2222', '2', '2017-06-06', '2017-06-29', '3', 'dasdfasdf');
INSERT INTO `orden_produccion` VALUES ('23', '3333', '2', '2017-06-06', '2017-06-23', '3', 'ed');
INSERT INTO `orden_produccion` VALUES ('24', '7888', '2', '2017-06-06', '2017-06-15', '2', 'asdfasd');
INSERT INTO `orden_produccion` VALUES ('25', '1245', '3', '2017-06-12', '2017-06-13', '2', 'Orden de producción del día');
INSERT INTO `orden_produccion` VALUES ('26', '9876', '3', '2017-06-07', '2017-06-10', '2', 'Orden de produccion del dia');
INSERT INTO `orden_produccion` VALUES ('27', '7894', '3', '2017-06-08', '2017-06-10', '2', 'Nueva orden de producción para lo que resta de la semana');
INSERT INTO `orden_produccion` VALUES ('28', '1256', '3', '2017-06-09', '2017-06-15', '1', 'orden de produccion actualmente activa');

-- ----------------------------
-- Table structure for produccion
-- ----------------------------
DROP TABLE IF EXISTS `produccion`;
CREATE TABLE `produccion` (
  `IdReporteDiario` int(11) NOT NULL,
  `NoOrden` varchar(255) NOT NULL,
  `Operador` int(11) DEFAULT NULL,
  `Maquina` varchar(255) DEFAULT NULL,
  `HoraInicio` time DEFAULT NULL,
  `HoraFin` time DEFAULT NULL,
  `VelocMaquina` varchar(255) DEFAULT NULL,
  `Peso` varchar(255) DEFAULT NULL,
  `Diametro` varchar(255) DEFAULT NULL,
  `PesoBase` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of produccion
-- ----------------------------

-- ----------------------------
-- Table structure for reporte_diario
-- ----------------------------
DROP TABLE IF EXISTS `reporte_diario`;
CREATE TABLE `reporte_diario` (
  `IdReporteDiario` int(11) NOT NULL AUTO_INCREMENT,
  `Consecutivo` varchar(11) DEFAULT NULL,
  `NoOrder` varchar(255) NOT NULL,
  `Turno` varchar(255) DEFAULT NULL,
  `FechaInicio` date DEFAULT NULL,
  `FechaFinal` date DEFAULT NULL,
  `Coordinador` int(11) DEFAULT NULL,
  `Grupo` varchar(255) DEFAULT NULL,
  `TipoPapel` varchar(255) DEFAULT NULL,
  `ProduccionTotal` varchar(255) DEFAULT NULL,
  `MermaTotal` varchar(255) NOT NULL,
  PRIMARY KEY (`IdReporteDiario`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reporte_diario
-- ----------------------------
INSERT INTO `reporte_diario` VALUES ('1', '3-9876', '9876', '6:00pm-6:00am', '2017-06-09', '2017-06-10', '3', '1', 'higienico', null, '');
INSERT INTO `reporte_diario` VALUES ('24', '1-9876', '9876', '6:00am-6:00pm', '2017-06-07', '2017-06-07', '3', '1', 'HIGIENICO', null, '');
INSERT INTO `reporte_diario` VALUES ('25', '1-9876', '9876', '6:00pm-6:00am', '2017-06-07', '2017-06-08', '3', '1', 'HIGIENICO', null, '');
INSERT INTO `reporte_diario` VALUES ('26', '2-9876', '9876', '6:00am-6:00pm', '2017-06-08', '2017-06-08', '3', '1', 'HIGIENICO', null, '');
INSERT INTO `reporte_diario` VALUES ('27', '2-9876', '9876', '6:00pm-6:00am', '2017-06-08', '2017-06-09', '3', '1', 'HIGIENICO', null, '');
INSERT INTO `reporte_diario` VALUES ('28', '3-9876', '9876', '6:00am-6:00pm', '2017-06-09', '2017-06-09', '3', '1', 'HIGIENICO', null, '');
INSERT INTO `reporte_diario` VALUES ('29', '1-7894', '7894', '6:00am-6:00pm', '2017-06-08', '2017-06-08', '3', '1', 'Higienico', null, '');
INSERT INTO `reporte_diario` VALUES ('30', '1-7894', '7894', '6:00pm-6:00am', '2017-06-08', '2017-06-09', '3', '1', 'Higienico', null, '');
INSERT INTO `reporte_diario` VALUES ('31', '2-7894', '7894', '6:00am-6:00pm', '2017-06-09', '2017-06-09', '3', '1', 'Higienico', null, '');
INSERT INTO `reporte_diario` VALUES ('32', '2-7894', '7894', '6:00pm-6:00am', '2017-06-09', '2017-06-10', '3', '1', 'Higienico', null, '');
INSERT INTO `reporte_diario` VALUES ('33', '1-1256', '1256', '6:00am-6:00pm', '2017-06-09', '2017-06-09', '3', '4', 'Higienico', null, '');
INSERT INTO `reporte_diario` VALUES ('34', '1-1256', '1256', '6:00pm-6:00am', '2017-06-09', '2017-06-10', '3', '1', 'Higienico', null, '');
INSERT INTO `reporte_diario` VALUES ('35', '2-1256', '1256', '6:00am-6:00pm', '2017-06-11', '2017-06-12', '3', '1', 'higienico', null, '');
INSERT INTO `reporte_diario` VALUES ('36', '2-1256', '1256', '6:00pm-6:00am', '2017-06-12', '2017-06-13', '3', '1', 'HIGIENICO', null, '');
INSERT INTO `reporte_diario` VALUES ('37', '3-1256', '1256', '6:00am-6:00pm', '2017-06-16', '2017-06-17', '3', '555', 'higienico', null, '');
INSERT INTO `reporte_diario` VALUES ('38', '3-1256', '1256', '6:00pm-6:00am', '2017-06-16', '2017-06-17', '3', '4', 'higienico', null, '');
INSERT INTO `reporte_diario` VALUES ('39', '4-1256', '1256', '6:00am-6:00pm', '2017-06-18', '2017-06-18', '3', '7', 'higienico', null, '');
INSERT INTO `reporte_diario` VALUES ('40', '4-1256', '1256', '6:00pm-6:00am', '2017-06-19', '2017-06-20', '3', '77', 'higienico', null, '');

-- ----------------------------
-- Table structure for tiempos_muertos
-- ----------------------------
DROP TABLE IF EXISTS `tiempos_muertos`;
CREATE TABLE `tiempos_muertos` (
  `IdTiempoMuerto` int(11) NOT NULL AUTO_INCREMENT,
  `IdReporteDiario` int(11) DEFAULT NULL,
  `Consecutivo` varchar(11) DEFAULT NULL,
  `NoOrden` varchar(255) DEFAULT NULL,
  `HoraInicio` time DEFAULT NULL,
  `Turno` varchar(50) DEFAULT NULL,
  `HoraFin` time DEFAULT NULL,
  `Maquina` varchar(255) DEFAULT NULL,
  `Descripcion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`IdTiempoMuerto`)
) ENGINE=InnoDB AUTO_INCREMENT=190 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tiempos_muertos
-- ----------------------------
INSERT INTO `tiempos_muertos` VALUES ('32', '33', '1-1256', '1256', '17:02:00', '6:00am-6:00pm', '18:02:00', '1', 'd');
INSERT INTO `tiempos_muertos` VALUES ('41', '35', '2-1256', '1256', '18:10:00', '6:00am-6:00pm', '18:25:00', '2', 'Bismarck Francisco EscobarMuñoz');
INSERT INTO `tiempos_muertos` VALUES ('55', '33', '1-1256', '1256', '09:24:00', '6:00am-6:00pm', '09:24:00', '2', 'd');
INSERT INTO `tiempos_muertos` VALUES ('56', '33', '1-1256', '1256', '09:25:00', '6:00am-6:00pm', '09:25:00', '1', 'd');
INSERT INTO `tiempos_muertos` VALUES ('57', '33', '1-1256', '1256', '09:27:00', '6:00am-6:00pm', '09:27:00', '1', 'sd');
INSERT INTO `tiempos_muertos` VALUES ('58', '33', '1-1256', '1256', '09:27:00', '6:00am-6:00pm', '09:27:00', '1', 'sd');
INSERT INTO `tiempos_muertos` VALUES ('59', '33', '1-1256', '1256', '09:27:00', '6:00am-6:00pm', '09:27:00', '1', 'sd');
INSERT INTO `tiempos_muertos` VALUES ('139', '33', '1-1256', '1256', '11:58:00', '6:00am-6:00pm', '12:58:00', '2', 'peuwv');
INSERT INTO `tiempos_muertos` VALUES ('140', '33', '1-1256', '1256', '17:19:00', '6:00am-6:00pm', '17:35:00', '2', 'PRUEBA DE FUEGO');
INSERT INTO `tiempos_muertos` VALUES ('141', '33', '1-1256', '1256', '15:10:00', '6:00am-6:00pm', '16:10:00', '2', 'PRUEBA DE TORNILLOS');
INSERT INTO `tiempos_muertos` VALUES ('142', '33', '1-1256', '1256', '06:00:00', '6:00am-6:00pm', '07:02:00', '2', 'CONTIGO!');
INSERT INTO `tiempos_muertos` VALUES ('143', '34', '1-1256', '1256', '23:14:00', '6:00pm-6:00am', '00:10:00', '2', 'nos fuimos  a cenar');
INSERT INTO `tiempos_muertos` VALUES ('144', '35', '2-1256', '1256', '07:30:00', '6:00am-6:00pm', '08:10:00', '2', 'prueba');
INSERT INTO `tiempos_muertos` VALUES ('145', '35', '2-1256', '1256', '17:30:00', '6:00am-6:00pm', '17:55:00', '2', 'prueba');
INSERT INTO `tiempos_muertos` VALUES ('159', '36', '2-1256', '1256', '18:00:00', '6:00pm-6:00am', '18:30:00', '1', 'descripcion 1');
INSERT INTO `tiempos_muertos` VALUES ('175', '35', '2-1256', '1256', '06:00:00', '6:00am-6:00pm', '06:10:00', '1', 'dddd');
INSERT INTO `tiempos_muertos` VALUES ('176', '35', '2-1256', '1256', '11:30:00', '6:00am-6:00pm', '12:50:00', '1', 'dddd');
INSERT INTO `tiempos_muertos` VALUES ('177', '35', '2-1256', '1256', '17:30:00', '6:00am-6:00pm', '18:00:00', '1', 'dddd');
INSERT INTO `tiempos_muertos` VALUES ('178', '34', '1-1256', '1256', '18:00:00', '6:00pm-6:00am', '18:30:00', '1', 'Cambio de cuchillas.');
INSERT INTO `tiempos_muertos` VALUES ('179', '34', '1-1256', '1256', '23:10:00', '6:00pm-6:00am', '01:05:00', '2', 'Se cambiaron cuchillas y también se cambio el aceite de las maquinas.');
INSERT INTO `tiempos_muertos` VALUES ('180', '34', '1-1256', '1256', '05:05:00', '6:00pm-6:00am', '05:59:00', '2', 'Se cambiaron cuchillas y también se cambio el aceite de las maquinas.');
INSERT INTO `tiempos_muertos` VALUES ('181', '34', '1-1256', '1256', '00:00:00', '6:00pm-6:00am', '00:30:00', '1', 'Maquina presento anomalías.');
INSERT INTO `tiempos_muertos` VALUES ('182', '34', '1-1256', '1256', '23:30:00', '6:00pm-6:00am', '00:05:00', '1', 'Problemas de fluido eléctrico.');
INSERT INTO `tiempos_muertos` VALUES ('184', '36', '2-1256', '1256', '23:50:00', '6:00pm-6:00am', '00:20:00', '1', 'prueba');
INSERT INTO `tiempos_muertos` VALUES ('185', '36', '2-1256', '1256', '23:30:00', '6:00pm-6:00am', '01:00:00', '1', 'problemas con luz electrica');
INSERT INTO `tiempos_muertos` VALUES ('186', '37', '3-1256', '1256', '06:30:00', '6:00am-6:00pm', '07:00:00', '1', 'Problemas de fluido electrico');
INSERT INTO `tiempos_muertos` VALUES ('187', '40', '4-1256', '1256', '18:00:00', '6:00pm-6:00am', '18:30:00', '1', 'focus');

-- ----------------------------
-- Table structure for usuarios
-- ----------------------------
DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `IdUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `Usuario` varchar(255) DEFAULT NULL,
  `Nombre` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `Privilegio` varchar(255) DEFAULT NULL,
  `Estado` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`IdUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usuarios
-- ----------------------------
INSERT INTO `usuarios` VALUES ('1', 'Alder', 'Alder Hernandez', '7C33FC4A0D1662CF5A5E8EB686A1DEC3', '1', '1');
INSERT INTO `usuarios` VALUES ('2', 'user', 'Bismarck Escobar', 'e10adc3949ba59abbe56e057f20f883e', '1', '1');
INSERT INTO `usuarios` VALUES ('3', 'user1', 'Bismarck Escobar', 'e10adc3949ba59abbe56e057f20f883e', '4', '1');

-- ----------------------------
-- View structure for view_cargas_pulper_completo
-- ----------------------------
DROP VIEW IF EXISTS `view_cargas_pulper_completo`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost`  VIEW `view_cargas_pulper_completo` AS SELECT
insumos.descripcion,
cargas_pulper.IdCargaPulper,
cargas_pulper.IdInsumo,
cargas_pulper.Cantidad,
cargas_pulper.IdReporteDiario
FROM
insumos ,
cargas_pulper ;

-- ----------------------------
-- View structure for view_orden_produccion
-- ----------------------------
DROP VIEW IF EXISTS `view_orden_produccion`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `view_orden_produccion` AS SELECT
	ord.IdOrden AS IdOrden,
	ord.NoOrden AS NoOrden,
	us.Nombre AS Usuario,
	ord.FechaInicio AS FechaInicio,
	ord.FechaFin AS FechaFin,
	ord.Estado AS Estado
FROM
	orden_produccion ord
INNER JOIN usuarios us ON ord.Usuario = us.IdUsuario 
ORDER BY ord.Estado=1 DESC ;

-- ----------------------------
-- View structure for view_reportediario
-- ----------------------------
DROP VIEW IF EXISTS `view_reportediario`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `view_reportediario` AS SELECT
	rd.IdReporteDiario,
	rd.Consecutivo,
	rd.NoOrder,
	rd.Turno,
	rd.FechaInicio,
	rd.FechaFinal,
	rd.Coordinador,
	us.Nombre,
	us.IdUsuario,
	rd.Grupo,
	rd.TipoPapel
FROM
	reporte_diario rd
JOIN usuarios us ON us.IdUsuario = rd.Coordinador
JOIN orden_produccion op ON rd.NoOrder = op.NoOrden
WHERE op.Estado = 1 ;
