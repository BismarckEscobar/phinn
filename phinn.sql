/*
Navicat MySQL Data Transfer

Source Server         : localhost-new
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : phinn

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-07-17 09:16:01
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cargas_pulper
-- ----------------------------
INSERT INTO `cargas_pulper` VALUES ('1', '1', '692.0', '65');
INSERT INTO `cargas_pulper` VALUES ('2', '1', '589.0', '65');
INSERT INTO `cargas_pulper` VALUES ('3', '1', '803.0', '65');
INSERT INTO `cargas_pulper` VALUES ('4', '1', '1071.0', '65');
INSERT INTO `cargas_pulper` VALUES ('5', '1', '669.0', '65');
INSERT INTO `cargas_pulper` VALUES ('6', '1', '912.5', '65');
INSERT INTO `cargas_pulper` VALUES ('7', '1', '488.5', '65');
INSERT INTO `cargas_pulper` VALUES ('8', '2', '160.0', '65');
INSERT INTO `cargas_pulper` VALUES ('9', '2', '160.0', '65');
INSERT INTO `cargas_pulper` VALUES ('10', '2', '160.0', '65');
INSERT INTO `cargas_pulper` VALUES ('11', '2', '160.0', '65');
INSERT INTO `cargas_pulper` VALUES ('12', '2', '160.0', '65');
INSERT INTO `cargas_pulper` VALUES ('13', '2', '160.0', '65');
INSERT INTO `cargas_pulper` VALUES ('14', '2', '160.0', '65');
INSERT INTO `cargas_pulper` VALUES ('15', '1', '488.0', '65');
INSERT INTO `cargas_pulper` VALUES ('16', '2', '160.0', '65');
INSERT INTO `cargas_pulper` VALUES ('17', '1', '692.0', '67');
INSERT INTO `cargas_pulper` VALUES ('18', '1', '589.0', '67');
INSERT INTO `cargas_pulper` VALUES ('19', '1', '803.0', '67');
INSERT INTO `cargas_pulper` VALUES ('20', '1', '1071.0', '67');
INSERT INTO `cargas_pulper` VALUES ('21', '1', '669.0', '67');
INSERT INTO `cargas_pulper` VALUES ('22', '1', '912.5', '67');
INSERT INTO `cargas_pulper` VALUES ('23', '1', '488.5', '67');
INSERT INTO `cargas_pulper` VALUES ('24', '2', '160.0', '67');
INSERT INTO `cargas_pulper` VALUES ('25', '2', '160.0', '67');
INSERT INTO `cargas_pulper` VALUES ('26', '2', '160.0', '67');
INSERT INTO `cargas_pulper` VALUES ('27', '2', '160.0', '67');
INSERT INTO `cargas_pulper` VALUES ('28', '2', '160.0', '67');
INSERT INTO `cargas_pulper` VALUES ('29', '2', '160.0', '67');
INSERT INTO `cargas_pulper` VALUES ('30', '2', '160.0', '67');
INSERT INTO `cargas_pulper` VALUES ('31', '1', '635.0', '68');
INSERT INTO `cargas_pulper` VALUES ('32', '1', '638.0', '68');
INSERT INTO `cargas_pulper` VALUES ('33', '1', '670.0', '68');
INSERT INTO `cargas_pulper` VALUES ('34', '1', '647.0', '68');
INSERT INTO `cargas_pulper` VALUES ('35', '1', '605.0', '68');
INSERT INTO `cargas_pulper` VALUES ('36', '1', '760.0', '68');
INSERT INTO `cargas_pulper` VALUES ('37', '1', '592.0', '68');
INSERT INTO `cargas_pulper` VALUES ('38', '1', '625.0', '68');
INSERT INTO `cargas_pulper` VALUES ('39', '1', '619.0', '68');
INSERT INTO `cargas_pulper` VALUES ('40', '2', '614.0', '68');
INSERT INTO `cargas_pulper` VALUES ('41', '2', '777.0', '68');
INSERT INTO `cargas_pulper` VALUES ('42', '12', '160.0', '68');
INSERT INTO `cargas_pulper` VALUES ('43', '12', '160.0', '68');
INSERT INTO `cargas_pulper` VALUES ('44', '12', '160.0', '68');
INSERT INTO `cargas_pulper` VALUES ('45', '12', '160.0', '68');
INSERT INTO `cargas_pulper` VALUES ('46', '12', '160.0', '68');
INSERT INTO `cargas_pulper` VALUES ('47', '12', '160.0', '68');
INSERT INTO `cargas_pulper` VALUES ('48', '12', '160.0', '68');
INSERT INTO `cargas_pulper` VALUES ('49', '12', '160.0', '68');
INSERT INTO `cargas_pulper` VALUES ('50', '12', '160.0', '68');

-- ----------------------------
-- Table structure for categoria
-- ----------------------------
DROP TABLE IF EXISTS `categoria`;
CREATE TABLE `categoria` (
  `IdCategoria` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(100) NOT NULL,
  PRIMARY KEY (`IdCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of categoria
-- ----------------------------
INSERT INTO `categoria` VALUES ('0', '');
INSERT INTO `categoria` VALUES ('1', 'RPTD CARGAS PULPER');
INSERT INTO `categoria` VALUES ('2', 'RPTD INSUMOS');
INSERT INTO `categoria` VALUES ('3', 'LDP MATERIA PRIMA');
INSERT INTO `categoria` VALUES ('4', 'RPTD  PASTA');

-- ----------------------------
-- Table structure for consumoelectrico
-- ----------------------------
DROP TABLE IF EXISTS `consumoelectrico`;
CREATE TABLE `consumoelectrico` (
  `idConsumoElec` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fechaInicio` date NOT NULL,
  `fechaFin` date NOT NULL,
  `horaInicio` time NOT NULL,
  `horaFinal` time NOT NULL,
  `consumoInicial` decimal(10,2) NOT NULL,
  `consumoFinal` decimal(10,2) NOT NULL,
  `consecutivo` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`idConsumoElec`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of consumoelectrico
-- ----------------------------
INSERT INTO `consumoelectrico` VALUES ('1', '2017-07-12', '2017-07-13', '06:00:00', '06:00:00', '6852.00', '6870.00', '1-8585');
INSERT INTO `consumoelectrico` VALUES ('2', '2017-07-10', '2017-07-11', '06:00:00', '06:00:00', '6852.00', '6870.00', '1-7475');

-- ----------------------------
-- Table structure for control_piso
-- ----------------------------
DROP TABLE IF EXISTS `control_piso`;
CREATE TABLE `control_piso` (
  `idControlPiso` int(11) NOT NULL AUTO_INCREMENT,
  `noOrden` int(11) NOT NULL,
  `consecutivo` varchar(10) NOT NULL,
  `fechaInicio` date NOT NULL,
  `fechaFinalizacion` date NOT NULL,
  `fechaCreacion` date NOT NULL,
  `producto` varchar(50) NOT NULL,
  `grupo` varchar(50) NOT NULL,
  `maquina` varchar(20) DEFAULT NULL,
  `horaInicio` time DEFAULT NULL,
  `horaFinal` time DEFAULT NULL,
  PRIMARY KEY (`idControlPiso`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of control_piso
-- ----------------------------
INSERT INTO `control_piso` VALUES ('2', '8585', '1-8585', '2017-07-12', '2017-07-13', '2017-07-12', 'Higienico', 'indefinido-indefinid', '1-2', '06:00:00', '06:00:00');
INSERT INTO `control_piso` VALUES ('3', '7878', '1-7878', '2017-07-10', '2017-07-10', '2017-07-13', 'Higienico', 'grupo 1- grupo 2', '1-2', '06:00:00', '18:00:00');
INSERT INTO `control_piso` VALUES ('4', '7475', '1-7475', '2017-07-10', '2017-07-11', '2017-07-13', 'Higienico', '1-2', '1-2', '06:00:00', '06:00:00');

-- ----------------------------
-- Table structure for control_piso_detalle
-- ----------------------------
DROP TABLE IF EXISTS `control_piso_detalle`;
CREATE TABLE `control_piso_detalle` (
  `idDetalle` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tipo` varchar(50) NOT NULL,
  `codigo` varchar(50) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `unidadMedida` varchar(10) NOT NULL,
  `requisado` decimal(11,2) NOT NULL,
  `piso` decimal(11,2) NOT NULL,
  `consumo` decimal(11,2) NOT NULL,
  `idControlPiso` int(11) NOT NULL,
  `IdInsumo` int(11) DEFAULT NULL,
  PRIMARY KEY (`idDetalle`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of control_piso_detalle
-- ----------------------------
INSERT INTO `control_piso_detalle` VALUES ('8', 'Fibra', '454', 'Blanco impreso', 'Kg', '525.00', '5.00', '520.00', '2', '1');
INSERT INTO `control_piso_detalle` VALUES ('9', 'Fibra', '78', 'Mezclado (color)', 'Kg', '522.00', '22.00', '500.00', '2', '2');
INSERT INTO `control_piso_detalle` VALUES ('10', 'Fibra', '45', 'Poliacrilamida PAM', 'Kg', '625.00', '5.00', '620.00', '2', '3');
INSERT INTO `control_piso_detalle` VALUES ('11', 'Fibra', '45', 'Merma', 'Kg', '211.00', '11.00', '200.00', '2', '12');
INSERT INTO `control_piso_detalle` VALUES ('12', 'quimico', '877', 'gas butano', 'lts', '562.00', '2.00', '560.00', '2', '13');
INSERT INTO `control_piso_detalle` VALUES ('13', 'Quimico', '0', 'DETAC', 'Kg', '444.00', '44.00', '400.00', '2', '11');
INSERT INTO `control_piso_detalle` VALUES ('14', 'Fibra', '454', 'Blanco impreso', 'Kg', '525.00', '5.00', '520.00', '3', '1');
INSERT INTO `control_piso_detalle` VALUES ('15', 'Fibra', '458', 'Mezclado (color)', 'Kg', '485.00', '5.00', '480.00', '3', '2');
INSERT INTO `control_piso_detalle` VALUES ('16', 'Fibra', '888', 'Poliacrilamida PAM', 'Kg', '8888.00', '8.00', '8880.00', '3', '3');
INSERT INTO `control_piso_detalle` VALUES ('17', 'Fibra', '454', 'Blanco impreso', 'Kg', '525.00', '5.00', '520.00', '4', '1');
INSERT INTO `control_piso_detalle` VALUES ('18', 'Quimico', '58', 'Soda caustica', 'Kg', '555.00', '5.00', '5.00', '4', '5');
INSERT INTO `control_piso_detalle` VALUES ('19', 'Quimico', '45', 'Peroxido de hidrogeno', 'Kg', '856.00', '6.00', '850.00', '4', '6');
INSERT INTO `control_piso_detalle` VALUES ('20', 'Quimico', '488', 'GSP-8', 'Kg', '488.00', '8.00', '480.00', '4', '7');
INSERT INTO `control_piso_detalle` VALUES ('21', 'Quimico', '458', 'Aceite vegetal/Hercules', 'Kg', '599.00', '9.00', '590.00', '4', '8');
INSERT INTO `control_piso_detalle` VALUES ('22', 'Quimico', '88', 'Oxido de polietileno PEO', 'Kg', '888.00', '8.00', '880.00', '4', '9');
INSERT INTO `control_piso_detalle` VALUES ('23', 'Quimico', '8999', 'DETAC', 'Kg', '9999.00', '9.00', '9990.00', '4', '11');

-- ----------------------------
-- Table structure for detalle_planes
-- ----------------------------
DROP TABLE IF EXISTS `detalle_planes`;
CREATE TABLE `detalle_planes` (
  `IdDetallePlan` int(11) NOT NULL AUTO_INCREMENT,
  `IdPlan` int(11) NOT NULL,
  `Categoria` varchar(255) DEFAULT NULL,
  `IdInsumo` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdDetallePlan`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of detalle_planes
-- ----------------------------
INSERT INTO `detalle_planes` VALUES ('1', '7', '4', '1');
INSERT INTO `detalle_planes` VALUES ('2', '7', '4', '2');
INSERT INTO `detalle_planes` VALUES ('3', '7', '4', '3');
INSERT INTO `detalle_planes` VALUES ('4', '7', '4', '4');
INSERT INTO `detalle_planes` VALUES ('5', '7', '4', '6');
INSERT INTO `detalle_planes` VALUES ('6', '7', '4', '7');
INSERT INTO `detalle_planes` VALUES ('7', '7', '1', '1');
INSERT INTO `detalle_planes` VALUES ('8', '7', '1', '2');
INSERT INTO `detalle_planes` VALUES ('9', '7', '1', '12');

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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of horas_molienda
-- ----------------------------
INSERT INTO `horas_molienda` VALUES ('1', 'BATIDO', '07:20:00', '09:30:00', '63');
INSERT INTO `horas_molienda` VALUES ('2', 'BATIDO', '09:50:00', '10:20:00', '63');
INSERT INTO `horas_molienda` VALUES ('3', 'BATIDO', '10:40:00', '11:05:00', '63');
INSERT INTO `horas_molienda` VALUES ('4', 'BATIDO', '11:15:00', '11:40:00', '63');
INSERT INTO `horas_molienda` VALUES ('5', 'BATIDO', '11:55:00', '12:40:00', '63');
INSERT INTO `horas_molienda` VALUES ('6', 'BATIDO', '13:00:00', '14:00:00', '63');
INSERT INTO `horas_molienda` VALUES ('7', 'BATIDO', '14:40:00', '15:20:00', '63');
INSERT INTO `horas_molienda` VALUES ('8', 'BATIDO', '16:00:00', '16:40:00', '63');
INSERT INTO `horas_molienda` VALUES ('9', 'BATIDO', '16:50:00', '17:30:00', '63');
INSERT INTO `horas_molienda` VALUES ('10', 'BATIDO', '19:30:00', '20:00:00', '64');
INSERT INTO `horas_molienda` VALUES ('11', 'BATIDO', '20:30:00', '21:00:00', '64');
INSERT INTO `horas_molienda` VALUES ('12', 'BATIDO', '21:00:00', '21:30:00', '64');
INSERT INTO `horas_molienda` VALUES ('13', 'BATIDO', '22:00:00', '22:30:00', '64');
INSERT INTO `horas_molienda` VALUES ('14', 'BATIDO', '00:00:00', '00:30:00', '64');
INSERT INTO `horas_molienda` VALUES ('15', 'BATIDO', '01:00:00', '01:30:00', '64');
INSERT INTO `horas_molienda` VALUES ('16', 'BATIDO', '02:30:00', '03:00:00', '64');
INSERT INTO `horas_molienda` VALUES ('17', 'BATIDO', '04:00:00', '04:30:00', '64');
INSERT INTO `horas_molienda` VALUES ('18', 'BATIDO', '05:00:00', '05:30:00', '64');
INSERT INTO `horas_molienda` VALUES ('19', 'BATIDO', '06:10:00', '09:20:00', '67');

-- ----------------------------
-- Table structure for insumos
-- ----------------------------
DROP TABLE IF EXISTS `insumos`;
CREATE TABLE `insumos` (
  `IdInsumo` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(100) NOT NULL,
  `IdCategoria` int(100) NOT NULL,
  `UnidadMedida` varchar(255) DEFAULT NULL,
  `Tipo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`IdInsumo`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of insumos
-- ----------------------------
INSERT INTO `insumos` VALUES ('1', 'Blanco impreso', '1', 'Kg', 'Fibra');
INSERT INTO `insumos` VALUES ('2', 'Mezclado (color)', '1', 'Kg', 'Fibra');
INSERT INTO `insumos` VALUES ('3', 'Poliacrilamida PAM', '2', 'Kg', 'Fibra');
INSERT INTO `insumos` VALUES ('4', 'Policloruro de aluminio (PAC)', '2', 'Kg', 'Fibra');
INSERT INTO `insumos` VALUES ('5', 'Soda caustica', '2', 'Kg', 'Quimico');
INSERT INTO `insumos` VALUES ('6', 'Peroxido de hidrogeno', '2', 'Kg', 'Quimico');
INSERT INTO `insumos` VALUES ('7', 'GSP-8', '2', 'Kg', 'Quimico');
INSERT INTO `insumos` VALUES ('8', 'Aceite vegetal/Hercules', '2', 'Kg', 'Quimico');
INSERT INTO `insumos` VALUES ('9', 'Oxido de polietileno PEO', '2', 'Kg', 'Quimico');
INSERT INTO `insumos` VALUES ('10', 'Carboxilmetilcelulosa CMC', '2', 'Kg', 'Fibra');
INSERT INTO `insumos` VALUES ('11', 'DETAC', '2', 'Kg', 'Quimico');
INSERT INTO `insumos` VALUES ('12', 'Merma', '1', 'Kg', 'Fibra');
INSERT INTO `insumos` VALUES ('13', 'gas butano', '2', 'lts', 'quimico');

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
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-11 22:35:42');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-11 22:37:18');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-11 22:37:26');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-11 22:38:30');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-11 22:42:09');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-12 00:08:39');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-12 00:47:40');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-12 01:08:32');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-12 15:29:48');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-12 16:47:42');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-12 16:48:07');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-12 16:49:29');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-12 16:49:36');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-12 16:50:23');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-12 17:10:56');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-12 17:13:37');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-12 17:23:03');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-12 17:34:24');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-12 17:52:38');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-12 17:55:17');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-12 18:41:52');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-12 20:58:31');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-12 21:30:38');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-12 21:31:47');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-12 23:07:09');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-12 23:17:24');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-12 23:17:54');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-12 23:27:37');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-12 23:34:17');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-12 23:40:11');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-12 23:42:49');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-13 00:51:31');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-13 15:40:16');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-13 15:50:55');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-13 15:51:54');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-13 16:58:03');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-13 17:00:36');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-13 17:27:45');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-13 17:27:53');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-13 17:30:07');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-13 17:50:24');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-13 17:51:19');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-13 20:25:54');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-13 20:27:54');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-13 20:36:25');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-13 21:10:19');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-13 21:14:15');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-13 21:14:40');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-13 21:16:59');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-13 21:24:19');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-13 21:31:49');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-13 21:40:14');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-13 21:54:47');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-13 21:54:52');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-13 21:55:35');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-13 21:59:50');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-13 22:08:42');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-13 22:28:09');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-13 22:33:46');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-13 22:34:06');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-13 22:58:24');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-13 22:59:51');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-13 23:03:59');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-13 23:04:18');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-13 23:05:11');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-13 23:36:07');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-13 23:36:22');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-14 00:05:47');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-14 00:05:52');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-14 00:06:38');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-14 00:06:57');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-14 00:20:13');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-14 00:35:44');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-14 00:40:31');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-14 00:42:21');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-14 00:49:00');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-14 00:50:25');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-14 01:16:33');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-14 15:58:52');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-14 16:23:25');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-14 22:15:02');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-14 22:56:39');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-14 23:41:40');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-15 00:29:45');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-15 00:38:11');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-15 01:20:14');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-15 01:23:14');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-15 01:26:45');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-15 01:40:14');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-17 15:55:34');
INSERT INTO `log` VALUES (null, 'INGRESO AL SISTEMA EXITOSO', '2017-07-17 16:37:54');

-- ----------------------------
-- Table structure for maquinas
-- ----------------------------
DROP TABLE IF EXISTS `maquinas`;
CREATE TABLE `maquinas` (
  `idMaquina` int(11) NOT NULL AUTO_INCREMENT,
  `maquina` varchar(30) NOT NULL,
  `comentario` varchar(300) NOT NULL,
  PRIMARY KEY (`idMaquina`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of maquinas
-- ----------------------------
INSERT INTO `maquinas` VALUES ('1', 'Maquina 1', 'Maquina 1 2017/06/05');
INSERT INTO `maquinas` VALUES ('2', 'Maquina 2', 'Maquina 2 2017/06/05');
INSERT INTO `maquinas` VALUES ('3', 'Maquina 3', 'Caldera');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mp_insumos
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of orden_produccion
-- ----------------------------
INSERT INTO `orden_produccion` VALUES ('28', '8585', '2', '2017-07-10', '2017-07-15', '2', 'prueba');
INSERT INTO `orden_produccion` VALUES ('29', '8587', '2', '2017-07-09', '2017-07-15', '0', 'prueba');
INSERT INTO `orden_produccion` VALUES ('30', '8965', '7', '2017-07-17', '2017-07-21', '2', 'ORDEN DE PRODUCCION DE PRUEBA');
INSERT INTO `orden_produccion` VALUES ('31', '7878', '2', '2017-07-10', '2017-07-14', '2', 'ddddddddddddddddddd');
INSERT INTO `orden_produccion` VALUES ('32', '9898', '2', '2017-07-10', '2017-07-14', '3', 'dddd');
INSERT INTO `orden_produccion` VALUES ('33', '8989', '7', '2017-07-10', '2017-07-14', '3', 'prueba');
INSERT INTO `orden_produccion` VALUES ('34', '7879', '7', '2017-07-10', '2017-07-14', '3', 'prueba');
INSERT INTO `orden_produccion` VALUES ('35', '8586', '7', '2017-07-10', '2017-07-14', '3', 'prueba 5');
INSERT INTO `orden_produccion` VALUES ('36', '7475', '7', '2017-07-10', '2017-07-14', '1', 'prueba final de orden de producción.');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pasta
-- ----------------------------
INSERT INTO `pasta` VALUES ('1', '60', '1', '0', '455', '555');
INSERT INTO `pasta` VALUES ('2', '60', '2', '0', '455', '555');
INSERT INTO `pasta` VALUES ('3', '60', '3', '0', '455', '555');
INSERT INTO `pasta` VALUES ('4', '60', '4', '0', '455', '555');

-- ----------------------------
-- Table structure for planes
-- ----------------------------
DROP TABLE IF EXISTS `planes`;
CREATE TABLE `planes` (
  `IdPlan` int(11) NOT NULL AUTO_INCREMENT,
  `Fecha` date DEFAULT NULL,
  `Comentario` varchar(255) DEFAULT NULL,
  `Estado` bit(1) DEFAULT NULL,
  PRIMARY KEY (`IdPlan`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of planes
-- ----------------------------
INSERT INTO `planes` VALUES ('7', '2017-07-11', 'prueba', '');

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
  `Merma` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`IdProduccion`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of produccion
-- ----------------------------
INSERT INTO `produccion` VALUES ('32', '61', '1-8585', '6', '1', '06:00:00', '07:30:00', '0', '345', '92', '20.3', '70');
INSERT INTO `produccion` VALUES ('33', '61', '1-8585', '6', '1', '07:30:00', '09:00:00', '0', '339', '93', '20.6', '70');
INSERT INTO `produccion` VALUES ('34', '61', '1-8585', '6', '1', '09:00:00', '11:10:00', '0', '425', '100', '20.5', '70');
INSERT INTO `produccion` VALUES ('35', '61', '1-8585', '6', '1', '11:10:00', '01:00:00', '0', '372', '95', '20.6', '70');
INSERT INTO `produccion` VALUES ('36', '61', '1-8585', '6', '1', '01:00:00', '02:40:00', '0', '364.5', '94', '20', '70');
INSERT INTO `produccion` VALUES ('37', '61', '1-8585', '6', '1', '02:40:00', '03:50:00', '0', '259.5', '78', '19.9', '70');
INSERT INTO `produccion` VALUES ('38', '61', '1-8585', '6', '1', '04:00:00', '06:00:00', '0', '497.5', '108', '20.4', '70');
INSERT INTO `produccion` VALUES ('39', '61', '1-8585', '4', '2', '06:00:00', '04:00:00', '0', '468', '95', '20.1', '60');
INSERT INTO `produccion` VALUES ('40', '61', '1-8585', '4', '2', '04:00:00', '06:00:00', '0', '516', '105', '20.4', '60');
INSERT INTO `produccion` VALUES ('41', '62', '1-8585', '6', '1', '06:00:00', '07:50:00', '0', '437.5', '102', '20.5', '45');
INSERT INTO `produccion` VALUES ('42', '62', '1-8585', '6', '1', '07:50:00', '10:00:00', '0', '545', '108', '19.7', '45');
INSERT INTO `produccion` VALUES ('43', '62', '1-8585', '6', '1', '10:00:00', '11:38:00', '0', '391.5', '95', '20.4', '45');
INSERT INTO `produccion` VALUES ('44', '62', '1-8585', '6', '1', '11:38:00', '02:00:00', '0', '526.5', '110', '20.3', '45');
INSERT INTO `produccion` VALUES ('45', '62', '1-8585', '6', '1', '02:00:00', '04:00:00', '0', '450', '102', '19.4', '45');
INSERT INTO `produccion` VALUES ('46', '62', '1-8585', '6', '1', '04:00:00', '05:50:00', '0', '436', '98', '18.6', '45');
INSERT INTO `produccion` VALUES ('48', '62', '1-8585', '4', '2', '07:51:00', '10:00:00', '0', '653', '117', '19.9', '70');
INSERT INTO `produccion` VALUES ('49', '62', '1-8585', '4', '2', '10:00:00', '11:40:00', '0', '490', '98', '21.3', '70');
INSERT INTO `produccion` VALUES ('50', '62', '1-8585', '4', '2', '11:40:00', '02:00:00', '0', '637', '112', '21.1', '70');
INSERT INTO `produccion` VALUES ('51', '62', '1-8585', '4', '2', '02:00:00', '04:00:00', '0', '520', '106', '19.2', '70');
INSERT INTO `produccion` VALUES ('52', '62', '1-8585', '4', '2', '04:00:00', '06:00:00', '0', '430', '90', '22.5', '70');
INSERT INTO `produccion` VALUES ('53', '62', '1-8585', '4', '2', '06:00:00', '07:51:00', '0', '535.5', '108', '21', '70');
INSERT INTO `produccion` VALUES ('54', '65', '1-7878', '6', '1', '06:00:00', '07:30:00', '0', '345', '92', '20.3', '70');
INSERT INTO `produccion` VALUES ('55', '65', '1-7878', '4', '2', '06:00:00', '04:00:00', '0', '468', '95', '20.1', '60');
INSERT INTO `produccion` VALUES ('56', '67', '1-7475', '6', '1', '06:00:00', '07:30:00', '0', '345', '92', '20.3', '70');
INSERT INTO `produccion` VALUES ('57', '67', '1-7475', '6', '1', '07:30:00', '09:00:00', '0', '339', '93', '20.6', '70');
INSERT INTO `produccion` VALUES ('58', '67', '1-7475', '6', '1', '09:00:00', '11:10:00', '0', '425', '100', '20.5', '70');
INSERT INTO `produccion` VALUES ('60', '67', '1-7475', '6', '1', '11:10:00', '01:00:00', '0', '372', '95', '20.6', '70');
INSERT INTO `produccion` VALUES ('61', '67', '1-7475', '6', '1', '01:00:00', '02:40:00', '0', '364.5', '94', '20', '70');
INSERT INTO `produccion` VALUES ('62', '67', '1-7475', '6', '1', '02:40:00', '03:50:00', '0', '259.5', '78', '19.9', '70');
INSERT INTO `produccion` VALUES ('63', '67', '1-7475', '6', '1', '04:00:00', '06:00:00', '0', '497.5', '108', '20.4', '70');
INSERT INTO `produccion` VALUES ('64', '67', '1-7475', '4', '2', '06:00:00', '04:00:00', '0', '468', '95', '20.1', '60');
INSERT INTO `produccion` VALUES ('65', '67', '1-7475', '4', '2', '04:00:00', '06:00:00', '0', '516', '105', '20.4', '60');
INSERT INTO `produccion` VALUES ('66', '68', '1-7475', '6', '1', '06:00:00', '07:50:00', '0', '437.5', '102', '20.5', '45');
INSERT INTO `produccion` VALUES ('67', '68', '1-7475', '6', '1', '07:50:00', '10:00:00', '0', '545', '108', '19.7', '45');
INSERT INTO `produccion` VALUES ('68', '68', '1-7475', '6', '1', '10:00:00', '11:38:00', '0', '391.5', '95', '20.4', '45');
INSERT INTO `produccion` VALUES ('69', '68', '1-7475', '6', '1', '11:38:00', '02:00:00', '0', '526.5', '110', '20.3', '45');
INSERT INTO `produccion` VALUES ('70', '68', '1-7475', '6', '1', '02:00:00', '04:00:00', '0', '450', '102', '19.4', '45');
INSERT INTO `produccion` VALUES ('71', '68', '1-7475', '6', '1', '04:00:00', '05:50:00', '0', '436', '98', '18.6', '45');
INSERT INTO `produccion` VALUES ('72', '68', '1-7475', '4', '2', '06:00:00', '07:51:00', '0', '535.5', '108', '21', '70');
INSERT INTO `produccion` VALUES ('73', '68', '1-7475', '4', '2', '07:52:00', '10:00:00', '0', '653.5', '117', '19.9', '70');
INSERT INTO `produccion` VALUES ('74', '68', '1-7475', '4', '2', '10:00:00', '11:40:00', '0', '490', '98', '21.3', '70');
INSERT INTO `produccion` VALUES ('75', '68', '1-7475', '4', '2', '11:40:00', '02:00:00', '0', '637', '112', '21.1', '70');
INSERT INTO `produccion` VALUES ('76', '68', '1-7475', '4', '2', '02:00:00', '04:00:00', '0', '520', '106', '19.2', '70');
INSERT INTO `produccion` VALUES ('77', '68', '1-7475', '4', '2', '04:00:00', '06:00:00', '0', '430', '90', '22.5', '70');

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
  `IdPlan` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdReporte`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reportes
-- ----------------------------
INSERT INTO `reportes` VALUES ('1', '8514', 'Reporte Produccion', '2', '2017-05-29', '2017-06-04', '0', null);
INSERT INTO `reportes` VALUES ('2', '7845', 'Reporte Produccion', '2', '2017-06-06', '2017-06-24', '1', null);

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
  `Estado` bit(1) DEFAULT NULL,
  PRIMARY KEY (`IdReporteDiario`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reporte_diario
-- ----------------------------
INSERT INTO `reporte_diario` VALUES ('61', '1-8585', '8585', '1', '2017-07-12', '2017-07-12', '3', null, 'Higienico', '3586.5', '', '\0');
INSERT INTO `reporte_diario` VALUES ('62', '1-8585', '8585', '2', '2017-07-12', '2017-07-13', '3', null, 'Higienico', '6052', '', '');
INSERT INTO `reporte_diario` VALUES ('63', '1-8965', '8965', '1', '2017-07-17', '2017-07-17', '3', null, 'Higienico', null, '', '');
INSERT INTO `reporte_diario` VALUES ('64', '1-8965', '8965', '2', '2017-07-17', '2017-07-18', '3', null, 'Higienico', null, '', '');
INSERT INTO `reporte_diario` VALUES ('65', '1-7878', '7878', '1', '2017-07-10', '2017-07-10', '3', null, 'Higienico', '813', '', '');
INSERT INTO `reporte_diario` VALUES ('66', '1-7878', '7878', '2', '2017-07-10', '2017-07-11', '3', null, 'Higienico', null, '', '');
INSERT INTO `reporte_diario` VALUES ('67', '1-7475', '7475', '1', '2017-07-10', '2017-07-10', '3', null, 'Higienico', '3586.5', '', '');
INSERT INTO `reporte_diario` VALUES ('68', '1-7475', '7475', '2', '2017-07-10', '2017-07-11', '3', null, 'Higienico', '6052.5', '', '');

-- ----------------------------
-- Table structure for tanques
-- ----------------------------
DROP TABLE IF EXISTS `tanques`;
CREATE TABLE `tanques` (
  `IdTanque` int(11) NOT NULL AUTO_INCREMENT,
  `Tanque` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`IdTanque`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tanques
-- ----------------------------
INSERT INTO `tanques` VALUES ('1', 'Tanque #1');
INSERT INTO `tanques` VALUES ('2', 'Tanque #2');
INSERT INTO `tanques` VALUES ('3', 'Tanque #3');
INSERT INTO `tanques` VALUES ('4', 'Tanque #4');
INSERT INTO `tanques` VALUES ('6', 'Tanque #6');
INSERT INTO `tanques` VALUES ('7', 'Tanque #5');

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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tiempos_muertos
-- ----------------------------
INSERT INTO `tiempos_muertos` VALUES ('1', '65', '1-7878', '7878', '06:25:00', '6:00am-6:00pm', '07:00:00', '1', 'cambio de cuchilla');
INSERT INTO `tiempos_muertos` VALUES ('14', '67', '1-7475', '7475', '06:00:00', '6:00am-6:00pm', '07:20:00', '1', 'p');
INSERT INTO `tiempos_muertos` VALUES ('15', '67', '1-7475', '7475', '08:10:00', '6:00am-6:00pm', '08:20:00', '1', 'p');
INSERT INTO `tiempos_muertos` VALUES ('16', '67', '1-7475', '7475', '10:00:00', '6:00am-6:00pm', '10:50:00', '1', 'p');
INSERT INTO `tiempos_muertos` VALUES ('17', '67', '1-7475', '7475', '12:15:00', '6:00am-6:00pm', '12:20:00', '1', 'p');
INSERT INTO `tiempos_muertos` VALUES ('18', '67', '1-7475', '7475', '14:45:00', '6:00am-6:00pm', '15:00:00', '1', 'p');
INSERT INTO `tiempos_muertos` VALUES ('19', '67', '1-7475', '7475', '16:20:00', '6:00am-6:00pm', '16:30:00', '1', 'p');
INSERT INTO `tiempos_muertos` VALUES ('20', '67', '1-7475', '7475', '16:55:00', '6:00am-6:00pm', '17:00:00', '1', 'p');
INSERT INTO `tiempos_muertos` VALUES ('21', '68', '1-7475', '7475', '20:15:00', '6:00pm-6:00am', '20:20:00', '1', 'p');
INSERT INTO `tiempos_muertos` VALUES ('22', '68', '1-7475', '7475', '23:30:00', '6:00pm-6:00am', '23:35:00', '1', 'p');
INSERT INTO `tiempos_muertos` VALUES ('23', '67', '1-7475', '7475', '06:00:00', '6:00am-6:00pm', '07:45:00', '2', 'p');
INSERT INTO `tiempos_muertos` VALUES ('24', '67', '1-7475', '7475', '08:20:00', '6:00am-6:00pm', '08:30:00', '2', 'p');
INSERT INTO `tiempos_muertos` VALUES ('25', '67', '1-7475', '7475', '12:10:00', '6:00am-6:00pm', '12:25:00', '2', 'p');
INSERT INTO `tiempos_muertos` VALUES ('26', '67', '1-7475', '7475', '10:16:00', '6:00am-6:00pm', '10:20:00', '2', 'p');
INSERT INTO `tiempos_muertos` VALUES ('28', '68', '1-7475', '7475', '00:30:00', '6:00pm-6:00am', '00:32:00', '2', 'p');
INSERT INTO `tiempos_muertos` VALUES ('29', '68', '1-7475', '7475', '03:09:00', '6:00pm-6:00am', '03:11:00', '2', 'p');
INSERT INTO `tiempos_muertos` VALUES ('30', '68', '1-7475', '7475', '19:55:00', '6:00pm-6:00am', '20:06:00', '2', 'p');
INSERT INTO `tiempos_muertos` VALUES ('32', '67', '1-7475', '7475', '08:10:00', '6:00am-6:00pm', '08:20:00', '3', 'cambio');
INSERT INTO `tiempos_muertos` VALUES ('33', '67', '1-7475', '7475', '10:00:00', '6:00am-6:00pm', '10:50:00', '3', 'cambio');
INSERT INTO `tiempos_muertos` VALUES ('34', '67', '1-7475', '7475', '12:15:00', '6:00am-6:00pm', '12:20:00', '3', 'cambio');
INSERT INTO `tiempos_muertos` VALUES ('35', '67', '1-7475', '7475', '14:45:00', '6:00am-6:00pm', '15:00:00', '3', 'cambio');
INSERT INTO `tiempos_muertos` VALUES ('36', '67', '1-7475', '7475', '16:20:00', '6:00am-6:00pm', '16:30:00', '3', 'cambio');
INSERT INTO `tiempos_muertos` VALUES ('37', '67', '1-7475', '7475', '16:55:00', '6:00am-6:00pm', '17:00:00', '3', 'cambio');
INSERT INTO `tiempos_muertos` VALUES ('38', '68', '1-7475', '7475', '20:15:00', '6:00pm-6:00am', '20:20:00', '3', 'cambio');
INSERT INTO `tiempos_muertos` VALUES ('39', '68', '1-7475', '7475', '23:30:00', '6:00pm-6:00am', '23:35:00', '3', 'cambio');
INSERT INTO `tiempos_muertos` VALUES ('40', '67', '1-7475', '7475', '06:00:00', '6:00am-6:00pm', '07:20:00', '3', 'cambio');

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
-- View structure for view_detallesplanescat1
-- ----------------------------
DROP VIEW IF EXISTS `view_detallesplanescat1`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost`  VIEW `view_detallesplanescat1` AS SELECT
	dp.IdDetallePlan,
	dp.IdPlan,
	p.Comentario,
	dp.IdInsumo,
	c.categoria,
	i.Descripcion,
	p.Estado
FROM
	detalle_planes dp
INNER JOIN planes p ON p.IdPlan = dp.IdPlan
INNER JOIN categoria c ON c.IdCategoria = dp.Categoria
INNER JOIN insumos i ON i.IdInsumo = dp.IdInsumo
WHERE
	dp.Categoria = 1
AND p.Estado = 1 ;

-- ----------------------------
-- View structure for view_detallesplanescat2
-- ----------------------------
DROP VIEW IF EXISTS `view_detallesplanescat2`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost`  VIEW `view_detallesplanescat2` AS SELECT
	dp.IdPlan,
	dp.IdDetallePlan,
	dp.IdInsumo,
	p.Comentario,
	c.categoria,
	i.Descripcion,
	p.Estado
FROM
	detalle_planes dp
INNER JOIN planes p ON p.IdPlan = dp.IdPlan
INNER JOIN categoria c ON c.IdCategoria = dp.Categoria
INNER JOIN insumos i ON i.IdInsumo = dp.IdInsumo
WHERE
	dp.Categoria = 2
AND p.Estado = 1 ;

-- ----------------------------
-- View structure for view_detallesplanescat3
-- ----------------------------
DROP VIEW IF EXISTS `view_detallesplanescat3`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost`  VIEW `view_detallesplanescat3` AS SELECT
	dp.IdPlan,
	dp.IdDetallePlan,
	p.Comentario,
	dp.IdInsumo,
	c.categoria,
	i.Descripcion,
	p.Estado
FROM
	detalle_planes dp
INNER JOIN planes p ON p.IdPlan = dp.IdPlan
INNER JOIN categoria c ON c.IdCategoria = dp.Categoria
INNER JOIN insumos i ON i.IdInsumo = dp.IdInsumo
WHERE
	dp.Categoria = 3
AND p.Estado = 1 ;

-- ----------------------------
-- View structure for view_detallesplanescat4
-- ----------------------------
DROP VIEW IF EXISTS `view_detallesplanescat4`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost`  VIEW `view_detallesplanescat4` AS SELECT DISTINCT
	dp.IdPlan,
	dp.IdDetallePlan,
	dp.IdInsumo,
	p.Comentario,
	c.categoria,
	t.Tanque,
	p.Estado
FROM
	detalle_planes dp
INNER JOIN planes p ON p.IdPlan = dp.IdPlan
INNER JOIN categoria c ON c.IdCategoria = dp.Categoria
INNER JOIN tanques t ON t.IdTanque = dp.IdInsumo
WHERE
	dp.Categoria = 4
AND p.Estado = 1 ;

-- ----------------------------
-- View structure for view_mp_insumos
-- ----------------------------
DROP VIEW IF EXISTS `view_mp_insumos`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost`  VIEW `view_mp_insumos` AS SELECT
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
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost`  VIEW `view_orden_produccion` AS SELECT
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
-- View structure for view_ordproduccioncoordinador
-- ----------------------------
DROP VIEW IF EXISTS `view_ordproduccioncoordinador`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost`  VIEW `view_ordproduccioncoordinador` AS SELECT
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
-- View structure for view_pasta
-- ----------------------------
DROP VIEW IF EXISTS `view_pasta`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost`  VIEW `view_pasta` AS SELECT
	p.IdPasta,
	p.IdReporteDiario,
	t.Tanque,
	p.Dia,
	p.Noche,
	p.Consumo
FROM
	pasta p
INNER JOIN tanques t ON t.IdTanque = p.Tanque ;

-- ----------------------------
-- View structure for view_produccion
-- ----------------------------
DROP VIEW IF EXISTS `view_produccion`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost`  VIEW `view_produccion` AS SELECT
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
	pro.PesoBase,
	pro.Merma
FROM
	produccion pro
JOIN usuarios us ON us.IdUsuario = pro.Operador 
order by Maquina asc ;

-- ----------------------------
-- View structure for view_reporte
-- ----------------------------
DROP VIEW IF EXISTS `view_reporte`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost`  VIEW `view_reporte` AS SELECT
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
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost`  VIEW `view_reportediario` AS SELECT
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
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost`  VIEW `view_reportediariodetalle` AS SELECT
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
	rd.MermaTotal,
	rd.Estado
FROM
	reporte_diario rd
JOIN turnos tr ON rd.Turno = tr.IdTurno
JOIN usuarios us ON us.IdUsuario = rd.Coordinador
ORDER BY rd.Consecutivo ASC ;

-- ----------------------------
-- View structure for view_vistacoordinador
-- ----------------------------
DROP VIEW IF EXISTS `view_vistacoordinador`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost`  VIEW `view_vistacoordinador` AS SELECT
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
WHERE rd.Estado = 1 ;

-- ----------------------------
-- Procedure structure for cabeceraConsolidado
-- ----------------------------
DROP PROCEDURE IF EXISTS `cabeceraConsolidado`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cabeceraConsolidado`(IN consecutivoC VARCHAR(50))
BEGIN
SET @produccionReal = (SELECT SUM(ProduccionTotal) FROM reporte_diario WHERE Consecutivo=consecutivoC);
SET @mermaMq1 = (SELECT SUM(DISTINCT Merma)	FROM produccion	WHERE	NoOrden = consecutivoC AND Maquina = 1);
SET @mermaMq2 = (SELECT SUM(DISTINCT Merma)	FROM produccion	WHERE	NoOrden = consecutivoC AND Maquina = 2);
SET @mermaTotal = @mermaMq1 + @mermaMq2;
SET @horaInicio = (SELECT horaInicio FROM control_piso WHERE	consecutivo = consecutivoC);
SET @horaFinal = (SELECT horaFinal FROM control_piso WHERE	consecutivo = consecutivoC);
SET @cargaDia = (
SELECT COUNT(DISTINCT cpp.IdCargaPulper) 
	FROM cargas_pulper cpp 
	JOIN reporte_diario rdd ON cpp.IdReporteDiario = rdd.IdReporteDiario
	WHERE rdd.Consecutivo = consecutivoC AND rdd.Turno = 1);
SET @cargaNoche = (
SELECT COUNT(DISTINCT cpp.IdCargaPulper) 
	FROM cargas_pulper cpp 
	JOIN reporte_diario rdd ON cpp.IdReporteDiario = rdd.IdReporteDiario
	WHERE rdd.Consecutivo = consecutivoC AND rdd.Turno = 2);
	SELECT
		rd.NoOrder,
		rd.Consecutivo,
		rd.TipoPapel AS Producto,
		rd.FechaInicio,
		rd.FechaFinal,
		t.Turno,
		@produccionReal AS produccionReal,
		@mermaMq1 + @mermaMq2 AS mermaTotal,
		@produccionReal + @mermaTotal AS produccionTotal,
		cp.horaInicio,
		cp.horaFinal AS horaFin,
		IF(@cargaDia=0, @cargaDia, (((@cargaDia*40)/60)-12)) AS cargaDia,
		IF(@cargaNoche=0, @cargaNoche, (((@cargaNoche*40)/60)-12)) AS cargaNoche,
		((SELECT totalTiempoMMMQ1(consecutivoC)/60)-12) AS modMMaquina1,
		((SELECT totalTiempoMMMQ2(consecutivoC)/60)-12) AS modMMaquina2,
		((SELECT totalTiempoMVMQ1(consecutivoC)/60)-12) AS modVMaquina1,
		((SELECT totalTiempoMVMQ2(consecutivoC)/60)-12) AS modVMaquina2,
		((SELECT totalTiempoMMMQ3(consecutivoC)/60)-12) AS modMMaquina3,
		((SELECT totalTiempoMVMQ3(consecutivoC)/60)-12) AS modVMaquina3,
		((@mermaMq1/60)-12) AS mermaMatMQ1,
		((@mermaMq2/60)-12) AS mermaVespMQ2
	FROM
		reporte_diario rd
	INNER JOIN turnos t ON rd.Turno = t.IdTurno
	INNER JOIN produccion p ON rd.Consecutivo = p.NoOrden
	INNER JOIN control_piso cp ON cp.consecutivo = rd.Consecutivo
	INNER JOIN cargas_pulper cpp ON rd.IdReporteDiario = cpp.IdReporteDiario
	WHERE
		rd.Consecutivo = consecutivoC
		GROUP BY rd.Consecutivo, rd.NoOrder;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for cabeceraReporteDiario
-- ----------------------------
DROP PROCEDURE IF EXISTS `cabeceraReporteDiario`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cabeceraReporteDiario`(IN idReporteD INT)
BEGIN
 SELECT
	rd.NoOrder,
	rd.Consecutivo,
	rd.TipoPapel,
	rd.ProduccionTotal,
	rd.FechaInicio,
	rd.FechaFinal,
	tn.Turno,
	rd.Grupo,
	us.Nombre,
	rd.MermaTotal
FROM
	reporte_diario rd
JOIN usuarios us ON rd.Coordinador = us.IdUsuario
JOIN turnos tn ON rd.Turno = tn.IdTurno
where rd.IdReporteDiario = idReporteD;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for consumoElectrico
-- ----------------------------
DROP PROCEDURE IF EXISTS `consumoElectrico`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `consumoElectrico`(IN fechaInicioC date, IN fechaFinaLC date, IN horaInicioC time, IN horaFinC time, IN consumoInicialC DECIMAL(10,2), IN consumoFinalC DECIMAL(10,2), IN consecutivoC VARCHAR(10) )
BEGIN
IF EXISTS ( SELECT consecutivo FROM consumoElectrico WHERE	consecutivo = consecutivoC)
THEN
BEGIN
UPDATE consumoElectrico ce
SET ce.fechaInicio = fechaInicioC,
ce.fechaFin = fechaFinaLC,
ce.horaInicio = horaInicioC,
ce.horaFinal = horaFinC,
ce.consumoInicial = consumoInicialC,
ce.consumoFinal = consumoFinalC
WHERE
	consecutivo = consecutivoC;
END ;
ELSE
BEGIN
	INSERT INTO consumoElectrico (
	fechaInicio,
	fechaFin,
	horaInicio,
	horaFinal,
	consumoInicial,
	consumoFinal,
	consecutivo
	)
VALUES
	(
	fechaInicioC,
	fechaFinaLC,
	horaInicioC,
	horaFinC,
	consumoInicialC,
	consumoFinalC,
	consecutivoC
	) ;
END ;

END IF ;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for controlPisoInfo
-- ----------------------------
DROP PROCEDURE IF EXISTS `controlPisoInfo`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `controlPisoInfo`(IN consecutivo VARCHAR(50))
BEGIN
	SELECT
		cp.idControlPiso,
		cp.noOrden AS NoOrder,
		cp.consecutivo AS Consecutivo,
		cp.fechaInicio AS FechaInicio,
		cp.fechaFinalizacion AS FechaFinal,
		cp.producto AS TipoPapel,
		cp.grupo,
		cp.maquina,
		cp.horaInicio,
		cp.horaFinal
	FROM
		control_piso cp
	WHERE
		cp.consecutivo = consecutivo;
	END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for detalleControlPiso
-- ----------------------------
DROP PROCEDURE IF EXISTS `detalleControlPiso`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `detalleControlPiso`(IN idInsumoC INT,IN tipoC VARCHAR (100),
	IN codigoC VARCHAR (30),
	IN descripcionC VARCHAR (100),
	IN unidadMedidadC VARCHAR (15),
	IN requisadoC DECIMAL (11,2),
	IN pisoC DECIMAL(11,2),
	IN consumoC DECIMAL (11,2),
	IN idControlPisoC INT)
BEGIN
IF EXISTS ( SELECT idInsumo	FROM	control_piso_detalle WHERE	IdInsumo = idInsumoC AND idControlPiso = idControlPisoC )
THEN

BEGIN
UPDATE control_piso_detalle cpd
SET cpd.codigo = codigoC,
 cpd.requisado = requisadoC,
 cpd.piso = pisoC,
 cpd.consumo = consumoC
WHERE
	IdInsumo = idInsumoC ;
END ;
ELSE
BEGIN
	INSERT INTO control_piso_detalle (
		tipo,
		codigo,
		descripcion,
		unidadMedida,
		requisado,
		piso,
		consumo,
		idControlPiso,
		IdInsumo
	)
VALUES
	(
		tipoC,
		codigoC,
		descripcionC,
		unidadMedidadC,
		requisadoC,
		pisoC,
		consumoC,
		idControlPisoC,
		idInsumoC
	) ;
END ;

END IF ;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for encabezadoControlPiso
-- ----------------------------
DROP PROCEDURE IF EXISTS `encabezadoControlPiso`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `encabezadoControlPiso`(
	IN noOrdenC INT,
	IN consecutivoC VARCHAR (10),
	IN fechaInicioC date,
	IN fechaFinalizacionC date,
	IN fechaCreacionC date,
	IN productoC VARCHAR (50),
	IN grupoC VARCHAR (20),
	IN maquinaC VARCHAR (20),
	IN horaInicioC time,
	IN horaFinalC time
)
BEGIN

IF EXISTS (	SELECT	consecutivo	FROM	control_piso	WHERE	consecutivo = consecutivoC) 
THEN
BEGIN
UPDATE control_piso cp
SET cp.fechaInicio = fechaInicioC,
 cp.fechaFinalizacion = fechaFinalizacionC,
 cp.producto = productoC,
 cp.grupo = grupoC,
 cp.maquina = maquinaC,
 cp.horaInicio = horaInicioC,
 cp.horaFinal = horaFinalC
WHERE
	cp.consecutivo = consecutivoC;
END ;
ELSE
BEGIN
	INSERT INTO control_piso (
		noOrden,
		consecutivo,
		fechaInicio,
		fechaFinalizacion,
		fechaCreacion,
		producto,
		grupo,
		maquina,
		horaInicio,
		horaFinal
	)
VALUES
	(
		noOrdenC,
		consecutivoC,
		fechaInicioC,
		fechaFinalizacionC,
		fechaCreacionC,
		productoC,
		grupoC,
		maquinaC,
		horaInicioC,
		horaFinalC
	) ;
END ;

END IF;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for infoPasta
-- ----------------------------
DROP PROCEDURE IF EXISTS `infoPasta`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `infoPasta`(IN turno INT,
	IN consecutivo VARCHAR (10))
BEGIN
	SELECT
		ps.Tanque,
		ps.Noche,
		ps.Dia,
		rd.Turno
	FROM
		pasta ps
	JOIN reporte_diario rd ON ps.IdReporteDiario = rd.IdReporteDiario
	WHERE
		rd.Consecutivo = consecutivo
	AND rd.Turno = turno;
	END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for reporteControlPiso
-- ----------------------------
DROP PROCEDURE IF EXISTS `reporteControlPiso`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `reporteControlPiso`(IN consecutivo VARCHAR(10))
BEGIN
	SELECT
		cp.consecutivo,
		cp.noOrden,
		cp.fechaInicio,
		cp.fechaFinalizacion,
		cp.maquina,
		cp.producto,
		cp.horaInicio,
		cp.horaFinal,
		cp.grupo,
		cpd.tipo,
		cpd.codigo,
		cpd.descripcion,
		cpd.unidadMedida,
		cpd.requisado,
		cpd.piso,
		cpd.consumo
	FROM
		control_piso cp
	JOIN control_piso_detalle cpd ON cp.idControlPiso = cpd.idControlPiso
	WHERE
		cp.consecutivo = consecutivo;
	END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for totalTiempoMMMQ1
-- ----------------------------
DROP FUNCTION IF EXISTS `totalTiempoMMMQ1`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `totalTiempoMMMQ1`(consecutivoC VARCHAR(10)) RETURNS int(11)
    READS SQL DATA
    DETERMINISTIC
BEGIN
DECLARE	difTotal INT;
SELECT SUM( IF (
	tm.HoraInicio > tm.HoraFin,
	TIMESTAMPDIFF(
		MINUTE,
		tm.HoraInicio,
		CONVERT ('24:00:00', time)
	) + TIMESTAMPDIFF(
		MINUTE,
		CONVERT ('00:00:00', time),
		tm.HoraFin
	),
	TIMESTAMPDIFF(MINUTE,tm.HoraInicio,tm.HoraFin)
)) INTO difTotal
FROM
	tiempos_muertos tm
WHERE
	tm.Consecutivo = consecutivoC
AND tm.Maquina = 1 and tm.Turno = '6:00am-6:00pm';
RETURN difTotal;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for totalTiempoMMMQ2
-- ----------------------------
DROP FUNCTION IF EXISTS `totalTiempoMMMQ2`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `totalTiempoMMMQ2`(consecutivoC INT) RETURNS double
    READS SQL DATA
    DETERMINISTIC
BEGIN
DECLARE	difTotal INT;
SELECT SUM( IF (
	tm.HoraInicio > tm.HoraFin,
	TIMESTAMPDIFF(
		MINUTE,
		tm.HoraInicio,
		CONVERT ('24:00:00', time)
	) + TIMESTAMPDIFF(
		MINUTE,
		CONVERT ('00:00:00', time),
		tm.HoraFin
	),
	TIMESTAMPDIFF(MINUTE,tm.HoraInicio,tm.HoraFin)
)) INTO difTotal
FROM
	tiempos_muertos tm
WHERE
	Consecutivo = consecutivoC
AND tm.Maquina = 2 and tm.Turno = '6:00am-6:00pm';
RETURN difTotal;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for totalTiempoMMMQ3
-- ----------------------------
DROP FUNCTION IF EXISTS `totalTiempoMMMQ3`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `totalTiempoMMMQ3`(consecutivoC VARCHAR (10)) RETURNS double
    READS SQL DATA
    DETERMINISTIC
BEGIN
DECLARE	difTotal INT;
SELECT SUM( IF (
	tm.HoraInicio > tm.HoraFin,
	TIMESTAMPDIFF(
		MINUTE,
		tm.HoraInicio,
		CONVERT ('24:00:00', time)
	) + TIMESTAMPDIFF(
		MINUTE,
		CONVERT ('00:00:00', time),
		tm.HoraFin
	),
	TIMESTAMPDIFF(MINUTE,tm.HoraInicio,tm.HoraFin)
)) INTO difTotal
FROM
	tiempos_muertos tm
WHERE
	tm.Consecutivo = consecutivoC
AND tm.Maquina = 3 and tm.Turno = '6:00am-6:00pm';
RETURN difTotal;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for totalTiempoMVMQ1
-- ----------------------------
DROP FUNCTION IF EXISTS `totalTiempoMVMQ1`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `totalTiempoMVMQ1`(consecutivoC VARCHAR (10)) RETURNS double
    READS SQL DATA
    DETERMINISTIC
BEGIN
DECLARE	difTotal INT;
SELECT SUM( IF (
	tm.HoraInicio > tm.HoraFin,
	TIMESTAMPDIFF(
		MINUTE,
		tm.HoraInicio,
		CONVERT ('24:00:00', time)
	) + TIMESTAMPDIFF(
		MINUTE,
		CONVERT ('00:00:00', time),
		tm.HoraFin
	),
	TIMESTAMPDIFF(MINUTE,tm.HoraInicio,tm.HoraFin)
)) INTO difTotal
FROM
	tiempos_muertos tm
WHERE
	tm.Consecutivo = consecutivoC
AND tm.Maquina = 1 and tm.Turno = '6:00pm-6:00am';
RETURN difTotal;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for totalTiempoMVMQ2
-- ----------------------------
DROP FUNCTION IF EXISTS `totalTiempoMVMQ2`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `totalTiempoMVMQ2`(consecutivoC VARCHAR (10)) RETURNS double
    READS SQL DATA
    DETERMINISTIC
BEGIN
DECLARE	difTotal INT;
SELECT SUM( IF (
	tm.HoraInicio > tm.HoraFin,
	TIMESTAMPDIFF(
		MINUTE,
		tm.HoraInicio,
		CONVERT ('24:00:00', time)
	) + TIMESTAMPDIFF(
		MINUTE,
		CONVERT ('00:00:00', time),
		tm.HoraFin
	),
	TIMESTAMPDIFF(MINUTE,tm.HoraInicio,tm.HoraFin)
)) INTO difTotal
FROM
	tiempos_muertos tm
WHERE
	tm.Consecutivo = consecutivoC
AND tm.Maquina = 2 and tm.Turno = '6:00pm-6:00am';
RETURN difTotal;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for totalTiempoMVMQ3
-- ----------------------------
DROP FUNCTION IF EXISTS `totalTiempoMVMQ3`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `totalTiempoMVMQ3`(consecutivoC VARCHAR (10)) RETURNS double
    READS SQL DATA
    DETERMINISTIC
BEGIN
DECLARE	difTotal INT;
SELECT SUM( IF (
	tm.HoraInicio > tm.HoraFin,
	TIMESTAMPDIFF(
		MINUTE,
		tm.HoraInicio,
		CONVERT ('24:00:00', time)
	) + TIMESTAMPDIFF(
		MINUTE,
		CONVERT ('00:00:00', time),
		tm.HoraFin
	),
	TIMESTAMPDIFF(MINUTE,tm.HoraInicio,tm.HoraFin)
)) INTO difTotal
FROM
	tiempos_muertos tm
WHERE
	tm.Consecutivo = consecutivoC
AND tm.Maquina = 3 and tm.Turno = '6:00pm-6:00am';
RETURN difTotal;
END
;;
DELIMITER ;
