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

) ENGINE=InnoDB AUTO_INCREMENT=272 DEFAULT CHARSET=latin1;




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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;



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

) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;


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

) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=latin1;



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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;


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

) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=latin1;


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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;


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

) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;


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

) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;


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

) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;


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
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;



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
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;



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

) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;


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
CREATE ALGORITHM=UNDEFINED   VIEW `view_cargas_pulper_completo` AS SELECT
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
CREATE  VIEW `view_detallesplanescat1` AS SELECT
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
CREATE  VIEW `view_detallesplanescat2` AS SELECT
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
CREATE  VIEW `view_detallesplanescat3` AS SELECT
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
CREATE  VIEW `view_detallesplanescat4` AS SELECT DISTINCT
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
CREATE ALGORITHM=UNDEFINED   VIEW `view_mp_insumos` AS SELECT
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
CREATE  VIEW `view_orden_produccion` AS SELECT
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
CREATE  VIEW `view_ordproduccioncoordinador` AS SELECT
                ord.IdOrden AS IdOrden,
                ord.NoOrden AS NoOrden,
                us.Nombre AS Usuario,
                ord.FechaInicio AS FechaInicio,
                ord.FechaFin AS FechaFin,
                ord.Estado AS Estado
FROM
                orden_produccion ord
INNER JOIN usuarios us ON ord.Usuario = us.IdUsuario
WHERE (ord.Estado= 1)
or (ord.Estado= 2)

ORDER BY ord.Estado=1 DESC ;

-- ----------------------------
-- View structure for view_pasta
-- ----------------------------
DROP VIEW IF EXISTS `view_pasta`;
CREATE ALGORITHM=UNDEFINED   VIEW `view_pasta` AS SELECT
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
CREATE  VIEW `view_produccion` AS SELECT
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
CREATE  VIEW `view_reporte` AS SELECT
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
CREATE  VIEW `view_reportediario` AS SELECT
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
CREATE  VIEW `view_reportediariodetalle` AS SELECT
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
CREATE  VIEW `view_vistacoordinador` AS SELECT
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
CREATE  PROCEDURE `cabeceraConsolidado`(IN consecutivo VARCHAR(50))
BEGIN
	SELECT
		rd.NoOrder,
		rd.Consecutivo,
		rd.TipoPapel AS Producto,
		rd.FechaInicio,
		rd.FechaFinal,
		t.Turno,
		SUM(DISTINCT rd.ProduccionTotal) AS ProduccionTotal,
				(
					SELECT
						SUM(DISTINCT Merma)
					FROM
						produccion
					WHERE
						NoOrden = consecutivo
				) AS Merma,
		(SUM(DISTINCT rd.ProduccionTotal) + SUM(DISTINCT Merma)) AS ProdTotal
	FROM
		reporte_diario rd
	INNER JOIN turnos t ON rd.Turno = t.IdTurno
	INNER JOIN produccion p on rd.Consecutivo = p.NoOrden
	WHERE
		rd.Consecutivo = consecutivo;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for cabeceraReporteDiario
-- ----------------------------
DROP PROCEDURE IF EXISTS `cabeceraReporteDiario`;
DELIMITER ;;
CREATE  PROCEDURE `cabeceraReporteDiario`(IN idReporteD INT)
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
CREATE  PROCEDURE `consumoElectrico`(IN fechaInicioC date, IN fechaFinaLC date, IN horaInicioC time, IN horaFinC time, IN consumoInicialC DECIMAL(10,2), IN consumoFinalC DECIMAL(10,2), IN consecutivoC VARCHAR(10) )
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
CREATE  PROCEDURE `controlPisoInfo`(IN consecutivo VARCHAR(50))
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
CREATE  PROCEDURE `detalleControlPiso`(IN idInsumoC INT,IN tipoC VARCHAR (100),
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
CREATE  PROCEDURE `encabezadoControlPiso`(
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
CREATE  PROCEDURE `infoPasta`(IN turno INT,
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
CREATE  PROCEDURE `reporteControlPiso`(IN consecutivo VARCHAR(10))
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

