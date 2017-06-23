/*
Navicat MySQL Data Transfer

Source Server         : SERVIDOR 11
Source Server Version : 50505
Source Host           : 192.168.1.11:3306
Source Database       : phinn

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-06-21 16:01:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cargas_pulper
-- ----------------------------
DROP TABLE IF EXISTS `cargas_pulper`;
CREATE TABLE `cargas_pulper` (
  `IdCargaPulper` int(11) NOT NULL AUTO_INCREMENT,
  `IdInsumo` int(11) NOT NULL,
  `Cantidad` float(11,1) DEFAULT NULL,
  `IdReporteDiario` int(11) NOT NULL,
  PRIMARY KEY (`IdCargaPulper`)
) ENGINE=InnoDB AUTO_INCREMENT=254 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cargas_pulper
-- ----------------------------
INSERT INTO `cargas_pulper` VALUES ('161', '1', '500.0', '35');
INSERT INTO `cargas_pulper` VALUES ('162', '1', '555.0', '35');
INSERT INTO `cargas_pulper` VALUES ('163', '1', '650.0', '35');
INSERT INTO `cargas_pulper` VALUES ('164', '1', '980.0', '35');
INSERT INTO `cargas_pulper` VALUES ('165', '1', '485.0', '35');
INSERT INTO `cargas_pulper` VALUES ('166', '2', '452.0', '35');
INSERT INTO `cargas_pulper` VALUES ('167', '2', '359.0', '35');
INSERT INTO `cargas_pulper` VALUES ('168', '2', '369.0', '35');
INSERT INTO `cargas_pulper` VALUES ('169', '2', '895.0', '35');
INSERT INTO `cargas_pulper` VALUES ('170', '2', '485.0', '35');
INSERT INTO `cargas_pulper` VALUES ('171', '2', '7485.0', '35');
INSERT INTO `cargas_pulper` VALUES ('172', '12', '458.0', '35');
INSERT INTO `cargas_pulper` VALUES ('173', '12', '8752.0', '35');
INSERT INTO `cargas_pulper` VALUES ('174', '12', '4158.0', '35');
INSERT INTO `cargas_pulper` VALUES ('175', '12', '268.0', '35');
INSERT INTO `cargas_pulper` VALUES ('176', '12', '528.0', '35');
INSERT INTO `cargas_pulper` VALUES ('177', '12', '458.0', '35');
INSERT INTO `cargas_pulper` VALUES ('178', '12', '452.0', '35');
INSERT INTO `cargas_pulper` VALUES ('179', '12', '695.0', '35');
INSERT INTO `cargas_pulper` VALUES ('180', '12', '4251.0', '35');
INSERT INTO `cargas_pulper` VALUES ('181', '12', '785.0', '35');
INSERT INTO `cargas_pulper` VALUES ('182', '12', '788.0', '35');
INSERT INTO `cargas_pulper` VALUES ('183', '2', '458.0', '36');
INSERT INTO `cargas_pulper` VALUES ('184', '2', '258.0', '36');
INSERT INTO `cargas_pulper` VALUES ('185', '2', '458.0', '36');
INSERT INTO `cargas_pulper` VALUES ('186', '2', '258.0', '36');
INSERT INTO `cargas_pulper` VALUES ('187', '1', '748.0', '36');
INSERT INTO `cargas_pulper` VALUES ('188', '1', '896.0', '36');
INSERT INTO `cargas_pulper` VALUES ('189', '1', '255.0', '36');
INSERT INTO `cargas_pulper` VALUES ('190', '1', '4857.0', '36');
INSERT INTO `cargas_pulper` VALUES ('191', '1', '258.0', '36');
INSERT INTO `cargas_pulper` VALUES ('192', '1', '3698.0', '36');
INSERT INTO `cargas_pulper` VALUES ('193', '1', '125.0', '36');
INSERT INTO `cargas_pulper` VALUES ('194', '2', '785.0', '33');
INSERT INTO `cargas_pulper` VALUES ('195', '1', '785.0', '33');
INSERT INTO `cargas_pulper` VALUES ('196', '12', '558.0', '33');
INSERT INTO `cargas_pulper` VALUES ('197', '2', '755.0', '33');
INSERT INTO `cargas_pulper` VALUES ('198', '2', '78.0', '33');
INSERT INTO `cargas_pulper` VALUES ('199', '2', '488.0', '33');
INSERT INTO `cargas_pulper` VALUES ('200', '12', '46.0', '36');
INSERT INTO `cargas_pulper` VALUES ('201', '12', '55.0', '36');
INSERT INTO `cargas_pulper` VALUES ('202', '12', '56.0', '36');
INSERT INTO `cargas_pulper` VALUES ('203', '12', '56.0', '36');
INSERT INTO `cargas_pulper` VALUES ('204', '12', '55.0', '36');
INSERT INTO `cargas_pulper` VALUES ('205', '12', '55.7', '36');
INSERT INTO `cargas_pulper` VALUES ('206', '12', '55.6', '35');
INSERT INTO `cargas_pulper` VALUES ('207', '12', '555.6', '35');
INSERT INTO `cargas_pulper` VALUES ('208', '12', '66.9', '35');
INSERT INTO `cargas_pulper` VALUES ('209', '12', '566.3', '35');
INSERT INTO `cargas_pulper` VALUES ('210', '12', '566.3', '35');
INSERT INTO `cargas_pulper` VALUES ('211', '12', '566.6', '35');
INSERT INTO `cargas_pulper` VALUES ('212', '12', '263.6', '35');
INSERT INTO `cargas_pulper` VALUES ('213', '12', '160.0', '34');
INSERT INTO `cargas_pulper` VALUES ('214', '12', '160.0', '34');
INSERT INTO `cargas_pulper` VALUES ('215', '12', '160.0', '34');
INSERT INTO `cargas_pulper` VALUES ('216', '1', '600.0', '34');
INSERT INTO `cargas_pulper` VALUES ('217', '1', '659.0', '34');
INSERT INTO `cargas_pulper` VALUES ('218', '1', '690.0', '34');
INSERT INTO `cargas_pulper` VALUES ('219', '1', '629.0', '34');
INSERT INTO `cargas_pulper` VALUES ('220', '1', '626.0', '34');
INSERT INTO `cargas_pulper` VALUES ('221', '1', '737.0', '34');
INSERT INTO `cargas_pulper` VALUES ('222', '1', '647.0', '34');
INSERT INTO `cargas_pulper` VALUES ('223', '1', '683.0', '34');
INSERT INTO `cargas_pulper` VALUES ('224', '1', '683.0', '34');
INSERT INTO `cargas_pulper` VALUES ('225', '2', '160.0', '34');
INSERT INTO `cargas_pulper` VALUES ('226', '2', '160.0', '34');
INSERT INTO `cargas_pulper` VALUES ('227', '2', '160.0', '34');
INSERT INTO `cargas_pulper` VALUES ('228', '2', '160.0', '34');
INSERT INTO `cargas_pulper` VALUES ('229', '2', '160.0', '34');
INSERT INTO `cargas_pulper` VALUES ('230', '2', '160.0', '34');
INSERT INTO `cargas_pulper` VALUES ('231', '2', '160.0', '34');
INSERT INTO `cargas_pulper` VALUES ('232', '2', '160.0', '34');
INSERT INTO `cargas_pulper` VALUES ('233', '2', '160.0', '34');
INSERT INTO `cargas_pulper` VALUES ('234', '2', '455.0', '46');
INSERT INTO `cargas_pulper` VALUES ('235', '2', '450.0', '46');
INSERT INTO `cargas_pulper` VALUES ('236', '2', '450.0', '46');
INSERT INTO `cargas_pulper` VALUES ('237', '2', '450.0', '46');
INSERT INTO `cargas_pulper` VALUES ('238', '2', '450.0', '46');
INSERT INTO `cargas_pulper` VALUES ('239', '2', '450.0', '46');
INSERT INTO `cargas_pulper` VALUES ('240', '2', '450.0', '46');
INSERT INTO `cargas_pulper` VALUES ('241', '12', '162.0', '46');
INSERT INTO `cargas_pulper` VALUES ('242', '12', '160.0', '46');
INSERT INTO `cargas_pulper` VALUES ('243', '12', '160.0', '46');
INSERT INTO `cargas_pulper` VALUES ('244', '12', '160.0', '46');
INSERT INTO `cargas_pulper` VALUES ('245', '12', '160.0', '46');
INSERT INTO `cargas_pulper` VALUES ('246', '12', '160.0', '46');
INSERT INTO `cargas_pulper` VALUES ('247', '12', '160.0', '46');
INSERT INTO `cargas_pulper` VALUES ('248', '12', '523.0', '47');
INSERT INTO `cargas_pulper` VALUES ('249', '1', '500.0', '46');
INSERT INTO `cargas_pulper` VALUES ('250', '1', '550.0', '46');
INSERT INTO `cargas_pulper` VALUES ('251', '1', '650.0', '46');
INSERT INTO `cargas_pulper` VALUES ('252', '1', '1500.0', '49');
INSERT INTO `cargas_pulper` VALUES ('253', '2', '80.0', '49');

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
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of horas_molienda
-- ----------------------------
INSERT INTO `horas_molienda` VALUES ('23', 'BATIDO', '06:00:00', '06:30:00', '35');
INSERT INTO `horas_molienda` VALUES ('24', 'BATIDO', '07:00:00', '07:30:00', '35');
INSERT INTO `horas_molienda` VALUES ('28', 'BATIDO', '18:00:00', '19:58:00', '33');
INSERT INTO `horas_molienda` VALUES ('29', 'BATIDO', '06:00:00', '07:30:00', '33');
INSERT INTO `horas_molienda` VALUES ('30', 'BATIDO', '07:30:00', '08:00:00', '33');
INSERT INTO `horas_molienda` VALUES ('31', 'BATIDO', '08:00:00', '08:30:00', '33');
INSERT INTO `horas_molienda` VALUES ('32', 'BATIDO', '09:00:00', '09:30:00', '33');
INSERT INTO `horas_molienda` VALUES ('33', 'BATIDO', '10:00:00', '10:30:00', '33');
INSERT INTO `horas_molienda` VALUES ('34', 'BATIDO', '11:00:00', '11:30:00', '33');
INSERT INTO `horas_molienda` VALUES ('35', 'BATIDO', '12:25:00', '13:00:00', '33');
INSERT INTO `horas_molienda` VALUES ('49', 'BATIDO', '05:56:00', '06:10:00', '37');
INSERT INTO `horas_molienda` VALUES ('50', 'BATIDO', '06:00:00', '06:10:00', '37');
INSERT INTO `horas_molienda` VALUES ('51', 'BATIDO', '11:04:00', '12:10:00', '37');
INSERT INTO `horas_molienda` VALUES ('52', 'BATIDO', '18:00:00', '18:05:00', '36');
INSERT INTO `horas_molienda` VALUES ('53', 'BATIDO', '19:00:00', '19:55:00', '36');
INSERT INTO `horas_molienda` VALUES ('54', 'BATIDO', '23:30:00', '00:10:00', '36');
INSERT INTO `horas_molienda` VALUES ('55', 'BATIDO', '01:30:00', '02:30:00', '36');
INSERT INTO `horas_molienda` VALUES ('56', 'BATIDO', '05:30:00', '05:45:00', '36');
INSERT INTO `horas_molienda` VALUES ('57', 'BATIDO', '18:00:00', '18:10:00', '36');
INSERT INTO `horas_molienda` VALUES ('58', 'BATIDO', '19:00:00', '19:30:00', '36');
INSERT INTO `horas_molienda` VALUES ('59', 'BATIDO', '23:55:00', '00:15:00', '36');
INSERT INTO `horas_molienda` VALUES ('60', 'BATIDO', '01:00:00', '01:30:00', '36');
INSERT INTO `horas_molienda` VALUES ('61', 'BATIDO', '05:55:00', '06:00:00', '36');
INSERT INTO `horas_molienda` VALUES ('62', 'BATIDO', '19:30:00', '20:00:00', '34');
INSERT INTO `horas_molienda` VALUES ('63', 'BATIDO', '20:30:00', '21:00:00', '34');
INSERT INTO `horas_molienda` VALUES ('64', 'BATIDO', '21:00:00', '21:30:00', '34');
INSERT INTO `horas_molienda` VALUES ('65', 'BATIDO', '22:00:00', '22:30:00', '34');
INSERT INTO `horas_molienda` VALUES ('66', 'BATIDO', '00:00:00', '00:30:00', '34');
INSERT INTO `horas_molienda` VALUES ('67', 'BATIDO', '01:00:00', '01:30:00', '34');
INSERT INTO `horas_molienda` VALUES ('68', 'BATIDO', '02:30:00', '03:00:00', '34');
INSERT INTO `horas_molienda` VALUES ('69', 'BATIDO', '04:00:00', '04:30:00', '34');
INSERT INTO `horas_molienda` VALUES ('70', 'BATIDO', '05:00:00', '05:30:00', '34');
INSERT INTO `horas_molienda` VALUES ('71', 'BATIDO', '06:00:00', '06:30:00', '46');
INSERT INTO `horas_molienda` VALUES ('72', 'BATIDO', '07:00:00', '07:30:00', '46');
INSERT INTO `horas_molienda` VALUES ('73', 'BATIDO', '07:30:00', '08:00:00', '46');
INSERT INTO `horas_molienda` VALUES ('74', 'BATIDO', '08:00:00', '08:31:00', '46');
INSERT INTO `horas_molienda` VALUES ('75', 'BATIDO', '18:00:00', '18:30:00', '47');
INSERT INTO `horas_molienda` VALUES ('76', 'BATIDO', '09:40:00', '09:55:00', '49');
INSERT INTO `horas_molienda` VALUES ('77', 'BATIDO', '09:30:00', '08:40:00', '49');

-- ----------------------------
-- Table structure for insumos
-- ----------------------------
DROP TABLE IF EXISTS `insumos`;
CREATE TABLE `insumos` (
  `IdInsumo` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(100) NOT NULL,
  `IdCategoria` int(100) NOT NULL,
  PRIMARY KEY (`IdInsumo`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of insumos
-- ----------------------------
INSERT INTO `insumos` VALUES ('1', 'Blanco impreso', '1');
INSERT INTO `insumos` VALUES ('2', 'Mezclado (color)', '1');
INSERT INTO `insumos` VALUES ('3', 'Poliacrilamida PAM', '2');
INSERT INTO `insumos` VALUES ('4', 'Policloruro de aluminio (PAC)', '2');
INSERT INTO `insumos` VALUES ('5', 'Soda caustica', '2');
INSERT INTO `insumos` VALUES ('6', 'Peroxido de hidrogeno', '2');
INSERT INTO `insumos` VALUES ('7', 'GSP-8', '2');
INSERT INTO `insumos` VALUES ('8', 'Aceite vegetal/Hercules', '2');
INSERT INTO `insumos` VALUES ('9', 'Oxido de polietileno PEO', '2');
INSERT INTO `insumos` VALUES ('10', 'Carboxilmetilcelulosa CMC', '2');
INSERT INTO `insumos` VALUES ('11', 'DETAC', '2');
INSERT INTO `insumos` VALUES ('12', 'Merma', '1');

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
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-19 22:09:51');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-19 22:40:02');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-19 23:05:46');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-19 23:08:51');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-19 23:50:47');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-19 23:51:10');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-19 23:51:18');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-20 00:42:23');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-20 01:35:35');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-20 15:53:35');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-20 16:27:33');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-20 16:27:45');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-20 21:49:52');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-20 23:50:00');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-20 23:55:34');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-21 00:06:06');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-21 00:25:16');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-21 00:28:24');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-21 00:29:11');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-21 00:29:26');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-21 00:37:32');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-21 01:53:37');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-21 15:40:22');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-21 15:42:24');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-21 16:03:14');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-21 16:16:20');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-21 16:34:00');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-21 16:36:46');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-21 16:48:58');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-21 17:37:57');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-21 17:39:06');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-21 17:39:30');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-21 17:39:45');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-21 17:40:15');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-21 17:40:23');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-21 17:56:57');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-21 17:58:39');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-21 17:58:46');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-21 18:03:20');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-21 18:08:04');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-21 18:08:11');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-21 18:10:52');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-21 18:11:13');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-21 18:11:58');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-21 18:12:34');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-21 18:16:46');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-21 18:19:32');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-21 18:25:14');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-21 18:26:06');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-21 18:45:56');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-21 18:46:13');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-21 18:48:59');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-21 18:49:06');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-21 18:55:16');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-21 19:04:15');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-21 19:04:49');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-21 19:07:25');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-21 19:09:41');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-21 19:09:53');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-21 19:23:38');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-21 19:23:44');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-21 19:43:36');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-21 20:01:59');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-21 21:08:01');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-21 21:10:09');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-21 21:17:47');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-21 21:17:57');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-21 22:52:14');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-21 22:52:21');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-21 22:53:27');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-21 23:04:32');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-21 23:07:56');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-21 23:10:17');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-21 23:15:17');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-21 23:15:51');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-21 23:21:38');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-21 23:51:21');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-21 23:54:30');

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
-- Table structure for mp_insumos
-- ----------------------------
DROP TABLE IF EXISTS `mp_insumos`;
CREATE TABLE `mp_insumos` (
  `IdMpInsumos` int(11) NOT NULL AUTO_INCREMENT,
  `IdReporteDiario` int(11) DEFAULT NULL,
  `Descripcion` varchar(255) DEFAULT NULL,
  `Dia` varchar(255) DEFAULT NULL,
  `Noche` varchar(255) DEFAULT NULL,
  `Cantidad_PTA_Agua_Dia` varchar(255) DEFAULT NULL,
  `Cantidad_PTA_Agua_Noche` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`IdMpInsumos`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mp_insumos
-- ----------------------------
INSERT INTO `mp_insumos` VALUES ('12', '49', '4', '10', '—', '10', '—');

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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of orden_produccion
-- ----------------------------
INSERT INTO `orden_produccion` VALUES ('16', '7845', '1', '2017-06-05', '2017-06-09', '0', 'd');
INSERT INTO `orden_produccion` VALUES ('17', '2154', '1', '2017-06-12', '2017-06-17', '2', 'd');
INSERT INTO `orden_produccion` VALUES ('18', '6358', '1', '2017-06-11', '2017-06-23', '2', 'd');
INSERT INTO `orden_produccion` VALUES ('19', '9662', '1', '2017-06-18', '2017-06-22', '0', 'd');
INSERT INTO `orden_produccion` VALUES ('20', '5688', '1', '2017-06-12', '2017-06-17', '0', 'Esta orden de trabajo estará vigente hasta nuevo aviso');
INSERT INTO `orden_produccion` VALUES ('21', '3214', '1', '2017-06-25', '2017-06-30', '0', 'Esta sera la orden de producción durante este mes');
INSERT INTO `orden_produccion` VALUES ('22', '2222', '2', '2017-06-06', '2017-06-29', '3', 'dasdfasdf');
INSERT INTO `orden_produccion` VALUES ('23', '3333', '2', '2017-06-06', '2017-06-23', '0', 'edddd');
INSERT INTO `orden_produccion` VALUES ('24', '7888', '2', '2017-06-06', '2017-06-15', '2', 'asdfasd');
INSERT INTO `orden_produccion` VALUES ('25', '1245', '3', '2017-06-12', '2017-06-13', '0', 'Orden de producción del día');
INSERT INTO `orden_produccion` VALUES ('26', '9876', '3', '2017-06-07', '2017-06-10', '2', 'Orden de produccion del dia');
INSERT INTO `orden_produccion` VALUES ('27', '7894', '3', '2017-06-08', '2017-06-10', '2', 'Nueva orden de producción para lo que resta de la semana');
INSERT INTO `orden_produccion` VALUES ('28', '1256', '3', '2017-06-09', '2017-06-15', '2', 'orden de produccion actualmente activa');
INSERT INTO `orden_produccion` VALUES ('29', '2517', '3', '2017-06-20', '2017-06-23', '2', 'Orden de producción de prueba.');
INSERT INTO `orden_produccion` VALUES ('30', '5842', '2', '2017-06-21', '2017-06-24', '3', 'DDD');
INSERT INTO `orden_produccion` VALUES ('31', '7852', '2', '2017-06-21', '2017-06-24', '3', 'OTRAD');
INSERT INTO `orden_produccion` VALUES ('32', '7777', '2', '2017-06-26', '2017-06-30', '1', 'ekisde');

-- ----------------------------
-- Table structure for pasta
-- ----------------------------
DROP TABLE IF EXISTS `pasta`;
CREATE TABLE `pasta` (
  `IdPasta` int(11) NOT NULL AUTO_INCREMENT,
  `IdReporteDiario` int(11) DEFAULT NULL,
  `Tanque` int(11) DEFAULT NULL,
  `Dia` varchar(255) DEFAULT NULL,
  `Noche` varchar(255) DEFAULT NULL,
  `Consumo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`IdPasta`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pasta
-- ----------------------------
INSERT INTO `pasta` VALUES ('11', '35', '1', '12', null, '123');
INSERT INTO `pasta` VALUES ('12', '36', '2', null, 'noche', '1223');
INSERT INTO `pasta` VALUES ('13', '35', '2', '18.60', null, '0');
INSERT INTO `pasta` VALUES ('14', '35', '3', '12', null, '12');
INSERT INTO `pasta` VALUES ('15', '35', '4', '23', null, '0');
INSERT INTO `pasta` VALUES ('16', '35', '5', '2', null, '2');
INSERT INTO `pasta` VALUES ('18', '35', '6', '5', null, '5');
INSERT INTO `pasta` VALUES ('19', '36', '1', null, '', '');
INSERT INTO `pasta` VALUES ('20', '36', '3', null, '34', '4');
INSERT INTO `pasta` VALUES ('21', '36', '4', null, '', '');
INSERT INTO `pasta` VALUES ('22', '36', '5', null, 'dfg', 'fdg');
INSERT INTO `pasta` VALUES ('25', '36', '6', null, '45', '45');
INSERT INTO `pasta` VALUES ('26', '37', '1', '-', null, 'fg');
INSERT INTO `pasta` VALUES ('27', '34', '1', null, 'noche', 'ef');
INSERT INTO `pasta` VALUES ('28', '34', '2', '—', 'dddd', 'dddd');
INSERT INTO `pasta` VALUES ('29', '49', '1', '580', '—', '10');

-- ----------------------------
-- Table structure for produccion
-- ----------------------------
DROP TABLE IF EXISTS `produccion`;
CREATE TABLE `produccion` (
  `IdProduccion` int(11) NOT NULL AUTO_INCREMENT,
  `IdReporteDiario` int(11) NOT NULL,
  `NoOrden` varchar(255) NOT NULL,
  `Operador` int(11) DEFAULT NULL,
  `Maquina` varchar(255) DEFAULT NULL,
  `HoraInicio` time DEFAULT NULL,
  `HoraFin` time DEFAULT NULL,
  `VelocMaquina` varchar(255) DEFAULT NULL,
  `Peso` varchar(255) DEFAULT NULL,
  `Diametro` varchar(255) DEFAULT NULL,
  `PesoBase` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`IdProduccion`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of produccion
-- ----------------------------
INSERT INTO `produccion` VALUES ('20', '33', '1-1256', '4', '2', '04:00:00', '04:46:00', '2', '23', '23', '23');
INSERT INTO `produccion` VALUES ('23', '35', '2-1256', '6', '1', '06:00:00', '07:30:00', '-', '345', '92', '203');
INSERT INTO `produccion` VALUES ('24', '35', '2-1256', '6', '1', '07:30:00', '09:00:00', '-', '339', '93', '206');
INSERT INTO `produccion` VALUES ('25', '35', '2-1256', '6', '1', '09:00:00', '11:10:00', '', '425', '100', '205');
INSERT INTO `produccion` VALUES ('28', '35', '2-1256', '6', '1', '11:10:00', '01:00:00', '', '372', '95', '206');
INSERT INTO `produccion` VALUES ('29', '35', '2-1256', '6', '1', '01:00:00', '02:40:00', '', '364.5', '94', '20');
INSERT INTO `produccion` VALUES ('31', '35', '2-1256', '6', '1', '02:40:00', '03:50:00', '', '259.5', '78', '19');
INSERT INTO `produccion` VALUES ('33', '35', '2-1256', '6', '1', '04:00:00', '06:00:00', '', '497.5', '108', '20');
INSERT INTO `produccion` VALUES ('34', '35', '2-1256', '4', '2', '06:00:00', '04:00:00', '', '468', '95', '20');
INSERT INTO `produccion` VALUES ('35', '35', '2-1256', '4', '2', '04:00:00', '06:00:00', '', '516', '105', '20');
INSERT INTO `produccion` VALUES ('41', '35', '2-1256', '6', '1', '11:56:00', '11:56:00', '', '1', '1', '1');
INSERT INTO `produccion` VALUES ('42', '35', '2-1256', '4', '1', '02:25:00', '02:25:00', '0', '10', '10', '10');
INSERT INTO `produccion` VALUES ('43', '35', '2-1256', '6', '1', '02:27:00', '02:27:00', '0', '10', '10', '10');
INSERT INTO `produccion` VALUES ('44', '35', '2-1256', '6', '1', '03:08:00', '03:08:00', '12.5', '12.5', '12.5', '12.5');
INSERT INTO `produccion` VALUES ('45', '35', '2-1256', '4', '1', '02:40:00', '04:26:00', '0', '12', '12', '12');
INSERT INTO `produccion` VALUES ('47', '49', '1-7777', '6', '2', '09:07:00', '09:45:00', '500', '50', '50', '210');

-- ----------------------------
-- Table structure for reportes
-- ----------------------------
DROP TABLE IF EXISTS `reportes`;
CREATE TABLE `reportes` (
  `IdReporte` int(11) NOT NULL AUTO_INCREMENT,
  `NoOrden` varchar(255) NOT NULL,
  `Tipo` varchar(255) NOT NULL,
  `Usuario` varchar(255) NOT NULL,
  `FechaInicio` date DEFAULT NULL,
  `FechaFin` date DEFAULT NULL,
  `Estado` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdReporte`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reportes
-- ----------------------------
INSERT INTO `reportes` VALUES ('1', '8514', 'Reporte Produccion', '2', '2017-05-29', '2017-06-04', '0');
INSERT INTO `reportes` VALUES ('2', '7845', 'Reporte Produccion', '2', '2017-06-06', '2017-06-24', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reporte_diario
-- ----------------------------
INSERT INTO `reporte_diario` VALUES ('1', '3-9876', '9876', '2', '2017-06-09', '2017-06-10', '3', '1', 'higienico', null, '');
INSERT INTO `reporte_diario` VALUES ('24', '1-9876', '9876', '1', '2017-06-07', '2017-06-07', '3', '1', 'HIGIENICO', null, '');
INSERT INTO `reporte_diario` VALUES ('25', '1-9876', '9876', '2', '2017-06-07', '2017-06-08', '3', '1', 'HIGIENICO', null, '');
INSERT INTO `reporte_diario` VALUES ('26', '2-9876', '9876', '1', '2017-06-08', '2017-06-08', '3', '1', 'HIGIENICO', null, '');
INSERT INTO `reporte_diario` VALUES ('27', '2-9876', '9876', '2', '2017-06-08', '2017-06-09', '3', '1', 'HIGIENICO', null, '');
INSERT INTO `reporte_diario` VALUES ('28', '3-9876', '9876', '1', '2017-06-09', '2017-06-09', '3', '1', 'HIGIENICO', null, '');
INSERT INTO `reporte_diario` VALUES ('29', '1-7894', '7894', '1', '2017-06-08', '2017-06-08', '3', '1', 'Higienico', null, '');
INSERT INTO `reporte_diario` VALUES ('30', '1-7894', '7894', '2', '2017-06-08', '2017-06-09', '3', '1', 'Higienico', null, '');
INSERT INTO `reporte_diario` VALUES ('31', '2-7894', '7894', '1', '2017-06-09', '2017-06-09', '3', '1', 'Higienico', null, '');
INSERT INTO `reporte_diario` VALUES ('32', '2-7894', '7894', '2', '2017-06-09', '2017-06-10', '3', '1', 'Higienico', null, '');
INSERT INTO `reporte_diario` VALUES ('33', '1-1256', '1256', '1', '2017-06-09', '2017-06-09', '3', '4', 'Higienico', null, '');
INSERT INTO `reporte_diario` VALUES ('34', '1-1256', '1256', '2', '2017-06-09', '2017-06-10', '3', '1', 'Higienico', null, '');
INSERT INTO `reporte_diario` VALUES ('35', '2-1256', '1256', '1', '2017-06-11', '2017-06-12', '3', '1', 'higienico', '3632', '');
INSERT INTO `reporte_diario` VALUES ('36', '2-1256', '1256', '2', '2017-06-12', '2017-06-13', '3', '1', 'HIGIENICO', null, '');
INSERT INTO `reporte_diario` VALUES ('37', '3-1256', '1256', '1', '2017-06-16', '2017-06-17', '3', '555', 'higienico', null, '');
INSERT INTO `reporte_diario` VALUES ('38', '3-1256', '1256', '2', '2017-06-16', '2017-06-17', '3', '4', 'higienico', null, '');
INSERT INTO `reporte_diario` VALUES ('39', '4-1256', '1256', '1', '2017-06-18', '2017-06-18', '3', '7', 'higienico', null, '');
INSERT INTO `reporte_diario` VALUES ('40', '4-1256', '1256', '2', '2017-06-19', '2017-06-20', '3', '77', 'higienico', null, '');
INSERT INTO `reporte_diario` VALUES ('42', '5-1256', '1256', '1', '2017-06-19', '2017-06-20', '3', null, 'igg', null, '');
INSERT INTO `reporte_diario` VALUES ('43', '5-1256', '1256', '2', '2017-06-20', '2017-06-21', '3', null, 'higienico', null, '');
INSERT INTO `reporte_diario` VALUES ('44', '6-1256', '1256', '1', '2017-06-21', '2017-06-21', '3', null, 'higienico', null, '');
INSERT INTO `reporte_diario` VALUES ('45', '6-1256', '1256', '2', '2017-06-22', '2017-06-23', '3', null, 'higienico', null, '');
INSERT INTO `reporte_diario` VALUES ('46', '1-2517', '2517', '1', '2017-06-20', '2017-06-20', '3', null, 'higienico', null, '');
INSERT INTO `reporte_diario` VALUES ('47', '1-2517', '2517', '2', '2017-06-20', '2017-06-21', '3', null, 'higienico', null, '');
INSERT INTO `reporte_diario` VALUES ('48', '2-2517', '2517', '1', '2017-06-21', '2017-06-21', '5', null, 'HIGIENICO', null, '');
INSERT INTO `reporte_diario` VALUES ('49', '1-7777', '7777', '1', '2017-06-21', '2017-06-21', '3', null, 'BLANCO ', '141', '');
INSERT INTO `reporte_diario` VALUES ('50', '1-7777', '7777', '2', '2017-06-21', '2017-06-21', '3', null, 'BLANCO', null, '');

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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tiempos_muertos
-- ----------------------------
INSERT INTO `tiempos_muertos` VALUES ('57', '34', '1-1256', '1256', '18:00:00', '6:00pm-6:00am', '18:10:00', '2', 'ddd');
INSERT INTO `tiempos_muertos` VALUES ('58', '34', '1-1256', '1256', '23:50:00', '6:00pm-6:00am', '01:05:00', '2', 'dddd');
INSERT INTO `tiempos_muertos` VALUES ('60', '35', '2-1256', '1256', '06:00:00', '6:00am-6:00pm', '18:00:00', '1', 'ddd');
INSERT INTO `tiempos_muertos` VALUES ('61', '36', '2-1256', '1256', '18:05:00', '6:00pm-6:00am', '19:00:00', '1', 'dddd');
INSERT INTO `tiempos_muertos` VALUES ('62', '47', '1-2517', '2517', '18:00:00', '6:00pm-6:00am', '18:10:00', '2', 'problemas de fluido electrico');
INSERT INTO `tiempos_muertos` VALUES ('63', '49', '1-7777', '7777', '08:05:00', '6:00am-6:00pm', '08:55:00', '1', 'EKISDE');

-- ----------------------------
-- Table structure for turnos
-- ----------------------------
DROP TABLE IF EXISTS `turnos`;
CREATE TABLE `turnos` (
  `IdTurno` int(11) NOT NULL AUTO_INCREMENT,
  `Turno` varchar(255) DEFAULT NULL,
  `Comentario` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`IdTurno`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of turnos
-- ----------------------------
INSERT INTO `turnos` VALUES ('1', '6:00am-6:00pm', null);
INSERT INTO `turnos` VALUES ('2', '6:00pm-6:00am', null);

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usuarios
-- ----------------------------
INSERT INTO `usuarios` VALUES ('1', 'Alder', 'Alder Hernandez', '7C33FC4A0D1662CF5A5E8EB686A1DEC3', '1', '1');
INSERT INTO `usuarios` VALUES ('2', 'user', 'Bismarck Escobar', 'e10adc3949ba59abbe56e057f20f883e', '1', '1');
INSERT INTO `usuarios` VALUES ('3', 'user1', 'Bismarck Escobar', 'e10adc3949ba59abbe56e057f20f883e', '4', '1');
INSERT INTO `usuarios` VALUES ('4', 'Kevin', 'Kevin  Blanco', null, '5', '1');
INSERT INTO `usuarios` VALUES ('5', 'Mariana', 'Mariana', 'e10adc3949ba59abbe56e057f20f883e', '4', '1');
INSERT INTO `usuarios` VALUES ('6', 'Carlos', 'Carlos M', null, '5', '1');
INSERT INTO `usuarios` VALUES ('7', 'user2', 'user2', 'e10adc3949ba59abbe56e057f20f883e', '3', '1');

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
-- View structure for view_mp_insumos
-- ----------------------------
DROP VIEW IF EXISTS `view_mp_insumos`;
CREATE ALGORITHM=UNDEFINED DEFINER=`Dios`@`%`  VIEW `view_mp_insumos` AS SELECT
                mp.IdMpInsumos,
mp.IdReporteDiario,
i.Descripcion,
mp.Dia,
mp.Noche,
mp.Cantidad_PTA_Agua_Dia,
mp.Cantidad_PTA_Agua_Noche
FROM
                mp_insumos mp
JOIN
insumos i on mp.Descripcion = i.IdInsumo ;

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
-- View structure for view_produccion
-- ----------------------------
DROP VIEW IF EXISTS `view_produccion`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `view_produccion` AS SELECT
	pro.IdProduccion,
	pro.IdReporteDiario,
	pro.NoOrden,
	us.Nombre,
	pro.Maquina,
	pro.HoraInicio,
	pro.HoraFin,
	pro.VelocMaquina,
	pro.Peso,
	pro.Diametro,
	pro.PesoBase
FROM
	produccion pro
JOIN usuarios us ON us.IdUsuario = pro.Operador ;

-- ----------------------------
-- View structure for view_reporte
-- ----------------------------
DROP VIEW IF EXISTS `view_reporte`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `view_reporte` AS SELECT
	rpt.IdReporte AS IdReporte,
	rpt.NoOrden AS NoOrden,
	rpt.Tipo AS Tipo,
	us.Nombre AS Usuario,
	rpt.FechaInicio AS FechaInicio,
	rpt.FechaFin AS FechaFin,
	rpt.Estado AS Estado
FROM
	reportes rpt
INNER JOIN usuarios us ON rpt.Usuario = us.IdUsuario ;

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

-- ----------------------------
-- View structure for view_reportediariodetalle
-- ----------------------------
DROP VIEW IF EXISTS `view_reportediariodetalle`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `view_reportediariodetalle` AS SELECT
	rd.IdReporteDiario,
	rd.Consecutivo,
	rd.NoOrder,
	tr.Turno,
	rd.FechaInicio,
	rd.FechaFinal,
	rd.Coordinador,
	us.Nombre,
	rd.Grupo,
	rd.TipoPapel,
	rd.ProduccionTotal,
	rd.MermaTotal
FROM
	reporte_diario rd
JOIN turnos tr ON rd.Turno = tr.IdTurno
JOIN usuarios us ON us.IdUsuario = rd.Coordinador ;

-- ----------------------------
-- View structure for view_vistacoordinador
-- ----------------------------
DROP VIEW IF EXISTS `view_vistacoordinador`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `view_vistacoordinador` AS SELECT
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
JOIN orden_produccion op ON rd.NoOrder = op.NoOrden
JOIN usuarios us ON  us.IdUsuario=rd.Coordinador
WHERE
	op.Estado = 1 ;
