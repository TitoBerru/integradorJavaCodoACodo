-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.22-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para proyecto22026
CREATE DATABASE IF NOT EXISTS `proyecto22026` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `proyecto22026`;

-- Volcando estructura para tabla proyecto22026.socios
CREATE TABLE IF NOT EXISTS `socios` (
  `id_socio` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `dni` int(11) DEFAULT NULL,
  `mail` varchar(50) DEFAULT NULL,
  `fecha_alta` date DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_socio`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla proyecto22026.socios: ~6 rows (aproximadamente)
DELETE FROM `socios`;
/*!40000 ALTER TABLE `socios` DISABLE KEYS */;
INSERT INTO `socios` (`id_socio`, `nombre`, `apellido`, `dni`, `mail`, `fecha_alta`, `estado`) VALUES
	(90, 'Pedro', 'Manuel', 23456765, 'pedor@ultimo.com', NULL, 1),
	(93, 'Hector', 'Valverde', 25325186, 'AFernandez@gmail.com', NULL, 1),
	(94, 'Maria', 'Lopez', 25325186, 'MPerez@elmail.com', NULL, 1),
	(95, 'Pedro', 'Espinosa', 30215456, 'Pespinosa@elmail.com', NULL, 1),
	(96, 'Augusto', 'Grigion', 28987456, 'Agrigio@elmail.com', NULL, 1),
	(97, 'Carla', 'Martinez', 35665441, 'C_Martinez@elmail.com', NULL, 1);
/*!40000 ALTER TABLE `socios` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
