-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.10.1-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Volcando estructura para tabla mascotasperdidas.especie
CREATE TABLE IF NOT EXISTS `especie` (
  `id_especie` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_especie` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_especie`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla mascotasperdidas.especie: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `especie` DISABLE KEYS */;
INSERT INTO `especie` (`id_especie`, `nombre_especie`) VALUES
	(1, 'Canino'),
	(2, 'Felino');
/*!40000 ALTER TABLE `especie` ENABLE KEYS */;

-- Volcando estructura para tabla mascotasperdidas.mascota
CREATE TABLE IF NOT EXISTS `mascota` (
  `id_mascota` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_mascota` varchar(45) DEFAULT NULL COMMENT '* si mascota busca hogar\r\nel nombre sera NN',
  `raza_mascota` varchar(45) DEFAULT NULL,
  `tipo_busqueda_mascota` varchar(45) DEFAULT NULL COMMENT '* dueño busca mascota\r\n* mascota busca su hogar',
  `edad_aproximada_mascota` varchar(45) DEFAULT NULL,
  `sexo_mascota` varchar(10) DEFAULT NULL COMMENT '* macho o hembra',
  `color_mascota` varchar(45) DEFAULT NULL,
  `descripcion_mascota` varchar(400) DEFAULT NULL,
  `fecha_mascota` datetime DEFAULT NULL COMMENT 'fecha y hora de la creación registro',
  `estado_busqueda_mascota` varchar(50) DEFAULT NULL COMMENT '* perdida - por defecto\r\n* encontrad - cuando la mascota encuentra su hogar',
  `foto_mascota` varchar(200) DEFAULT NULL COMMENT '* Foto de la mascot',
  `id_especie_mascota` int(11) DEFAULT NULL,
  `id_usuario_mascota` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_mascota`),
  KEY `FK_id_usuario` (`id_usuario_mascota`),
  KEY `FK_id_especie` (`id_especie_mascota`),
  CONSTRAINT `FK_id_especie` FOREIGN KEY (`id_especie_mascota`) REFERENCES `especie` (`id_especie`),
  CONSTRAINT `FK_id_usuario` FOREIGN KEY (`id_usuario_mascota`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla mascotasperdidas.mascota: ~10 rows (aproximadamente)
/*!40000 ALTER TABLE `mascota` DISABLE KEYS */;
INSERT INTO `mascota` (`id_mascota`, `nombre_mascota`, `raza_mascota`, `tipo_busqueda_mascota`, `edad_aproximada_mascota`, `sexo_mascota`, `color_mascota`, `descripcion_mascota`, `fecha_mascota`, `estado_busqueda_mascota`, `foto_mascota`, `id_especie_mascota`, `id_usuario_mascota`) VALUES
	(1, ' maria ', 'Cocker Spaniel Inglés', 'dueño busca mascota', '2  años', 'hembre', 'amarilla', 'se perdio  en Pereira', '2022-09-02 15:38:45', 'perdida', 'https://media.istockphoto.com/photos/english-cocker-spaniel-sitting-2-years-old-isolated-on-white-picture-id823781276?s=612x612', 1, 3),
	(2, 'Morocha', 'criolla', 'dueño busca mascota', '7 mese', 'hembra', 'carey', 'se perdio en Bogota', '2022-09-02 15:47:49', 'perdida', 'https://pixabay.com/es/photos/gato-caza-campo-salvaje-carey-589585/', 2, 1),
	(3, 'nn', 'Criollo', 'mascota busca su hogar', '3  meses', 'hembra', 'negro', 'encontrada en la ciudad de  Barranquilla con una collar azul', '2022-09-10 11:40:34', 'perdida', 'https://cdn.pixabay.com/photo/2021/01/21/11/36/black-dog-5937121_960_720.jpg', 1, 4),
	(4, 'nn', 'Pinscher', 'mascota busca su hogar', '2 años', 'macho', 'negro', 'Encontrado barrio primera norte en Medellin, arnes negro cuero', '2022-09-10 11:44:47', 'perdido', 'https://www.hogarmania.com/archivos/201604/pinscher-miniatura-1280x720x80xX.jpg', 1, 2),
	(5, 'Gloria', 'PCA', 'dueño busca mascota', '3 años', 'macho', 'blanco', 'Gato se perdio  el parque motes de Bogota', '2022-09-10 11:53:01', 'perdido', 'https://upload.wikimedia.org/wikipedia/commons/3/33/Gato-blanco-acostado.jpg', 2, 5),
	(6, 'Romero', 'Pastor Aleman', 'dueño busca mascota', '5 años', 'macho', 'negro', 'Se perdio en el barrio Claridad de Neiva', '2022-09-10 11:53:02', 'encontrado', 'https://smylepets.com/wp-content/uploads/2022/05/pastor-aleman-raza.jpg', 1, 4),
	(7, 'nn', 'criollo', 'mascota busca su hogar', '3 años', 'macho', 'blanco con negro', 'perro encontrado en Rio Negro', '2022-09-10 11:57:45', 'perdido', 'https://media.istockphoto.com/photos/border-collie-picture-id962869894?b=1&k=20&m=962869894&s=170667a&w=0&h=2XV2lQBCvBvr2hsAn7BWCS9yO4xGjswJ59tO9e-cuTE=', 1, 2),
	(8, 'Nacho', 'criollo', 'dueño busca mascota', '8 años', 'macho', 'amarilla', 'Mascoras e perdio en la franja de la ciudad de Puerto Naranjo', '2022-09-10 12:03:39', 'perdida', 'https://pbs.twimg.com/profile_images/742325208112111616/zUwzc46l_400x400.jpg', 1, 2),
	(9, 'Marina', 'Lobo', 'dueño busca mascota', '1 año', 'hembra', 'negro blanco', 'Masco robada en Bogota', '2022-09-10 12:05:59', 'perdida', 'https://as01.epimg.net/diarioas/imagenes/2022/05/29/actualidad/1653826510_995351_1653826595_noticia_normal_recorte1.jpg', 1, 4),
	(10, 'Monito', 'Persa', 'dueño busca mascota', '10 años', 'macho', 'cris', 'Me perdi en la ciudda de Mariquita y estoy medicado, es vital para mi', '2022-09-10 12:08:06', 'perdida', 'https://estaticos-cdn.prensaiberica.es/clip/dd46d7f1-5e80-4a76-afd0-8a8aa38b3af9_16-9-aspect-ratio_default_0.jpg', 2, 5);
/*!40000 ALTER TABLE `mascota` ENABLE KEYS */;

-- Volcando estructura para tabla mascotasperdidas.usuario
CREATE TABLE IF NOT EXISTS `usuario` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_usuario` varchar(45) DEFAULT NULL,
  `apellido_usuario` varchar(45) DEFAULT NULL,
  `celular_usuario` varchar(45) DEFAULT NULL,
  `correo_usuario` varchar(45) DEFAULT NULL,
  `contrasena_usurio` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla mascotasperdidas.usuario: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` (`id_usuario`, `nombre_usuario`, `apellido_usuario`, `celular_usuario`, `correo_usuario`, `contrasena_usurio`) VALUES
	(1, 'Sandra Milena', 'Sarmiento Puentes', '31878390', 'sandraMilena@yahoo.es', '123'),
	(2, 'Carolina', 'Molina', '32152123', 'carolina@gmail.com', '123'),
	(3, 'Jose', 'Rico', '31525658', 'Jose@gmail.com', '123'),
	(4, 'Fernando', 'Sierra', '31878390', 'fernando@gmail.com', '123'),
	(5, 'Abelardo', 'Monsalve', '31856212', 'abelardo@gmail.com', '123'),
	(6, 'jim', 'quijano', '3115485', 'sdasd@gmail.com', '123'),
	(7, 'saads', 'asda', '446646', 'sad@gmail.com', '123');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
