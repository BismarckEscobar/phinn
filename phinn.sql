/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : phinn

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-06-19 13:25:41
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cargas_pulper
-- ----------------------------

-- ----------------------------
-- Table structure for categoria
-- ----------------------------
DROP TABLE IF EXISTS `categoria`;
CREATE TABLE `categoria` (
  `IdCategoria` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(100) NOT NULL,
  PRIMARY KEY (`IdCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of categoria
-- ----------------------------
INSERT INTO `categoria` VALUES ('1', 'CATEGORIA 1');
INSERT INTO `categoria` VALUES ('2', 'CATEGORIA 2');

-- ----------------------------
-- Table structure for insumos
-- ----------------------------
DROP TABLE IF EXISTS `insumos`;
CREATE TABLE `insumos` (
  `IdInsumo` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(100) NOT NULL,
  `IdCategoria` int(100) NOT NULL,
  PRIMARY KEY (`IdInsumo`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

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
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-13 00:08:49');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-13 00:09:30');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-13 00:10:23');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-13 00:39:49');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-13 00:41:12');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-13 15:26:20');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-14 15:44:05');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-14 15:44:29');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-14 16:56:29');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-14 17:00:43');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-14 17:01:59');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-14 17:09:52');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-14 17:17:04');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-14 17:18:25');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-14 17:19:20');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-14 21:56:24');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-15 01:10:32');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-15 15:35:48');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-15 17:37:32');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-15 17:57:17');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-15 18:15:40');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-15 19:02:36');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-15 19:06:44');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-16 16:12:09');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-06-19 15:32:28');

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
INSERT INTO `orden_produccion` VALUES ('16', '7845', '1', '2017-06-05', '2017-06-09', '2', 'd');
INSERT INTO `orden_produccion` VALUES ('17', '2154', '1', '2017-06-12', '2017-06-17', '2', 'd');
INSERT INTO `orden_produccion` VALUES ('18', '6358', '1', '2017-06-11', '2017-06-23', '2', 'd');
INSERT INTO `orden_produccion` VALUES ('19', '9662', '1', '2017-06-18', '2017-06-22', '2', 'd');
INSERT INTO `orden_produccion` VALUES ('20', '5688', '1', '2017-06-12', '2017-06-17', '0', 'Esta orden de trabajo estará vigente hasta nuevo aviso');
INSERT INTO `orden_produccion` VALUES ('21', '3214', '1', '2017-06-25', '2017-06-30', '0', 'Esta sera la orden de producción durante este mes');
INSERT INTO `orden_produccion` VALUES ('22', '2222', '2', '2017-06-06', '2017-06-29', '3', 'd');
INSERT INTO `orden_produccion` VALUES ('23', '3333', '2', '2017-06-06', '2017-06-23', '3', 'ed');
INSERT INTO `orden_produccion` VALUES ('24', '7888', '2', '2017-06-06', '2017-06-15', '2', 'd');
INSERT INTO `orden_produccion` VALUES ('25', '1245', '3', '2017-06-12', '2017-06-13', '2', 'Orden de producción del día');
INSERT INTO `orden_produccion` VALUES ('26', '9876', '3', '2017-06-07', '2017-06-10', '2', 'Orden de produccion del dia');
INSERT INTO `orden_produccion` VALUES ('27', '7894', '3', '2017-06-08', '2017-06-10', '2', 'Nueva orden de producción para lo que resta de la semana');
INSERT INTO `orden_produccion` VALUES ('28', '1256', '3', '2017-06-09', '2017-06-15', '1', 'orden de produccion actualmente activa');

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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reporte_diario
-- ----------------------------
INSERT INTO `reporte_diario` VALUES ('1', '3-9876', '9876', '2', '2017-06-09', '2017-06-10', '3', '1', 'higienico', '', '');
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
INSERT INTO `reporte_diario` VALUES ('35', '2-1256', '1256', '1', '2017-06-11', '2017-06-12', '3', '1', 'higienico', '3620', '');
INSERT INTO `reporte_diario` VALUES ('36', '2-1256', '1256', '2', '2017-06-12', '2017-06-13', '3', '1', 'HIGIENICO', null, '');
INSERT INTO `reporte_diario` VALUES ('37', '3-1256', '1256', '1', '2017-06-11', '2017-06-12', '3', null, 'Igienico', null, '');
INSERT INTO `reporte_diario` VALUES ('38', '3-1256', '1256', '2', '2017-06-11', '2017-06-14', '3', null, 'Igienico', null, '');
INSERT INTO `reporte_diario` VALUES ('39', '4-1256', '1256', '2', '2017-06-14', '2017-06-14', '3', null, 'hhhh', null, '');
INSERT INTO `reporte_diario` VALUES ('40', '4-1256', '1256', '1', '2017-06-14', '2017-06-14', '3', null, 'kkkk', null, '');
INSERT INTO `reporte_diario` VALUES ('41', '5-1256', '1256', '1', '2017-06-14', '2017-06-14', '3', null, 'Igienico', null, '');

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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tiempos_muertos
-- ----------------------------
INSERT INTO `tiempos_muertos` VALUES ('29', '33', '1-1256', '1256', '06:00:00', '6:00am-6:00pm', '06:15:00', '2', 'prueba%20ajax');
INSERT INTO `tiempos_muertos` VALUES ('30', '33', '1-1256', '1256', '06:00:00', '6:00am-6:00pm', '06:15:00', '2', 'prueba%20ajax');
INSERT INTO `tiempos_muertos` VALUES ('31', '33', '1-1256', '1256', '17:02:00', '6:00am-6:00pm', '18:02:00', '1', 'd');
INSERT INTO `tiempos_muertos` VALUES ('32', '33', '1-1256', '1256', '17:02:00', '6:00am-6:00pm', '18:02:00', '1', 'd');
INSERT INTO `tiempos_muertos` VALUES ('33', '33', '1-1256', '1256', '18:00:00', '6:00am-6:00pm', '19:10:00', '2', 'prueba%20de%20ajax');
INSERT INTO `tiempos_muertos` VALUES ('34', '33', '1-1256', '1256', '21:00:00', '6:00am-6:00pm', '21:35:00', '1', 'se averi%C3%B3 la maquina por eso no se trabajo el horario completo');
INSERT INTO `tiempos_muertos` VALUES ('35', '33', '1-1256', '1256', '22:05:00', '6:00am-6:00pm', '23:35:00', '2', 'se volvio a averiar la maquina numero 2 por quien sabe que');
INSERT INTO `tiempos_muertos` VALUES ('36', '33', '1-1256', '1256', '22:05:00', '6:00am-6:00pm', '23:35:00', '2', 'se volvio a averiar la maquina numero 2 por quien sabe que');
INSERT INTO `tiempos_muertos` VALUES ('37', '34', '1-1256', '1256', '17:37:00', '6:00pm-6:00am', '17:37:00', '2', 'ddddd ffff');
INSERT INTO `tiempos_muertos` VALUES ('38', '34', '1-1256', '1256', '17:37:00', '6:00pm-6:00am', '17:37:00', '2', 'ddddd ffff');
INSERT INTO `tiempos_muertos` VALUES ('39', '34', '1-1256', '1256', '18:09:00', '6:00pm-6:00am', '18:09:00', '2', 'Bismarck Francisco Escobar Muñoz');
INSERT INTO `tiempos_muertos` VALUES ('40', '34', '1-1256', '1256', '18:09:00', '6:00pm-6:00am', '18:09:00', '2', 'Bismarck Francisco Escobar Muñoz');
INSERT INTO `tiempos_muertos` VALUES ('41', '35', '2-1256', '1256', '18:10:00', '6:00am-6:00pm', '18:25:00', '2', 'Bismarck Francisco EscobarMuñoz');
INSERT INTO `tiempos_muertos` VALUES ('42', '35', '2-1256', '1256', '18:12:00', '6:00am-6:00pm', '18:12:00', '2', 'Bismarck Escobar Muñoz');
INSERT INTO `tiempos_muertos` VALUES ('43', '35', '2-1256', '1256', '18:12:00', '6:00am-6:00pm', '18:12:00', '2', 'Bismarck Francisco Escobar Muñoz ha guardado con éxito este tiempo muerto');
INSERT INTO `tiempos_muertos` VALUES ('44', '35', '2-1256', '1256', '18:12:00', '6:00am-6:00pm', '18:12:00', '2', 'Bismarck Francisco Escobar Muñoz ha guardado con éxito este tiempo muerto');
INSERT INTO `tiempos_muertos` VALUES ('45', '35', '2-1256', '1256', '06:00:00', '6:00am-6:00pm', '06:00:00', '2', 'adddd');
INSERT INTO `tiempos_muertos` VALUES ('46', '35', '2-1256', '1256', '06:00:00', '6:00am-6:00pm', '06:00:00', '2', 'adddd');
INSERT INTO `tiempos_muertos` VALUES ('47', '35', '2-1256', '1256', '06:00:00', '6:00am-6:00pm', '06:00:00', '2', 'adddd');
INSERT INTO `tiempos_muertos` VALUES ('48', '35', '2-1256', '1256', '06:00:00', '6:00am-6:00pm', '06:00:00', '2', 'adddd');
INSERT INTO `tiempos_muertos` VALUES ('49', '36', '2-1256', '1256', '07:05:00', '6:00pm-6:00am', '08:00:00', '2', 'PRUEBA DE GUARDADO RAPIDO');
INSERT INTO `tiempos_muertos` VALUES ('50', '36', '2-1256', '1256', '09:00:00', '6:00pm-6:00am', '09:51:00', '1', 'PRUEBA DE GUARDADO RAPIDO MAQUINA 1');
INSERT INTO `tiempos_muertos` VALUES ('51', '36', '2-1256', '1256', '10:00:00', '6:00pm-6:00am', '10:23:00', '2', 'problemas de fluido electrico');
INSERT INTO `tiempos_muertos` VALUES ('52', '36', '2-1256', '1256', '06:00:00', '6:00pm-6:00am', '07:10:00', '2', 'LUZ');
INSERT INTO `tiempos_muertos` VALUES ('53', '36', '2-1256', '1256', '20:10:00', '6:00pm-6:00am', '09:20:00', '1', 'LUZ DE NUEVO');
INSERT INTO `tiempos_muertos` VALUES ('54', '36', 'undefined', 'undefined', '18:34:00', 'undefined', '06:34:00', '1', 'undefined');
INSERT INTO `tiempos_muertos` VALUES ('55', '36', 'undefined', 'undefined', '18:34:00', 'undefined', '06:34:00', '1', 'undefined');

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usuarios
-- ----------------------------
INSERT INTO `usuarios` VALUES ('1', 'Alder', 'Alder Hernandez', '7C33FC4A0D1662CF5A5E8EB686A1DEC3', '1', '1');
INSERT INTO `usuarios` VALUES ('2', 'user', 'Bismarck Escobar', 'e10adc3949ba59abbe56e057f20f883e', '1', '1');
INSERT INTO `usuarios` VALUES ('3', 'user1', 'Bismarck Escobar', 'e10adc3949ba59abbe56e057f20f883e', '4', '1');
INSERT INTO `usuarios` VALUES ('4', 'Kevin', 'Kevin  Blanco', null, '5', '1');
INSERT INTO `usuarios` VALUES ('5', 'Mariana', 'Mariana', 'e10adc3949ba59abbe56e057f20f883e', '4', '1');
INSERT INTO `usuarios` VALUES ('6', 'Carlos', 'Carlos M', null, '5', '1');

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
