-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.19 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping data for table zuchan.ci_sessions: 2 rows
/*!40000 ALTER TABLE `ci_sessions` DISABLE KEYS */;
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
	('jn4lloovf6ce1kksneppeo69ft7dcav9', '::1', 1560932783, _binary 0x5F5F63695F6C6173745F726567656E65726174657C693A313536303933323738333B),
	('6m9q8phlev3u7nkfl2i9rnmr08hv70am', '::1', 1560934302, _binary 0x5F5F63695F6C6173745F726567656E65726174657C693A313536303933343330323B),
	('bs70q5usohrekaj5kvmqo44up7ri5qin', '::1', 1560934608, _binary 0x5F5F63695F6C6173745F726567656E65726174657C693A313536303933343630383B69647C733A313A2239223B757365727C4F3A383A22737464436C617373223A31333A7B733A323A226964223B733A313A2239223B733A383A2267726F75705F6964223B733A313A2230223B733A343A22726F6C65223B733A353A2261646D696E223B733A383A22757365726E616D65223B733A353A226661747479223B733A353A22656D61696C223B733A31353A2261646D696E40676D61696C2E636F6D223B733A383A2270617373776F7264223B733A36303A222432792431302453673548784D39686654587935783866306137362E2E742F646B44393563554E4D4A4E567977557A623635544D496C3758435A4A4B223B733A323A226970223B733A31343A223138302E3135302E38322E313935223B733A31303A22757365725F6167656E74223B733A3131343A224D6F7A696C6C612F352E30202857696E646F7773204E542031302E303B2057696E36343B2078363429204170706C655765624B69742F3533372E333620284B48544D4C2C206C696B65204765636B6F29204368726F6D652F37352E302E333737302E3930205361666172692F3533372E3336223B733A31303A22637265617465645F6174223B733A31393A22323031392D30362D31352030333A35323A3338223B733A31303A226C6173745F6C6F67696E223B733A31393A22323031392D30362D31392030383A33373A3538223B733A363A22617661746172223B733A353A22392E706E67223B733A353A226C6162656C223B733A31373A224561746572206F66206275727269746F73223B733A393A22706F7374636F756E74223B733A313A2234223B7D6C6173745F706F73747C693A313536303933343436313B),
	('mb6tlhqfmf423ab69seib97g81m1ss49', '::1', 1560935035, _binary 0x5F5F63695F6C6173745F726567656E65726174657C693A313536303933353033353B69647C733A313A2239223B757365727C4F3A383A22737464436C617373223A31333A7B733A323A226964223B733A313A2239223B733A383A2267726F75705F6964223B733A313A2230223B733A343A22726F6C65223B733A353A2261646D696E223B733A383A22757365726E616D65223B733A353A226661747479223B733A353A22656D61696C223B733A31353A2261646D696E40676D61696C2E636F6D223B733A383A2270617373776F7264223B733A36303A222432792431302453673548784D39686654587935783866306137362E2E742F646B44393563554E4D4A4E567977557A623635544D496C3758435A4A4B223B733A323A226970223B733A31343A223138302E3135302E38322E313935223B733A31303A22757365725F6167656E74223B733A3131343A224D6F7A696C6C612F352E30202857696E646F7773204E542031302E303B2057696E36343B2078363429204170706C655765624B69742F3533372E333620284B48544D4C2C206C696B65204765636B6F29204368726F6D652F37352E302E333737302E3930205361666172692F3533372E3336223B733A31303A22637265617465645F6174223B733A31393A22323031392D30362D31352030333A35323A3338223B733A31303A226C6173745F6C6F67696E223B733A31393A22323031392D30362D31392030383A33373A3538223B733A363A22617661746172223B733A353A22392E706E67223B733A353A226C6162656C223B733A31373A224561746572206F66206275727269746F73223B733A393A22706F7374636F756E74223B733A313A2234223B7D6C6173745F706F73747C693A313536303933343830353B),
	('ripibtjq7gjtbtvopjkr0il93140mh9r', '::1', 1560935753, _binary 0x5F5F63695F6C6173745F726567656E65726174657C693A313536303933353632363B69647C733A323A223231223B757365727C4F3A383A22737464436C617373223A31333A7B733A323A226964223B733A323A223231223B733A383A2267726F75705F6964223B733A313A2230223B733A343A22726F6C65223B733A343A2275736572223B733A383A22757365726E616D65223B733A363A2254656B6B6F6E223B733A353A22656D61696C223B733A31353A2274657374406D61696C2E636F6D3130223B733A383A2270617373776F7264223B733A36303A2224327924313024446F7762756B5855507765576C337959696C78474F65395779576243376C5A797177587150717937536F797950715762756852354F223B733A323A226970223B733A31343A223138302E3135302E38322E313935223B733A31303A22757365725F6167656E74223B733A3131343A224D6F7A696C6C612F352E30202857696E646F7773204E542031302E303B2057696E36343B2078363429204170706C655765624B69742F3533372E333620284B48544D4C2C206C696B65204765636B6F29204368726F6D652F37352E302E333737302E3930205361666172692F3533372E3336223B733A31303A22637265617465645F6174223B733A31393A22323031392D30362D31362030363A30363A3530223B733A31303A226C6173745F6C6F67696E223B733A31393A22323031392D30362D31362030363A30373A3437223B733A363A22617661746172223B733A363A2232312E6A7067223B733A353A226C6162656C223B733A383A22436F6E6372657465223B733A393A22706F7374636F756E74223B733A313A2230223B7D6C6173745F706F73747C693A313536303933353732333B);
/*!40000 ALTER TABLE `ci_sessions` ENABLE KEYS */;

