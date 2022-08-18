-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-08-2022 a las 22:51:40
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
-- Base de datos: `sportsonline_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Camisetas', '2021-01-02 06:00:00', '2021-01-02 06:00:00'),
(2, 'Shorts', '2021-01-02 06:00:00', '2021-01-02 06:00:00'),
(3, 'Zapatillas', '2021-01-02 06:00:00', '2021-01-02 06:00:00'),
(4, 'Raquetas', '2021-01-02 06:00:00', '2021-01-02 06:00:00'),
(5, 'Pelotas', '2021-01-02 06:00:00', '2021-01-02 06:00:00'),
(6, 'Botines', '2021-01-02 06:00:00', '2021-01-02 06:00:00'),
(7, 'Camperas', '2021-01-02 06:00:00', '2021-01-02 06:00:00'),
(8, 'Buzos', '2021-01-02 06:00:00', '2021-01-02 06:00:00'),
(9, 'Pantalones', '2021-01-02 06:00:00', '2021-01-02 06:00:00'),
(10, 'Remeras', '2021-01-02 06:00:00', '2021-01-02 06:00:00'),
(11, 'Medias', '2021-01-02 06:00:00', '2021-01-02 06:00:00'),
(12, 'Paletas', '2021-01-02 06:00:00', '2021-01-02 06:00:00'),
(13, 'Muñequera', '2021-01-02 06:00:00', '2021-01-02 06:00:00'),
(14, 'Cubre grip', '2021-01-02 06:00:00', '2021-01-02 06:00:00'),
(15, 'Guantes', '2021-01-02 06:00:00', '2021-01-02 06:00:00'),
(16, 'Palo', '2021-01-02 06:00:00', '2021-01-02 06:00:00'),
(17, 'Pollera', '2021-01-02 06:00:00', '2021-01-02 06:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `deporte`
--

CREATE TABLE `deporte` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `deporte`
--

INSERT INTO `deporte` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'FUTBOL', '2021-01-02 06:00:00', '2021-01-02 06:00:00'),
(2, 'TENIS', '2021-01-02 06:00:00', '2021-01-02 06:00:00'),
(3, 'PADDLE', '2021-01-02 06:00:00', '2021-01-02 06:00:00'),
(4, 'RUNNIG', '2021-01-02 06:00:00', '2021-01-02 06:00:00'),
(5, 'HOCKEY', '2021-01-02 06:00:00', '2021-01-02 06:00:00'),
(6, 'TRAINING', '2021-01-02 06:00:00', '2021-01-02 06:00:00'),
(7, 'VOLEY', '2021-01-02 06:00:00', '2021-01-02 06:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Hombre', '2021-01-02 06:00:00', '2021-01-02 06:00:00'),
(2, 'Mujer', '2021-01-02 06:00:00', '2021-01-02 06:00:00'),
(3, 'Unisex', '2021-01-02 06:00:00', '2021-01-02 06:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `items`
--

CREATE TABLE `items` (
  `id` int(10) UNSIGNED NOT NULL,
  `cantidad` int(10) UNSIGNED NOT NULL,
  `subtotal` int(10) UNSIGNED NOT NULL,
  `imagen` varchar(50) NOT NULL,
  `producto_id` int(10) UNSIGNED DEFAULT NULL,
  `usuario_id` int(10) UNSIGNED DEFAULT NULL,
  `ordenes_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `items`
--

