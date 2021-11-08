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
  talle_id tinyint(4) NOT NULL,
  genero_id tinyint(4) NOT NULL,
  deporte_id tinyint(4) NOT NULL,
  marca_id tinyint(4) NOT NULL,
  categoria_id tinyint(4) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Creacion de tabla de producto_talle
CREATE TABLE producto_talle (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  producto_id UNSIGNED NOT NULL,
  talle_id UNSIGNED NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Creacion de tabla de avatar
CREATE TABLE avatar (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre varchar(50) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Creacion de tabla de categoria
CREATE TABLE categoria (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre varchar(50) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Creacion de tabla de deporte
CREATE TABLE deporte (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre varchar(50) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
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

-- Creacion de tabla de talle
CREATE TABLE talle (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  talle tinyint(4) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Creacion de tabla de usuario
CREATE TABLE usuario (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre varchar(50) NOT NULL,
  apellido varchar(50) NOT NULL,
  email varchar(50) NOT NULL,
  contraseña varchar(50) NOT NULL,
  avatar varchar(100) NOT NULL,
  perfil_id int(11) NOT NULL,
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

-- Creacion de Foreign Key producto
ALTER TABLE producto
ADD FOREIGN KEY (talle_id) REFERENCES talle(id),
ADD FOREIGN KEY (genero_id) REFERENCES genero(id),
ADD FOREIGN KEY (deporte_id) REFERENCES deporte(id),
ADD FOREIGN KEY (marca_id) REFERENCES marca(id),
ADD FOREIGN KEY (categoria_id) REFERENCES categoria(id),

-- Creacion de Foreign Key Tabla pivot
ALTER TABLE producto_talle 
ADD FOREIGN KEY (talle_id) REFERENCES producto(id),
ADD FOREIGN KEY (producto_id) REFERENCES talle(id);

-- Creacion de Foreign Key usuario
ALTER TABLE usuario
ADD FOREIGN KEY (perfil_id) REFERENCES perfil(id);

-- Ingreso de datos a producto
INSERT INTO producto (id, nombre, precio, descripcion, imagen, talle_id, genero_id, deporte_id, marca_id, categoria_id, created_at, updated_at) VALUES
(1, Camiseta River, 8000, Camiseta titular River Plate, imagen1.jpg, 1, 1, 1, 1, 1, '2021-02-26 00:03:56', '2021-02-26 00:03:56'),
(2, Camiseta Manchester City, 10000, Camiseta titular Manchester City, imagen2.jpg, 1, 1, 1, 1, 1, '2021-02-26 00:03:58', '2021-02-26 00:03:58'),
(3, Camiseta PSG, 12000, Camiseta titular Paris Saint Germain, imagen3.jpg, 1, 1, 1, 1, 1, '2021-02-26 00:03:59', '2021-02-26 00:03:59'),
(4, Camiseta Juventus, 9000, Camiseta titular Juventes, imagen4.jpg, 2, 1, 1, 1, 1, '2021-02-26 00:04:56', '2021-02-26 00:04:56'),
(5, Camiseta Barcelona, 7000, Camiseta titular Barcelona, imagen5.jpg, 2, 1, 1, 1, 1, '2021-02-26 00:05:56', '2021-02-26 00:05:56'),
(6, Camiseta Argentina, 13000, Camiseta titular Seleccion Argentina, imagen6.jpg, 2, 1, 1, 1, 1, '2021-02-26 00:06:56', '2021-02-26 00:06:56'),
(7, Camiseta Manchester, 14000, Camiseta titular Manchester United, imagen7.jpg, 3, 1, 1, 1, 1, '2021-02-26 00:07:56', '2021-02-26 00:07:56'),
(8, Camiseta Bayer, 11000, Camiseta titular Bayer Munich, imagen8.jpg, 3, 1, 1, 1, 1, '2021-02-26 00:07:56', '2021-02-26 00:07:56'),
(9, Camiseta Madrid, 12500, Camiseta titular Atletico Madrid, imagen9.jpg, 3, 1, 1, 1, 1, '2021-02-26 00:07:56', '2021-02-26 00:07:56'),
(10, Short River, 4000, Short titular River, imagen10.jpg, 3, 1, 1, 1, 1, '2021-02-26 00:07:56', '2021-02-26 00:07:56'),
(11, Short Argentina, 7000, Short titular Argentina, imagen11.jpg, 3, 1, 1, 1, 1, '2021-02-26 00:07:56', '2021-02-26 00:07:56'),
(12, Short Adidas, 4000, Short Adidas Negro, imagen12.jpg, 3, 1, 1, 1, 1, '2021-02-26 00:07:56', '2021-02-26 00:07:56'),
(13, Short Nike, 5000, Short Nike Azul, imagen13.jpg, 3, 1, 1, 1, 1, '2021-02-26 00:07:56', '2021-02-26 00:07:56'),
(14, Short Puma, 3000, Short Puma Negro, imagen14.jpg, 3, 1, 1, 1, 1, '2021-02-26 00:07:56', '2021-02-26 00:07:56'),
(15, Zapatillas Adidas, 10000, Zapatillas Adidas Azules, imagen15.jpg, 3, 1, 1, 1, 1, '2021-02-26 00:07:56', '2021-02-26 00:07:56'),
(16, Zapatillas Running, 9000, Zapatillas Running Adidas, imagen16.jpg, 3, 1, 1, 1, 1, '2021-02-26 00:07:56', '2021-02-26 00:07:56'),
(17, Zapatillas Nike, 8000, Zapatillas Nike Negras, imagen17.jpg, 3, 1, 1, 1, 1, '2021-02-26 00:07:56', '2021-02-26 00:07:56'),
(18, Zapatillas Puma, 14000, Zapatillas Puma Blancas, imagen18.jpg, 3, 1, 1, 1, 1, '2021-02-26 00:07:56', '2021-02-26 00:07:56'),
(19, Zapatillas Babolat, 15000, Zapatillas Babolat Nadal, imagen19.jpg, 3, 1, 1, 1, 1, '2021-02-26 00:07:56', '2021-02-26 00:07:56'),
(20, Raqueta Federer, 20000, Raqueta Roger Federer, imagen20.jpg, 3, 1, 1, 1, 1, '2021-02-26 00:07:56', '2021-02-26 00:07:56'),
(21, Raqueta Nadal, 21000, Raqueta Rafael Nadal, imagen21.jpg, 3, 1, 1, 1, 1, '2021-02-26 00:07:56', '2021-02-26 00:07:56'),
(22, Raqueta Djokovic, 25000, Raqueta Novak Djokovic, imagen22.jpg, 3, 1, 1, 1, 1, '2021-02-26 00:07:56', '2021-02-26 00:07:56'),
(23, Raqueta Thiem, 19000, Raqueta Dominic Thiem, imagen23.jpg, 3, 1, 1, 1, 1, '2021-02-26 00:07:56', '2021-02-26 00:07:56'),
(24, Raqueta Monfils, 13000, Raqueta Gael Monfils, imagen24.jpg, 3, 1, 1, 1, 1, '2021-02-26 00:07:56', '2021-02-26 00:07:56'),
(25, Camiseta Monaco, 8000, Camiseta titular Monaco, imagen25.jpg, 3, 1, 1, 1, 1, '2021-02-26 00:07:56', '2021-02-26 00:07:56'),
(26, Pelota Uniforia, 4000, Pelota Adidas Uniforia, imagen26.jpg, 3, 1, 1, 1, 1, '2021-02-26 00:07:56', '2021-02-26 00:07:56'),
(27, Pelota Capitano, 2000, Pelota Adidas Capitano, imagen27.jpg, 3, 1, 1, 1, 1, '2021-02-26 00:07:56', '2021-02-26 00:07:56'),
(28, Pelota Champions, 3500, Pelota Champions League, imagen28.jpg, 3, 1, 1, 1, 1, '2021-02-26 00:07:56', '2021-02-26 00:07:56'),
(29, Pelota Tango, 5000, Pelota Adidas Tango, imagen29.jpg, 3, 1, 1, 1, 1, '2021-02-26 00:07:56', '2021-02-26 00:07:56'),
(30, Pelota Madrid, 6000, Pelota Adidas Madrid, imagen30.jpg, 3, 1, 1, 1, 1, '2021-02-26 00:07:56', '2021-02-26 00:07:56'),
(31, Botines Messi, 20000, Botines Adidas Lionel Messi, imagen31.jpg, 3, 1, 1, 1, 1, '2021-02-26 00:07:56', '2021-02-26 00:07:56'),
(32, Botines Ronaldo, 21000, Botines Nike Cristiano Ronaldo, imagen32.jpg, 3, 1, 1, 1, 1, '2021-02-26 00:07:56', '2021-02-26 00:07:56'),
(33, Botines Predator, 40000, Botines Adidas Predator, imagen33.jpg, 3, 1, 1, 1, 1, '2021-02-26 00:07:56', '2021-02-26 00:07:56'),
(34, Botines Predator Mutator, 36000, Botines Adidas Predator Mutator, imagen34.jpg, 3, 1, 1, 1, 1, '2021-02-26 00:07:56', '2021-02-26 00:07:56'),
(35, Musculosa Spurs, 8000, Musculosa San Antonio Spurs, imagen35.jpg, 3, 1, 1, 1, 1, '2021-02-26 00:07:56', '2021-02-26 00:07:56'),
(36, Musculosa Bulls, 9000, Musculosa Chicago Bulls, imagen36.jpg, 3, 1, 1, 1, 1, '2021-02-26 00:07:56', '2021-02-26 00:07:56'),
(37, Mancuernas, 1000, Mancuernas training, imagen37.jpg, 3, 1, 1, 1, 1, '2021-02-26 00:07:56', '2021-02-26 00:07:56'),
(38, Soga, 500, Soga de saltar, imagen38.jpg, 3, 1, 1, 1, 1, '2021-02-26 00:07:56', '2021-02-26 00:07:56');

-- Ingreso de datos a producto_talle
INSERT INTO producto_talle (id, producto_id, talle_id, created_at, updated_at) VALUES
(1, 1, 1, '2021-02-26 00:03:56', '2021-02-26 00:03:56'),
(2, 2, 1, '2021-02-26 00:03:56', '2021-02-26 00:03:56'),
(3, 3, 1, '2021-02-26 00:03:56', '2021-02-26 00:03:56'),
(4, 4, 2, '2021-02-26 00:03:56', '2021-02-26 00:03:56'),
(5, 5, 2, '2021-02-26 00:03:56', '2021-02-26 00:03:56'),
(6, 6, 2, '2021-02-26 00:03:56', '2021-02-26 00:03:56'),
(7, 7, 3, '2021-02-26 00:03:56', '2021-02-26 00:03:56'),
(8, 8, 3, '2021-02-26 00:03:56', '2021-02-26 00:03:56'),
(9, 9, 3, '2021-02-26 00:03:56', '2021-02-26 00:03:56'),
(10, 10, 3, '2021-02-26 00:03:56', '2021-02-26 00:03:56');

-- Ingreso de datos a avatar
INSERT INTO avatar (id, nombre, created_at, updated_at) VALUES
(1, avatar1, '2021-05-26 00:04:56', '2021-05-26 00:04:56'),
(2, avatar2, '2021-06-26 00:04:56', '2021-06-26 00:04:56'),
(3, avatar3, '2021-02-26 00:04:56', '2021-02-26 00:04:56'),
(4, avatar4, '2021-05-26 00:04:56', '2021-05-26 00:04:56'),
(5, avatar5, '2021-05-26 00:04:56', '2021-05-26 00:04:56'),
(6, avatar6, '2021-05-26 00:04:56', '2021-05-26 00:04:56'),
(7, avatar7, '2021-05-26 00:04:56', '2021-05-26 00:04:56'),
(8, avatar8, '2021-05-26 00:04:56', '2021-05-26 00:04:56'),
(9, avatar9, '2021-05-26 00:04:56', '2021-05-26 00:04:56'),
(10, avatar10, '2021-05-26 00:04:56', '2021-05-26 00:04:56');

-- Ingreso de datos a categoria
INSERT INTO categoria (id, nombre, created_at, updated_at) VALUES
(1, camisetas, '2021-01-02', '2021-01-02'),
(2, shorts, '2021-01-02', '2021-01-02'),
(3, zapatillas, '2021-01-02', '2021-01-02'),
(4, raquetas, '2021-01-02', '2021-01-02'),
(5, pelotas, '2021-01-02', '2021-01-02'),
(6, botines, '2021-01-02', '2021-01-02'),

-- Ingreso de datos a deporte
INSERT INTO deporte (id, nombre, created_at, updated_at) VALUES
(1, futbol, '2021-01-02', '2021-01-02'),
(2, tenis, '2021-01-02', '2021-01-02'),
(3, basket, '2021-01-02', '2021-01-02'),
(4, training, '2021-01-02', '2021-01-02');

-- Ingreso de datos a genero
INSERT INTO genero (id, nombre, created_at, updated_at) VALUES
(1, hombre, '2021-01-02', '2021-01-02'),
(2, mujer, '2021-01-02', '2021-01-02');

-- Ingreso de datos a marca
INSERT INTO marca (id, nombre, created_at, updated_at) VALUES
(1, Adidas,'2021-01-02', '2021-01-02'),
(2, Nike,'2021-01-02', '2021-01-02'),
(3, Puma,'2021-01-02', '2021-01-02'),
(4, Jordan,'2021-01-02', '2021-01-02'),
(5, Babolat,'2021-01-02', '2021-01-02'),
(6, SportsOnline,'2021-01-02', '2021-01-02');

-- Ingreso de datos a talle
INSERT INTO talle (id, talle, created_at, updated_at) VALUES
(1, S,'2021-01-02', '2021-01-02'),
(2, M, '2021-01-02', '2021-01-02'),
(3, L,'2021-01-02', '2021-01-02'),
(4, XL,'2021-01-02', '2021-01-02'),
(5, 38,'2021-01-02', '2021-01-02'),
(6, 39,'2021-01-02', '2021-01-02'),
(7, 39,'2021-01-02', '2021-01-02'),
(8, 40,'2021-01-02', '2021-01-02'),
(9, 41,'2021-01-02', '2021-01-02'),
(10, 42,'2021-01-02', '2021-01-02'),
(11, 43,'2021-01-02', '2021-01-02');

-- Ingreso de datos a usuario (nose que poner en contraseña)

-- Ingreso de datos a perfil
