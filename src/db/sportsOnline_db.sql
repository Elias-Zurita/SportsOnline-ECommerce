-- Creacion de la Base de Datos
-- CREATE DATABASE sportsOnline_db;

-- Seleccion de la Base de Datos
 USE sql10523126;

DROP TABLE IF EXISTS categoria;
-- Creacion de tabla de categoria
CREATE TABLE IF NOT EXISTS categoria (
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
(11, 'Medias', '2021-01-02 03:00:00', '2021-01-02 03:00:00'),
(12, 'Paletas', '2021-01-02 03:00:00', '2021-01-02 03:00:00'),
(13, 'Muñequera', '2021-01-02 03:00:00', '2021-01-02 03:00:00'),
(14, 'Cubre grip', '2021-01-02 03:00:00', '2021-01-02 03:00:00'),
(15, 'Guantes', '2021-01-02 03:00:00', '2021-01-02 03:00:00'),
(16, 'Palo', '2021-01-02 03:00:00', '2021-01-02 03:00:00'),
(17, 'Pollera', '2021-01-02 03:00:00', '2021-01-02 03:00:00');

DROP TABLE IF EXISTS deporte;
-- Creacion de tabla de deporte
CREATE TABLE IF NOT EXISTS deporte (
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
(6, 'TRAINING', '2021-01-02 03:00:00', '2021-01-02 03:00:00'),
(7, 'VOLEY', '2021-01-02 03:00:00', '2021-01-02 03:00:00');

DROP TABLE IF EXISTS genero; 
-- Creacion de tabla de genero
CREATE TABLE IF NOT EXISTS genero (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre varchar(50) NOT NULL,
  created_at TIMESTAMP DEFAULT current_timestamp(),
  updated_at TIMESTAMP
);

-- Ingreso de datos a genero
INSERT INTO genero (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Hombre', '2021-01-02 03:00:00', '2021-01-02 03:00:00'),
(2, 'Mujer', '2021-01-02 03:00:00', '2021-01-02 03:00:00'),
(3, 'Unisex', '2021-01-02 03:00:00', '2021-01-02 03:00:00');

DROP TABLE IF EXISTS marca;
-- Creacion de tabla de marca
CREATE TABLE IF NOT EXISTS marca (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre varchar(50) NOT NULL,
  created_at TIMESTAMP DEFAULT current_timestamp(),
  updated_at TIMESTAMP
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
(9, 'Nassau', '2021-01-02 03:00:00', '2021-01-02 03:00:00'),
(10, 'Topper', '2021-01-02 03:00:00', '2021-01-02 03:00:00'),
(11, 'Vairo', '2021-01-02 03:00:00', '2021-01-02 03:00:00'),
(12, 'Prince', '2021-01-02 03:00:00', '2021-01-02 03:00:00'),
(13, 'Head', '2021-01-02 03:00:00', '2021-01-02 03:00:00');

DROP TABLE IF EXISTS perfil; 
-- Creacion de tabla de perfil
CREATE TABLE IF NOT EXISTS perfil (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre varchar(50) NOT NULL,
  created_at TIMESTAMP DEFAULT current_timestamp(),
  updated_at TIMESTAMP
  );

-- Ingreso de datos a perfil
INSERT INTO perfil (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Administrador', '2021-02-26 00:07:56', '2021-02-26 00:07:56'),
(2, 'Cliente', '2021-02-26 00:07:56', '2021-02-26 00:07:56');

DROP TABLE IF EXISTS producto;
-- Creacion de tabla de producto
CREATE TABLE IF NOT EXISTS producto (
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
  updated_at TIMESTAMP
);

-- Ingreso de datos a producto (es importante que vaya ultima ya que tiene datos con claves foraneas, y si esas tablas no tienen insertados datos no funciona la db)
INSERT INTO `producto` (`id`, `nombre`, `precio`, `descripcion`, `imagen`, `genero_id`, `deporte_id`, `marca_id`, `categoria_id`, `created_at`, `updated_at`) VALUES
(4, 'Pelota Adidas Al Rihla', 12999, 'Escribí tu propia historia futbolística con esta pelota de entrenamiento resistente. La pelota es solo el comienzo.\r\nEl resto de tu historia futbolística aún no está escrita. Inspirada en el look de la pelota oficial para partidos de la Copa Mundial de la FIFA™, esta pelota de entrenamiento Al Rihla de ADIDAS es ideal para sesiones intensas. Su estructura cosida a máquina y la cámara de butilo garantizan resistencia y longevidad. La superficie texturizada le da el acabado perfecto. Esta pelota está cosida a máquina para una máxima resistencia al desgaste. Incorpora una cámara de butilo que la mantiene inflada por más tiempo.', 'imagen1660675219262.jpg', 1, 1, 1, 1, '2022-08-16 21:40:19', '2022-08-16 21:40:30'),
(5, 'Pelota Puma Orbita', 8000, 'Perfecta para los días de partido, sesiones de training o con amigos. la pelota Orbita Serie A Hybrid ofrece un rendimiento polivalente con unas fantásticas \r\n aracterísticas de rebote, durabilidad y vuelo. Tamaño: Nº5.', 'imagen1660675331158.jpg', 3, 1, 3, 5, '2022-08-16 21:42:11', '2022-09-01 17:15:11'),
(6, 'Pelota Topper Ultimate', 7000, 'Lucite en partidos y entrenamientos de futbol con el balón Ultimate 5 de Topper. Tamaño: N°5.', 'imagen1660675409608.jpg', 3, 1, 10, 5, '2022-08-16 21:43:29', '2022-08-16 21:43:29'),
(7, 'Pelota Nike Pro', 10439, 'La pelota de futsal NIKE Pro proporciona un toque excepcional y un mayor control en espacios reducidos.\r\nCuenta con estampados de alto contraste para facilitar la visibilidad. El diseño duradero y texturizado mejora el control de la pelota. Tamaño: N°4.', 'imagen1660675629845.jpg', 3, 1, 2, 5, '2022-08-16 21:47:09', '2022-08-16 21:48:04'),
(8, 'Pelota Puma Orbita', 23999, 'Pateá, golpea y pasá como un profesional con La Liga Orbita Pro. Tamaño: Numero 5.', 'imagen1660675762902.jpg', 1, 1, 1, 1, '2022-08-16 21:49:22', '2022-08-24 16:10:02'),
(9, 'Pelota Adidas EPP CLB', 7899, 'La próxima vez que vayas al parque, apuntá a las estrellas.\r\nCon esta pelota ADIDAS EPP CLB, tu talento no pasará desapercibido ni en el entrenamiento ni en los partidos del barrio. Tamaño: N°5.', 'imagen1660675936539.jpg', 3, 1, 1, 5, '2022-08-16 21:52:16', '2022-08-16 21:52:16'),
(10, 'Pelota Argentina Adidas', 9999, '¿Dónde terminará el viaje? Alentá a Argentina en el torneo de fútbol más importante del mundo. Esta pelota ADIDAS luce el escudo oficial de la selección. Su diseño te ofrece un toque suave y una gran resistencia al desgaste. La cámara de butilo la mantiene inflada mientras vos jugás como tus héroes. Tamaño: Nº5.', 'imagen1660676004484.jpg', 3, 1, 1, 5, '2022-08-16 21:53:24', '2022-08-16 21:53:24'),
(11, 'Pelota Puma Spin', 5499, 'Entra en acción con este implemento deportivo visible y de excelente performance. No importa el lugar donde quieras jugar, La pelota de fútbol Spin llamará la atención de todos y llevará tu juego al siguiente nivel. Tamaño: N5.', 'imagen1660676096270.jpg', 3, 1, 3, 5, '2022-08-16 21:54:56', '2022-08-16 21:54:56'),
(12, 'Pelota Nassau Pyramid', 12000, 'Disfrutá los partidos con la pelota NASSAU Pyramid.\r\nTamaño: Nº5.', 'imagen1660676285590.jpg', 3, 1, 9, 5, '2022-08-16 21:58:05', '2022-08-16 21:58:05'),
(13, 'Pelota Nassau Spectro', 12000, 'Disfrutá los partidos con la pelota NASSAU Spectro.\r\nTamaño: Nº5.', 'imagen1660676373009.jpg', 3, 1, 9, 5, '2022-08-16 21:59:33', '2022-08-16 21:59:33'),
(14, 'Pelota Nassau Magic', 13800, 'Lucite en partidos y entrenamientos de futbol con la pelota Magic de NASSAU. Tamaño: N°5', 'imagen1660676739426.jpg', 3, 1, 9, 5, '2022-08-16 22:05:39', '2022-08-16 22:05:39'),
(15, 'Pelota Wilson', 7999, 'El diseño clásico no pasa de moda y esta pelota de futbol WILSON no es la excepción. Tamaño: N°5', 'imagen1660679419793.jpg', 1, 1, 1, 1, '2022-08-16 22:50:19', '2022-08-24 16:10:14'),
(16, 'Botines Adidas Copa Sense', 25999, 'Cuando entres a la cancha, no solo tenés que concentrarte en el juego. También tenés que sentirlo. Acercate a la pelota con estos botines ADIDAS Copa Sense para terreno firme. Su exterior cómodo y envolvente incluye una lengüeta elástica para facilitar su calce y un antepié de cuero suave para asegurar que el balón se mantenga bajo tu control. Los tacos moldeados en la suela de TPU te permiten moverte con rapidez sobre pasto natural seco.\r\nUn producto hecho parcialmente con contenido reciclado generado a partir de desechos de producción, tales como recortes de tela, y desechos domésticos postconsumo, para evitar un mayor impacto ambiental al producir contenido virgen.', 'imagen1660763704389.jpg', 3, 1, 1, 6, '2022-08-17 22:15:04', '2022-08-17 22:15:04'),
(17, 'Botines Adidas Predator', 25999, 'Precisión, control, poder. ADIDAS Predator lo tiene todo cubierto. Entrá a la cancha y encontrá tu ventaja con estos botines de terreno firme. Presente en la zona del exterior sintético revestido, el estampado de agarre Control Zone te ayuda al tocar el balón. Su llamativa suela angular de TPU se encarga de mantenerte en control sobre césped natural seco. Un producto hecho parcialmente con contenido reciclado generado a partir de desechos de producción, tales como recortes de tela, y desechos domésticos postconsumo, para evitar un mayor impacto ambiental al producir contenido virgen.', 'imagen1660774235669.jpg', 3, 1, 1, 6, '2022-08-18 01:10:35', '2022-08-18 01:10:35'),
(18, 'Botines Adidas Speed Portal', 62999, 'Los buenos jugadores crean tiempo y espacio. \r\nLos grandes los dejan a ambos atrás. Desbloqueá la velocidad multidimensional en ADIDAS X Speedportal.\r\nElegantes y súper cómodos, estos botines de fútbol admiten reacciones instantáneas con una placa de carbono Carbitex flexible de largo completo en su suela exterior para terreno firme. Parte superior Speedskin que abraza los pies, un collar adaptativo ADIDAS Primeknit y un ligero bloqueo de carbono en el talón se unen para mantenerlo atado para carreras de velocidad de la luz y pasos laterales que desafían la física. Fabricada con una serie de materiales reciclados, esta parte superior presenta al menos un 50 % de contenido reciclado. Este producto representa solo una de nuestras soluciones para ayudar a acabar con los residuos plásticos.', 'imagen1660774316258.jpg', 3, 1, 1, 6, '2022-08-18 01:11:56', '2022-08-18 01:11:56'),
(19, 'Botines Adidas Copa Sense', 25999, 'Algunos jugadores presumen de sus habilidades.\r\nPero los número uno dejan que su juego hable por ellos.\r\nDejate llevar por tus sentidos y aceptá el reto con los Copa Sense. Estos botines ADIDAS se confeccionaron en cuero suave que te da un control absoluto de la pelota al primer toque.\r\nEl exterior sin costuras se amolda a tu pie para lograr un ajuste cómodo. La suela brinda un máximo agarre sobre canchas de terreno firme.', 'imagen1660774381995.jpg', 3, 1, 1, 6, '2022-08-18 01:13:01', '2022-08-18 01:13:01'),
(20, 'Botines Adidas Speed Low', 25999, 'Cuando tus instintos afinados se unen a una velocidad abrumadora, la cancha se convierte en tu patio de recreo.\r\nEncontrá tu ritmo en el fútbol con los ADIDAS X.\r\nEstos botines con exterior Speedskin suave y minimalista te mantienen cómodo y liviano. En el interior, incorporan una estructura elástica tipo media que sujeta el pie. Debajo, la suela para terreno firme te asegura que siempre te adelantarás al resto. Suela FIRM GROUND, adecuada para superficies de césped corto que esté firme, seco y natural que a veces pueden ser húmedas o resbaladizas. Diseñado para aceleración, comodidad y tracción mejorada.', 'imagen1660774464539.jpg', 3, 1, 1, 5, '2022-08-18 01:14:24', '2022-08-18 01:14:24'),
(21, 'Botines Nike Mercurial', 26399, 'Diseñado para el pasto sintético, el NIKE Mercurial Superfly 8 Academy TF es un diseño único que reúne los componentes imprescindibles de velocidad para proporcionar un toque y una tracción óptimos.\r\nEl patrón gráfico texturizado en la parte superior moldeada te brinda un mejor control del balón cuando haces regates a altas velocidades. El cuello Dynamic Fit envuelve tu tobillo con una tela elástica y suave que proporciona una sensación de seguridad.', 'imagen1660774562385.jpg', 3, 1, 2, 6, '2022-08-18 01:16:02', '2022-08-18 01:16:02'),
(22, 'Botines Nike Phantom', 11929, 'Los botines NIKE Phantom Venom Club FG Kids se han diseñado para patear con total precisión y potencia para ganar todos los partidos.\r\nLa parte superior de suave material sintético proporciona un gran control del balón, y la suela para terreno firme ofrece la tracción necesaria para darlo todo en cualquier momento.\r\nPosee una microtextura por toda la superficie para un control del balón avanzado.\r\nSistema de cordones asimétrico para ampliar la zona de impacto.\r\nCuenta con una plantilla anatómica que envuelve y amortigua el pie.\r\nSuela FIRM GROUND, adecuada para superficies de césped corto que esté firme, seco y natural que a veces pueden ser húmedas o resbaladizas.\r\nDiseñado para aceleración, comodidad y tracción mejorada.', 'imagen1660774723017.jpg', 3, 1, 2, 6, '2022-08-18 01:18:43', '2022-08-18 01:18:43'),
(23, 'Botines Topper Stingray', 12399, 'Velocidad transónica dentro del campo de juego.\r\nHechos para jugadores que buscan romper defensas a base de potencia y aceleración. Capellada en cuero sintético liviano para un mayor confort y liviandad. Suela Liviana y flexible para canchas de césped natural.', 'imagen1660775014898.jpg', 3, 1, 10, 6, '2022-08-18 01:23:34', '2022-08-18 01:23:34'),
(24, 'Botines Topper Stingray', 16099, 'Llevá tus Stingray Mach 5 a todos tus partidos de campo, están pensados para acompañarte con comodidad.\r\nDiseñados para canchas de césped natural.', 'imagen1660775352006.jpg', 3, 1, 10, 6, '2022-08-18 01:29:12', '2022-08-18 01:29:12'),
(25, 'Botines Puma Borussia', 19990, 'Los Botines Puma Borussia Classic FG son los indicados para aquellos que quieren demostrar todo su talento y precisión adentro de la cancha. Suela FIRM GROUND, adecuada para superficies de césped corto que esté firme, seco y natural que a veces pueden ser húmedas o resbaladizas. Diseñado para aceleración, comodidad y tracción mejorada.', 'imagen1660775435360.jpg', 3, 1, 3, 6, '2022-08-18 01:30:35', '2022-08-18 01:30:35'),
(26, 'Botines Puma Future', 42999, 'Impresionantemente ágil y más cómodo que nunca, el FUTURE Z es un botín progresivo diseñado para jugadores que dominan el campo con visión y habilidad.\r\nCon la segunda generación de nuestra tecnología FUZIONFIT+, cada calzado se adapta a la forma de tu pie, asegurando un ajuste óptimo y el equilibrio perfecto entre soporte y flexibilidad, con o sin cordones.\r\nAdvanced Creator Zones ubicadas en la parte delantera del pie brindan un control de la pelota y un toque excepcionales a altas velocidades, mientras que una suela exterior liviana y sumamente reactiva con tacos para terreno firme y artificial brinda una tracción superior. \r\nUna hazaña de innovación futbolística, con la llamativa marca PUMA, combinaciones de colores geniales y una silueta elegante, este elegante par está listo para la acción intensa. FG/AG (Firm Ground/Artificial Ground): para superficies firmes/artificiales', 'imagen1660775499805.jpg', 3, 1, 3, 6, '2022-08-18 01:31:39', '2022-08-18 01:31:39'),
(27, 'Botines Puma Ultra', 42999, 'Lleva tu juego al siguiente nivel con estos formidables tacos. Construido para una velocidad y un control insuperables, el ULTRA 1.4 FG/AG es el más ligero del mercado. La parte superior ULTRACUT actualizada proporciona soporte de varias capas, mientras que la tecnología de hilo de carbono MATRYXEVO combinada con una microfibra SPEEDCAGE actualizada con ventanas recortadas garantiza un soporte ultraligero durante el movimiento de avance rápido. La suela exterior ultrarrápida Peba SpeedUnit está inspirada en la tecnología de puntas para correr para una aceleración explosiva, mientras que la piel con textura única de GripControl Pro brinda mayor control y confianza de la pelota. Con estas botas, serás una fuerza a tener en cuenta tanto en superficies naturales duras como en césped artificial.', 'imagen1660775563706.jpg', 3, 1, 3, 6, '2022-08-18 01:32:43', '2022-08-18 01:32:43'),
(28, 'Camiseta Adidas Argentina', 18885, '100% Argentina. Diseñada para los hinchas, ofrece comodidad en todo momento gracias a su tejido suave con tecnología de absorción AEROREADY. Los detalles en la parte interior trasera del cuello están inspirados en la bandera nacional que los jugadores representan con tanto orgullo. Un producto hecho parcialmente con contenido reciclado generado a partir de desechos de producción, tales como recortes de tela, y desechos domésticos postconsumo, para evitar un mayor impacto ambiental al producir contenido virgen. Logo ADIDAS bordado. Escudo AFA aplicado.', 'imagen1660776031956.jpg', 3, 1, 1, 1, '2022-08-18 01:40:31', '2022-08-18 01:40:31'),
(29, 'Camiseta Adidas River', 16999, 'Con la banda roja ahora mas ancha que nunca.\r\nEl nuevo manto sagrado está inspirado en los valores, la esencia, la identidad y la grandeza del club mientras rinde homenaje a la cultura y a la historia riverplatense.\r\nEl diseño, confeccionado con tecnología Aeroready está creado para un uso comfortable en todos lados.\r\nEste producto está hecho con Primegreen, una serie de materiales reciclados de alto desempeño. Escudo CARP aplicado, logo ADIDAS bordado.', 'imagen1660776188949.jpg', 3, 1, 1, 1, '2022-08-18 01:43:08', '2022-08-18 01:43:08'),
(30, 'Camiseta Adidas Boca', 16999, 'Una camiseta que le rinde homenaje a una temporada histórica. 1981, Una leyenda del fútbol hace su debut en boca juniors con un uniforme que se convertiría en uno de los más preciados de la historia del club. Cuarenta años después vuelve el clásico escudo de cuatro estrellas. Diseñada para hinchas, esta camiseta brinda comodidad en todo momento gracias a su tecnología Aeroready.\r\nEste producto está hecho con Primegreen, una serie de materiales reciclados de alto desempeño. Logo ADIDAS y CABJ estampado.', 'imagen1660776249796.jpg', 3, 1, 1, 1, '2022-08-18 01:44:09', '2022-08-18 01:44:09'),
(31, 'Camiseta Puma Indep.', 7399, 'La nueva camiseta Puma C.A Independiente fue diseñada inspirada en eSports, ya que es el único club en Agentina en desarrollar una indumentaria especial para esta disciplina.\r\nPara acompañarte en todo momento, llevar los colores de tu club a todas partes y en todas las competencias!\r\nLogo PUMA y escudo C.A.I estampados.', 'imagen1660776305607.jpg', 1, 1, 1, 1, '2022-08-18 01:45:05', '2022-08-24 16:01:33'),
(32, 'Camiseta Puma M. City', 12649, 'Llévate a casa la victoria con la camiseta oficial del Manchester City. Con el mismo estilo que usan tus jugadores favoritos en los partidos en casa, con tejido dryCELL de alto rendimiento para un ajuste fresco, esta camiseta te hará jugar lo mejor posible mientras representás a los mejores.\r\nEl corte Regular Fit logra un equilibrio cómodo entre holgado y ajustado. Logo PUMA bordado. Escudo Manchester City aplicado.', 'imagen1660776626421.jpg', 1, 1, 1, 1, '2022-08-18 01:50:26', '2022-08-18 01:50:51'),
(33, 'Camiseta Adidas Bayer M.', 16999, 'Rojo, blanco y apuntando a la victoria. Los colores clásicos del FC Bayern convergen en el frente de esta disruptiva camiseta de local de ADIDAS. Creada para mantener a los hinchas cómodos, combina paneles de malla y tecnología de absorción AEROREADY.\r\nViene con un bordado del escudo del club y el lema \"Mia san mia\" para mostrar tu orgullo. Hecho con materiales 100% reciclados, este producto representa solo una de nuestras soluciones para acabar con los residuos plásticos. Logo ADIDAS y escudo BAYER MUNCHEN aplicados.', 'imagen1660776725103.jpg', 3, 1, 1, 1, '2022-08-18 01:52:05', '2022-08-18 01:52:05'),
(34, 'Camiseta Adidas Ajax', 16999, 'Una equipación clásica para un club con clase.\r\nManteniéndose fiel a la rica herencia del Ajax Amsterdam, esta camiseta de local de ADIDAS conserva un estilo atemporal. Una segunda mirada revela detalles a rayas y tiras de oro que celebran una historia de éxito brillante.\r\nCreada para jugadores y seguidores, esta camiseta te mantendrá cómodo con inserciones de malla y AEROREADY que absorbe la humedad. Fabricada con materiales 100 % reciclados, este producto representa solo una de nuestras soluciones para ayudar a acabar con los residuos plásticos. Logo ADIDAS bordado. Escudo AJAX aplicado.', 'imagen1660776779646.jpg', 3, 1, 1, 1, '2022-08-18 01:52:59', '2022-08-18 01:52:59'),
(35, 'Camiseta Puma Milan', 13749, 'Los nuevos rascacielos capturan perfectamente el nuevo estado de ánimo en Milán: feroz, futurista y abierto a la influencia internacional.  Para mantenerse al día con el progreso palpable, las franjas icónicas del AC Milan también están cambiando. \r\nAplicada anteriormente en anchos estándar, la camiseta local actualizada agrega líneas de contraste de color gruesas y delgadas simultáneamente.  Con una construcción de mangas integradas para libertad de movimiento y tecnología de absorción de humedad dryCELL para un mejor control de la temperatura, esta réplica de la camiseta te hará pavonearte con el estilo listo para el estadio. Logo PUMA bordado. Escudo Milan aplicado.', 'imagen1660776841722.jpg', 3, 1, 3, 1, '2022-08-18 01:54:01', '2022-08-18 01:54:01'),
(36, 'Camiseta Nike Barcelona', 12219, 'Esta es la camiseta oficial del club Barcelona de hombre para la temporada 2018/2019. El tejido Dri Fit absorbe el sudor, reduciendo el roce y ayudando a mantenerte seco y cómodo. Logo Nike bordado. Escudo FCB aplicado.', 'imagen1660776890583.jpg', 3, 1, 2, 1, '2022-08-18 01:54:50', '2022-08-18 01:54:50'),
(37, 'Camiseta Adidas Madrid', 14799, 'El tercer uniforme del Real Madrid les confiere a los reyes de Europa un nivel superior de estilo. Esta camiseta de fútbol en color verde menta refleja la realeza a la que este club legendario sin duda pertenece.\r\nDiseñada para envolver a los hinchas en comodidad, esta versión presenta un corte ligeramente más holgado que el de la camiseta que visten los jugadores en el terreno de juego. Su tejido Climalite suave y absorbente remueve el sudor de la piel manteniéndola fresca y seca.Presenta el logo ADIDAS y el escudo Real Madrid estampados.', 'imagen1660776935925.jpg', 1, 1, 1, 1, '2022-08-18 01:55:35', '2022-08-24 16:01:54'),
(38, 'Camiseta Adidas Juve.', 16999, 'Algunos clubes se aferran a la historia, otros escriben sin temor el futuro. Esta camiseta de fútbol transforma las clásicas rayas de cebra en un diseño en blanco y negro que reintroduce el color rosa al uniforme titular de Juventus por primera vez en más de un siglo. Diseñada para los hinchas, presenta un corte ligeramente más holgado que el de la camiseta que visten los jugadores en el terreno de juego. La camiseta para hinchas es una versión urbana de la que usan los jugadores en la cancha, ofreciendo más espacio en los hombros y el torso. Mantené tu cuerpo seco La tecnología Climalite quevabsorbe el sudor para mantener tu cuerpo seco en todo momento Logo ADIDAS y escudo JUVENTUS bordados.', 'imagen1660777001759.jpg', 1, 1, 1, 1, '2022-08-18 01:56:41', '2022-08-24 16:09:53'),
(42, 'Camiseta Nike PSG', 22000, 'Camiseta segunda equipación Nike del París Saint-Germain 2021 2022 - blanca y rosa pastel.', 'imagen1662151561565.png', 1, 1, 1, 1, '2022-09-02 20:46:01', '2022-09-10 06:26:53');

DROP TABLE IF EXISTS producto_talle;
-- Creacion de tabla de producto_talle
CREATE TABLE IF NOT EXISTS producto_talle (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  producto_id INT UNSIGNED NOT NULL,
  talle_id INT UNSIGNED NOT NULL,
  created_at TIMESTAMP DEFAULT current_timestamp(),
  updated_at TIMESTAMP
);

-- Ingreso de datos a producto_talle
INSERT INTO producto_talle (`id`, `producto_id`, `talle_id`, `created_at`, `updated_at`) VALUES
(1, 4, 1, '2022-06-20 18:08:11', '2022-06-20 18:08:11'),
(2, 5, 1, '2022-06-20 18:09:05', '2022-06-20 18:09:05');

DROP TABLE IF EXISTS talle;
-- Creacion de tabla de talle
CREATE TABLE IF NOT EXISTS talle (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  talle varchar(150) NOT NULL,
  created_at TIMESTAMP DEFAULT current_timestamp(),
  updated_at TIMESTAMP
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

DROP TABLE IF EXISTS usuario;
-- Creacion de tabla de usuario
CREATE TABLE IF NOT EXISTS usuario (
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
  updated_at TIMESTAMP
);

INSERT INTO usuario (`id`, `nombre`, `apellido`, `email`, `contraseña`, `avatar`, `perfil_id`, `created_at`, `updated_at`) VALUES
(3, 'Administrador', 'Admin', 'administrador@gmail.com', '$2a$10$w3r5VkuCFLxgMpC66ZgX2uKl41DtDRiZZIh5wp.LlBAvmtuSUtAFe', 'avatar1655499961541.png', 1, '2022-06-17 21:06:01', '2022-06-17 21:07:09'),
(4, 'Lionel', 'Messi', 'messi@gmail.com', '$2a$10$0xcqFmhY3A/z/WD/oo1m7.8tch94P5i258l7RLtnakt33aSCSl4OG', 'avatar1655500303388.gif', 2, '2022-06-17 21:11:43', '2022-06-20 18:47:36'),
(5, 'Cristiano', 'Ronaldo', 'ronaldo@gmail.com', '$2a$10$gZghUHemiJKuqECqWAfB9Ot1SLropi30RN/iaJzMw7fsai7i6As/K', 'avatar1655750333885.jpg', 2, '2022-06-20 18:38:53', '2022-06-20 18:38:53'),
(6, 'Elias', 'Zurita', 'eliass.zurita@gmail.com', '$2a$10$IBBSZqBgQqZsT9zWV7/O7.pYgfcBazW/O9Ztvqhfe2L8y9tXxkDKK', 'avatar1655750349595.jpg', 2, '2022-06-20 18:39:09', '2022-06-20 18:39:09');

DROP TABLE IF EXISTS ordenes;
-- Creacion de tabla de ordenes
CREATE TABLE IF NOT EXISTS ordenes (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  fecha DATETIME NOT NULL,
  precio_total DECIMAL NOT NULL,
  usuario_id INT UNSIGNED,
  created_at TIMESTAMP DEFAULT current_timestamp(),
  updated_at TIMESTAMP
);

DROP TABLE IF EXISTS items;
-- Creacion de tabla de items
CREATE TABLE IF NOT EXISTS items (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  cantidad INT UNSIGNED NOT NULL,
  subtotal DECIMAL NOT NULL,
  producto_id INT UNSIGNED,
  usuario_id INT UNSIGNED,
  ordenes_id INT UNSIGNED,
  created_at TIMESTAMP DEFAULT current_timestamp(),
  updated_at TIMESTAMP
);

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