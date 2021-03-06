-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.8-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for pos
CREATE DATABASE IF NOT EXISTS `pos` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `pos`;

-- Dumping structure for table pos.armada
CREATE TABLE IF NOT EXISTS `armada` (
  `id_armada` int(11) NOT NULL,
  `nama_armada` varchar(100) DEFAULT NULL,
  `alamat_armada` varchar(225) DEFAULT NULL,
  `telpon_armada` varchar(15) DEFAULT NULL,
  `email_armada` varchar(100) DEFAULT NULL,
  `bus` int(11) DEFAULT NULL,
  `minibus` int(11) DEFAULT NULL,
  `hiace` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_armada`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table pos.armada: ~0 rows (approximately)
/*!40000 ALTER TABLE `armada` DISABLE KEYS */;
/*!40000 ALTER TABLE `armada` ENABLE KEYS */;

-- Dumping structure for table pos.blog
CREATE TABLE IF NOT EXISTS `blog` (
  `blog_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `writer` varchar(50) DEFAULT NULL,
  `created` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`blog_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table pos.blog: ~7 rows (approximately)
/*!40000 ALTER TABLE `blog` DISABLE KEYS */;
INSERT INTO `blog` (`blog_id`, `title`, `image`, `content`, `writer`, `created`, `updated`) VALUES
	(1, 'Blue Fire Phenomenon on Ijen Crater', 'blog-160620-8d3be1831c.jpg', 'Ijen Volcano or known as ‘Ijen Crater’ or ‘Kawah Ijen’ has elevation 2,769m (9,085 ft) which located in East Java, Indonesia. Highly recommended for mountain buffs and hikers. Ijen is a quiet but active volcano, and the landscape is dominated by the volcanic cones.', 'admintraviora', '2020-06-16 21:43:35', '2020-06-16 16:43:35'),
	(2, 'Corona in Bali – Is it safe to travel?', 'blog-160620-090ec5e43d.jpg', 'The World Health Organization (WHO) has declared COVID-19 a pandemic. The risk of transmission around the world is increasing, especially the spread of corona in Bali', 'admintraviora', '2020-06-16 21:44:03', '2020-06-16 16:44:03'),
	(4, 'NYEPI 2020 – What you can do in Bali', 'blog-160620-0e02852a6e.jpg', 'Bali has a big day called Nyepi Day. In 2020, preparations for the Nyepi celebration ritual begin a few weeks before the actual date with the large Ogoh-ogoh craft. If you travel around the island, maybe you will see some that are being made.', 'admintraviora', '2020-06-16 21:44:27', '2020-06-16 16:44:27'),
	(5, 'Tourist Attractions In Bali Began To Be Closed', 'blog-160620-05dd40be09.jpg', 'The Indonesian government has appealed to the public to implement social distancing along with the increasing number of positive cases of corona in Indonesia. Most companies and government agencies have also adopted work from home policies for their employees.', 'Irvan Alfi', '2020-06-16 21:45:41', '2020-06-16 16:45:41'),
	(6, 'Bali Status and Prevention Spread of Covid-19', 'blog-160620-ffbfe0ba4c.jpg', 'Bali Update Covid-19. Until May 4, 2020, the cumulative number of positive patients is 271 people. The number of patients who had recovered was 159 people. Meanwhile, the number of patients who died remained 4 people (2 local and 2 foreign). The number of positive patients in medical care 108 people in 9 hospitals and in quarantine (Bapelkesmas).', 'Irvan Alfi', '2020-06-16 21:44:46', '2020-06-16 16:44:46'),
	(7, 'Akses Wisata ke Bali Kembali dibuka dengan Aturan New Normal', 'blog-160620-06ca08d3b3.jpg', 'semenjak indonesia terdapak wabah firus corona, mentri pariwisata memberikan himbauan untuk menonaktif kan seluruh tempat wisata di berbagai daerah di Indonesia. akan tetapi seiring berjalan nya waktu sepertinya peraturan untuk tetap stay di rumah , socialdistancing, lockdown semuanya belum bisa sepenuhnya di terapkan kepada seluruh masyarakat indonesia\r\nAkhirnya pemerintah memutuskan untuk memberlakukan new normal dengan membebaskan semua kegiatan seperti semula, akan tetapi tetap dalam peraturan untuk menggunakan masker, handsanitizer, apbd dan lain sebagainya. ', 'Irvan', '2020-06-16 21:45:23', '2020-06-16 16:45:23');
/*!40000 ALTER TABLE `blog` ENABLE KEYS */;

-- Dumping structure for table pos.contact
CREATE TABLE IF NOT EXISTS `contact` (
  `contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `pesan` text DEFAULT NULL,
  `answer` text DEFAULT NULL,
  `created` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table pos.contact: ~1 rows (approximately)
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` (`contact_id`, `name`, `email`, `subject`, `pesan`, `answer`, `created`, `updated`) VALUES
	(1, 'M. Irvan Alfi Hidayat', 'irvanhidayat0623@gmail.com', 'Saran', 'Mohon di tingkatkan lagi fitur fiturnya. masih banyak yang kurang smoth', NULL, '2020-05-17 21:33:12', NULL),
	(3, 'irvanalfy', 'irvan_alfy23@yahoo.com', 'tiket traviora', 'gcdhgklhl\'k;l', NULL, '2020-05-19 12:07:22', NULL);
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;

-- Dumping structure for table pos.customer
CREATE TABLE IF NOT EXISTS `customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `gender` enum('L','P') NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(225) DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table pos.customer: ~11 rows (approximately)
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` (`customer_id`, `name`, `gender`, `phone`, `address`, `created`, `updated`) VALUES
	(1, 'Abdul Ajiz', 'L', '081358588519', 'Malioboro, Jogja', '2020-05-04 10:24:38', NULL),
	(2, 'Intan Nur Ja\'a Al Faricha', 'P', '081443244233', 'Cluring, Banyuwangi', '2020-05-04 10:25:08', NULL),
	(3, 'Abdurrosyid Muhasibi', 'L', '085667443666', 'Kediri, Jawa Timur', '2020-05-04 10:25:42', NULL),
	(4, 'Septianda Reza Maulana', 'L', '082257125415', 'Perumahan Jati Asri Blok A3, Kebon Agung, Kraksaan-Probolinggo', '2020-05-04 10:27:23', NULL),
	(5, 'Silvia Amalia', 'P', '082255667344', 'Lumajang, Jawa Timur', '2020-05-07 22:25:58', '2020-05-07 17:25:58'),
	(6, 'Herlina Sari', 'P', '089933267788', 'Rogojampi, Banyuwangi, Jawa Timur', '2020-05-04 10:29:07', NULL),
	(7, 'Syefil Angela', 'P', '082226677344', 'Terusan Surabaya, Malang', '2020-05-04 10:30:22', NULL),
	(8, 'Irgi Saputra', 'L', '081776543882', 'Jombang, Jawa Timur', '2020-05-04 10:31:08', NULL),
	(9, 'Iqbaludin Alhuda', 'L', '085441991833', 'Pati, Mojokerto, Jawa Timur', '2020-05-04 10:32:04', NULL),
	(10, 'Alta Larik ', 'L', '081226775590', 'Blimbing, Malang, Jawa Timur', '2020-05-07 20:27:07', '2020-05-07 15:27:07'),
	(11, 'Mirza Zarqani', 'L', '082230913815', 'Pakis, Malang', '2020-05-07 20:28:03', NULL);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;

-- Dumping structure for table pos.profil
CREATE TABLE IF NOT EXISTS `profil` (
  `webName` varchar(255) NOT NULL,
  `about` longtext NOT NULL DEFAULT '',
  `address1` varchar(255) NOT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `address3` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `google+` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `phone` varchar(20) NOT NULL,
  `whatsapp` varchar(20) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `banner` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table pos.profil: ~0 rows (approximately)
/*!40000 ALTER TABLE `profil` DISABLE KEYS */;
/*!40000 ALTER TABLE `profil` ENABLE KEYS */;

-- Dumping structure for table pos.p_category
CREATE TABLE IF NOT EXISTS `p_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated` datetime DEFAULT NULL,
  `status` enum('E','D') NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table pos.p_category: ~3 rows (approximately)
/*!40000 ALTER TABLE `p_category` DISABLE KEYS */;
INSERT INTO `p_category` (`category_id`, `name`, `created`, `updated`, `status`) VALUES
	(1, 'Java Tour', '2020-05-07 22:34:24', '2020-05-07 17:34:24', 'E'),
	(2, 'Bali Tour', '2020-05-04 05:39:31', NULL, 'E'),
	(3, 'Lombok Tour', '2020-05-04 05:39:42', NULL, 'D');
/*!40000 ALTER TABLE `p_category` ENABLE KEYS */;

-- Dumping structure for table pos.p_item
CREATE TABLE IF NOT EXISTS `p_item` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `barcode` varchar(50) NOT NULL,
  `name` varchar(225) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `image` varchar(225) DEFAULT NULL,
  `duration` varchar(50) NOT NULL,
  `groupsize` varchar(50) NOT NULL,
  `language` varchar(50) NOT NULL,
  `overview` text NOT NULL,
  `type_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`item_id`),
  UNIQUE KEY `barcode` (`barcode`),
  KEY `FK_p_item_p_item` (`type_id`),
  KEY `FK_p_item_p_category` (`category_id`),
  CONSTRAINT `FK_p_item_p_category` FOREIGN KEY (`category_id`) REFERENCES `p_category` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_p_item_p_item` FOREIGN KEY (`type_id`) REFERENCES `p_type` (`type_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table pos.p_item: ~21 rows (approximately)