INSERT INTO `items` (`id`, `cantidad`, `subtotal`, `imagen`, `producto_id`, `usuario_id`, `ordenes_id`, `created_at`, `updated_at`) VALUES
(1, 1, 23999, '', 8, 3, NULL, '2022-08-16 20:08:35', '2022-08-16 20:08:35'),
(2, 1, 7000, '', 6, 3, NULL, '2022-08-16 20:12:07', '2022-08-16 20:12:07'),
(3, 1, 10439, '', 7, 3, NULL, '2022-08-16 20:15:55', '2022-08-16 20:15:55'),
(4, 1, 7000, '', 6, 3, NULL, '2022-08-16 20:18:27', '2022-08-16 20:18:27'),
(5, 1, 7000, '', 6, 3, NULL, '2022-08-16 20:34:41', '2022-08-16 20:34:41'),
(6, 1, 7000, '', 6, 3, NULL, '2022-08-16 20:40:12', '2022-08-16 20:40:12'),
(7, 1, 10439, '', 7, 3, NULL, '2022-08-16 20:42:38', '2022-08-16 20:42:38'),
(8, 1, 7000, '', 6, 3, NULL, '2022-08-16 20:44:03', '2022-08-16 20:44:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE `marca` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `marca`
--

INSERT INTO `marca` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Adidas', '2021-01-02 06:00:00', '2021-01-02 06:00:00'),
(2, 'Nike', '2021-01-02 06:00:00', '2021-01-02 06:00:00'),
(3, 'Puma', '2021-01-02 06:00:00', '2021-01-02 06:00:00'),
(4, 'Reebok', '2021-01-02 06:00:00', '2021-01-02 06:00:00'),
(5, 'Umbro', '2021-01-02 06:00:00', '2021-01-02 06:00:00'),
(6, 'Fila', '2021-01-02 06:00:00', '2021-01-02 06:00:00'),
(7, 'Babolat', '2021-01-02 06:00:00', '2021-01-02 06:00:00'),
(8, 'Wilson', '2021-01-02 06:00:00', '2021-01-02 06:00:00'),
(9, 'Nassau', '2021-01-02 06:00:00', '2021-01-02 06:00:00'),
(10, 'Topper', '2021-01-02 06:00:00', '2021-01-02 06:00:00'),
(11, 'Vairo', '2021-01-02 06:00:00', '2021-01-02 06:00:00'),
(12, 'Prince', '2021-01-02 06:00:00', '2021-01-02 06:00:00'),
(13, 'Head', '2021-01-02 06:00:00', '2021-01-02 06:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordenes`
--

CREATE TABLE `ordenes` (
  `id` int(10) UNSIGNED NOT NULL,
  `fecha` datetime NOT NULL,
  `precio_total` decimal(10,0) NOT NULL,
  `usuario_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE `perfil` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `perfil`
--

INSERT INTO `perfil` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Administrador', '2021-02-26 03:07:56', '2021-02-26 03:07:56'),
(2, 'Cliente', '2021-02-26 03:07:56', '2021-02-26 03:07:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `precio` mediumint(10) NOT NULL,
  `descripcion` text NOT NULL,
  `imagen` varchar(100) NOT NULL,
  `genero_id` int(10) UNSIGNED NOT NULL,
  `deporte_id` int(10) UNSIGNED NOT NULL,
  `marca_id` int(10) UNSIGNED NOT NULL,
  `categoria_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `nombre`, `precio`, `descripcion`, `imagen`, `genero_id`, `deporte_id`, `marca_id`, `categoria_id`, `created_at`, `updated_at`) VALUES
(4, 'Pelota Adidas Al Rihla', 12999, '                            Escribí tu propia historia futbolística con esta pelota de entrenamiento resistente. La pelota es solo el comienzo.\r\nEl resto de tu historia futbolística aún no está escrita. Inspirada en el look de la pelota oficial para partidos de la Copa Mundial de la FIFA™, esta pelota de entrenamiento Al Rihla de ADIDAS es ideal para sesiones intensas. Su estructura cosida a máquina y la cámara de butilo garantizan resistencia y longevidad. La superficie texturizada le da el acabado perfecto. Esta pelota está cosida a máquina para una máxima resistencia al desgaste. Incorpora una cámara de butilo que la mantiene inflada por más tiempo.', 'imagen1660675219262.jpg', 1, 1, 1, 1, '2022-08-16 18:40:19', '2022-08-16 18:40:30'),
(5, 'Pelota Puma Orbita Serie A', 8000, 'Perfecta para los días de partido, sesiones de training o con amigos. la pelota Orbita Serie A Hybrid ofrece un rendimiento polivalente con unas fantásticas \r\n aracterísticas de rebote, durabilidad y vuelo. Tamaño: Nº5.', 'imagen1660675331158.jpg', 3, 1, 3, 5, '2022-08-16 18:42:11', '2022-08-16 18:42:11'),
(6, 'Pelota Topper Ultimate', 7000, 'Lucite en partidos y entrenamientos de futbol con el balón Ultimate 5 de Topper. Tamaño: N°5.', 'imagen1660675409608.jpg', 3, 1, 10, 5, '2022-08-16 18:43:29', '2022-08-16 18:43:29'),
(7, 'Pelota Nike Pro', 10439, '                                                                                    La pelota de futsal NIKE Pro proporciona un toque excepcional y un mayor control en espacios reducidos.\r\nCuenta con estampados de alto contraste para facilitar la visibilidad. El diseño duradero y texturizado mejora el control de la pelota. Tamaño: N°4.', 'imagen1660675629845.jpg', 3, 1, 2, 5, '2022-08-16 18:47:09', '2022-08-16 18:48:04'),
(8, 'Pelota Puma Orbita Laliga', 23999, 'Pateá, golpea y pasá como un profesional con La Liga Orbita Pro. Tamaño: Numero 5.', 'imagen1660675762902.jpg', 3, 1, 3, 5, '2022-08-16 18:49:22', '2022-08-16 18:49:22'),
(9, 'Pelota Adidas EPP CLB', 7899, 'La próxima vez que vayas al parque, apuntá a las estrellas.\r\nCon esta pelota ADIDAS EPP CLB, tu talento no pasará desapercibido ni en el entrenamiento ni en los partidos del barrio. Tamaño: N°5.', 'imagen1660675936539.jpg', 3, 1, 1, 5, '2022-08-16 18:52:16', '2022-08-16 18:52:16'),
(10, 'Pelota Argentina Adidas', 9999, '¿Dónde terminará el viaje? Alentá a Argentina en el torneo de fútbol más importante del mundo. Esta pelota ADIDAS luce el escudo oficial de la selección. Su diseño te ofrece un toque suave y una gran resistencia al desgaste. La cámara de butilo la mantiene inflada mientras vos jugás como tus héroes. Tamaño: Nº5.', 'imagen1660676004484.jpg', 3, 1, 1, 5, '2022-08-16 18:53:24', '2022-08-16 18:53:24'),
(11, 'Pelota Puma Spin', 5499, 'Entra en acción con este implemento deportivo visible y de excelente performance. No importa el lugar donde quieras jugar, La pelota de fútbol Spin llamará la atención de todos y llevará tu juego al siguiente nivel. Tamaño: N5.', 'imagen1660676096270.jpg', 3, 1, 3, 5, '2022-08-16 18:54:56', '2022-08-16 18:54:56'),
(12, 'Pelota Nassau Pyramid', 12000, 'Disfrutá los partidos con la pelota NASSAU Pyramid.\r\nTamaño: Nº5.', 'imagen1660676285590.jpg', 3, 1, 9, 5, '2022-08-16 18:58:05', '2022-08-16 18:58:05'),
(13, 'Pelota Nassau Spectro', 12000, 'Disfrutá los partidos con la pelota NASSAU Spectro.\r\nTamaño: Nº5.', 'imagen1660676373009.jpg', 3, 1, 9, 5, '2022-08-16 18:59:33', '2022-08-16 18:59:33'),
(14, 'Pelota Nassau Magic', 13800, 'Lucite en partidos y entrenamientos de futbol con la pelota Magic de NASSAU. Tamaño: N°5', 'imagen1660676739426.jpg', 3, 1, 9, 5, '2022-08-16 19:05:39', '2022-08-16 19:05:39'),
(15, 'Pelota Wilson Traditional', 7999, 'El diseño clásico no pasa de moda y esta pelota de futbol WILSON no es la excepción. Tamaño: N°5', 'imagen1660679419793.jpg', 3, 1, 8, 5, '2022-08-16 19:50:19', '2022-08-16 19:50:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_talle`
--

CREATE TABLE `producto_talle` (
  `id` int(10) UNSIGNED NOT NULL,
  `producto_id` int(10) UNSIGNED NOT NULL,
  `talle_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto_talle`
--

INSERT INTO `producto_talle` (`id`, `producto_id`, `talle_id`, `created_at`, `updated_at`) VALUES
(3, 4, 1, '2022-08-16 18:40:19', '2022-08-16 18:40:19'),
(4, 5, 2, '2022-08-16 18:42:11', '2022-08-16 18:42:11'),
(5, 6, 1, '2022-08-16 18:43:29', '2022-08-16 18:43:29'),
(6, 7, 1, '2022-08-16 18:47:09', '2022-08-16 18:47:09'),
(7, 8, 2, '2022-08-16 18:49:22', '2022-08-16 18:49:22'),
(8, 9, 4, '2022-08-16 18:52:16', '2022-08-16 18:52:16'),
(9, 10, 2, '2022-08-16 18:53:24', '2022-08-16 18:53:24'),
(10, 11, 1, '2022-08-16 18:54:56', '2022-08-16 18:54:56'),
(11, 12, 1, '2022-08-16 18:58:05', '2022-08-16 18:58:05'),
(12, 13, 5, '2022-08-16 18:59:33', '2022-08-16 18:59:33'),
(13, 14, 2, '2022-08-16 19:05:39', '2022-08-16 19:05:39'),
(14, 15, 3, '2022-08-16 19:50:19', '2022-08-16 19:50:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `talle`
--

CREATE TABLE `talle` (
  `id` int(10) UNSIGNED NOT NULL,
  `talle` varchar(150) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `talle`
--

INSERT INTO `talle` (`id`, `talle`, `created_at`, `updated_at`) VALUES
(1, 'S', '2021-01-02 06:00:00', '2021-01-02 06:00:00'),
(2, 'M', '2021-01-02 06:00:00', '2021-01-02 06:00:00'),
(3, 'L', '2021-01-02 06:00:00', '2021-01-02 06:00:00'),
(4, 'XL', '2021-01-02 06:00:00', '2021-01-02 06:00:00'),
(5, '38', '2021-01-02 06:00:00', '2021-01-02 06:00:00'),
(6, '39', '2021-01-02 06:00:00', '2021-01-02 06:00:00'),
(7, '39', '2021-01-02 06:00:00', '2021-01-02 06:00:00'),
(8, '40', '2021-01-02 06:00:00', '2021-01-02 06:00:00'),
(9, '41', '2021-01-02 06:00:00', '2021-01-02 06:00:00'),
(10, '42', '2021-01-02 06:00:00', '2021-01-02 06:00:00'),
(11, '43', '2021-01-02 06:00:00', '2021-01-02 06:00:00'),
(12, '44', '2021-01-02 06:00:00', '2021-01-02 06:00:00'),
(13, '45', '2021-01-02 06:00:00', '2021-01-02 06:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contraseña` varchar(150) NOT NULL,
  `avatar` varchar(100) NOT NULL,
  `pais` varchar(100) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `codigo_postal` varchar(100) NOT NULL,
  `fecha_de_nacimiento` date NOT NULL,
  `telefono` varchar(100) NOT NULL,
  `perfil_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombre`, `apellido`, `email`, `contraseña`, `avatar`, `pais`, `direccion`, `codigo_postal`, `fecha_de_nacimiento`, `telefono`, `perfil_id`, `created_at`, `updated_at`) VALUES
(3, 'Administrador', 'Admin', 'administrador@gmail.com', '$2a$10$w3r5VkuCFLxgMpC66ZgX2uKl41DtDRiZZIh5wp.LlBAvmtuSUtAFe', 'avatar1655499961541.png', '', '', '', '0000-00-00', '', 1, '2022-06-18 00:06:01', '2022-06-18 00:07:09'),
(4, 'Lionel', 'Messi', 'messi@gmail.com', '$2a$10$0xcqFmhY3A/z/WD/oo1m7.8tch94P5i258l7RLtnakt33aSCSl4OG', 'avatar1655500303388.gif', '', '', '', '0000-00-00', '', 2, '2022-06-18 00:11:43', '2022-06-20 21:47:36'),
(5, 'Cristiano', 'Ronaldo', 'ronaldo@gmail.com', '$2a$10$gZghUHemiJKuqECqWAfB9Ot1SLropi30RN/iaJzMw7fsai7i6As/K', 'avatar1655750333885.jpg', '', '', '', '0000-00-00', '', 2, '2022-06-20 21:38:53', '2022-06-20 21:38:53'),
(6, 'Elias', 'Zurita', 'eliass.zurita@gmail.com', '$2a$10$IBBSZqBgQqZsT9zWV7/O7.pYgfcBazW/O9Ztvqhfe2L8y9tXxkDKK', 'avatar1655750349595.jpg', '', '', '', '0000-00-00', '', 2, '2022-06-20 21:39:09', '2022-06-20 21:39:09');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `deporte`
--
ALTER TABLE `deporte`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ordenes`
--
ALTER TABLE `ordenes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `perfil`
--
ALTER TABLE `perfil`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `producto_talle`
--
ALTER TABLE `producto_talle`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `talle`
--
ALTER TABLE `talle`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `deporte`
--
ALTER TABLE `deporte`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `items`
--
ALTER TABLE `items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `marca`
--
ALTER TABLE `marca`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `ordenes`
--
ALTER TABLE `ordenes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `perfil`
--
ALTER TABLE `perfil`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `producto_talle`
--
ALTER TABLE `producto_talle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `talle`
--
ALTER TABLE `talle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
