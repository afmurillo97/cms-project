-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 16-08-2022 a las 21:27:04
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cms`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `id` int(11) NOT NULL,
  `idCliente` int(11) DEFAULT NULL,
  `direccion` varchar(30) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `idServicio` int(11) DEFAULT NULL,
  `serie` varchar(30) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `tipo` varchar(30) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `inventario` varchar(30) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `idTipoEquipo` int(11) DEFAULT NULL,
  `idEquipo` int(11) DEFAULT NULL,
  `idRegistro` int(11) DEFAULT NULL,
  `ubicacion` varchar(30) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fechaEliminacion` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fechaCreacion` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignarRutinas`
--

CREATE TABLE `asignarRutinas` (
  `id` int(11) NOT NULL,
  `idProtocolo` int(11) DEFAULT NULL,
  `idCategoria` int(11) DEFAULT NULL,
  `idRutina` int(11) DEFAULT NULL,
  `fechaEliminacion` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fechaCreacion` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nivel` varchar(15) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `descripcion` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fechaEliminacion` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fechaCreacion` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nivel`, `descripcion`, `fechaEliminacion`, `fechaCreacion`) VALUES
(1, 'medio', 'ACCESORIOS', NULL, '2022-08-05 21:08:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `nit` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `codigo` varchar(30) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `juridica` varchar(15) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `representante` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `direccion` longtext COLLATE utf8_spanish2_ci DEFAULT NULL,
  `telefono` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `celular` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `email` varchar(30) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `observacion` text COLLATE utf8_spanish2_ci DEFAULT NULL,
  `logo` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `encabezado` varchar(5) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `imgEncabezado` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fechaEliminacion` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fechaCreacion` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `nit`, `codigo`, `juridica`, `representante`, `direccion`, `telefono`, `celular`, `email`, `observacion`, `logo`, `encabezado`, `imgEncabezado`, `fechaEliminacion`, `fechaCreacion`) VALUES
(1, 'Homero J Simpson', '123456', '123456', 'privada', 'Marge Simpson', '[\"Springfield\",\"Av Siempre viva\",\"Bar de Moe\",\"\",\"\"]', '3333333', '33333333333', 'homero@gmail.com', '', '', 'no', '', NULL, '2022-08-09 13:57:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `descripcionBiomedica`
--

CREATE TABLE `descripcionBiomedica` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `descripcion` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fechaEliminacion` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fechaCreacion` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `descripcionBiomedica`
--

INSERT INTO `descripcionBiomedica` (`id`, `nombre`, `descripcion`, `fechaEliminacion`, `fechaCreacion`) VALUES
(1, 'abab', '', NULL, '2022-08-11 16:18:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ecri`
--

CREATE TABLE `ecri` (
  `id` int(11) NOT NULL,
  `codigo` varchar(30) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `nombre` varchar(30) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fechaEliminacion` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fechaCreacion` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `ecri`
--

INSERT INTO `ecri` (`id`, `codigo`, `nombre`, `fechaEliminacion`, `fechaCreacion`) VALUES
(1, '1222', 'aaaa', NULL, '2022-08-11 13:37:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
--

CREATE TABLE `empresas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `nit` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `direccion` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `telefono` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `email` varchar(30) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `resolucion` varchar(400) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fechaEliminacion` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fechaCreacion` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `empresas`
--

INSERT INTO `empresas` (`id`, `nombre`, `nit`, `direccion`, `telefono`, `email`, `resolucion`, `fechaEliminacion`, `fechaCreacion`) VALUES
(1, 'ELECTRONITECH', '0000000-2', '23213123213', '21312321', '12312321', '', NULL, '2022-08-03 21:06:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos`
--

CREATE TABLE `equipos` (
  `id` int(11) NOT NULL,
  `idMarca` int(11) DEFAULT NULL,
  `idModelo` int(11) DEFAULT NULL,
  `idRegistro` int(11) DEFAULT NULL,
  `vidaUtil` varchar(30) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `documento` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fechaEliminacion` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fechaCreacion` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fabricantes`
--

CREATE TABLE `fabricantes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `celular` varchar(25) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `direccion` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ciudad` varchar(30) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `email` varchar(30) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fechaEliminacion` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fechaCreacion` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `fabricantes`
--

INSERT INTO `fabricantes` (`id`, `nombre`, `celular`, `direccion`, `ciudad`, `email`, `fechaEliminacion`, `fechaCreacion`) VALUES
(1, 'asasas', NULL, 'a', 'a', '1a', NULL, '2022-08-05 12:44:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupoServicio`
--

CREATE TABLE `grupoServicio` (
  `id` int(11) NOT NULL,
  `nombre` varchar(18) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `descripcion` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fechaEliminacion` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fechaCreacion` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `grupoServicio`
--

INSERT INTO `grupoServicio` (`id`, `nombre`, `descripcion`, `fechaEliminacion`, `fechaCreacion`) VALUES
(1, 'jjjj', '', NULL, '2022-08-10 12:57:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `manifiestos`
--

CREATE TABLE `manifiestos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `documento` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `descripcion` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fechaEliminacion` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fechaCreacion` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `manifiestos`
--

INSERT INTO `manifiestos` (`id`, `nombre`, `documento`, `descripcion`, `fechaEliminacion`, `fechaCreacion`) VALUES
(1, '2222', 'undefined', 'bbb', NULL, '2022-08-10 23:31:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcas`
--

CREATE TABLE `marcas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(18) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `descripcion` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fechaEliminacion` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fechaCreacion` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `marcas`
--

INSERT INTO `marcas` (`id`, `nombre`, `descripcion`, `fechaEliminacion`, `fechaCreacion`) VALUES
(1, 'samsung', '', NULL, '2022-08-10 16:23:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modelos`
--

CREATE TABLE `modelos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `idMarca` int(11) DEFAULT NULL,
  `descripcion` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fechaEliminacion` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fechaCreacion` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `modelos`
--

INSERT INTO `modelos` (`id`, `nombre`, `idMarca`, `descripcion`, `fechaEliminacion`, `fechaCreacion`) VALUES
(1, '1997', 1, 'asasas', NULL, '2022-08-10 16:44:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

CREATE TABLE `permisos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `descripcion` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fechaEliminacion` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fechaCreacion` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `permisos`
--

INSERT INTO `permisos` (`id`, `nombre`, `descripcion`, `fechaEliminacion`, `fechaCreacion`) VALUES
(1, 'configuracion', NULL, NULL, '2022-08-03 21:04:54'),
(2, 'ver empresa', NULL, NULL, '2022-08-03 21:04:54'),
(3, 'editar empresa', NULL, NULL, '2022-08-03 21:05:16'),
(4, 'usuarios', NULL, NULL, '2022-08-03 21:08:08'),
(5, 'crear permisos', NULL, NULL, '2022-08-03 21:09:43'),
(6, 'ver permisos', NULL, NULL, '2022-08-03 21:09:43'),
(7, 'editar permisos', NULL, NULL, '2022-08-03 21:11:27'),
(8, 'anular permisos', NULL, NULL, '2022-08-03 21:11:27'),
(9, 'crear usuarios', NULL, NULL, '2022-08-03 21:11:27'),
(10, 'ver usuarios', NULL, NULL, '2022-08-03 21:11:27'),
(11, 'editar usuarios', NULL, NULL, '2022-08-03 21:11:27'),
(12, 'anular usuarios', NULL, NULL, '2022-08-03 21:11:27'),
(13, 'clientes', NULL, NULL, '2022-08-03 21:11:27'),
(14, 'crear clientes', NULL, NULL, '2022-08-03 21:11:27'),
(15, 'ver clientes', NULL, NULL, '2022-08-03 21:11:27'),
(16, 'editar clientes', NULL, NULL, '2022-08-03 21:11:27'),
(17, 'anular clientes', NULL, NULL, '2022-08-03 21:11:27'),
(18, 'proveedores', NULL, NULL, '2022-08-03 21:11:27'),
(19, 'crear proveedores', NULL, NULL, '2022-08-03 21:11:27'),
(20, 'ver proveedores', NULL, NULL, '2022-08-03 21:11:27'),
(21, 'editar proveedores', NULL, NULL, '2022-08-03 21:11:27'),
(22, 'anular proveedores', NULL, NULL, '2022-08-03 21:11:27'),
(23, 'crear fabricantes', NULL, NULL, '2022-08-03 21:11:27'),
(24, 'ver fabricantes', NULL, NULL, '2022-08-03 21:11:27'),
(25, 'editar fabricantes', NULL, NULL, '2022-08-03 21:11:27'),
(26, 'anular fabricantes', NULL, NULL, '2022-08-03 21:11:27'),
(27, 'gestion', '', NULL, '2022-08-05 20:20:22'),
(28, 'ver categorias', '', NULL, '2022-08-05 20:20:39'),
(29, 'editar categorias', '', NULL, '2022-08-05 20:20:46'),
(30, 'anular categorias', '', NULL, '2022-08-05 20:20:54'),
(31, 'crear categorias', '', NULL, '2022-08-05 20:21:09'),
(32, 'crear rutinas', '', NULL, '2022-08-05 21:13:00'),
(33, 'editar rutinas', '', NULL, '2022-08-05 21:13:08'),
(34, 'ver rutinas', '', NULL, '2022-08-05 21:13:15'),
(35, 'anular rutinas', '', NULL, '2022-08-05 21:13:21'),
(36, 'crear protocolos', '', NULL, '2022-08-09 15:41:07'),
(37, 'ver protocolos', '', NULL, '2022-08-09 15:41:14'),
(38, 'editar protocolos', '', NULL, '2022-08-09 15:41:20'),
(39, 'anular protocolos', '', NULL, '2022-08-09 15:41:26'),
(40, 'administrador', '', NULL, '2022-08-09 20:03:03'),
(41, 'crear variable', '', NULL, '2022-08-09 20:03:20'),
(42, 'ver variable', '', NULL, '2022-08-09 20:03:29'),
(43, 'editar variable', '', NULL, '2022-08-09 20:03:36'),
(44, 'anular variable', '', NULL, '2022-08-09 20:03:36'),
(49, 'crear tipoVariable', '', NULL, '2022-08-09 20:03:20'),
(50, 'ver tipoVariable', '', NULL, '2022-08-09 20:03:29'),
(51, 'editar tipoVariable', '', NULL, '2022-08-09 20:03:36'),
(52, 'anular tipoVariable', '', NULL, '2022-08-09 20:03:36'),
(53, 'crear grupoServicio', '', NULL, '2022-08-10 12:54:14'),
(54, 'ver grupoServicio', '', NULL, '2022-08-10 12:54:19'),
(55, 'editar grupoServicio', '', NULL, '2022-08-10 12:54:29'),
(56, 'anular grupoServicio', '', NULL, '2022-08-10 12:54:36'),
(57, 'ver servicios', '', NULL, '2022-08-10 13:01:14'),
(58, 'crear servicios', '', NULL, '2022-08-10 13:01:21'),
(59, 'editar servicios', '', NULL, '2022-08-10 13:01:28'),
(60, 'anular servicios', '', NULL, '2022-08-10 13:01:35'),
(61, 'ver registros', '', NULL, '2022-08-10 13:31:09'),
(62, 'crear registros', '', NULL, '2022-08-10 13:31:18'),
(63, 'editar registros', '', NULL, '2022-08-10 13:31:26'),
(64, 'anular registros', '', NULL, '2022-08-10 13:31:34'),
(65, 'ver marcas', '', NULL, '2022-08-10 16:20:37'),
(66, 'crear marcas', '', NULL, '2022-08-10 16:20:43'),
(67, 'editar marcas', '', NULL, '2022-08-10 16:20:50'),
(68, 'anular marcas', '', NULL, '2022-08-10 16:20:56'),
(69, 'ver modelos', '', NULL, '2022-08-10 16:43:01'),
(70, 'crear modelos', '', NULL, '2022-08-10 16:43:07'),
(71, 'editar modelos', '', NULL, '2022-08-10 16:43:13'),
(72, 'anular modelos', '', NULL, '2022-08-10 16:43:18'),
(73, 'ver manifiestos', '', NULL, '2022-08-10 22:59:12'),
(74, 'crear manifiestos', '', NULL, '2022-08-10 23:00:06'),
(75, 'editar manifiestos', '', NULL, '2022-08-10 23:00:48'),
(76, 'anular manifiestos', '', NULL, '2022-08-10 23:00:58'),
(77, 'ver ecri', '', NULL, '2022-08-11 13:36:58'),
(78, 'crear ecri', '', NULL, '2022-08-11 13:37:03'),
(79, 'editar ecri', '', NULL, '2022-08-11 13:37:09'),
(80, 'anular ecri', '', NULL, '2022-08-11 13:37:17'),
(81, 'equipos', '', NULL, '2022-08-11 16:16:06'),
(82, 'crear descripcion', '', NULL, '2022-08-11 16:16:12'),
(83, 'ver descripcion', '', NULL, '2022-08-11 16:16:19'),
(84, 'editar descripcion', '', NULL, '2022-08-11 16:16:25'),
(85, 'anular descripcion', '', NULL, '2022-08-11 16:16:33'),
(86, 'crear tipoEquipo', '', NULL, '2022-08-11 17:32:10'),
(87, 'ver tipoEquipo', '', NULL, '2022-08-11 17:32:16'),
(88, 'editar tipoEquipo', '', NULL, '2022-08-11 17:32:21'),
(89, 'anular tipoEquipo', '', NULL, '2022-08-11 17:32:27'),
(90, 'crear equipos', '', NULL, '2022-08-12 20:49:30'),
(91, 'ver equipos', '', NULL, '2022-08-12 20:49:36'),
(92, 'editar equipos', '', NULL, '2022-08-12 20:49:45'),
(93, 'anular equipos', '', NULL, '2022-08-12 20:49:52'),
(94, 'crear articulos', '', NULL, '2022-08-12 20:50:04'),
(95, 'ver articulos', '', NULL, '2022-08-12 20:50:11'),
(96, 'editar articulos', '', NULL, '2022-08-12 20:50:19'),
(97, 'anular articulos', '', NULL, '2022-08-12 20:50:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos_usuarios`
--

CREATE TABLE `permisos_usuarios` (
  `id` int(11) NOT NULL,
  `idUsuario` int(11) DEFAULT NULL,
  `idPermiso` int(11) DEFAULT NULL,
  `habilitado` varchar(2) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fechaCreacion` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `permisos_usuarios`
--

INSERT INTO `permisos_usuarios` (`id`, `idUsuario`, `idPermiso`, `habilitado`, `fechaCreacion`) VALUES
(1, 1, 1, '1', '2022-08-03 21:05:45'),
(2, 1, 2, '1', '2022-08-03 21:05:45'),
(3, 1, 3, '1', '2022-08-03 21:05:56'),
(4, 1, 4, '1', '2022-08-03 21:05:56'),
(5, 1, 5, '1', '2022-08-03 21:11:57'),
(6, 1, 6, '1', '2022-08-03 21:12:17'),
(7, 1, 7, '1', '2022-08-03 21:13:32'),
(8, 1, 8, '1', '2022-08-03 21:13:32'),
(9, 1, 9, '1', '2022-08-03 21:13:32'),
(10, 1, 10, '1', '2022-08-03 21:13:32'),
(11, 1, 11, '1', '2022-08-03 21:13:32'),
(12, 1, 12, '1', '2022-08-03 21:13:32'),
(13, 1, 13, '1', '2022-08-04 16:30:46'),
(14, 1, 14, '1', '2022-08-04 16:30:46'),
(15, 1, 15, '1', '2022-08-04 16:30:46'),
(16, 1, 16, '1', '2022-08-04 16:30:46'),
(17, 1, 17, '1', '2022-08-04 16:30:46'),
(18, 1, 18, '1', '2022-08-04 16:30:46'),
(19, 1, 19, '1', '2022-08-04 16:30:46'),
(20, 1, 20, '1', '2022-08-04 16:30:46'),
(21, 1, 21, '1', '2022-08-04 16:30:46'),
(22, 1, 22, '1', '2022-08-04 16:30:46'),
(23, 1, 23, '1', '2022-08-04 16:30:46'),
(24, 1, 24, '1', '2022-08-04 16:30:46'),
(25, 1, 25, '1', '2022-08-04 16:30:46'),
(26, 1, 26, '1', '2022-08-04 16:30:46'),
(27, 1, 27, '1', '2022-08-05 20:21:29'),
(28, 1, 28, '1', '2022-08-05 20:21:29'),
(29, 1, 29, '1', '2022-08-05 20:21:29'),
(30, 1, 30, '1', '2022-08-05 20:21:29'),
(31, 1, 31, '1', '2022-08-05 20:21:29'),
(32, 1, 32, '1', '2022-08-05 21:14:21'),
(33, 1, 33, '1', '2022-08-05 21:14:21'),
(34, 1, 34, '1', '2022-08-05 21:14:21'),
(35, 1, 35, '1', '2022-08-05 21:14:21'),
(36, 1, 36, '1', '2022-08-09 15:41:36'),
(37, 1, 37, '1', '2022-08-09 15:41:36'),
(38, 1, 38, '1', '2022-08-09 15:41:36'),
(39, 1, 39, '1', '2022-08-09 15:41:36'),
(40, 1, 40, '1', '2022-08-09 20:04:59'),
(41, 1, 41, '1', '2022-08-09 20:04:59'),
(42, 1, 42, '1', '2022-08-09 20:04:59'),
(43, 1, 43, '1', '2022-08-09 20:04:59'),
(44, 1, 44, '1', '2022-08-09 20:24:22'),
(45, 1, 49, '1', '2022-08-09 20:27:56'),
(46, 1, 50, '1', '2022-08-09 20:27:56'),
(47, 1, 51, '1', '2022-08-09 20:27:56'),
(48, 1, 52, '1', '2022-08-09 20:27:56'),
(49, 1, 53, '1', '2022-08-10 12:55:02'),
(50, 1, 54, '1', '2022-08-10 12:55:02'),
(51, 1, 55, '1', '2022-08-10 12:55:02'),
(52, 1, 56, '1', '2022-08-10 12:55:02'),
(53, 1, 57, '1', '2022-08-10 13:01:46'),
(54, 1, 58, '1', '2022-08-10 13:01:46'),
(55, 1, 59, '1', '2022-08-10 13:01:46'),
(56, 1, 60, '1', '2022-08-10 13:01:46'),
(57, 1, 61, '1', '2022-08-10 13:31:46'),
(58, 1, 62, '1', '2022-08-10 13:31:46'),
(59, 1, 63, '1', '2022-08-10 13:31:46'),
(60, 1, 64, '1', '2022-08-10 13:31:46'),
(61, 1, 65, '1', '2022-08-10 16:21:56'),
(62, 1, 66, '1', '2022-08-10 16:21:56'),
(63, 1, 67, '1', '2022-08-10 16:21:56'),
(64, 1, 68, '1', '2022-08-10 16:21:56'),
(65, 1, 69, '1', '2022-08-10 16:43:34'),
(66, 1, 70, '1', '2022-08-10 16:43:34'),
(67, 1, 71, '1', '2022-08-10 16:43:34'),
(68, 1, 72, '1', '2022-08-10 16:43:34'),
(69, 1, 73, '1', '2022-08-10 23:01:12'),
(70, 1, 74, '1', '2022-08-10 23:01:13'),
(71, 1, 75, '1', '2022-08-10 23:01:13'),
(72, 1, 76, '1', '2022-08-10 23:01:13'),
(73, 1, 77, '1', '2022-08-11 13:37:29'),
(74, 1, 78, '1', '2022-08-11 13:37:29'),
(75, 1, 79, '1', '2022-08-11 13:37:29'),
(76, 1, 80, '1', '2022-08-11 13:37:29'),
(77, 1, 81, '1', '2022-08-11 16:16:45'),
(78, 1, 82, '1', '2022-08-11 16:16:45'),
(79, 1, 83, '1', '2022-08-11 16:16:45'),
(80, 1, 84, '1', '2022-08-11 16:16:45'),
(81, 1, 85, '1', '2022-08-11 16:16:45'),
(82, 1, 86, '1', '2022-08-11 17:32:37'),
(83, 1, 87, '1', '2022-08-11 17:32:37'),
(84, 1, 88, '1', '2022-08-11 17:32:37'),
(85, 1, 89, '1', '2022-08-11 17:32:37'),
(86, 1, 90, '1', '2022-08-12 20:50:42'),
(87, 1, 91, '1', '2022-08-12 20:50:42'),
(88, 1, 92, '1', '2022-08-12 20:50:42'),
(89, 1, 93, '1', '2022-08-12 20:50:42'),
(90, 1, 94, '1', '2022-08-12 20:50:42'),
(91, 1, 95, '1', '2022-08-12 20:50:42'),
(92, 1, 96, '1', '2022-08-12 20:50:42'),
(93, 1, 97, '1', '2022-08-12 20:50:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `protocolos`
--

CREATE TABLE `protocolos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(18) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `descripcion` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fechaEliminacion` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fechaCreacion` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `protocolos`
--

INSERT INTO `protocolos` (`id`, `nombre`, `descripcion`, `fechaEliminacion`, `fechaCreacion`) VALUES
(1, 'BBBBBB', '', NULL, '2022-08-09 15:42:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `nit` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `representante` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `direccion` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `celular` varchar(25) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ciudad` varchar(30) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `email` varchar(30) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `regimen` varchar(22) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fechaEliminacion` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fechaCreacion` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`id`, `nombre`, `nit`, `representante`, `direccion`, `celular`, `ciudad`, `email`, `regimen`, `fechaEliminacion`, `fechaCreacion`) VALUES
(1, 'brayan', '10034', 'anderson', 'leningrado2 ', '324', 'pereira', 'brayan@gmail.com', 'comun', NULL, '2022-08-04 16:53:43'),
(2, 'felipe', '123456789', 'beatriz vargas', 'av 30 de agosto 28-68', '3014138939', 'pereira', 'afmurillo97@gmail.com', 'simplificado', NULL, '2022-08-04 22:16:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registros`
--

CREATE TABLE `registros` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `tipoRegistro` varchar(30) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `documento` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `descripcion` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fechaEliminacion` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fechaCreacion` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `registros`
--

INSERT INTO `registros` (`id`, `nombre`, `tipoRegistro`, `documento`, `descripcion`, `fechaEliminacion`, `fechaCreacion`) VALUES
(1, 'vbbb', 'comercializacion', 'undefined', 'ccc', NULL, '2022-08-10 14:07:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relaciones`
--

CREATE TABLE `relaciones` (
  `id` int(11) NOT NULL,
  `modulo` varchar(30) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `val1` varchar(200) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `val2` varchar(200) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `val3` varchar(200) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `idPrincipal` int(11) DEFAULT NULL,
  `idRelacional` int(11) DEFAULT NULL,
  `fechaEliminacion` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fechaCreacion` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rutinas`
--

CREATE TABLE `rutinas` (
  `id` int(11) NOT NULL,
  `idCategoria` int(11) DEFAULT NULL,
  `descripcion` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fechaEliminacion` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fechaCreacion` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `rutinas`
--

INSERT INTO `rutinas` (`id`, `idCategoria`, `descripcion`, `fechaEliminacion`, `fechaCreacion`) VALUES
(1, 1, 'Cajas', NULL, '2022-08-05 22:23:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `servicios` (
  `id` int(11) NOT NULL,
  `codigo` varchar(30) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `idGrupoServicio` int(11) DEFAULT NULL,
  `descripcion` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fechaEliminacion` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fechaCreacion` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `servicios`
--

INSERT INTO `servicios` (`id`, `codigo`, `idGrupoServicio`, `descripcion`, `fechaEliminacion`, `fechaCreacion`) VALUES
(1, '1234', 1, NULL, NULL, '2022-08-10 13:24:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoEquipo`
--

CREATE TABLE `tipoEquipo` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `riesgo` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `idDescripcionBiomedica` int(11) DEFAULT NULL,
  `idProtocolo` int(11) DEFAULT NULL,
  `validacion` varchar(5) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fechaEliminacion` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fechaCreacion` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `tipoEquipo`
--

INSERT INTO `tipoEquipo` (`id`, `nombre`, `riesgo`, `idDescripcionBiomedica`, `idProtocolo`, `validacion`, `fechaEliminacion`, `fechaCreacion`) VALUES
(1, 'xxxx', 'IIA', 1, 1, 'si', NULL, '2022-08-11 17:32:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoVariable`
--

CREATE TABLE `tipoVariable` (
  `id` int(11) NOT NULL,
  `nombre` varchar(18) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `descripcion` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fechaEliminacion` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fechaCreacion` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `tipoVariable`
--

INSERT INTO `tipoVariable` (`id`, `nombre`, `descripcion`, `fechaEliminacion`, `fechaCreacion`) VALUES
(1, 'aaaa', '', NULL, '2022-08-09 20:49:56'),
(2, 'bbbb', '', NULL, '2022-08-09 22:09:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombres` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `apellidos` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `identificacion` varchar(12) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `username` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `email` varchar(30) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `cargo` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `celular` varchar(25) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `firmaDigital` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fechaEliminacion` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fechaCreacion` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombres`, `apellidos`, `identificacion`, `username`, `password`, `email`, `cargo`, `celular`, `firmaDigital`, `fechaEliminacion`, `fechaCreacion`) VALUES
(1, 'Felipe', 'Murillo', '1088343860', 'fmurillo', 'MTIzNDU2', 'afmurillo97@gmail.com', 'Desarrollador', '3014138939', '127.0.0.1/electronitech/assets/images/firmas/', NULL, '2022-08-03 21:19:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `variablesMetrologicas`
--

CREATE TABLE `variablesMetrologicas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `unidadTexto` varchar(10) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `unidadSigno` varchar(5) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `idTipoVariable` int(11) DEFAULT NULL,
  `fechaEliminacion` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `fechaCreacion` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `variablesMetrologicas`
--

INSERT INTO `variablesMetrologicas` (`id`, `nombre`, `unidadTexto`, `unidadSigno`, `idTipoVariable`, `fechaEliminacion`, `fechaCreacion`) VALUES
(1, 'aaa', 'aaaa', 'aaa', 2, NULL, '2022-08-09 22:11:34');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idCliente` (`idCliente`),
  ADD KEY `idServicio` (`idServicio`),
  ADD KEY `idTipoEquipo` (`idTipoEquipo`),
  ADD KEY `idEquipo` (`idEquipo`),
  ADD KEY `idRegistro` (`idRegistro`);

--
-- Indices de la tabla `asignarRutinas`
--
ALTER TABLE `asignarRutinas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idProtocolo` (`idProtocolo`),
  ADD KEY `idCategoria` (`idCategoria`),
  ADD KEY `idRutina` (`idRutina`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `descripcionBiomedica`
--
ALTER TABLE `descripcionBiomedica`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ecri`
--
ALTER TABLE `ecri`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idMarca` (`idMarca`),
  ADD KEY `idModelo` (`idModelo`),
  ADD KEY `idRegistro` (`idRegistro`);

--
-- Indices de la tabla `fabricantes`
--
ALTER TABLE `fabricantes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `grupoServicio`
--
ALTER TABLE `grupoServicio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `manifiestos`
--
ALTER TABLE `manifiestos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `modelos`
--
ALTER TABLE `modelos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idMarca` (`idMarca`);

--
-- Indices de la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `permisos_usuarios`
--
ALTER TABLE `permisos_usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idUsuario` (`idUsuario`),
  ADD KEY `idPermiso` (`idPermiso`);

--
-- Indices de la tabla `protocolos`
--
ALTER TABLE `protocolos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `registros`
--
ALTER TABLE `registros`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `relaciones`
--
ALTER TABLE `relaciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idPrincipal` (`idPrincipal`,`idRelacional`);

--
-- Indices de la tabla `rutinas`
--
ALTER TABLE `rutinas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idCategoria` (`idCategoria`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idGrupoServicio` (`idGrupoServicio`);

--
-- Indices de la tabla `tipoEquipo`
--
ALTER TABLE `tipoEquipo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idDescripcionBiomedica` (`idDescripcionBiomedica`),
  ADD KEY `idProtocolo` (`idProtocolo`);

--
-- Indices de la tabla `tipoVariable`
--
ALTER TABLE `tipoVariable`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `variablesMetrologicas`
--
ALTER TABLE `variablesMetrologicas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idTipoVariable` (`idTipoVariable`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulos`
--
ALTER TABLE `articulos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `asignarRutinas`
--
ALTER TABLE `asignarRutinas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `descripcionBiomedica`
--
ALTER TABLE `descripcionBiomedica`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `ecri`
--
ALTER TABLE `ecri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `empresas`
--
ALTER TABLE `empresas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `equipos`
--
ALTER TABLE `equipos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `fabricantes`
--
ALTER TABLE `fabricantes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `grupoServicio`
--
ALTER TABLE `grupoServicio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `manifiestos`
--
ALTER TABLE `manifiestos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `marcas`
--
ALTER TABLE `marcas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `modelos`
--
ALTER TABLE `modelos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `permisos`
--
ALTER TABLE `permisos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT de la tabla `permisos_usuarios`
--
ALTER TABLE `permisos_usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT de la tabla `protocolos`
--
ALTER TABLE `protocolos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `registros`
--
ALTER TABLE `registros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `relaciones`
--
ALTER TABLE `relaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rutinas`
--
ALTER TABLE `rutinas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `servicios`
--
ALTER TABLE `servicios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tipoEquipo`
--
ALTER TABLE `tipoEquipo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tipoVariable`
--
ALTER TABLE `tipoVariable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `variablesMetrologicas`
--
ALTER TABLE `variablesMetrologicas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD CONSTRAINT `articulos_ibfk_1` FOREIGN KEY (`idCliente`) REFERENCES `clientes` (`id`),
  ADD CONSTRAINT `articulos_ibfk_2` FOREIGN KEY (`idServicio`) REFERENCES `servicios` (`id`),
  ADD CONSTRAINT `articulos_ibfk_3` FOREIGN KEY (`idTipoEquipo`) REFERENCES `tipoEquipo` (`id`),
  ADD CONSTRAINT `articulos_ibfk_4` FOREIGN KEY (`idEquipo`) REFERENCES `equipos` (`id`),
  ADD CONSTRAINT `articulos_ibfk_5` FOREIGN KEY (`idRegistro`) REFERENCES `registros` (`id`);

--
-- Filtros para la tabla `asignarRutinas`
--
ALTER TABLE `asignarRutinas`
  ADD CONSTRAINT `asignarRutinas_ibfk_1` FOREIGN KEY (`idProtocolo`) REFERENCES `protocolos` (`id`),
  ADD CONSTRAINT `asignarRutinas_ibfk_2` FOREIGN KEY (`idCategoria`) REFERENCES `categorias` (`id`),
  ADD CONSTRAINT `asignarRutinas_ibfk_3` FOREIGN KEY (`idRutina`) REFERENCES `rutinas` (`id`);

--
-- Filtros para la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD CONSTRAINT `equipos_ibfk_1` FOREIGN KEY (`idMarca`) REFERENCES `marcas` (`id`),
  ADD CONSTRAINT `equipos_ibfk_2` FOREIGN KEY (`idModelo`) REFERENCES `modelos` (`id`),
  ADD CONSTRAINT `equipos_ibfk_3` FOREIGN KEY (`idRegistro`) REFERENCES `registros` (`id`);

--
-- Filtros para la tabla `modelos`
--
ALTER TABLE `modelos`
  ADD CONSTRAINT `modelos_ibfk_1` FOREIGN KEY (`idMarca`) REFERENCES `marcas` (`id`);

--
-- Filtros para la tabla `permisos_usuarios`
--
ALTER TABLE `permisos_usuarios`
  ADD CONSTRAINT `permisos_usuarios_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `permisos_usuarios_ibfk_2` FOREIGN KEY (`idPermiso`) REFERENCES `permisos` (`id`);

--
-- Filtros para la tabla `rutinas`
--
ALTER TABLE `rutinas`
  ADD CONSTRAINT `rutinas_ibfk_1` FOREIGN KEY (`idCategoria`) REFERENCES `categorias` (`id`);

--
-- Filtros para la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD CONSTRAINT `servicios_ibfk_1` FOREIGN KEY (`idGrupoServicio`) REFERENCES `grupoServicio` (`id`);

--
-- Filtros para la tabla `tipoEquipo`
--
ALTER TABLE `tipoEquipo`
  ADD CONSTRAINT `tipoEquipo_ibfk_1` FOREIGN KEY (`idDescripcionBiomedica`) REFERENCES `descripcionBiomedica` (`id`),
  ADD CONSTRAINT `tipoEquipo_ibfk_2` FOREIGN KEY (`idProtocolo`) REFERENCES `protocolos` (`id`);

--
-- Filtros para la tabla `variablesMetrologicas`
--
ALTER TABLE `variablesMetrologicas`
  ADD CONSTRAINT `variablesMetrologicas_ibfk_1` FOREIGN KEY (`idTipoVariable`) REFERENCES `tipoVariable` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