-- Dumping data for table zuchan.forgot_password: 0 rows
/*!40000 ALTER TABLE `forgot_password` DISABLE KEYS */;
/*!40000 ALTER TABLE `forgot_password` ENABLE KEYS */;

-- Dumping data for table zuchan.groups: 0 rows
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;

-- Dumping data for table zuchan.mailing: 0 rows
/*!40000 ALTER TABLE `mailing` DISABLE KEYS */;
/*!40000 ALTER TABLE `mailing` ENABLE KEYS */;

-- Dumping data for table zuchan.posts: 0 rows
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` (`id`, `message`, `created_by`, `created`, `modified_by`, `modified`, `flags`) VALUES
	(73, 'Chocolate candy jelly-o apple pie lollipop lemon drops cake cake chupa chups. Wafer dragée fruitcake. Cake cookie bonbon halvah soufflé. Cake apple pie apple pie muffin caramels wafer.\r\n\r\nPowder chocolate cake chupa chups ice cream lollipop caramels dragée soufflé pastry. Muffin jelly bear claw ice cream tart dragée cookie. Jelly-o halvah cookie. Topping liquorice jelly cake.', 9, '2019-06-19 08:54:21', NULL, NULL, 0),
	(74, 'Chocolate bar candy halvah cookie cheesecake apple pie pie carrot cake. Muffin donut lollipop toffee sweet roll biscuit candy canes bear claw danish. Chocolate bar gingerbread croissant sweet roll ice cream halvah. Soufflé apple pie marzipan tootsie roll danish.\r\n\r\nTootsie roll tart lollipop gingerbread sesame snaps ice cream topping. Tiramisu powder gingerbread marshmallow jelly-o chupa chups liquorice. Donut donut jelly-o jelly sugar plum. Oat cake gummies liquorice marshmallow soufflé chocolate marshmallow tootsie roll pastry.', 9, '2019-06-19 08:57:16', NULL, NULL, 0),
	(75, 'Fruitcake candy liquorice marshmallow. Chocolate bar chocolate wafer danish tart ice cream ice cream cheesecake danish. Danish soufflé marshmallow donut pastry. Cookie topping jelly beans wafer chocolate cake chupa chups fruitcake.\r\n\r\nChocolate bar candy halvah cookie cheesecake apple pie pie carrot cake. Muffin donut lollipop toffee sweet roll biscuit candy canes bear claw danish. Chocolate bar gingerbread croissant sweet roll ice cream halvah. Soufflé apple pie marzipan tootsie roll danish.', 9, '2019-06-19 08:57:35', NULL, NULL, 0),
	(76, 'Powder chocolate cake chupa chups ice cream lollipop caramels dragée soufflé pastry. Muffin jelly bear claw ice cream tart dragée cookie. Jelly-o halvah cookie. Topping liquorice jelly cake.\r\n\r\n', 9, '2019-06-19 08:57:59', NULL, NULL, 0),
	(77, 'Tootsie roll tart lollipop gingerbread sesame snaps ice cream topping. Tiramisu powder gingerbread marshmallow jelly-o chupa chups liquorice. Donut donut jelly-o jelly sugar plum. Oat cake gummies liquorice marshmallow soufflé chocolate marshmallow tootsie roll pastry.\r\n\r\n', 9, '2019-06-19 08:58:21', NULL, NULL, 0),
	(78, 'Powder chocolate cake chupa chups ice cream lollipop caramels dragée soufflé pastry. Muffin jelly bear claw ice cream tart dragée cookie. Jelly-o halvah cookie. Topping liquorice jelly cake.\r\n\r\n', 9, '2019-06-19 08:58:39', NULL, NULL, 0),
	(79, 'Fruitcake candy liquorice marshmallow. Chocolate bar chocolate wafer danish tart ice cream ice cream cheesecake danish. Danish soufflé marshmallow donut pastry. Cookie topping jelly beans wafer chocolate cake chupa chups fruitcake.\r\n\r\n', 9, '2019-06-19 08:58:56', NULL, NULL, 0),
	(80, 'Powder chocolate cake chupa chups ice cream lollipop caramels dragée soufflé pastry. Muffin jelly bear claw ice cream tart dragée cookie. Jelly-o halvah cookie. Topping liquorice jelly cake.\r\n\r\n', 9, '2019-06-19 08:59:13', NULL, NULL, 0),
	(81, 'Fruitcake candy liquorice marshmallow. Chocolate bar chocolate wafer danish tart ice cream ice cream cheesecake danish. Danish soufflé marshmallow donut pastry. Cookie topping jelly beans wafer chocolate cake chupa chups fruitcake.\r\n\r\n', 9, '2019-06-19 08:59:35', NULL, NULL, 0),
	(82, 'Tootsie roll tart lollipop gingerbread sesame snaps ice cream topping. Tiramisu powder gingerbread marshmallow jelly-o chupa chups liquorice. Donut donut jelly-o jelly sugar plum. Oat cake gummies liquorice marshmallow soufflé chocolate marshmallow tootsie roll pastry.\r\n\r\n', 9, '2019-06-19 08:59:46', NULL, NULL, 0),
	(83, 'Chocolate candy jelly-o apple pie lollipop lemon drops cake cake chupa chups. Wafer dragée fruitcake. Cake cookie bonbon halvah soufflé. Cake apple pie apple pie muffin caramels wafer.\r\n\r\n', 9, '2019-06-19 09:00:05', NULL, NULL, 0),
	(84, 'Tootsie roll tart lollipop gingerbread sesame snaps ice cream topping. Tiramisu powder gingerbread marshmallow jelly-o chupa chups liquorice. Donut donut jelly-o jelly sugar plum. Oat cake gummies liquorice marshmallow soufflé chocolate marshmallow tootsie roll pastry.\r\n\r\n', 11, '2019-06-19 09:04:32', 9, '2019-06-19 09:10:41', 0),
	(85, 'Fruitcake candy liquorice marshmallow. Chocolate bar chocolate wafer danish tart ice cream ice cream cheesecake danish. Danish soufflé marshmallow donut pastry. Cookie topping jelly beans wafer chocolate cake chupa chups fruitcake.\r\n\r\n', 11, '2019-06-19 09:04:46', NULL, NULL, 0),
	(86, 'Chocolate bar candy halvah cookie cheesecake apple pie pie carrot cake. Muffin donut lollipop toffee sweet roll biscuit candy canes bear claw danish. Chocolate bar gingerbread croissant sweet roll ice cream halvah. Soufflé apple pie marzipan tootsie roll danish.\r\n\r\n', 11, '2019-06-19 09:04:54', NULL, NULL, 0),
	(87, 'Fruitcake candy liquorice marshmallow. Chocolate bar chocolate wafer danish tart ice cream ice cream cheesecake danish. Danish soufflé marshmallow donut pastry. Cookie topping jelly beans wafer chocolate cake chupa chups fruitcake.\r\n\r\n', 11, '2019-06-19 09:05:04', NULL, NULL, 0),
	(88, 'Powder chocolate cake chupa chups ice cream lollipop caramels dragée soufflé pastry. Muffin jelly bear claw ice cream tart dragée cookie. Jelly-o halvah cookie. Topping liquorice jelly cake.\r\n\r\n', 11, '2019-06-19 09:05:18', NULL, NULL, 0),
	(89, 'Fruitcake candy liquorice marshmallow. Chocolate bar chocolate wafer danish tart ice cream ice cream cheesecake danish. Danish soufflé marshmallow donut pastry. Cookie topping jelly beans wafer chocolate cake chupa chups fruitcake.\r\n\r\n', 11, '2019-06-19 09:05:24', NULL, NULL, 0),
	(90, 'Fruitcake candy liquorice marshmallow. Chocolate bar chocolate wafer danish tart ice cream ice cream cheesecake danish. Danish soufflé marshmallow donut pastry. Cookie topping jelly beans wafer chocolate cake chupa chups fruitcake.\r\n\r\n', 10, '2019-06-19 09:06:04', 9, '2019-06-19 09:10:41', 0),
	(91, ' #86 Chocolate bar candy halvah cookie cheesecake apple pie pie carrot cake. Muffin donut lollipop toffee sweet roll biscuit candy canes bear claw danish. Chocolate bar gingerbread croissant sweet roll ice cream halvah. Soufflé apple pie marzipan tootsie roll danish.\r\n\r\n', 10, '2019-06-19 09:06:13', NULL, NULL, 0),
	(92, 'Chocolate bar candy halvah cookie cheesecake apple pie pie carrot cake. Muffin donut lollipop toffee sweet roll biscuit candy canes bear claw danish. Chocolate bar gingerbread croissant sweet roll ice cream halvah. Soufflé apple pie marzipan tootsie roll danish.\r\n\r\n', 10, '2019-06-19 09:06:21', NULL, NULL, 0),
	(93, 'Chocolate bar candy halvah cookie cheesecake apple pie pie carrot cake. Muffin donut lollipop toffee sweet roll biscuit candy canes bear claw danish. Chocolate bar gingerbread croissant sweet roll ice cream halvah. Soufflé apple pie marzipan tootsie roll danish.\r\n\r\n', 10, '2019-06-19 09:06:25', NULL, NULL, 0),
	(94, 'Chocolate bar candy halvah cookie cheesecake apple pie pie carrot cake. Muffin donut lollipop toffee sweet roll biscuit candy canes bear claw danish. Chocolate bar gingerbread croissant sweet roll ice cream halvah. Soufflé apple pie marzipan tootsie roll danish.\r\n\r\n', 10, '2019-06-19 09:06:28', NULL, NULL, 0),
	(95, 'tootsie ', 13, '2019-06-19 09:07:08', 9, '2019-06-19 09:10:40', 0),
	(96, ' #86\r\n\r\nPowder chocolate cake chupa chups ice cream lollipop caramels dragée soufflé pastry. Muffin jelly bear claw ice cream tart dragée cookie. Jelly-o halvah cookie. Topping liquorice jelly cake.\r\n\r\n', 13, '2019-06-19 09:07:32', NULL, NULL, 0),
	(97, 'Fruitcake candy liquorice marshmallow. Chocolate bar chocolate wafer danish tart ice cream ice cream cheesecake danish. Danish soufflé marshmallow donut pastry. Cookie topping jelly beans wafer chocolate cake chupa chups fruitcake.\r\n\r\n', 13, '2019-06-19 09:07:40', NULL, NULL, 0),
	(98, 'Fruitcake candy liquorice marshmallow. Chocolate bar chocolate wafer danish tart ice cream ice cream cheesecake danish. Danish soufflé marshmallow donut pastry. Cookie topping jelly beans wafer chocolate cake chupa chups fruitcake.\r\n\r\n', 13, '2019-06-19 09:07:44', NULL, NULL, 0),
	(99, 'Fruitcake candy liquorice marshmallow. Chocolate bar chocolate wafer danish tart ice cream ice cream cheesecake danish. Danish soufflé marshmallow donut pastry. Cookie topping jelly beans wafer chocolate cake chupa chups fruitcake.\r\n\r\n', 13, '2019-06-19 09:07:48', NULL, NULL, 0),
	(100, 'Fruitcake candy liquorice marshmallow. Chocolate bar chocolate wafer danish tart ice cream ice cream cheesecake danish. Danish soufflé marshmallow donut pastry. Cookie topping jelly beans wafer chocolate cake chupa chups fruitcake.\r\n\r\n', 13, '2019-06-19 09:07:54', NULL, NULL, 0),
	(101, 'Fruitcake candy liquorice marshmallow. Chocolate bar chocolate wafer danish tart ice cream ice cream cheesecake danish. Danish soufflé marshmallow donut pastry. Cookie topping jelly beans wafer chocolate cake chupa chups fruitcake.\r\n\r\n', 13, '2019-06-19 09:07:58', NULL, NULL, 0),
	(102, 'Fruitcake candy liquorice marshmallow. Chocolate bar chocolate wafer danish tart ice cream ice cream cheesecake danish. Danish soufflé marshmallow donut pastry. Cookie topping jelly beans wafer chocolate cake chupa chups fruitcake.\r\n\r\n', 13, '2019-06-19 09:08:07', NULL, NULL, 0),
	(103, 'Tootsie roll tart lollipop gingerbread sesame snaps ice cream topping. Tiramisu powder gingerbread marshmallow jelly-o chupa chups liquorice. Donut donut jelly-o jelly sugar plum. Oat cake gummies liquorice marshmallow soufflé chocolate marshmallow tootsie roll pastry.\r\n\r\n', 13, '2019-06-19 09:08:16', NULL, NULL, 0),
	(104, 'Fruitcake candy liquorice marshmallow. Chocolate bar chocolate wafer danish tart ice cream ice cream cheesecake danish. Danish soufflé marshmallow donut pastry. Cookie topping jelly beans wafer chocolate cake chupa chups fruitcake.\r\n\r\n', 18, '2019-06-19 09:08:59', 9, '2019-06-19 09:10:39', 0),
	(105, 'Chocolate bar candy halvah cookie ', 18, '2019-06-19 09:09:12', NULL, NULL, 0),
	(106, 'Chocolate bar candy halvah cookie ', 18, '2019-06-19 09:09:18', NULL, NULL, 0),
	(107, 'Tootsie roll tart lollipop gingerbread sesame snaps ice cream topping. Tiramisu powder gingerbread marshmallow jelly-o chupa chups liquorice. Donut donut jelly-o jelly sugar plum. Oat cake gummies liquorice marshmallow soufflé chocolate marshmallow tootsie roll pastry.\r\n\r\n', 18, '2019-06-19 09:09:26', NULL, NULL, 0),
	(108, ' #97 Chocolate bar candy halvah cookie ', 18, '2019-06-19 09:09:44', NULL, NULL, 0),
	(109, 'Chocolate bar candy halvah cookie ', 18, '2019-06-19 09:09:50', NULL, NULL, 0),
	(110, 'Chocolate bar candy halvah cookie ', 18, '2019-06-19 09:09:54', NULL, NULL, 0),
	(111, 'Powder chocolate cake chupa chups ice cream lollipop caramels dragée soufflé pastry. Muffin jelly bear claw ice cream tart dragée cookie. Jelly-o halvah cookie. Topping liquorice jelly cake.\r\n\r\n', 18, '2019-06-19 09:10:08', NULL, NULL, 0),
	(112, 'Tootsie roll tart lollipop gingerbread sesame snaps ice cream topping. Tiramisu powder gingerbread marshmallow jelly-o chupa chups liquorice. Donut donut jelly-o jelly sugar plum. Oat cake gummies liquorice marshmallow soufflé chocolate marshmallow tootsie roll pastry.\r\n\r\n', 9, '2019-06-19 09:10:51', NULL, NULL, 0),
	(113, 'Tootsie roll tart lollipop gingerbread sesame snaps ice cream topping. Tiramisu powder gingerbread marshmallow jelly-o chupa chups liquorice. Donut donut jelly-o jelly sugar plum. Oat cake gummies liquorice marshmallow soufflé chocolate marshmallow tootsie roll pastry.\r\n\r\n', 9, '2019-06-19 09:10:55', NULL, NULL, 0),
	(114, 'Tootsie roll tart lollipop gingerbread sesame snaps ice cream topping. Tiramisu powder gingerbread marshmallow jelly-o chupa chups liquorice. Donut donut jelly-o jelly sugar plum. Oat cake gummies liquorice marshmallow soufflé chocolate marshmallow tootsie roll pastry.\r\n\r\n', 9, '2019-06-19 09:11:00', NULL, NULL, 0),
	(115, ' #109 Powder chocolate cake chupa chups ice cream lollipop caramels dragée soufflé pastry. Muffin jelly bear claw ice cream tart dragée cookie. Jelly-o halvah cookie. Topping liquorice jelly cake.\r\n\r\nFruitcake candy liquorice marshmallow. Chocolate bar chocolate wafer danish tart ice cream ice cream cheesecake danish. Danish soufflé marshmallow donut pastry. Cookie topping jelly beans wafer chocolate cake chupa chups fruitcake.\r\n\r\nChocolate bar candy halvah cookie cheesecake apple pie pie carrot cake. Muffin donut lollipop toffee sweet roll biscuit candy canes bear claw danish. Chocolate bar gingerbread croissant sweet roll ice cream halvah. Soufflé apple pie marzipan tootsie roll danish.', 14, '2019-06-19 09:12:16', NULL, NULL, 0),
	(116, 'Chocolate candy jelly-o apple pie lollipop lemon drops cake cake chupa chups. Wafer dragée fruitcake. Cake cookie bonbon halvah soufflé. Cake apple pie apple pie muffin caramels wafer.\r\n\r\nPowder chocolate cake chupa chups ice cream lollipop caramels dragée soufflé pastry. Muffin jelly bear claw ice cream tart dragée cookie. Jelly-o halvah cookie. Topping liquorice jelly cake.\r\n\r\nFruitcake candy liquorice marshmallow. Chocolate bar chocolate wafer danish tart ice cream ice cream cheesecake danish. Danish soufflé marshmallow donut pastry. Cookie topping jelly beans wafer chocolate cake chupa chups fruitcake.', 14, '2019-06-19 09:12:30', NULL, NULL, 0),
	(117, 'Chocolate candy jelly-o apple pie lollipop lemon drops cake cake chupa chups. Wafer dragée fruitcake. Cake cookie bonbon halvah soufflé. Cake apple pie apple pie muffin caramels wafer.\r\n\r\nPowder chocolate cake chupa chups ice cream lollipop caramels dragée soufflé pastry. Muffin jelly bear claw ice cream tart dragée cookie. Jelly-o halvah cookie. Topping liquorice jelly cake.\r\n\r\nFruitcake candy liquorice marshmallow. Chocolate bar chocolate wafer danish tart ice cream ice cream cheesecake danish. Danish soufflé marshmallow donut pastry. Cookie topping jelly beans wafer chocolate cake chupa chups fruitcake.', 14, '2019-06-19 09:12:34', NULL, NULL, 0),
	(118, 'Chocolate candy jelly-o apple pie lollipop lemon drops cake cake chupa chups. Wafer dragée fruitcake. Cake cookie bonbon halvah soufflé. Cake apple pie apple pie muffin caramels wafer.\r\n\r\nPowder chocolate cake chupa chups ice cream lollipop caramels dragée soufflé pastry. Muffin jelly bear claw ice cream tart dragée cookie. Jelly-o halvah cookie. Topping liquorice jelly cake.\r\n\r\nFruitcake candy liquorice marshmallow. Chocolate bar chocolate wafer danish tart ice cream ice cream cheesecake danish. Danish soufflé marshmallow donut pastry. Cookie topping jelly beans wafer chocolate cake chupa chups fruitcake.', 14, '2019-06-19 09:12:38', NULL, NULL, 0),
	(119, 'Chocolate candy jelly-o apple pie lollipop lemon drops cake cake chupa chups. Wafer dragée fruitcake. Cake cookie bonbon halvah soufflé. Cake apple pie apple pie muffin caramels wafer.\r\n\r\nPowder chocolate cake chupa chups ice cream lollipop caramels dragée soufflé pastry. Muffin jelly bear claw ice cream tart dragée cookie. Jelly-o halvah cookie. Topping liquorice jelly cake.\r\n\r\nFruitcake candy liquorice marshmallow. Chocolate bar chocolate wafer danish tart ice cream ice cream cheesecake danish. Danish soufflé marshmallow donut pastry. Cookie topping jelly beans wafer chocolate cake chupa chups fruitcake.', 14, '2019-06-19 09:12:43', NULL, NULL, 0),
	(120, 'Chocolate candy jelly-o apple pie lollipop lemon drops cake cake chupa chups. Wafer dragée fruitcake. Cake cookie bonbon halvah soufflé. Cake apple pie apple pie muffin caramels wafer.\r\n\r\nPowder chocolate cake chupa chups ice cream lollipop caramels dragée soufflé pastry. Muffin jelly bear claw ice cream tart dragée cookie. Jelly-o halvah cookie. Topping liquorice jelly cake.\r\n\r\nFruitcake candy liquorice marshmallow. Chocolate bar chocolate wafer danish tart ice cream ice cream cheesecake danish. Danish soufflé marshmallow donut pastry. Cookie topping jelly beans wafer chocolate cake chupa chups fruitcake.', 14, '2019-06-19 09:12:47', NULL, NULL, 0),
	(121, 'Chocolate candy jelly-o apple pie lollipop lemon drops cake cake chupa chups. Wafer dragée fruitcake. Cake cookie bonbon halvah soufflé. Cake apple pie apple pie muffin caramels wafer.\r\n\r\nPowder chocolate cake chupa chups ice cream lollipop caramels dragée soufflé pastry. Muffin jelly bear claw ice cream tart dragée cookie. Jelly-o halvah cookie. Topping liquorice jelly cake.\r\n\r\nFruitcake candy liquorice marshmallow. Chocolate bar chocolate wafer danish tart ice cream ice cream cheesecake danish. Danish soufflé marshmallow donut pastry. Cookie topping jelly beans wafer chocolate cake chupa chups fruitcake.', 14, '2019-06-19 09:12:51', NULL, NULL, 0),
	(122, 'Chocolate candy jelly-o apple pie lollipop lemon drops cake cake chupa chups. Wafer dragée fruitcake. Cake cookie bonbon halvah soufflé. Cake apple pie apple pie muffin caramels wafer.\r\n\r\nPowder chocolate cake chupa chups ice cream lollipop caramels dragée soufflé pastry. Muffin jelly bear claw ice cream tart dragée cookie. Jelly-o halvah cookie. Topping liquorice jelly cake.\r\n\r\nFruitcake candy liquorice marshmallow. Chocolate bar chocolate wafer danish tart ice cream ice cream cheesecake danish. Danish soufflé marshmallow donut pastry. Cookie topping jelly beans wafer chocolate cake chupa chups fruitcake.', 14, '2019-06-19 09:12:56', NULL, NULL, 0),
	(123, 'Chocolate candy jelly-o apple pie lollipop lemon drops cake cake chupa chups. Wafer dragée fruitcake. Cake cookie bonbon halvah soufflé. Cake apple pie apple pie muffin caramels wafer.\r\n\r\nPowder chocolate cake chupa chups ice cream lollipop caramels dragée soufflé pastry. Muffin jelly bear claw ice cream tart dragée cookie. Jelly-o halvah cookie. Topping liquorice jelly cake.\r\n\r\nFruitcake candy liquorice marshmallow. Chocolate bar chocolate wafer danish tart ice cream ice cream cheesecake danish. Danish soufflé marshmallow donut pastry. Cookie topping jelly beans wafer chocolate cake chupa chups fruitcake.', 14, '2019-06-19 09:13:08', NULL, NULL, 0),
	(124, 'Chocolate candy jelly-o apple pie lollipop lemon drops cake cake chupa chups. Wafer dragée fruitcake. Cake cookie bonbon halvah soufflé. Cake apple pie apple pie muffin caramels wafer.\r\n\r\nPowder chocolate cake chupa chups ice cream lollipop caramels dragée soufflé pastry. Muffin jelly bear claw ice cream tart dragée cookie. Jelly-o halvah cookie. Topping liquorice jelly cake.\r\n\r\nFruitcake candy liquorice marshmallow. Chocolate bar chocolate wafer danish tart ice cream ice cream cheesecake danish. Danish soufflé marshmallow donut pastry. Cookie topping jelly beans wafer chocolate cake chupa chups fruitcake.\r\n\r\nChocolate bar candy halvah cookie cheesecake apple pie pie carrot cake. Muffin donut lollipop toffee sweet roll biscuit candy canes bear claw danish. Chocolate bar gingerbread croissant sweet roll ice cream halvah. Soufflé apple pie marzipan tootsie roll danish.\r\n\r\nTootsie roll tart lollipop gingerbread sesame snaps ice cream topping. Tiramisu powder gingerbread marshmallow jelly-o chupa chups liquorice. Donut donut jelly-o jelly sugar plum. Oat cake gummies liquorice marshmallow soufflé chocolate marshmallow tootsie roll pastry.', 14, '2019-06-19 09:13:18', NULL, NULL, 0),
	(125, 'Donut sesame snaps cake gummies danish marshmallow sweet lemon drops pudding. Liquorice oat cake fruitcake jelly danish chupa chups pudding dragée apple pie. Candy macaroon gingerbread candy liquorice sweet roll cotton candy candy canes biscuit. Powder apple pie marzipan cupcake. Fruitcake bonbon croissant sugar plum sugar plum bear claw. Caramels halvah bear claw tiramisu dragée.\r\n\r\n', 21, '2019-06-19 09:14:23', NULL, NULL, 0),
	(126, 'Donut sesame snaps cake gummies danish marshmallow sweet lemon drops pudding. Liquorice oat cake fruitcake jelly danish chupa chups pudding dragée apple pie. Candy macaroon gingerbread candy liquorice sweet roll cotton candy candy canes biscuit. Powder apple pie marzipan cupcake. Fruitcake bonbon croissant sugar plum sugar plum bear claw. Caramels halvah bear claw tiramisu dragée.\r\n\r\n', 21, '2019-06-19 09:14:33', NULL, NULL, 0),
	(127, 'Donut sesame snaps cake gummies danish marshmallow sweet lemon drops pudding. Liquorice oat cake fruitcake jelly danish chupa chups pudding dragée apple pie. Candy macaroon gingerbread candy liquorice sweet roll cotton candy candy canes biscuit. Powder apple pie marzipan cupcake. Fruitcake bonbon croissant sugar plum sugar plum bear claw. Caramels halvah bear claw tiramisu dragée.\r\n\r\n', 21, '2019-06-19 09:14:40', NULL, NULL, 0),
	(128, 'Donut sesame snaps cake gummies danish marshmallow sweet lemon drops pudding. Liquorice oat cake fruitcake jelly danish chupa chups pudding dragée apple pie. Candy macaroon gingerbread candy liquorice sweet roll cotton candy candy canes biscuit. Powder apple pie marzipan cupcake. Fruitcake bonbon croissant sugar plum sugar plum bear claw. Caramels halvah bear claw tiramisu dragée.\r\n\r\n', 21, '2019-06-19 09:14:45', NULL, NULL, 0),
	(129, 'Donut sesame snaps cake gummies danish marshmallow sweet lemon drops pudding. Liquorice oat cake fruitcake jelly danish chupa chups pudding dragée apple pie. Candy macaroon gingerbread candy liquorice sweet roll cotton candy candy canes biscuit. Powder apple pie marzipan cupcake. Fruitcake bonbon croissant sugar plum sugar plum bear claw. Caramels halvah bear claw tiramisu dragée.\r\n\r\n', 21, '2019-06-19 09:14:49', NULL, NULL, 0),
	(130, ' #119\r\nDonut sesame snaps cake gummies danish marshmallow sweet lemon drops pudding. Liquorice oat cake fruitcake jelly danish chupa chups pudding dragée apple pie. Candy macaroon gingerbread candy liquorice sweet roll cotton candy candy canes biscuit. Powder apple pie marzipan cupcake. Fruitcake bonbon croissant sugar plum sugar plum bear claw. Caramels halvah bear claw tiramisu dragée.\r\n\r\n', 21, '2019-06-19 09:14:59', NULL, NULL, 0),
	(131, 'Donut sesame snaps cake gummies danish marshmallow sweet lemon drops pudding. Liquorice oat cake fruitcake jelly danish chupa chups pudding dragée apple pie. Candy macaroon gingerbread candy liquorice sweet roll cotton candy candy canes biscuit. Powder apple pie marzipan cupcake. Fruitcake bonbon croissant sugar plum sugar plum bear claw. Caramels halvah bear claw tiramisu dragée.\r\n\r\n', 21, '2019-06-19 09:15:04', NULL, NULL, 0),
	(132, 'Donut sesame snaps cake gummies danish marshmallow sweet lemon drops pudding. Liquorice oat cake fruitcake jelly danish chupa chups pudding dragée apple pie. Candy macaroon gingerbread candy liquorice sweet roll cotton candy candy canes biscuit. Powder apple pie marzipan cupcake. Fruitcake bonbon croissant sugar plum sugar plum bear claw. Caramels halvah bear claw tiramisu dragée.\r\n\r\n', 21, '2019-06-19 09:15:08', NULL, NULL, 0),
	(133, ' #114\r\n\r\nDonut sesame snaps cake gummies danish marshmallow sweet lemon drops pudding. Liquorice oat cake fruitcake jelly danish chupa chups pudding dragée apple pie. Candy macaroon gingerbread candy liquorice sweet roll cotton candy candy canes biscuit. Powder apple pie marzipan cupcake. Fruitcake bonbon croissant sugar plum sugar plum bear claw. Caramels halvah bear claw tiramisu dragée.\r\n\r\n', 21, '2019-06-19 09:15:23', NULL, NULL, 0);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;

-- Dumping data for table zuchan.profiles: 0 rows
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;

-- Dumping data for table zuchan.replies: 0 rows
/*!40000 ALTER TABLE `replies` DISABLE KEYS */;
INSERT INTO `replies` (`id`, `post_id`, `thread_id`) VALUES
	(36, 86, 27),
	(37, 89, 24),
	(38, 91, 27),
	(39, 92, 35),
	(40, 93, 31),
	(41, 94, 28),
	(42, 96, 27),
	(43, 97, 26),
	(44, 98, 34),
	(45, 99, 28),
	(46, 100, 21),
	(47, 101, 23),
	(48, 105, 25),
	(49, 106, 27),
	(50, 108, 26),
	(51, 109, 28),
	(52, 110, 39),
	(53, 112, 36),
	(54, 113, 35),
	(55, 114, 34),
	(56, 115, 28),
	(57, 116, 37),
	(58, 117, 32),
	(59, 118, 42),
	(60, 119, 39),
	(61, 120, 31),
	(62, 121, 26),
	(63, 122, 30),
	(64, 125, 44),
	(65, 126, 27),
	(66, 127, 37),
	(67, 128, 40),
	(68, 129, 24),
	(69, 130, 39),
	(70, 131, 38),
	(71, 132, 30),
	(72, 133, 34);
/*!40000 ALTER TABLE `replies` ENABLE KEYS */;

-- Dumping data for table zuchan.screenshots: 0 rows
/*!40000 ALTER TABLE `screenshots` DISABLE KEYS */;
INSERT INTO `screenshots` (`id`, `thread_id`, `category`, `status`, `file`, `note`) VALUES
	(20, 32, 'art', 'approved', '20-soufflé-apple-pie.jpg', ''),
	(21, 36, 'screenshot', 'approved', '21-liquorice-marshmallow.jpg', ''),
	(22, 37, 'screenshot', 'approved', '22-naps-ice-cream-topping.jpg', ''),
	(23, 40, 'screenshot', 'approved', '23-cheesecake-danish.png', '');
/*!40000 ALTER TABLE `screenshots` ENABLE KEYS */;

-- Dumping data for table zuchan.threads: 0 rows
/*!40000 ALTER TABLE `threads` DISABLE KEYS */;
INSERT INTO `threads` (`id`, `post_id`, `topic`, `title`, `last_touch`) VALUES
	(21, 73, 'general', 'Welcome to the forum', '2019-06-19 09:07:54'),
	(22, 74, 'market', 'B > Fruitcake candy liquorice', '2019-06-19 08:57:16'),
	(23, 75, 'market', 'S > Powder chocolate cake chupa chups ice cream', '2019-06-19 09:07:58'),
	(24, 76, 'market', 'T > Jelly-o halvah', '2019-06-19 09:14:49'),
	(25, 77, 'market', 'B > Tootsie roll tart lollipop', '2019-06-19 09:09:12'),
	(26, 78, 'market', 'T > Powder chocolate cake', '2019-06-19 09:12:51'),
	(27, 79, 'general', 'Tootsie roll tart lollipop gingerbread sesame snaps', '2019-06-19 09:14:33'),
	(28, 80, 'general', 'Jelly-o halvah cookie. Topping liquorice jelly cake.', '2019-06-19 09:12:16'),
	(29, 81, 'games', 'Danish soufflé marshmallow donut pastry!', '2019-06-19 08:59:35'),
	(30, 82, 'games', 'Tootsie roll ', '2019-06-19 09:15:08'),
	(31, 83, 'irl', 'Chocolate candy jelly-o apple pie ', '2019-06-19 09:12:47'),
	(32, 84, 'screenshot', 'Soufflé apple pie ', '2019-06-19 09:12:34'),
	(33, 85, 'general', 'cheesecake apple pie pie carrot cake.', '2019-06-19 09:04:46'),
	(34, 87, 'irl', 'Cookie topping!!', '2019-06-19 09:15:23'),
	(35, 88, 'games', 'Powder chocolate cake', '2019-06-19 09:10:55'),
	(36, 90, 'screenshot', 'liquorice marshmallow.', '2019-06-19 09:10:51'),
	(37, 95, 'screenshot', 'naps ice cream topping', '2019-06-19 09:14:40'),
	(38, 102, 'games', ' Muffin donut ', '2019-06-19 09:15:04'),
	(39, 103, 'irl', 'Donut donut jelly-o j', '2019-06-19 09:14:59'),
	(40, 104, 'screenshot', 'cheesecake danish', '2019-06-19 09:14:45'),
	(41, 107, 'irl', 'Chocolate bar candy halvah cookie ', '2019-06-19 09:09:26'),
	(42, 111, 'games', 'lollipop caramels dragée soufflé pastry?', '2019-06-19 09:12:38'),
	(43, 123, 'irl', ' Cake cookie bonbon halvah soufflé.', '2019-06-19 09:13:08'),
	(44, 124, 'general', ' Cake cookie bonbon halvah soufflé.', '2019-06-19 09:14:23');
/*!40000 ALTER TABLE `threads` ENABLE KEYS */;

-- Dumping data for table zuchan.users: 0 rows
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `group_id`, `role`, `username`, `email`, `password`, `ip`, `user_agent`, `created_at`, `last_login`, `avatar`, `label`, `postcount`) VALUES
	(9, 0, 'admin', 'fatty', 'admin@gmail.com', '$2Xy5x8f0a76..t/dkD95cUNMJNVywUzb65TMIl7XCZJK', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', '2019-06-15 03:52:38', '2019-06-19 09:11:00', '9.png', 'Eater of burritos', 18),
	(10, 0, 'user', 'codetomin', 'code@gmail.com', '$2NOjGaWmTipK.bXIxdOlq/5Kuvt/v5b/OAE22fcKAute', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', '2019-06-15 03:58:42', '2019-06-19 09:06:28', '10.png', 'appleman', 10),
	(11, 0, 'user', 'Cuce', 'cuce@live.com', '$2eKnCiHHxrX5.hiVAfG5D9yKEg72pc7fm4UDhCZPGltm', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', '2019-06-15 04:18:44', '2019-06-19 09:05:24', '11.png', 'I/L Mage', 10),
	(12, 0, 'user', 'Dusk', 'test@mail.com', '$262shkc8mZGo.MWzIvgWj86bS5Je.ZqP0sLw3OSB4XYC', '180.150.82.195', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.90 Safari/537.36', '2019-06-15 21:16:35', '2019-06-16 06:22:38', 'default', NULL, 2),
	(13, 0, 'user', 'xkitty', 'test@mail.com2', '$2kWfpHHyNYBJeS3bkvn2su.yKBo1gDdDaTRs9ixL/vGi', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', '2019-06-15 22:17:10', '2019-06-19 09:08:16', '13.jpg', 'hello!', 11),
	(14, 0, 'user', 'Bulbasaur', 'test@mail.com3', '$2uTxmA71ffnceaVKvtC7zrlWTr5Quvd.VZXH1VksqzEm', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', '2019-06-15 22:49:42', '2019-06-19 09:13:18', '14.png', 'Squirtle', 12),
	(15, 0, 'user', 'Kalamalker', 'test@mail.com4', '$2r9U7FsBtUi6u9iVZ29AyKZZ15Tg32lg6rqtzMCpXWKe', '180.150.82.195', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.90 Safari/537.36', '2019-06-15 22:54:43', '2019-06-15 23:03:01', '15.jpg', 'Summoner', 5),
	(16, 0, 'user', 'ZombieSushi', 'test@mail.com5', '$2fuV6ViXrX6aOxDSiaOabWSEK7LDigQfRRWTnf11OM2q', '180.150.82.195', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.90 Safari/537.36', '2019-06-15 23:03:50', '2019-06-15 23:08:30', 'default', NULL, 3),
	(17, 0, 'user', 'tsuki', 'test@mail.com6', '$2gavZSmCmM87ecaWD6.6DFJpg6VZhNurMlAvIA69JNTm', '180.150.82.195', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.90 Safari/537.36', '2019-06-15 23:09:22', '2019-06-15 23:19:11', '17.jpg', 'tsukitsuki', 3),
	(18, 0, 'user', 'Jisoo', 'test@mail.com7', '$2l9xTFZ/2ZWqOeYi6bBRvQeAJbvenZvDtn32MNBIraGa', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', '2019-06-15 23:20:23', '2019-06-19 09:10:08', '18.jpg', 'in your area', 14),
	(19, 0, 'user', 'vetour66', 'test@mail.com8', '$2EodUqG7FfCUeZj05RfDkF.fbwDSspyB1pYNP4fIJtKe', '180.150.82.195', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.90 Safari/537.36', '2019-06-15 23:30:17', '2019-06-15 23:33:05', 'default', NULL, 3),
	(20, 0, 'user', 'Akke', 'test@mail.com9', '$2Fs.KxVhwO44.YyACB.H1PqAOpHiJRdMnQ4UO3bx3UpS', '180.150.82.195', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.90 Safari/537.36', '2019-06-15 23:41:29', '2019-06-16 00:04:01', '20.jpg', 'Human', 10),
	(21, 0, 'user', 'Tekkon', 'test@mail.com10', '$2eWl3yYilxGOe9WyWbC7lZyqwXqPqy7SoyyPqWbuhR5O', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', '2019-06-16 06:06:50', '2019-06-19 09:15:23', '21.jpg', 'Concrete', 9),
	(22, 0, 'user', 'kanten', 'entoil@live.com', '$2uMoua.5NQjZeH7DjhySZkYAYG1tzApm9lQhgxzaGPxu', '68.15.229.44', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', '2019-06-16 10:53:52', '2019-06-16 10:53:52', 'default', NULL, 0),
	(25, 0, 'user', 'LiShuwen', 'test@mail.com11', '$2XDamSLGtEtk.TCMqMztMoYvii.Sm3ekXs5jROmLV/nC', '180.150.82.195', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.90 Safari/537.36', '2019-06-16 13:14:10', '2019-06-16 13:16:01', '25.png', '??', 1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
