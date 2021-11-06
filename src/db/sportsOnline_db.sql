-- BASE DE DATOS

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

-- Creacion de tabla de imagen
CREATE TABLE imagen (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre varchar(200) NOT NULL,
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
INSERT INTO producto (id, nombre, precio, descripcion, imagen, talle_id, genero_id, deporte_id, marca_id, categoria_id)
VALUES (1, Camiseta River, 8000, Camiseta titular River Plate, imagen1.jpg, )