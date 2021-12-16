-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-12-2021 a las 19:59:42
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `baselelis`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `participantes`
--

CREATE TABLE `participantes` (
  `id` int(150) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `telefono` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `participantes`
--

INSERT INTO `participantes` (`id`, `nombre`, `apellido`, `email`, `telefono`) VALUES
(17, 'Juan ', 'Perozo', 'juan@gmail.com', 1523566985),
(18, 'Alicia', 'Sanchez', 'alicia@gmail.com', 1547788554),
(19, 'Enrique', 'Avellaneda', 'enrique@gmail.com', 1520548789),
(20, 'Santiago', 'Bustamante', 'santi@gmail.com', 1558985652),
(21, 'Corina', 'Romero', 'corina@gmail.com', 1578969663),
(22, 'Carlos', 'Castro', 'carlos@gmail.com', 1547899663),
(23, 'Samuel', 'Arias', 'samuel@gmail.com', 1596988585),
(24, 'Hermes', 'Miraflores', 'hermes@gmail.com', 1578747474),
(25, 'Sara', 'Gomez', 'sara@gmail.com', 1578744142),
(26, 'Estela', 'Paz', 'estela@gmail.com', 1545698585),
(27, 'Esteban', 'Alvarado', 'esteban@gmail.com', 1569969396),
(28, 'Juliana', 'Hernandez', 'juliana@gmail.com', 1574787952),
(29, 'Diana', 'Montes', 'diana@gmail.com', 1515151515),
(30, 'Pedro', 'Perez', 'pedro@gmail.com', 1578965254),
(31, 'Luciana', 'Alvarez', 'luciana@gmail.com', 1578898589),
(32, 'Leticia', 'Delgado Salas', 'leti@gmail.com', 1575858965),
(38, 'Luisa', 'Campos', 'luisa@gmail.com', 1525262365),
(39, 'Fernando E.', 'Miranda', 'fernando@gmail.com', 1569895986),
(40, 'Dayana', 'Pelusso', 'diana@gmail.com', 1589755251),
(41, 'Almira', 'Lara', 'almira@gmail.com', 1589754241),
(43, 'lulu', 'CISNEROS', 'lulu@gmail.com', 1125252525);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `email`, `password`) VALUES
(1, 'lulu@gmail.com', '123456'),
(2, 'pedro@gmail.com', '123456');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `participantes`
--
ALTER TABLE `participantes`
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
-- AUTO_INCREMENT de la tabla `participantes`
--
ALTER TABLE `participantes`
  MODIFY `id` int(150) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
