-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-11-2024 a las 15:59:23
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `trackit`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `areas`
--

CREATE TABLE `areas` (
  `id` int(11) NOT NULL,
  `area` varchar(100) NOT NULL,
  `imagen` varchar(150) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `areas`
--

INSERT INTO `areas` (`id`, `area`, `imagen`, `estado`) VALUES
(1, 'TOMA DE MUESTRA DIVINA PROVIDENCIA', 'assets/images/areasdefault.png', 1),
(2, 'REDES Y SISTEMAS', 'assets/images/areasdefault.png', 1),
(3, 'ATENCIÓN AL USUARIO', 'assets/images/areasdefault.png', 1),
(4, 'ASISTENTE ADMINISTRATIVA', 'assets/images/areasdefault.png', 1),
(5, 'RECEPCIÓN 5TO PISO', 'assets/images/areasdefault.png', 1),
(6, 'RECEPCIÓN CRISANTO LUQUE', 'assets/images/areasdefault.png', 1),
(7, 'COORDINACION OPERATIVA', 'assets/images/areasdefault.png', 1),
(8, 'CONTABILIDAD', 'assets/images/areasdefault.png', 1),
(9, 'LABORATORIO PRIOPRITARIO', 'assets/images/areasdefault.png', 1),
(10, 'RECEPCIÓN TURBACO VIP', 'assets/images/areasdefault.png', 1),
(11, 'RECEPCIÓN 3RE PISO', 'assets/images/areasdefault.png', 1),
(12, 'CALL CENTER 3RE PISO', 'assets/images/areasdefault.png', 1),
(13, 'RECEPCIÓN LOCAL 106', 'assets/images/areasdefault.png', 1),
(14, 'RECEPCIÓN PRINCIPAL', 'assets/images/areasdefault.png', 1),
(15, 'CONSULTORIO 204', 'assets/images/areasdefault.png', 1),
(16, 'RECEPCIÓN 4TO PISO', 'assets/images/areasdefault.png', 1),
(17, 'RECEPCIÓN', 'assets/images/areasdefault.png', 1),
(18, 'RECEPCIÓN PIE DE LA POPA', 'assets/images/areasdefault.png', 1),
(19, 'RECEPCION PROCESOS CLINICA NUESTRA', 'assets/images/areasdefault.png', 1),
(20, 'PROCESOS CLINICA NUESTRA', 'assets/images/areasdefault.png', 1),
(21, 'RECEPCION IMÁGENES CLINICA NUESTRA', 'assets/images/areasdefault.png', 1),
(22, 'MONITOREO IMÁGENES CLINICA NUESTRA', 'assets/images/areasdefault.png', 1),
(23, 'CUARTO DE COMANDO IMÁGENES CLINICA NUESTRA', 'assets/images/areasdefault.png', 1),
(24, 'HEMODINAMIA CLINICA NUESTRA', 'assets/images/areasdefault.png', 1),
(25, 'PATOLOGIA', 'assets/images/areasdefault.png', 1),
(26, 'TOMA DE MUESTRA PRINCIPAL', 'assets/images/areasdefault.png', 1),
(27, 'TOMA DE MUESTRA PIE DE LA POPA', 'assets/images/areasdefault.png', 1),
(28, 'PROCESOS PIE DE LA POPA', 'assets/images/areasdefault.png', 1),
(29, 'TOMA DE MUESTRA 3re PISO', 'assets/images/areasdefault.png', 1),
(30, 'REVISONES ', 'assets/images/areasdefault.png', 1),
(31, 'RECEPCIÓN IMÁGENES', 'assets/images/areasdefault.png', 1),
(32, 'CONSULTORIO IMÁGENES 5TO PISO', 'assets/images/areasdefault.png', 1),
(33, 'TOMA DE MUESTRAS 3ER PISO', 'assets/images/areasdefault.png', 1),
(34, 'INMUNOANALISISPRIO', 'assets/images/areasdefault.png', 1),
(35, 'TOMA DE MUESTRAS - TURBACO VIP', 'assets/images/areasdefault.png', 1),
(36, 'TOMA DE MUESTRAS - PIE DE LA POPA', 'assets/images/areasdefault.png', 1),
(37, 'TRANSCRIPCION IMÁGENES 5TO PISO', 'assets/images/areasdefault.png', 1),
(38, 'SG-SST', 'assets/images/areasdefault.png', 1),
(39, 'COORDINACIÓN COMERCIAL', 'assets/images/areasdefault.png', 1),
(40, 'TALENTO HUMANO', 'assets/images/areasdefault.png', 1),
(41, 'CALL CENTER LAB1 3RE PISO', 'assets/images/areasdefault.png', 1),
(42, 'CALL CENTER LAB2 3RE PISO', 'assets/images/areasdefault.png', 1),
(43, 'CALL CENTER IMA3 3RE PISO', 'assets/images/areasdefault.png', 1),
(44, 'IMÁGENES CLINICA NUESTRA', 'assets/images/areasdefault.png', 1),
(45, 'CAJA TECNICA', 'assets/images/areasdefault.png', 1),
(46, 'FACTURACIÓN', 'assets/images/areasdefault.png', 1),
(47, 'CONSULTORIO 1- TRANSCRIPCION IMÁGENES 5TO PISO', 'assets/images/areasdefault.png', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` varchar(100) NOT NULL,
  `imagen` varchar(150) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `imagen`, `estado`) VALUES
(1, 'CELULARES', 'assets/img/categoriasdefault.png', 1),
(2, 'CPU', 'assets/img/categoriasdefault.png', 1),
(3, 'EQUIPOS DE RED', 'assets/img/categoriasdefault.png', 1),
(4, 'ETIQUETADORA', 'assets/img/categoriasdefault.png', 1),
(5, 'ETIQUETAS', 'assets/img/categoriasdefault.png', 1),
(6, 'IMPRESORAS', 'assets/img/categoriasdefault.png', 1),
(7, 'PERIFERICOS', 'assets/img/categoriasdefault.png', 1),
(8, 'TELEFÓNO IP', 'assets/img/categoriasdefault.png', 1),
(9, 'TODO EN UNO', 'assets/images/categorias20240912172257.jpg', 1),
(10, 'NUC', 'assets/images/categoriasdefault.png', 1),
(11, 'PORTATIL', 'assets/images/categoriasdefault.png', 1),
(12, 'PC', 'assets/images/categoriasdefault.png', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipo_de_computo`
--

CREATE TABLE `equipo_de_computo` (
  `id` int(11) NOT NULL,
  `Codigo_Inventario` varchar(10) NOT NULL,
  `Tipo_Equipo` varchar(50) DEFAULT NULL,
  `Sede` varchar(50) DEFAULT NULL,
  `Area` varchar(50) DEFAULT NULL,
  `Marca` varchar(50) DEFAULT NULL,
  `Modelo` varchar(50) DEFAULT NULL,
  `Serial` varchar(50) DEFAULT NULL,
  `IP_Asignada` varchar(20) DEFAULT NULL,
  `MAC_Equipo` varchar(20) DEFAULT NULL,
  `Nombre_Equipo` varchar(50) DEFAULT NULL,
  `Sistema_Operativo` varchar(50) DEFAULT NULL,
  `Office_Licenciado` varchar(5) DEFAULT NULL,
  `Antivirus` varchar(50) DEFAULT NULL,
  `VPN` varchar(50) DEFAULT NULL,
  `imagen` varchar(150) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `id_sede` int(11) NOT NULL,
  `id_area` int(11) NOT NULL,
  `activo` varchar(10) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `equipo_de_computo`
--

INSERT INTO `equipo_de_computo` (`id`, `Codigo_Inventario`, `Tipo_Equipo`, `Sede`, `Area`, `Marca`, `Modelo`, `Serial`, `IP_Asignada`, `MAC_Equipo`, `Nombre_Equipo`, `Sistema_Operativo`, `Office_Licenciado`, `Antivirus`, `VPN`, `imagen`, `id_categoria`, `id_sede`, `id_area`, `activo`, `estado`) VALUES
(1, 'C0001', NULL, NULL, NULL, 'HP', 'HP-LAPTO 14 -BS0XX', '05CD825C9RK', '10.0.0.117', 'B4-B6-86-E4-C4-10', 'REDES_SOPORTE', 'WIN10', 'SI', 'KASPERSKY', 'NO', '', 11, 1, 2, '0', 1),
(2, 'C0002', NULL, NULL, NULL, 'DELL', '', '', '', '', '', 'WIN11', 'SI', 'KASPERSKY', 'NO', '', 11, 1, 2, '0', 1),
(3, 'C0003', NULL, NULL, NULL, 'DELL', '', '', '', '', '', 'WIN10', 'SI', 'KASPERSKY', 'NO', '', 12, 1, 2, '0', 1),
(4, 'C0004', NULL, NULL, NULL, 'ASUS', 'VIVOBOOK X1504ZA', 'RCN0CX00M175495', '10.0.0.5', '20-0B-74-76-49-58', 'ANTENCIONUSUARIO-PRTL', 'WIN11', 'SI', 'KASPERSKY', 'NO', '', 11, 2, 3, '0', 1),
(5, 'C0005', NULL, NULL, NULL, 'ASUS', 'VIVOBOOK X1504ZA', 'RCN0CX02L15446F', '10.0.0.192', '20-0B-74-60-B0-84', 'ASIS.ADMINISTRATIVA', 'WIN11', 'NO', 'KASPERSKY', 'NO', '', 11, 1, 4, '0', 1),
(6, 'C0006', NULL, NULL, NULL, 'HP', 'ALL IN ONE 22 DDXXX', '8CC3250PD5', '10.0.0.52', 'BC-0F-F3-6E-E4-93', 'RECEPCION5-LAB1', 'WIN11', 'NO', 'NO', 'NO', '', 9, 1, 5, '0', 1),
(7, 'C0007', NULL, NULL, NULL, 'CLON', 'CLON', 'N/A', '10.0.0.113', 'E8-40-F2-C2-7F-D7', 'RECEPCION5-LAB2', 'WIN10', 'NO', 'NO', 'NO', '', 2, 1, 5, '0', 1),
(8, 'C0008', NULL, NULL, NULL, 'HP', 'ALL IN ONE 22 DDXXX', '8CC3250P8H', '', 'BC-0F-F3-70-E5-B0', 'RECEPCION-CLUQUE2-PC', 'WIN10', 'NO', 'NO', 'NO', '', 9, 3, 6, '0', 1),
(9, 'C0009', NULL, NULL, NULL, 'HP', 'ALL IN ONE 22 DDXXX', '8CC3250P4X', '', 'BC-0F-F3-70-E6-01', 'RECEPCION-CLUQUE1-PC', 'WIN10', 'NO', 'NO', 'NO', '', 9, 3, 6, '0', 1),
(10, 'C0010', NULL, NULL, NULL, 'HP', 'ALL-IN-ONE-22-DD2005LA', '8CC3250P8N', '', 'BC-0F-F3-70-E5-AD', 'RECEPCION-CLUQUE3-PC', 'WIN10', 'NO', 'NO', 'NO', '', 9, 3, 6, '0', 1),
(11, 'C0011', NULL, NULL, NULL, 'HP', '14-CF3048LA', '5CG0302V66', '10.0.0.34', '84-2A-FD-83-99-07', 'COORDOPERATIVA-PRTL', 'WIN10', 'NO', 'KASPERSKY', 'NO', '', 11, 1, 7, '0', 1),
(12, 'C0012', NULL, NULL, NULL, 'COMPUMAX', '1051-900-0022', '400SN44634', '10.0.0.84', '84-47-09-25-02-EA', 'ASISCONTABILIDAD1-PC', 'WIN10', 'SI', 'KASPERSKY', 'NO', '', 12, 1, 8, '0', 1),
(13, 'C0013', NULL, NULL, NULL, 'COMPUMAX', '1051-900-0022', '400SN44633', '10.0.0.83', '84-47-09-25-02-33', 'ASISCONTABILIDAD2-PC', 'WIN10', 'SI', 'KASPERSKY', 'NO', '', 12, 1, 8, '0', 1),
(14, 'C0014', NULL, NULL, NULL, 'COMPUMAX', '1051-900-0022', '400SN44624', '10.0.0.85', '84-47-09-25-02-F3', 'ASISCONTABILIDAD3-PC', 'WIN10', 'SI', 'KASPERSKY', 'NO', '', 12, 1, 8, '0', 1),
(15, 'C0015', NULL, NULL, NULL, 'HEWLETT-PACKARD', 'HP PRO-3400 SERIE', 'MXL2031LNL', '10.0.0.70', '08-2E-5F-07-AE-58', 'INMUNOANALISISPRIO-PC', 'WIN11', 'NO', 'NO', 'NO', '', 12, 4, 9, '0', 1),
(16, 'C0016', NULL, NULL, NULL, 'HP', 'HP 21-B006LA', '1CZ10503NJ', '192.168.1.50', '54-B2-03-E9-2F-48', 'RECEPCION02TURB', 'WIN10', 'NO', 'NO', '10.0.0.16 ', '', 9, 7, 10, '0', 1),
(17, 'C0017', NULL, NULL, NULL, 'HP', 'HP 21-B003LA', '1CZ1300CRT', '192.168.1.3 ', '54-B2-03-FB-F1-88', 'TURBACO-VIP-2', 'WIN10', 'NO', 'NO', 'NO', '', 9, 7, 10, '0', 1),
(18, 'C0018', NULL, NULL, NULL, 'HP', 'ALL IN ONE 22 DD0XXX', '8CC1483VLY', '10.0.0.145', 'C8-5A-CF-AC-83-B1', 'RECEPCION3-4-PC', 'WIN10', 'NO', 'NO', 'NO', '', 9, 1, 11, '0', 1),
(19, 'C0019', NULL, NULL, NULL, 'HP', 'ALL IN ONE 21 B0XXX', '1CZ10503QF', '10.0.0.164', '54-B2-03-E9-2E-A4', 'RECEPCION3-8-PC', 'WIN10', 'NO', 'NO', 'NO', '', 9, 1, 11, '0', 1),
(20, 'C0020', NULL, NULL, NULL, 'HP', 'ALL IN ONE 24 E0XX', '8CC8120LBV', '10.0.0.28', '10-E7-C6-DD-74-02', 'RECEPCION3-9-PC', 'WIN10', 'NO', 'NO', 'NO', '', 9, 1, 11, '0', 1),
(21, 'C0021', NULL, NULL, NULL, 'HP', 'ALL IN ONE 22 DD0XXX', '8CC1483VC4', '10.0.0.176', 'C8-5A-CF-AC-83-10', 'CALLCENTER-LAB3-PC', 'WIN10', 'NO', 'NO', 'NO', '', 9, 1, 12, '0', 1),
(22, 'C0022', NULL, NULL, NULL, 'HP', 'ALL IN ONE 22 DD0XXX', '8CC1483VN9', '10.0.0.63', 'C8-5A-CF-AC-82-27', 'RECEPCION5-LAB5', 'WIN10', 'NO', 'NO', 'NO', '', 9, 1, 5, '0', 1),
(23, 'C0023', NULL, NULL, NULL, 'HP', 'ALL IN ONE 21 B0XXX', '1CZ0510P45', '10.0.0.104', '54-B2-03-E8-7C-E0', 'CALLCENTER-LAB1-PC', 'WIN10', 'NO', 'NO', 'NO', '', 9, 1, 12, '0', 1),
(24, 'C0024', NULL, NULL, NULL, 'HP', 'ALL IN ONE 22 DD0XXX', '8CC1483VYP', '10.0.0.175', 'C8-5A-CF-AC-82-FD', 'CALLCENTER-LAB2-PC', 'WIN10', 'NO', 'NO', 'NO', '', 9, 1, 12, '0', 1),
(25, 'C0025', NULL, NULL, NULL, 'LENOVO', '3157F2S', 'MJLWFHN', '10.0.0.97', '8C-89-A5-B9-D2-D2', 'CALLCENTER-IMA3-PC', 'WIN10', 'NO', 'NO', 'NO', '', 2, 1, 12, '0', 1),
(26, 'C0026', NULL, NULL, NULL, 'HP', 'HP 21-B0003LA', '1CZ0510P9X', '10.0.0.127', '54-B2-03-E8-01-EE', 'RECEPCIONLOCAL106C1-PC', 'WIN10', 'NO', 'NO', 'NO', '', 9, 8, 13, '0', 1),
(27, 'C0027', NULL, NULL, NULL, 'LENOVO', 'V130-20IGM AIO', 'YJ01AZJY', '10.0.0.26', '84-A9-38-64-EF-31', 'RECEPCIONLOCAL106C2-PC', 'WIN10', 'NO', 'NO', 'NO', '', 9, 8, 13, '0', 1),
(28, 'C0028', NULL, NULL, NULL, 'LENOVO', 'V130-20IGM AIO', 'YJ01AYCR', '10.0.0.43', '84-A9-38-64-F6-A6', 'RECEPCIONLOCAL106C3-PC', 'WIN10', 'NO', 'NO', 'NO', '', 9, 8, 13, '0', 1),
(29, 'C0029', NULL, NULL, NULL, 'LENOVO', 'LENOVO C40-30', 'P9017DEK', '10.0.0.49', '00-25-AB-90-CE-4D', 'RECEPCIONPRINCIPAL1-PC', 'WIN10', 'NO', 'NO', 'NO', '', 9, 8, 14, '0', 1),
(30, 'C0030', NULL, NULL, NULL, 'LENOVO', 'LENOVO C40-30', 'P901BW6N', '10.0.0.48', '00-25-AB-93-8F-64', 'RECEPCIONPRINCIPAL2-PC', 'WIN10', 'NO', 'NO', 'NO', '', 9, 8, 14, '0', 1),
(31, 'C0031', NULL, NULL, NULL, 'LENOVO', 'LENOVO C40-30', 'P901BW5D', '10.0.0.50', '00-25-AB-93-90-45', 'RECEPCIONPRINCIPAL3-PC', 'WIN10', 'NO', 'NO', 'NO', '', 9, 8, 14, '0', 1),
(32, 'C0032', NULL, NULL, NULL, 'LENOVO', 'LENOVO C40-30', 'P901BW63', '10.0.0.44', '00-25-AB-93-BF-84', 'RECEPCIONPRINCIPAL4-PC', 'WIN10', 'NO', 'NO', 'NO', '', 9, 8, 14, '0', 1),
(33, 'C0033', NULL, NULL, NULL, 'POWER GROUP', 'PRIME J4005I-C', '201076031202063', '10.0.0.60', '3C-7C-3F-BD-98-A9', 'RECEPCIONPRINCIPAL5-PC', 'WIN10', 'NO', 'NO', 'NO', 'assets/images/equipodecomputo/default.png', 12, 8, 14, '0', 1),
(34, 'C0034', NULL, NULL, NULL, 'Intel Corporation', 'DH61WW', 'BTWW33600T9K', '10.0.0.59', '54-BE-F7-2C-DA-A3', 'RECEPCIONPRINCIPAL6-PC', 'WIN10', 'NO', 'NO', 'NO', 'assets/images/equipodecomputo/default.png', 12, 8, 14, '0', 1),
(35, 'C0035', NULL, NULL, NULL, 'ASUS', 'X415MA - BV041T', 'LCN0LP00W96050B', '10.0.0.157', '78-2B-46-1C-0A-F7', 'CONSULTORIO204-PRTL', 'WIN10', 'NO', 'NO', 'NO', '', 11, 8, 15, '0', 1),
(36, 'C0036', NULL, NULL, NULL, 'HP', 'HP PRO 3130 MICROTOWER', 'MXL12611YV', '10.0.0.126', '78-E3-B5-95-26-3E', 'RECEPCION4-3-PC', 'WIN10', 'NO', 'NO', 'NO', '', 2, 1, 16, '0', 1),
(37, 'C0037', NULL, NULL, NULL, 'HP', 'ALL IN ONE 24 DD0XXX', '8CC1422VNJ', '10.0.0.181', 'E0-70-EA-B3-AD-40', 'REVISIONES1-PC', 'WIN10', 'NO', 'NO', 'NO', '', 9, 1, 30, '0', 1),
(38, 'C0038', NULL, NULL, NULL, 'HP', 'ALL IN ONE 24 E0XX', '8CC8061DND', '10.0.0.156', '80-CE-62-4F-DF-BD', 'CALLCENTER-IMA2-PC', 'WIN10', 'NO', 'NO', 'NO', '', 9, 1, 12, '0', 1),
(39, 'C0039', NULL, NULL, NULL, 'HP', 'ALL IN ONE 22 DD0XXX', '8CC1483VK8', '10.0.0.147', 'C8-5A-CF-AC-7B-2C', 'RECEPCION3-7-PC', 'WIN10', 'NO', 'NO', 'NO', '', 9, 1, 11, '0', 1),
(40, 'C0040', NULL, NULL, NULL, 'HP', 'ALL IN ONE 22 DD0XXX', '8CC1483VP0', '10.0.0.134', 'C8-5A-CF-AC-84-2E', 'RECEPCION3-6-PC', 'WIN10', 'NO', 'NO', 'NO', '', 9, 1, 11, '0', 1),
(41, 'C0041', NULL, NULL, NULL, 'HP', 'ALL IN ONE 21 B0XXX', '1CZ05104ZS', '10.0.0.22', '54-B2-03-E8-09-21', 'RECEPCION4-1-PC', 'WIN10', 'NO', 'NO', 'NO', '', 9, 1, 16, '0', 1),
(42, 'C0042', NULL, NULL, NULL, 'HP', 'ALL IN ONE 21 B0XXX', '1CZ05104XG', '10.0.0.24', '54-B2-03-E8-08-6C', 'RECEPCION4-2-PC', 'WIN10', 'NO', 'NO', 'NO', '', 9, 1, 16, '0', 1),
(43, 'C0043', NULL, NULL, NULL, 'HP', 'ALL IN ONE 22 DD2XXX', '8CC3012XC9', '192.168.1.11', '7C-4D-8F-06-DB-D8', 'RONDAREAL02-PC', 'WIN10', 'NO', 'NO', 'SI', 'assets/images/equipodecomputo/default.png', 9, 9, 17, '0', 1),
(44, 'C0044', NULL, NULL, NULL, 'LENOVO', '10RX004VLD', 'YJ01AZQY', '192.168.1.12', '84-A9-38-64-EB-BC', 'RONDAREAL01-PC', 'WIN10', 'NO', 'NO', 'SI', 'assets/images/equipodecomputo/default.png', 9, 9, 17, '0', 1),
(45, 'C0045', NULL, NULL, NULL, 'HP', 'ALL IN ONE 24 DD0XXX', '8CC1260WJG', '10.0.0.143', '48-9E-BD-31-2A-B3', 'RECEPCION3-1-PC', 'WIN10', 'NO', 'NO', 'NO', '', 9, 1, 11, '0', 1),
(46, 'C0046', NULL, NULL, NULL, 'HP', 'ALL IN ONE 22 DD0XXX', '8CC1483VH2', '10.0.0.166', 'C8-5A-CF-AC-82-8B', 'RECEPCION3-2-PC', 'WIN10', 'NO', 'NO', 'NO', '', 9, 1, 11, '0', 1),
(47, 'C0047', NULL, NULL, NULL, 'HP', 'ALL IN ONE 22 DD0XXX', '8CC1483W6R', '10.0.0.29', 'C8-5A-CF-AC-82-95', 'RECEPCION3-3-PC', 'WIN10', 'NO', 'NO', 'NO', '', 9, 1, 11, '0', 1),
(48, 'C0048', NULL, NULL, NULL, 'HP', 'ALL IN ONE 22 DD0XXX', '8CC1483VLY', '10.0.0.145', 'C8-5A-CF-AC-83-B1', 'RECEPCION3-4-PC', 'WIN10', 'NO', 'NO', 'NO', '', 9, 1, 11, '0', 1),
(49, 'C0049', NULL, NULL, NULL, 'HP', 'ALL IN ONE 24 E0XX', '8CC8061DL7', '10.0.0.27', '80-CE-62-4F-DF-AD', 'RECLAB2', 'WIN10', 'NO', 'NO', 'NO', '', 9, 1, 11, '0', 1),
(50, 'C0050', NULL, NULL, NULL, 'POWER GROUP', 'INC2102646501', 'CS513GNC05', '192.168.1.200', '7C-10-C9-8A-83-EE', 'RECEPCIONPIEDEPOPA1-PC', 'WIN10', 'NO', 'NO', 'NO', 'assets/images/equipodecomputo/default.png', 2, 5, 18, '0', 1),
(51, 'C0051', NULL, NULL, NULL, 'POWER GROUP', 'NO APLICA', 'NO APLICA', '192.168.1.71', '24-4B-FE-82-62-5A', 'RECEPCIONPIEDEPOPA2-PC', 'WIN10', 'NO', 'NO', 'NO', 'assets/images/equipodecomputo/default.png', 2, 5, 18, '0', 1),
(52, 'C0052', NULL, NULL, NULL, 'HP', 'ALL IN ONE 21-B0006LA', '1CZ10503QG', '192.168.1.231', '54-B2-03-E9-2E-96', 'RECEPCIONPIEDEPOPA3-PC', 'WIN10', 'NO', 'NO', 'NO', 'assets/images/equipodecomputo/default.png', 9, 5, 18, '0', 1),
(53, 'C0053', NULL, NULL, NULL, 'HP', 'ALL IN ONE 22-DD2005LA', '8CC3151VC1', '192.168.1.111', 'E0-73-E7-36-B5-6D', 'PROCESO PIE DE LA OPOA', 'WIN10', 'NO', 'NO', 'NO', 'assets/images/equipodecomputo/default.png', 9, 5, 28, '0', 1),
(54, 'C0054', NULL, NULL, NULL, 'INTEL', 'PC NUC7CJYH', '143445', '', '', 'DIVINA PROVIDENCIA', 'WIN10', 'NO', 'NO', 'NO', 'assets/images/equipodecomputo/default.png', 10, 6, 1, '0', 1),
(55, 'C0055', NULL, NULL, NULL, 'LENOVO', 'IAO 50-22ISH', 'MP15K3XC', '10.0.0.78', 'FC-45-96-AF-B5-4D', 'RECEPCIONPCN-PC', 'WIN10', 'NO', 'NO', 'NO', 'assets/images/equipodecomputo/default.png', 9, 4, 19, '0', 1),
(56, 'C0056', NULL, NULL, NULL, 'HP', 'HP PRO 3400 SERIES MT', 'MXL2031LNL', '10.0.0.129', '08-2E-5F-07-AE-58', 'INMUNOANALYSISPRIO-PC', 'WIN10', 'NO', 'NO', 'NO', 'assets/images/equipodecomputo/default.png', 2, 4, 20, '0', 1),
(57, 'C0057', NULL, NULL, NULL, 'POWER GROUP', 'ASUS PRIME H410M', 'NO APLICA', '10.0.0.77', '3C-7C-3F-15-28-86', 'QUIMICACN-PC', 'WIN10', 'NO', 'NO', 'NO', 'assets/images/equipodecomputo/default.png', 2, 4, 20, '0', 1),
(58, 'C0058', NULL, NULL, NULL, 'XTECH', 'DH61BF', 'NO APLICA', '10.0.0.80', 'EC-A8-6B-F8-5C-85', 'HEMATOLOGIACN-PC', 'WIN10', 'NO', 'NO', 'NO', 'assets/images/equipodecomputo/default.png', 2, 4, 20, '0', 1),
(59, 'C0059', NULL, NULL, NULL, 'POWER GROUP', 'POWER 3I40', '3I40MP7716309', '10.0.0.81', '30-5A-3A-59-27-DC', 'SERVICIOSTRANSFUSIONALESCN-PC', 'WIN10', 'NO', 'NO', 'NO', 'assets/images/equipodecomputo/default.png', 2, 4, 20, '0', 1),
(60, 'C0060', NULL, NULL, NULL, 'LENOVO', '10B7001RLS', 'MJ002SVB', '10.0.0.120', '44-8A-5B-04-6B-09', 'RECIMACNSDR-01-PC', 'WIN10', 'NO', 'NO', 'NO', 'assets/images/equipodecomputo/default.png', 2, 4, 21, '0', 1),
(61, 'C0061', NULL, NULL, NULL, 'HP', 'ALL-IN-ONE 22-DD2XX', '8CC2390JFG', '10.0.0.122', '38-CA-84-AC-81-2C', 'RECIMACNSDR2-PC', 'WIN10', 'NO', 'NO', 'NO', 'assets/images/equipodecomputo/default.png', 9, 4, 21, '0', 1),
(62, 'C0062', NULL, NULL, NULL, 'ECS', 'H81H3-M4', '3I40IMP5714MCP', '10.0.0.118', 'C0-3F-D5-A1-02-39', 'MONITOREOCN-PC', 'WIN10', 'NO', 'NO', 'NO', 'assets/images/equipodecomputo/default.png', 2, 4, 22, '0', 1),
(63, 'C0063', NULL, NULL, NULL, 'DELL', 'OPTIPLEX 3020', 'CN-04W34Y-70163-550-0200-A00', '10.20.5.1 - CLINICA', 'B0-83-FE-B4-C5-B5', 'CV26722181-PC - FCR PRISMAX', 'WIN7', 'NO', 'NO', 'NO', 'assets/images/equipodecomputo/default.png', 2, 4, 23, '0', 1),
(64, 'C0064', NULL, NULL, NULL, 'HP', 'ELITEDESK 800 G4 TWR', '4CE9522FXX', '10.20.5.221 - CLINIC', '84-A9-3E-81-C6-1F', 'RADMAX', 'WIN10', 'NO', 'NO', 'NO', 'assets/images/equipodecomputo/default.png', 2, 4, 23, '0', 1),
(65, 'C0065', NULL, NULL, NULL, 'MEGA-TECH', 'DH61CR', 'NO APLICA', '10.0.0.116', 'C0-4A-00-02-13-FA', 'TOMOGRAFIANC-PC ', 'WIN7', 'NO', 'NO', 'NO', 'assets/images/equipodecomputo/default.png', 2, 4, 23, '0', 1),
(66, 'C0066', NULL, NULL, NULL, 'LENOVO', 'AIO 510-22ISH', 'MP1597JZ', '10.20.5.99 - CLINICA', 'FC-45-96-7C-03-68', 'HEMODINAMIA1-PC', 'WIN10', 'NO', 'NO', 'NO', 'assets/images/equipodecomputo/default.png', 9, 4, 24, '0', 1),
(67, 'C0067', NULL, NULL, NULL, 'LENOVO', 'AIO 510-22ISH', 'MP1590LN', '192.168.0.132 - CLIN', '3C:F8:62:8B:85:2B', 'HEMODINAMIA2-PC', 'WIN10', 'NO', 'NO', 'NO', 'assets/images/equipodecomputo/default.png', 9, 4, 24, '0', 1),
(68, 'C0068', NULL, NULL, NULL, 'DELL', 'OPTIPLEX 3020', '0WMJ54', '10.20.4.195 - CLINIC', 'B0:83:FE:B4:88:5E', 'HEMODINAMIA3-PC', 'WIN10', 'NO', 'NO', 'NO', 'assets/images/equipodecomputo/default.png', 2, 4, 24, '0', 1),
(69, 'C0069', NULL, NULL, NULL, 'LENOVO', '7269E1S', 'MJGBC52', '10.0.0.54', '90-FB-A6-0A-67-17', 'REMISIONES2', 'WIN7', 'NO', 'NO', 'NO', 'assets/images/equipodecomputo/default.png', 2, 1, 25, '0', 1),
(70, 'C0070', NULL, NULL, NULL, 'LENOVO', '10147', ' VS81495031', '10.0.0.109', '00-25-AB-5A-F1-24', 'RECEPCION5-LAB4', 'WIN10', 'NO', 'NO', 'NO', '', 9, 1, 5, '0', 1),
(71, 'C0071', NULL, NULL, NULL, 'LENOVO', '3157F2S', 'MJLWFFD', '10.0.0.96', '8C-89-A5-B9-D2-AB', 'RECEPCION5IMA3-PC', 'WIN10', 'NO', 'NO', 'NO', '', 9, 1, 5, '0', 1),
(72, 'C0072', NULL, NULL, NULL, 'HP', 'HP DD2005LA', '8CC3213PVF', '10.0.0.254', 'E0-73-E7-DC-1B-10', 'RECEPCION5-LAB6-PC', 'WIN11', 'NO', 'NO', 'NO', '', 9, 1, 5, '0', 1),
(73, 'C0073', NULL, NULL, NULL, 'HP', 'HP PRO 3130 MT', 'MXL12611Y3', '10.0.0.97', 'E0-69-95-F4-15-EF', 'RECEPCION5-LAB3-PC', 'WIN10', 'NO', 'NO', 'NO', '', 9, 1, 5, '0', 1),
(74, 'C0074', NULL, NULL, NULL, 'COMPAQ', 'CQ5210LA', 'MXX0430RYR', '10.0.0.115', 'C0-3F-D5-AB-B3-1E', 'TRANSCRIPCION2-PC', 'WIN10', 'NO', 'NO', 'NO', 'assets/images/equipodecomputo/default.png', 9, 1, 47, '0', 1),
(75, 'C0075', NULL, NULL, NULL, 'GAMEMAX', 'NO APLICA', 'NO APLICA', '10.0.0.168', 'EC-A8-6B-F8-27-17', 'CONSULTORIO1-PC', 'WIN11', 'NO', 'NO', 'NO', 'assets/images/equipodecomputo/default.png', 9, 1, 47, '0', 1),
(76, 'C0076', NULL, NULL, NULL, 'ARGOM', 'OEM', 'NO APLICA', '10.0.0.57', '90-2B-34-CC-91-DD', 'REVISIONES2-PC', 'WIN10', 'NO', 'NO', 'NO', '', 9, 1, 30, '0', 1),
(77, 'C0077', NULL, NULL, NULL, 'HP', 'HP PRO 310', 'MXL123611XY', '10.0.0.53', '78-E3-B5-95-26-CD', 'REVISIONES3', 'WIN7', 'NO', 'NO', 'NO', '', 9, 1, 30, '0', 1),
(78, 'C0078', NULL, NULL, NULL, 'LENOVO', '10B7001RLS', 'MJ002SVF', '10.0.0.155', '44-8A-5B-04-7E-9E', 'REVISIONES4-PC', 'WIN10', 'NO', 'NO', 'NO', '', 9, 1, 30, '0', 1),
(79, 'C0079', NULL, NULL, NULL, 'LENOVO', '3598H4S', 'MJ05HHA', '10.0.0.51', '74-27-EA-C8-3B-25', 'ACALIDAD', 'WIN7', 'NO', 'NO', 'NO', 'assets/images/equipodecomputo/default.png', 11, 1, 30, '0', 1),
(80, 'C0080', NULL, NULL, NULL, 'INTEL', 'NUC7JY', 'GEJY23500QLT', '10.0.0.61', '88-AE-DD-0B-5E-60', 'CONSULTORIO1-PC', 'WIN10', 'NO', 'NO', 'NO', '', 11, 1, 32, '0', 1),
(81, 'C0081', NULL, NULL, NULL, 'HP', 'HP DD2005LA', '8CC3213PVF', '10.0.0.179', '', 'TRANSCRIPCION01-PC', 'WIN10', 'NO', 'NO', 'NO', 'assets/images/equipodecomputo/default.png', 9, 1, 37, '0', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `etiquetadoras`
--

CREATE TABLE `etiquetadoras` (
  `id` int(11) NOT NULL,
  `Codigo_Inventario` varchar(10) NOT NULL,
  `Tipo_Equipo` varchar(50) DEFAULT NULL,
  `Sede` varchar(50) DEFAULT NULL,
  `Area` varchar(50) DEFAULT NULL,
  `Marca` varchar(50) DEFAULT NULL,
  `Modelo` varchar(50) DEFAULT NULL,
  `Serial` varchar(50) DEFAULT NULL,
  `IP_Asignada` varchar(15) DEFAULT NULL,
  `imagen` varchar(150) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `id_sede` int(11) NOT NULL,
  `id_area` int(11) NOT NULL,
  `activo` varchar(10) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `etiquetadoras`
--

INSERT INTO `etiquetadoras` (`id`, `Codigo_Inventario`, `Tipo_Equipo`, `Sede`, `Area`, `Marca`, `Modelo`, `Serial`, `IP_Asignada`, `imagen`, `id_categoria`, `id_sede`, `id_area`, `activo`, `estado`) VALUES
(1, 'E0001', 'ETIQUETADORA', 'CRISANTO LUQUE', 'RECEPCION', 'N/A', 'N/A', 'N/A', 'N/A', 'assets/images/etiquetadora/default.png', 4, 3, 17, '', 1),
(2, 'E0002', 'ETIQUETADORA', NULL, NULL, 'ZYPRINTER', 'AK310', 'AK2421D00216', 'USB', 'assets/images/etiquetadora/default.png', 4, 1, 2, '', 1),
(3, 'E0003', 'ETIQUETADORA', 'TURBACO VIP', 'RECEPCIÓN TURBACO VIP', 'DIGITALPOS', '4BARCODE 4B-2054TF', '254TL22219380', '192.168.1.13', 'assets/images/etiquetadora/default.png', 4, 7, 10, '', 1),
(4, 'E0004', 'ETIQUETADORA', 'CENTRO MEDICO', 'RECEPCIÓN PRINCIPAL', 'N/A', 'N/A', 'N/A', 'N/A', 'assets/images/etiquetadora/default.png', 4, 8, 14, '', 1),
(5, 'E0005', 'ETIQUETADORA', 'CENTRO MEDICO', 'CONSULTORIO 204', 'ASTA', 'AD-B2081', 'NO APLICA', 'NO APLICA', 'assets/images/etiquetadora/default.png', 4, 8, 15, '', 1),
(6, 'E0006', 'ETIQUETADORA', 'EDIF. IMÁGENES', 'RECEPCIÓN 4TO PISO', 'DIGITALPOS', 'DIG-TT426B', '254TLE20B020094', '10.0.0.11', '', 4, 7, 10, '', 1),
(7, 'E0007', 'ETIQUETADORA', 'RONDA REAL', 'RECEPCIÓN', 'ASTA', 'AD-B2081', 'NO APLICA', 'NO APLICA', '', 4, 7, 10, '', 1),
(8, 'E0008', 'ETIQUETADORA', 'PIE DE LA POPA', 'TOMA DE MUESTRA PIE DE LA POPA', 'DIGITALPOS', 'DIG-TT426B', '254TLE218260322', '192.168.1.58', '', 4, 7, 10, '', 1),
(9, 'E0009', 'ETIQUETADORA', NULL, NULL, NULL, NULL, NULL, NULL, '', 4, 7, 10, '', 1),
(10, 'E0010', 'ETIQUETADORA', NULL, NULL, NULL, NULL, NULL, NULL, '', 4, 7, 10, '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `impresoras`
--

CREATE TABLE `impresoras` (
  `id` int(11) NOT NULL,
  `Codigo_Inventario` varchar(10) NOT NULL,
  `Tipo_Equipo` varchar(50) DEFAULT NULL,
  `Sede` varchar(50) DEFAULT NULL,
  `Area` varchar(50) DEFAULT NULL,
  `Marca` varchar(50) DEFAULT NULL,
  `Modelo` varchar(50) DEFAULT NULL,
  `Serial` varchar(50) DEFAULT NULL,
  `IP_Asignada` varchar(15) DEFAULT NULL,
  `imagen` varchar(150) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `id_sede` int(11) NOT NULL,
  `id_area` int(11) NOT NULL,
  `activo` varchar(10) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `impresoras`
--

INSERT INTO `impresoras` (`id`, `Codigo_Inventario`, `Tipo_Equipo`, `Sede`, `Area`, `Marca`, `Modelo`, `Serial`, `IP_Asignada`, `imagen`, `id_categoria`, `id_sede`, `id_area`, `activo`, `estado`) VALUES
(1, 'I0001', 'IMPRESORA', 'TURBACO VIP', 'RECEPCIÓN TURBACO VIP', 'HP', 'HP Laser MFP 137fnw', 'CNB3P5KLBX', '192.168.1.10', '', 6, 7, 10, '', 1),
(2, 'I0002', 'IMPRESORA', 'TURBACO VIP', 'RECEPCIÓN TURBACO VIP', 'HP', 'HP LaserJet M203dw', 'VNB3G79572', '192.168.1.101', '', 6, 7, 10, '', 1),
(3, 'I0003', 'IMPRESORA', 'EDIF. IMÁGENES', 'RECEPCIÓN 3RE PISO', 'HP', 'HP LaserJet P1102w', 'VND3M95036', 'NO APLICA', '', 6, 1, 11, '', 1),
(4, 'I0004', 'IMPRESORA', 'EDIF. IMÁGENES', 'CALL CENTER 3RE PISO', 'HP', 'HP LaserJet P1102w', 'VND3D71866', 'NO APLICA', '', 6, 1, 12, '', 1),
(5, 'I0005', 'IMPRESORA', 'CENTRO MEDICO', 'RECEPCIÓN LOCAL 106', 'HP', 'HP Laser 107w', 'CNB2N5MQ57', 'NO APLICA', '', 6, 8, 13, '', 1),
(6, 'I0006', 'IMPRESORA', 'CENTRO MEDICO', 'CONSULTORIO 204', 'HP', 'HP LaserJet P1102w', 'VND3W73181', 'NO APLICA', '', 6, 8, 15, '', 1),
(7, 'I0007', 'IMPRESORA', 'CENTRO MEDICO', 'TOMA DE MUESTRA PRINCIPAL', 'HP', 'HP LaserJet 600 M602', 'CNDCGCL0NY', '10.0.0.180', '', 6, 8, 26, '', 1),
(8, 'I0008', 'IMPRESORA', 'CENTRO MEDICO', 'RECEPCIÓN PRINCIPAL', 'RICOH', 'SP 3710SF', '5170Z910309', '10.0.0.169', '', 6, 8, 14, '', 1),
(9, 'I0009', 'IMPRESORA', 'CENTRO MEDICO', 'RECEPCIÓN PRINCIPAL', 'HP', 'HP LaserJet M203dw', 'VNB3G79155', '10.0.0.187', '', 6, 8, 14, '', 1),
(10, 'I0010', 'IMPRESORA', 'EDIF. IMÁGENES', 'RECEPCIÓN 4TO PISO', 'HP', 'HP Laser MFP 137fnw', 'CNB2NDNV4M', '10.0.0.16', '', 6, 1, 16, '', 1),
(11, 'I0011', 'IMPRESORA', 'EDIF. IMÁGENES', 'RECEPCIÓN 4TO PISO', 'HP', 'HP Laser 107w', 'CNB3P21DZ3', 'NO APLICA', '', 6, 1, 16, '', 1),
(12, 'I0012', 'IMPRESORA', 'RONDA REAL', 'RECEPCIÓN', 'HP', 'HP Laser MFP 137fnw', 'CNB1Q5M894', '192.168.1.35', '', 6, 9, 17, '', 1),
(13, 'I0013', 'IMPRESORA', 'PIE DE LA POPA', 'RECEPCIÓN PIE DE LA POPA', 'HP', 'HP LaserJet Pro MFP M127fn', 'CNB89H759W7', '192.168.1.63', '', 6, 5, 18, '', 1),
(14, 'I0014', 'IMPRESORA', 'PIE DE LA POPA', 'RECEPCIÓN PIE DE LA POPA', 'HP', 'HP Laser 107w', 'CNB2P38CJ2', 'NO APLICA', '', 6, 5, 18, '', 1),
(15, 'I0015', 'IMPRESORA', 'PIE DE LA POPA', 'TOMA DE MUESTRA PIE DE LA POPA', 'HP', 'HP Laser MFP 137fnw', 'CNB1QD48W7', '192.168.1.235', '', 6, 5, 27, '', 1),
(16, 'I0016', 'IMPRESORA', 'PIE DE LA POPA', 'PROCESOS PIE DE LA POPA', 'HP', 'HP Laser 107w', 'CNB3NBC7Q6', 'NO APLICA', '', 6, 5, 28, '', 1),
(17, 'I0017', 'IMPRESORA', NULL, NULL, NULL, NULL, NULL, NULL, '', 6, 1, 1, '', 1),
(18, 'I0018', 'IMPRESORA', NULL, NULL, NULL, NULL, NULL, NULL, '', 6, 1, 1, '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perifericos`
--

CREATE TABLE `perifericos` (
  `id` int(11) NOT NULL,
  `Codigo_Inventario` varchar(10) NOT NULL,
  `Tipo_Equipo` varchar(50) DEFAULT NULL,
  `Sede` varchar(50) DEFAULT NULL,
  `Area` varchar(50) DEFAULT NULL,
  `Usuario_Equipo` varchar(50) DEFAULT NULL,
  `Marca` varchar(50) DEFAULT NULL,
  `Modelo` varchar(50) DEFAULT NULL,
  `Serial` varchar(50) DEFAULT NULL,
  `imagen` varchar(150) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `id_sede` int(11) NOT NULL,
  `id_area` int(11) NOT NULL,
  `activo` varchar(10) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `perifericos`
--

INSERT INTO `perifericos` (`id`, `Codigo_Inventario`, `Tipo_Equipo`, `Sede`, `Area`, `Usuario_Equipo`, `Marca`, `Modelo`, `Serial`, `imagen`, `id_categoria`, `id_sede`, `id_area`, `activo`, `estado`) VALUES
(1, 'P0001', 'AUDIO/RECEPTOR', 'EDIF. IMÁGENES ', 'TOMA DE MUESTRAS 3ER PISO', 'TOMA DE MUESTRAS', 'VENTO', 'WN332', '19790/CJAJ2', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(1, 'P0001', 'AUDIO/RECEPTOR', 'EDIF. IMÁGENES ', 'TOMA DE MUESTRAS 3ER PISO', 'TOMA DE MUESTRAS', 'VENTO', 'WN332', '19790/CJAJ2', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(2, 'P0002', 'AUDIO/MICROFONO', 'EDIF. IMÁGENES ', 'TOMA DE MUESTRAS 3ER PISO', 'TOMA DE MUESTRAS', 'VENTO', 'WN332', '1890/CJAJ2-F804.15', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(3, 'P0003', 'AUDIO/MICROFONO', 'EDIF. IMÁGENES ', 'TOMA DE MUESTRAS 3ER PISO', 'TOMA DE MUESTRAS', 'VENTO', 'WN332', '1890/CJAJ2-F808.20', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(4, 'P0004', 'MOUSE', 'EDIF. IMÁGENES ', 'REVISONES ', 'KELLY', 'OPTICAL VERTICAL MOUSE', 'PFAW31059', 'MME02', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(5, 'P0005', 'MOUSE', 'EDIF. IMÁGENES ', 'RECEPCIÓN IMÁGENES', 'HEIDY', 'OPTICAL VERTICAL MOUSE', 'PFAW31059', 'MME02', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(6, 'P0006', 'MOUSE', 'PRINCIPAL', 'RECEPCIÓN LOCAL 106', 'JOCELYN PAJARO - RECEPCIONLOCAL106C2-PC', 'OPTICAL VERTICAL MOUSE', 'PFAW31059', 'MME02', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(7, 'P0007', 'MOUSE', 'EDIF. IMÁGENES ', 'CONSULTORIO IMÁGENES 5TO PISO', 'MARINA', 'OPTICAL VERTICAL MOUSE', 'PFAW31059', 'MME02', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(8, 'P0008', 'MOUSE', '', '', '', 'OPTICAL VERTICAL MOUSE', 'PFAW31059', 'MME02', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(9, 'P0009', 'MOUSE', '', '', '', 'OPTICAL VERTICAL MOUSE', 'PFAW31059', 'MME02', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(10, 'P0010', 'MOUSE', '', '', '', 'OPTICAL VERTICAL MOUSE', 'PFAW31059', 'MME02', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(11, 'P0011', 'MOUSE', '', '', '', 'OPTICAL VERTICAL MOUSE', 'PFAW31059', 'MME02', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(12, 'P0012', 'MOUSE', '', '', '', 'OPTICAL VERTICAL MOUSE', 'PFAW31059', 'MME02', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(13, 'P0013', 'MOUSE', '', '', '', 'OPTICAL VERTICAL MOUSE', 'PFAW31059', 'MME02', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(14, 'P0014', 'MOUSE', '', '', '', 'OPTICAL VERTICAL MOUSE', 'PFAW31059', 'MME02', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(15, 'P0015', 'MOUSE', '', '', '', 'OPTICAL VERTICAL MOUSE', 'PFAW31059', 'MME02', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(16, 'P0016', 'TECLADO', 'EDIF. IMÁGENES ', 'REVISONES', 'KELLY', 'GENIUS', 'KB-117', '33196944102996', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(17, 'P0017', 'TECLADO', 'EDIF. IMÁGENES ', 'CONTABILIDAD', 'YUDY', 'GENIUS', 'KB-117', '33196944102994', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(18, 'P0018', 'TECLADO', 'EDIF. IMÁGENES ', 'REVISONES', 'ANA ROMERO', 'GENIUS', 'KB-117', '33196944102992', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(19, 'P0019', 'TECLADO', 'PRINCIPAL', 'RECEPCIÓN PRINCIPAL', 'JOCELYN PAJARO', 'GENIUS', 'KB-117', '33196944102999', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(20, 'P0020', 'TECLADO', 'EDIF. IMÁGENES ', 'CONSULTORIO IMÁGENES 5TO PISO', 'MARINA RADA ', 'GENIUS', 'KB-117', '33I96944102991', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(21, 'P0021', 'TECLADO', 'PRINCIPAL', 'RECEPCIÓN LOCAL 106', 'Liney', 'GENIUS', 'KB-117', '33196944102981', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(22, 'P0022', 'TECLADO', 'EDIF. IMÁGENES ', 'CONTABILIDAD', 'ASISCONTABILIDAD1-PC', 'COMPUMAX', 'CK-440U', 'CK440U-36251', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(23, 'P0023', 'MOUSE', 'EDIF. IMÁGENES ', 'CONTABILIDAD', 'ASISCONTABILIDAD1-PC', 'COMPUMAX', 'CM-891U', 'CM891U-36251', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(24, 'P0024', 'MONITOR', 'EDIF. IMÁGENES ', 'CONTABILIDAD', 'ASISCONTABILIDAD1-PC', 'COMPUMAX', 'ML2024CM', 'S2024CM24A011536', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(25, 'P0025', 'TECLADO', 'EDIF. IMÁGENES ', 'CONTABILIDAD', 'ASISCONTABILIDAD2-PC', 'COMPUMAX', 'CK-440U', 'CK440U-41726', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(26, 'P0026', 'MOUSE', 'EDIF. IMÁGENES ', 'CONTABILIDAD', 'ASISCONTABILIDAD2-PC', 'COMPUMAX', 'CM-891U', 'CM891I-41726', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(27, 'P0027', 'MONITOR', 'EDIF. IMÁGENES ', 'CONTABILIDAD', 'ASISCONTABILIDAD2-PC', 'COMPUMAX', 'ML2022CM', 'U2022CM23C060199', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(28, 'P0028', 'TECLADO', 'EDIF. IMÁGENES ', 'CONTABILIDAD', 'ASISCONTABILIDAD3-PC', 'COMPUMAX', 'CK-440U', 'CK440U-36254', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(29, 'P0029', 'MOUSE', 'EDIF. IMÁGENES ', 'CONTABILIDAD', 'ASISCONTABILIDAD3-PC', 'COMPUMAX', 'CM-891U', 'CM891U-36254', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(30, 'P0030', 'MONITOR', 'EDIF. IMÁGENES ', 'CONTABILIDAD', 'ASISCONTABILIDAD3-PC', 'COMPUMAX', 'ML2022CM', 'U2022CM23C060197', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(31, 'P0031', 'TECLADO', 'CLINICA NUESTRA', 'INMUNOANALISISPRIO', 'INMUNOANALISISPRIO-PC', 'GENIUS', 'KB-115', 'KB-115', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(32, 'P0032', 'MOUSE', 'CLINICA NUESTRA', 'INMUNOANALISISPRIO', 'INMUNOANALISISPRIO-PC', 'GENIUS', 'DX-160', 'X1196014400219', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(33, 'P0033', 'MONITOR', 'CLINICA NUESTRA', 'INMUNOANALISISPRIO', 'INMUNOANALISISPRIO-PC', 'SAMSUNG', 'S19C150F', 'ZXTMH4LD707062H', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(34, 'P0034', 'TECLADO', 'TURBACO VIP', 'RECEPCION TURBACO VIP', 'RECEPCION - RECEPCION02TURB', 'HP', 'KU-1516', 'BCYST0B5YEQ1Z8', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(35, 'P0035', 'MOUSE', 'TURBACO VIP', 'RECEPCION TURBACO VIP', 'RECEPCION - RECEPCION02TURB', 'LENOVO', 'EMS-537A', '8SSM50L24507AVLC', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(36, 'P0036', 'TECLADO', 'TURBACO VIP', 'RECEPCION TURBACO VIP', 'RECEPCION - TURBACO-VIP-2', 'HP', 'KU-1516', 'BCYST0B5YF95MT', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(37, 'P0037', 'MOUSE', 'TURBACO VIP', 'RECEPCION TURBACO VIP', 'RECEPCION - TURBACO-VIP-2', 'HP', 'MSU0923', 'FCYRV0E26F94VC', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(38, 'P0038', 'MICROFONO', 'TURBACO VIP', 'TOMA DE MUESTRAS - TURBACO VIP', 'TOMA DE MUESTRAS', 'TAKSTAR', 'TS-331', 'NO APLICA', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(39, 'P0039', 'WIRELESS RECEIVER', 'TURBACO VIP', 'TOMA DE MUESTRAS - TURBACO VIP', 'TOMA DE MUESTRAS', 'TAKSTAR', 'TS-331', 'NO APLICA', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(40, 'P0040', 'AMPLIFICADOR', 'TURBACO VIP', 'TOMA DE MUESTRAS - TURBACO VIP', 'TOMA DE MUESTRAS', 'AMERICAN SOUND', 'AK-280UB0', 'NO APLICA', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(41, 'P0041', 'MOUSE', 'EDIF. IMÁGENES ', 'RECEPCION 3RE PISO', 'RECEPCION3-4-PC', 'GENIUS', 'DX-160', 'X2A96162400719', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(42, 'P0042', 'TECLADO', 'EDIF. IMÁGENES ', 'RECEPCION 3RE PISO', 'RECEPCION3-4-PC', 'GENIUS', 'KB-115', 'KB-115', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(43, 'P0043', 'MOUSE', 'EDIF. IMÁGENES ', 'RECEPCION 3RE PISO', 'RECEPCION3-8-PC', 'HP', 'MSU0923', 'FCYRV0E26EQ6L6', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(44, 'P0044', 'TECLADO', 'EDIF. IMÁGENES ', 'RECEPCION 3RE PISO', 'RECEPCION3-8-PC', 'GENIUS', 'KB-115', 'KB-115', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(45, 'P0045', 'MOUSE', 'EDIF. IMÁGENES ', 'RECEPCION 3RE PISO', 'RECEPCION3-9-PC', 'HP', 'MODGUO', '904368-001', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(46, 'P0046', 'TECLADO', 'EDIF. IMÁGENES ', 'RECEPCION 3RE PISO', 'RECEPCION3-9-PC', 'HP', 'KU-1516', '697737-161', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(47, 'P0047', 'MOUSE', 'CENTRO MEDICO', 'RECEPCIÓN LOCAL 106', 'RECEPCIONLOCAL106C1-PC', 'HP', 'MSU0923', 'FCYRV0E26EF8MJ', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(48, 'P0048', 'TECLADO', 'CENTRO MEDICO', 'RECEPCIÓN LOCAL 106', 'RECEPCIONLOCAL106C1-PC', 'LENOVO', 'KB-117', '33I96944102981', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(49, 'P0049', 'TECLADO', 'CENTRO MEDICO', 'RECEPCIÓN LOCAL 106', 'RECEPCIONLOCAL106C2-PC', 'LENOVO', 'EKB-536A', '1620065', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(50, 'P0050', 'TECLADO', 'CENTRO MEDICO', 'RECEPCIÓN LOCAL 106', 'RECEPCIONLOCAL106C3-PC', 'LENOVO', 'SK-8823', '15R061L', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(51, 'P0051', 'MOUSE', 'CENTRO MEDICO', 'RECEPCIÓN LOCAL 106', 'RECEPCIONLOCAL106C3-PC', 'LENOVO', 'MOJUUO', '8SSM50L24505AVLC16T0G04', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(52, 'P0052', 'TECLADO', 'CENTRO MEDICO', 'RECEPCIÓN PRINCIPAL', 'RECEPCIONPRINCIPAL1-PC', 'GENIUS', 'KB-117', '8N02520', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(53, 'P0053', 'MOUSE', 'CENTRO MEDICO', 'RECEPCIÓN PRINCIPAL', 'RECEPCIONPRINCIPAL1-PC', 'LENOVO', 'SM-8825', '32I96410900285', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(54, 'P0054', 'LECTOR CODIGO DE BARRA', 'CENTRO MEDICO', 'RECEPCIÓN PRINCIPAL', 'RECEPCIONPRINCIPAL1-PC', 'SYMBOL', 'DS4308', '16181010505303', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(55, 'P0055', 'TECLADO', 'CENTRO MEDICO', 'RECEPCIÓN PRINCIPAL', 'RECEPCIONPRINCIPAL2-PC', 'GENIUS', 'KB-115', '', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(56, 'P0056', 'MOUSE', 'CENTRO MEDICO', 'RECEPCIÓN PRINCIPAL', 'RECEPCIONPRINCIPAL2-PC', 'LENOVO', 'SM-8825', '160200940313', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(57, 'P0057', 'LECTOR CODIGO DE BARRA', 'CENTRO MEDICO', 'RECEPCIÓN PRINCIPAL', 'RECEPCIONPRINCIPAL2-PC', 'SYMBOL', 'DS4308', '16096010501907', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(58, 'P0058', 'TECLADO', 'CENTRO MEDICO', 'RECEPCIÓN PRINCIPAL', 'RECEPCIONPRINCIPAL3-PC', 'GENIUS', 'KB-117', '32I96440100002', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(59, 'P0059', 'MOUSE', 'CENTRO MEDICO', 'RECEPCIÓN PRINCIPAL', 'RECEPCIONPRINCIPAL3-PC', 'LENOVO', 'SM-8825', '', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(60, 'P0060', 'LECTOR CODIGO DE BARRA', 'CENTRO MEDICO', 'RECEPCIÓN PRINCIPAL', 'RECEPCIONPRINCIPAL3-PC', 'SYMBOL', 'DS4308', '16096010502084', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(61, 'P0061', 'TECLADO', 'CENTRO MEDICO', 'RECEPCIÓN PRINCIPAL', 'RECEPCIONPRINCIPAL4-PC', 'GENIUS', 'KB-117', '32I96440100007', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(62, 'P0062', 'MOUSE', 'CENTRO MEDICO', 'RECEPCIÓN PRINCIPAL', 'RECEPCIONPRINCIPAL4-PC', 'LENOVO', 'SM-8825', '160301321049', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(63, 'P0063', 'LECTOR CODIGO DE BARRA', 'CENTRO MEDICO', 'RECEPCIÓN PRINCIPAL', 'RECEPCIONPRINCIPAL4-PC', 'SYMBOL', 'DS4308', '16181010505310', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(64, 'P0064', 'MONITOR', 'CENTRO MEDICO', 'RECEPCIÓN PRINCIPAL', 'RECEPCIONPRINCIPAL5-PC', 'LENOVO', 'V9-058VN3', '61E0KAR6WWV9058VN3', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(65, 'P0065', 'TECLADO', 'CENTRO MEDICO', 'RECEPCIÓN PRINCIPAL', 'RECEPCIONPRINCIPAL5-PC', 'GENIUS', 'DX-120', 'X2J96449809529', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(66, 'P0066', 'MOUSE', 'CENTRO MEDICO', 'RECEPCIÓN PRINCIPAL', 'RECEPCIONPRINCIPAL5-PC', 'GENIUS', 'KB-117', '33I96944102999', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(67, 'P0067', 'MONITOR', 'CENTRO MEDICO', 'RECEPCIÓN PRINCIPAL', 'RECEPCIONPRINCIPAL6-PC', 'SAMSUNG', 'S19D300NY', 'ZZ8QH4LF608645N', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(68, 'P0068', 'TECLADO', 'CENTRO MEDICO', 'RECEPCIÓN PRINCIPAL', 'RECEPCIONPRINCIPAL6-PC', 'GENIUS', 'GK-100011', 'XP17S9705398', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(69, 'P0069', 'MOUSE', 'CENTRO MEDICO', 'RECEPCIÓN PRINCIPAL', 'RECEPCIONPRINCIPAL6-PC', 'GENIUS', 'DX-160', 'X1I9614404342', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(70, 'P0070', 'TECLADO', 'CENTRO MEDICO', 'CONSULTORIO 204', 'CONSULTORIO204-PRTL', 'GENIUS', 'GK-10011', 'XP16S9514647', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(71, 'P0071', 'MOUSE', 'CENTRO MEDICO', 'CONSULTORIO 204', 'CONSULTORIO204-PRTL', 'ASUS', 'A43', '20321010912', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(72, 'P0072', 'LECTOR CODIGO DE BARRA', 'CENTRO MEDICO', 'CONSULTORIO 204', 'CONSULTORIO204-PRTL', 'SAT', 'SAT LD101RF PLUS', 'XYWS23153642040306', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(73, 'P0073', 'TECLADO', 'EDIF. IMÁGENES ', 'RECEPCION 4TO PISO', 'RECEPCION4-3-PC', 'GENIUS', 'KB-117', '32196440100004', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(74, 'P0074', 'MOUSE', 'EDIF. IMÁGENES ', 'RECEPCION 4TO PISO', 'RECEPCION4-3-PC', 'GENIUS', 'DX-160', 'X2A96162400715', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(75, 'P0075', 'TECLADO', 'EDIF. IMÁGENES ', 'REVISIONES', 'REVISIONES1-PC', 'POWER', 'NC-901', 'NO APLICA', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(76, 'P0076', 'MOUSE', 'EDIF. IMÁGENES ', 'REVISIONES', 'REVISIONES1-PC', 'OPTICAL VERTICAL MOUSE', '5D', 'NO APLICA', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(77, 'P0077', 'TECLADO', 'EDIF. IMÁGENES ', 'CALL CENTER 3RE PISO', 'NO APLICA', 'GENIUS', 'DX-160', 'X2A96162400717', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(78, 'P0078', 'MOUSE', 'EDIF. IMÁGENES ', 'CALL CENTER 3RE PISO', 'NO APLICA', 'GENIUS', 'KB-115', 'NO APLICA', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(79, 'P0079', 'TECLADO', 'EDIF. IMÁGENES ', 'RECEPCIÓN 4TO PISO', 'RECEPCION4-1-PC', 'HP', 'KU-1516', '697737-161', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(80, 'P0080', 'MOUSE', 'EDIF. IMÁGENES ', 'RECEPCIÓN 4TO PISO', 'RECEPCION4-1-PC', 'HP', 'MSU0923', 'NO APLICA', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(81, 'P0081', 'TECLADO', 'EDIF. IMÁGENES ', 'RECEPCIÓN 4TO PISO', 'RECEPCION4-2-PC', 'HP', 'KU-1516', 'BCYST0B5YE72ZY', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(82, 'P0082', 'MOUSE', 'EDIF. IMÁGENES ', 'RECEPCIÓN 4TO PISO', 'RECEPCION4-2-PC', 'HP', 'MSU0923', '697738001', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(83, 'P0083', 'TECLADO', 'RONDA REAL', 'RECEPCIÓN', 'RONDAREAL02-PC', 'HP', 'TPA-P001K', '9CP251P614', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(84, 'P0084', 'MOUSE', 'RONDA REAL', 'RECEPCIÓN', 'RONDAREAL02-PC', 'HP', 'TPA-P001M', '9CP2512M67', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(85, 'P0085', 'TECLADO', 'RONDA REAL', 'RECEPCIÓN', 'RONDAREAL01-PC', 'LENOVO', 'EKB-536A', '162018H', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(86, 'P0086', 'MOUSE', 'RONDA REAL', 'RECEPCIÓN', 'RONDAREAL01-PC', 'LENOVO', 'MOJUUO', '8SSM50L24505AVLC1A60D23', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(87, 'P0087', 'TECLADO', 'EDIF. IMÁGENES ', 'RECEPCION 3RE PISO', 'RECEPCION3-1-PC', 'HP', 'PRO101U', '904368-001', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(88, 'P0088', 'MOUSE', 'EDIF. IMÁGENES ', 'RECEPCION 3RE PISO', 'RECEPCION3-1-PC', 'HP', 'MODGUO', '904368-001', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(89, 'P0089', 'TECLADO', 'EDIF. IMÁGENES ', 'RECEPCION 3RE PISO', 'RECEPCION3-2-PC', 'GENIUS', 'KB-115', 'NO APLICA', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(90, 'P0090', 'MOUSE', 'EDIF. IMÁGENES ', 'RECEPCION 3RE PISO', 'RECEPCION3-2-PC', 'GENIUS', 'DX-160', 'X1I96014406766', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(91, 'P0091', 'TECLADO', 'EDIF. IMÁGENES ', 'RECEPCION 3RE PISO', 'RECEPCION3-3-PC', 'GENIUS', 'KB-115', 'NO APLICA', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(92, 'P0092', 'MOUSE', 'EDIF. IMÁGENES ', 'RECEPCION 3RE PISO', 'RECEPCION3-3-PC', 'GENIUS', 'DX-160', 'X1I96014404355', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(93, 'P0093', 'TECLADO', 'EDIF. IMÁGENES ', 'RECEPCION 3RE PISO', 'RECEPCION3-4-PC', 'GENIUS', 'KB-115', 'NO APLICA', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(94, 'P0094', 'MOUSE', 'EDIF. IMÁGENES ', 'RECEPCION 3RE PISO', 'RECEPCION3-4-PC', 'GENIUS', 'DX-160', 'X2A96162400719', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(95, 'P0095', 'TECLADO', 'EDIF. IMÁGENES ', 'RECEPCION 3RE PISO', 'RECLAB2', 'GENIUS', 'KB-115', 'NO APLICA', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(96, 'P0096', 'MOUSE', 'EDIF. IMÁGENES ', 'RECEPCION 3RE PISO', 'RECLAB2', 'HP', 'MODGUO', '904368-001', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(97, 'P0097', 'TECLADO', 'EDIF. IMÁGENES ', 'RECEPCION 3RE PISO', 'RECEPCION3-6-PC', 'GENIUS', 'KB-115', 'NO APLICA', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(98, 'P0098', 'MOUSE', 'EDIF. IMÁGENES ', 'RECEPCION 3RE PISO', 'RECEPCION3-6-PC', 'GENIUS', 'DX-160', 'X1I9601440065', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(99, 'P0099', 'TECLADO', 'EDIF. IMÁGENES ', 'RECEPCION 3RE PISO', 'RECEPCION3-7-PC', 'GENIUS', 'KB-115', 'NO APLICA', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(100, 'P0100', 'MOUSE', 'EDIF. IMÁGENES ', 'RECEPCION 3RE PISO', 'RECEPCION3-7-PC', 'GENIUS', 'DX-160', 'X2A96162400704', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(101, 'P0101', 'MONITOR', 'PIE DE LA POPA', 'RECEPCIÓN PIE DE LA POPA', 'RECEPCIONPIEDEPOPA1-PC', 'ACER', 'V206HQL', 'MMLXKAA022122121EB461', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(102, 'P0102', 'TECLADO', 'PIE DE LA POPA', 'RECEPCIÓN PIE DE LA POPA', 'RECEPCIONPIEDEPOPA1-PC', 'POWER GROUP', 'WIRED KEYBOARD', 'C-901', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(103, 'P0103', 'MOUSE', 'PIE DE LA POPA', 'RECEPCIÓN PIE DE LA POPA', 'RECEPCIONPIEDEPOPA1-PC', 'POWER GROUP', 'WIRED MOUSE', 'C-901', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(104, 'P0104', 'MONITOR', 'PIE DE LA POPA', 'RECEPCIÓN PIE DE LA POPA', 'RECEPCIONPIEDEPOPA2-PC', 'SAMSUNG', 'S20D300NH', 'ZZD3H4LG502366R', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(105, 'P0105', 'TECLADO', 'PIE DE LA POPA', 'RECEPCIÓN PIE DE LA POPA', 'RECEPCIONPIEDEPOPA2-PC', 'GENIUS', 'WIRED KEYBOARD', 'KB-115', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(106, 'P0106', 'MOUSE', 'PIE DE LA POPA', 'RECEPCIÓN PIE DE LA POPA', 'RECEPCIONPIEDEPOPA2-PC', 'GENIUS', 'NETSCROLL 120', 'XE507816840', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(107, 'P0107', 'TECLADO', 'PIE DE LA POPA', 'RECEPCIÓN PIE DE LA POPA', 'RECEPCIONPIEDEPOPA3-PC', 'HP', 'KU-1516', 'BCYST0B5YEQ2JJ', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(108, 'P0108', 'MOUSE', 'PIE DE LA POPA', 'RECEPCIÓN PIE DE LA POPA', 'RECEPCIONPIEDEPOPA3-PC', 'HP', 'MSU0923', '697738-001', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(109, 'P0109', 'TECLADO', 'PIE DE LA POPA', 'PROCESOS PIE DE LA POPA', 'PROCESO PIE DE LA POPA', 'HP', 'HP 125 - TPA-L001K', 'BKTAR0BCPHU6NR', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(110, 'P0110', 'MOUSE', 'PIE DE LA POPA', 'PROCESOS PIE DE LA POPA', 'PROCESO PIE DE LA POPA', 'HP', 'HP 125 WIRED MOUSE', 'FKTFR0AQWHUX2T', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(111, 'P0111', 'MICROFONO', 'PIE DE LA POPA', 'TOMA DE MUESTRAS - PIE DE LA POPA', 'TOMA DE MUESTRAS', 'TAKSTAR', 'TS-331', 'NO APLICA', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(112, 'P0112', 'WIRELESS RECEIVER', 'PIE DE LA POPA', 'TOMA DE MUESTRAS - PIE DE LA POPA', 'TOMA DE MUESTRAS', 'MAXLIN', 'MFIN-325MX', 'NO APLICA', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(113, 'P0113', 'AMPLIFICADOR', 'PIE DE LA POPA', 'TOMA DE MUESTRAS - PIE DE LA POPA', 'TOMA DE MUESTRAS', 'AMERICAN SOUND', 'PA-227', 'NO APLICA', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(114, 'P0114', 'MONITOR', 'DIVINA PROVIDENCIA', 'TOMA DE MUESTRA DIVINA PROVIDENCIA', 'DIVINA PROVIDENCIA', 'HP', 'HP V193B', '3CQ60803RD', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(115, 'P0115', 'TECLADO', 'DIVINA PROVIDENCIA', 'TOMA DE MUESTRA DIVINA PROVIDENCIA', 'DIVINA PROVIDENCIA', 'HP', 'KB-117', '32I96440100001', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(116, 'P0116', 'MOUSE', 'DIVINA PROVIDENCIA', 'TOMA DE MUESTRA DIVINA PROVIDENCIA', 'DIVINA PROVIDENCIA', 'GENIUS', 'DX-120', 'X2J96449809583', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(117, 'P0117', 'LECTOR CODIGO DE BARRA', 'DIVINA PROVIDENCIA', 'TOMA DE MUESTRA DIVINA PROVIDENCIA', 'DIVINA PROVIDENCIA', 'SAT', 'SAT LD101RF PLUS', 'XYWS23153642040125', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(118, 'P0118', 'AURICULAR', 'EDIF. IMÁGENES ', 'TRANSCRIPCION IMÁGENES 5TO PISO', '', 'MOTOROLA', 'EARBUDS 105', 'D01A0032229016112', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(119, 'P0119', 'AURICULAR', 'EDIF. IMÁGENES ', 'TRANSCRIPCION IMÁGENES 5TO PISO', '', 'MOTOROLA', 'EARBUDS 105', 'D01A0032229016106', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(120, 'P0120', 'AURICULAR', 'EDIF. IMÁGENES ', 'TRANSCRIPCION IMÁGENES 5TO PISO', '', 'MOTOROLA', 'EARBUDS 105', 'D01A0032229008305', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(121, 'P0121', 'TECLADO', 'CLINICA NUESTRA', 'RECEPCION PROCESOS CLINICA NUESTRA', 'RECEPCIONPCN-PC', 'COMPUMAX', 'CK-440U', 'CK440U-14161', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(122, 'P0122', 'MOUSE', 'CLINICA NUESTRA', 'RECEPCION PROCESOS CLINICA NUESTRA', 'RECEPCIONPCN-PC', 'GENIUS', 'GM-150032', 'NO APLICA', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(123, 'P0123', 'TECLADO', 'CLINICA NUESTRA', 'PROCESOS CLINICA NUESTRA', 'INMUNOANALISISPRIO-PC', 'GENIUS', 'KB-115', 'NO APLICA', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(124, 'P0124', 'MOUSE', 'CLINICA NUESTRA', 'PROCESOS CLINICA NUESTRA', 'INMUNOANALISISPRIO-PC', 'GENIUS', 'DX-160', 'X1I96014400219', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(125, 'P0125', 'MONITOR', 'CLINICA NUESTRA', 'PROCESOS CLINICA NUESTRA', 'INMUNOANALISISPRIO-PC', 'SAMSUNG', 'S19C150F', 'ZXTMH4LD707062H', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(126, 'P0126', 'TECLADO', 'CLINICA NUESTRA', 'PROCESOS CLINICA NUESTRA', 'QUIMICACN-PC', 'GENIUS', 'GK-100011', 'XP17S9B0736', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(127, 'P0127', 'MOUSE', 'CLINICA NUESTRA', 'PROCESOS CLINICA NUESTRA', 'QUIMICACN-PC', 'GENIUS', 'DX-160', 'NO APLICA', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(128, 'P0128', 'MONITOR', 'CLINICA NUESTRA', 'PROCESOS CLINICA NUESTRA', 'QUIMICACN-PC', 'LG', 'E1941SX', '102NDPH13648', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(129, 'P0129', 'TECLADO', 'CLINICA NUESTRA', 'PROCESOS CLINICA NUESTRA', 'HEMATOLOGIACN-PC', 'GENIUS', 'GK-100011', 'XP17S9B0735', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(130, 'P0130', 'MOUSE', 'CLINICA NUESTRA', 'PROCESOS CLINICA NUESTRA', 'HEMATOLOGIACN-PC', 'GENIUS', 'DX-180', 'X1D21040603078', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(131, 'P0131', 'MONITOR', 'CLINICA NUESTRA', 'PROCESOS CLINICA NUESTRA', 'HEMATOLOGIACN-PC', 'SAMSUNG', 'S19C150F', 'LS19C150FS/ZL', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(132, 'P0132', 'TECLADO', 'CLINICA NUESTRA', 'PROCESOS CLINICA NUESTRA', 'SERVICIOSTRANSFUSIONALESCN-PC', 'GENIUS', 'KB-117', '32I96440100003', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(133, 'P0133', 'MOUSE', 'CLINICA NUESTRA', 'PROCESOS CLINICA NUESTRA', 'SERVICIOSTRANSFUSIONALESCN-PC', 'GENIUS', 'DX-120', 'X2J96449809590', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(134, 'P0134', 'MONITOR', 'CLINICA NUESTRA', 'PROCESOS CLINICA NUESTRA', 'SERVICIOSTRANSFUSIONALESCN-PC', 'SAMSUNG', 'LS20D300', 'ZZD3H4LG604378D', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(135, 'P0135', 'TECLADO', 'CLINICA NUESTRA', 'RECEPCION IMÁGENES CLINICA NUESTRA', 'RECIMACNSDR-01-PC', 'GENIUS', 'KB-117', '32I96440100008', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(136, 'P0136', 'MOUSE', 'CLINICA NUESTRA', 'RECEPCION IMÁGENES CLINICA NUESTRA', 'RECIMACNSDR-01-PC', 'GENIUS', 'DX-120', 'X2J96449809544', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(137, 'P0137', 'MONITOR', 'CLINICA NUESTRA', 'RECEPCION IMÁGENES CLINICA NUESTRA', 'RECIMACNSDR-01-PC', 'LENOVO', 'LS1922WA', 'V487076', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(138, 'P0138', 'TECLADO', 'CLINICA NUESTRA', 'RECEPCION IMÁGENES CLINICA NUESTRA', 'RECIMACNSDR2-PC', 'HP', 'TPA-100K', '9CP235P3JN', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(139, 'P0139', 'MOUSE', 'CLINICA NUESTRA', 'RECEPCION IMÁGENES CLINICA NUESTRA', 'RECIMACNSDR2-PC', 'HP', 'TPA-P001M', '9CP235130J', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(140, 'P0140', 'MONITOR', 'CLINICA NUESTRA', 'RECEPCION IMÁGENES CLINICA NUESTRA', 'HUELLERO CLINICA NUESTRA', 'AOC', '1619SW', '739A3BA001281', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(141, 'P0141', 'TECLADO', 'CLINICA NUESTRA', 'MONITOREO IMÁGENES CLINICA NUESTRA', 'MONITOREOCN-PC', 'LENOVO', 'KU-0225', '4548303', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(142, 'P0142', 'MOUSE', 'CLINICA NUESTRA', 'MONITOREO IMÁGENES CLINICA NUESTRA', 'MONITOREOCN-PC', 'GENIUS', 'DX-120', 'X8I94797302049', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(143, 'P0143', 'MONITOR', 'CLINICA NUESTRA', 'MONITOREO IMÁGENES CLINICA NUESTRA', 'MONITOREOCN-PC', 'SAMSUNG', 'BX1931', 'V8B3H9NZC24255W', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(144, 'P0144', 'TECLADO', 'CLINICA NUESTRA', 'CUARTO DE COMANDO IMÁGENES CLINICA NUESTRA', 'CV26722181-PC - FCR PRISMAX', 'DELL', 'KB212-B', 'CN-0DJ462-71581-51J-04FA-A01', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(145, 'P0145', 'MOUSE', 'CLINICA NUESTRA', 'CUARTO DE COMANDO IMÁGENES CLINICA NUESTRA', 'CV26722181-PC - FCR PRISMAX', 'LENOVO', 'MOEUUO', '44L1609', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(146, 'P0146', 'MONITOR', 'CLINICA NUESTRA', 'CUARTO DE COMANDO IMÁGENES CLINICA NUESTRA', 'CV26722181-PC - FCR PRISMAX', 'SAMSUNG', 'S22D300HY', '02ULHCLF900295Y', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(147, 'P0147', 'TECLADO', 'CLINICA NUESTRA', 'CUARTO DE COMANDO IMÁGENES CLINICA NUESTRA', 'RADMAX', 'HP', '320K', '9CT10300P7', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(148, 'P0148', 'MOUSE', 'CLINICA NUESTRA', 'CUARTO DE COMANDO IMÁGENES CLINICA NUESTRA', 'RADMAX', 'HP', '320M', 'C1N1040H92', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(149, 'P0149', 'MONITOR', 'CLINICA NUESTRA', 'CUARTO DE COMANDO IMÁGENES CLINICA NUESTRA', 'RADMAX', 'HP', 'HP E23 G4', 'E23G4', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(150, 'P0150', 'TECLADO', 'CLINICA NUESTRA', 'CUARTO DE COMANDO IMÁGENES CLINICA NUESTRA', 'TOMOGRAFIANC-PC ', 'GENIUS', 'K639', 'WE0592011888', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(151, 'P0151', 'MOUSE', 'CLINICA NUESTRA', 'CUARTO DE COMANDO IMÁGENES CLINICA NUESTRA', 'TOMOGRAFIANC-PC ', 'GENIUS', 'DX-160', 'UD19M2703020', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(152, 'P0152', 'MONITOR', 'CLINICA NUESTRA', 'CUARTO DE COMANDO IMÁGENES CLINICA NUESTRA', 'TOMOGRAFIANC-PC ', 'LENOVO', 'D186WA', 'V1NLA05', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(153, 'P0153', 'TECLADO', 'CLINICA NUESTRA', 'HEMODINAMIA CLINICA NUESTRA', 'HEMODINAMIA1-PC', 'LENOVO', 'EKB-536A', '61106041', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(154, 'P0154', 'MOUSE', 'CLINICA NUESTRA', 'HEMODINAMIA CLINICA NUESTRA', 'HEMODINAMIA1-PC', 'LENOVO', 'EMS-537A', '70110148', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(155, 'P0155', 'TECLADO', 'CLINICA NUESTRA', 'HEMODINAMIA CLINICA NUESTRA', 'HEMODINAMIA2-PC', 'LENOVO', 'EKB-536A', '6299237', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(156, 'P0156', 'MOUSE', 'CLINICA NUESTRA', 'HEMODINAMIA CLINICA NUESTRA', 'HEMODINAMIA2-PC', 'LENOVO', 'EMS-537A', '70109513', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(157, 'P0157', 'TECLADO', 'CLINICA NUESTRA', 'HEMODINAMIA CLINICA NUESTRA', 'HEMODINAMIA3-PC', 'DELL', 'KB212-B', 'CN-0DJ462-71581-51J-01BW-A01', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(158, 'P0158', 'MOUSE', 'CLINICA NUESTRA', 'HEMODINAMIA CLINICA NUESTRA', 'HEMODINAMIA3-PC', 'DELL', 'MS111-L', 'CN-09RRC7-48729-556-0ABK', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(159, 'P0159', 'MONITOR', 'CLINICA NUESTRA', 'HEMODINAMIA CLINICA NUESTRA', 'HEMODINAMIA3-PC', 'DELL', 'Q40G018N-700-08B XY', 'CN-04FF47-64180-51P-3RSB', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(160, 'P0160', 'UPS', 'EDIF. IMÁGENES ', 'SISTEMAS', 'SISTEMAS', 'POWEST', 'MICRONET 100VA', 'EL6120800738', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(161, 'P0161', 'MONITOR', 'EDIF. IMÁGENES ', 'SISTEMAS', 'NVR 1ER Y 2DO PISO', 'SAMSUNG', 'BX1931N', 'V8B3H9NB202964J', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(162, 'P0162', 'MONITOR', 'EDIF. IMÁGENES ', 'SISTEMAS', 'SISTEMAS', 'SAMSUNG', 'BX1931N', 'V8B3H9NZC24240J', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(163, 'P0163', 'TECLADO', 'EDIF. IMÁGENES ', 'SISTEMAS', '150', 'GENIUS', 'SMART KB-200', 'X2B96213701090', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(164, 'P0164', 'MOUSE', 'EDIF. IMÁGENES ', 'SISTEMAS', '150', 'GENIUS', 'GM-150032', 'X2B96213700987', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(165, 'P0165', 'MICROFONO', 'EDIF. IMÁGENES ', 'CONSULTORIO IMÁGENES 5TO PISO', '', 'STARTEC', 'ST-MIC-01', '18444876', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(166, 'P0166', 'TECLADO', 'PRINCIPAL', 'LOCAL 106', '', 'GENIUS', 'KB-117', '33196944102999', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(167, 'P0167', 'TECLADO', 'EDIF. IMÁGENES ', 'RECEPCIÓN 5TO PISO', 'RECEPCION5-LAB5', 'GENIUS', 'KB-117', '33196944102985', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(168, 'P0168', 'MOUSE', 'EDIF. IMÁGENES ', 'RECEPCIÓN 5TO PISO', 'RECEPCION5-LAB5', 'UKCA', 'MM-5113', 'NO APLICA', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(169, 'P0169', 'TECLADO', 'EDIF. IMÁGENES ', 'RECEPCIÓN 5TO PISO', 'RECEPCION5-LAB4', 'GENIUS', 'KB-117', '32196440100005', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(170, 'P0170', 'MOUSE', 'EDIF. IMÁGENES ', 'RECEPCIÓN 5TO PISO', 'RECEPCION5-LAB4', 'GENIUS', 'DX-160', '1196014400198', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(171, 'P0171', 'TECLADO', 'EDIF. IMÁGENES ', 'RECEPCIÓN 5TO PISO', 'RECEPCION5-IMA3-PC', 'GENIUS', 'NC-901', 'NO APLICA', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(172, 'P0172', 'MOUSE', 'EDIF. IMÁGENES ', 'RECEPCIÓN 5TO PISO', 'RECEPCION5-IMA3-PC', 'POWER', 'KB-115', 'NO APLICA', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(173, 'P0173', 'MONITOR', 'EDIF. IMÁGENES ', 'RECEPCIÓN 5TO PISO', 'RECEPCION5-IMA3-PC', 'DELL', 'E1914HC', 'CN-04FF47-64180-55R-3R4B', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(174, 'P0174', 'TECLADO', 'EDIF. IMÁGENES ', 'RECEPCIÓN 5TO PISO', 'RECEPCION5-LAB6-PC', 'HP', 'TPA-P001K', '9CP320Q28G', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(175, 'P0175', 'MOUSE', 'EDIF. IMÁGENES ', 'RECEPCIÓN 5TO PISO', 'RECEPCION5-LAB6-PC', 'HP', 'TPA-P001M', '9CP31713RK', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(176, 'P0176', 'MONITOR', 'EDIF. IMÁGENES ', 'RECEPCIÓN 5TO PISO', 'RECEPCION5-LAB3-PC', 'SAMSUNG', 'S19D300NY', '029GHCLF703087N', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(177, 'P0177', 'TECLADO', 'EDIF. IMÁGENES ', 'RECEPCIÓN 5TO PISO', 'RECEPCION5-LAB3-PC', 'GENIUS', 'KB-115', 'NO APLICA', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(178, 'P0178', 'MOUSE', 'EDIF. IMÁGENES ', 'RECEPCIÓN 5TO PISO', 'RECEPCION5-LAB3-PC', 'GENIUS', 'GM-070005', 'YB48C1U10277', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(179, 'P0179', 'MONITOR', 'EDIF. IMÁGENES ', 'CONSULTORIO 1- TRANSCRIPCION IMÁGENES 5TO PISO', 'TRANSCRIPCION2-PC', 'SAMSUNG', 'LS20D300NH/ZL', 'ZZD3H4LJ500097T', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(180, 'P0180', 'TECLADO', 'EDIF. IMÁGENES ', 'CONSULTORIO 1- TRANSCRIPCION IMÁGENES 5TO PISO', 'TRANSCRIPCION2-PC', 'GENIUS', 'KB-115', 'NO APLICA', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(181, 'P0181', 'MOUSE', 'EDIF. IMÁGENES ', 'CONSULTORIO 1- TRANSCRIPCION IMÁGENES 5TO PISO', 'TRANSCRIPCION2-PC', 'GENIUS', 'DX-130', 'X1L96014404351', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(182, 'P0182', 'MONITOR', 'EDIF. IMÁGENES ', 'CONSULTORIO 1- TRANSCRIPCION IMÁGENES 5TO PISO', 'CONSULTORIO1-PC', 'SAMSUNG', 'F22T350FHL', '0B1EHCNT500973N', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(183, 'P0183', 'TECLADO', 'EDIF. IMÁGENES ', 'CONSULTORIO 1- TRANSCRIPCION IMÁGENES 5TO PISO', 'CONSULTORIO1-PC', 'GENIUS', 'KB-115', 'NO APLICA', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(184, 'P0184', 'MOUSE', 'EDIF. IMÁGENES ', 'CONSULTORIO 1- TRANSCRIPCION IMÁGENES 5TO PISO', 'CONSULTORIO1-PC', 'GENIUS', 'DX-180', 'X2A96162400718', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(185, 'P0185', 'TECLADO', 'EDIF. IMÁGENES ', 'REVISIONES', 'REVISIONES2-PC', 'GENIUS', 'KB-115', 'NO APLICA', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(186, 'P0186', 'MOUSE', 'EDIF. IMÁGENES ', 'REVISIONES', 'REVISIONES2-PC', 'GENIUS', 'DX-160', '2A96162400705', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(187, 'P0187', 'TECLADO', 'EDIF. IMÁGENES ', 'REVISIONES', 'REVISIONES3', 'GENIUS', 'KB-115', 'X2A96162400708', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(188, 'P0188', 'MOUSE', 'EDIF. IMÁGENES ', 'REVISIONES', 'REVISIONES3', 'LENOVO', 'MOJUUO', '8SSM50L24505AVLC173EHD', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(189, 'P0189', 'TECLADO', 'EDIF. IMÁGENES ', 'REVISIONES', 'REVISIONES4-PC', 'GENIUS', 'KB-117', '33196944102992', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(190, 'P0190', 'MOUSE', 'EDIF. IMÁGENES ', 'REVISIONES', 'REVISIONES4-PC', 'GENIUS', 'DX-120', 'X0J95Q8218529', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(191, 'P0191', 'TECLADO', 'EDIF. IMÁGENES ', 'REVISIONES', 'ACALIDAD', 'GENIUS', 'KB-115', 'NO APLICA', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(192, 'P0192', 'MOUSE', 'EDIF. IMÁGENES ', 'REVISIONES', 'ACALIDAD', 'POWE', 'NC-901', 'NO APLICA', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(193, 'P0193', 'MONITOR', 'EDIF. IMÁGENES ', 'TRANSCRIPCION MAMOGRAFIA IMÁGENES 5TO PISO', 'CONSULTORIO1-MAMOGRAFIA-PC', 'LENOVO', 'D186WA', 'V1NLA04', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(194, 'P0194', 'TECLADO', 'EDIF. IMÁGENES ', 'TRANSCRIPCION MAMOGRAFIA IMÁGENES 5TO PISO', 'CONSULTORIO1-MAMOGRAFIA-PC', 'GENUS', 'KB-115', 'NO APLICA', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(195, 'P0195', 'MOUSE', 'EDIF. IMÁGENES ', 'TRANSCRIPCION MAMOGRAFIA IMÁGENES 5TO PISO', 'CONSULTORIO1-MAMOGRAFIA-PC', 'GENUS', 'DX-160', 'UD19M2704508', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(196, 'P0196', 'TECLADO', 'EDIF. IMÁGENES ', 'TRANSCRIPCION MAMOGRAFIA IMÁGENES 5TO PISO', 'TRANSCRIPCION01-PC', 'GENUS', 'KB-117', '33196944102991', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(197, 'P0197', 'MOUSE', 'EDIF. IMÁGENES ', 'TRANSCRIPCION MAMOGRAFIA IMÁGENES 5TO PISO', 'TRANSCRIPCION01-PC', 'OPTICAL VERTICAL MOUSE', 'MME02', 'PFAW31069', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(198, 'P0198', 'TECLADO', 'EDIF. IMÁGENES ', 'CONTABILIDAD', 'APRENDIZ-CONTABILIDAD-PC', 'GENIUS', 'KB-115', 'UD20M2320649', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(199, 'P0199', 'MOUSE', 'EDIF. IMÁGENES ', 'CONTABILIDAD', 'APRENDIZ-CONTABILIDAD-PC', 'GENIUS', 'DX-120', 'X2J96449809532', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(200, 'P0200', 'TECLADO', 'EDIF. IMÁGENES ', 'FACTURACIÓN', 'COORD-FACTURACION-PC', 'LENOVO', 'KU-161', 'SD50L21349', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(201, 'P0201', 'MOUSE', 'EDIF. IMÁGENES ', 'FACTURACIÓN', 'COORD-FACTURACION-PC', 'GENIUS', 'DX-160', 'NO APLICA', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(202, 'P0202', 'TECLADO', 'EDIF. IMÁGENES ', 'FACTURACIÓN', 'AUXFACTURACION2-PC', 'GENIUS', 'KB-117', '32196410900294', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(203, 'P0203', 'MOUSE', 'EDIF. IMÁGENES ', 'FACTURACIÓN', 'AUXFACTURACION2-PC', 'GENIUS', 'DX-120', 'X2J96449809508', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(204, 'P0204', 'TECLADO', 'EDIF. IMÁGENES ', 'FACTURACIÓN', 'AUXFACTURACION3-PC', 'GENIUS', 'SLIM-STAR2016', 'UD22Q2200753', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1),
(205, 'P0205', 'MOUSE', 'EDIF. IMÁGENES ', 'FACTURACIÓN', 'AUXFACTURACION3-PC', 'HP', 'TPA-P001M', '9CP2200RWR', 'assets/images/perifericos/default.png', 4, 7, 10, '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sedes`
--

CREATE TABLE `sedes` (
  `id` int(11) NOT NULL,
  `sede` varchar(100) NOT NULL,
  `imagen` varchar(150) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `sedes`
--

INSERT INTO `sedes` (`id`, `sede`, `imagen`, `estado`) VALUES
(1, 'EDIF. IMÁGENES ', 'assets/img/sedes20240912171104.jpg', 1),
(2, 'PRINCIPAL', '', 1),
(3, 'CRISANTO LUQUE', 'assets/images/sedesdefault.png', 1),
(4, 'CLINICA NUESTRA', 'assets/images/sedesdefault.png', 1),
(5, 'PIE DE LA POPA', 'assets/img/sedesdefault.png', 1),
(6, 'DIVINA PROVIDENCIA', 'assets/images/sedes20240912172101.jpg', 1),
(7, 'TURBACO VIP', 'assets/images/sedes20240912172011.jpg', 1),
(8, 'CENTRO MEDICO', 'assets/images/sedesdefault.png', 1),
(9, 'RONDA REAL', 'assets/images/sedesdefault.png', 1),
(10, 'TRANSCRIPCION MAMOGRAFIA IMÁGENES 5TO PISO', 'assets/images/sedesdefault.png', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombres` varchar(100) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `clave` varchar(100) NOT NULL,
  `perfil` varchar(50) DEFAULT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombres`, `apellidos`, `correo`, `clave`, `perfil`, `estado`) VALUES
(1, 'Ivan Andres ', 'Barrios Esquivia', 'ivanandresesquivia19@gmail.com', '$2y$10$6QYjFoPnyUtKaOFNUyDuuuReupvMCOIMvCRFH0FlfpAOShGURcki2', NULL, 1),
(2, 'juan', 'perez', 'juanperez123@gmailcom', '$2y$10$z9Yph3j/OvliR6X5yFp7u.3U2dtGry1QJu7QHeJoXYYg64RflM9hm', NULL, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `equipo_de_computo`
--
ALTER TABLE `equipo_de_computo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_categoria` (`id_categoria`),
  ADD KEY `id_sede` (`id_sede`),
  ADD KEY `id_area` (`id_area`);

--
-- Indices de la tabla `etiquetadoras`
--
ALTER TABLE `etiquetadoras`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `impresoras`
--
ALTER TABLE `impresoras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_categoria` (`id_categoria`),
  ADD KEY `id_area` (`id_area`),
  ADD KEY `id_sede` (`id_sede`);

--
-- Indices de la tabla `sedes`
--
ALTER TABLE `sedes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `areas`
--
ALTER TABLE `areas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `equipo_de_computo`
--
ALTER TABLE `equipo_de_computo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT de la tabla `impresoras`
--
ALTER TABLE `impresoras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `sedes`
--
ALTER TABLE `sedes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `equipo_de_computo`
--
ALTER TABLE `equipo_de_computo`
  ADD CONSTRAINT `equipo_de_computo_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`),
  ADD CONSTRAINT `equipo_de_computo_ibfk_2` FOREIGN KEY (`id_sede`) REFERENCES `sedes` (`id`),
  ADD CONSTRAINT `equipo_de_computo_ibfk_3` FOREIGN KEY (`id_area`) REFERENCES `areas` (`id`);

--
-- Filtros para la tabla `impresoras`
--
ALTER TABLE `impresoras`
  ADD CONSTRAINT `impresoras_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`),
  ADD CONSTRAINT `impresoras_ibfk_2` FOREIGN KEY (`id_area`) REFERENCES `areas` (`id`),
  ADD CONSTRAINT `impresoras_ibfk_3` FOREIGN KEY (`id_sede`) REFERENCES `sedes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
