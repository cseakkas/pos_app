-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2020 at 06:45 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `posapp_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add country entry', 7, 'add_countryentry'),
(20, 'Can change country entry', 7, 'change_countryentry'),
(21, 'Can delete country entry', 7, 'delete_countryentry'),
(22, 'Can add product', 8, 'add_product'),
(23, 'Can change product', 8, 'change_product'),
(24, 'Can delete product', 8, 'delete_product'),
(25, 'Can add user registrations', 9, 'add_userregistrations'),
(26, 'Can change user registrations', 9, 'change_userregistrations'),
(27, 'Can delete user registrations', 9, 'delete_userregistrations'),
(28, 'Can add sales item', 10, 'add_salesitem'),
(29, 'Can change sales item', 10, 'change_salesitem'),
(30, 'Can delete sales item', 10, 'delete_salesitem'),
(31, 'Can add confirm sale item', 11, 'add_confirmsaleitem'),
(32, 'Can change confirm sale item', 11, 'change_confirmsaleitem'),
(33, 'Can delete confirm sale item', 11, 'delete_confirmsaleitem'),
(34, 'Can add gift card', 12, 'add_giftcard'),
(35, 'Can change gift card', 12, 'change_giftcard'),
(36, 'Can delete gift card', 12, 'delete_giftcard');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$100000$QrEiNfVlpMVG$4pHtuPigiJbeOKoyC4ihKAj8ce4amYhAWmXTQpOD3TY=', '2020-11-17 15:08:03.447529', 1, 'admin', '', '', '', 1, 1, '2020-11-17 15:07:17.019472');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-11-17 15:08:27.976773', '1', 'Bangladesh', 1, '[{\"added\": {}}]', 7, 1),
(2, '2020-11-17 15:08:52.919978', '2', 'America', 1, '[{\"added\": {}}]', 7, 1),
(3, '2020-11-17 15:09:23.731635', '1', 'Md. Akkas Mia', 1, '[{\"added\": {}}]', 9, 1),
(4, '2020-11-17 15:10:03.536885', '2', 'Adam Smith', 1, '[{\"added\": {}}]', 9, 1),
(5, '2020-11-17 15:16:14.771377', '2', 'Casual Panjabi', 2, '[{\"changed\": {\"fields\": [\"price\"]}}]', 8, 1),
(6, '2020-11-17 15:37:45.646302', '1', 'GiftCard object (1)', 1, '[{\"added\": {}}]', 12, 1),
(7, '2020-11-17 15:37:59.011758', '2', 'GiftCard object (2)', 1, '[{\"added\": {}}]', 12, 1),
(8, '2020-11-17 16:59:26.025075', '3', 'ConfirmSaleItem object (3)', 3, '', 11, 1),
(9, '2020-11-17 16:59:26.097728', '2', 'ConfirmSaleItem object (2)', 3, '', 11, 1),
(10, '2020-11-17 16:59:26.187675', '1', 'ConfirmSaleItem object (1)', 3, '', 11, 1),
(11, '2020-11-17 16:59:36.281604', '9', 'SalesItem object (9)', 3, '', 10, 1),
(12, '2020-11-17 16:59:36.340571', '8', 'SalesItem object (8)', 3, '', 10, 1),
(13, '2020-11-17 16:59:36.411530', '7', 'SalesItem object (7)', 3, '', 10, 1),
(14, '2020-11-17 16:59:36.453504', '6', 'SalesItem object (6)', 3, '', 10, 1),
(15, '2020-11-17 16:59:36.468497', '5', 'SalesItem object (5)', 3, '', 10, 1),
(16, '2020-11-17 16:59:36.486485', '4', 'SalesItem object (4)', 3, '', 10, 1),
(17, '2020-11-17 16:59:36.542455', '3', 'SalesItem object (3)', 3, '', 10, 1),
(18, '2020-11-17 16:59:36.561444', '2', 'SalesItem object (2)', 3, '', 10, 1),
(19, '2020-11-17 16:59:36.575435', '1', 'SalesItem object (1)', 3, '', 10, 1),
(20, '2020-11-17 17:00:24.830164', '11', 'SalesItem object (11)', 3, '', 10, 1),
(21, '2020-11-17 17:00:24.877881', '10', 'SalesItem object (10)', 3, '', 10, 1),
(22, '2020-11-17 17:43:31.197945', '1', 'Md. Akkas Mia', 2, '[{\"changed\": {\"fields\": [\"user_photo\"]}}]', 9, 1),
(23, '2020-11-17 17:43:42.952317', '2', 'Adam Smith', 2, '[{\"changed\": {\"fields\": [\"user_photo\"]}}]', 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(11, 'pos_app', 'confirmsaleitem'),
(7, 'pos_app', 'countryentry'),
(12, 'pos_app', 'giftcard'),
(8, 'pos_app', 'product'),
(10, 'pos_app', 'salesitem'),
(9, 'pos_app', 'userregistrations'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-11-17 15:06:33.192418'),
(2, 'auth', '0001_initial', '2020-11-17 15:06:38.981339'),
(3, 'admin', '0001_initial', '2020-11-17 15:06:40.918700'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-11-17 15:06:40.934325'),
(5, 'contenttypes', '0002_remove_content_type_name', '2020-11-17 15:06:41.528034'),
(6, 'auth', '0002_alter_permission_name_max_length', '2020-11-17 15:06:42.561681'),
(7, 'auth', '0003_alter_user_email_max_length', '2020-11-17 15:06:43.061589'),
(8, 'auth', '0004_alter_user_username_opts', '2020-11-17 15:06:43.092892'),
(9, 'auth', '0005_alter_user_last_login_null', '2020-11-17 15:06:43.530304'),
(10, 'auth', '0006_require_contenttypes_0002', '2020-11-17 15:06:43.561610'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2020-11-17 15:06:43.592859'),
(12, 'auth', '0008_alter_user_username_max_length', '2020-11-17 15:06:44.548286'),
(13, 'auth', '0009_alter_user_last_name_max_length', '2020-11-17 15:06:45.079497'),
(14, 'pos_app', '0001_initial', '2020-11-17 15:06:47.659972'),
(15, 'pos_app', '0002_product_currency', '2020-11-17 15:06:48.648411'),
(16, 'pos_app', '0003_auto_20201116_2106', '2020-11-17 15:06:48.882718'),
(17, 'pos_app', '0004_auto_20201116_2121', '2020-11-17 15:06:50.260087'),
(18, 'pos_app', '0005_remove_product_currency', '2020-11-17 15:06:50.603865'),
(19, 'pos_app', '0006_auto_20201116_2158', '2020-11-17 15:06:50.650663'),
(20, 'pos_app', '0007_auto_20201116_2205', '2020-11-17 15:06:50.713235'),
(21, 'pos_app', '0008_auto_20201117_0131', '2020-11-17 15:06:51.556922'),
(22, 'pos_app', '0009_salesitem', '2020-11-17 15:06:52.958712'),
(23, 'pos_app', '0010_salesitem_invoice_number', '2020-11-17 15:06:53.201174'),
(24, 'pos_app', '0011_confirmsaleitem', '2020-11-17 15:06:54.107360'),
(25, 'sessions', '0001_initial', '2020-11-17 15:06:54.497958'),
(26, 'pos_app', '0012_giftcard', '2020-11-17 15:37:15.114133'),
(27, 'pos_app', '0013_auto_20201117_2222', '2020-11-17 16:22:33.878345'),
(28, 'pos_app', '0014_auto_20201117_2257', '2020-11-17 16:57:59.043811'),
(29, 'pos_app', '0015_auto_20201117_2326', '2020-11-17 17:26:46.586759');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('38w8kjd9olrwl6ovuoi9hlue8lcka3oj', 'ODBlOTg4MjFjODllZTY5ZWExMmI1ZmUyMjI2NjcxNjdlOTg3NzMxMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2ZDllOThkMmIzY2YxYWNiZWFlMGJiYTY2NWFmMmVkZDA1M2Q0ZjAyIiwiZnVsbF9uYW1lIjoiTWQuIEFra2FzIE1pYSIsInVzZXJfZW1haWwiOiJha2thc0BnbWFpbC5jb20iLCJ1c2VyaWQiOjEsImNvdW50cnkiOiJCYW5nbGFkZXNoIn0=', '2020-12-01 15:10:20.544499');

-- --------------------------------------------------------

--
-- Table structure for table `pos_app_confirmsaleitem`
--

CREATE TABLE `pos_app_confirmsaleitem` (
  `id` int(11) NOT NULL,
  `invoice_number` int(11) NOT NULL,
  `grand_total` double NOT NULL,
  `discount` double NOT NULL,
  `vat_amount` double NOT NULL,
  `order_date` date NOT NULL,
  `status` tinyint(1) NOT NULL,
  `insert_by_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pos_app_confirmsaleitem`
--

INSERT INTO `pos_app_confirmsaleitem` (`id`, `invoice_number`, `grand_total`, `discount`, `vat_amount`, `order_date`, `status`, `insert_by_id`) VALUES
(4, 168580, 179520, 42240, 10560, '2020-11-17', 0, 1),
(5, 864023, 86275, 20300, 5075, '2020-11-17', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pos_app_countryentry`
--

