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


-- Dumping database structure for tugas_left join
CREATE DATABASE IF NOT EXISTS `tugas_left join` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `tugas_left join`;

-- Dumping structure for table tugas_left join.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `slug` varchar(50) DEFAULT NULL,
  `description` text,
  `status` varchar(50) DEFAULT NULL,
  `photo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table tugas_left join.categories: ~5 rows (approximately)
INSERT INTO `categories` (`id`, `user_id`, `code`, `name`, `slug`, `description`, `status`, `photo`) VALUES
	(1, 12, '112', 'Kitkat rasa coklat', 'Kitkat_coklat', 'Kit Kat adalah sebuah batang coklat pertama dibuat di Ingrris dan diproduksi oleh Nestle dengan lisensi dari The Hershey Company ', 'Ready for s', '1'),
	(3, 34, '134', 'Toblerone rasa coklat', 'Toblerone_coklat', 'Toblerone merupakan coklat batangan yang dibuat oleh perusahaan Kraft Foods Switzerland', 'Ready for sale', '3'),
	(6, 66, '166', 'Silverqueen rasa coklat', 'Silverqueen_coklat', 'Silverqueen adalah satu coklat yang banyak dijumpai di minimarket atau supermarket dan coklat ini berasal dari Belanda', 'Ready for sale ', '6'),
	(7, 7, '177', 'Cadbury rasa coklat', 'Cadbury_coklat', 'Cadbury merupakan merek coklat dari Inggris yang didirikan oleh John Cadbury dan Benjamin Cadbury', 'Discount', '7'),
	(8, 8, '188', 'Hersey rasa coklat', 'Hersey_coklat', 'Hersey merupakan salah satu produk coklat asal Amerika Serikat yang ternama di dunia ', 'Ready for sale', '8 ');

-- Dumping structure for table tugas_left join.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` int NOT NULL,
  `category_id` int NOT NULL,
  `user_id` int NOT NULL,
  `code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `photo` varchar(50) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table tugas_left join.products: ~5 rows (approximately)
INSERT INTO `products` (`id`, `category_id`, `user_id`, `code`, `name`, `slug`, `description`, `photo`, `qty`, `unit`, `price`, `status`) VALUES
	(1, 2, 12, '112', 'Kitkat rasa coklat', 'Kitkat_coklat', 'Kit Kat adalah sebuah batang coklat pertama dibuat di Ingrris dan diproduksi oleh Nestle dengan lisensi dari The Hershey Company ', '1', 24, '1 box', 25000, 'Ready for sale'),
	(2, 2, 22, '122', 'Kitkat rasa matcha', 'Kitkat_matcha', 'Kit Kat adalah sebuah batang coklat pertama dibuat di Ingrris dan diproduksi oleh Nestle dengan lisensi dari The Hershey Company. Saat ini perusahaan tidak hanya mengeluarkan varian rasa coklat, namun mengeluarkan varian rasa matcha juga', '2', 24, '1 box', 30000, 'Ready for sale'),
	(3, 3, 33, '133', 'Toblerone rasa coklat', 'Toblerone_coklat', 'Toblerone merupakan coklat batangan yang dibuat oleh perusahaan Kraft Foods Switzerland', '3', 20, '1 box', 420000, 'Ready for sale '),
	(4, 3, 34, '134', 'Toblerone white chocolate', 'Toblerone_white', 'Toblerone merupakan coklat batangan yang dibuat oleh perusahaan Kraft Foods Switzerland. Tidak hanya rasa coklat saja, namun toblerone juga menyajikan rasa white coklat', '4', 20, '1 box', 425000, 'On Discount '),
	(5, 4, 45, '145', 'Treasures rasa  cookies and cream', 'Treasures_cookies and cream', 'Delfi Treasures adalah salah satu coklat lezat yang diproduksi oleh Delfi ', '5', 6, '1 box', 48000, 'On Discount ');

-- Dumping structure for table tugas_left join.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL,
  `email` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `created_id` timestamp(6) NULL DEFAULT NULL,
  `updated_id` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table tugas_left join.users: ~5 rows (approximately)
INSERT INTO `users` (`id`, `email`, `name`, `password`, `address`, `role`, `status`, `created_id`, `updated_id`) VALUES
	(1, 'hannyd1@gmail.com', 'Hanny Baskoro', '1234sspw', 'Jl. Denpasar Raya', 'Mahasiswa', 'Aktif', '2023-08-19 08:57:06.000000', '2023-08-19 09:01:06.000000'),
	(2, 'berryone@gmail.com', 'Bari Tammy', 'wenddys', 'Jl. Penataran', 'Mahasiswa', 'Cuti', '2023-08-19 09:02:07.000000', '2023-08-19 09:02:49.000000'),
	(3, 'sanddkawen@gmail.com', 'Sandika Permata', 'dedd120', 'Jl. Delaga 1', 'Bekerja', 'Aktif', '2023-08-19 09:04:22.000000', '2023-08-19 09:04:29.000000'),
	(4, 'santyygiorgiana@gmail.com', 'Santy Georgina', 'santygo', 'Jl. Bandung Kenangan', 'Pelajar', 'Aktif', '2023-08-19 09:06:34.000000', '2023-08-19 09:06:36.000000'),
	(5, 'fentyybeauty@gmail.com', 'Fenty Atasya ', 'fennty12345', 'Jl. Damai Indah ', 'Pelajar', 'Aktif', '2023-08-19 09:07:29.000000', '2023-08-19 09:07:30.000000');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
