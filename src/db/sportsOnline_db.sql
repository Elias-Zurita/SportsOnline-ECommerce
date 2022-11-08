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
(42, 'Camiseta Nike PSG', 22000, 'Camiseta segunda equipación Nike del París Saint-Germain 2021 2022 - blanca y rosa pastel.', 'imagen1662151561565.png', 1, 1, 1, 1, '2022-09-02 20:46:01', '2022-09-10 06:26:53'),
(43, 'Zapatillas Babolat Propulse', 49499, 'Debes llegar a la pelota lo antes posible para atacar o defender, incluso en un ángulo difícil... Porque la comodidad, la estabilidad y la sensación de seguridad en todo momento son fundamentales en tu elección, hemos desarrollado la Propulse Blast. Posee varios refuerzos que le confieren una mayor durabilidad. Con sus tiras laterales dobles integradas, te ofrece una estabilidad sin igual. Su malla tejida en el antepié te ofrece la mayor comodidad. Atrévete a dar los golpes más osados.', 'imagen1664821454760.jpg', 2, 2, 7, 3, '2022-10-03 18:24:14', '2022-10-03 18:24:14'),
(44, 'Zapatilla Babolat Premura', 64899, 'Un soporte excelente, gracias a su empeine tejido en Matryx*, una flexibilidad de 360 ° en el antepié y una suela Michelin 100 % adaptada a los movimientos del tenis, te permiten sentir y anticipar cada momento del partido.', 'imagen1664821640900.jpg', 1, 2, 7, 3, '2022-10-03 18:27:20', '2022-10-03 18:27:20'),
(45, 'Zapatilla Wilson Kaos', 50499, 'Las zapatillas Wilson Kaos Stroke serán perfectas para la práctica del tenis; muy ligeras, no son menos resistentes gracias a su construcción reforzada así como a la tecnología Duralast que mejora la durabilidad de la zapatilla. Y como es importante sentirse cómodo en las zaptillas para dar lo mejor de si mismo, Wilson no ha olviadao el confort gracias a su amortiguación R-DST y a la plantilla Ortholite. Un modelo técnico y duradero a un precio accesible.', 'imagen1664821812284.jpg', 3, 2, 8, 3, '2022-10-03 18:30:12', '2022-10-03 18:30:12'),
(46, 'Zapatillas Prince T22', 34689, 'La T22 es la clásica zapatilla de tenis de confort y estabilidad. Ha sido la elección de muchos tenistas durante 10 años y continúa siendo una de las zapatillas de tenis más confiables y más vendidas del mercado.\r\nLa parte superior sintética y transpirable mejora la comodidad y la flexibilidad. Los paneles de malla permiten la transpirabilidad. La entresuela de eva con inserción en el talón Shockeraser absorbe los impactos, mientras que la inserción en el antepié Softspring Pu dispersa los impactos para mejorar la comodidad. el compuesto de suela duradero PRC 1000 en un dibujo de espiga proporciona una tracción duradera en todas las superficies. Incorpora la tecnología OrthoLite® en las plantillas, lo que mantiene los pies secos y frescos.\r\nCuenta con cordones adicionales.', 'imagen1664821892953.jpg', 3, 2, 12, 3, '2022-10-03 18:31:32', '2022-10-03 18:31:32'),
(47, 'Zapatilla Head Sprint', 44200, 'Head incluye estabilidad lateral adicional en todas nuestras zapatillas de alto rendimiento para ayudar a evitar volcarse durante deslizamientos extremos.\r\nHibrasión: Compuesto de caucho Non Marking que proporciona un buen agarre y ofrece una gran durabilidad en todas las superficies. Defensa a la deriva:Para tener un zapato completamente duradero, la parte superior de una zapatilla de tenis también debe ser duradera, especialmente alrededor de la punta y el área medial del antepié. HEAD utiliza una goma resistente a la abrasión o una capa de TPU en la tecnología Drift Defense para proteger esta área durante los arrastres agresivos de los dedos.', 'imagen1664822081997.jpg', 2, 2, 13, 3, '2022-10-03 18:34:42', '2022-10-03 18:34:42'),
(49, 'Zapatillas Adidas Gamecourt', 19999, 'Mantené la confianza en cada set y partido.\r\nEl exterior de malla ligera y el talón acolchado hacen de estas zapatillas ADIDAS Gamecourt 2.0 las compañeras perfectas para jugar tenis.\r\nLa mediasuela completa de EVA te mantiene cómoda y conectada a la cancha.\r\nLa suela Adiwear garantiza una tracción insuperable en canchas de tenis duras sin sacrificar su resistencia al desgaste.\r\nEl exterior incorpora al menos un 50 % de contenido reciclado.\r\nEste producto representa solo una de nuestras soluciones para acabar con los residuos plásticos.', 'imagen1664822447189.jpg', 3, 2, 1, 3, '2022-10-03 18:40:47', '2022-10-03 18:40:47'),
(50, 'Raqueta Babolat Aero', 84999, 'Combatividad, resistencia, fortaleza mental... ¡eres como Rafa! Es hora de desafiar a tus oponentes más duros con esta Pure Aero, que con su nombre y colores acompañará tu dominio del juego a través de tu liftado y tu potencia.', 'imagen1664822800398.jpg', 3, 2, 7, 4, '2022-10-03 18:46:40', '2022-10-03 18:46:40'),
(51, 'Raqueta Babolat Pure', 70999, 'Algunos la llaman la definición de potencia. Tú, una ventaja injusta. Nosotros la llamamos la Pure Drive.\r\nBabolat lanzó la Pure Drive en 1994 y rápidamente se estableció como la referencia de potencia. Hemos ido innovando y mejorando con cada uno de los siguiente modelos para satisfacer las exigencias del juego. Por eso no nos sorprende que la Pure Drive sea una de las raquetas más populares y versátiles del mundo. La 10ª generación de la Pure Drive lleva tu estilo de juego al siguiente nivel con una potencia explosiva para terminar puntos y una mayor sensación.\r\nSi estás buscando el equilibrio perfecto entre potencia y sensación en cada golpe, entonces te encantará la Pure Drive.', 'imagen1664822948669.jpg', 3, 2, 7, 4, '2022-10-03 18:49:08', '2022-10-03 18:49:08'),
(52, 'Raqueta Tenis Cyber', 22999, 'Gracias a su mayor tamaño de cabeza y de punto dulce, la raqueta de tenis preencordada CYBER ELITE ofrece más diversión a los principiantes.\r\nLa aleación metálica cristalina especialmente formulada con un tamaño de grano 1000 veces más pequeño que la de un metal típico, crea un material mucho más resistente.\r\nEl efecto Hall-Petch dice: granos más pequeños = material más fuerte.\r\nEl resultado es una raqueta más ligera, más fuerte y más potente.', 'imagen1664823057830.jpg', 3, 2, 13, 4, '2022-10-03 18:50:57', '2022-10-03 18:50:57'),
(53, 'Raqueta Wilson Federer', 55000, 'La Raqueta Wilson Federer 25 inspirada en el varias veces campeón Roger Federer, cuenta con un marco que ofrece una potencia liviana y estabilidad para los jugadores más chicos. Su Construcción ligera de aleación AirLite les da mayor durabilidad en el tiempo y mejor agarre. Ideal para niños entre 9 y 10 años.', 'imagen1664823192002.jpg', 3, 2, 8, 4, '2022-10-03 18:53:12', '2022-10-03 18:53:12'),
(54, 'Raqueta Head Spark', 27000, 'La raqueta de tenis SPARK TOUR es el modelo más potente de la serie preencordada SPARK.\r\nSu dinámico diseño te inspirará y te hará sentir que puedes hacer grandes cosas en la pista de tenis.\r\nLa aleación metálica cristalina especialmente formulada con un tamaño de grano 1000 veces más pequeño que la de un metal típico, crea un material mucho más resistente.', 'imagen1664823312357.jpg', 3, 2, 13, 4, '2022-10-03 18:55:12', '2022-10-03 18:55:12'),
(55, 'Raqueta Babolat Strike', 79999, 'Nada puede compararse con la sensación de pegarle a la bola exactamente en el punto preciso que querías. Siente el riguroso control de la Pure Strike cuando golpeas con fuerza y pleno de confianza, marca las condiciones del juego y mantén toda la presión de tu oponente.\r\n\r\n \r\n\r\n(Más, si ampliado): Con la 3ª generación de la Pure Strike, Babolat da un paso hacia adelante en el control del juego moderno. ¿Sueñas con esa sensación clásica? El riguroso control de la Pure Strike ha sido diseñado para satisfacer tus exigencias como jugador agresivo que le pega duro a la bola. Control dinámico y pura sensación combinados para ofrecerte una capacidad de respuesta sin precedentes para dominar la pista con cada golpe.\r\n\r\n \r\n\r\nLa Pure Strike Team aporta control a tu juego con una raqueta más ligera y manejable.', 'imagen1664823387796.jpg', 3, 2, 7, 4, '2022-10-03 18:56:27', '2022-10-03 18:56:27'),
(56, 'Short Adidas Club', 12999, 'El clásico estilo del country club se actualiza.\r\nLuciendo las 3 TIras horizontales en una pierna, estos shorts de tenis ADIDAS Club están diseñados para ofrecer comodidad.\r\nEl tejido suave y ventilado y el tejido absorbente AEROREADY te mantienen seco en los momentos más intensos en la cancha.\r\nEl refuerzo de malla en la entrepierna favorece la ventilación y te permite moverte con libertad en cada paso.\r\nEste producto está hecho con Primegreen, una serie de materiales reciclados de alto desempeño\r\nCintura elastizada con cordón de ajuste interno.\r\nBolsillos laterales.\r\nLogo ADIDAS estampado.', 'imagen1664823753747.jpg', 1, 2, 1, 2, '2022-10-03 19:02:33', '2022-10-03 19:02:33'),
(57, 'Remera Fila Tenis', 6850, 'Representá a Argentina con la nueva remera FILA de la Asociacion Argentina De Tenis temporada 2022.\r\nProtección a los rayos del sol FP50+.\r\nLogo FILA estampado.', 'imagen1664823811208.jpg', 1, 2, 6, 1, '2022-10-03 19:03:31', '2022-10-03 19:03:31'),
(58, 'Remera Adidas Freelift', 17999, 'Celebrá el regreso de un ícono.\r\nInspirada en la poderosa suela de las zapatillas Barricade, un diseño sutil de espinapez envuelve los hombros de esta remera adidas de corte ajustado.\r\nEl tejido suave y absorbente AEROREADY se combinan para mantenerte seco y cómodo, y el corte específico para el movimiento te da espacio en los brazos para dominar la cancha.\r\nEsta llamativa remera se puede ver en el torneo de tenis más grande de Norteamérica.\r\nCuenta con Primeblue, es un tejido de alto rendimiento creado con Parley Ocean Plastic a partir de residuos plásticos recogidos en islas, playas y zonas costeras evitando que contaminen nuestros océanos.\r\nLogo ADIDAS estampado.', 'imagen1664823997182.jpg', 2, 2, 1, 1, '2022-10-03 19:06:37', '2022-10-03 19:06:37'),
(59, 'Musculosa Adidas Club', 10999, 'El diseño de alto rendimiento y el estilo inspirado en los country clubs se combinan para crear la colección ADIDAS Club.\r\nEsta musculosa para tenis combina un corte ajustado con paneles de malla y tejido con tecnología de absorción AEROREADY para garantizar que nada te distraiga en la cancha.\r\nSu diseño de espalda cruzada te brinda espacio suficiente en los hombros para que puedas llegar a cada pelota.\r\nLogo ADIDAS estampado.', 'imagen1664824065269.jpg', 2, 2, 1, 1, '2022-10-03 19:07:45', '2022-10-03 19:07:45'),
(60, 'Short Nike Dry', 11000, 'El material especial Dri-FIT expulsa el sudor fuera para garantizar confort. Cintura elástica con cordón para una figura única. Bolsillos laterales con malla para ventilar las cosas que guardes. Dobladillos abiertos para una máxima libertad de movimiento.', 'imagen1664824240727.jpg', 1, 2, 2, 2, '2022-10-03 19:10:40', '2022-10-03 19:10:40'),
(61, 'Pollera Adidas Tenis', 10299, 'No pierdas la concentración en los momentos más intensos del partido.\r\nEsta Pollera de tenis se ha confeccionado en un tejido transpirable que expulsa el sudor de la piel manteniéndola seca punto tras punto.\r\nCuenta con una cintura ancha y unas mallas integradas que te ofrecen mayor comodidad y cobertura.\r\nEl tejido Aeroready favorece el secado rápido, ya que al ser un tejido ultraligero, absorbe el sudor para alejarlo de la piel y hacer que se evapore rápidamente.\r\nCintura ancha elastizada.\r\nCalza interna.\r\nBolsillos laterales.\r\nLogo ADIDAS estampado.', 'imagen1664824296355.jpg', 2, 2, 1, 17, '2022-10-03 19:11:36', '2022-10-03 19:11:36'),
(62, 'Paleta Vairo Eva', 28500, 'La línea EVA se adapta las necesidades de todos los jugadores. Nace para quienes buscan un juego preciso con prestaciones de compresión-expansión, generando potencia y control superior al resto de los materiales del mercado.\r\n\r\nEs una pala que se destaca por tener mayor rebote, con lo cual despide más y resulta tener mayor flexibilidad. Su forma redonda te dará un control total de tus golpes, sin dejar de lado los golpes potentes.\r\n\r\nConstruida con Epoxy Fiber Glass, la línea EVA destaca por su gran absorción de las vibraciones, por lo que es una pala ideal para aquellos jugadores que sufren dolor al golpear la bola.', 'imagen1664824662685.jpg', 3, 3, 11, 12, '2022-10-03 19:17:42', '2022-10-03 19:17:42'),
(63, 'Paleta Vairo Space', 28500, 'La línea EVA se adapta las necesidades de todos los jugadores. Nace para quienes buscan un juego preciso con prestaciones de compresión-expansión, generando potencia y control superior al resto de los materiales del mercado.\r\n\r\nEs una pala que se destaca por tener mayor rebote, con lo cual despide más y resulta tener mayor flexibilidad. Su forma redonda te dará un control total de tus golpes, sin dejar de lado los golpes potentes.\r\n\r\nConstruida con Epoxy Fiber Glass, la línea EVA destaca por su gran absorción de las vibraciones, por lo que es una pala ideal para aquellos jugadores que sufren dolor al golpear la bola.', 'imagen1664824706483.jpg', 3, 3, 11, 12, '2022-10-03 19:18:26', '2022-10-03 19:18:26'),
(64, 'Paleta Head Delta', 104000, 'Controla tu poder explosivo con la RAQUETA DE PADEL DELTA PRO, que está diseñada para jugadores avanzados y tiene una nueva construcción Auxetic para una sensación sensacional. El poder es siempre más efectivo cuando puedes controlarlo y dirigirlo. Con cada golpe que juegues con la RAQUETA DE PADEL DELTA PRO, sentirás el poder característico de la serie DELTA. Al mismo tiempo, el carbono en la superficie de impacto aumenta su precisión y tacto. La raqueta de gran tamaño con forma de diamante que está hecha para jugadores avanzados tiene una nueva construcción Auxetic para una sensación sensacional en cada rally.', 'imagen1664916977771.jpg', 3, 3, 13, 12, '2022-10-04 20:56:17', '2022-10-04 21:02:42'),
(65, 'Paleta Vairo Carbon', 38800, 'La Carbon 9.1 es una pala de las más fiables a la hora del juego. Con su cara 100% de carbono y forma redonda, podrás asegurarte remates perfectos, gracias a su amplio punto dulce. Por otro lado, gracias a su núcleo de FOAM, tampoco deberás preocuparte por conseguir potencia en los golpes. Famosa por su equilibrio y su gran precisión, la Carbon 9.1 se presenta como una pala de polivalencia que te permitirá tener una buena salida de bola desde cualquier parte de la pista, gracias al gran control que se obtiene al manejarla.', 'imagen1664824805445.jpg', 3, 3, 11, 12, '2022-10-03 19:20:05', '2022-10-03 19:20:05'),
(66, 'Paleta Vairo White', 38800, 'La Carbon 9.1 es una pala de las más fiables a la hora del juego. Con su cara 100% de carbono y forma redonda, podrás asegurarte remates perfectos, gracias a su amplio punto dulce. Por otro lado, gracias a su núcleo de FOAM, tampoco deberás preocuparte por conseguir potencia en los golpes. Famosa por su equilibrio y su gran precisión, la Carbon 9.1 se presenta como una pala de polivalencia que te permitirá tener una buena salida de bola desde cualquier parte de la pista, gracias al gran control que se obtiene al manejarla.', 'imagen1664824844895.jpg', 3, 3, 11, 12, '2022-10-03 19:20:44', '2022-10-03 19:20:44'),
(67, 'Paleta Vairo Genetic', 77500, 'La línea Genetic combina a la perfección control y potencia.\r\n\r\nCon un gran punto dulce, una flexibilidad y tacto característicos de la línea Genetic sumado a un nuevo y audaz diseño en su cara, la Genetic Power está hecha para el jugador de nivel avanzado que busca más sensación en sus golpes.\r\n\r\nEste nuevo modelo cuenta con carbono 3K, ofreciendo una mayor resistencia en la cara y mayor potencia en el golpe. Tiene un marco construído 100% con carbono que nos otorga una increible resistencia estructural y la flexibilidad necesaria para un manejo perfecto de la pala.\r\n\r\nEl nuevo Black EVA Soft importado reduce al mínimo las vibraciones, dando una sensación máxima de confort.\r\n\r\nLa nueva Genetic Power ofrece los estándares más altos de calidad y un juego a la altura de los que los torneos más importantes del mundo exigen.', 'imagen1664824935599.jpg', 3, 3, 11, 12, '2022-10-03 19:22:15', '2022-10-03 19:22:15'),
(68, 'Zapatillas Nike Quest', 24999, 'La búsqueda de la velocidad continúa con la NIKE Quest 4 Premium.\r\nTomá las calles con alturas de espuma más altas y comodidad acolchada que se combinan con una parte superior ligera para ofrecer un soporte seguro.\r\nLa parte superior ligera y minimalista cuenta con una malla transpirable en el antepié.\r\nLa ventana translúcida exhibe la tecnología Flywire en el mediopié.\r\nLos filamentos Flywire se integran con los cordones para proporcionar más soporte en el mediopié cuando los ajustás.\r\nLa entresuela de espuma texturizada aumenta la durabilidad donde más la necesitás y brinda una imagen de velocidad.\r\nLa altura elevada suma una amortiguación más suave en cada pisada.\r\nLa suela de goma ofrece más tracción.\r\nEl riel de pisada en la suela lateral actúa como un dispositivo de amortiguación, a la vez que la almohadilla contra golpes mejora la durabilidad en el área de alto desgaste.\r\nLa espuma suave en el talón proporciona comodidad y soporte para tus carreras.\r\nLa lengüeta forrada en malla se conecta con el forro interno de la parte superior para brindar una sensación de seguridad.\r\nDiseñada para corredoras con pisada neutra.', 'imagen1664825351976.jpg', 2, 4, 2, 3, '2022-10-03 19:29:11', '2022-10-03 19:29:11'),
(69, 'Zapatillas Adidas Galaxy', 16899, 'Hacé que cada kilómetro cuente.\r\nEstas zapatillas de running ADIDAS llenan cada paso con comodidad, sin importar la distancia.\r\nTus pies prácticamente se hunden en la amortiguación suave.\r\nTe harán pensar que podés correr para siempre, o por lo menos por unos kilómetros más.\r\nVos tenés el control.\r\nLa mediasuela CLOUDFOAM, confeccionada en EVA, fue modificada para obtener más propiedades de amortiguación y confort pisada tras pisada.\r\nLa comodidad y el confort pueden ser el complemento perfecto en los entrenamientos para los atletas que van iniciando y/o son ocasionales.\r\nDiseñada para corredoras con pisada neutra.', 'imagen1664825431202.jpg', 2, 4, 1, 3, '2022-10-03 19:30:31', '2022-10-03 19:30:31'),
(70, 'Zapatillas Topper Wind', 13999, 'Las TOPPER WIND 3 son un modelo que combina look tradicional con lineas de diseño, permite lucirte y tener un mayor confort a la hora de correr.\r\nDiseñado para corredores con pisada neutra.', 'imagen1664825523157.jpg', 1, 4, 10, 3, '2022-10-03 19:32:03', '2022-10-03 19:32:03'),
(71, 'Zapatillas Adidas Runfalcon', 18999, 'Ponete estas zapatillas ADIDAS de running para correr en el parque y luego tomar un café con amigos con total comodidad.\r\nSu exterior de malla ofrece transpirabilidad que mantiene tus pies frescos de la mañana a la noche.\r\nLa suela tipo cupsole de caucho brinda la estabilidad necesaria para enfrentarte a todo lo que te depare el día.', 'imagen1664825561862.jpg', 3, 4, 1, 3, '2022-10-03 19:32:41', '2022-10-03 19:32:41'),
(72, 'Zapatillas Puma Comet', 14999, 'Preparate para despegar con la sensación ultra acolchada de las Comet 2 Alt Beta.\r\nLa espuma SOFTRIDE en el talón proporciona una amortiguación óptima.\r\nEl sistema de cordones dinámico crea un ajuste ceñido y seguro para que estés cubierto sin importar a dónde te lleve el día.\r\nDiseñada para corredores con pisada neutra.', 'imagen1664825598815.jpg', 2, 4, 3, 3, '2022-10-03 19:33:18', '2022-10-03 19:33:18'),
(73, 'Zapatillas Adidas Response', 23999, 'Amortiguación y respuesta inmediata en cada salida a correr.\r\nEstas zapatillas ADIDAS envuelven tus pies con la comodidad y sujeción necesaria para dominar en la pista y en los senderos.\r\nEl exterior de malla trae un cuello acolchado para un ajuste ceñido y una mayor sensación de soporte.\r\nEl talón moldeado Fitcounter te permite moverte de manera natural.\r\nLa mediasuela Bounce brinda amortiguación y flexibilidad para una zancada natural y muy receptiva.\r\nHecho a base de materiales reciclados, el exterior incorpora al menos un 50 % de contenido reciclado.\r\nEste producto representa solo una de nuestras soluciones para acabar con los residuos plásticos.', 'imagen1664825637857.jpg', 1, 4, 1, 3, '2022-10-03 19:33:57', '2022-10-03 19:33:57'),
(74, 'Palo Nassau Gemini', 4000, 'Palo confeccionado a base de madera.\r\nPosee 7 capas laminadas y 5x5 fibra de vidrio ud\r\nEstera de fibra de vidrio en la cara interna de la cabeza.\r\nRevestimiento de fibra de vidrio en la base de la cabeza.\r\nTerminación con sticker de plástico.\r\nIMPORTANTE: Seleccionar la medida correspondiente en base a la altura del usuario.', 'imagen1664825797643.jpg', 3, 5, 9, 16, '2022-10-03 19:36:37', '2022-10-03 19:36:37'),
(75, 'Palo Nassau Attack', 4000, 'Palo confeccionado a base de madera.\r\nPosee 7 capas laminadas y envoltura de polyester.\r\nRevestimiento de fibra de vidrio en la base de la cabeza.\r\nTerminación con sticker de plástico.\r\nIMPORTANTE Seleccionar la medida correspondiente en base a la altura del usuario.', 'imagen1664825837705.jpg', 3, 5, 9, 16, '2022-10-03 19:37:17', '2022-10-03 19:37:17'),
(76, 'Palo Nassau Ultra', 3800, 'Palo confeccionado a base de madera.\r\nPosee 7 capas laminadas y manga completa de fibra de vidrio UD.\r\nEstera de fibra de vidrio en la cara interna de la cabeza.\r\nRevestimiento de fibra de vidrio en la base de la cabeza.\r\nTerminacion con sticker de plastico.\r\nIMPORTANTE Seleccionar la medida correspondiente en base a la altura del usuario.', 'imagen1664825868337.jpg', 3, 5, 9, 16, '2022-10-03 19:37:48', '2022-10-03 19:37:48'),
(77, 'Palo Nassau Black', 3900, 'Palo confeccionado a base de madera.\r\nPosee 7 capas laminadas y envoltura de polyester.\r\nRevestimiento de fibra de vidrio en la base de la cabeza.\r\nTerminación con sticker de plástico.\r\nIMPORTANTE Seleccionar la medida correspondiente en base a la altura del usuario', 'imagen1664825898462.jpg', 3, 5, 9, 16, '2022-10-03 19:38:18', '2022-10-03 19:38:18'),
(78, 'Palo Nassau Violet', 3800, 'Palo confeccionado a base de madera.\r\nPosee 7 capas laminadas y envoltura de polyester.\r\nRevestimiento de fibra de vidrio en la base de la cabeza\r\nTerminación con sticker de plástico.\r\nIMPORTANTE Seleccionar la medida correspondiente en base a la altura del usuario.', 'imagen1664825941477.jpg', 3, 5, 9, 16, '2022-10-03 19:39:01', '2022-10-03 19:39:01'),
(79, 'Pollera Adidas Hockey', 9009, 'Las Leonas son reconocidas por su tenacidad durante los partidos.\r\nDiseñada para hinchas del equipo argentino, esta pollera de hockey sobre césped ofrece la libertad de movimiento que necesitás para hacer todos tus pases y golpes con facilidad.\r\nEstá confeccionada en una tela tejida con una cómoda cintura elástica y luce el escudo de Las Leonas en el frente.', 'imagen1664825981430.jpg', 2, 5, 1, 17, '2022-10-03 19:39:41', '2022-10-03 19:39:41'),
(80, 'Buzo Nike Rosa', 16999, 'El buzo NIKE Dri-FIT Get Fit te brinda un poco de calidez para comenzar tu entrenamiento o mientras calentás.\r\nLa capa suave hecha de tejido de felpa francesa significa comodidad instantánea.\r\nLa tecnología Dri-FIT te ayuda a mantenerte abrigada, seca y cómoda.\r\nLa tela de felpa francesa con una sensación de rotura significa comodidad instantánea.\r\nCorte suelto.\r\nCintura y puños elastizados.\r\nLogo NIKE aplicado.\r\nSin friza.', 'imagen1664826334491.jpg', 2, 6, 2, 8, '2022-10-03 19:45:34', '2022-10-03 19:45:34'),
(81, 'Short Nike Drifit', 7999, 'Corré, subí y saltá con el short NIKE Dri-FIT Tempo.\r\nCon tela absorbente de sudor y malla en los laterales, estos shorts ligeros y ventilados están diseñados para la práctica o simplemente para pasar el rato.\r\nEl bolsillo secreto te permite guardar objetos pequeños imprescindibles mientras estás en movimiento.\r\nLa tecnología Dri-FIT ayuda a evaporar el sudor rápidamente para mantenerte seca y cómoda.\r\nEste short está hecho de tejido Woven con malla transpirable en los laterales para darte una sensación ligera y fresca.\r\nEl forro agrega cobertura adicional.\r\nLos bordes curvos siguen la forma de las piernas para que puedas escalar, saltar y correr con libertad.\r\nDri-fit\r\nCintura elastizada con cordón de ajuste y suspensor internos.\r\nLogo NIKE estampado.', 'imagen1664826378599.jpg', 2, 6, 2, 2, '2022-10-03 19:46:18', '2022-10-03 19:46:18'),
(82, 'Medias Nike Everyday', 3499, 'Las medias NIKE Everyday proporcionan comodidad de perfil bajo.\r\nEl diseño absorbente de sudor es transpirable en la parte superior para mantener los pies frescos y secos.\r\nLa tecnología Dri-FIT mantiene los pies secos y cómodos.\r\nTalle M: 24-27 Cm.', 'imagen1664826432771.jpg', 2, 6, 2, 11, '2022-10-03 19:47:12', '2022-10-03 19:47:12'),
(83, 'Medias Adidas Light', 3200, 'El refuerzo tejido en el arco aporta mayor sujeción y la costura anatómica en la puntera te permite moverte con absoluta comodidad.\r\nEl logotipo de ADIDAS en el empeine te garantiza un estilo deportivo auténtico.\r\nLogo ADIDAS bordado.\r\nTalle L: 43-45.', 'imagen1664826479807.jpg', 3, 6, 1, 11, '2022-10-03 19:47:59', '2022-10-03 19:47:59'),
(84, 'Pantalon Topper Slim', 9399, 'El pantalón Slim de TOPPER es ideal para esos arduos entrenamientos y esas reuniones con amigos.\r\nCintura elastizada con cordón de ajuste interno.\r\nBolsillos y botamangas laterales con cierre.\r\nPierna estrecha.\r\nLogo TOPPER estampado.', 'imagen1664826531018.jpg', 1, 6, 10, 9, '2022-10-03 19:48:51', '2022-10-03 19:48:51'),
(85, 'Campera Adidas Dry', 22999, 'Calentá y estira cómodamente con esta campera ADIDAS diseñada específicamente para tus entrenamientos de fuerza.\r\nLas mangas raglán te ofrecen una mayor libertad de movimiento.\r\nLa tecnología transpirable AEROREADY mantiene la piel fresca y seca cuando la temperatura aumenta.\r\nLos bolsillos con cierre te permiten guardar las llaves o la tarjeta del gimnasio de forma segura.\r\nEste producto se ha fabricado con un 100% de material reciclado.\r\nSu objetivo es plantear otra solución más que ayude a eliminar los residuos plásticos.\r\nCuello con capucha.\r\nCintura y puños elastizadas.\r\nBolsillos laterales con cierre.\r\nLogo ADIDAS estampado.', 'imagen1664826578015.jpg', 1, 6, 1, 7, '2022-10-03 19:49:38', '2022-10-03 19:49:38'),
(86, 'Pelota Wilson Voley', 9999, 'El ganador del premio de la crítica \"Best Inanimate\" por la película de la 20th Century Fox \"Náufrago\".\r\nEsta versión réplica del balón de vóleibol real utilizado en la película es el verdadero amigo de cualquier jugador de vóleibol.\r\nCosido a máquina.\r\nJugá lo que juegan los profesionales y sé dueño de la playa con el balón oficial del AVP.\r\nAprovada para juego oficial AVP.\r\nIMPORTANTE El balón debe ser inflado con la presión que indica en el panel cercano a la válvula. ', 'imagen1664828655166.jpg', 3, 7, 8, 5, '2022-10-03 20:24:15', '2022-10-03 20:24:15'),
(87, 'Pelota Nassau Attack', 9980, 'Este balón de voley es ideal para tus momentos de recreación.\r\nTamaño: N°5.\r\nIMPORTANTE: El balón debe ser inflado con la presión que indica en el panel cercano a la válvula.', 'imagen1664828789572.jpg', 3, 7, 9, 5, '2022-10-03 20:26:29', '2022-10-03 20:26:29'),
(88, 'Pelota Nassau Va5', 9980, 'Este balón de voley es ideal para tu momento de recreación entre amigos.\r\nTamaño: N°5.\r\nIMPORTANTE: El balón debe ser inflado con la presión que indica en el panel cercano a la válvula. ', 'imagen1664828852268.jpg', 3, 7, 9, 5, '2022-10-03 20:27:32', '2022-10-03 20:27:32'),
(89, 'Camiseta Umbro Voley', 15999, 'Con esta equipación pensamos en cada detalle, para lograr que cada prenda satisfaga las diferentes necesidades de nuestros atletas y sea una insignia que portemos con orgullo en cada lugar que visitemos.\r\nLogo Umbro y escudo ARGENTINA estampados.', 'imagen1664829021215.jpg', 1, 7, 5, 1, '2022-10-03 20:30:21', '2022-10-03 20:30:21'),
(90, 'Musculosa Umbro Argentina', 15499, 'El diseño de la nueva camiseta vuelve a vestir los icónicos bastones celeste y blanco.\r\nPensamos en cada detalle, para lograr que cada prenda satisfaga las diferentes necesidades de nuestros atletas y sea una insignia que portemos con orgullo en cada lugar que visitemos.\r\nLogo Umbro y escudo ARGENTINA estampados.', 'imagen1664829096360.jpg', 2, 7, 5, 1, '2022-10-03 20:31:36', '2022-10-03 20:31:36'),
(91, 'Pelota Nassau Arg', 9980, 'Este balón de voley es ideal para tu momento de recreación entre amigos\r\nTamaño: N°5.\r\nIMPORTANTE: El balón debe ser inflado con la presión que indica en el panel cercano a la válvula.', 'imagen1664829144756.jpg', 3, 7, 9, 5, '2022-10-03 20:32:24', '2022-10-03 20:32:24');

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

