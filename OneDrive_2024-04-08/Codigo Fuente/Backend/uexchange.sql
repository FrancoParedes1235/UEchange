-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-11-2023 a las 15:22:22
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
-- Base de datos: `uexchange`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial_trueques`
--

CREATE TABLE `historial_trueques` (
  `id` int(11) NOT NULL,
  `id_publicacion` int(11) NOT NULL,
  `id_usuario_ofrecedor` int(11) NOT NULL,
  `id_usuario_receptor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicaciones`
--

CREATE TABLE `publicaciones` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `imagen` char(255) DEFAULT NULL,
  `ubicacion` varchar(255) NOT NULL,
  `contacto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `publicaciones`
--

INSERT INTO `publicaciones` (`id`, `titulo`, `descripcion`, `categoria`, `estado`, `id_usuario`, `imagen`, `ubicacion`, `contacto`) VALUES
(13, 'pantalon', 'marron', 'asesorias', '', 1, 'PANTALONES-HOMBRE-MERRELL-RAMBLER-PANT-JMS26397-326_2.webp', 'la catolica', '930449194'),
(16, 'camisa', 'celeste', 'asesorias', '', 2, 'imagen_2023-11-28_022934833.png', 'la catolica', '930449195'),
(17, 'short', 'shortttt', 'asesorias', '', 2, 'imagen_2023-11-28_023247191.png', 'la catolica', '930449196'),
(22, 'medias', 'tobilleras', 'asesorias', '', 2, 'imagen_2023-11-28_024257914.png', 'la catolica', '930449199'),
(25, 'lentes', 'bonitos', 'tecnologia', '', 2, 'imagen_2023-11-28_025141850.png', 'la catolica', '930449191'),
(26, 'gorro', 'negro', 'asesorias', '', 2, 'imagen_2023-11-28_025711667.png', 'la catolica', '930449192'),
(27, 'top', 'negro', 'asesorias', '', 1, 'imagen_2023-11-28_025806464.png', 'la catolica', '930449193'),
(28, 'zapatilla', 'de pikachui', 'calzados', '', 1, 'imagen_2023-11-29_102730711.png', 'ucsm', '930449194'),
(29, 'zapato', 'zapato bonito', 'calzados', '', 3, 'images.jpeg', 'ucsm', '123456789'),
(30, 'zapatilla', 'azul', 'calzados', '', 3, 'ZAPATILLA-HOMBRE-HI-TEC-TARANTULA-LOW-H007007066-0_1.jpg', 'ucsm', '123456789');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contrasena` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `email`, `contrasena`) VALUES
(1, 'Jesus', 'jesus@gmail.com', '$2y$10$A8/g0VDv3hFcD7hLdhTCHe82F/jGOVu.5EK11czY7oiSOvQ5vinVC'),
(2, 'jordi', 'jordi@gmail.com', '$2y$10$Wm4KD5JGAim5EcEw3A3rX.484sDnwQFdH7CMZXEwRpE38QzWYSff2'),
(3, 'piero', 'piero@gmail.com', '$2y$10$wQER3Xi241wQTvSakgLslODJpcpquyqWDdYPasNq2DDalh17A0nIi'),
(4, 'franco', 'franco@gmail.com', '$argon2id$v=19$m=131072,t=4,p=2$ZHVyeE5xSFRaZW5adjU3Wg$eohceRyFlq8G1qL1/ZvDVvyd/B2JJV26PgCTbGsiteU');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `historial_trueques`
--
ALTER TABLE `historial_trueques`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
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
-- AUTO_INCREMENT de la tabla `historial_trueques`
--
ALTER TABLE `historial_trueques`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
