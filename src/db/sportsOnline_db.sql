-- Creacion de la Base de Datos
CREATE DATABASE sportsOnline_db;

-- Seleccion de la Base de Datos
USE sportsOnline_db;

-- Creacion de tabla de categoria
CREATE TABLE categoria (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre varchar(50) NOT NULL,
  created_at TIMESTAMP NULL DEFAULT NULL,
  updated_at TIMESTAMP NULL DEFAULT NULL
);

-- Ingreso de datos a categoria
INSERT INTO categoria (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Camisetas', '2021-01-02 03:00:00', '2021-01-02 03:00:00'),
(2, 'Shorts', '2021-01-02 03:00:00', '2021-01-02 03:00:00'),
(3, 'Zapatillas', '2021-01-02 03:00:00', '2021-01-02 03:00:00'),
(4, 'Raquetas', '2021-01-02 03:00:00', '2021-01-02 03:00:00'),
(5, 'Pelotas', '2021-01-02 03:00:00', '2021-01-02 03:00:00'),
(6, 'Botines', '2021-01-02 03:00:00', '2021-01-02 03:00:00'),
(7, 'Camperas', '2021-01-02 03:00:00', '2021-01-02 03:00:00'),
(8, 'Buzos', '2021-01-02 03:00:00', '2021-01-02 03:00:00'),
(9, 'Pantalones', '2021-01-02 03:00:00', '2021-01-02 03:00:00'),
(10, 'Remeras', '2021-01-02 03:00:00', '2021-01-02 03:00:00'),
(11, 'Medias', '2021-01-02 03:00:00', '2021-01-02 03:00:00');

-- Creacion de tabla de deporte
CREATE TABLE deporte (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre varchar(50) NOT NULL,
  created_at TIMESTAMP NULL DEFAULT NULL,
  updated_at TIMESTAMP NULL DEFAULT NULL
);

-- Ingreso de datos a deporte
INSERT INTO deporte (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'FUTBOL', '2021-01-02 03:00:00', '2021-01-02 03:00:00'),
(2, 'TENIS', '2021-01-02 03:00:00', '2021-01-02 03:00:00'),
(3, 'PADDLE', '2021-01-02 03:00:00', '2021-01-02 03:00:00'),
(4, 'RUNNIG', '2021-01-02 03:00:00', '2021-01-02 03:00:00'),
(5, 'HOCKEY', '2021-01-02 03:00:00', '2021-01-02 03:00:00'),
(6, 'TRAINING', '2021-01-02 03:00:00', '2021-01-02 03:00:00');

-- Creacion de tabla de genero
CREATE TABLE genero (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre varchar(50) NOT NULL,
  created_at TIMESTAMP DEFAULT current_timestamp(),
  updated_at TIMESTAMP DEFAULT current_timestamp() ON UPDATE current_timestamp()
);

-- Ingreso de datos a genero
INSERT INTO genero (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Hombre', '2021-01-02 03:00:00', '2021-01-02 03:00:00'),
(2, 'Mujer', '2021-01-02 03:00:00', '2021-01-02 03:00:00'),
(3, 'Unisex', '2021-01-02 03:00:00', '2021-01-02 03:00:00');

-- Creacion de tabla de marca
CREATE TABLE marca (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre varchar(50) NOT NULL,
  created_at TIMESTAMP DEFAULT current_timestamp(),
  updated_at TIMESTAMP DEFAULT current_timestamp() ON UPDATE current_timestamp()
);

-- Ingreso de datos a marca
INSERT INTO marca (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Adidas', '2021-01-02 03:00:00', '2021-01-02 03:00:00'),
(2, 'Nike', '2021-01-02 03:00:00', '2021-01-02 03:00:00'),
(3, 'Puma', '2021-01-02 03:00:00', '2021-01-02 03:00:00'),
(4, 'Reebok', '2021-01-02 03:00:00', '2021-01-02 03:00:00'),
(5, 'Umbro', '2021-01-02 03:00:00', '2021-01-02 03:00:00'),
(6, 'Fila', '2021-01-02 03:00:00', '2021-01-02 03:00:00'),
(7, 'Babolat', '2021-01-02 03:00:00', '2021-01-02 03:00:00'),
(8, 'Wilson', '2021-01-02 03:00:00', '2021-01-02 03:00:00'),
(9, 'SportsOnline', '2021-01-02 03:00:00', '2021-01-02 03:00:00');

-- Creacion de tabla de perfil
CREATE TABLE perfil (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre varchar(50) NOT NULL,
  created_at TIMESTAMP DEFAULT current_timestamp(),
  updated_at TIMESTAMP DEFAULT current_timestamp() ON UPDATE current_timestamp()
);

-- Ingreso de datos a perfil
INSERT INTO perfil (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Administrador', '2021-02-26 00:07:56', '2021-02-26 00:07:56'),
(2, 'Cliente', '2021-02-26 00:07:56', '2021-02-26 00:07:56');

-- Creacion de tabla de producto
CREATE TABLE producto (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre varchar(100) NOT NULL,
  precio MEDIUMINT(10) NOT NULL,
  descripcion text NOT NULL,
  imagen varchar(100) NOT NULL,
  genero_id INT UNSIGNED NOT NULL,
  deporte_id INT UNSIGNED NOT NULL,
  marca_id INT UNSIGNED NOT NULL,
  categoria_id INT UNSIGNED NOT NULL,
  created_at TIMESTAMP DEFAULT current_timestamp(),
  updated_at TIMESTAMP DEFAULT current_timestamp() ON UPDATE current_timestamp()
);

-- Ingreso de datos a producto (es importante que vaya ultima ya que tiene datos con claves foraneas, y si esas tablas no tienen insertados datos no funciona la db)
INSERT INTO producto (`id`, `nombre`, `precio`, `descripcion`, `imagen`, `genero_id`, `deporte_id`, `marca_id`, `categoria_id`, `created_at`, `updated_at`) VALUES
(1, 'Camiseta Argentina', 8000, 'Camiseta titular Argentina', 'imagen1.jpg', 1, 1, 1, 1, '2021-02-26 03:03:56', '2022-06-20 18:05:51'),
(2, 'Pelota de Tenis Wilson', 500, 'Pelota US Open 2022', 'imagen1655748491506.jpg', 1, 1, 1, 1, '2022-06-20 18:08:11', '2022-06-20 19:22:27'),
(3, 'Pelota', 7000, 'Championes League', 'imagen1655748545628.jpg', 1, 1, 1, 5, '2022-06-20 18:09:05', '2022-06-20 18:09:05');

-- Creacion de tabla de producto_talle
CREATE TABLE producto_talle (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  producto_id INT UNSIGNED NOT NULL,
  talle_id INT UNSIGNED NOT NULL,
  created_at TIMESTAMP DEFAULT current_timestamp(),
  updated_at TIMESTAMP DEFAULT current_timestamp() ON UPDATE current_timestamp()
);

-- Ingreso de datos a producto_talle
INSERT INTO producto_talle (`id`, `producto_id`, `talle_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '2022-06-20 18:08:11', '2022-06-20 18:08:11'),
(2, 3, 1, '2022-06-20 18:09:05', '2022-06-20 18:09:05');

-- Creacion de tabla de talle
CREATE TABLE talle (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  talle varchar(150) NOT NULL,
  created_at TIMESTAMP DEFAULT current_timestamp(),
  updated_at TIMESTAMP DEFAULT current_timestamp() ON UPDATE current_timestamp()
);

-- Ingreso de datos a talle
INSERT INTO talle (`id`, `talle`, `created_at`, `updated_at`) VALUES
(1, 'S', '2021-01-02 03:00:00', '2021-01-02 03:00:00'),
(2, 'M', '2021-01-02 03:00:00', '2021-01-02 03:00:00'),
(3, 'L', '2021-01-02 03:00:00', '2021-01-02 03:00:00'),
(4, 'XL', '2021-01-02 03:00:00', '2021-01-02 03:00:00'),
(5, '38', '2021-01-02 03:00:00', '2021-01-02 03:00:00'),
(6, '39', '2021-01-02 03:00:00', '2021-01-02 03:00:00'),
(7, '39', '2021-01-02 03:00:00', '2021-01-02 03:00:00'),
(8, '40', '2021-01-02 03:00:00', '2021-01-02 03:00:00'),
(9, '41', '2021-01-02 03:00:00', '2021-01-02 03:00:00'),
(10, '42', '2021-01-02 03:00:00', '2021-01-02 03:00:00'),
(11, '43', '2021-01-02 03:00:00', '2021-01-02 03:00:00'),
(12, '44', '2021-01-02 03:00:00', '2021-01-02 03:00:00'),
(13, '45', '2021-01-02 03:00:00', '2021-01-02 03:00:00');

-- Creacion de tabla de usuario
CREATE TABLE usuario (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre varchar(50) NOT NULL,
  apellido varchar(50) NOT NULL,
  email varchar(50) NOT NULL,
  contraseña varchar(150) NOT NULL,
  avatar varchar(100) NOT NULL,
  pais varchar(100) NOT NULL,
  direccion varchar(100) NOT NULL,
  codigo_postal varchar(100) NOT NULL,
  fecha_de_nacimiento DATE NOT NULL,
  telefono varchar (100) NOT NULL,
  perfil_id INT UNSIGNED,
  created_at TIMESTAMP DEFAULT current_timestamp(),
  updated_at TIMESTAMP DEFAULT current_timestamp() ON UPDATE current_timestamp()
);

INSERT INTO usuario (`id`, `nombre`, `apellido`, `email`, `contraseña`, `avatar`, `perfil_id`, `created_at`, `updated_at`) VALUES
(3, 'Administrador', 'Admin', 'administrador@gmail.com', '$2a$10$w3r5VkuCFLxgMpC66ZgX2uKl41DtDRiZZIh5wp.LlBAvmtuSUtAFe', 'avatar1655499961541.png', 1, '2022-06-17 21:06:01', '2022-06-17 21:07:09'),
(4, 'Lionel', 'Messi', 'messi@gmail.com', '$2a$10$0xcqFmhY3A/z/WD/oo1m7.8tch94P5i258l7RLtnakt33aSCSl4OG', 'avatar1655500303388.gif', 2, '2022-06-17 21:11:43', '2022-06-20 18:47:36'),
(5, 'Cristiano', 'Ronaldo', 'ronaldo@gmail.com', '$2a$10$gZghUHemiJKuqECqWAfB9Ot1SLropi30RN/iaJzMw7fsai7i6As/K', 'avatar1655750333885.jpg', 2, '2022-06-20 18:38:53', '2022-06-20 18:38:53'),
(6, 'Elias', 'Zurita', 'eliass.zurita@gmail.com', '$2a$10$IBBSZqBgQqZsT9zWV7/O7.pYgfcBazW/O9Ztvqhfe2L8y9tXxkDKK', 'avatar1655750349595.jpg', 2, '2022-06-20 18:39:09', '2022-06-20 18:39:09');

-- Creacion de tabla de ordenes
CREATE TABLE ordenes (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  fecha DATETIME NOT NULL,
  precio_total DECIMAL NOT NULL,
  usuario_id INT UNSIGNED,
  created_at TIMESTAMP DEFAULT current_timestamp(),
  updated_at TIMESTAMP DEFAULT current_timestamp() ON UPDATE current_timestamp()
);

-- Creacion de tabla de items
CREATE TABLE items (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  cantidad INT UNSIGNED NOT NULL,
  subtotal INT UNSIGNED NOT NULL,
  imagen varchar (50) NOT NULL,
  producto_id INT UNSIGNED,
  usuario_id INT UNSIGNED,
  ordenes_id INT UNSIGNED,
  created_at TIMESTAMP DEFAULT current_timestamp(),
  updated_at TIMESTAMP DEFAULT current_timestamp() ON UPDATE current_timestamp()
);

-- Creacion de Foreign Key producto
ALTER TABLE producto
ADD FOREIGN KEY (genero_id) REFERENCES genero(id),
ADD FOREIGN KEY (deporte_id) REFERENCES deporte(id),
ADD FOREIGN KEY (marca_id) REFERENCES marca(id),
ADD FOREIGN KEY (categoria_id) REFERENCES categoria(id),

-- Creacion de Foreign Key Tabla pivot
ALTER TABLE producto_talle 
ADD FOREIGN KEY (producto_id) REFERENCES producto(id),
ADD FOREIGN KEY (talle_id) REFERENCES talle(id);

-- Creacion de Foreign Key items
ALTER TABLE items
ADD FOREIGN KEY (usuario_id) REFERENCES usuario(id),
ADD FOREIGN KEY (ordenes_id) REFERENCES ordenes(id),
ADD FOREIGN KEY (producto_id) REFERENCES producto(id);

-- Creacion de Foreign Key ordenes
ALTER TABLE ordenes
ADD FOREIGN KEY (usuario_id) REFERENCES usuario(id);

-- Creacion de Foreign Key usuario
ALTER TABLE usuario
ADD FOREIGN KEY (perfil_id) REFERENCES perfil(id);