/*!40000 ALTER TABLE `p_item` DISABLE KEYS */;
INSERT INTO `p_item` (`item_id`, `barcode`, `name`, `address`, `image`, `duration`, `groupsize`, `language`, `overview`, `type_id`, `category_id`, `stock`, `price`, `created`, `updated`) VALUES
	(8, 'A001', 'BROMO', 'Probolinggo, Jawa Timur', 'item-070520-d21bae68bb.jpg', '2 Days', 'Unlimited', 'English', 'Bromo Mountain', 1, 1, 12, 2000000, '2020-07-09 22:44:27', '2020-05-13 17:50:34'),
	(15, 'A002', 'Batu', 'Malang', 'item-070520-85759d47b3.jpg', '8 hours', 'Unlimited', 'English', 'Malang City located on the southwestern part of Indonesia, Java island. Malang has many tourist destinations, both natural and city.\r\n\r\nMuseum Angkut is a transport museum located in Batu, East Java, Indonesia and is located on the hillside of Mount Panderman, part of Mount Kawi-Butak. The museum has more than 300 collections of types of traditional to modern transportation.\r\n\r\nColorful Village was actually a slum area that is located on the riverbank of Daerah Aliran Sungai (DAS) Brantas. It was even one of the 11 most rundown villages in Indonesia. It all changed when a group of students changed it and eventually became a popular tourist destination.\r\n\r\nOmah Kayu (Wooden House) near enough from other tourist destinations in Batu. Omah Kayu is a very natural ambience, and cool. Not only that, during the day various birds chirping sound. This outstanding charm makes a lot of interested people to stay and reserve the hotel.', 2, 1, 15, 1000000, '2020-07-09 22:44:33', '2020-06-16 16:15:56'),
	(19, 'A003', 'Gili ', 'West Nusa Tenggara, Indonesia', 'item-070520-3f2dc55bc9.jpg', '8 hours', 'Unlimited', 'English', 'Gili Bali', 1, 2, 12, 1200000, '2020-07-09 22:44:40', '2020-05-07 18:41:30'),
	(21, 'A006', 'Sendang Gile', 'West Nusa Tenggara, Indonesia', 'item-070520-02437c1d16.jpg', '8 hours', 'Unlimited', 'English', 'Waterfall', 1, 3, 15, 950000, '2020-07-09 22:44:49', '2020-05-07 19:04:06'),
	(23, 'A004', 'Bentar', 'Probolinggo', 'item-070520-1d8df7e34e.jpg', '8 hours', 'Unlimited', 'English', 'Bentar Beach', 1, 1, 12, 150000, '2020-07-09 22:45:14', '2020-05-07 19:07:08'),
	(24, 'A008', 'Matos', 'Malang', 'item-070520-91d4f9302d.jpg', '3 Hours', 'Unlimited', 'English', 'Matos Mall', 1, 1, 6, 450000, '2020-07-09 22:45:18', NULL),
	(25, 'A009', 'Africa of Java & Staycation', 'Baluran', 'item-160520-cd506846e3.jpg', '2 Days', 'Unlimited', 'English', 'Explore National Park and enjoy the panorama of savanna and mount Baluran', 2, 1, 10, 1098000, '2020-07-09 22:45:37', NULL),
	(26, 'A010', 'Day Trip Lembongan by Sugriwa Express', 'Mangrove forest, Jungutbatu, Klungkung Regency, Bali, Indonesia', 'item-160520-8764349a32.jpg', '5 Hours', 'Unlimited', 'English', 'Explore Lembongan and all its magic. We will take you to see the Mangrove Forest.', 1, 2, 15, 800000, '2020-07-09 22:45:41', '2020-05-17 16:34:36'),
	(27, 'A011', 'Amazing Malang Batu – 2Days 1Night', 'Malang, Malang City, East Java, Indonesia', 'item-160520-eaf9bcfb9d.jpg', '2 Days', 'Unlimited', 'English', 'Omah Kayu (Wooden House) near enough from other tourist destinations in Batu', 1, 1, 15, 1935000, '2020-07-09 22:45:48', NULL),
	(28, 'A012', 'Beautiful Malang Batu – 3Days 2Nights', 'Malang, Malang City, East Java, Indonesia', 'item-160520-d479f33fde.jpg', '3 Days', 'Unlimited', 'English', 'Museum Angkut is a transport museum located in Batu, East Java, Indonesia', 1, 1, 14, 2775000, '2020-07-09 22:45:54', NULL),
	(29, 'A013', 'Beautiful Malang Batu Bromo – 3Days 2Nights', 'Malang, Malang City, East Java, Indonesia', 'item-160520-5a816a2aa6.jpg', '3 Days', 'Unlimited', 'English', 'And Mount Bromo is a part of the Bromo Tengger Semeru National Park that covers a massive area of 800 square km. ', 1, 1, 20, 3290000, '2020-07-09 22:46:01', NULL),
	(30, 'A014', 'Jogjakarta Golf Tours', 'Yogyakarta, Yogyakarta City, Special Region of Yogyakarta, Indonesia', 'item-160520-5325c264ac.jpg', '3 Days', 'Unlimited', 'English', 'Yogyakarta (some people call it Jogja, Jogjakarta, or Yogya) is a city with outstanding historical and cultural heritage. ', 1, 1, 15, 4710000, '2020-07-09 22:46:07', NULL),
	(31, 'A015', 'Ramayana Ballet Performance Entrance Ticket (Performance Only)', 'Ramayana Ballet Purawisata, Jalan Brigjen Katamso, Keparakan, Yogyakarta City, Special Region of Yogyakarta, Indonesia', 'item-160520-30a8212bde.jpg', '1 hours 30 minutes', 'Unlimited', 'English', 'Mandira Baruga was formerly known as PURAWISATA, Travel Destinations that are well known and visited by millions of tourists from various foreign countries', 3, 1, 10, 250000, '2020-07-09 22:46:24', '2020-05-18 00:53:53'),
	(32, 'A016', 'Cycling and Rafting with Bahama', ' Ayung River Rafting Ubud Bali, Jalan Raya Ubud, Ubud, Gianyar, Bali, Indonesia', 'item-160520-ef08b3fcde.jpg', '5 Hours', 'Unlimited', 'English', 'Bahama rafting adventure located in the Ayung River which is one of the best selected adventure companies in Bali', 1, 2, 20, 550000, '2020-07-09 22:46:35', NULL),
	(33, 'A017', 'Taman Sari Buwana – Balinese Traditional Farming (Village Life & Traditional farming)', ' Taman Sari Buwana - Balinese Traditional Farming, Tunjuk, Tabanan Regency, Bali, Indonesia', 'item-160520-70b527dfeb.jpg', ' 2,5 hours - 3 hours', 'Unlimited', 'English', 'Taman Sari Buwana is a semi-social activity which is developed related to sustainable tourism concept', 1, 2, 15, 540000, '2020-07-09 22:46:42', NULL),
	(34, 'A018', 'Bali Treetop Adventure Park – Treetop Activity (Foreigners Only)', ' Bali Treetop Adventure Park, Candikuning, Tabanan Regency, Bali, Indonesia', 'item-160520-744ce0b33b.jpg', ' 2 hours 30 minutes (approx.)', 'Unlimited', 'English', 'Bali Treetop Adventure Park is a fun activity set in an open air environment for group and family in Indonesia.', 1, 2, 15, 345000, '2020-07-09 22:46:46', NULL),
	(35, 'A019', '3 Points Snorkeling Package with Bali Funtasea', ' Nusa Penida, Klungkung Regency, Bali, Indonesia', 'item-160520-2b0c8d0f0d.jpg', '8 Hours', 'Unlimited', 'English', 'Bali Funtasea has varieties of day cruises and land tours in Nusa Penida and Nusa Lembongan Island. ', 4, 2, 15, 630000, '2020-07-09 22:46:50', NULL),
	(36, 'A020', 'Exotic Sasak Daily Tour', ' Rambitan village, Rembitan, Central Lombok Regency, West Nusa Tenggara, Indonesia', 'item-160520-7743b0ecc1.jpg', '8 Hours', 'Unlimited', 'English', 'Discover the exotic of Lombok by visiting some villages with its unique culture. Firstly, visit Banyumelek village', 8, 3, 15, 900000, '2020-07-09 22:47:09', NULL),
	(37, 'A021', 'West Nusa Tenggara City Tour', ' Mataram City, West Nusa Tenggara, Indonesia', 'item-160520-2ae1fe8586.jpg', '8 Hours', 'Unlimited', 'English', 'Your trip starts with visiting the Islamic Center. Located in Mataram, the Islamic Center is a Mosque with a magnificent and artistic design.', 8, 3, 10, 875000, '2020-07-09 22:47:14', NULL),
	(38, 'A022', 'Lombok Land Cruise', ' Lombok Island, West Nusa Tenggara, Indonesia', 'item-160520-2a9352dc46.jpg', 'Full Day', 'Unlimited', 'English', 'Lombok land cruise will start by picking up and meeting services at your hotel, directly drive to Malimbu Hill to see the scenic view of Lombok Coast', 1, 3, 15, 1480000, '2020-07-09 22:47:18', NULL),
	(39, 'A023', 'Gili 3 Island Snorkeling', ' Gili Islands, Gili Indah, North Lombok Regency, West Nusa Tenggara, Indonesia', 'item-160520-7eb17c3a3a.jpg', '12 Hours', 'Unlimited', 'English', 'You’ll enjoy snorkeling at the best snorkeling points of Gili Trawangan, Gili Meno and Gili Air. Specifically designed to see all three Island in one day.', 4, 3, 20, 1100000, '2020-07-09 22:47:22', NULL);
