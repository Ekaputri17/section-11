-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.33 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.5.0.6677
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for users
CREATE DATABASE IF NOT EXISTS `users` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `users`;

-- Dumping structure for table users.users
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `genre` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table users.users: ~30 rows (approximately)
INSERT INTO `users` (`user_id`, `name`, `email`, `phone`, `genre`, `address`) VALUES
	(1, 'Andy', 'andyhan1@gmail.com', '089976312357', 'Laki-laki', 'Jl. Harvest'),
	(2, 'Bobby', 'bobbyinddaiyo@gmail.com', '081293041456', 'Laki-laki', 'Jl. Flamingo'),
	(3, 'Caci', 'caciberry2@gmail.com', '087823459101', 'Perempuan', 'Jl. Sency'),
	(4, 'Daniel', 'danielsky1@gmail.com', '083211291021', 'Laki-laki', 'Jl. Grand One'),
	(5, 'Embry', 'embrykim@gmail.com', '081235678902', 'Laki-laki', 'Jl. Century'),
	(6, 'Fancy', 'fancybar@gmail.com', '095887690212', 'Laki-laki', 'Jl. Central'),
	(7, 'Geralndy', 'geralndyfr@gmail.com', '096854200123', 'Laki-laki', 'Jl. Cambridge'),
	(8, 'Hans', 'hansjiiho@gmail.com', '089003124510', 'Laki-laki', 'Jl. Denmbry'),
	(9, 'Indry', 'indrykeyy@gmail.com', '083122076531', 'Perempuan', 'Jl. Light Blue'),
	(10, 'Jasmine', 'jasmineone@gmail.com', '099865437221', 'Perempuan', 'Jl. Santos'),
	(11, 'Katrny', 'katrnyyey@gmail.com', '087653115321', 'Perempuan', 'Jl. Fancy Bridge'),
	(12, 'Lina', 'linagorce@gmail.com', '089922356788', 'Perempuan', 'Jl. Denhag '),
	(13, 'Mandce', 'mandceluf@gmail.com', '081154788921', 'Perempuan', 'Jl. Zero White'),
	(14, 'Nada', 'nadaberry@gmail.com', '081266934639', 'Perempuan', 'Jl. Ruslly'),
	(15, 'Oxy', 'oxyonlearn@gmail.com', '091378890245', 'Laki-laki', 'Jl. Ambrerly'),
	(16, 'Patrick ', 'patrickytt@gmail.com', '08996645678', 'Laki-laki', 'Jl. Pabby'),
	(17, 'Queen', 'queenyy12@gmail.com', '087884231467', 'Perempuan', 'Jl. Yumi '),
	(18, 'Rose ', 'roseisrosie@gmail.com', '084566032134', 'Perempuan', 'Jl. King Land'),
	(19, 'Sam', 'sambirth@gmail.com', '087798666541', 'Laki-laki', 'Jl. Frency'),
	(20, 'Thor', 'thorboy@gmail.com', '087769504212', 'Laki-laki', 'Jl. Hanbrug'),
	(21, 'Una', 'unababby@gmail.com', '085667512245', 'Perempuan', 'Jl. Vabrlilly'),
	(22, 'Vrank', 'vrankbre@gmail.com', '081244668198', 'Laki-laki', 'Jl. Osama'),
	(23, 'Wenddy', 'wenddyice@gmail.com', '081378935564', 'Laki-laki', 'Jl. Raya Central'),
	(24, 'Xabiru', 'xabiruwent@gmail.com', '089655712332', 'Laki-laki', 'Jl. Penatara'),
	(25, 'Yendry', 'yendryty@gmail.com', '081356789921', 'Laki-laki', 'Jl. Lamborg '),
	(26, 'Zunaira', 'zunairashey@gmail.com', '089945678034', 'Perempuan', 'Jl. Gentry'),
	(27, 'Alissa', 'alissapink@gmail.com', '089530124065', 'Perempuan', 'Jl. Watson'),
	(28, 'Jisso', 'jisso03@gmail.com', '089906531235', 'Perempuan', 'Jl. Lambory'),
	(29, 'Jennie', 'jennieyrubby@gmail.com', '081345680324', 'Perempuan', 'Jl. Ken Brug'),
	(30, 'Lisa', 'lisablack@gmail.com', '081289005312', 'Perempuan', 'Jl. Barbie ');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
