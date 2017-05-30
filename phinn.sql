-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-05-2017 a las 22:40:15
-- Versión del servidor: 10.1.13-MariaDB
-- Versión de PHP: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `phinn`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargo`
--

CREATE TABLE `cargo` (
  `IdCargo` int(11) NOT NULL,
  `Descripcion` varchar(255) DEFAULT NULL,
  `Estado` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `IdEmpleado` int(11) NOT NULL,
  `Nombre` varchar(255) DEFAULT NULL,
  `IdCargo` int(11) DEFAULT NULL,
  `Estado` bit(1) DEFAULT NULL,
  `FechaCreacion` datetime DEFAULT NULL,
  `FechaBaja` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `log`
--

CREATE TABLE `log` (
  `IdUser` varchar(255) DEFAULT NULL,
  `Accion` varchar(255) DEFAULT NULL,
  `Fecha` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `log`
--

INSERT INTO `log` (`IdUser`, `Accion`, `Fecha`) VALUES
(NULL, 'INGRESO AL SISTEMA EXITOSO', '2017-05-26 00:52:12'),
(NULL, 'INGRESO AL SISTEMA EXITOSO', '2017-05-29 22:03:05'),
(NULL, 'INGRESO AL SISTEMA EXITOSO', '2017-05-29 22:07:00'),
(NULL, 'INGRESO AL SISTEMA EXITOSO', '2017-05-29 22:10:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `produccion`
--

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reportes`
--

CREATE TABLE `reportes` (
  `IdReporte` int(11) NOT NULL,
  `NoOrden` varchar(255) NOT NULL,
  `Tipo` varchar(255) NOT NULL,
  `Usuario` varchar(255) NOT NULL,
  `FechaInicio` date DEFAULT NULL,
  `FechaFin` date DEFAULT NULL,
  `Estado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reporte_diario`
--

CREATE TABLE `reporte_diario` (
  `IdReporteDiario` int(11) NOT NULL,
  `NoOrder` varchar(255) NOT NULL,
  `Turno` varchar(255) DEFAULT NULL,
  `FechaInicio` date DEFAULT NULL,
  `FechaFinal` date DEFAULT NULL,
  `Coordinador` int(11) DEFAULT NULL,
  `Grupo` varchar(255) DEFAULT NULL,
  `TipoPapel` varchar(255) DEFAULT NULL,
  `ProduccionTotal` varchar(255) DEFAULT NULL,
  `MermaTotal` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiempos_muertos`
--

CREATE TABLE `tiempos_muertos` (
  `IdReporteDiario` int(11) DEFAULT NULL,
  `NoOrden` varchar(255) DEFAULT NULL,
  `HoraInicio` time DEFAULT NULL,
  `HoraFin` time DEFAULT NULL,
  `Maquina` varchar(255) DEFAULT NULL,
  `Descripcion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `IdUsuario` int(11) NOT NULL,
  `Usuario` varchar(255) DEFAULT NULL,
  `Nombre` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `Privilegio` varchar(255) DEFAULT NULL,
  `Estado` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`IdUsuario`, `Usuario`, `Nombre`, `Password`, `Privilegio`, `Estado`) VALUES
(1, 'Alder', 'Alder Hernandez', '7C33FC4A0D1662CF5A5E8EB686A1DEC3', '1', '1');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`IdCargo`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`IdEmpleado`);

--
-- Indices de la tabla `reportes`
--
ALTER TABLE `reportes`
  ADD PRIMARY KEY (`IdReporte`);

--
-- Indices de la tabla `reporte_diario`
--
ALTER TABLE `reporte_diario`
  ADD PRIMARY KEY (`IdReporteDiario`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`IdUsuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cargo`
--
ALTER TABLE `cargo`
  MODIFY `IdCargo` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
  MODIFY `IdEmpleado` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `reportes`
--
ALTER TABLE `reportes`
  MODIFY `IdReporte` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `reporte_diario`
--
ALTER TABLE `reporte_diario`
  MODIFY `IdReporteDiario` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `IdUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
