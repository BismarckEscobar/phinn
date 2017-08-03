/*
Navicat MySQL Data Transfer

Source Server         : Servidor-Tipitapa
Source Server Version : 50136
Source Host           : 192.168.2.145:3306
Source Database       : phinn

Target Server Type    : MYSQL
Target Server Version : 50136
File Encoding         : 65001

Date: 2017-08-03 08:01:53
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of cargas_pulper
-- ----------------------------
INSERT INTO `cargas_pulper` VALUES ('1', '27', '68.5', '2');
INSERT INTO `cargas_pulper` VALUES ('2', '28', '90.0', '2');
INSERT INTO `cargas_pulper` VALUES ('3', '27', '65.5', '2');
INSERT INTO `cargas_pulper` VALUES ('4', '30', '588.0', '2');
INSERT INTO `cargas_pulper` VALUES ('5', '30', '788.0', '2');
INSERT INTO `cargas_pulper` VALUES ('6', '30', '899.0', '2');
INSERT INTO `cargas_pulper` VALUES ('7', '30', '300.0', '2');
INSERT INTO `cargas_pulper` VALUES ('8', '30', '300.4', '2');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of consumoelectrico
-- ----------------------------
INSERT INTO `consumoelectrico` VALUES ('1', '2017-07-28', '2017-07-28', '06:00:00', '06:00:00', '7934.00', '7900.00', '1-5657');

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
  `horaFinal` time NOT NULL,
  `rptPasta` bit(1) DEFAULT NULL,
  PRIMARY KEY (`idControlPiso`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of control_piso
-- ----------------------------
INSERT INTO `control_piso` VALUES ('1', '5657', '1-5657', '2017-07-28', '2017-07-29', '2017-08-02', 'higienico', 'grupo 1- grupo 3', '1-2', '06:00:00', '06:00:00', '');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of control_piso_detalle
-- ----------------------------
INSERT INTO `control_piso_detalle` VALUES ('1', 'quimico', '45', 'Peroxido', 'kg', '55.00', '5.00', '50.00', '1', '14');
INSERT INTO `control_piso_detalle` VALUES ('2', 'QUIMICO', '55', 'policloruro de aluminio (PAC)', 'KG', '55.00', '5.00', '50.00', '1', '16');
INSERT INTO `control_piso_detalle` VALUES ('3', 'Fibra', '788', 'Mezclado de primera', 'kg', '888.00', '8.00', '880.00', '1', '21');

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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of detalle_planes
-- ----------------------------
INSERT INTO `detalle_planes` VALUES ('1', '10', '2', '14');
INSERT INTO `detalle_planes` VALUES ('2', '10', '2', '16');
INSERT INTO `detalle_planes` VALUES ('3', '10', '2', '17');
INSERT INTO `detalle_planes` VALUES ('4', '10', '2', '19');
INSERT INTO `detalle_planes` VALUES ('5', '10', '1', '27');
INSERT INTO `detalle_planes` VALUES ('6', '10', '4', '1');
INSERT INTO `detalle_planes` VALUES ('7', '10', '4', '2');
INSERT INTO `detalle_planes` VALUES ('8', '10', '4', '3');
INSERT INTO `detalle_planes` VALUES ('9', '10', '1', '28');
INSERT INTO `detalle_planes` VALUES ('10', '10', '1', '29');
INSERT INTO `detalle_planes` VALUES ('11', '10', '1', '30');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of horas_molienda
-- ----------------------------
INSERT INTO `horas_molienda` VALUES ('1', 'BATIDO', '06:10:00', '07:30:00', '2');
INSERT INTO `horas_molienda` VALUES ('2', 'BATIDO', '07:40:00', '08:05:00', '2');

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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of insumos
-- ----------------------------
INSERT INTO `insumos` VALUES ('14', 'Peroxido', '2', 'kg', 'quimico');
INSERT INTO `insumos` VALUES ('16', 'policloruro de aluminio (PAC)', '2', 'KG', 'QUIMICO');
INSERT INTO `insumos` VALUES ('17', 'policrilamida', '2', 'KG', 'QUIMICO');
INSERT INTO `insumos` VALUES ('19', 'Kimene', '2', 'kg', 'quimico');
INSERT INTO `insumos` VALUES ('27', 'Blanco impreso', '1', 'kg', 'Fibra');
INSERT INTO `insumos` VALUES ('28', 'MEZCLADO (COLOR)', '1', 'kg', 'Fibra');
INSERT INTO `insumos` VALUES ('29', 'Merma', '1', 'kg', 'Fibra');
INSERT INTO `insumos` VALUES ('30', 'nueva', '1', 'kg', 'Mezclado 5');

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
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA EXITOSO', '2017-07-26 16:08:31');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA EXITOSO', '2017-07-26 16:15:44');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA EXITOSO', '2017-07-26 16:27:37');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA EXITOSO', '2017-07-26 17:58:26');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-07-27 17:40:33');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-07-28 08:57:51');
INSERT INTO `log` VALUES ('8', 'GUARDO USUARIO BISMARCKESCOBAR CON ROL 1', '2017-07-28 08:59:46');
INSERT INTO `log` VALUES ('8', 'CERRO SESION ', '2017-07-28 09:00:16');
INSERT INTO `log` VALUES ('11', 'INGRESO AL SISTEMA', '2017-07-28 09:00:30');
INSERT INTO `log` VALUES ('11', 'CERRO SESION ', '2017-07-28 09:00:35');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-07-28 09:01:15');
INSERT INTO `log` VALUES ('8', 'GUARDO USUARIO JOSE.JIMENEZ CON ROL 3', '2017-07-28 09:08:09');
INSERT INTO `log` VALUES ('8', 'CERRO SESION ', '2017-07-28 09:08:19');
INSERT INTO `log` VALUES ('12', 'INGRESO AL SISTEMA', '2017-07-28 09:08:30');
INSERT INTO `log` VALUES ('12', 'INSERTO ORDEN DE PRODUCCION NUMERO 7878', '2017-07-28 09:10:46');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-07-28 14:15:03');
INSERT INTO `log` VALUES ('8', 'AGREGO MAQUINA YANKEE UNO', '2017-07-28 14:18:17');
INSERT INTO `log` VALUES ('8', 'AGREGO MAQUINA YANKEE DOS', '2017-07-28 14:18:43');
INSERT INTO `log` VALUES ('8', 'AGREGO INSUMO BLANCO IMPRESO', '2017-07-28 14:21:24');
INSERT INTO `log` VALUES ('8', 'AGREGO INSUMO MEZCLADO DE PRIMERA', '2017-07-28 14:21:40');
INSERT INTO `log` VALUES ('8', 'AGREGO INSUMO COLOR', '2017-07-28 14:21:49');
INSERT INTO `log` VALUES ('8', 'AGREGO INSUMO TETRAPRAQC', '2017-07-28 14:22:16');
INSERT INTO `log` VALUES ('8', 'AGREGO INSUMO FIBRA VIRGEN', '2017-07-28 14:22:31');
INSERT INTO `log` VALUES ('8', 'AGREGO INSUMO MERMA CONVERSION', '2017-07-28 14:22:50');
INSERT INTO `log` VALUES ('8', 'AGREGO INSUMO MERMA PROCESO', '2017-07-28 14:23:01');
INSERT INTO `log` VALUES ('8', 'GUARDO TANQUE #1', '2017-07-28 14:24:20');
INSERT INTO `log` VALUES ('8', 'GUARDO TANQUE #2', '2017-07-28 14:24:33');
INSERT INTO `log` VALUES ('8', 'GUARDO TANQUE #3', '2017-07-28 14:24:43');
INSERT INTO `log` VALUES ('8', 'INSERTO INFORMACION DE CATEGORIA 2 EN PLAN 10', '2017-07-28 14:26:53');
INSERT INTO `log` VALUES ('8', 'INSERTO INFORMACION DE CATEGORIA 2 EN PLAN 10', '2017-07-28 14:26:53');
INSERT INTO `log` VALUES ('8', 'INSERTO INFORMACION DE CATEGORIA 2 EN PLAN 10', '2017-07-28 14:26:53');
INSERT INTO `log` VALUES ('8', 'INSERTO INFORMACION DE CATEGORIA 2 EN PLAN 10', '2017-07-28 14:26:53');
INSERT INTO `log` VALUES ('8', 'ELIMINO INSUMO BLANCO%20IMPRESO', '2017-07-28 14:28:23');
INSERT INTO `log` VALUES ('8', 'AGREGO INSUMO BLANCO IMPRESO', '2017-07-28 14:29:12');
INSERT INTO `log` VALUES ('8', 'INSERTO INFORMACION DE CATEGORIA 1 EN PLAN 10', '2017-07-28 14:29:43');
INSERT INTO `log` VALUES ('8', 'INSERTO ORDEN DE PRODUCCION NUMERO 6688', '2017-07-28 14:34:36');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 1-6688 DEL TURNO 1', '2017-07-28 14:42:41');
INSERT INTO `log` VALUES ('8', 'GUARDO USUARIO JOSEHERNANDEZ CON ROL 4', '2017-07-28 14:43:32');
INSERT INTO `log` VALUES ('8', 'INSERTO INFORMACION DE CATEGORIA 4 EN PLAN 10', '2017-07-28 14:50:10');
INSERT INTO `log` VALUES ('8', 'INSERTO INFORMACION DE CATEGORIA 4 EN PLAN 10', '2017-07-28 14:50:10');
INSERT INTO `log` VALUES ('8', 'INSERTO INFORMACION DE CATEGORIA 4 EN PLAN 10', '2017-07-28 14:50:10');
INSERT INTO `log` VALUES ('8', 'CAMBIO EL ESTADO AL REPORTE CON ID 1', '2017-07-28 14:52:41');
INSERT INTO `log` VALUES ('8', 'CAMBIO EL ESTADO AL REPORTE CON ID 1', '2017-07-28 14:52:55');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 1', '2017-07-28 14:55:10');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 1', '2017-07-28 14:55:11');
INSERT INTO `log` VALUES ('8', 'CERRO SESION ', '2017-07-28 14:57:13');
INSERT INTO `log` VALUES ('13', 'INGRESO AL SISTEMA', '2017-07-28 14:57:57');
INSERT INTO `log` VALUES ('13', 'CERRO SESION ', '2017-07-28 14:58:46');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-07-28 14:59:04');
INSERT INTO `log` VALUES ('8', 'INSERTO ORDEN DE PRODUCCION NUMERO 5656', '2017-07-28 14:59:39');
INSERT INTO `log` VALUES ('8', 'INSERTO ORDEN DE PRODUCCION NUMERO 9999', '2017-07-28 15:01:58');
INSERT INTO `log` VALUES ('8', 'INSERTO ORDEN DE PRODUCCION NUMERO 5657', '2017-07-28 15:03:03');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 1-5657 DEL TURNO 1', '2017-07-28 15:03:33');
INSERT INTO `log` VALUES ('8', 'AGREGO EL CONSECUTIVO NO. 1-5657 DEL TURNO 2', '2017-07-28 15:04:06');
INSERT INTO `log` VALUES ('8', 'CERRO SESION ', '2017-07-28 15:04:29');
INSERT INTO `log` VALUES ('13', 'INGRESO AL SISTEMA', '2017-07-28 15:04:37');
INSERT INTO `log` VALUES ('13', 'CERRO SESION ', '2017-07-28 15:07:49');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-07-28 15:08:11');
INSERT INTO `log` VALUES ('8', 'GUARDO USUARIO KEVINBLANCO CON ROL 5', '2017-07-28 15:09:19');
INSERT INTO `log` VALUES ('8', 'CERRO SESION ', '2017-07-28 15:09:24');
INSERT INTO `log` VALUES ('13', 'INGRESO AL SISTEMA', '2017-07-28 15:09:35');
INSERT INTO `log` VALUES ('13', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 2', '2017-07-28 15:11:22');
INSERT INTO `log` VALUES ('13', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 2', '2017-07-28 15:11:22');
INSERT INTO `log` VALUES ('13', 'AGREGO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 2', '2017-07-28 15:12:08');
INSERT INTO `log` VALUES ('13', 'ACTUALIZO INFORMACION DE PRODUCCION DEL RPT DIARIO CON ID 2', '2017-07-28 15:12:08');
INSERT INTO `log` VALUES ('13', 'ACTUALIZO EL REGISTRO DE LA MERMA DEL RPT CON ID 2 DE LA MAQUINA 1', '2017-07-28 15:13:46');
INSERT INTO `log` VALUES ('13', 'ACTUALIZO EL REGISTRO DE LA MERMA DEL RPT CON ID 2 DE LA MAQUINA 2', '2017-07-28 15:14:52');
INSERT INTO `log` VALUES ('13', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 1-5657 DEL TURNO 6:00am-6:00pm', '2017-07-28 15:16:00');
INSERT INTO `log` VALUES ('13', 'AGREGO NUEVO TIEMPO MUERTO AL CONSECUTIVO 1-5657 DEL TURNO 6:00am-6:00pm', '2017-07-28 15:16:30');
INSERT INTO `log` VALUES ('13', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 2', '2017-07-28 15:20:23');
INSERT INTO `log` VALUES ('13', 'CERRO SESION ', '2017-07-28 15:20:49');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-07-28 15:21:01');
INSERT INTO `log` VALUES ('8', 'AGREGO INSUMO MEZCLADO (COLOR)', '2017-07-28 15:21:45');
INSERT INTO `log` VALUES ('8', 'AGREGO INSUMO MERMA', '2017-07-28 15:21:53');
INSERT INTO `log` VALUES ('8', 'CERRO SESION ', '2017-07-28 15:22:01');
INSERT INTO `log` VALUES ('13', 'INGRESO AL SISTEMA', '2017-07-28 15:22:08');
INSERT INTO `log` VALUES ('13', 'CERRO SESION ', '2017-07-28 15:22:21');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-07-28 15:22:31');
INSERT INTO `log` VALUES ('8', 'INSERTO INFORMACION DE CATEGORIA 1 EN PLAN 10', '2017-07-28 15:22:44');
INSERT INTO `log` VALUES ('8', 'INSERTO INFORMACION DE CATEGORIA 1 EN PLAN 10', '2017-07-28 15:22:44');
INSERT INTO `log` VALUES ('8', 'CERRO SESION ', '2017-07-28 15:22:52');
INSERT INTO `log` VALUES ('13', 'INGRESO AL SISTEMA', '2017-07-28 15:22:59');
INSERT INTO `log` VALUES ('13', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 2', '2017-07-28 15:23:12');
INSERT INTO `log` VALUES ('13', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 2', '2017-07-28 15:24:05');
INSERT INTO `log` VALUES ('13', 'AGREGO UN NUEVO REGISTRO DE HORA MOLIENDA AL REPORTE CON ID 2', '2017-07-28 15:24:30');
INSERT INTO `log` VALUES ('13', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 2', '2017-07-28 15:24:59');
INSERT INTO `log` VALUES ('13', 'AGREGO UN REGISTRO DE PASTA DEL TANQUE CON ID 1 AL RPT CON ID 2', '2017-07-28 15:32:15');
INSERT INTO `log` VALUES ('13', 'CERRO SESION ', '2017-07-28 15:39:04');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-07-28 15:39:19');
INSERT INTO `log` VALUES ('8', 'CERRO SESION ', '2017-07-28 15:42:02');
INSERT INTO `log` VALUES ('13', 'INGRESO AL SISTEMA', '2017-07-28 15:42:09');
INSERT INTO `log` VALUES ('13', 'AGREGO UN REGISTRO DE INSUMO AL RPT CON ID 2', '2017-07-28 15:43:58');
INSERT INTO `log` VALUES ('13', 'AGREGO UN REGISTRO DE PASTA DEL TANQUE CON ID 2 AL RPT CON ID 2', '2017-07-28 15:46:38');
INSERT INTO `log` VALUES ('13', 'CERRO SESION ', '2017-07-28 15:47:39');
INSERT INTO `log` VALUES ('13', 'INGRESO AL SISTEMA', '2017-07-28 15:47:53');
INSERT INTO `log` VALUES ('13', 'CERRO SESION ', '2017-07-28 15:48:09');
INSERT INTO `log` VALUES ('13', 'INGRESO AL SISTEMA', '2017-07-28 15:48:36');
INSERT INTO `log` VALUES ('13', 'CERRO SESION ', '2017-07-28 15:48:49');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-07-28 15:49:00');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 3', '2017-07-28 15:49:37');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 3', '2017-07-28 15:49:39');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 2', '2017-07-28 15:49:54');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 2', '2017-07-28 15:49:56');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DE CONTROL PISO DEL CONSECUTIVO 1-5657', '2017-07-28 15:58:38');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DE CONTROL PISO DEL CONSECUTIVO 1-5657', '2017-07-28 15:58:39');
INSERT INTO `log` VALUES ('8', 'CERRO SESION ', '2017-07-28 16:01:58');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-07-28 16:26:48');
INSERT INTO `log` VALUES ('8', 'CERRO SESION ', '2017-07-28 16:31:17');
INSERT INTO `log` VALUES ('13', 'INGRESO AL SISTEMA', '2017-07-28 16:31:24');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-07-31 07:38:17');
INSERT INTO `log` VALUES ('8', 'CERRO SESION ', '2017-07-31 07:38:37');
INSERT INTO `log` VALUES ('13', 'INGRESO AL SISTEMA', '2017-07-31 07:39:00');
INSERT INTO `log` VALUES ('13', 'CERRO SESION ', '2017-07-31 07:40:58');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-07-31 07:41:07');
INSERT INTO `log` VALUES ('8', 'CERRO SESION ', '2017-07-31 07:42:23');
INSERT INTO `log` VALUES ('13', 'INGRESO AL SISTEMA', '2017-07-31 07:43:30');
INSERT INTO `log` VALUES ('13', 'INGRESO AL SISTEMA', '2017-07-31 07:47:52');
INSERT INTO `log` VALUES ('13', 'CERRO SESION ', '2017-07-31 08:22:53');
INSERT INTO `log` VALUES ('13', 'INGRESO AL SISTEMA', '2017-07-31 11:55:15');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-08-02 07:46:48');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 3', '2017-08-02 07:47:31');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 3', '2017-08-02 07:47:33');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 2', '2017-08-02 07:47:58');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 2', '2017-08-02 07:48:00');
INSERT INTO `log` VALUES ('8', 'CERRO SESION ', '2017-08-02 07:51:37');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-08-02 08:05:44');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-08-02 16:15:36');
INSERT INTO `log` VALUES ('8', 'INSERTO ORDEN DE PRODUCCION NUMERO 7898', '2017-08-02 16:16:30');
INSERT INTO `log` VALUES ('8', 'CERRO SESION ', '2017-08-02 17:06:27');
INSERT INTO `log` VALUES (null, 'CERRO SESION ', '2017-08-02 17:06:31');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-08-02 17:06:50');
INSERT INTO `log` VALUES (null, 'CERRO SESION ', '2017-08-02 17:08:03');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-08-02 17:08:20');
INSERT INTO `log` VALUES ('8', 'CERRO SESION ', '2017-08-02 17:08:59');
INSERT INTO `log` VALUES ('13', 'INGRESO AL SISTEMA', '2017-08-02 17:09:08');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-08-02 17:17:09');
INSERT INTO `log` VALUES ('8', 'CERRO SESION ', '2017-08-02 17:17:19');
INSERT INTO `log` VALUES ('13', 'INGRESO AL SISTEMA', '2017-08-02 17:17:27');
INSERT INTO `log` VALUES ('13', 'ACTUALIZO REGISTRO DE UNA CARGA DEL REPORTE CON ID 2', '2017-08-02 17:17:58');
INSERT INTO `log` VALUES ('13', 'ACTUALIZO REGISTRO DE UNA CARGA DEL REPORTE CON ID 2', '2017-08-02 17:18:08');
INSERT INTO `log` VALUES ('13', 'ACTUALIZO REGISTRO DE UNA CARGA DEL REPORTE CON ID 2', '2017-08-02 17:18:15');
INSERT INTO `log` VALUES ('13', 'CERRO SESION ', '2017-08-02 17:23:12');
INSERT INTO `log` VALUES ('13', 'INGRESO AL SISTEMA', '2017-08-02 17:23:46');
INSERT INTO `log` VALUES ('13', 'CERRO SESION ', '2017-08-02 17:27:05');
INSERT INTO `log` VALUES ('13', 'INGRESO AL SISTEMA', '2017-08-02 17:27:13');
INSERT INTO `log` VALUES ('13', 'CERRO SESION ', '2017-08-02 17:28:12');
INSERT INTO `log` VALUES ('13', 'INGRESO AL SISTEMA', '2017-08-02 17:28:27');
INSERT INTO `log` VALUES ('13', 'CERRO SESION ', '2017-08-02 17:28:40');
INSERT INTO `log` VALUES ('13', 'INGRESO AL SISTEMA', '2017-08-02 17:28:46');
INSERT INTO `log` VALUES ('13', 'CERRO SESION ', '2017-08-02 17:29:02');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-08-02 17:29:14');
INSERT INTO `log` VALUES ('8', 'ELIMINO INSUMO MEZCLADO%20DE%20PRIMERA', '2017-08-02 17:29:46');
INSERT INTO `log` VALUES ('8', 'ELIMINO INSUMO COLOR', '2017-08-02 17:29:50');
INSERT INTO `log` VALUES ('8', 'ELIMINO INSUMO TETRAPRAQC', '2017-08-02 17:29:53');
INSERT INTO `log` VALUES ('8', 'ELIMINO INSUMO FIBRA%20VIRGEN', '2017-08-02 17:29:56');
INSERT INTO `log` VALUES ('8', 'AGREGO INSUMO NUEVA', '2017-08-02 17:31:05');
INSERT INTO `log` VALUES ('8', 'AGREGO INSUMO CUALQUIERA', '2017-08-02 17:31:15');
INSERT INTO `log` VALUES ('8', 'ELIMINO INSUMO CUALQUIERA', '2017-08-02 17:32:51');
INSERT INTO `log` VALUES ('8', 'ELIMINO INSUMO MERMA%20PROCESO', '2017-08-02 17:32:55');
INSERT INTO `log` VALUES ('8', 'ELIMINO INSUMO MERMA%20CONVERSION', '2017-08-02 17:32:58');
INSERT INTO `log` VALUES ('8', 'CERRO SESION ', '2017-08-02 17:33:08');
INSERT INTO `log` VALUES ('13', 'INGRESO AL SISTEMA', '2017-08-02 17:33:17');
INSERT INTO `log` VALUES ('13', 'CERRO SESION ', '2017-08-02 17:33:29');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-08-02 17:33:37');
INSERT INTO `log` VALUES ('8', 'INSERTO INFORMACION DE CATEGORIA 1 EN PLAN 10', '2017-08-02 17:34:25');
INSERT INTO `log` VALUES ('8', 'CERRO SESION ', '2017-08-02 17:34:36');
INSERT INTO `log` VALUES ('13', 'INGRESO AL SISTEMA', '2017-08-02 17:34:44');
INSERT INTO `log` VALUES ('13', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 2', '2017-08-02 17:34:53');
INSERT INTO `log` VALUES ('13', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 2', '2017-08-02 17:35:06');
INSERT INTO `log` VALUES ('13', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 2', '2017-08-02 17:35:08');
INSERT INTO `log` VALUES ('13', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 2', '2017-08-02 17:35:10');
INSERT INTO `log` VALUES ('13', 'AGREGO UNA NUEVA CARGA AL REPORTE CON ID 2', '2017-08-02 17:35:15');
INSERT INTO `log` VALUES ('13', 'CERRO SESION ', '2017-08-02 17:36:06');
INSERT INTO `log` VALUES ('8', 'INGRESO AL SISTEMA', '2017-08-02 17:36:17');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DE CONTROL PISO DEL CONSECUTIVO 1-5657', '2017-08-02 17:52:50');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DE CONSOLIDADO DEL CONSECUTIVO 1-5657', '2017-08-02 17:53:20');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 2', '2017-08-02 17:53:55');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 3', '2017-08-02 17:54:03');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 2', '2017-08-02 17:54:15');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 2', '2017-08-02 18:05:36');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 2', '2017-08-02 18:05:46');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 2', '2017-08-02 18:06:33');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 2', '2017-08-02 18:07:29');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 2', '2017-08-02 18:07:47');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 2', '2017-08-02 18:08:05');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 2', '2017-08-02 18:08:41');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 2', '2017-08-02 18:08:58');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 2', '2017-08-02 18:09:15');
INSERT INTO `log` VALUES ('8', 'GENERO UN REPORTE DEL REPORTE DIARIO CON ID 2', '2017-08-02 18:09:45');

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
INSERT INTO `maquinas` VALUES ('1', 'Maquina 1', 'Yankee 1');
INSERT INTO `maquinas` VALUES ('2', 'Maquina 2', 'Yankee 2');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mp_insumos
-- ----------------------------
INSERT INTO `mp_insumos` VALUES ('1', '2', '17', '50', '0', '10', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of orden_produccion
-- ----------------------------
INSERT INTO `orden_produccion` VALUES ('46', '1674', '8', '2017-07-24', '2017-07-30', '3', 'op jumbo roll');
INSERT INTO `orden_produccion` VALUES ('47', '7878', '12', '2017-07-24', '2017-07-30', '2', 'Datos de prueba');
INSERT INTO `orden_produccion` VALUES ('48', '6688', '8', '2017-07-31', '2017-08-06', '2', 'Semana del 31 de julio al 6 de agosto');
INSERT INTO `orden_produccion` VALUES ('49', '5656', '8', '2017-07-24', '2017-07-30', '3', 'semana del 24 al 30 de julio');
INSERT INTO `orden_produccion` VALUES ('50', '9999', '8', '2017-08-07', '2017-08-13', '3', 'prueba');
INSERT INTO `orden_produccion` VALUES ('51', '5657', '8', '2017-07-28', '2017-07-31', '1', 'prueba');
INSERT INTO `orden_produccion` VALUES ('52', '7898', '8', '2017-08-28', '2017-09-03', '3', 'prueba');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pasta
-- ----------------------------
INSERT INTO `pasta` VALUES ('1', '2', '1', '6000', '0', '700');
INSERT INTO `pasta` VALUES ('2', '2', '2', '9600', '0', '0');

-- ----------------------------
-- Table structure for pasta_procesada
-- ----------------------------
DROP TABLE IF EXISTS `pasta_procesada`;
CREATE TABLE `pasta_procesada` (
  `idPastaProc` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(20) NOT NULL,
  `codigo` varchar(20) DEFAULT NULL,
  `noTanque` int(11) NOT NULL,
  `undMedida` varchar(5) NOT NULL,
  `pstTanqueFinal` decimal(10,2) DEFAULT NULL,
  `consecutivo` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`idPastaProc`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pasta_procesada
-- ----------------------------
INSERT INTO `pasta_procesada` VALUES ('2', 'fibra', '78', '1', 'kg', '98.60', '1-5657');

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of planes
-- ----------------------------
INSERT INTO `planes` VALUES ('10', '2017-07-24', 'orden jumbo roll 1674 24-30/jul', '');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of produccion
-- ----------------------------
INSERT INTO `produccion` VALUES ('1', '2', '1-5657', '14', '2', '06:05:00', '08:00:00', '0', '332', '100', '20', '70');
INSERT INTO `produccion` VALUES ('2', '2', '1-5657', '14', '1', '08:05:00', '10:00:00', '0', '100', '110', '80', '80');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reportes
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
  `Estado` bit(1) DEFAULT NULL,
  PRIMARY KEY (`IdReporteDiario`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reporte_diario
-- ----------------------------
INSERT INTO `reporte_diario` VALUES ('1', '1-6688', '6688', '1', '2017-07-31', '2017-07-31', '10', null, 'higienico', null, '', '');
INSERT INTO `reporte_diario` VALUES ('2', '1-5657', '5657', '1', '2017-07-28', '2017-07-28', '13', null, 'higienico', '432', '', '');
INSERT INTO `reporte_diario` VALUES ('3', '1-5657', '5657', '2', '2017-07-28', '2017-07-29', '10', null, 'higienico', null, '', '');

-- ----------------------------
-- Table structure for tanques
-- ----------------------------
DROP TABLE IF EXISTS `tanques`;
CREATE TABLE `tanques` (
  `IdTanque` int(11) NOT NULL AUTO_INCREMENT,
  `Tanque` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`IdTanque`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tanques
-- ----------------------------
INSERT INTO `tanques` VALUES ('1', 'Tanque #1');
INSERT INTO `tanques` VALUES ('2', 'Tanque #2');
INSERT INTO `tanques` VALUES ('3', 'Tanque #3');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tiempos_muertos
-- ----------------------------
INSERT INTO `tiempos_muertos` VALUES ('1', '2', '1-5657', '5657', '07:10:00', '6:00am-6:00pm', '07:30:00', '1', 'Problemas electricos');
INSERT INTO `tiempos_muertos` VALUES ('2', '2', '1-5657', '5657', '08:00:00', '6:00am-6:00pm', '08:10:00', '2', 'Problemas electricos');

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usuarios
-- ----------------------------
INSERT INTO `usuarios` VALUES ('8', 'Kperalta', 'Keyla Peralta Aleman', 'cc0daad49e992d2cdedc94221083c3d0', '3', '1');
INSERT INTO `usuarios` VALUES ('9', 'Esolis', 'Exaul Espinal Solis', '851519c7540f500a0561d1f62eb52b84', '2', '1');
INSERT INTO `usuarios` VALUES ('10', 'malvarado', 'Mariano Alvarado', 'df34bfca22ba6ef9b0a764394a15fff2', '4', '1');
INSERT INTO `usuarios` VALUES ('12', 'jose.jimenez', 'Jose Jimenez', 'cc0daad49e992d2cdedc94221083c3d0', '3', '1');
INSERT INTO `usuarios` VALUES ('13', 'joseHernandez', 'Jose hernandez', '751d757eccd254a12f0bd825b45d2c97', '4', '1');
INSERT INTO `usuarios` VALUES ('14', 'kevinBlanco', 'Kevin Blanco', null, '5', '1');

-- ----------------------------
-- View structure for view_cargas_pulper
-- ----------------------------
DROP VIEW IF EXISTS `view_cargas_pulper`;
CREATE ALGORITHM=UNDEFINED DEFINER=`manager`@`%` SQL SECURITY DEFINER  VIEW `view_cargas_pulper` AS SELECT
	cp.IdCargaPulper,
	cp.IdInsumo,
	cp.Cantidad,
	cp.IdReporteDiario,
	im.Descripcion,
	im.IdCategoria,
	im.UnidadMedida,
	im.Tipo
FROM
	cargas_pulper cp
JOIN insumos im ON cp.IdInsumo = im.IdInsumo
WHERE im.IdCategoria = 1 ;

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
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `view_produccion` AS SELECT
	pro.IdProduccion,
	pro.IdReporteDiario,
	pro.NoOrden,
	us.Nombre,
	mq.maquina as Maquina,
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
JOIN maquinas mq ON pro.Maquina = mq.idMaquina
order by mq.maquina asc ;

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
SET @fechaInicio = (SELECT fechaInicio FROM control_piso WHERE	consecutivo = consecutivoC);
SET @fechaFinal = (SELECT fechaFinalizacion FROM control_piso WHERE	consecutivo = consecutivoC);
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
		@fechaInicio AS FechaInicio,
		@fechaFinal AS FechaFinal,
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
		cp.horaFinal,
		cp.rptPasta
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
CREATE DEFINER=`root`@`localhost` PROCEDURE `encabezadoControlPiso`(IN noOrdenC INT,IN consecutivoC VARCHAR (10),IN fechaInicioC date,IN fechaFinalizacionC date,IN fechaCreacionC date,IN productoC VARCHAR (50),	IN grupoC VARCHAR (20),	IN maquinaC VARCHAR (20),IN horaInicioC time,IN horaFinalC time, IN rptPastaC INT)
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
 cp.horaFinal = horaFinalC,
 cp.rptPasta = rptPastaC
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
		horaFinal,
		rptPasta
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
		horaFinalC,
		rptPastaC
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
-- Procedure structure for updatePasswordUser
-- ----------------------------
DROP PROCEDURE IF EXISTS `updatePasswordUser`;
DELIMITER ;;
CREATE DEFINER=`manager`@`%` PROCEDURE `updatePasswordUser`(IN idUsuarioC INT, IN oldPassword VARCHAR(150), IN newPassword VARCHAR(150))
BEGIN
   SET @passActual = (SELECT `Password` FROM usuarios WHERE IdUsuario = idUsuarioC);
  IF  @passActual = oldPassword THEN 
    	UPDATE usuarios
			SET `Password` = newPassword
			WHERE IdUsuario = idUsuarioC;
			SELECT 1 AS resultado;
ELSE 
    SELECT 0 AS resultado;
  END IF;
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
