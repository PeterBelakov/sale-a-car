-- --------------------------------------------------------
-- Хост:                         localhost
-- Server version:               5.6.17 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Версия:              9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for sale-a-car
CREATE DATABASE IF NOT EXISTS `sale-a-car` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `sale-a-car`;


-- Dumping structure for table sale-a-car.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table sale-a-car.migrations: ~2 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`migration`, `batch`) VALUES
	('2014_10_12_000000_create_users_table', 1),
	('2014_10_12_100000_create_password_resets_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;


-- Dumping structure for table sale-a-car.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table sale-a-car.password_resets: ~4 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
	('svetlamdim@abv.bg', 'ca53d7308d02cfaa14da8a3a93e249e029e8e59db4683a8739d48009c3daaf31', '2016-03-15 09:23:48'),
	('stoyanov@futuresoft.bg', 'f8c9927689fbffad06a0c3690109a4854f970ca47b428f2b4c8a90e100dfc394', '2016-03-16 14:13:07'),
	('promoclubsbg@gmail.com', '42ff227fedcedddbce7f0623fec57e5e9286a697caac1dd4fb6bf29ec57317b8', '2016-03-16 14:37:50'),
	('p.belakov89@gmail.com', '08daf4a9da84d42994e67416494302d1566506e91acb26cbb562e3a16ed449e4', '2016-03-17 11:56:30');
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;


-- Dumping structure for table sale-a-car.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table sale-a-car.users: ~6 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Peter', 'p.belakov89@gmail.com', '$2y$10$O8chnWuvvHSJd6sHG145.OnaJxtWIOr/pl9OF7.OnhQhxWwRVjFRO', 'qqx6AVvfj9GWMbm5eI9DYJaPRNwzoDiVmwNMcn4bd3QpKnMfrXogUhV4bbxT', '2016-03-10 09:59:52', '2016-03-16 14:36:01'),
	(2, 'Svetla', 'svetlamdim@abv.bg', '$2y$10$aDapVPqiAXhQ./s0WLUQDup8.sbRkkd2gz9RC75reBX1N65SwIdPe', 'tVHcO4ZpKP7y8PaFSM0es5a4U4UYSLdwKflMoP7ct0FRBIwpM3M76AnRcKeg', '2016-03-15 09:20:28', '2016-03-15 09:23:34'),
	(3, 'Hristo', 'hristostoqnov@gmail.com', '$2y$10$zbaXHiVvSW6pBufFn.7O4upj0yXPp0vWIlA4Ld1EBBYSox6YkCYYO', 'KdUlr9bT03QrluHuQg9Uzo5DdYukOjjj9aNtlvjAVtlOVOGAqu7hEQX81TdB', '2016-03-15 15:05:57', '2016-03-15 15:06:42'),
	(4, 'Petyo', 'p_e_t_i_o_1989@abv.bg', '$2y$10$FtXe0L0aXFiXbzId9ubyUOKOm7OoxTHUjE8/sCuCjZBJ49nTIKRLe', 'kuge6BzViG3NivX7uzrr8SiniB0B5JWJ6fIkeKmqBZJphPvxbZTghjiENCZS', '2016-03-15 15:07:09', '2016-03-15 15:07:36'),
	(5, 'Hristo', 'stoyanov@futuresoft.bg', '$2y$10$F01WonZ2ur5sy3/Thj4rNOm/.EPlYbjPAqx5em8GcObTzNTweD0ii', '35ntbxFGsBEOVc55JrsL4902p0SSbe8CX8xl1rvkD346V11Ifaw2BMGH2snI', '2016-03-16 13:43:41', '2016-03-16 14:22:27'),
	(6, 'Ivan', 'promoclubsbg@gmail.com', '$2y$10$vndJadCZpEpT3iv7SP2sYOGOjH3gL4z1Lu0o2PxLQQo7gjy/tXnm6', 'O4kFjVSGt3belHGwNLxM4ENYq7kMxgBsY96F5xB48NEi49rFaggmFhh9MKiK', '2016-03-16 14:36:46', '2016-03-16 14:37:29');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
