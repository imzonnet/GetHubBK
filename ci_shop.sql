/*
Navicat MySQL Data Transfer

Source Server         : Zacky Server
Source Server Version : 50534
Source Host           : localhost:3306
Source Database       : ci_shop

Target Server Type    : MYSQL
Target Server Version : 50534
File Encoding         : 65001

Date: 2014-03-22 23:29:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `categories`
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES ('1', 'Áo pull nam', '5');
INSERT INTO `categories` VALUES ('2', 'Quần jean nam', '5');
INSERT INTO `categories` VALUES ('3', 'Áo sơ mi nam', '5');
INSERT INTO `categories` VALUES ('4', 'Áo khoác nam', '5');
INSERT INTO `categories` VALUES ('5', 'Thời trang nam', '0');
INSERT INTO `categories` VALUES ('6', 'Thời trang nữ', '0');
INSERT INTO `categories` VALUES ('7', 'Áo pull nữ', '6');
INSERT INTO `categories` VALUES ('8', 'Áo sơ mi nữ', '6');
INSERT INTO `categories` VALUES ('9', 'Giày nam', '5');
INSERT INTO `categories` VALUES ('10', 'Phụ kiện nam', '5');
INSERT INTO `categories` VALUES ('16', 'Phụ kiện nữ', '6');
INSERT INTO `categories` VALUES ('17', 'Đầm xòe', '6');
INSERT INTO `categories` VALUES ('18', 'Đầm ren', '6');
INSERT INTO `categories` VALUES ('19', 'Phụ kiện nữ', '6');
INSERT INTO `categories` VALUES ('20', 'Zacky', '0');

-- ----------------------------
-- Table structure for `coupons`
-- ----------------------------
DROP TABLE IF EXISTS `coupons`;
CREATE TABLE `coupons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) NOT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `option` int(11) NOT NULL DEFAULT '0',
  `price` int(11) NOT NULL DEFAULT '0',
  `date_start` datetime NOT NULL,
  `date_end` datetime DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of coupons
-- ----------------------------
INSERT INTO `coupons` VALUES ('1', 'GIAM10', 'Giảm 10% cho giá trị của hóa đơn', '0', '10', '2014-03-09 17:26:33', '2014-03-10 17:26:40', '9');
INSERT INTO `coupons` VALUES ('2', 'GIAM20', 'Giảm 20% giá trị của mỗi hóa đơn', '0', '20', '2014-03-07 00:00:00', '2014-03-13 00:00:00', '8');
INSERT INTO `coupons` VALUES ('3', 'GIAM11', 'GIAM11', '0', '11', '2014-03-09 00:00:00', '2014-03-30 00:00:00', '9');

-- ----------------------------
-- Table structure for `customers`
-- ----------------------------
DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `password` varchar(32) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(200) NOT NULL,
  `date_register` datetime DEFAULT NULL,
  `active` int(11) DEFAULT '0',
  `key_active` varchar(32) DEFAULT NULL,
  `type` int(1) NOT NULL DEFAULT '2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customers
-- ----------------------------
INSERT INTO `customers` VALUES ('1', 'vnzacky39@hotmail.com', '18ea374d56b2f31553d6032c2cedec19', 'Zacky', '01665154502', '', '2014-02-11 09:42:23', '1', '123123', '1');
INSERT INTO `customers` VALUES ('2', 'user@gmail.com', '18ea374d56b2f31553d6032c2cedec19', 'Users', '0122222222', '', '2014-02-11 09:43:09', '1', '123', '2');
INSERT INTO `customers` VALUES ('3', 'test@test.com', '18ea374d56b2f31553d6032c2cedec19', 'Nguyễn Văn Đức', '01665154502', 'K33b/02 Cao Thắng', '2014-03-06 23:47:27', '1', '111', '2');
INSERT INTO `customers` VALUES ('4', 'test@test1.com', '18ea374d56b2f31553d6032c2cedec19', 'Nguyễn Đức Anh', '0987987987', '123 Cao Thắng', '2014-03-08 15:03:33', '1', '6b4ce59f679b0d0128147dd847f05c1a', '2');
INSERT INTO `customers` VALUES ('5', 'test@test2.com', '18ea374d56b2f31553d6032c2cedec19', 'Nguyễn Đức Anh', '0987987983', '123 Cao Thắng', '2014-03-08 15:03:05', '1', '8a369e33de004c3b0fa7de9fae56e66a', '2');
INSERT INTO `customers` VALUES ('6', 'test1@test.com', '7ec1437d47828a68e0f1eeac069d8208', 'Nguyễn Đức Anh', '01665154502', '123 Cao Thắng', '2014-03-08 16:03:55', '1', '992c3ea37e7ca17d8bfa2617948b17a2', '2');
INSERT INTO `customers` VALUES ('7', 'vnzacksy39@gmail.com', '18ea374d56b2f31553d6032c2cedec19', 'Hoàng Văn Anh', '01665154444', '123 Cao Thắng', '2014-03-14 22:03:36', '1', '4e41e28ebcc2cd82b43d423273337369', '2');
INSERT INTO `customers` VALUES ('8', 'vnzacky329@gmail.com', '18ea374d56b2f31553d6032c2cedec19', 'Nguyễn Thị Minh', '01661154302', 'K33b/02 Hải Sơn', '2014-03-14 22:03:45', '0', 'cdb301b5a44dd77fb35a8ceaf6694dd5', '2');
INSERT INTO `customers` VALUES ('10', 'vnzacky39@gmail.com1', '18ea374d56b2f31553d6032c2cedec19', 'Nguyễn Đức Anh', '01165154302', '123 Cao Thắng', '2014-03-14 22:03:58', '0', 'f2b8f51a4017853131dd5e55830191c1', '2');
INSERT INTO `customers` VALUES ('12', 'vnzacky39@gmail.com', '18ea374d56b2f31553d6032c2cedec19', 'dasdsa', '123456123', 'dsadas', '2014-03-14 22:03:20', '0', '48b9ded5b9524945b6e81ecc0c771a7c', '2');
INSERT INTO `customers` VALUES ('13', 'vnzacky29@hotmail.com', '18ea374d56b2f31553d6032c2cedec19', 'Nguyễn Thị Minh', '0166522545', '123 Cao Thắng', '2014-03-17 00:03:01', '0', '691c173e66925ffb716a21cfbf82b599', '2');
INSERT INTO `customers` VALUES ('14', 'a@hotmail.com', '7ec1437d47828a68e0f1eeac069d8208', 'Nguyễn Thị Minh', '0166122545', '123 Cao Thắng', '2014-03-17 00:03:25', '0', 'cf9b81bf69f7b31799cef93cf9d9eaef', '2');
INSERT INTO `customers` VALUES ('15', 'adas@dasdal.com', '2ed5ef9628a5bc68e995a607ce172ff8', 'Nguyễn Đức Anh', '0122122122', '123 Cao Thắng', '2014-03-19 00:03:46', '0', 'f49e7152c85d149ecccede46dbf08ea4', '2');

-- ----------------------------
-- Table structure for `options`
-- ----------------------------
DROP TABLE IF EXISTS `options`;
CREATE TABLE `options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `value` mediumtext,
  `autoload` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of options
-- ----------------------------
INSERT INTO `options` VALUES ('1', 'advertisment', '{\"title\":\"[ZM]Shop\",\"url\":\"http:\\/\\/localhost\\/CI\\/shop\\/\",\"thumbnail\":\"http:\\/\\/localhost\\/CI\\/shop\\/templates\\/zm\\/images\\/logo.png\",\"stt\":1},{\"title\":\"Your site\",\"url\":\"http:\\/\\/localhost\\/CI\\/shop\\/\",\"thumbnail\":\"http:\\/\\/localhost\\/CI\\/shop\\/upload\\/images\\/dam-vintage-cup-nguc-ngoc-trinh-3037_22.jpg\",\"stt\":1}', '0');
INSERT INTO `options` VALUES ('2', 'featured', null, '0');

-- ----------------------------
-- Table structure for `orderdetails`
-- ----------------------------
DROP TABLE IF EXISTS `orderdetails`;
CREATE TABLE `orderdetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `o_id` int(11) NOT NULL DEFAULT '0',
  `p_id` int(11) NOT NULL DEFAULT '0',
  `quantity` int(11) NOT NULL DEFAULT '0',
  `model` varchar(255) NOT NULL,
  `price` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderdetails
-- ----------------------------
INSERT INTO `orderdetails` VALUES ('1', '4', '10', '1', 'FREE SIZE', '300000');
INSERT INTO `orderdetails` VALUES ('2', '4', '11', '2', 'S', '120000');
INSERT INTO `orderdetails` VALUES ('3', '5', '10', '1', 'FREE SIZE', '300000');
INSERT INTO `orderdetails` VALUES ('4', '5', '11', '2', 'S', '120000');
INSERT INTO `orderdetails` VALUES ('5', '6', '6', '1', 'FREE SIZE', '3800000');
INSERT INTO `orderdetails` VALUES ('6', '7', '10', '1', 'FREE SIZE', '300000');
INSERT INTO `orderdetails` VALUES ('7', '8', '4', '1', 'FREE SIZE', '400000');
INSERT INTO `orderdetails` VALUES ('8', '8', '3', '2', 'FREE SIZE', '360000');
INSERT INTO `orderdetails` VALUES ('9', '9', '2', '1', 'FREE SIZE', '480000');
INSERT INTO `orderdetails` VALUES ('10', '9', '9', '1', 'FREE SIZE', '460000');
INSERT INTO `orderdetails` VALUES ('11', '10', '2', '1', 'FREE SIZE', '480000');
INSERT INTO `orderdetails` VALUES ('12', '11', '2', '1', 'FREE SIZE', '480000');
INSERT INTO `orderdetails` VALUES ('13', '12', '7', '2', 'FREE SIZE', '600000');
INSERT INTO `orderdetails` VALUES ('14', '13', '2', '1', 'FREE SIZE', '480000');
INSERT INTO `orderdetails` VALUES ('15', '14', '10', '1', 'FREE SIZE', '300000');
INSERT INTO `orderdetails` VALUES ('16', '15', '10', '1', 'FREE SIZE', '300000');
INSERT INTO `orderdetails` VALUES ('17', '16', '8', '2', 'FREE SIZE', '450000');
INSERT INTO `orderdetails` VALUES ('18', '17', '17', '11', 'FREE SIZE', '7800000');

-- ----------------------------
-- Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cus_id` int(11) NOT NULL DEFAULT '0',
  `email` varchar(100) DEFAULT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `date_order` datetime NOT NULL,
  `date_check` datetime DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `coupon` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`email`,`date_order`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('4', '3', 'test@test.com', 'Nguyễn Đức Anh', 'K33b/02 Cao Thắng', '01665154502', '2014-03-08 11:03:16', null, '1', '0');
INSERT INTO `orders` VALUES ('5', '3', 'test@test.com', 'Nguyễn Đức Anh', 'K33b/02 Cao Thắng', '01665154502', '2014-03-08 11:03:50', '2014-03-08 22:03:45', '2', '0');
INSERT INTO `orders` VALUES ('6', '3', 'test@test.com', 'Nguyễn Đức Anh', 'K33b/02 Cao Thắng', '01665154502', '2014-03-08 11:03:55', '2014-03-09 17:03:51', '1', '0');
INSERT INTO `orders` VALUES ('7', '6', 'test1@test.com', 'Nguyễn Đức Anh', '123 Cao Thắng', '01665254502', '2014-03-08 16:03:56', null, '0', '0');
INSERT INTO `orders` VALUES ('8', '3', 'test@test.com', 'Nguyễn Đức Anh', 'K33b/02 Cao Thắng', '01665154502', '2014-03-08 21:03:59', '2014-03-09 16:03:13', '0', '0');
INSERT INTO `orders` VALUES ('9', '3', 'test@test.com', 'Nguyễn Thị Minh', 'K33b/02 Hải Sơn', '0122122122', '2014-03-08 21:03:27', '2014-03-09 16:03:36', '2', '0');
INSERT INTO `orders` VALUES ('10', '3', 'test@test.com', 'Nguyễn Văn Đức', 'K33b/02 Cao Thắng', '01665154502', '2014-03-09 20:03:50', '2014-03-09 21:03:45', '0', '0');
INSERT INTO `orders` VALUES ('11', '3', 'test@test.com', 'Nguyễn Văn Đức', 'K33b/02 Cao Thắng', '01665154502', '2014-03-09 20:03:07', '2014-03-09 21:03:53', '0', '10');
INSERT INTO `orders` VALUES ('12', '3', 'test@test.com', 'Nguyễn Văn Đức', 'K33b/02 Cao Thắng', '01665154502', '2014-03-09 20:03:22', '2014-03-09 21:03:32', '2', '20');
INSERT INTO `orders` VALUES ('13', '3', 'test@test.com', 'Nguyễn Văn Đức', 'K33b/02 Cao Thắng', '01665154502', '2014-03-09 21:03:14', '2014-03-09 21:03:53', '2', '10');
INSERT INTO `orders` VALUES ('14', '1', 'vnzacky39@hotmail.com', 'Zacky', '', '01665154502', '2014-03-10 13:03:10', '2014-03-12 10:03:47', '0', '0');
INSERT INTO `orders` VALUES ('15', '3', 'test@test.com', 'Nguyễn Văn Đức', 'K33b/02 Cao Thắng', '01665154502', '2014-03-12 10:03:11', '2014-03-12 10:03:23', '2', '20');
INSERT INTO `orders` VALUES ('16', '3', 'test@test.com', 'Nguyễn Van A', 'K33b/02 Cao Thắng', '01665154502', '2014-03-12 12:03:59', '2014-03-21 13:03:25', '0', '20');
INSERT INTO `orders` VALUES ('17', '3', 'test@test.com', 'Nguyễn Văn Đức', 'K33b/02 Cao Thắng', '01665154502', '2014-03-21 00:03:00', '2014-03-21 13:03:29', '2', '0');

-- ----------------------------
-- Table structure for `posts`
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `detail` text NOT NULL,
  `type` varchar(4) NOT NULL DEFAULT 'post',
  `date` datetime NOT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES ('1', 'Bài viết số 1', '<p>B&agrave;i viết số 1 B&agrave;i viết số 1 B&agrave;i viết số 1 B&agrave;i viết số 1 B&agrave;i viết số 1 B&agrave;i viết số 1B&agrave;i viết số 1 B&agrave;i viết số 1 B&agrave;i viết số 1 B&agrave;i viết số 1 B&agrave;i viết số 1 B&agrave;i viết số 1B&agrave;i viết số 1 B&agrave;i viết số 1 B&agrave;i viết số 1 B&agrave;i viết số 1 B&agrave;i viết số 1 B&agrave;i viết số 1B&agrave;i viết số 1 B&agrave;i viết số 1 B&agrave;i viết số 1 B&agrave;i viết số 1 B&agrave;i viết số 1 B&agrave;i viết số 1B&agrave;i viết số 1 B&agrave;i viết số 1 B&agrave;i viết số 1 B&agrave;i viết số 1 B&agrave;i viết số 1 B&agrave;i viết số 1</p>\r\n', 'post', '2014-03-09 21:03:57', '0');
INSERT INTO `posts` VALUES ('2', 'The same post 2', '<p>The same post 2 The same post 2 The same post 2 The same post 2 The same post 2 The same post 2 The same post 2 The same post 2 The same post 2 The same post 2</p>\r\n', 'post', '2014-03-09 22:03:46', '0');
INSERT INTO `posts` VALUES ('3', 'The same post 3', '<p>The same post 2 The same post 2 The same post 2 The same post 2 The same post 2 The same post 2</p>\r\n', 'post', '2014-03-09 22:03:59', '0');
INSERT INTO `posts` VALUES ('4', 'The same post 3', '<p>The same post 2 The same post 2 The same post 2 The same post 2 The same post 2 The same post 2</p>\r\n', 'post', '2014-03-09 22:03:02', '0');
INSERT INTO `posts` VALUES ('5', 'The same post 3', '<p>The same post 2 The same post 2 The same post 2 The same post 2 The same post 2 The same post 2</p>\r\n', 'post', '2014-03-09 22:03:03', '0');
INSERT INTO `posts` VALUES ('6', 'The same post 3', '<p>The same post 2 The same post 2 The same post 2 The same post 2 The same post 2 The same post 2</p>\r\n', 'post', '2014-03-09 22:03:05', '0');
INSERT INTO `posts` VALUES ('7', 'The same post 3', '<p>The same post 2 The same post 2 The same post 2 The same post 2 The same post 2 The same post 2</p>\r\n', 'post', '2014-03-09 22:03:06', '0');
INSERT INTO `posts` VALUES ('8', 'Hướng dẫn thanh toán', '<p>Hướng dẫn thanh to&aacute;n</p>\r\n\r\n<p>Hướng dẫn thanh to&aacute;n</p>\r\n\r\n<p>Hướng dẫn thanh to&aacute;n</p>\r\n\r\n<p>Hướng dẫn thanh to&aacute;n</p>\r\n\r\n<p>Hướng dẫn thanh to&aacute;n</p>\r\n\r\n<p>Hướng dẫn thanh to&aacute;n</p>\r\n\r\n<p>Hướng dẫn thanh to&aacute;n</p>\r\n\r\n<p>Hướng dẫn thanh to&aacute;n</p>\r\n\r\n<p>Hướng dẫn thanh to&aacute;n</p>\r\n\r\n<p>Hướng dẫn thanh to&aacute;n<br />\r\nHướng dẫn thanh to&aacute;n<br />\r\nHướng dẫn thanh to&aacute;n<br />\r\nHướng dẫn thanh to&aacute;n</p>\r\n', 'page', '2014-03-09 22:03:57', '0');
INSERT INTO `posts` VALUES ('9', 'Liên hệ', '<p>Li&ecirc;n hệ với t&ocirc;i qua th&ocirc;ng tin dưới đ&acirc;y:</p>\r\n\r\n<p>Li&ecirc;n hệ với t&ocirc;i qua th&ocirc;ng tin dưới đ&acirc;y:Li&ecirc;n hệ với t&ocirc;i qua th&ocirc;ng tin dưới đ&acirc;y:Li&ecirc;n hệ với t&ocirc;i qua th&ocirc;ng tin dưới đ&acirc;y:Li&ecirc;n hệ với t&ocirc;i qua th&ocirc;ng tin dưới đ&acirc;y:Li&ecirc;n hệ với t&ocirc;i qua th&ocirc;ng tin dưới đ&acirc;y:Li&ecirc;n hệ với t&ocirc;i qua th&ocirc;ng tin dưới đ&acirc;y:Li&ecirc;n hệ với t&ocirc;i qua th&ocirc;ng tin dưới đ&acirc;y:Li&ecirc;n hệ với t&ocirc;i qua th&ocirc;ng tin dưới đ&acirc;y:Li&ecirc;n hệ với t&ocirc;i qua th&ocirc;ng tin dưới đ&acirc;y:Li&ecirc;n hệ với t&ocirc;i qua th&ocirc;ng tin dưới đ&acirc;y:Li&ecirc;n hệ với t&ocirc;i qua th&ocirc;ng tin dưới đ&acirc;y:Li&ecirc;n hệ với t&ocirc;i qua th&ocirc;ng tin dưới đ&acirc;y:Li&ecirc;n hệ với t&ocirc;i qua th&ocirc;ng tin dưới đ&acirc;y:</p>\r\n\r\n<p>Li&ecirc;n hệ với t&ocirc;i qua th&ocirc;ng tin dưới đ&acirc;y:Li&ecirc;n hệ với t&ocirc;i qua th&ocirc;ng tin dưới đ&acirc;y:Li&ecirc;n hệ với t&ocirc;i qua th&ocirc;ng tin dưới đ&acirc;y:Li&ecirc;n hệ với t&ocirc;i qua th&ocirc;ng tin dưới đ&acirc;y:Li&ecirc;n hệ với t&ocirc;i qua th&ocirc;ng tin dưới đ&acirc;y:Li&ecirc;n hệ với t&ocirc;i qua th&ocirc;ng tin dưới đ&acirc;y:Li&ecirc;n hệ với t&ocirc;i qua th&ocirc;ng tin dưới đ&acirc;y:Li&ecirc;n hệ với t&ocirc;i qua th&ocirc;ng tin dưới đ&acirc;y:</p>\r\n', 'page', '2014-03-09 23:03:56', '0');
INSERT INTO `posts` VALUES ('10', 'Giới thiệu', '<h  >Th&ocirc;ng tin c&aacute; nh&acirc;n</h2>\r\n\r\n<ul>\r\n <li>Full name: Nguyễn Đức Anh</li>\r\n <li>Nick name: [VN]Zacky</li>\r\n <li>Skype: vnzacky39</li>\r\n <li>Email: vnzacky39@hotmail.com</li>\r\n <li>Skill: HTML/CSS/JS, PHP { Wordpress, Codeigniter,...}</li>\r\n <li>Language: Vietnamese, English</li>\r\n <li>English skill: read, write, listen</li>\r\n <li>Hobby: listen to music, to walk in streets, play game, code</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n', 'page', '2014-03-10 20:03:01', '0');

-- ----------------------------
-- Table structure for `products`
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `detail` text,
  `fixed_price` double NOT NULL,
  `sale_price` double DEFAULT NULL,
  `model` varchar(255) DEFAULT 'Free size',
  `date` datetime NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '0',
  `bought` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('1', '18', 'Váy Vera QL332FC - Chấm Bi Vàng', 'upload/images/UntitledDL730.png', '<p>Nội y Vera lu&ocirc;n l&agrave; một lựa chọn h&agrave;ng&nbsp;đầu cho những người phụ nữ y&ecirc;u th&iacute;ch việc n&acirc;ng niu cơ thể bằng những m&oacute;n&nbsp;đồ l&oacute;t chất lượng cao v&agrave; t&igrave;m&nbsp;đến sự tự tin ngầm từ b&ecirc;n trong cơ thể.</p>\r\n\r\n<p>Quần l&oacute;t lu&ocirc;n l&agrave; một trang phục l&oacute;t kh&ocirc;ng thể thiếu với phụ nữ. Với nhiều kiểu d&aacute;ng&nbsp;đa dạng, m&agrave;u sắc phong ph&uacute;, c&ugrave;ng chức năng t&ocirc;n vinh d&aacute;ng dấp của người phụ nữ, quần l&oacute;t của Vera&nbsp;đ&atilde; chiếm lấy cảm t&igrave;nh của c&aacute;c chị em suốt thời gian d&agrave;i vừa qua.</p>\r\n\r\n<p>- M&agrave;u sắc trẻ trung c&ugrave;ng chấm bi năng&nbsp;động, tạo cho người mặc cảm gi&aacute;c thoải m&aacute;i, kh&ocirc;ng chỉ ph&ugrave; hợp với c&aacute;c c&ocirc; g&aacute;i tuổi teen, c&aacute;c n&agrave;ng c&ocirc;ng sở cũng c&oacute; thể giấu ri&ecirc;ng cho m&igrave;nh một ch&uacute;t tinh nghịch với chiếc quần n&agrave;y.</p>\r\n\r\n<p>- Quần c&oacute; ba size (<strong>S, M, L</strong>) để&nbsp;lựa chọn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table cellspacing=\"\\\\\\\\\">\r\n <tbody>\r\n  <tr>\r\n   <td>Thương hiệu</td>\r\n   <td><a href=\"\\\\\\\\\" target=\"\\\\\\\\\">Vera</a></td>\r\n  </tr>\r\n  <tr>\r\n   <td>Sản xuất tại</td>\r\n   <td>Việt Nam</td>\r\n  </tr>\r\n  <tr>\r\n   <td>Trọng lượng vận chuyển</td>\r\n   <td>150 grams</td>\r\n  </tr>\r\n  <tr>\r\n   <td>Giới t&iacute;nh</td>\r\n   <td>Nữ</td>\r\n  </tr>\r\n  <tr>\r\n   <td>Theo dịp</td>\r\n   <td>Thường ng&agrave;y</td>\r\n  </tr>\r\n  <tr>\r\n   <td>Phong c&aacute;ch</td>\r\n   <td>Nữ t&iacute;nh/Girly</td>\r\n  </tr>\r\n  <tr>\r\n   <td>SKU</td>\r\n   <td>4002553075449</td>\r\n  </tr>\r\n </tbody>\r\n</table>', '125000', '0', 'Free size', '2014-03-10 18:03:49', '33', '1');
INSERT INTO `products` VALUES ('2', '17', 'Đầm Tiểu Thư Hai Lớp Tiki', 'upload/images/img_0822-as-smart-object-1_1.jpg', '<p><strong>Đầm Tiểu Thư Hai Lớp Tiki - Đen</strong></p>\r\n\r\n<p>Nhắc&nbsp;đến phụ nữ, trang phục m&agrave;&nbsp;đa phần mọi người&nbsp;đều nghĩ&nbsp;đến ch&iacute;nh l&agrave; v&aacute;y&nbsp;đầm - một biểu tượng ri&ecirc;ng của nữ giới. Với t&iacute;nh năng t&ocirc;n l&ecirc;n h&igrave;nh thể nữ t&iacute;nh của ph&aacute;i&nbsp;đẹp,&nbsp;đầm, v&aacute;y lu&ocirc;n chiếm giữ một số lượng kha kh&aacute;&nbsp;trong hầu hết tủ&nbsp;đồ của phụ nữ.</p>\r\n\r\n<p>-&nbsp;<strong>Đầm Tiểu Thư Hai Lớp Tiki - Đen</strong> c&oacute; d&aacute;ng v&aacute;y&nbsp;x&ograve;e hai lớp,&nbsp;dễ mặc trong nhiều dịp. Với họa tiết m&agrave;u sắc&nbsp;rực rỡ,&nbsp;nữ t&iacute;nh, chiếc đầm mang đến cho người mặc vẻ duy&ecirc;n d&aacute;ng v&agrave; đ&aacute;ng y&ecirc;u.</p>\r\n\r\n<p>Đầm c&oacute; k&egrave;m thắt lưng.</p>\r\n\r\n<p><strong>Chất liệu: Vải</strong></p>\r\n\r\n<p>-&nbsp;Đầm free size</p>\r\n\r\n<p>- D&agrave;i 92 cm, ngang vai 35 cm</p>\r\n\r\n<p><strong>Người mẫu cao 1m60 - 46kg </strong></p>\r\n\r\n<p><strong>Số đo 82-60-89</strong></p>', '480000', '0', 'Free size', '2014-03-03 01:03:50', '33', '1');
INSERT INTO `products` VALUES ('3', '8', 'ĐẦM VINTAGE CÚP NGỰC TRẮNG 2', 'upload/images/dam-vintage-cup-nguc-ngoc-trinh-3037_2.jpg', '<p>Kiểu d&aacute;ng Thiết kế với kiểu d&aacute;ng x&ograve;e trang nh&atilde; v&agrave; thanh lịch, đầy nữ t&iacute;nh. Với họa tiết chấm bi cho bạn g&aacute;i th&ecirc;m nữ t&iacute;nh v&agrave; trẻ trung. Chất liệu Chất li&ecirc;u kaky thun tho&aacute;ng m&aacute;t, mềm mại, dễ giặt ủi v&agrave; bảo quản. M&agrave;u sắc M&agrave;u sắc: đỏ trắng tươi tắn, cuốn h&uacute;t v&agrave; tr&agrave;n đầy sức s Trọng lượng Trọng lượng: 400g.</p>', '360000', '0', 'Free size', '2014-03-03 01:03:45', '100', '1');
INSERT INTO `products` VALUES ('4', '8', 'Áo Hàn Quốc dáng dài màu đỏ đun', 'upload/images/Ao-somi-3.jpg', '<p>&Aacute;o H&agrave;n Quốc d&aacute;ng d&agrave;i m&agrave;u đỏ đun với c&aacute;c size S, M, L</p>\r\n\r\n<p>Thiết kế theo phong c&aacute;ch vest nữ thời trang H&agrave;n Quốc, Chất liệu vải jumi sợi nhỏ d&agrave;y v&agrave; mề, co gi&atilde;n 4 chiều, l&oacute;t lụa mềm tho&aacute;ng kh&iacute; tạo cảm gi&aacute;c ấm v&agrave; thoải m&aacute;i khi mặc.</p>\r\n\r\n<p>Kh&aacute;ch h&agrave;ng mua h&agrave;ng từ xa được đổi size trong trường hợp kh&ocirc;ng mặc vừa</p>\r\n\r\n<p><img alt=\"\\\\\" src=\"\\\\\" /></p>', '400000', '0', 'Free size', '2014-03-03 01:03:33', '100', '12');
INSERT INTO `products` VALUES ('5', '18', 'Đầm phối ren xuân hè 2014', 'upload/images/d001-2.jpg', '<p>&Aacute;o H&agrave;n Quốc d&aacute;ng d&agrave;i m&agrave;u đỏ đun với c&aacute;c size S, M, L</p>\r\n\r\n<p>Thiết kế theo phong c&aacute;ch vest nữ thời trang H&agrave;n Quốc, Chất liệu vải jumi sợi nhỏ d&agrave;y v&agrave; mề, co gi&atilde;n 4 chiều, l&oacute;t lụa mềm tho&aacute;ng kh&iacute; tạo cảm gi&aacute;c ấm v&agrave; thoải m&aacute;i khi mặc.</p>\r\n\r\n<p>Kh&aacute;ch h&agrave;ng mua h&agrave;ng từ xa được đổi size trong trường hợp kh&ocirc;ng mặc vừa</p>\r\n\r\n<p><img alt=\"\\\\\" src=\"\\\\\" /></p>', '7800000', '0', 'Free size', '2014-03-03 01:03:26', '111', '3');
INSERT INTO `products` VALUES ('6', '18', 'Đầm thu-đông cổ peter pan phối ren', 'upload/images/vay-dam-thu-dong-2013-12.jpg', '<p>&Aacute;o H&agrave;n Quốc d&aacute;ng d&agrave;i m&agrave;u đỏ đun với c&aacute;c size S, M, L</p>\r\n\r\n<p>Thiết kế theo phong c&aacute;ch vest nữ thời trang H&agrave;n Quốc, Chất liệu vải jumi sợi nhỏ d&agrave;y v&agrave; mề, co gi&atilde;n 4 chiều, l&oacute;t lụa mềm tho&aacute;ng kh&iacute; tạo cảm gi&aacute;c ấm v&agrave; thoải m&aacute;i khi mặc.</p>\r\n\r\n<p>Kh&aacute;ch h&agrave;ng mua h&agrave;ng từ xa được đổi size trong trường hợp kh&ocirc;ng mặc vừa</p>\r\n\r\n<p><img alt=\"\\\\\" src=\"\\\\\" /></p>', '3800000', '0', 'Free size', '2014-03-03 01:03:20', '111', '1');
INSERT INTO `products` VALUES ('7', '5', 'Blazer Hàn Quốc màu xanh ngọc', 'upload/images/SM10a.jpg', '<p>&Aacute;o H&agrave;n Quốc d&aacute;ng d&agrave;i m&agrave;u đỏ đun với c&aacute;c size S, M, L</p>\r\n\r\n<p>Thiết kế theo phong c&aacute;ch vest nữ thời trang H&agrave;n Quốc, Chất liệu vải jumi sợi nhỏ d&agrave;y v&agrave; mề, co gi&atilde;n 4 chiều, l&oacute;t lụa mềm tho&aacute;ng kh&iacute; tạo cảm gi&aacute;c ấm v&agrave; thoải m&aacute;i khi mặc.</p>\r\n\r\n<p>Kh&aacute;ch h&agrave;ng mua h&agrave;ng từ xa được đổi size trong trường hợp kh&ocirc;ng mặc vừa</p>\r\n\r\n<p><img alt=\"\\\\\" src=\"\\\\\" /></p>', '600000', '0', 'Free size', '2014-03-03 01:03:12', '110', '5');
INSERT INTO `products` VALUES ('8', '17', 'Đầm Thân Ren Váy Xếp', 'upload/images/dam-vintage-cup-nguc-ngoc-trinh-3037_22.jpg', '<p>&Aacute;o H&agrave;n Quốc d&aacute;ng d&agrave;i m&agrave;u đỏ đun với c&aacute;c size S, M, L</p>\r\n\r\n<p>Thiết kế theo phong c&aacute;ch vest nữ thời trang H&agrave;n Quốc, Chất liệu vải jumi sợi nhỏ d&agrave;y v&agrave; mề, co gi&atilde;n 4 chiều, l&oacute;t lụa mềm tho&aacute;ng kh&iacute; tạo cảm gi&aacute;c ấm v&agrave; thoải m&aacute;i khi mặc.</p>\r\n\r\n<p>Kh&aacute;ch h&agrave;ng mua h&agrave;ng từ xa được đổi size trong trường hợp kh&ocirc;ng mặc vừa</p>', '450000', '0', 'Free size', '2014-03-03 01:03:07', '100', '1');
INSERT INTO `products` VALUES ('9', '7', 'Áo Nỉ Mũ Bò Sữa', 'upload/images/SM03ab.jpg', '<p>&Aacute;o H&agrave;n Quốc d&aacute;ng d&agrave;i m&agrave;u đỏ đun với c&aacute;c size S, M, L</p>\r\n\r\n<p>Thiết kế theo phong c&aacute;ch vest nữ thời trang H&agrave;n Quốc, Chất liệu vải jumi sợi nhỏ d&agrave;y v&agrave; mề, co gi&atilde;n 4 chiều, l&oacute;t lụa mềm tho&aacute;ng kh&iacute; tạo cảm gi&aacute;c ấm v&agrave; thoải m&aacute;i khi mặc.</p>\r\n\r\n<p>Kh&aacute;ch h&agrave;ng mua h&agrave;ng từ xa được đổi size trong trường hợp kh&ocirc;ng mặc vừa</p>\r\n\r\n<p>&nbsp;</p>', '460000', '0', 'Free size', '2014-03-03 01:03:49', '111', '1');
INSERT INTO `products` VALUES ('10', '1', 'Áo Thun Nam Mattan', 'upload/images/img_2376_5.jpg', '<p>Mattana l&agrave; thương hiệu của NBC &ndash; Tổng c&ocirc;ng ty may mặc h&agrave;ng đầu tại Việt Nam với bề d&agrave;y lịch sử hơn 35 năm h&igrave;nh th&agrave;nh v&agrave; ph&aacute;t triển. Logo &ldquo;mattana&rdquo; xuất ph&aacute;t bởi cụm từ &ldquo;Mattanyahu&rdquo; (theo tiếng Hy Lạp), nghĩa l&agrave;&nbsp;<strong>&ldquo;Gift from God &ndash; M&oacute;n qu&agrave; của Thượng Đế&rdquo;</strong>, n&ecirc;n ch&iacute;nh l&agrave; th&ocirc;ng điệp &ldquo;may mắn v&agrave; th&agrave;nh c&ocirc;ng&rdquo; m&agrave; NBC đ&atilde; v&agrave; đang nỗ lực ph&aacute;t triển hơn nữa để d&agrave;nh tặng cho người ti&ecirc;u d&ugrave;ng Việt Nam.</p>\r\n\r\n<p><strong>&Aacute;o Thun Nam Mattana MTM25130016102183</strong> mang d&aacute;ng&nbsp;&aacute;o sang trọng với tay d&agrave;i v&agrave; chất liệu thoải m&aacute;i,&nbsp;ph&ugrave; hợp với tiết trời se lạnh. Cổ tim của&nbsp;&aacute;o rất th&iacute;ch hợp phối&nbsp;ở b&ecirc;n ngo&agrave;i chiếc&nbsp;&aacute;o sơ mi, tạo vẻ ngo&agrave;i sang trọng,&nbsp;ấm&nbsp;&aacute;p v&agrave; lịch l&atilde;m.</p>\r\n\r\n<p><strong>Chất liệu: 100% cotton</strong></p>', '300000', '0', 'Free size', '2014-03-03 01:03:31', '111', '1');
INSERT INTO `products` VALUES ('11', '1', 'Áo Thun BAMBO ', 'upload/images/img_0499-as-smart-object-1.jpg', '<p>Mattana l&agrave; thương hiệu của NBC &ndash; Tổng c&ocirc;ng ty may mặc h&agrave;ng đầu tại Việt Nam với bề d&agrave;y lịch sử hơn 35 năm h&igrave;nh th&agrave;nh v&agrave; ph&aacute;t triển. Logo &ldquo;mattana&rdquo; xuất ph&aacute;t bởi cụm từ &ldquo;Mattanyahu&rdquo; (theo tiếng Hy Lạp), nghĩa l&agrave;&nbsp;<strong>&ldquo;Gift from God &ndash; M&oacute;n qu&agrave; của Thượng Đế&rdquo;</strong>, n&ecirc;n ch&iacute;nh l&agrave; th&ocirc;ng điệp &ldquo;may mắn v&agrave; th&agrave;nh c&ocirc;ng&rdquo; m&agrave; NBC đ&atilde; v&agrave; đang nỗ lực ph&aacute;t triển hơn nữa để d&agrave;nh tặng cho người ti&ecirc;u d&ugrave;ng Việt Nam.</p>\r\n\r\n<p><strong>&Aacute;o Thun Nam Mattana MTM25130016102183</strong> mang d&aacute;ng&nbsp;&aacute;o sang trọng với tay d&agrave;i v&agrave; chất liệu thoải m&aacute;i,&nbsp;ph&ugrave; hợp với tiết trời se lạnh. Cổ tim của&nbsp;&aacute;o rất th&iacute;ch hợp phối&nbsp;ở b&ecirc;n ngo&agrave;i chiếc&nbsp;&aacute;o sơ mi, tạo vẻ ngo&agrave;i sang trọng,&nbsp;ấm&nbsp;&aacute;p v&agrave; lịch l&atilde;m.</p>\r\n\r\n<p><strong>Chất liệu: 100% cotton</strong></p>', '150000', '120000', 'S,M,L,XL', '2014-03-06 22:03:35', '11', '1');
INSERT INTO `products` VALUES ('12', '18', 'Đầm phối ren xuân hè', 'upload/images/d001-2.jpg', '<p>&Aacute;o H&agrave;n Quốc d&aacute;ng d&agrave;i m&agrave;u đỏ đun với c&aacute;c size S, M, L</p>\r\n\r\n<p>Thiết kế theo phong c&aacute;ch vest nữ thời trang H&agrave;n Quốc, Chất liệu vải jumi sợi nhỏ d&agrave;y v&agrave; mề, co gi&atilde;n 4 chiều, l&oacute;t lụa mềm tho&aacute;ng kh&iacute; tạo cảm gi&aacute;c ấm v&agrave; thoải m&aacute;i khi mặc.</p>\r\n\r\n<p>Kh&aacute;ch h&agrave;ng mua h&agrave;ng từ xa được đổi size trong trường hợp kh&ocirc;ng mặc vừa</p>\r\n\r\n<p><img alt=\"\\\\\" src=\"\\\\\" /></p>', '7800000', '0', 'Free size', '2014-03-03 01:03:26', '111', '1');
INSERT INTO `products` VALUES ('13', '18', 'Đầm phối ren hè thu', 'upload/images/d001-2.jpg', '<p>&Aacute;o H&agrave;n Quốc d&aacute;ng d&agrave;i m&agrave;u đỏ đun với c&aacute;c size S, M, L</p>\r\n\r\n<p>Thiết kế theo phong c&aacute;ch vest nữ thời trang H&agrave;n Quốc, Chất liệu vải jumi sợi nhỏ d&agrave;y v&agrave; mề, co gi&atilde;n 4 chiều, l&oacute;t lụa mềm tho&aacute;ng kh&iacute; tạo cảm gi&aacute;c ấm v&agrave; thoải m&aacute;i khi mặc.</p>\r\n\r\n<p>Kh&aacute;ch h&agrave;ng mua h&agrave;ng từ xa được đổi size trong trường hợp kh&ocirc;ng mặc vừa</p>\r\n\r\n<p><img alt=\"\\\\\" src=\"\\\\\" /></p>', '7800000', '0', 'Free size', '2014-03-03 01:03:26', '111', '1');
INSERT INTO `products` VALUES ('14', '18', 'Đầm phối ren thu đông', 'upload/images/d001-2.jpg', '<p>&Aacute;o H&agrave;n Quốc d&aacute;ng d&agrave;i m&agrave;u đỏ đun với c&aacute;c size S, M, L</p>\r\n\r\n<p>Thiết kế theo phong c&aacute;ch vest nữ thời trang H&agrave;n Quốc, Chất liệu vải jumi sợi nhỏ d&agrave;y v&agrave; mề, co gi&atilde;n 4 chiều, l&oacute;t lụa mềm tho&aacute;ng kh&iacute; tạo cảm gi&aacute;c ấm v&agrave; thoải m&aacute;i khi mặc.</p>\r\n\r\n<p>Kh&aacute;ch h&agrave;ng mua h&agrave;ng từ xa được đổi size trong trường hợp kh&ocirc;ng mặc vừa</p>\r\n\r\n<p><img alt=\"\\\\\" src=\"\\\\\" /></p>', '7800000', '0', 'Free size', '2014-03-03 01:03:26', '111', '1');
INSERT INTO `products` VALUES ('15', '18', 'Váy ren thu đông', 'upload/images/d001-2.jpg', '<p>&Aacute;o H&agrave;n Quốc d&aacute;ng d&agrave;i m&agrave;u đỏ đun với c&aacute;c size S, M, L</p>\r\n\r\n<p>Thiết kế theo phong c&aacute;ch vest nữ thời trang H&agrave;n Quốc, Chất liệu vải jumi sợi nhỏ d&agrave;y v&agrave; mề, co gi&atilde;n 4 chiều, l&oacute;t lụa mềm tho&aacute;ng kh&iacute; tạo cảm gi&aacute;c ấm v&agrave; thoải m&aacute;i khi mặc.</p>\r\n\r\n<p>Kh&aacute;ch h&agrave;ng mua h&agrave;ng từ xa được đổi size trong trường hợp kh&ocirc;ng mặc vừa</p>\r\n\r\n<p><img alt=\"\\\\\" src=\"\\\\\" /></p>', '7800000', '0', 'Free size', '2014-03-03 01:03:26', '111', '1');
INSERT INTO `products` VALUES ('16', '18', 'Váy ren xuân đông', 'upload/images/d001-2.jpg', '<p>&Aacute;o H&agrave;n Quốc d&aacute;ng d&agrave;i m&agrave;u đỏ đun với c&aacute;c size S, M, L</p>\r\n\r\n<p>Thiết kế theo phong c&aacute;ch vest nữ thời trang H&agrave;n Quốc, Chất liệu vải jumi sợi nhỏ d&agrave;y v&agrave; mề, co gi&atilde;n 4 chiều, l&oacute;t lụa mềm tho&aacute;ng kh&iacute; tạo cảm gi&aacute;c ấm v&agrave; thoải m&aacute;i khi mặc.</p>\r\n\r\n<p>Kh&aacute;ch h&agrave;ng mua h&agrave;ng từ xa được đổi size trong trường hợp kh&ocirc;ng mặc vừa</p>\r\n\r\n<p><img alt=\"\\\\\" src=\"\\\\\" /></p>', '7800000', '0', 'Free size', '2014-03-03 01:03:26', '111', '1');
INSERT INTO `products` VALUES ('17', '18', 'Váy ren hàn quốc', 'upload/images/vay-dam-thu-dong-2013-12.jpg', '<p>&Aacute;o H&agrave;n Quốc d&aacute;ng d&agrave;i m&agrave;u đỏ đun với c&aacute;c size S, M, L</p>\r\n\r\n<p>Thiết kế theo phong c&aacute;ch vest nữ thời trang H&agrave;n Quốc, Chất liệu vải jumi sợi nhỏ d&agrave;y v&agrave; mề, co gi&atilde;n 4 chiều, l&oacute;t lụa mềm tho&aacute;ng kh&iacute; tạo cảm gi&aacute;c ấm v&agrave; thoải m&aacute;i khi mặc.</p>\r\n\r\n<p>Kh&aacute;ch h&agrave;ng mua h&agrave;ng từ xa được đổi size trong trường hợp kh&ocirc;ng mặc vừa</p>\r\n\r\n<p><img alt=\"\\\\\" src=\"\\\\\" /></p>', '7800000', '0', 'Free size', '2014-03-03 01:03:26', '111', '16');