CREATE TABLE `pos_app_countryentry` (
  `id` int(11) NOT NULL,
  `country_name` varchar(256) NOT NULL,
  `currency` varchar(256) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pos_app_countryentry`
--

INSERT INTO `pos_app_countryentry` (`id`, `country_name`, `currency`, `status`) VALUES
(1, 'Bangladesh', 'BDT', 1),
(2, 'America', 'USD', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pos_app_giftcard`
--

CREATE TABLE `pos_app_giftcard` (
  `id` int(11) NOT NULL,
  `card_code` int(11) NOT NULL,
  `card_amount` double NOT NULL,
  `add_date` datetime(6) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pos_app_giftcard`
--

INSERT INTO `pos_app_giftcard` (`id`, `card_code`, `card_amount`, `add_date`, `status`) VALUES
(1, 10001, 5000, '2020-11-17 15:37:45.646302', 1),
(2, 10002, 8000, '2020-11-17 15:37:58.990774', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pos_app_product`
--

CREATE TABLE `pos_app_product` (
  `id` int(11) NOT NULL,
  `product_name` varchar(256) NOT NULL,
  `product_code` varchar(256) NOT NULL,
  `quantity` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `product_images` varchar(100) NOT NULL,
  `insert_date` datetime(6) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `insert_by_id` int(11) NOT NULL,
  `product_details` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pos_app_product`
--

INSERT INTO `pos_app_product` (`id`, `product_name`, `product_code`, `quantity`, `discount`, `price`, `product_images`, `insert_date`, `status`, `insert_by_id`, `product_details`) VALUES
(1, 'Polo T-Shirt', '10001', 100, 0, 2580, 'images/product_images/fdg.jpg', '2020-11-17 15:11:27.662450', 1, 1, 'dsadf '),
(2, 'Casual Panjabi', '10002', 100, 0, 3500, 'images/product_images/cotton-casual-panjabi-for-men-lmp-249-910x1155.jpg', '2020-11-17 15:11:57.446595', 1, 1, 'adsf'),
(3, 'Formal Gabbiadini Pant ', '10003', 100, 0, 2350, 'images/product_images/asdf.jpg', '2020-11-17 15:12:56.442665', 1, 1, 'sdaf'),
(4, 'T-shart', '10004', 10, 0, 550, 'images/product_images/5edb4ad6ea746.jpg', '2020-11-17 15:13:27.524454', 1, 1, 'dss'),
(5, 'Formal Shirt', '10006', 100, 0, 1980, 'images/product_images/0000000ooo-600x600.jpeg', '2020-11-17 15:15:11.122477', 1, 1, 'dsafgsdaf ');

-- --------------------------------------------------------

--
-- Table structure for table `pos_app_salesitem`
--

CREATE TABLE `pos_app_salesitem` (
  `id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_price` double NOT NULL,
  `sales_date` datetime(6) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `insert_by_id` int(11) NOT NULL,
  `product_name_id` int(11) NOT NULL,
  `invoice_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pos_app_salesitem`
--

INSERT INTO `pos_app_salesitem` (`id`, `quantity`, `total_price`, `sales_date`, `status`, `insert_by_id`, `product_name_id`, `invoice_number`) VALUES
(12, 55, 192500, '2020-11-17 17:00:39.316257', 0, 1, 2, 168580),
(13, 34, 18700, '2020-11-17 17:00:39.320251', 0, 1, 4, 168580),
(14, 34, 67320, '2020-11-17 17:01:05.233331', 1, 1, 5, 864023),
(15, 34, 18700, '2020-11-17 17:01:05.236329', 1, 1, 4, 864023),
(16, 6, 15480, '2020-11-17 17:01:05.237330', 1, 1, 1, 864023),
(17, 45, 116100, '2020-11-17 17:22:00.252824', 0, 1, 1, 975532),
(18, 10, 23500, '2020-11-17 17:22:00.263815', 0, 1, 3, 975532),
(19, 3, 1650, '2020-11-17 17:22:00.263815', 0, 1, 4, 975532);

-- --------------------------------------------------------

--
-- Table structure for table `pos_app_userregistrations`
--

CREATE TABLE `pos_app_userregistrations` (
  `id` int(11) NOT NULL,
  `full_name` varchar(256) NOT NULL,
  `mobile` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `username` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `user_photo` varchar(100) NOT NULL,
  `reg_date` datetime(6) NOT NULL,
  `address` longtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `country_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pos_app_userregistrations`
--

INSERT INTO `pos_app_userregistrations` (`id`, `full_name`, `mobile`, `email`, `username`, `password`, `user_photo`, `reg_date`, `address`, `status`, `country_id`) VALUES
(1, 'Md. Akkas Mia', '01902353773', 'akkas@gmail.com', 'akkas', 'akkas123', 'images/user_photo/bbb.jpg', '2020-11-17 15:09:23.664695', '', 1, 1),
(2, 'Adam Smith', '215487410', 'adam@gmail.com', 'akssdd', 'adam123', 'images/user_photo/0000000ooo-600x600.jpeg', '2020-11-17 15:10:03.476918', '', 1, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `pos_app_confirmsaleitem`
--
ALTER TABLE `pos_app_confirmsaleitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pos_app_confirmsalei_insert_by_id_77945319_fk_pos_app_u` (`insert_by_id`);

--
-- Indexes for table `pos_app_countryentry`
--
ALTER TABLE `pos_app_countryentry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pos_app_giftcard`
--
ALTER TABLE `pos_app_giftcard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pos_app_product`
--
ALTER TABLE `pos_app_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pos_app_product_insert_by_id_caaee6ef_fk_pos_app_u` (`insert_by_id`);

--
-- Indexes for table `pos_app_salesitem`
--
ALTER TABLE `pos_app_salesitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pos_app_salesitem_insert_by_id_433096a6_fk_pos_app_u` (`insert_by_id`),
  ADD KEY `pos_app_salesitem_product_name_id_c1d6f9e0_fk_pos_app_product_id` (`product_name_id`);

--
-- Indexes for table `pos_app_userregistrations`
--
ALTER TABLE `pos_app_userregistrations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pos_app_userregistra_country_id_dfd8179b_fk_pos_app_c` (`country_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `pos_app_confirmsaleitem`
--
ALTER TABLE `pos_app_confirmsaleitem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pos_app_countryentry`
--
ALTER TABLE `pos_app_countryentry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pos_app_giftcard`
--
ALTER TABLE `pos_app_giftcard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pos_app_product`
--
ALTER TABLE `pos_app_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pos_app_salesitem`
--
ALTER TABLE `pos_app_salesitem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `pos_app_userregistrations`
--
ALTER TABLE `pos_app_userregistrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `pos_app_confirmsaleitem`
--
ALTER TABLE `pos_app_confirmsaleitem`
  ADD CONSTRAINT `pos_app_confirmsalei_insert_by_id_77945319_fk_pos_app_u` FOREIGN KEY (`insert_by_id`) REFERENCES `pos_app_userregistrations` (`id`);

--
-- Constraints for table `pos_app_product`
--
ALTER TABLE `pos_app_product`
  ADD CONSTRAINT `pos_app_product_insert_by_id_caaee6ef_fk_pos_app_u` FOREIGN KEY (`insert_by_id`) REFERENCES `pos_app_userregistrations` (`id`);

--
-- Constraints for table `pos_app_salesitem`
--
ALTER TABLE `pos_app_salesitem`
  ADD CONSTRAINT `pos_app_salesitem_insert_by_id_433096a6_fk_pos_app_u` FOREIGN KEY (`insert_by_id`) REFERENCES `pos_app_userregistrations` (`id`),
  ADD CONSTRAINT `pos_app_salesitem_product_name_id_c1d6f9e0_fk_pos_app_product_id` FOREIGN KEY (`product_name_id`) REFERENCES `pos_app_product` (`id`);

--
-- Constraints for table `pos_app_userregistrations`
--
ALTER TABLE `pos_app_userregistrations`
  ADD CONSTRAINT `pos_app_userregistra_country_id_dfd8179b_fk_pos_app_c` FOREIGN KEY (`country_id`) REFERENCES `pos_app_countryentry` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
