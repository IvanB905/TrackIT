-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-10-2024 a las 16:24:35
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
(45, 'CAJA TECNICA', 'assets/images/areasdefault.png', 1);

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
(1, 'C0001', 'PORTATIL', 'EDIF. IMÁGENES ', 'REDES Y SISTEMAS', 'HP', 'HP-LAPTO 14 -BS0XX', '05CD825C9RK', '10.0.0.117', 'B4-B6-86-E4-C4-10', 'REDES_SOPORTE', 'WIN10', 'SI', 'KASPERSKY', 'NO', '', 11, 1, 2, '0', 1),
(2, 'C0002', 'PORTATIL', 'EDIF. IMÁGENES ', 'REDES Y SISTEMAS', 'DELL', '', '', '', '', '', 'WIN11', 'SI', 'KASPERSKY', 'NO', '', 11, 1, 2, '0', 1),
(3, 'C0003', 'PC', 'EDIF. IMÁGENES ', 'REDES Y SISTEMAS', 'DELL', '', '', '', '', '', 'WIN10', 'SI', 'KASPERSKY', 'NO', '', 12, 1, 2, '0', 1),
(4, 'C0004', 'PORTATIL', 'PRINCIPAL', 'ATENCIÓN AL USUARIO', 'ASUS', 'VIVOBOOK X1504ZA', 'RCN0CX00M175495', '10.0.0.5', '20-0B-74-76-49-58', 'ANTENCIONUSUARIO-PRTL', 'WIN11', 'SI', 'KASPERSKY', 'NO', '', 11, 2, 3, '0', 1),
(5, 'C0005', 'PORTATIL', 'EDIF. IMÁGENES ', 'ASISTENTE ADMINISTRATIVA', 'ASUS', 'VIVOBOOK X1504ZA', 'RCN0CX02L15446F', '10.0.0.192', '20-0B-74-60-B0-84', 'ASIS.ADMINISTRATIVA', 'WIN11', 'NO', 'KASPERSKY', 'NO', '', 11, 1, 4, '0', 1),
(6, 'C0006', 'TODO EN UNO', 'EDIF. IMÁGENES ', 'RECEPCIÓN 5TO PISO', 'HP', 'ALL IN ONE 22 DDXXX', '8CC3250PD5', '10.0.0.52', 'BC-0F-F3-6E-E4-93', 'RECEPCION5-LAB1', 'WIN11', 'NO', 'NO', 'NO', '', 9, 1, 5, '0', 1),
(7, 'C0007', 'CPU', 'EDIF. IMÁGENES ', 'RECEPCIÓN 5TO PISO', 'CLON', 'CLON', 'N/A', '10.0.0.113', 'E8-40-F2-C2-7F-D7', 'RECEPCION5-LAB2', 'WIN10', 'NO', 'NO', 'NO', '', 2, 1, 2, '0', 1),
(8, 'C0008', 'TODO EN UNO', 'CRISANTO LUQUE', 'RECEPCIÓN CRISANTO LUQUE', 'HP', 'ALL IN ONE 22 DDXXX', '8CC3250P8H', '', 'BC-0F-F3-70-E5-B0', 'RECEPCION-CLUQUE2-PC', 'WIN10', 'NO', 'NO', 'NO', '', 11, 1, 2, '0', 1),
(9, 'C0009', 'TODO EN UNO', 'CRISANTO LUQUE', 'RECEPCIÓN CRISANTO LUQUE', 'HP', 'ALL IN ONE 22 DDXXX', '8CC3250P4X', '', 'BC-0F-F3-70-E6-01', 'RECEPCION-CLUQUE1-PC', 'WIN10', 'NO', 'NO', 'NO', '', 11, 1, 2, '0', 1),
(10, 'C0010', 'TODO EN UNO', 'CRISANTO LUQUE', 'RECEPCIÓN CRISANTO LUQUE', 'HP', 'ALL-IN-ONE-22-DD2005LA', '8CC3250P8N', '', 'BC-0F-F3-70-E5-AD', 'RECEPCION-CLUQUE3-PC', 'WIN10', 'NO', 'NO', 'NO', '', 11, 1, 2, '0', 1),
(11, 'C0011', 'PORTATIL', 'EDIF. IMÁGENES ', 'COORDINACION OPERATIVA', 'HP', '14-CF3048LA', '5CG0302V66', '10.0.0.34', '84-2A-FD-83-99-07', 'COORDOPERATIVA-PRTL', 'WIN10', 'NO', 'KASPERSKY', 'NO', '', 11, 1, 2, '0', 1),
(12, 'C0012', 'PC', 'EDIF. IMÁGENES ', 'CONTABILIDAD', 'COMPUMAX', '1051-900-0022', '400SN44634', '10.0.0.84', '84-47-09-25-02-EA', 'ASISCONTABILIDAD1-PC', 'WIN10', 'SI', 'KASPERSKY', 'NO', '', 11, 1, 2, '0', 1),
(13, 'C0013', 'PC', 'EDIF. IMÁGENES ', 'CONTABILIDAD', 'COMPUMAX', '1051-900-0022', '400SN44633', '10.0.0.83', '84-47-09-25-02-33', 'ASISCONTABILIDAD2-PC', 'WIN10', 'SI', 'KASPERSKY', 'NO', '', 11, 1, 2, '0', 1),
(14, 'C0014', 'PC', 'EDIF. IMÁGENES ', 'CONTABILIDAD', 'COMPUMAX', '1051-900-0022', '400SN44624', '10.0.0.85', '84-47-09-25-02-F3', 'ASISCONTABILIDAD3-PC', 'WIN10', 'SI', 'KASPERSKY', 'NO', '', 11, 1, 2, '0', 1),
(15, 'C0015', 'PC', 'CLINICA NUESTRA', 'LABORATORIO PRIOPRITARIO', 'HEWLETT-PACKARD', 'HP PRO-3400 SERIE', 'MXL2031LNL', '10.0.0.70', '08-2E-5F-07-AE-58', 'INMUNOANALISISPRIO-PC', 'WIN11', 'NO', 'NO', 'NO', '', 11, 1, 2, '0', 1),
(16, 'C0016', 'TODO EN UNO', 'TURBACO VIP', 'RECEPCIÓN TURBACO VIP', 'HP', 'HP 21-B006LA', '1CZ10503NJ', '192.168.1.50', '54-B2-03-E9-2F-48', 'RECEPCION02TURB', 'WIN10', 'NO', 'NO', '10.0.0.16 ', '', 11, 1, 2, '0', 1),
(17, 'C0017', 'TODO EN UNO', 'TURBACO VIP', 'RECEPCIÓN TURBACO VIP', 'HP', 'HP 21-B003LA', '1CZ1300CRT', '192.168.1.3 ', '54-B2-03-FB-F1-88', 'TURBACO-VIP-2', 'WIN10', 'NO', 'NO', 'NO', '', 11, 1, 2, '0', 1),
(18, 'C0018', 'TODO EN UNO', 'EDIF. IMÁGENES ', 'RECEPCIÓN 3RE PISO', 'HP', 'ALL IN ONE 22 DD0XXX', '8CC1483VLY', '10.0.0.145', 'C8-5A-CF-AC-83-B1', 'RECEPCION3-4-PC', 'WIN10', 'NO', 'NO', 'NO', '', 11, 1, 2, '0', 1),
(19, 'C0019', 'TODO EN UNO', 'EDIF. IMÁGENES ', 'RECEPCIÓN 3RE PISO', 'HP', 'ALL IN ONE 21 B0XXX', '1CZ10503QF', '10.0.0.164', '54-B2-03-E9-2E-A4', 'RECEPCION3-8-PC', 'WIN10', 'NO', 'NO', 'NO', '', 11, 1, 2, '0', 1),
(20, 'C0020', 'TODO EN UNO', 'EDIF. IMÁGENES ', 'RECEPCIÓN 3RE PISO', 'HP', 'ALL IN ONE 24 E0XX', '8CC8120LBV', '10.0.0.28', '10-E7-C6-DD-74-02', 'RECEPCION3-9-PC', 'WIN10', 'NO', 'NO', 'NO', '', 11, 1, 2, '0', 1),
(21, 'C0021', 'TODO EN UNO', 'EDIF. IMÁGENES ', 'CALL CENTER 3RE PISO', 'HP', 'ALL IN ONE 22 DD0XXX', '8CC1483VC4', '10.0.0.176', 'C8-5A-CF-AC-83-10', 'CALLCENTER-LAB3-PC', 'WIN10', 'NO', 'NO', 'NO', '', 11, 1, 2, '0', 1),
(22, 'C0022', 'TODO EN UNO', 'EDIF. IMÁGENES ', 'RECEPCIÓN 5TO PISO', 'HP', 'ALL IN ONE 22 DD0XXX', '8CC1483VN9', '10.0.0.63', 'C8-5A-CF-AC-82-27', 'RECEPCION5-LAB5', 'WIN10', 'NO', 'NO', 'NO', '', 11, 1, 2, '0', 1),
(23, 'C0023', 'TODO EN UNO', 'EDIF. IMÁGENES ', 'CALL CENTER 3RE PISO', 'HP', 'ALL IN ONE 21 B0XXX', '1CZ0510P45', '10.0.0.104', '54-B2-03-E8-7C-E0', 'CALLCENTER-LAB1-PC', 'WIN10', 'NO', 'NO', 'NO', '', 11, 1, 2, '0', 1),
(24, 'C0024', 'TODO EN UNO', 'EDIF. IMÁGENES ', 'CALL CENTER 3RE PISO', 'HP', 'ALL IN ONE 22 DD0XXX', '8CC1483VYP', '10.0.0.175', 'C8-5A-CF-AC-82-FD', 'CALLCENTER-LAB2-PC', 'WIN10', 'NO', 'NO', 'NO', '', 11, 1, 2, '0', 1),
(25, 'C0025', 'CPU', 'EDIF. IMÁGENES ', 'CALL CENTER 3RE PISO', 'LENOVO', '3157F2S', 'MJLWFHN', '10.0.0.97', '8C-89-A5-B9-D2-D2', 'CALLCENTER-IMA3-PC', 'WIN10', 'NO', 'NO', 'NO', '', 11, 1, 2, '0', 1),
(26, 'C0026', 'TODO EN UNO', 'CENTRO MEDICO', 'RECEPCIÓN LOCAL 106', 'HP', 'HP 21-B0003LA', '1CZ0510P9X', '10.0.0.127', '54-B2-03-E8-01-EE', 'RECEPCIONLOCAL106C1-PC', 'WIN10', 'NO', 'NO', 'NO', '', 11, 1, 2, '0', 1),
(27, 'C0027', 'TODO EN UNO', 'CENTRO MEDICO', 'RECEPCIÓN LOCAL 106', 'LENOVO', 'V130-20IGM AIO', 'YJ01AZJY', '10.0.0.26', '84-A9-38-64-EF-31', 'RECEPCIONLOCAL106C2-PC', 'WIN10', 'NO', 'NO', 'NO', '', 11, 1, 2, '0', 1),
(28, 'C0028', 'TODO EN UNO', 'CENTRO MEDICO', 'RECEPCIÓN LOCAL 106', 'LENOVO', 'V130-20IGM AIO', 'YJ01AYCR', '10.0.0.43', '84-A9-38-64-F6-A6', 'RECEPCIONLOCAL106C3-PC', 'WIN10', 'NO', 'NO', 'NO', '', 11, 1, 2, '0', 1),
(29, 'C0029', 'TODO EN UNO', 'CENTRO MEDICO', 'RECEPCIÓN PRINCIPAL', 'LENOVO', 'LENOVO C40-30', 'P9017DEK', '10.0.0.49', '00-25-AB-90-CE-4D', 'RECEPCIONPRINCIPAL1-PC', 'WIN10', 'NO', 'NO', 'NO', '', 11, 1, 2, '0', 1),
(30, 'C0030', 'TODO EN UNO', 'CENTRO MEDICO', 'RECEPCIÓN PRINCIPAL', 'LENOVO', 'LENOVO C40-30', 'P901BW6N', '10.0.0.48', '00-25-AB-93-8F-64', 'RECEPCIONPRINCIPAL2-PC', 'WIN10', 'NO', 'NO', 'NO', '', 11, 1, 2, '0', 1),
(31, 'C0031', 'TODO EN UNO', 'CENTRO MEDICO', 'RECEPCIÓN PRINCIPAL', 'LENOVO', 'LENOVO C40-30', 'P901BW5D', '10.0.0.50', '00-25-AB-93-90-45', 'RECEPCIONPRINCIPAL3-PC', 'WIN10', 'NO', 'NO', 'NO', '', 11, 1, 2, '0', 1),
(32, 'C0032', 'TODO EN UNO', 'CENTRO MEDICO', 'RECEPCIÓN PRINCIPAL', 'LENOVO', 'LENOVO C40-30', 'P901BW63', '10.0.0.44', '00-25-AB-93-BF-84', 'RECEPCIONPRINCIPAL4-PC', 'WIN10', 'NO', 'NO', 'NO', '', 11, 1, 2, '0', 1),
(33, 'C0033', 'PC', 'CENTRO MEDICO', 'RECEPCIÓN PRINCIPAL', 'POWER GROUP', 'PRIME J4005I-C', '201076031202063', '10.0.0.60', '3C-7C-3F-BD-98-A9', 'RECEPCIONPRINCIPAL5-PC', 'WIN10', 'NO', 'NO', 'NO', '', 11, 1, 2, '0', 1),
(34, 'C0034', 'PC', 'CENTRO MEDICO', 'RECEPCIÓN PRINCIPAL', 'Intel Corporation', 'DH61WW', 'BTWW33600T9K', '10.0.0.59', '54-BE-F7-2C-DA-A3', 'RECEPCIONPRINCIPAL6-PC', 'WIN10', 'NO', 'NO', 'NO', '', 11, 1, 2, '0', 1),
(35, 'C0035', 'PORTATIL', 'CENTRO MEDICO', 'CONSULTORIO 204', 'ASUS', 'X415MA - BV041T', 'LCN0LP00W96050B', '10.0.0.157', '78-2B-46-1C-0A-F7', 'CONSULTORIO204-PRTL', 'WIN10', 'NO', 'NO', 'NO', '', 11, 1, 2, '0', 1),
(36, 'C0036', 'CPU', 'EDIF. IMÁGENES ', 'RECEPCIÓN 4TO PISO', 'HP', 'HP PRO 3130 MICROTOWER', 'MXL12611YV', '10.0.0.126', '78-E3-B5-95-26-3E', 'RECEPCION4-3-PC', 'WIN10', 'NO', 'NO', 'NO', '', 11, 1, 2, '0', 1),
(37, 'C0037', 'TODO EN UNO', 'EDIF. IMÁGENES ', 'REVISIONES', 'HP', 'ALL IN ONE 24 DD0XXX', '8CC1422VNJ', ' 10.0.0.181', 'E0-70-EA-B3-AD-40', 'REVISIONES1-PC', 'WIN10', 'NO', 'NO', 'NO', '', 11, 1, 2, '0', 1),
(38, 'C0038', 'TODO EN UNO', 'EDIF. IMÁGENES ', 'CALL CENTER 3RE PISO', 'HP', 'ALL IN ONE 24 E0XX', '8CC8061DND', '10.0.0.156', '80-CE-62-4F-DF-BD', 'CALLCENTER-IMA2-PC', 'WIN10', 'NO', 'NO', 'NO', '', 11, 1, 2, '0', 1),
(39, 'C0039', 'TODO EN UNO', 'EDIF. IMÁGENES ', 'RECEPCIÓN 3RE PISO', 'HP', 'ALL IN ONE 22 DD0XXX', '8CC1483VK8', '10.0.0.147', 'C8-5A-CF-AC-7B-2C', 'RECEPCION3-7-PC', 'WIN10', 'NO', 'NO', 'NO', '', 11, 1, 2, '0', 1),
(40, 'C0040', 'TODO EN UNO', 'EDIF. IMÁGENES ', 'RECEPCIÓN 3RE PISO', 'HP', 'ALL IN ONE 22 DD0XXX', '8CC1483VP0', '10.0.0.134', 'C8-5A-CF-AC-84-2E', 'RECEPCION3-6-PC', 'WIN10', 'NO', 'NO', 'NO', '', 11, 1, 2, '0', 1),
(41, 'C0041', 'TODO EN UNO', 'EDIF. IMÁGENES ', 'RECEPCIÓN 4TO PISO', 'HP', 'ALL IN ONE 21 B0XXX', '1CZ05104ZS', '10.0.0.22', '54-B2-03-E8-09-21', 'RECEPCION4-1-PC', 'WIN10', 'NO', 'NO', 'NO', '', 11, 1, 2, '0', 1),
(42, 'C0042', 'TODO EN UNO', 'EDIF. IMÁGENES ', 'RECEPCIÓN 4TO PISO', 'HP', 'ALL IN ONE 21 B0XXX', '1CZ05104XG', '10.0.0.24', '54-B2-03-E8-08-6C', 'RECEPCION4-2-PC', 'WIN10', 'NO', 'NO', 'NO', '', 11, 1, 2, '0', 1),
(43, 'C0043', 'TODO EN UNO', 'RONDA REAL', 'RECEPCIÓN', 'HP', 'ALL IN ONE 22 DD2XXX', '8CC3012XC9', '192.168.1.11', '7C-4D-8F-06-DB-D8', 'RONDAREAL02-PC', 'WIN10', 'NO', 'NO', 'SI', '', 11, 1, 2, '0', 1),
(44, 'C0044', 'TODO EN UNO', 'RONDA REAL', 'RECEPCIÓN', 'LENOVO', '10RX004VLD', 'YJ01AZQY', '192.168.1.12', '84-A9-38-64-EB-BC', 'RONDAREAL01-PC', 'WIN10', 'NO', 'NO', 'SI', '', 11, 1, 2, '0', 1),
(45, 'C0045', 'TODO EN UNO', 'EDIF. IMÁGENES ', 'RECEPCIÓN 3RE PISO', 'HP', 'ALL IN ONE 24 DD0XXX', '8CC1260WJG', '10.0.0.143', '48-9E-BD-31-2A-B3', 'RECEPCION3-1-PC', 'WIN10', 'NO', 'NO', 'NO', '', 11, 1, 2, '0', 1),
(46, 'C0046', 'TODO EN UNO', 'EDIF. IMÁGENES ', 'RECEPCIÓN 3RE PISO', 'HP', 'ALL IN ONE 22 DD0XXX', '8CC1483VH2', '10.0.0.166', 'C8-5A-CF-AC-82-8B', 'RECEPCION3-2-PC', 'WIN10', 'NO', 'NO', 'NO', '', 11, 1, 2, '0', 1),
(47, 'C0047', 'TODO EN UNO', 'EDIF. IMÁGENES ', 'RECEPCIÓN 3RE PISO', 'HP', 'ALL IN ONE 22 DD0XXX', '8CC1483W6R', '10.0.0.29', 'C8-5A-CF-AC-82-95', 'RECEPCION3-3-PC', 'WIN10', 'NO', 'NO', 'NO', '', 11, 1, 2, '0', 1),
(48, 'C0048', 'TODO EN UNO', 'EDIF. IMÁGENES ', 'RECEPCIÓN 3RE PISO', 'HP', 'ALL IN ONE 22 DD0XXX', '8CC1483VLY', '10.0.0.145', 'C8-5A-CF-AC-83-B1', 'RECEPCION3-4-PC', 'WIN10', 'NO', 'NO', 'NO', '', 11, 1, 2, '0', 1),
(49, 'C0049', 'TODO EN UNO', 'EDIF. IMÁGENES ', 'RECEPCIÓN 3RE PISO', 'HP', 'ALL IN ONE 24 E0XX', '8CC8061DL7', '10.0.0.27', '80-CE-62-4F-DF-AD', 'RECLAB2', 'WIN10', 'NO', 'NO', 'NO', '', 11, 1, 2, '0', 1),
(50, 'C0050', 'CPU', 'PIE DE LA POPA', 'RECEPCIÓN PIE DE LA POPA', 'POWER GROUP', 'INC2102646501', 'CS513GNC05', '192.168.1.200', '7C-10-C9-8A-83-EE', 'RECEPCIONPIEDEPOPA1-PC', 'WIN10', 'NO', 'NO', 'NO', '', 11, 1, 2, '0', 1),
(51, 'C0051', 'CPU', 'PIE DE LA POPA', 'RECEPCIÓN PIE DE LA POPA', 'POWER GROUP', '', '', '192.168.1.71', '24-4B-FE-82-62-5A', 'RECEPCIONPIEDEPOPA2-PC', 'WIN10', 'NO', 'NO', 'NO', '', 11, 1, 2, '0', 1),
(52, 'C0052', 'TODO EN UNO', 'PIE DE LA POPA', 'RECEPCIÓN PIE DE LA POPA', 'HP', 'ALL IN ONE 21-B0006LA', '1CZ10503QG', '192.168.1.231', '54-B2-03-E9-2E-96', 'RECEPCIONPIEDEPOPA3-PC', 'WIN10', 'NO', 'NO', 'NO', '', 11, 1, 2, '0', 1),
(53, 'C0053', 'TODO EN UNO', 'PIE DE LA POPA', 'PROCESOS PIE DE LA POPA', 'HP', 'ALL IN ONE 22-DD2005LA', '8CC3151VC1', '192.168.1.111', 'E0-73-E7-36-B5-6D', 'PROCESO PIE DE LA OPOA', 'WIN10', 'NO', 'NO', 'NO', '', 11, 1, 2, '0', 1),
(54, 'C0054', 'NUC', 'DIVINA PROVIDENCIA', 'TOMA DE MUESTRA DIVINA PROVIDENCIA', 'INTEL', 'PC NUC7CJYH', '143445', '', '', 'DIVINA PROVIDENCIA', 'WIN10', 'NO', 'NO', 'NO', '', 11, 1, 2, '0', 1),
(55, 'C0055', 'TODO EN UNO', 'CLINICA NUESTRA', 'RECEPCION PROCESOS CLINICA NUESTRA', 'LENOVO', 'IAO 50-22ISH', 'MP15K3XC', '10.0.0.78', 'FC-45-96-AF-B5-4D', 'RECEPCIONPCN-PC', 'WIN10', 'NO', 'NO', 'NO', '', 11, 1, 2, '0', 1),
(56, 'C0056', 'CPU', 'CLINICA NUESTRA', 'PROCESOS CLINICA NUESTRA', 'HP', 'HP PRO 3400 SERIES MT', 'MXL2031LNL', '10.0.0.129', '08-2E-5F-07-AE-58', 'INMUNOANALISISPRIO-PC', 'WIN10', 'NO', 'NO', 'NO', '', 11, 1, 2, '0', 1),
(57, 'C0057', 'CPU', 'CLINICA NUESTRA', 'PROCESOS CLINICA NUESTRA', 'POWER GROUP', 'ASUS PRIME H410M', 'NO APLICA', '10.0.0.77', '3C-7C-3F-15-28-86', 'QUIMICACN-PC', 'WIN10', 'NO', 'NO', 'NO', '', 11, 1, 2, '0', 1),
(58, 'C0058', 'CPU', 'CLINICA NUESTRA', 'PROCESOS CLINICA NUESTRA', 'XTECH', 'DH61BF', 'NO APLICA', '10.0.0.80', 'EC-A8-6B-F8-5C-85', 'HEMATOLOGIACN-PC', 'WIN10', 'NO', 'NO', 'NO', '', 11, 1, 2, '0', 1),
(59, 'C0059', 'CPU', 'CLINICA NUESTRA', 'PROCESOS CLINICA NUESTRA', 'POWER GROUP', 'POWER 3I40', '3I40MP7716309', '10.0.0.81', '30-5A-3A-59-27-DC', 'SERVICIOSTRANSFUSIONALESCN-PC', 'WIN10', 'NO', 'NO', 'NO', '', 11, 1, 2, '0', 1),
(60, 'C0060', 'CPU', 'CLINICA NUESTRA', 'RECEPCION IMÁGENES CLINICA NUESTRA', 'LENOVO', '10B7001RLS', 'MJ002SVB', '10.0.0.120', '44-8A-5B-04-6B-09', 'RECIMACNSDR-01-PC', 'WIN10', 'NO', 'NO', 'NO', '', 11, 1, 2, '0', 1),
(61, 'C0061', 'TODO EN UNO', 'CLINICA NUESTRA', 'RECEPCION IMÁGENES CLINICA NUESTRA', 'HP', 'ALL-IN-ONE 22-DD2XX', '8CC2390JFG', '10.0.0.122', '38-CA-84-AC-81-2C', 'RECIMACNSDR2-PC', 'WIN10', 'NO', 'NO', 'NO', '', 11, 1, 2, '0', 1),
(62, 'C0062', 'CPU', 'CLINICA NUESTRA', 'MONITOREO IMÁGENES CLINICA NUESTRA', 'ECS', 'H81H3-M4', '3I40IMP5714MCP', '10.0.0.118', 'C0-3F-D5-A1-02-39', 'MONITOREOCN-PC', 'WIN10', 'NO', 'NO', 'NO', '', 11, 1, 2, '0', 1),
(63, 'C0063', 'CPU', 'CLINICA NUESTRA', 'CUARTO DE COMANDO IMÁGENES CLINICA NUESTRA', 'DELL', 'OPTIPLEX 3020', 'CN-04W34Y-70163-550-0200-A00', '10.20.5.1 - CLINICA', 'B0-83-FE-B4-C5-B5', 'CV26722181-PC - FCR PRISMAX', 'WIN7', 'NO', 'NO', 'NO', '', 11, 1, 2, '0', 1),
(64, 'C0064', 'CPU', 'CLINICA NUESTRA', 'CUARTO DE COMANDO IMÁGENES CLINICA NUESTRA', 'HP', 'ELITEDESK 800 G4 TWR', '4CE9522FXX', '10.20.5.221 - CLINIC', '84-A9-3E-81-C6-1F', 'RADMAX', 'WIN10', 'NO', 'NO', 'NO', '', 11, 1, 2, '0', 1),
(65, 'C0065', 'CPU', 'CLINICA NUESTRA', 'CUARTO DE COMANDO IMÁGENES CLINICA NUESTRA', 'MEGA-TECH', 'DH61CR', 'NO APLICA', '10.0.0.116', 'C0-4A-00-02-13-FA', 'TOMOGRAFIANC-PC ', 'WIN7', 'NO', 'NO', 'NO', '', 11, 1, 2, '0', 1),
(66, 'C0066', 'TODO EN UNO', 'CLINICA NUESTRA', 'HEMODINAMIA CLINICA NUESTRA', 'LENOVO', 'AIO 510-22ISH', 'MP1597JZ', '10.20.5.99 - CLINICA', 'FC-45-96-7C-03-68', 'HEMODINAMIA1-PC', 'WIN10', 'NO', 'NO', 'NO', '', 11, 1, 2, '0', 1),
(67, 'C0067', 'TODO EN UNO', 'CLINICA NUESTRA', 'HEMODINAMIA CLINICA NUESTRA', 'LENOVO', 'AIO 510-22ISH', 'MP1590LN', '192.168.0.132 - CLIN', '3C:F8:62:8B:85:2B', 'HEMODINAMIA2-PC', 'WIN10', 'NO', 'NO', 'NO', '', 11, 1, 2, '0', 1),
(68, 'C0068', 'CPU', 'CLINICA NUESTRA', 'HEMODINAMIA CLINICA NUESTRA', 'DELL', 'OPTIPLEX 3020', '0WMJ54', '10.20.4.195 - CLINIC', 'B0:83:FE:B4:88:5E', 'HEMODINAMIA3-PC', 'WIN10', 'NO', 'NO', 'NO', '', 11, 1, 2, '0', 1),
(69, 'C0069', 'CPU', 'EDIF. IMÁGENES ', 'PATOLOGIA', 'LENOVO', '7269E1S', 'MJGBC52', '10.0.0.54', '90-FB-A6-0A-67-17', 'REMISIONES2', 'WIN7', 'NO', 'NO', 'NO', '', 11, 1, 2, '0', 1),
(70, 'C0070', 'TODO EN UNO', 'EDIF. IMÁGENES ', 'RECEPCIÓN 5TO PISO', 'LENOVO', '10147', ' VS81495031', '10.0.0.109', '00-25-AB-5A-F1-24', 'RECEPCION5-LAB4', 'WIN10', 'NO', 'NO', 'NO', '', 11, 1, 2, '0', 1),
(71, 'C0071', 'CPU', 'EDIF. IMÁGENES ', 'RECEPCIÓN 5TO PISO', 'LENOVO', '3157F2S', 'MJLWFFD', '10.0.0.96', '8C-89-A5-B9-D2-AB', 'RECEPCION5IMA3-PC', 'WIN10', 'NO', 'NO', 'NO', '', 11, 1, 2, '0', 1),
(72, 'C0072', 'TODO EN UNO', 'EDIF. IMÁGENES ', 'RECEPCIÓN 5TO PISO', 'HP', 'HP DD2005LA', '8CC3213PVF', '10.0.0.254', 'E0-73-E7-DC-1B-10', 'RECEPCION5-LAB6-PC', 'WIN11', 'NO', 'NO', 'NO', '', 11, 1, 2, '0', 1),
(73, 'C0073', 'CPU', 'EDIF. IMÁGENES ', 'RECEPCIÓN 5TO PISO', 'HP', 'HP PRO 3130 MT', 'MXL12611Y3', '10.0.0.97', 'E0-69-95-F4-15-EF', 'RECEPCION5-LAB3-PC', 'WIN10', 'NO', 'NO', 'NO', '', 11, 1, 2, '0', 1),
(74, 'C0074', 'CPU', 'EDIF. IMÁGENES ', 'CONSULTORIO 1- TRANSCRIPCION IMÁGENES 5TO PISO', 'COMPAQ', 'CQ5210LA', 'MXX0430RYR', '10.0.0.115', 'C0-3F-D5-AB-B3-1E', 'TRANSCRIPCION2-PC', 'WIN10', 'NO', 'NO', 'NO', '', 11, 1, 2, '0', 1),
(75, 'C0075', 'CPU', 'EDIF. IMÁGENES ', 'CONSULTORIO 1- TRANSCRIPCION IMÁGENES 5TO PISO', 'GAMEMAX', 'NO APLICA', 'NO APLICA', '10.0.0.168', 'EC-A8-6B-F8-27-17', 'CONSULTORIO1-PC', 'WIN11', 'NO', 'NO', 'NO', '', 11, 1, 2, '0', 1),
(76, 'C0076', 'CPU', 'EDIF. IMÁGENES ', 'REVISIONES', 'ARGOM', 'OEM', 'NO APLICA', '10.0.0.57', '90-2B-34-CC-91-DD', 'REVISIONES2-PC', 'WIN10', 'NO', 'NO', 'NO', '', 11, 1, 2, '0', 1),
(77, 'C0077', 'CPU', 'EDIF. IMÁGENES ', 'REVISIONES', 'HP', 'HP PRO 310', 'MXL123611XY', '10.0.0.53', '78-E3-B5-95-26-CD', 'REVISIONES3', 'WIN 7', 'NO', 'NO', 'NO', '', 11, 1, 2, '0', 1),
(78, 'C0078', 'CPU', 'EDIF. IMÁGENES ', 'REVISIONES', 'LENOVO', '10B7001RLS', 'MJ002SVF', '10.0.0.155', '44-8A-5B-04-7E-9E', 'REVIONES4-PC', 'WIN10', 'NO', 'NO', 'NO', '', 11, 1, 2, '0', 1),
(79, 'C0079', 'CPU', 'EDIF. IMÁGENES ', 'REVISIONES', 'LENOVO', '3598H4S', 'MJ05HHA', '10.0.0.51', '74-27-EA-C8-3B-25', 'ACALIDAD', 'WIN7', 'NO', 'NO', 'NO', '', 11, 1, 2, '0', 1),
(80, 'C0080', 'NUC', 'EDIF. IMÁGENES ', 'TRANSCRIPCION MAMOGRAFIA IMÁGENES 5TO PISO', 'INTEL', 'NUC7JY', 'GEJY23500QLT', '10.0.0.61', '88-AE-DD-0B-5E-60', 'CONSULTORIO1-PC', 'WIN10', 'NO', 'NO', 'NO', '', 11, 1, 2, '0', 1),
(81, 'C0081', 'TODO EN UNO', 'EDIF. IMÁGENES ', 'TRANSCRIPCION MAMOGRAFIA IMÁGENES 5TO PISO', 'HP', 'HP DD2005LA', '8CC3213PVF', '10.0.0.179', '', 'TRANSCRIPCION01-PC', 'WIN1O', 'NO', 'NO', 'NO', '', 11, 1, 2, '0', 1),
(93, 'C0007', NULL, NULL, NULL, 'CLON', 'CLON', 'N/A', '10.0.0.113', 'E8-40-F2-C2-7F-D7', 'RECEPCION5-LAB2', 'WIN10', 'NO', 'NO', 'NO', 'assets/images/equipodecomputo/default.png', 2, 1, 5, '', 1);

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
(9, 'RONDA REAL', 'assets/images/sedesdefault.png', 1);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `equipo_de_computo`
--
ALTER TABLE `equipo_de_computo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT de la tabla `sedes`
--
ALTER TABLE `sedes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
