-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-10-2025 a las 07:51:16
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
-- Base de datos: `condominios`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `depto`
--

CREATE TABLE `depto` (
  `codigo` int(10) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `director` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `depto`
--

INSERT INTO `depto` (`codigo`, `nombre`, `director`) VALUES
(101, 'Recursos Humanos', 'Sofía Ramírez'),
(102, 'Contabilidad', 'Diego Torres'),
(103, 'Mantenimiento', 'Valeria Sánchez'),
(104, 'Seguridad', 'Jorge Castillo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `curp` int(10) NOT NULL,
  `nombreE` varchar(45) NOT NULL,
  `cat` varchar(45) DEFAULT NULL,
  `ded` varchar(45) DEFAULT NULL,
  `codigo1` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`curp`, `nombreE`, `cat`, `ded`, `codigo1`) VALUES
(1001, 'Sofía Ramírez', 'Gerente', 'Tiempo Completo', 101),
(1002, 'Diego Torres', 'Contador', 'Medio Tiempo', 102),
(1003, 'Valeria Sánchez', 'Supervisor', 'Tiempo Completo', 103),
(1004, 'Jorge Castillo', 'Jefe de Seguridad', 'Tiempo Completo', 104);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `depto`
--
ALTER TABLE `depto`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`curp`),
  ADD UNIQUE KEY `codigo1` (`codigo1`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `depto`
--
ALTER TABLE `depto`
  ADD CONSTRAINT `fk_depto_empleado` FOREIGN KEY (`codigo`) REFERENCES `empleados` (`codigo1`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