INSERT INTO usuario (`id`, `nombre`, `apellido`, `email`, `contraseña`, `avatar`, `pais`, `direccion`, `codigo_postal`, `fecha_de_nacimiento`, `telefono`, `perfil_id`, `created_at`, `updated_at`) VALUES
(3, 'Elias', 'Zurita', 'administrador@gmail.com', '$2a$10$w3r5VkuCFLxgMpC66ZgX2uKl41DtDRiZZIh5wp.LlBAvmtuSUtAFe', 'avatar1655499961541.png', 'Uruguay', 'Maestro Angel Delia', 'B1663', '1990-07-05', '1122225555', 1, '2022-06-18 00:06:01', '2022-08-23 17:46:40'),
(12, 'Gabriel', 'Cirger', 'cirger@gmail.com', '$2a$10$AtURFa3oQY/mendYi4hUiOFmmoMnUUebKWO4GcFUV0ArEM8ivBpJe', 'avatar1664830509381.jpg', 'Venezuela', 'Pte. Peron 678', 'B1663', '1989-07-13', '541165986594', 2, '2022-10-03 20:55:09', '2022-10-03 20:59:58'),
(13, 'Laureano', 'Roldan', 'roldan@gmail.com', '$2a$10$.kw53doJt78/EsXfLU11S.h5/8AiJEVdrx8EnQAtqaH54HaRs4Sx.', 'avatar1664830669588.jpg', 'Argentina', 'Sarmiento 3399', '1616', '1988-11-18', '1156892356', 2, '2022-10-03 20:57:49', '2022-10-03 20:57:49'),
(14, 'Alejandro', 'Bodichon', 'bodichon@gmail.com', '$2a$10$okPGcnzaRxBnSy2s7IPl6.iwOvsYgeYIaaJkvu760qS3KCYi0.Dyy', 'avatar1664830780940.jpg', 'Estados Unidos', 'Fango 4485', 'B1663', '1988-06-20', '1123562356', 2, '2022-10-03 20:59:41', '2022-10-03 20:59:41'),
(15, 'Renso', 'Adani', 'adani@gmail.com', '$2a$10$9ZSR0iDo5/OAr8vkzDzS6OG7JEWJ9qu.Q1tstQLGNHIZQ4qMRJAAC', 'avatar1664831250716.jpg', 'Bolivia', 'Larguirucho 692', 'B1663', '1988-04-20', '1123562356', 2, '2022-10-03 21:07:30', '2022-10-03 21:07:30'),
(16, 'Cristian', 'Casalnuovo', 'casalnuovo@gmail.com', '$2a$10$FhuYDfxLkJNcXT6JG5soWu44yyHQsZaHcC2Z6ufywim9dTnIWpsE6', 'avatar1664831326432.jpg', 'Chile', 'Congresales 3353', 'B1663', '1987-09-24', '1123562356', 2, '2022-10-03 21:08:46', '2022-10-03 21:08:46'),
(17, 'Francisco', 'Aparicio', 'aparicio@gmail.com', '$2a$10$X77F6OjxR53hyt4dZul5Ku6Py2UINqESo.B55tkXRW4VZyLbvw8tu', 'avatar1664909661450.jpg', 'Mexico', 'Arevalo 3899', 'B1663', '1987-09-25', '1155447788', 2, '2022-10-04 18:54:21', '2022-10-04 18:54:21');

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

alter table items
    add imagen varchar(255) null;