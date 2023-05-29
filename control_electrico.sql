-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-05-2023 a las 04:40:29
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `control_electrico`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `documento` int(11) NOT NULL,
  `telefono` int(11) NOT NULL,
  `direccion` text NOT NULL,
  `email` text NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `documento`, `telefono`, `direccion`, `email`, `fecha_registro`) VALUES
(1, 'Rolin Roldan ', 71037003, 969164680, 'Jr. Carlos Marx 299', 'correo@gmail.com', '2023-05-18 23:06:03'),
(2, 'Ana Vilela', 1234567, 955611329, 'Piura', 'correo2@gmail.com', '2023-05-18 17:20:28'),
(3, 'Nonano el pichii', 98563214, 987456321, 'Jr. Carlos Marx 299', 'correo@gmail.com', '2023-05-18 23:06:13'),
(4, 'Juan Pablo', 233232323, 928654156, 'Jr. Carlos Marx 299', 'correo@gmail.com', '2023-05-18 16:48:03'),
(5, 'Enrrique', 71037003, 928654156, 'Jr. Carlos Marx 299', 'correo@gmail.com', '2023-05-18 16:48:16'),
(6, 'Yeico Chávez Alama', 45276133, 928654156, 'Jr. Carlos Marx 299', 'correo@gmail.com', '2023-05-18 16:48:53'),
(7, 'Belida Raymundo Palma', 2621743, 928654156, 'Jr. Carlos Marx 299', 'correo@gmail.com', '2023-05-18 16:49:26'),
(8, 'Adriano Chavez', 71037009, 928654156, 'Jr. Carlos Marx 299', 'correo@gmail.com', '2023-05-18 20:53:20'),
(9, 'Pedro Lopez', 71037003, 928654156, 'Jr. Carlos Marx 299', 'correo@gmail.com', '2023-05-18 16:51:44'),
(10, 'Maria del Mar', 2621743, 928654156, 'Jr. Carlos Marx 299', 'correo@gmail.com', '2023-05-18 16:52:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mto_table`
--

CREATE TABLE `mto_table` (
  `id` int(11) NOT NULL,
  `lectura_anterior` float NOT NULL,
  `lectura_actual` float NOT NULL,
  `deuda` float NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `totalKws` float NOT NULL,
  `energia_activa` float NOT NULL,
  `subTotal` float NOT NULL,
  `IgvCalculo` float NOT NULL,
  `total` float NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `mto_table`
--

INSERT INTO `mto_table` (`id`, `lectura_anterior`, `lectura_actual`, `deuda`, `cliente_id`, `totalKws`, `energia_activa`, `subTotal`, `IgvCalculo`, `total`, `fecha_registro`) VALUES
(1, 2996, 3301, 0, 1, 305, 298.9, 301.5, 54.27, 355.77, '2023-05-21 01:18:11'),
(3, 100, 120, 15, 2, 20, 19.6, 22.2, 4, 41.2, '2023-05-21 01:51:17'),
(4, 1245, 2451, 0, 3, 1206, 2181.88, 2184.48, 213.21, 1397.69, '2023-05-22 23:12:03'),
(5, 3256, 4563, 0, 4, 1307, 1280.86, 1283.46, 231.02, 1514.48, '2023-05-21 01:51:41'),
(6, 300, 364, 0, 5, 64, 62.72, 65.32, 11.76, 77.08, '2023-05-21 01:51:52'),
(7, 3698, 4963, 25, 6, 1265, 1239.7, 1242.3, 223.61, 1490.91, '2023-05-21 01:52:09'),
(8, 9874, 9889, 0, 7, 15, 14.7, 17.3, 3.11, 20.41, '2023-05-21 01:52:27'),
(9, 2563, 3652, 36, 8, 1089, 1067.22, 1069.82, 192.57, 1298.39, '2023-05-21 01:52:42'),
(10, 1453, 1563, 2, 9, 110, 107.8, 110.4, 19.87, 132.27, '2023-05-21 01:52:57'),
(11, 2996, 3221, 0, 10, 225, 220.5, 223.1, 40.16, 263.26, '2023-05-22 00:19:50'),
(12, 2996, 3301, 0, 1, 305, 298.9, 301.5, 54.27, 355.77, '2023-05-23 01:09:07'),
(13, 2996, 3001, 25, 7, 5, 4.9, 7.5, 1.35, 33.85, '2023-05-23 01:09:46'),
(14, 6984, 7896, 300, 3, 912, 893.76, 896.36, 161.34, 1357.7, '2023-05-23 01:10:25'),
(16, 2996, 3301, 0, 10, 305, 298.9, 301.5, 54.27, 355.77, '2023-05-26 20:29:33'),
(17, 100, 120, 0, 1, 20, 19.6, 22.2, 4, 26.2, '2023-05-26 20:29:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `users` text NOT NULL,
  `password` text NOT NULL,
  `email` text NOT NULL,
  `profile` text NOT NULL,
  `estatus` int(11) NOT NULL,
  `ultimo_login` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `users`, `password`, `email`, `profile`, `estatus`, `ultimo_login`, `fecha`) VALUES
(1, 'Rolin Chavez Carmen', 'rolin', '$2a$07$asxx54ahjppf45sd87a5auTpl4vE.y6RjTBmaae4zPCge1gDx0i8u', 'correo@correo.com', 'Administrador', 1, '2023-05-28 14:01:53', '2023-05-28 19:01:53');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `mto_table`
--
ALTER TABLE `mto_table`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `mto_table`
--
ALTER TABLE `mto_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
