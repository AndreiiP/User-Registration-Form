-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               5.6.38 - MySQL Community Server (GPL)
-- Операционная система:         Win32
-- HeidiSQL Версия:              9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Дамп структуры для таблица laravel.members
CREATE TABLE IF NOT EXISTS `members` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `birth_date` date NOT NULL DEFAULT '2000-11-11',
  `report_subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `phone_country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_me` text COLLATE utf8mb4_unicode_ci,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `hide` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'false',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы laravel.members: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` (`id`, `first_name`, `last_name`, `birth_date`, `report_subject`, `country`, `phone_country`, `email`, `company`, `position`, `about_me`, `photo`, `hide`, `created_at`, `updated_at`) VALUES
	(1, 'Tommie', 'Bahringer', '2009-01-27', 'Ut nostrum repudiandae et incidunt enim.', 'Dominica', '+1828427837334', 'meda51@example.com', 'Boyer-Bartoletti', 'Forest Fire Fighter', 'Accusamus sunt voluptates praesentium a itaque magni ipsam. Est qui ratione aut rerum.', '3e2bf855097228771c93ad2ae113b7a1.jpg', 'false', '2018-06-07 07:14:23', '2018-06-07 07:14:23'),
	(2, 'Oran', 'Ward', '2015-10-25', 'Libero quod necessitatibus explicabo rem numquam eveniet eos est.', 'Thailand', '+5180465017064', 'kautzer.jerad@example.net', 'O\'Conner, Kutch and Johnston', 'Actor', 'Ea consequuntur voluptates ipsam culpa inventore. Voluptas iste sunt quisquam quia cupiditate nisi eos. Aspernatur minima distinctio vel pariatur.', 'b88512acee69f0b6a2ad1a40b246e037.jpg', 'false', '2018-06-07 07:14:23', '2018-06-07 07:14:23'),
	(3, 'Liza', 'Pfannerstill', '1983-04-09', 'Ut molestias est autem autem.', 'South Africa', '+4064010512136', 'qweber@example.com', 'Wyman and Sons', 'Plating Operator', 'Fugit nam a quod eveniet quidem pariatur. Iste enim et consequatur architecto dolorem molestias et.', '6063a1554429f58bf8d0d9578c68509a.jpg', 'false', '2018-06-07 07:14:23', '2018-06-07 07:14:23'),
	(4, 'Anjali', 'Wilderman', '1978-12-31', 'Voluptatem sequi rerum et laboriosam.', 'Finland', '+4768004725908', 'vladimir49@example.org', 'Rosenbaum Inc', 'Microbiologist', 'Odit ratione recusandae dolorum libero cumque.', '6c756586fa4db782fd35beeab920c914.jpg', 'false', '2018-06-07 07:14:23', '2018-06-07 07:14:23'),
	(5, 'Santino', 'Gleichner', '2016-09-11', 'Sed error ut animi ab voluptatem cum reprehenderit.', 'Venezuela', '+6346398189269', 'swift.ben@example.org', 'Flatley-Becker', 'Proofreaders and Copy Marker', 'Quod delectus harum iure. Reiciendis voluptas esse ut vel voluptatem sit sit.', '79de753fe5824bb5e49cb468fb4ad7c6.jpg', 'false', '2018-06-07 07:14:23', '2018-06-07 07:14:23'),
	(6, 'Samir', 'Bailey', '1974-06-12', 'Perspiciatis aut corrupti aut reiciendis quae et.', 'Belgium', '+6588830553130', 'chaya.schaden@example.net', 'Jacobs PLC', 'Environmental Science Technician', 'Et praesentium dolor non facere.', 'd3168f732145162f107379da603b3bea.jpg', 'false', '2018-06-07 07:14:23', '2018-06-07 07:14:23'),
	(7, 'Elizabeth', 'Beahan', '1981-11-14', 'Eum dolorem alias sunt voluptatem nesciunt cum praesentium.', 'Taiwan', '+3315406230121', 'feeney.yesenia@example.net', 'Leffler-Batz', 'Cardiovascular Technologist', 'Laudantium voluptatem eius laboriosam odit molestiae.', 'a1a2ae4f2f378fe5e2d0871075d34f6c.jpg', 'false', '2018-06-07 07:14:23', '2018-06-07 07:14:23'),
	(8, 'Meta', 'Feest', '1993-09-05', 'Rem in aut suscipit temporibus in ut.', 'Honduras', '+3038276163650', 'hamill.gaston@example.com', 'Harris, Hermiston and Greenholt', 'Animal Husbandry Worker', 'Minima odit quaerat voluptas. Iste rerum quia enim minus officiis.', '15cea29d853a4dfc783a193b65db97ce.jpg', 'false', '2018-06-07 07:14:23', '2018-06-07 07:14:23'),
	(9, 'Trinity', 'Trantow', '1994-06-08', 'Et et doloremque dolorem neque a explicabo rerum iste.', 'Korea', '+4132778885097', 'elsa.von@example.org', 'Miller Group', 'Elementary School Teacher', 'Facilis maiores a delectus.', '6355560e213825e01812b4179103615b.jpg', 'false', '2018-06-07 07:14:23', '2018-06-07 07:14:23'),
	(10, 'Florian', 'Carroll', '1970-04-21', 'Illo assumenda libero dolorem quisquam a placeat et similique.', 'Chile', '+6740671531794', 'giuseppe76@example.com', 'Jerde PLC', 'Extruding Machine Operator', 'Et earum consequuntur sequi enim. Qui est facilis est.', '7e91dbed57c751cf0966083f33f4388c.jpg', 'false', '2018-06-07 07:14:23', '2018-06-07 07:14:23'),
	(11, 'Isabella', 'Bergnaum', '1979-01-09', 'Eum quisquam voluptatem unde perferendis quo nesciunt quasi.', 'Italy', '+8098611464652', 'carroll.broderick@example.net', 'Dietrich PLC', 'Construction', 'Fugiat dolor ea fugiat sed perferendis et.', 'c9d87557fe0d0d7635f2333263661b83.jpg', 'false', '2018-06-07 07:14:23', '2018-06-07 07:14:23'),
	(12, 'Maryjane', 'Bednar', '2016-02-19', 'Et qui quasi dolor.', 'Ghana', '+3187421129974', 'pfadel@example.com', 'Cassin, Miller and Powlowski', 'Environmental Science Teacher', 'Temporibus aut et aut minus et. Cum doloremque porro sapiente. Illo mollitia vel officiis.', 'c2d8d5efc5381b6d60e46a6850a557ec.jpg', 'false', '2018-06-07 07:14:23', '2018-06-07 07:14:23'),
	(13, 'Alfonzo', 'Johns', '1992-06-03', 'Labore atque blanditiis dolorem.', 'Tuvalu', '+8732538022481', 'lonnie08@example.org', 'Abshire, Koss and Abshire', 'Gaming Supervisor', 'Explicabo voluptas rerum aliquid. Ratione fugit voluptas vel quia praesentium odio.', '6e4dde6931600449ff9c13d1a32b3b67.jpg', 'false', '2018-06-07 07:14:23', '2018-06-07 07:14:23'),
	(14, 'Sheridan', 'Rosenbaum', '1991-02-22', 'Qui ut non nostrum eum ut nisi.', 'Cambodia', '+6591668482671', 'xavier66@example.com', 'Leffler-Lind', 'Gauger', 'Voluptates quia consectetur quis ipsa inventore pariatur. Itaque vero nobis perferendis in rerum tempore dolorum eum.', '3fe11fb236494d8ce009565e79739038.jpg', 'false', '2018-06-07 07:14:23', '2018-06-07 07:14:23'),
	(15, 'Cooper', 'Marvin', '2009-02-15', 'Ut sunt reprehenderit in eveniet in asperiores.', 'Palestinian Territories', '+5840623566124', 'beaulah.kohler@example.com', 'Labadie and Sons', 'Motor Vehicle Inspector', 'Adipisci eum reprehenderit perferendis quidem qui sequi minima. Voluptatum fugiat corrupti ipsum qui repudiandae non earum.', 'ef9cb77d9016e4e9162cb0737d29c069.jpg', 'false', '2018-06-07 07:14:23', '2018-06-07 07:14:23'),
	(16, 'Hans', 'Stokes', '1983-04-02', 'Commodi iste quia possimus ipsam quidem.', 'Equatorial Guinea', '+9437047221089', 'beatty.hildegard@example.net', 'Wiza Inc', 'Heavy Equipment Mechanic', 'Voluptas vel dolores rem est distinctio illum. Officiis placeat iusto a eveniet quas quo molestiae aut.', '2ba50502b0fbc52d8766f2dd82c6c7ab.jpg', 'false', '2018-06-07 07:14:23', '2018-06-07 07:14:23'),
	(17, 'Randall', 'Ankunding', '1988-07-30', 'Velit dolores maiores cumque officiis consequatur.', 'Malaysia', '+8790280740794', 'bradtke.jarvis@example.com', 'Bartoletti-Senger', 'Construction Equipment Operator', 'Et quis amet sed ut quas. Et quis mollitia repudiandae sunt atque commodi est.', 'e7b1e605ee43e61be1bc408a0522722b.jpg', 'false', '2018-06-07 07:14:23', '2018-06-07 07:14:23'),
	(18, 'Kennedi', 'Wyman', '1991-07-27', 'Voluptas et saepe voluptas voluptatibus non magnam at.', 'Saint Martin', '+7298369964895', 'gaylord.violette@example.net', 'Gleichner, Braun and Metz', 'Housekeeping Supervisor', 'Suscipit quaerat ratione recusandae in sit. Molestiae maiores vitae repudiandae harum ipsa.', '833060d294e0370f5e21c2ae3a61c158.jpg', 'false', '2018-06-07 07:14:23', '2018-06-07 07:14:23'),
	(19, 'Theresia', 'Kuphal', '1999-02-20', 'Dolore ullam et recusandae itaque rerum est.', 'Ecuador', '+5006469738188', 'garnet.schuppe@example.net', 'Balistreri-Kreiger', 'Funeral Attendant', 'Eaque et hic impedit numquam sit. Harum eos impedit eveniet illo quis ut possimus commodi. Impedit reiciendis blanditiis dignissimos nostrum magnam illo facilis.', '81930acc283bc31dce3b7820fc9a432b.jpg', 'false', '2018-06-07 07:14:23', '2018-06-07 07:14:23'),
	(20, 'Adriana', 'Von', '1974-04-10', 'Et tenetur nesciunt esse et necessitatibus totam est quia.', 'Philippines', '+4996696519423', 'abbigail.schaefer@example.com', 'Miller, Hoppe and Tremblay', 'Ophthalmic Laboratory Technician', 'Ut eligendi placeat ipsam ut omnis suscipit.', '4e588c2401f75af05067228eca6b871c.jpg', 'false', '2018-06-07 07:14:23', '2018-06-07 07:14:23');
/*!40000 ALTER TABLE `members` ENABLE KEYS */;

-- Дамп структуры для таблица laravel.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы laravel.migrations: ~3 rows (приблизительно)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(7, '2018_05_02_092724_create_members_table', 2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Дамп структуры для таблица laravel.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы laravel.password_resets: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Дамп структуры для таблица laravel.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы laravel.users: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'admin', 'admin@gmail.com', '$2y$10$QYBeJglwP5/GDC/P4jSNfewkBb7qn0LjVGzmPmNM0lovMlYqXKyGy', NULL, NULL, NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
