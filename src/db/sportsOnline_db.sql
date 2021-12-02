-- Creacion de la Base de Datos
CREATE DATABASE sportsOnline_db;

-- Seleccion de la Base de Datos
USE sportsOnline_db;

-- Creacion de tabla de producto
CREATE TABLE producto (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre varchar(50) NOT NULL,
  precio smallint(6) NOT NULL,
  descripcion text NOT NULL,
  imagen varchar(100) NOT NULL,
  genero_id INT UNSIGNED NOT NULL,
  deporte_id INT UNSIGNED NOT NULL,
  marca_id INT UNSIGNED NOT NULL,
  categoria_id INT UNSIGNED NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Creacion de tabla de talle
CREATE TABLE talle (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  talle varchar(150) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Creacion de tabla de producto_talle
CREATE TABLE producto_talle (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  producto_id INT UNSIGNED NOT NULL,
  talle_id INT UNSIGNED NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Creacion de tabla de categoria
CREATE TABLE categoria (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre varchar(50) NOT NULL,
  created_at TIMESTAMP NULL DEFAULT NULL,
  updated_at TIMESTAMP NULL DEFAULT NULL
);

-- Creacion de tabla de deporte
CREATE TABLE deporte (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre varchar(50) NOT NULL,
  created_at TIMESTAMP NULL DEFAULT NULL,
  updated_at TIMESTAMP NULL DEFAULT NULL
);

-- Creacion de tabla de genero
CREATE TABLE genero (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre varchar(50) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Creacion de tabla de marca
CREATE TABLE marca (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre varchar(50) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Creacion de tabla de usuario
CREATE TABLE usuario (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre varchar(50) NOT NULL,
  apellido varchar(50) NOT NULL,
  email varchar(50) NOT NULL,
  contraseña varchar(150) NOT NULL,
  avatar varchar(100) NOT NULL,
  perfil_id INT UNSIGNED NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Creacion de tabla de perfil
CREATE TABLE perfil (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre varchar(50) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Ingreso de datos a categoria
INSERT INTO categoria (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'camisetas', '2021-01-02', '2021-01-02'),
(2, 'shorts', '2021-01-02', '2021-01-02'),
(3, 'zapatillas', '2021-01-02', '2021-01-02'),
(4, 'raquetas', '2021-01-02', '2021-01-02'),
(5, 'pelotas', '2021-01-02', '2021-01-02'),
(6, 'botines', '2021-01-02', '2021-01-02');

-- Ingreso de datos a deporte
INSERT INTO deporte (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'futbol', '2021-01-02', '2021-01-02'),
(2, 'tenis', '2021-01-02', '2021-01-02'),
(3, 'basket', '2021-01-02', '2021-01-02'),
(4, 'training', '2021-01-02', '2021-01-02');

-- Ingreso de datos a genero
INSERT INTO genero (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'hombre', '2021-01-02', '2021-01-02'),
(2, 'mujer', '2021-01-02', '2021-01-02');

-- Ingreso de datos a marca
INSERT INTO marca (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Adidas', '2021-01-02', '2021-01-02'),
(2, 'Nike', '2021-01-02', '2021-01-02'),
(3, 'Puma', '2021-01-02', '2021-01-02'),
(4, 'Jordan', '2021-01-02', '2021-01-02'),
(5, 'Babolat', '2021-01-02', '2021-01-02'),
(6, 'SportsOnline', '2021-01-02', '2021-01-02');

-- Ingreso de datos a talle
INSERT INTO talle (`id`, `talle`, `created_at`, `updated_at`) VALUES
(1, 'S', '2021-01-02', '2021-01-02'),
(2, 'M', '2021-01-02', '2021-01-02'),
(3, 'L', '2021-01-02', '2021-01-02'),
(4, 'XL', '2021-01-02', '2021-01-02'),
(5, '38', '2021-01-02', '2021-01-02'),
(6, '39', '2021-01-02', '2021-01-02'),
(7, '39', '2021-01-02', '2021-01-02'),
(8, '40', '2021-01-02', '2021-01-02'),
(9, '41', '2021-01-02', '2021-01-02'),
(10, '42', '2021-01-02', '2021-01-02'),
(11, '43', '2021-01-02', '2021-01-02');

-- Ingreso de datos a producto (es importante que vaya ultima ya que tiene datos con claves foraneas, y si esas tablas no tienen insertados datos no funciona la db)
INSERT INTO producto (`id`, `nombre`, `precio`, `descripcion`, `imagen`, `genero_id`, `deporte_id`, `marca_id`, `categoria_id`, `created_at`, `updated_at`) VALUES
(1, 'Camiseta River', 8000, 'Camiseta titular River Plate', 'imagen1.jpg',  1, 1, 1, 1, '2021-02-26 00:03:56', '2021-02-26 00:03:56'),
(2, 'Camiseta Manchester City', 10000, 'Camiseta titular Manchester City', 'imagen2.jpg',  1, 1, 1, 1, '2021-02-26 00:03:58', '2021-02-26 00:03:58'),
(3, 'Camiseta PSG', 12000, 'Camiseta titular Paris Saint Germain', 'imagen3.jpg', 1, 1, 1, 1, '2021-02-26 00:03:59', '2021-02-26 00:03:59'),
(4, 'Camiseta Juventus', 9000, 'Camiseta titular Juventes', 'imagen4.jpg',  1, 1, 1, 1, '2021-02-26 00:04:56', '2021-02-26 00:04:56'),
(5, 'Camiseta Barcelona', 7000, 'Camiseta titular Barcelona', 'imagen5.jpg', 1, 1, 1, 1, '2021-02-26 00:05:56', '2021-02-26 00:05:56'),
(6, 'Camiseta Argentina', 13000, 'Camiseta titular Seleccion Argentina', 'imagen6.jpg', 1, 1, 1, 1, '2021-02-26 00:06:56', '2021-02-26 00:06:56'),
(7, 'Camiseta Manchester', 14000, 'Camiseta titular Manchester United', 'imagen7.jpg', 1, 1, 1, 1, '2021-02-26 00:07:56', '2021-02-26 00:07:56'),
(8, 'Camiseta Bayer', 11000, 'Camiseta titular Bayer Munich', 'imagen8.jpg', 1, 1, 1, 1, '2021-02-26 00:07:56', '2021-02-26 00:07:56'),
(9, 'Camiseta Madrid', 12500, 'Camiseta titular Atletico Madrid', 'imagen9.jpg', 1, 1, 1, 1, '2021-02-26 00:07:56', '2021-02-26 00:07:56'),
(10, 'Short River', 4000, 'Short titular River', 'imagen10.jpg', 1, 1, 1, 1, '2021-02-26 00:07:56', '2021-02-26 00:07:56'),
(11, 'Short Argentina', 7000, 'Short titular Argentina', 'imagen11.jpg',  1, 1, 1, 1, '2021-02-26 00:07:56', '2021-02-26 00:07:56');

-- Ingreso de datos a perfil
INSERT INTO perfil (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Administrador', '2021-01-02', '2021-01-02'),
(2, 'Usuario', '2021-01-02', '2021-01-02');

INSERT INTO usuario (`id`, `nombre`, `apellido`, `email`, `contraseña`, `avatar`, `perfil_id`,`created_at`, `updated_at`) VALUES
(1,'Pedro', 'Gomez', 'gomez@gmail.com', '123456', 'avatar1', '1', '2021-02-26 00:07:56', '2021-02-26 00:07:56'),
(2,'Marcelo', 'Gallardo', 'muñeco@gmail.com', '123456', 'avatar2', '2', '2021-02-26 00:07:56', '2021-02-26 00:07:56');

-- Creacion de Foreign Key producto
ALTER TABLE producto
ADD FOREIGN KEY (genero_id) REFERENCES genero(id),
ADD FOREIGN KEY (deporte_id) REFERENCES deporte(id),
ADD FOREIGN KEY (marca_id) REFERENCES marca(id),
ADD FOREIGN KEY (categoria_id) REFERENCES categoria(id);

-- Creacion de Foreign Key Tabla pivot
ALTER TABLE producto_talle 
ADD FOREIGN KEY (producto_id) REFERENCES producto(id),
ADD FOREIGN KEY (talle_id) REFERENCES talle(id);

-- Creacion de Foreign Key usuario
ALTER TABLE usuario
ADD FOREIGN KEY (perfil_id) REFERENCES perfil(id);