/*!40000 ALTER TABLE `p_item` ENABLE KEYS */;

-- Dumping structure for table pos.p_type
CREATE TABLE IF NOT EXISTS `p_type` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated` datetime DEFAULT NULL,
  `status` enum('E','D') NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table pos.p_type: ~9 rows (approximately)
/*!40000 ALTER TABLE `p_type` DISABLE KEYS */;
INSERT INTO `p_type` (`type_id`, `name`, `created`, `updated`, `status`) VALUES
	(1, 'Daily Tour', '2020-05-04 05:41:21', NULL, 'E'),
	(2, 'Family Tour', '2020-05-04 05:42:42', NULL, 'E'),
	(3, 'Education', '2020-05-04 05:45:30', NULL, 'D'),
	(4, 'Snorkeling', '2020-05-04 05:49:07', NULL, 'D'),
	(5, 'Scuba Diving', '2020-05-04 05:51:57', NULL, 'E'),
	(6, 'City Tour', '2020-05-04 05:52:28', NULL, 'E'),
	(7, 'History Tour', '2020-05-04 05:53:47', NULL, 'E'),
	(8, 'Cultural Tour', '2020-05-04 05:56:34', NULL, 'D'),
	(9, 'Adventure Tour', '2020-05-07 05:26:33', '2020-05-07 00:26:33', 'D');
/*!40000 ALTER TABLE `p_type` ENABLE KEYS */;

-- Dumping structure for table pos.p_unit
CREATE TABLE IF NOT EXISTS `p_unit` (
  `unit_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `updated` datetime NOT NULL,
  PRIMARY KEY (`unit_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table pos.p_unit: ~10 rows (approximately)
/*!40000 ALTER TABLE `p_unit` DISABLE KEYS */;
INSERT INTO `p_unit` (`unit_id`, `name`, `stock`, `created`, `updated`) VALUES
	(1, 'Mout Bromo Tours', 12, '2020-05-07 00:00:00', '0000-00-00 00:00:00'),
	(2, 'Banyuwangi', 10, '2020-05-07 00:00:00', '0000-00-00 00:00:00'),
	(3, 'Malang', 4, '2020-05-07 00:00:00', '0000-00-00 00:00:00'),
	(4, 'Yogyakarta', 2, '2020-05-07 00:00:00', '0000-00-00 00:00:00'),
	(5, 'Bali Island Tour', 3, '2020-05-07 00:00:00', '0000-00-00 00:00:00'),
	(6, 'Nusa Penida Tour', 6, '2020-05-07 00:00:00', '0000-00-00 00:00:00'),
	(7, 'Nusa Lembongan Tour', 5, '2020-05-07 00:00:00', '0000-00-00 00:00:00'),
	(8, 'Lombok Island  Tour', 9, '2020-05-07 00:00:00', '0000-00-00 00:00:00'),
	(9, 'Mount Rinjani Trekking', 7, '2020-05-07 00:00:00', '0000-00-00 00:00:00'),
	(10, 'Gili Islands Tour', 1, '2020-05-07 00:00:00', '0000-00-00 00:00:00');
/*!40000 ALTER TABLE `p_unit` ENABLE KEYS */;

-- Dumping structure for table pos.supplier
CREATE TABLE IF NOT EXISTS `supplier` (
  `supplier_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(225) DEFAULT NULL,
  `description` text NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`supplier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table pos.supplier: ~4 rows (approximately)
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` (`supplier_id`, `name`, `phone`, `address`, `description`, `created`, `updated`) VALUES
	(1, 'Agen Tour Songgon', '081336914904', 'Songgon, Banyuwangi', 'Agen Rumahan', '2020-05-04 05:34:54', NULL),
	(2, 'Miftahul Huda', '081358588519', 'Purwoharjo, Banyuwangi', 'Supliyer ke 2', '2020-05-04 05:35:30', NULL),
	(3, 'Tour Fun', '087755635625', 'Ambulu, Jember', 'Hanya melayani tour  pada Hari libur', '2020-05-04 05:36:00', NULL),
	(4, 'Septianda Reza Maulana', '082257125415', ' Perumahan Jati Asri Blok A3, Kebon Agung, Kraksaan-Probolinggo', 'Agen Perjalanan daerah probolinggo saja', '2020-05-04 05:36:39', NULL);
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;

-- Dumping structure for table pos.t_cart
CREATE TABLE IF NOT EXISTS `t_cart` (
  `cart_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(10) NOT NULL,
  `discount_item` int(11) NOT NULL DEFAULT 0,
  `total` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`cart_id`),
  KEY `item_id` (`item_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `t_cart_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `p_item` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `t_cart_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table pos.t_cart: ~0 rows (approximately)
/*!40000 ALTER TABLE `t_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_cart` ENABLE KEYS */;

-- Dumping structure for table pos.t_sale
CREATE TABLE IF NOT EXISTS `t_sale` (
  `sale_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice` varchar(50) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `total_price` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `final_price` int(11) NOT NULL,
  `cash` int(11) NOT NULL,
  `remaining` int(11) NOT NULL,
  `note` text NOT NULL,
  `date` date NOT NULL,
  `user_id` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`sale_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table pos.t_sale: ~0 rows (approximately)
/*!40000 ALTER TABLE `t_sale` DISABLE KEYS */;
INSERT INTO `t_sale` (`sale_id`, `invoice`, `customer_id`, `total_price`, `discount`, `final_price`, `cash`, `remaining`, `note`, `date`, `user_id`, `created`) VALUES
	(1, 'MP2005150001', NULL, 3800000, 0, 3800000, 3800000, 0, 'lunas', '2020-05-15', 1, '2020-05-15 06:36:13'),
	(2, 'MP2007030001', NULL, 2775000, 0, 2775000, 2775000, 0, '', '2020-07-03', 1, '2020-07-03 21:56:45');
/*!40000 ALTER TABLE `t_sale` ENABLE KEYS */;

-- Dumping structure for table pos.t_sale_detail
CREATE TABLE IF NOT EXISTS `t_sale_detail` (
  `detail_id` int(11) NOT NULL AUTO_INCREMENT,
  `sale_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(10) NOT NULL,
  `discount_item` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  PRIMARY KEY (`detail_id`),
  KEY `item_id` (`item_id`),
  CONSTRAINT `t_sale_detail_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `p_item` (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table pos.t_sale_detail: ~0 rows (approximately)
/*!40000 ALTER TABLE `t_sale_detail` DISABLE KEYS */;
INSERT INTO `t_sale_detail` (`detail_id`, `sale_id`, `item_id`, `price`, `qty`, `discount_item`, `total`) VALUES
	(1, 1, 8, 2000000, 2, 0, 3800000),
	(2, 2, 28, 2775000, 1, 0, 2775000);
/*!40000 ALTER TABLE `t_sale_detail` ENABLE KEYS */;

-- Dumping structure for table pos.t_stock
CREATE TABLE IF NOT EXISTS `t_stock` (
  `stock_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `type` enum('in','out') NOT NULL,
  `detail` varchar(225) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `qty` int(10) NOT NULL,
  `date` date NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`stock_id`),
  KEY `item_id` (`item_id`),
  KEY `supplier_id` (`supplier_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `t_stock_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `p_item` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `t_stock_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`supplier_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `t_stock_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table pos.t_stock: ~8 rows (approximately)
/*!40000 ALTER TABLE `t_stock` DISABLE KEYS */;
INSERT INTO `t_stock` (`stock_id`, `item_id`, `type`, `detail`, `supplier_id`, `qty`, `date`, `created`, `user_id`) VALUES
	(1, 8, 'in', 'tambah stock', NULL, 6, '2020-05-15', '2020-05-15 05:59:13', 1),
	(2, 15, 'in', 'add stock from irvan', 1, 15, '2020-05-15', '2020-05-15 05:59:32', 1),
	(3, 19, 'in', 'irvan', 3, 12, '2020-05-15', '2020-05-15 06:02:10', 1),
	(4, 23, 'in', 'tambah stock', 3, 15, '2020-05-15', '2020-05-15 06:02:39', 1),
	(5, 8, 'in', 'tambah stock', 1, 8, '2020-05-15', '2020-05-15 06:03:02', 1),
	(6, 21, 'in', 'tambah stock', 4, 15, '2020-05-15', '2020-05-15 06:03:28', 1),
	(7, 24, 'in', 'tambah stock', 2, 6, '2020-05-15', '2020-05-15 06:03:48', 1),
	(8, 23, 'out', 'pengurangan dampak covid', NULL, 3, '2020-05-15', '2020-05-15 06:04:22', 1);
/*!40000 ALTER TABLE `t_stock` ENABLE KEYS */;

-- Dumping structure for table pos.user
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `gender` enum('L','P') NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `address` varchar(225) DEFAULT NULL,
  `level` enum('1','2') NOT NULL COMMENT '	1:admin, 2:kasir',
  `status` enum('Y','N') NOT NULL,
  `avatar` varchar(100) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table pos.user: ~7 rows (approximately)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`user_id`, `name`, `username`, `gender`, `email`, `password`, `address`, `level`, `status`, `avatar`, `created`, `updated`) VALUES
	(1, 'M. Irvan Alfi Hidayat', 'Admin', 'L', 'irvanhidayat0623@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'Banyuwangi', '1', 'Y', '1.jpg', '2020-06-21 22:03:31', NULL),
	(2, 'Septianda Reza Maulana', 'septiandareza', 'L', 'septiandareza07@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'Perumahan Jati Asri Blok A3', '1', 'Y', '2.jpg', '2020-06-21 22:03:35', NULL),
	(3, 'Mirza Zarqani Rayhan', 'mirza', 'L', 'mirza@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'Malang', '2', 'Y', 'user-010720-512f579d37.JPG', '2020-09-12 11:10:19', NULL),
	(5, 'Sifa Safira', 'safira', 'P', 'safira14@gmail.com', '7c222fb2927d828af22f592134e8932480637c0d', 'Malang Jawa Timur', '2', 'N', 'user-010720-1042121050.JPG', '2020-07-01 20:51:16', NULL),
	(6, 'Febri Alia Anggreini', 'febri', 'P', 'febrialia_anggreini@rocketmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'Probolinggo', '2', 'N', '5.jpg', '2020-06-21 22:03:54', NULL),
	(7, 'alan perdana', 'alanWalker', 'L', 'alan@gmail.com', '12345678', 'mojokerto Jawa Timur', '2', 'N', 'user-010720-1bf9f2796b.JPG', '2020-07-01 20:50:17', NULL),
	(8, 'Wildanul Irham', 'danu123', 'L', 'wildanulirham26@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'padang, singojuruh, banyuwangi', '2', 'N', 'user-210620-314affbfb3.jpg', '2020-07-01 20:57:15', NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

-- Dumping structure for trigger pos.stock_min
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';
DELIMITER //
CREATE TRIGGER `stock_min` AFTER INSERT ON `t_sale_detail` FOR EACH ROW BEGIN
	UPDATE p_item SET stock = stock - NEW.qty
    WHERE item_id = NEW.item_id;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
