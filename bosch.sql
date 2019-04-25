-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-04-2019 a las 13:08:51
-- Versión del servidor: 10.1.33-MariaDB
-- Versión de PHP: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bosch`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `area`
--

CREATE TABLE `area` (
  `IDArea` int(11) NOT NULL,
  `IDName` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `ID` int(11) NOT NULL,
  `IDSerie` int(11) DEFAULT NULL,
  `IDProceso` char(1) DEFAULT NULL,
  `IDreference` int(11) DEFAULT NULL,
  `IDArea` char(20) DEFAULT NULL,
  `nombremac` varchar(35) DEFAULT NULL,
  `direccion` varchar(35) DEFAULT NULL,
  `puerto` varchar(35) DEFAULT NULL,
  `IDPuerto` varchar(35) DEFAULT NULL,
  `status` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`ID`, `IDSerie`, `IDProceso`, `IDreference`, `IDArea`, `nombremac`, `direccion`, `puerto`, `IDPuerto`, `status`) VALUES
(1, 666, 'R', 456, 'A.P', 'conectate', 'F7:C5:B4', 'COM14', 'C14', 1),
(2, 666, 'R', 4563, 'A.P', 'noconectar', 'F7:C5:B4', 'COM3', 'C3', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `machine`
--

CREATE TABLE `machine` (
  `IDMachine` int(11) NOT NULL,
  `NameM` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulos`
--

CREATE TABLE `modulos` (
  `ID` int(11) NOT NULL,
  `IDREFERENCIA` varchar(50) DEFAULT NULL,
  `nombremac` varchar(35) DEFAULT NULL,
  `direccion` varchar(35) DEFAULT NULL,
  `puerto` varchar(35) DEFAULT NULL,
  `idpuerto` varchar(35) DEFAULT NULL,
  `status` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `modulos`
--

INSERT INTO `modulos` (`ID`, `IDREFERENCIA`, `nombremac`, `direccion`, `puerto`, `idpuerto`, `status`) VALUES
(3, '0', 'GUNVOLT', 'F7:C5:B7', 'COM14', '14', 1),
(4, 'GABMAQ', 'GUNVOLT', 'F7:C5:B7', 'COM14', '14', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registrodecodigo`
--

CREATE TABLE `registrodecodigo` (
  `IDArea` int(11) DEFAULT NULL,
  `IDMachine` int(11) DEFAULT NULL,
  `IDRange` char(10) DEFAULT NULL,
  `IDDate` date DEFAULT NULL,
  `Access` int(1) DEFAULT NULL,
  `Name` char(20) DEFAULT NULL,
  `Firstname` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `pass` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(40) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `user`, `pass`, `email`) VALUES
(1, 'usuario', 'usuario', 'usuario@usuario.usuario'),
(2, 'usuario1', 'usuario1', 'usuario1@usuario1.usuario1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idreferencia` text,
  `id` mediumint(9) NOT NULL,
  `usuario` varchar(50) NOT NULL DEFAULT '0',
  `contra` varchar(50) NOT NULL DEFAULT '0',
  `nombre` varchar(50) DEFAULT NULL,
  `apellido_p` varchar(30) DEFAULT NULL,
  `apellido_m` varchar(30) DEFAULT NULL,
  `telefono` int(20) DEFAULT NULL,
  `correo` varchar(25) DEFAULT NULL,
  `domicilio` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idreferencia`, `id`, `usuario`, `contra`, `nombre`, `apellido_p`, `apellido_m`, `telefono`, `correo`, `domicilio`) VALUES
('1234FCOGABVERACE', 1, 'gunvolt', '123', 'Gabriel', 'Verduzco', 'Acevedo', 2147483647, 'graysonbelmont@gmail.com', 'Privada Carlos Alcaraz #558'),
('1234FCOGABVERACE', 2, 'gunvolt', '123', 'Gabriel', 'Verduzco', 'Acevedo', 2147483647, 'graysonbelmont@gmail.com', 'Privada Carlos Alcaraz #558'),
('1234FCOGABVERACE', 3, 'gunvolt', '123', 'Gabriel', 'Verduzco', 'Acevedo', 2147483647, 'graysonbelmont@gmail.com', 'Privada Carlos Alcaraz #558');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `modulos`
--
ALTER TABLE `modulos`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `modulos`
--
ALTER TABLE `modulos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
