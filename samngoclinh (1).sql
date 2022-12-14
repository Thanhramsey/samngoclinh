-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2022 at 05:30 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `samngoclinh`
--

-- --------------------------------------------------------

--
-- Table structure for table `db_category`
--

CREATE TABLE `db_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `link` varchar(255) CHARACTER SET utf8 NOT NULL,
  `level` int(2) NOT NULL,
  `parentid` int(11) NOT NULL,
  `orders` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8 NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8 NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_config`
--

CREATE TABLE `db_config` (
  `id` int(11) NOT NULL,
  `mail_smtp` varchar(68) CHARACTER SET utf8 NOT NULL,
  `mail_smtp_password` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Password mail shop',
  `mail_noreply` varchar(68) CHARACTER SET utf8 NOT NULL,
  `priceShip` mediumtext CHARACTER SET utf8 NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_config`
--

INSERT INTO `db_config` (`id`, `mail_smtp`, `mail_smtp_password`, `mail_noreply`, `priceShip`, `title`, `description`) VALUES
(1, 'ocopchupuhgl@gmail.com', 'tutanbcasaqjhxql', 'thanhwilshere96@gmail.com', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `db_contact`
--

CREATE TABLE `db_contact` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `trash` int(11) NOT NULL DEFAULT 1,
  `fullname` varchar(80) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_contact`
--

INSERT INTO `db_contact` (`id`, `title`, `phone`, `email`, `content`, `created_at`, `status`, `trash`, `fullname`) VALUES
(11, 't??o', '09123999', 'teo@gmail.com', 'hehehe', '2022/8/2 10:43:23', 1, 1, 't??o'),
(12, 't??o', '0129391029', 'teo@gmail.com', '?????t 1 b??n', '2022/8/4 14:48:28', 0, 1, 't??o'),
(13, 'Ti???n', '012939129', 'tien@gmail.com', 'T??i mu???n ?????t 1 b??n v??o ng??y mai', '2022/8/4 15:6:53', 0, 1, 'Ti???n'),
(14, 'Ti???n', '012939129', 'tien@gmail.com', 'T??i mu???n ?????t 1 b??n v??o ng??y mai', '2022/8/4 15:8:5', 0, 1, 'Ti???n'),
(15, 'ti???n', '09213829', 'tien@gmail.com', 't??i mu???n ?????t 1 b??n', '2022/8/4 15:11:30', 0, 1, 'ti???n'),
(16, 'th??nh', '0392348919', 'tien@gmail.com', 't??i mu???n ?????t 1 b??n', '2022/8/4 15:13:49', 0, 1, 'th??nh'),
(17, 'th??nh', '0392348919', 'tien@gmail.com', 't??i mu???n ?????t 1 b??n', '2022/8/4 15:17:26', 0, 1, 'th??nh'),
(18, 't??o', '09123199', 'teo@gmail.com', 'tui mu???n ??n', '2022/8/4 15:22:50', 0, 1, 't??o'),
(19, 'Th??nh', '0969128391', 'thanhwilshere96@gmail.com', 'T??i quan t??m ?????n s???n ph???m', '2022/8/10 9:1:53', 0, 1, 'Th??nh'),
(20, 'Th??nh', '0969128391', 'thanhwilshere96@gmail.com', 'T??i quan t??m ?????n s???n ph???m', '2022/8/10 9:3:9', 0, 1, 'Th??nh'),
(21, 'Ch????ng', '0129349192', 'chuong@gmail.com', 'T??i r???t th??ch s??m , h??y li??n l???c v???i t??i !', '2022/8/10 9:9:4', 0, 1, 'Ch????ng'),
(22, 'th??nh', '012939101', 'thanh@gmail.com', 'hehehehehe', '2022/8/10 9:12:5', 0, 1, 'th??nh');

-- --------------------------------------------------------

--
-- Table structure for table `db_content`
--

CREATE TABLE `db_content` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 NOT NULL,
  `introtext` mediumtext CHARACTER SET utf8 NOT NULL,
  `fulltext` mediumtext CHARACTER SET utf8 NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(50) CHARACTER SET utf8 NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` varchar(50) CHARACTER SET utf8 NOT NULL,
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_content`
--

INSERT INTO `db_content` (`id`, `title`, `alias`, `introtext`, `fulltext`, `img`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `status`) VALUES
(7, 'B???ng gi?? t??n l???nh HOA SEN th??ng 7/2022', 'bang-gia-ton-lanh-hoa-sen-thang-7-2022', '', '<p>Gi&aacute; t&ocirc;n Hoa Sen c&oacute; th??? thay ?????i ph??? thu???c v&agrave;o nhu c???u th??? tr?????ng do ??&oacute; ????? c&oacute; ???????c gi&aacute; t&ocirc;n Hoa Sen Ch&iacute;nh x&aacute;c qu&yacute; kh&aacute;ch n&ecirc;n li&ecirc;n h??? t???i ?????i l&yacute; t&ocirc;n Hoa Sen ????? nh???n b&aacute;o gi&aacute; ch&iacute;nh x&aacute;c.</p>\r\n\r\n<p>T&ocirc;n Th??? D&acirc;n&nbsp;c???p nh???t&nbsp;<strong>b???ng b&aacute;o gi&aacute; t&ocirc;n Hoa Sen&nbsp;</strong>????? qu&yacute; kh&aacute;ch h&agrave;ng tham kh???o</p>\r\n\r\n<p><strong>B???NG B&Aacute;O GI&Aacute; T&Ocirc;N 9 S&Oacute;NG VU&Ocirc;NG &ndash; 5 S&Oacute;NG VU&Ocirc;NG &ndash; 13 S&Oacute;NG LA PH&Ocirc;NG &ndash; T&Ocirc;N C&Aacute;CH NHI???T &ndash; T&Ocirc;N CLIPLOCK</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><img alt=\"\" src=\"/web/public/upload/images/bang-bao-gia-ton-2.jpg\" style=\"height:1200px; width:652px\" /></strong></p>\r\n', 'Untitled_design.png', '2022-08-02 14:11:52', '1', '2022-08-02 14:16:53', '1', 0, 1),
(8, 'Tuy???n D???ng ', 'tuyen-dung', '', '<p>C???n tuy???n c&aacute;c v??? tr&iacute; c&ocirc;ng vi???c nh?? sau</p>\r\n\r\n<p>- 2 t???p v???</p>\r\n\r\n<p>- 1 ph??? b???p</p>\r\n\r\n<p>- 1 b???o v???</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"color:#e74c3c\">Li&ecirc;n h??? : 096912312 !</span></p>\r\n', '6.jpg', '2022-08-04 14:52:28', '1', '2022-08-04 14:52:28', '1', 0, 1),
(9, 'Tuy???n d???ng nh??n vi??n', 'tuyen-dung-nhan-vien', '', '<p>Tuy???n d???ng nh&acirc;n vi&ecirc;n</p>\r\n\r\n<p>C???n tuy???n nh&acirc;n vi&ecirc;n ch??m s&oacute;c kh&aacute;ch h&agrave;ng.</p>\r\n', '295465192_461978019267253_2780816907860748843_n.jpg', '2022-08-05 14:05:45', '1', '2022-08-10 10:24:53', '1', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_customer`
--

CREATE TABLE `db_customer` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) CHARACTER SET utf8 NOT NULL,
  `username` varchar(100) CHARACTER SET utf8 NOT NULL,
  `password` varchar(32) CHARACTER SET utf8 NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(13) CHARACTER SET utf8 NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_customer`
--

INSERT INTO `db_customer` (`id`, `fullname`, `username`, `password`, `address`, `phone`, `email`, `created`, `trash`, `status`) VALUES
(72, 't???n th??nh', 'thanh1996', 'e10adc3949ba59abbe56e057f20f883e', '', '0969124456', 'thanhwilshere96@gmail.com', '2022-06-13 00:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_discount`
--

CREATE TABLE `db_discount` (
  `id` int(11) NOT NULL COMMENT 'ID',
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'M?? gi???m gi??',
  `discount` int(11) NOT NULL COMMENT 'S??? ti???n',
  `limit_number` int(11) NOT NULL COMMENT 'gi???i h???n l?????t mua',
  `number_used` int(11) NOT NULL COMMENT 'S??? l?????ng ???? nh???p',
  `expiration_date` date NOT NULL COMMENT 'Ng??y h???t h???n',
  `payment_limit` int(11) NOT NULL COMMENT 'gi???i h???n ????n h??ng t???i thi???u',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'M?? t???',
  `created` date NOT NULL,
  `orders` int(11) NOT NULL,
  `trash` int(1) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_district`
--

CREATE TABLE `db_district` (
  `id` int(5) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `type` varchar(30) CHARACTER SET utf8 NOT NULL,
  `provinceid` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_order`
--

CREATE TABLE `db_order` (
  `id` int(11) NOT NULL,
  `orderCode` varchar(8) CHARACTER SET utf8 NOT NULL,
  `customerid` int(11) NOT NULL,
  `orderdate` datetime NOT NULL,
  `fullname` varchar(100) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8 NOT NULL,
  `money` int(12) NOT NULL,
  `price_ship` int(11) NOT NULL,
  `coupon` int(11) NOT NULL,
  `province` int(5) NOT NULL,
  `district` int(5) NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 NOT NULL,
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_orderdetail`
--

CREATE TABLE `db_orderdetail` (
  `id` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `count` int(10) NOT NULL,
  `price` int(11) NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_producer`
--

CREATE TABLE `db_producer` (
  `id` int(10) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `trash` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_product`
--

CREATE TABLE `db_product` (
  `id` int(11) NOT NULL,
  `catid` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 NOT NULL,
  `sortDesc` text CHARACTER SET utf8 NOT NULL,
  `detail` text CHARACTER SET utf8 NOT NULL,
  `producer` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `number_buy` int(11) NOT NULL,
  `sale` int(3) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `price_sale` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT 'HDL',
  `modified` datetime NOT NULL,
  `modified_by` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT 'HDL',
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_province`
--

CREATE TABLE `db_province` (
  `id` int(5) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `type` varchar(30) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `db_slider`
--

CREATE TABLE `db_slider` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `link` varchar(255) CHARACTER SET utf8 NOT NULL,
  `img` varchar(100) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT 'Supper Admin',
  `modified` datetime NOT NULL,
  `modified_by` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT 'Supper Admin',
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `type` int(2) DEFAULT 0,
  `detail` text CHARACTER SET utf8 NOT NULL,
  `spname` varchar(255) CHARACTER SET utf8 NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_slider`
--

INSERT INTO `db_slider` (`id`, `name`, `link`, `img`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `status`, `type`, `detail`, `spname`, `price`) VALUES
(9, 'R?????u S??m ng???c Linh', 'anh-1', '295626352_463047169160338_7807561819756896299_n.jpg', '2022-08-05 15:40:53', '1', '2022-08-09 16:58:03', '', 1, 1, 0, '<p>R?????u S&acirc;m ng???c Linh</p>\r\n', 'R?????u S??m ng???c Linh', 0),
(10, '?????ng h??? Napolion', 'anh-2', '295554602_462098245921897_1093378652910772994_n.jpg', '2022-08-05 15:41:56', '1', '2022-08-09 16:56:59', '', 1, 1, 0, '<p>?????ng h??? napolion</p>\r\n\r\n<p>Ch???t li???u ?????ng</p>\r\n\r\n<p>Ch???y b???ng d&acirc;y c&oacute;t</p>\r\n\r\n<p>Tr??ng b&agrave;y c???c ?????p</p>\r\n\r\n<p>S??? d???ng t???t</p>\r\n', '?????ng h??? Napolion', 0),
(11, 'S??m Ng???c Linh', 'anh-3', '295465192_461978019267253_2780816907860748843_n.jpg', '2022-08-05 15:44:27', '1', '2022-08-09 16:50:10', '', 1, 1, 0, '<p>Gi???m gi&aacute; 30% t???t c??? c&aacute;c m???t h&agrave;ng</p>\r\n\r\n<p><img alt=\"?????????????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tb5/1/16/1f481_200d_2642.png\" style=\"height:16px; width:16px\" /><img alt=\"????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t99/1/16/1f33a.png\" style=\"height:16px; width:16px\" />S&Acirc;M NG???C LINH T??NG C?????NG S???C ????? KH&Aacute;NG V&Agrave; PH&Ograve;NG NG???A M???I B???NH T???T.</p>\r\n\r\n<p><img alt=\"????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t40/1/16/1f4a5.png\" style=\"height:16px; width:16px\" />C&ocirc;ng d???ng<img alt=\"????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t6c/1/16/1f4aa.png\" style=\"height:16px; width:16px\" /></p>\r\n\r\n<p><img alt=\"????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/te0/1/16/1f31f.png\" style=\"height:16px; width:16px\" />B???i b??? s???c kh???e, b??? kh&iacute; huy???t.</p>\r\n\r\n<p><img alt=\"????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/te0/1/16/1f31f.png\" style=\"height:16px; width:16px\" />Tr??? ??au b???ng,c???n m&aacute;u</p>\r\n\r\n<p><img alt=\"????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/te0/1/16/1f31f.png\" style=\"height:16px; width:16px\" />B&igrave;nh ???n huy???t &aacute;p cao v&agrave; th???p</p>\r\n\r\n<p><img alt=\"????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/te0/1/16/1f31f.png\" style=\"height:16px; width:16px\" />??i???u tr??? ti???u ???????ng(d&ugrave;ng s&acirc;m t????i s???y kh&ocirc;,b???o qu???n ng??n m&aacute;t)</p>\r\n\r\n<p><img alt=\"????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/te0/1/16/1f31f.png\" style=\"height:16px; width:16px\" />Gi???m ??au,ch???ng strees</p>\r\n\r\n<p><img alt=\"????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/te0/1/16/1f31f.png\" style=\"height:16px; width:16px\" />T??ng c?????ng sinh l???c v&agrave; tr&iacute; l???c.</p>\r\n\r\n<p><img alt=\"????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/te0/1/16/1f31f.png\" style=\"height:16px; width:16px\" />T??ng kh??? n??ng mi???n d???ch.</p>\r\n\r\n<p><img alt=\"????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/te0/1/16/1f31f.png\" style=\"height:16px; width:16px\" />K&iacute;ch th&iacute;ch ho???t ?????ng tr&iacute; n&atilde;o.</p>\r\n\r\n<p><img alt=\"????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/te0/1/16/1f31f.png\" style=\"height:16px; width:16px\" />Gi???i ?????c gan</p>\r\n\r\n<p><img alt=\"????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/te0/1/16/1f31f.png\" style=\"height:16px; width:16px\" />H??? tr??? ??i???u tr??? v&agrave; ph&ograve;ng ng???a ung th??.</p>\r\n\r\n<p><img alt=\"????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/te0/1/16/1f31f.png\" style=\"height:16px; width:16px\" />Ch???ng suy nh?????c c?? th???, t??ng c?????ng s???c ????? kh&aacute;ng.</p>\r\n\r\n<p><img alt=\"????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/te0/1/16/1f31f.png\" style=\"height:16px; width:16px\" />Ti&ecirc;u ?????m, thanh gi???ng, ?????p da v&agrave; nhi???u c&ocirc;ng d???ng kh&aacute;c.</p>\r\n\r\n<p><img alt=\"?????????????????????????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t9b/1/16/1f468_200d_1f469_200d_1f467_200d_1f466.png\" style=\"height:16px; width:16px\" />Nh???ng ng?????i n&ecirc;n s??? d???ng S&acirc;m Ng???c Linh</p>\r\n\r\n<p><img alt=\"????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t51/1/16/1f449.png\" style=\"height:16px; width:16px\" />Ng?????i c???n b???i b??? s???c kho???</p>\r\n\r\n<p><img alt=\"????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t51/1/16/1f449.png\" style=\"height:16px; width:16px\" />Ng?????i m???i ???m d???y,s???c kho??? suy gi???m</p>\r\n\r\n<p><img alt=\"????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t51/1/16/1f449.png\" style=\"height:16px; width:16px\" />Ng?????i m???t m???i,huy???t &aacute;p cao v&agrave; th???p</p>\r\n\r\n<p><img alt=\"????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t51/1/16/1f449.png\" style=\"height:16px; width:16px\" />Ng?????i m??? m&aacute;u,ti???u ???????ng,vi&ecirc;m gan v&agrave; s?? gan</p>\r\n\r\n<p><img alt=\"????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t51/1/16/1f449.png\" style=\"height:16px; width:16px\" />Ng?????i th?????ng xuy&ecirc;n bia r?????u,bar s&agrave;n,d&ugrave;ng ch???t k&iacute;ch th&iacute;ch.</p>\r\n\r\n<p><img alt=\"??????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t40/1/16/25b6.png\" style=\"height:16px; width:16px\" />khi ng?????i m???t m???i,??au ???m,b???nh t???t ho???c y???u trong ng?????i,l???y t??? 3-4 l&aacute;t ng???m.T??? 2 ?????n 3 ti???ng sau s??? th???y ng?????i kho??? l&ecirc;n tr&ocirc;ng th???y.</p>\r\n\r\n<p><img alt=\"??????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/te2/1/16/270d.png\" style=\"height:16px; width:16px\" />H??? tr??? ki???m ?????nh S&acirc;m ????? ch???ng minh t???t c??? c&aacute;c ho???t ch???t ?????c tr??ng, trong ??&oacute; c&oacute; ch???t Mr2 qu&yacute; hi???m, ch??? c&oacute; S&acirc;m Ng???c Linh th???t m???i c&oacute; (Mr2 l&agrave; ch???t ???c ch??? t??? b&agrave;o ung th??, kh???i u)</p>\r\n\r\n<p><a href=\"https://www.facebook.com/hashtag/nh%E1%BB%AFng?__eep__=6&amp;__cft__[0]=AZXBG0qM9Vuxa5I3ZotzSkzC9GzdpJ9FjB0q-J2DeF9DMOsmCncTdmNeXISdPalknaBC_evNzUJC7AMZ99lzUQXAaI2SnCktrGbJSU677cpwspzEdxiFVsRHrniJOhhos4E-hWYPUk0jUiE0Ku8l9BdZWQw0WBCzCRZyVYsrb1jfGg&amp;__tn__=*NK-R\">#nh???ng</a> c??? s&acirc;m Ng???c linh ?????p nh???t#</p>\r\n\r\n<p><a href=\"https://www.facebook.com/hashtag/c%E1%BB%A7?__eep__=6&amp;__cft__[0]=AZXBG0qM9Vuxa5I3ZotzSkzC9GzdpJ9FjB0q-J2DeF9DMOsmCncTdmNeXISdPalknaBC_evNzUJC7AMZ99lzUQXAaI2SnCktrGbJSU677cpwspzEdxiFVsRHrniJOhhos4E-hWYPUk0jUiE0Ku8l9BdZWQw0WBCzCRZyVYsrb1jfGg&amp;__tn__=*NK-R\">#c???</a> s&acirc;m Ng???c Linh d&aacute;ng ?????c nh???t#</p>\r\n\r\n<p><a href=\"https://www.facebook.com/hashtag/hoa?__eep__=6&amp;__cft__[0]=AZXBG0qM9Vuxa5I3ZotzSkzC9GzdpJ9FjB0q-J2DeF9DMOsmCncTdmNeXISdPalknaBC_evNzUJC7AMZ99lzUQXAaI2SnCktrGbJSU677cpwspzEdxiFVsRHrniJOhhos4E-hWYPUk0jUiE0Ku8l9BdZWQw0WBCzCRZyVYsrb1jfGg&amp;__tn__=*NK-R\">#hoa</a> s&acirc;m Ng???c Linh #</p>\r\n\r\n<p><a href=\"https://www.facebook.com/hashtag/qu%E1%BA%A3?__eep__=6&amp;__cft__[0]=AZXBG0qM9Vuxa5I3ZotzSkzC9GzdpJ9FjB0q-J2DeF9DMOsmCncTdmNeXISdPalknaBC_evNzUJC7AMZ99lzUQXAaI2SnCktrGbJSU677cpwspzEdxiFVsRHrniJOhhos4E-hWYPUk0jUiE0Ku8l9BdZWQw0WBCzCRZyVYsrb1jfGg&amp;__tn__=*NK-R\">#qu???</a> s&acirc;m ng???c linh#</p>\r\n\r\n<p><a href=\"https://www.facebook.com/hashtag/c%E1%BB%A7?__eep__=6&amp;__cft__[0]=AZXBG0qM9Vuxa5I3ZotzSkzC9GzdpJ9FjB0q-J2DeF9DMOsmCncTdmNeXISdPalknaBC_evNzUJC7AMZ99lzUQXAaI2SnCktrGbJSU677cpwspzEdxiFVsRHrniJOhhos4E-hWYPUk0jUiE0Ku8l9BdZWQw0WBCzCRZyVYsrb1jfGg&amp;__tn__=*NK-R\">#c???</a> s&acirc;m ng???c linh kh???ng nh???t#</p>\r\n\r\n<p>Li&ecirc;n h??? ??t 0327428268 ????? ???????c t?? v???n tr???c ti???p</p>\r\n\r\n<p>Zalo: 0327427268. Kh&aacute;nh Xu&acirc;n Gia Lai</p>\r\n\r\n<p>Bao gi&aacute; r??? nh???t th??? tr?????ng <img alt=\"???????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/ta8/1/16/1f396.png\" style=\"height:16px; width:16px\" /><img alt=\"???????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/ta8/1/16/1f396.png\" style=\"height:16px; width:16px\" /><img alt=\"???????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/ta8/1/16/1f396.png\" style=\"height:16px; width:16px\" /><img alt=\"???????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/ta8/1/16/1f396.png\" style=\"height:16px; width:16px\" /><img alt=\"???????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/ta8/1/16/1f396.png\" style=\"height:16px; width:16px\" /></p>\r\n', 'S??m Ng???c Linh', 0),
(12, ' Hoa, qu??? S??m Ng???c Linh', 'anh-4', '294574376_463046362493752_1628037000112334995_n.jpg', '2022-08-05 15:44:35', '1', '2022-08-09 16:48:29', '', 1, 1, 0, '<p><strong>E l???i v??? hoa S&acirc;m Ng???c Linh v&agrave; qu??? S&acirc;m Ng???c Linh. Gi&aacute; h??? nhi???t<img alt=\"????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/ta/1/16/1f343.png\" style=\"height:16px; width:16px\" /><img alt=\"??????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t14/1/16/2618.png\" style=\"height:16px; width:16px\" /><img alt=\"????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/te3/1/16/1f490.png\" style=\"height:16px; width:16px\" /></strong></p>\r\n', ' Hoa, qu??? S??m Ng???c Linh', 0),
(13, '????ng tr??ng h??? th???o ve s???u', 'anh-5', '295604552_463047472493641_3931592669679370247_n.jpg', '2022-08-05 15:44:44', '1', '2022-08-09 16:46:30', '', 1, 1, 0, '<p>??&ocirc;ng tr&ugrave;ng h??? th???o ve s???u</p>\r\n', '????ng tr??ng h??? th???o ve s???u', 0),
(14, 'N???m lim xanh r???ng', 'anh-6', '295820094_463486475783074_5643852223573261498_n.jpg', '2022-08-05 15:44:56', '1', '2022-08-09 16:45:46', '', 1, 1, 0, '<p>N???m lim xanh r???ng. Kh???c tinh c???a u, b?????u</p>\r\n\r\n<p>Gi&aacute; r???ng: 1350k</p>\r\n\r\n<p>Tr???ng: 550k</p>\r\n', 'N???m lim xanh r???ng', 1350000),
(15, 'S??m cau ?????', 'anh-7', '295693497_463487049116350_2796282903166720062_n.jpg', '2022-08-05 15:45:12', '1', '2022-08-09 16:44:20', '', 1, 1, 0, '<p><img alt=\"???\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tdf/1/16/274e.png\" style=\"height:16px; width:16px\" /><img alt=\"???\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tdd/1/16/274c.png\" style=\"height:16px; width:16px\" /> T&aacute;c d???ng c???a s&acirc;m cau ?????.</p>\r\n\r\n<p>+ T&aacute;c d???ng b??? th???n tr&aacute;ng d????ng, ki???n g&acirc;n tr&aacute;ng c???t, c??? tinh h??n ?????c bi???t l&agrave; ??? v&ograve;ng b???ng</p>\r\n\r\n<p>+ T&aacute;c d???ng b???i b??? s???c kh???e c?? th???</p>\r\n\r\n<p>+ T&aacute;c d???ng l???i ti???u</p>\r\n\r\n<p>+ Tr??? v&agrave;ng da, hen xuy???n,Tr??</p>\r\n\r\n<p>+ T&aacute;c d???ng t??ng c?????ng ho???t ?????ng ph&ograve;ng the, t??ng c?????ng kh??? n??ng cho c??? nam v&agrave; n???.</p>\r\n\r\n<p>+ Ng?????i gi&agrave; ??au nh???c x????ng kh???p, ch&acirc;n tay t&ecirc; m???i</p>\r\n\r\n<p>+ Li???t d????ng, v&ocirc; sinh, xu???t tinh s???m</p>\r\n\r\n<p>+ Ng?????i gi&agrave; ??au nh???c x????ng kh???p, ch&acirc;n tay t&ecirc; m???i</p>\r\n', 'S??m cau ?????', 0),
(16, 'S??M D??Y NG???C LINH ', 'anh-8', '295711017_463487549116300_6925610706705369456_n.jpg', '2022-08-05 15:45:27', '1', '2022-08-09 16:42:26', '', 1, 1, 0, '<p>S&Acirc;M D&Acirc;Y NG???C LINH</p>\r\n\r\n<p><img alt=\"????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t40/1/16/1f4a5.png\" style=\"height:16px; width:16px\" /> C&ocirc;ng d???ng:</p>\r\n\r\n<p>- Gi&uacute;p t??ng c?????ng s???c ????? kh&aacute;ng, thanh l???c c?? th???.</p>\r\n\r\n<p>- Gi???i ?????c, t??ng c?????ng kh&iacute; huy???t.</p>\r\n\r\n<p>- H??? tr??? ti&ecirc;u h&oacute;a, gi&uacute;p ??n ngon mi???ng, c???i thi???n gi???c ng???</p>\r\n\r\n<p>- Gi???m c??ng th???ng, m???t m???i, t??ng kh??? n??ng sinh s???n h???ng c???u</p>\r\n\r\n<p>- Ch???ng l&atilde;o h&oacute;a, gi&uacute;p da d??? h???ng h&agrave;o.</p>\r\n\r\n<p><img alt=\"????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t40/1/16/1f4a5.png\" style=\"height:16px; width:16px\" /> C&aacute;ch d&ugrave;ng : N???u n?????c u???ng h???ng ng&agrave;y, h???m g&agrave;, ng&acirc;m r?????u, ng&acirc;m m???t ong...</p>\r\n\r\n<p>?????c bi???t C??? tr??? nh??? v&agrave; ng?????i l???n tu???i ?????u c&oacute; th??? s??? d???ng li&ecirc;n t???c h???ng ng&agrave;y m&agrave; kh&ocirc;ng g&acirc;y t&aacute;c d???ng ph??? ! <img alt=\"??????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t22/1/16/260e.png\" style=\"height:16px; width:16px\" /> 0327427268</p>\r\n', 'S??M D??Y NG???C LINH ', 0),
(17, 'Long nh??n v??? m???i', 'anh-9', '295006970_463488909116164_65639118979029400_n.jpg', '2022-08-05 15:45:38', '1', '2022-08-09 16:38:38', '', 1, 1, 0, '<p>Long nh&atilde;n v??? m???i<br />\r\n220k/kg</p>\r\n', 'Long nh??n v??? m???i', 220000),
(18, 'Qu??? La H??n', '10', '296972928_467348982063490_415514581945630276_n.jpg', '2022-08-05 15:45:46', '1', '2022-08-09 16:37:36', '', 1, 1, 0, '<p>QU??? LA H&Aacute;N:<img alt=\"??????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t6c/1/16/2764.png\" style=\"height:16px; width:16px\" /><img alt=\"??????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t6c/1/16/2764.png\" style=\"height:16px; width:16px\" /><img alt=\"??????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t6c/1/16/2764.png\" style=\"height:16px; width:16px\" /><img alt=\"??????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t6c/1/16/2764.png\" style=\"height:16px; width:16px\" /><img alt=\"??????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t6c/1/16/2764.png\" style=\"height:16px; width:16px\" /><img alt=\"??????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t6c/1/16/2764.png\" style=\"height:16px; width:16px\" /><img alt=\"??????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t6c/1/16/2764.png\" style=\"height:16px; width:16px\" /><br />\r\n1. Gi???m nguy c?? b&eacute;o ph&igrave; v&agrave; ti???u ???????ng<br />\r\n2. Tr??? ti???u ???????ng<br />\r\n3. T&aacute;c d???ng ch???ng oxy ho&aacute; m???nh m???<br />\r\n4. Ch???ng vi&ecirc;m, gi???i nhi???t<br />\r\n5. Ch???ng nhi???m tr&ugrave;ng<br />\r\n6. Ti&ecirc;u tan m???t m???i<br />\r\n7. Ph&ograve;ng v&agrave; ??i???u tr??? ung th??<br />\r\n8. Kh&aacute;ng Histamin ch???ng d??? ???ng<br />\r\n?????c bi???t qu??? La H&aacute;n c&ograve;n tr??? ho cho b&eacute; r???t t???t, u???ng thay n?????c v&agrave;o m&ugrave;a h&egrave; th&igrave; m&aacute;t v&agrave; d??? ch???u</p>\r\n', 'Qu??? La H??n', 0),
(19, 'HOA ??U ????? ?????C KH??', '11', '296376966_467349765396745_183881270749123771_n.jpg', '2022-08-05 15:46:00', '1', '2022-08-09 16:36:49', '', 1, 1, 0, '<p>HOA ??U ????? ?????C KH&Ocirc; .</p>\r\n\r\n<p><img alt=\"???\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tdf/1/16/274e.png\" style=\"height:16px; width:16px\" />T&aacute;c d???ng</p>\r\n\r\n<p>1. Hoa ??u ????? ?????c c&oacute; t&aacute;c d???ng ??i???u tr??? ho, vi&ecirc;m h???ng, m???t ti???ng kh???n ti???ng</p>\r\n\r\n<p>2. Hoa ??u ????? ?????c h??? tr??? ??i???u tr??? b???nh ung th??, ng??n ch???n s??? ph&aacute;t tri???n c???a c&aacute;c t??? b&agrave;o ung th??: ?????c bi???t l&agrave; ung th?? v&uacute;, ung th?? ph???i , v&agrave; ung th?? ti???n li???t tuy???n</p>\r\n\r\n<p>3. Hoa ??u ????? k&iacute;ch th&iacute;ch ti&ecirc;u ho&aacute;, h??? tr??? ??i???u tr??? b???nh ??au v&agrave; vi&ecirc;m lo&eacute;t d??? d&agrave;y</p>\r\n\r\n<p>4. Hoa ??u ????? ?????c h??? tr??? ??i???u tr??? s???i th???n</p>\r\n\r\n<p>5. Hoa ??u ????? ?????c ch???a ??&aacute;i nu???t , ??&aacute;i r???t</p>\r\n\r\n<p>kh&ocirc;ng s??? d???ng cho ph??? n??? mang thai .</p>\r\n\r\n<p><img alt=\"???\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/te2/1/16/270d.png\" style=\"height:16px; width:16px\" />H&agrave;ng s???n ,s&iacute;p to&agrave;n qu???c .</p>\r\n', 'HOA ??U ????? ?????C KH??', 0),
(20, 'Th???t di???p nh???t chi hoa', '12', '297099433_468511678613887_376994719721691009_n.jpg', '2022-08-05 15:46:12', '1', '2022-08-09 16:35:06', '', 1, 1, 0, '<p>Em c&ograve;n 7kg th???t di???p nh???t chi hoa</p>\r\n\r\n<p>L&ecirc;n b&igrave;nh si&ecirc;u ?????p</p>\r\n\r\n<p>C&oacute; b&igrave;nh m???u g???i kh&aacute;ch tham kh???o</p>\r\n\r\n<p>Gi&aacute; ko th??? r??? h??n</p>\r\n\r\n<p>Li&ecirc;n l???c&nbsp;em ???</p>\r\n', 'Th???t di???p nh???t chi hoa', 0),
(21, 'C??? s??m v??i  gi??', '13', '296280370_468514008613654_1910745639375551004_n.jpg', '2022-08-05 15:46:24', '1', '2022-08-09 16:33:54', '', 1, 1, 0, '<p>C??? s&acirc;m v&ugrave;i &nbsp;gi&agrave; tr&ecirc;n 30 tu???i &nbsp;duy nh???t hi???m g???p ??&acirc;y 1,180 kg ,inbox gi&aacute;</p>\r\n', 'C??? s??m v??i  gi??', 0),
(22, 'S??m r???ng', '14', '296131136_468515098613545_6229759262132178086_n.jpg', '2022-08-05 15:46:37', '1', '2022-08-09 16:31:30', '', 1, 1, 0, '<p>M???u r??? cho kh&aacute;ch s??u t???m</p>\r\n', 'S??m r???ng', 0),
(23, 'C???p s??m Ng???c Linh r???ng si??u kh???ng', '15', '296442178_469246158540439_8859760700539725402_n.jpg', '2022-08-05 15:46:50', '1', '2022-08-09 16:30:06', '', 1, 1, 0, '<p>C???p s&acirc;m Ng???c Linh r???ng si&ecirc;u kh???ng 700g, d&aacute;ng r???ng si&ecirc;u ?????p, gi&agrave; tr??m n??m tu???i, m???i xu???ng n&uacute;i c&agrave;nh l&aacute; xanh ri. ??&atilde; ki???m ?????nh chu???n s&acirc;m, si&ecirc;u vip c&oacute; 102.</p>\r\n', 'C???p s??m Ng???c Linh r???ng si??u kh???ng', 0),
(24, 'Si??u ph???m b??? ??inh l??ng 1000l', '16', '296058162_469247335206988_5708280207821382782_n.jpg', '2022-08-05 15:47:04', '1', '2022-08-09 16:24:49', '', 1, 1, 0, '<p>Si&ecirc;u ph???m b??? ??inh l??ng 1000l<br />\r\nC??? ??inh l??ng 139kg v&iacute;p chu???n b???n n???p l&aacute; nh???<br />\r\n??&ocirc;n g??? s???i nga h&agrave;ng 1 ??e to kh???ng khi???p<br />\r\nH&agrave;ng ch???t si&ecirc;u ph???m ?????p nh???t khu v???c B???c b??? D&aacute;ng r???ng bay ph&uacute;c L???c v&agrave;o nh&agrave;<br />\r\nTr??ng b&agrave;y ho???c bi???u nh&agrave; c???c ph???m nu&ocirc;n ???<br />\r\n<img alt=\"????\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t51/1/16/1f449.png\" style=\"height:16px; width:16px\" />&nbsp;c??? b??? c??? c??? c??? ??&ocirc;n ch??a r?????u<br />\r\nM???i m???i ng?????i ????ng b&aacute;n c&ugrave;ng em m???i ???<br />\r\nH&agrave;ng v???a n&ecirc;n b??? ???<br />\r\nIb zalo .0327427168 nh&agrave; e nh???n l&ecirc;n b??? cho kh&aacute;ch<br />\r\nTr??ng b&agrave;y ch??i r?????u c???c ph???m</p>\r\n', 'Si??u ph???m b??? ??inh l??ng 1000l', 0),
(25, 'B??nh r?????u nh??n s??m tr?????ng b???ch hoang gi?? ', '17', '297546591_470185065113215_3957973994218678583_n.jpg', '2022-08-05 15:47:13', '1', '2022-08-09 16:11:54', '', 1, 1, 0, '<p>B&igrave;nh 8l h&agrave;n</p>\r\n\r\n<p>Gi&aacute; h??n hai tri???u</p>\r\n\r\n<p>B&igrave;nh r?????u nh&acirc;n s&acirc;m tr?????ng b???ch hoang gi&atilde; ! R??? ng???c ?????p h???t n?????c ch???m!t???a k&iacute;n b&igrave;nh! 1 v???t s???o li???n l&acirc;u n??m t??? nhi&ecirc;n th??? hi???n r&otilde; ????? hoang gi&atilde; c???a c??? nh&acirc;n s&acirc;m ch???t l?????ng s&acirc;m n&uacute;i tr?????ng b???ch s??n! B&igrave;nh 8.5lit h&agrave;n! B&aacute;n nhanh gi&aacute; 2,700r! Qu&aacute; r??? cho 1 cu???c t&igrave;nh!</p>\r\n', 'B??nh r?????u nh??n s??m tr?????ng b???ch hoang gi?? ', 2700000),
(26, 'Kim Tuy???n', 'hi', '298054061_472856031512785_5886945873694161624_n.jpg', '2022-08-05 16:03:18', '1', '2022-08-09 16:10:42', '', 1, 1, 0, '<p>C&ograve;n 250g l???n kim tuy???n x??? 600</p>\r\n', 'Kim Tuy???n', 600000),
(27, 'Qu??? s??m x???', 'sam-ngoc-linh', 'S??M_NG???C_LINH_(1).png', '2022-08-09 13:58:49', '1', '2022-08-10 09:57:23', '', 1, 1, NULL, '<ul>\r\n	<li><span style=\"color:#c0392b\">Qu??? s&acirc;m x???</span></li>\r\n</ul>\r\n', 'Qu??? s??m x???', 500000);

-- --------------------------------------------------------

--
-- Table structure for table `db_user`
--

CREATE TABLE `db_user` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) CHARACTER SET utf8 NOT NULL,
  `username` varchar(225) CHARACTER SET utf8 NOT NULL,
  `password` varchar(64) CHARACTER SET utf8 NOT NULL,
  `role` int(11) NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 NOT NULL,
  `gender` int(1) NOT NULL,
  `phone` varchar(15) CHARACTER SET utf8 NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_user`
--

INSERT INTO `db_user` (`id`, `fullname`, `username`, `password`, `role`, `email`, `gender`, `phone`, `address`, `img`, `created`, `trash`, `status`) VALUES
(1, 'ADMIN', 'admin', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1, 'admin@gmail.com', 1, '0167892615', 'Pleiku', 'user-group.png', '2019-04-23 09:16:16', 1, 1),
(2, 'Qu???n l??', 'quanly', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1, 'quanly@gmail.com', 1, '0985657410', 'Pleiku', 'bc0d4c186522764fc9457b7bacb635e4.png', '2019-04-25 22:08:18', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_usergroup`
--

CREATE TABLE `db_usergroup` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `access` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_usergroup`
--

INSERT INTO `db_usergroup` (`id`, `name`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `access`, `status`) VALUES
(1, 'To??n quy???n', '2019-05-14 23:29:15', 1, '2019-05-14 23:29:15', 4, 1, 1, 1),
(2, 'Nh??n vi??n', '2019-05-14 23:29:21', 1, '2019-05-14 23:29:21', 4, 1, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `db_category`
--
ALTER TABLE `db_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_config`
--
ALTER TABLE `db_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_contact`
--
ALTER TABLE `db_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_content`
--
ALTER TABLE `db_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_customer`
--
ALTER TABLE `db_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_discount`
--
ALTER TABLE `db_discount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_district`
--
ALTER TABLE `db_district`
  ADD PRIMARY KEY (`id`),
  ADD KEY `matp` (`provinceid`);

--
-- Indexes for table `db_order`
--
ALTER TABLE `db_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customerid` (`customerid`),
  ADD KEY `province` (`province`),
  ADD KEY `district` (`district`),
  ADD KEY `province_2` (`province`),
  ADD KEY `district_2` (`district`),
  ADD KEY `province_3` (`province`),
  ADD KEY `district_3` (`district`);

--
-- Indexes for table `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productid` (`productid`),
  ADD KEY `orderid` (`orderid`);

--
-- Indexes for table `db_producer`
--
ALTER TABLE `db_producer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_product`
--
ALTER TABLE `db_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producer` (`producer`),
  ADD KEY `catid` (`catid`);

--
-- Indexes for table `db_province`
--
ALTER TABLE `db_province`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_slider`
--
ALTER TABLE `db_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_user`
--
ALTER TABLE `db_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role` (`role`);

--
-- Indexes for table `db_usergroup`
--
ALTER TABLE `db_usergroup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `db_category`
--
ALTER TABLE `db_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `db_config`
--
ALTER TABLE `db_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `db_contact`
--
ALTER TABLE `db_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `db_content`
--
ALTER TABLE `db_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `db_customer`
--
ALTER TABLE `db_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `db_discount`
--
ALTER TABLE `db_discount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `db_order`
--
ALTER TABLE `db_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `db_producer`
--
ALTER TABLE `db_producer`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `db_product`
--
ALTER TABLE `db_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `db_slider`
--
ALTER TABLE `db_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `db_user`
--
ALTER TABLE `db_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `db_usergroup`
--
ALTER TABLE `db_usergroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `db_district`
--
ALTER TABLE `db_district`
  ADD CONSTRAINT `db_district_ibfk_1` FOREIGN KEY (`provinceid`) REFERENCES `db_province` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `db_order`
--
ALTER TABLE `db_order`
  ADD CONSTRAINT `db_order_ibfk_2` FOREIGN KEY (`province`) REFERENCES `db_province` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `db_order_ibfk_3` FOREIGN KEY (`district`) REFERENCES `db_district` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `db_order_ibfk_4` FOREIGN KEY (`customerid`) REFERENCES `db_customer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  ADD CONSTRAINT `db_orderdetail_ibfk_2` FOREIGN KEY (`productid`) REFERENCES `db_product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `db_orderdetail_ibfk_3` FOREIGN KEY (`orderid`) REFERENCES `db_order` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `db_product`
--
ALTER TABLE `db_product`
  ADD CONSTRAINT `db_product_ibfk_1` FOREIGN KEY (`catid`) REFERENCES `db_category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `db_product_ibfk_2` FOREIGN KEY (`producer`) REFERENCES `db_producer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `db_user`
--
ALTER TABLE `db_user`
  ADD CONSTRAINT `db_user_ibfk_1` FOREIGN KEY (`role`) REFERENCES `db_usergroup` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
