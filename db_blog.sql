-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 21, 2022 at 04:34 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `AjaxCrud`
--
CREATE DATABASE IF NOT EXISTS `AjaxCrud` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `AjaxCrud`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_04_16_012247_create_students_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `email`, `phone`, `course`, `created_at`, `updated_at`) VALUES
(3, 'Aslam', 'aslam@gmail.com', '65326623', 'ert', '2022-04-18 21:48:10', '2022-04-18 21:48:10'),
(4, 'Tuhin', 'tuhin@gmail.com', '673467673', 'cse', '2022-04-18 21:49:30', '2022-04-22 02:23:44'),
(5, 'Nazrul', 'nazrul@gmail.com', '56345636', 'BGE', '2022-04-18 21:50:32', '2022-04-18 21:50:32'),
(6, 'Nazrul', 'nazrul@gmail.com', '56345636', 'BGE', '2022-04-18 22:46:37', '2022-04-18 22:46:37'),
(7, 'Saiful Islam', 'peace9g@hotmail.com', '01848315008', 'Biology', '2022-04-18 23:14:17', '2022-04-22 02:24:32'),
(12, 'Jannat', 'jannat@gmail.com', '56346346334', 'Eng', '2022-04-29 03:44:51', '2022-04-29 03:44:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `alakardokan`
--
CREATE DATABASE IF NOT EXISTS `alakardokan` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `alakardokan`;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `no` int(11) NOT NULL,
  `nmae` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `img` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `place` varchar(100) NOT NULL,
  `shop` varchar(100) DEFAULT NULL,
  `id` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`no`, `nmae`, `category`, `img`, `price`, `place`, `shop`, `id`) VALUES
(1, 'Cotton half Sleeve', 't-shirt', '165_1-removebg-preview.png', '185 TK', 'narayanganj', 'Sujon Trailers', 1),
(2, 'Cotton half Sleeve', 't-shirt', '165_tk2-removebg-preview.png', '185 TK', 'narayanganj', 'Billal Stationary', 1),
(3, 'Cotton half Sleeve', 't-shirt', '165_tk3-removebg-preview.png', '185 TK\r\n', 'narayanganj', 'Talha Trailers', 1),
(4, 'Cotton half Sleeve', 't-shirt', '165_tk4-removebg-preview.png', '185 TK\r\n', 'kaladi', 'Zomor shop ', 2),
(5, 'Cotton half Sleeve', 't-shirt', '165_tk5-removebg-preview.png', '185 TK\r\n', 'kaladi', 'Nadia Trailers', 2),
(6, 'Cotton half Sleeve', 't-shirt', '165_tk6-removebg-preview.png', '185 TK\r\n', 'kaladi', 'MIa loundry', 2),
(7, 'Cotton half Sleeve', 't-shirt', 'TK_155_4.png165_tk7-removebg-preview.png', '185 TK\r\n', 'Golakandail', 'soha trailers', 3),
(8, 'Cotton half Sleeve', 't-shirt', 'TK_155_2-removebg-preview.png', '185 TK\r\n', 'nstu', 'Hasan loundry', 5),
(9, 'Cotton half Sleeve', 't-shirt', 'TK_155_3-removebg-preview.png', '185 TK\r\n', 'nstu', 'Sumaiya Trailers', 5),
(10, 'Cotton half Sleeve', 't-shirt', 'TK_155_4-removebg-preview.png', '185 TK\r\n', 'nstu', 'Alif Shop', 5);

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(100) NOT NULL,
  `name` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `c_password` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `name`, `email`, `password`, `c_password`) VALUES
(8, 'Saiful Islam', 'saifulislamraihan64@gmail.com', 'e807f1fcf82d132f9bb018ca6738a19f', 'e807f1fcf82d132f9bb018ca6738a19f'),
(9, 'brobrobro', 'bro@gmail.com', 'e807f1fcf82d132f9bb018ca6738a19f', 'e807f1fcf82d132f9bb018ca6738a19f'),
(10, 'monshimonshi', 'monsi@gmail.com', 'e807f1fcf82d132f9bb018ca6738a19f', 'e807f1fcf82d132f9bb018ca6738a19f'),
(11, 'mmmmmmmmmm', 'm@gmail.com', 'e807f1fcf82d132f9bb018ca6738a19f', 'e807f1fcf82d132f9bb018ca6738a19f'),
(12, 'luhahhhhhh', 'luha@gmail.com', 'e807f1fcf82d132f9bb018ca6738a19f', 'e807f1fcf82d132f9bb018ca6738a19f'),
(13, 'qwertyui', 'mig@gmail.com', 'e807f1fcf82d132f9bb018ca6738a19f', 'e807f1fcf82d132f9bb018ca6738a19f'),
(14, 'Luimilia', 'lui@gmail.com', '25d55ad283aa400af464c76d713c07ad', '25d55ad283aa400af464c76d713c07ad'),
(15, 'lolololo', 'peace9g@hotmail.com', 'e807f1fcf82d132f9bb018ca6738a19f', 'e807f1fcf82d132f9bb018ca6738a19f'),
(16, 'Sharifur Rahman  ', 'sharif1811027m@gmail.com', '9ce2f775a1ea91b650414e35e3b8b6c1', '9ce2f775a1ea91b650414e35e3b8b6c1'),
(17, 'jaira wasim', 'jaira@gmail.com', '6eea9b7ef19179a06954edd0f6c05ceb', '6eea9b7ef19179a06954edd0f6c05ceb'),
(18, 'loatreyu', 'loat@gmail.com', '0223af7ad7fb3306b85427e92de59bfd', '0223af7ad7fb3306b85427e92de59bfd'),
(19, 'Sadiavuti', 'nafisatanjinsadia90@gmail.com', '2a9c20ec13dd5d915b081bfe8aa49c8a', '2a9c20ec13dd5d915b081bfe8aa49c8a'),
(20, 'Hadiqul Islam ', 'md.hadiqulislam@gmail.com', '25f9e794323b453885f5181f1b624d0b', '25f9e794323b453885f5181f1b624d0b'),
(21, 'Sadiajahan56', 'sadiabh@gmail.com', 'e807f1fcf82d132f9bb018ca6738a19f', 'e807f1fcf82d132f9bb018ca6738a19f'),
(22, 'Shariful___Islam', 'sharifulislam.ice@gmail.com', '4428c6c474502e61151877825bb41961', '4428c6c474502e61151877825bb41961'),
(23, 'Saiful Islam1', 'jn@gmail.com', 'e807f1fcf82d132f9bb018ca6738a19f', 'e807f1fcf82d132f9bb018ca6738a19f');

-- --------------------------------------------------------

--
-- Table structure for table `seller_registration`
--

CREATE TABLE `seller_registration` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `c_password` varchar(100) NOT NULL,
  `place` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seller_registration`
--

INSERT INTO `seller_registration` (`id`, `name`, `email`, `password`, `c_password`, `place`, `status`) VALUES
(3, 'lunalunaluna', 'luna@gmail.com', 'e807f1fcf82d132f9bb018ca6738a19f', 'e807f1fcf82d132f9bb018ca6738a19f', 'narayangonj', 'inactive'),
(4, 'erwkyuidoh', 'ewuguwegy@gmail.com', 'e807f1fcf82d132f9bb018ca6738a19f', 'e807f1fcf82d132f9bb018ca6738a19f', 'narayangonj', 'inactive');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seller_registration`
--
ALTER TABLE `seller_registration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `seller_registration`
--
ALTER TABLE `seller_registration`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `conn_network`
--
CREATE DATABASE IF NOT EXISTS `conn_network` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `conn_network`;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `com_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` varchar(256) NOT NULL,
  `comment_author` varchar(256) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_content` varchar(256) NOT NULL,
  `upload_image` varchar(256) DEFAULT NULL,
  `post_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `user_id`, `post_content`, `upload_image`, `post_date`) VALUES
(4, 1, 'Software Digit is looking some who are interested in software development.Entry level job and no need of previous experience.Although some core requirement is necessary.\r\n', 'img8.jpg.81', '2022-08-07 05:12:11'),
(5, 1, 'No', 'img7.jpg.26', '2022-08-07 05:12:44'),
(6, 1, 'No', 'img8.jpg.29', '2022-08-07 05:36:49'),
(9, 1, 'There is no problem ,have any?', NULL, '2022-08-07 05:43:33');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `f_name` text NOT NULL,
  `l_name` text NOT NULL,
  `user_name` text NOT NULL,
  `describe_user` varchar(256) NOT NULL,
  `Relationship` text NOT NULL,
  `user_pass` varchar(256) NOT NULL,
  `user_email` varchar(256) NOT NULL,
  `user_country` text NOT NULL,
  `user_gender` text NOT NULL,
  `user_birthday` text NOT NULL,
  `user_image` varchar(256) NOT NULL,
  `user_cover` varchar(256) NOT NULL,
  `user_reg_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` text NOT NULL,
  `post` text NOT NULL,
  `recovery_account` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `f_name`, `l_name`, `user_name`, `describe_user`, `Relationship`, `user_pass`, `user_email`, `user_country`, `user_gender`, `user_birthday`, `user_image`, `user_cover`, `user_reg_date`, `status`, `post`, `recovery_account`) VALUES
(1, 'Rahan', 'mia', '2022-08-11 20:10:44', 'hj', 'no', 'asdfghjkl', 'raihan@gmail.com', 'bangladesh', 'male', '2022-08-15', 'm15.jpg.31', 'pic.jpg.86', '2022-08-15 13:27:55', 'verified', 'yes', 'i h'),
(2, 'Aslam', 'mia', 'aslam_mia_489829', 'Hello me', '...', '1234567890', 'aslam@gmail.com', 'Bangladesh', 'Male', '2022-08-07', 'saiful3.jpg.84', 'p1.jpg', '2022-08-07 13:57:43', 'verified', 'yes', 'Iwanta');

-- --------------------------------------------------------

--
-- Table structure for table `user_messages`
--

CREATE TABLE `user_messages` (
  `id` int(11) NOT NULL,
  `user_to` int(11) NOT NULL,
  `user_form` int(11) NOT NULL,
  `msg_body` varchar(256) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `msg_seen` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_messages`
--

INSERT INTO `user_messages` (`id`, `user_to`, `user_form`, `msg_body`, `date`, `msg_seen`) VALUES
(1, 2, 1, 'how are you?', '2022-08-07 13:30:20', 'no'),
(2, 1, 2, 'fine,yu?', '2022-08-07 13:31:39', 'no'),
(3, 2, 1, 'Laravel is important.', '2022-08-15 13:30:15', 'no');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_messages`
--
ALTER TABLE `user_messages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_messages`
--
ALTER TABLE `user_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `crud`
--
CREATE DATABASE IF NOT EXISTS `crud` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `crud`;

-- --------------------------------------------------------

--
-- Table structure for table `tabl`
--

CREATE TABLE `tabl` (
  `id` int(33) NOT NULL,
  `name` varchar(33) NOT NULL,
  `email` varchar(33) NOT NULL,
  `skill` varchar(33) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tabl`
--

INSERT INTO `tabl` (`id`, `name`, `email`, `skill`) VALUES
(1, 'Md.Saiful Islam', 'saiful@gmail.com', 'php');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabl`
--
ALTER TABLE `tabl`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tabl`
--
ALTER TABLE `tabl`
  MODIFY `id` int(33) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `db_blog`
--
CREATE DATABASE IF NOT EXISTS `db_blog` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_blog`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `name`) VALUES
(1, 'java'),
(2, 'php'),
(3, 'html');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `status` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`id`, `firstname`, `lastname`, `email`, `body`, `status`, `date`) VALUES
(1, 'Raihan', 'Mia', 'raihan@gmail.com', 'Your website is good.', 1, '2022-05-18 14:00:13'),
(2, 'Fahima', 'Akter', 'fahima12@gmail.com', 'I have a problem with your website.', 0, '2022-05-18 14:00:13');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_footer`
--

CREATE TABLE `tbl_footer` (
  `id` int(11) NOT NULL,
  `note` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_footer`
--

INSERT INTO `tbl_footer` (`id`, `note`) VALUES
(1, 'Copyright Training with saiful Islam.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_page`
--

CREATE TABLE `tbl_page` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `body` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_page`
--

INSERT INTO `tbl_page` (`id`, `name`, `body`) VALUES
(1, 'About Us', '<p>\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n</p>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `id` int(11) NOT NULL,
  `cat` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `author` varchar(50) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`id`, `cat`, `title`, `body`, `image`, `author`, `tags`, `date`, `userid`) VALUES
(16, 2, 'Php is used for backend development.', '<p><strong>Lorem Ipsum</strong><span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p>', 'upload/6af45a0dff.jpg', 'admin', 'web development,tech', '2022-08-21 02:17:28', 3),
(17, 3, 'Html is used to build Architecture of web.', '<p><strong>Lorem Ipsum</strong><span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p>', 'upload/5e42dc32c5.jpg', 'admin', 'web design,tech', '2022-08-21 02:28:01', 3),
(18, 1, 'Mobile App development represent anyone need to learn Java.', '<p><strong>Lorem Ipsum</strong><span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p>', 'upload/46497668dd.jpg', 'admin', 'app development,tech', '2022-08-21 02:29:51', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_social`
--

CREATE TABLE `tbl_social` (
  `id` int(11) NOT NULL,
  `fb` varchar(255) NOT NULL,
  `tw` varchar(255) NOT NULL,
  `ln` varchar(255) NOT NULL,
  `gp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_social`
--

INSERT INTO `tbl_social` (`id`, `fb`, `tw`, `ln`, `gp`) VALUES
(1, 'https://www.facebook.com/profile.php?id=100017204380784', 'https://twitter.com/saiful87980599', 'https://www.linkedin.com/in/saiful-islam-0b128b227/', 'https://www.linkedin.com/in/saiful-islam-0b128b227/');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_theme`
--

CREATE TABLE `tbl_theme` (
  `id` int(11) NOT NULL,
  `theme` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_theme`
--

INSERT INTO `tbl_theme` (`id`, `theme`) VALUES
(1, 'default');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `name`, `username`, `password`, `email`, `details`, `role`) VALUES
(1, 'raihan', 'author', '2e520977add6acc284112fbde386653c', 'f@gmail.com', 'what about you?', 1),
(3, 'salman', 'admin', 'e807f1fcf82d132f9bb018ca6738a19f', 'salman@gmail.com', 'I need to login.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `title_slogan`
--

CREATE TABLE `title_slogan` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slogan` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `title_slogan`
--

INSERT INTO `title_slogan` (`id`, `title`, `slogan`, `logo`) VALUES
(1, 'Training with live project.', 'we are learning.', 'upload/pic.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_footer`
--
ALTER TABLE `tbl_footer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_page`
--
ALTER TABLE `tbl_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_social`
--
ALTER TABLE `tbl_social`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_theme`
--
ALTER TABLE `tbl_theme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `title_slogan`
--
ALTER TABLE `title_slogan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_footer`
--
ALTER TABLE `tbl_footer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_page`
--
ALTER TABLE `tbl_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_social`
--
ALTER TABLE `tbl_social`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_theme`
--
ALTER TABLE `tbl_theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `title_slogan`
--
ALTER TABLE `title_slogan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `ecommerce_project`
--
CREATE DATABASE IF NOT EXISTS `ecommerce_project` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ecommerce_project`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'T-shirts', '2022-03-30 02:32:11', '2022-03-30 02:32:22'),
(2, 'shoes', '2022-03-30 02:32:45', '0000-00-00 00:00:00'),
(3, 'Watches', '2022-03-30 02:33:14', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2022_03_25_130050_create_products_table', 1),
(5, '2022_03_29_131527_add_columns_to_product_table', 2),
(6, '2022_03_29_131659_create_categories_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `image`, `amount`, `price`, `is_active`, `created_at`, `updated_at`, `details`, `category_id`, `size`) VALUES
(2, 'Tshirt', '/images/uploads/product_16482894071.jpg|/images/uploads/product_16482894072.jpg|/images/uploads/product_16482894073.jpg|/images/uploads/product_16482894074.jpg', 10, 100, 1, '2022-03-26 04:10:06', '2022-03-26 04:10:07', 'This is sample product 1', 1, ''),
(3, 'product 1', '/images/uploads/product_16484381511.png', 3, 400, 1, '2022-03-27 21:29:11', '2022-03-27 21:29:11', 'This is sample product 2', 2, ''),
(4, 'Product 2', '/images/uploads/product_16484381971.jpg', 2, 300, 1, '2022-03-27 21:29:57', '2022-03-27 21:29:57', 'This is sample product 3', 1, ''),
(5, 'Product 3', '/images/uploads/product_16484382441.jpg', 2, 600, 1, '2022-03-27 21:30:44', '2022-03-27 21:30:44', 'This is sample product 4', 3, ''),
(6, 'Product 4', '/images/uploads/product_16484382931.jpg', 5, 500, 1, '2022-03-27 21:31:33', '2022-03-27 21:31:33', 'This is sample product 5', 1, ''),
(7, 'Product 5', '/images/uploads/product_16484383471.jpg', 2, 600, 1, '2022-03-27 21:32:27', '2022-03-27 21:32:27', 'This is sample product 6', 2, ''),
(8, 'Product 6', '/images/uploads/product_16484383941.jpg', 4, 800, 1, '2022-03-27 21:33:14', '2022-03-27 21:33:14', 'This is sample product 7', 1, ''),
(9, 'Product 7', '/images/uploads/product_16484384351.jpg', 5, 800, 1, '2022-03-27 21:33:55', '2022-03-27 21:33:55', 'This is sample product 8', 2, ''),
(10, 'Product 8', '/images/uploads/product_16484384821.jpg', 5, 500, 1, '2022-03-27 21:34:42', '2022-03-27 21:34:42', 'This is sample product 9', 1, ''),
(11, 'Product 10', '/images/uploads/product_16484385291.jpg', 3, 600, 1, '2022-03-27 21:35:29', '2022-03-27 21:35:29', 'This is sample product 10', 1, ''),
(12, 'Product 11', '/images/uploads/product_16484385851.jpg', 2, 700, 1, '2022-03-27 21:36:25', '2022-03-27 21:36:25', 'This is sample product 11', 2, ''),
(13, 'Product 12', '/images/uploads/product_16484597231.jpg', 4, 200, 1, '2022-03-28 03:28:43', '2022-03-28 03:28:43', 'This is sample product 12', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `is_admin` tinyint(1) DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `mobile`, `email_verified_at`, `password`, `is_active`, `is_admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Raihan', 'raihan@gmail.com', '01949874409', NULL, '123456', 1, 0, NULL, '2022-03-25 16:07:59', '2022-03-25 16:07:59'),
(3, 'me', 'me@gmail.com', '123455', NULL, 'qwert', 1, 0, NULL, '2022-03-25 16:11:50', '2022-03-25 16:11:50'),
(4, 'galib', 'galib@gmail.com', '34567890', NULL, 'asdfgh', 1, 0, NULL, '2022-03-25 16:14:12', '2022-03-25 16:14:12'),
(5, 'juel', 'juel@gmail.com', '456677', NULL, 'asdf', 1, 0, NULL, '2022-03-26 03:33:11', '2022-03-26 03:33:11'),
(6, 'mila', 'mila@gmail.com', '4567', NULL, '123456', 1, 0, NULL, '2022-03-26 04:05:20', '2022-03-26 04:05:20'),
(7, 'rubel', 'rubel@gmail.com', '567895', NULL, '123456', 1, 0, NULL, '2022-03-27 13:19:28', '2022-03-27 13:19:28'),
(8, 'vir', 'vir@gmail.com', '3466667', NULL, '123456', 1, 0, NULL, '2022-03-27 15:26:20', '2022-03-27 15:26:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Database: `examiny`
--
CREATE DATABASE IF NOT EXISTS `examiny` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `examiny`;

-- --------------------------------------------------------

--
-- Table structure for table `assign_teacher`
--

CREATE TABLE `assign_teacher` (
  `id` int(11) NOT NULL,
  `dept` varchar(256) NOT NULL,
  `semester` varchar(256) NOT NULL,
  `course` varchar(256) NOT NULL,
  `building` varchar(256) NOT NULL,
  `teacher` varchar(256) NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assign_teacher`
--

INSERT INTO `assign_teacher` (`id`, `dept`, `semester`, `course`, `building`, `teacher`, `date`) VALUES
(1, 'ICE', '6/Y-3,T-2', '6/ICE-3207', 'Library : 301', 'Md.Amzad Hossain', ''),
(2, 'ICE', '5/Y-3,T-1', '5/ICE-3107', 'Library : 401', 'Abidur Rahman', ''),
(3, 'ICE', '4/Y-2,T-2', '4/ICE-2207', 'Library : 301', 'Zayed-us -salehin', '2022-08-26'),
(4, 'ICE', '3/Y-2,T-1', '3/ICE-2105', 'Library : 301', 'Md.Amzad Hossain', ''),
(5, 'ICE', '2/Y-1,T-1', '2/ENG-1109', 'Library : 201', 'Abidur Rahman', ''),
(6, 'ICE', '3/Y-2,T-1', '3/MATH-2113', 'Library : 201', 'Abidur Rahman', ''),
(7, 'ICE', '4/Y-2,T-2', '4/ICE-2209', 'Library : 201', 'Zayed-us -salehin', ''),
(8, 'ICE', '6/Y-3,T-2', '6/ICE-3207', 'Library : 401', 'Zayed-us -salehin', ''),
(9, 'ICE', '4/Y-2,T-2', '4/ICE-2209', 'Library : 212', 'Zayed-us -salehin', '2022-08-26'),
(10, 'ICE', '4/Y-2,T-2', '4/ICE-2205', 'Library : 301', 'Zayed-us -salehin', '2022-08-25'),
(11, 'ICE', '2/Y-1,T-1', '2/ICE-1203', 'Library : 401', 'Zayed-us -salehin', '2022-08-25'),
(12, 'ICE', '4/Y-2,T-2', '4/ICE-2207', 'Library : 201', 'Abidur Rahman', '2022-08-26');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(33) NOT NULL,
  `present` varchar(256) DEFAULT NULL,
  `absent` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `present`, `absent`) VALUES
(1, '1', ''),
(2, '1', ''),
(3, '1', ''),
(4, '', '0'),
(5, '1', ''),
(6, '', '0'),
(7, '1', ''),
(8, '1', ''),
(9, '', '0');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `user_type` varchar(256) NOT NULL,
  `course_detail` varchar(256) NOT NULL,
  `semester` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `user_type`, `course_detail`, `semester`) VALUES
(1, '1', 'ICE-1101', 'Y-1,T-1'),
(2, '1', 'ICE-1103', 'Y-1,T-1'),
(3, '1', 'ICE-1105', 'Y-1,T-1'),
(4, '1', 'PHY-1103', 'Y-1,T-1'),
(5, '1', 'HUM-1105', 'Y-1,T-1'),
(6, '2', 'ENG-1109', 'Y-1,T-1'),
(7, '2', 'MATH-1111', 'Y-1,T-1'),
(8, '2', 'ICE-1201', 'Y-1,T-2'),
(9, '2', 'ICE-1203', 'Y-1,T-2'),
(10, '2', 'ICE-1205', 'Y-1,T-2'),
(11, '2', 'HUM-1207', 'Y-1,T-2'),
(12, '2', 'MATH-1211', 'Y-1,T-2'),
(13, '3', 'ICE-2101', 'Y-2,T-1'),
(14, '3', 'ICE-2103', 'Y-2,T-1'),
(15, '3', 'ICE-2105', 'Y-2,T-1'),
(16, '3', 'ICE-2107', 'Y-2,T-1'),
(17, '3', 'ICE-2109', 'Y-2,T-1'),
(18, '3', 'MATH-2113', 'Y-2,T-1'),
(19, '4', 'ICE-2201', 'Y-2,T-2'),
(20, '4', 'ICE-2203', 'Y-2,T-2'),
(21, '4', 'ICE-2205', 'Y-2,T-2'),
(22, '4', 'ICE-2207', 'Y-2,T-2'),
(23, '4', 'ICE-2209', 'Y-2,T-2'),
(24, '4', 'MATH-2211', 'Y-2,T-2'),
(25, '5', 'ICE-3101', 'Y-3,T-1'),
(26, '5', 'ICE-3103', 'Y-3,T-1'),
(27, '5', 'ICE-3105', 'Y-3,T-1'),
(28, '5', 'ICE-3107', 'Y-3,T-1'),
(29, '5', 'ICE-3109', 'Y-3,T-1'),
(30, '5', 'MATH-3113', 'Y-3,T-1'),
(31, '6', 'ICE-3201', 'Y-3,T-2'),
(32, '6', 'ICE-3203', 'Y-3,T-2'),
(33, '6', 'ICE-3205', 'Y-3,T-2'),
(34, '6', 'ICE-3207', 'Y-3,T-2'),
(35, '6', 'ICE-3209', 'Y-3,T-2'),
(36, '7', 'ICE-4101', 'Y-4,T-1'),
(37, '7', 'ICE-4103', 'Y-4,T-1'),
(38, '7', 'ICE-4105', 'Y-4,T-1'),
(39, '7', 'ICE-4107', 'Y-4,T-1'),
(40, '7', 'ICE-4109', 'Y-4,T-1'),
(41, '8', 'ICE-4201', 'Y-4,T-2'),
(42, '8', 'ICE-4203', 'Y-4,T-2'),
(43, '8', 'ICE-4205', 'Y-4,T-2');

-- --------------------------------------------------------

--
-- Table structure for table `hall`
--

CREATE TABLE `hall` (
  `id` int(11) NOT NULL,
  `building` varchar(256) NOT NULL,
  `room` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hall`
--

INSERT INTO `hall` (`id`, `building`, `room`) VALUES
(1, 'Library', '201'),
(2, 'Library', '212'),
(3, 'Library', '301'),
(4, 'Library', '401'),
(5, 'Library', '402');

-- --------------------------------------------------------

--
-- Table structure for table `routine`
--

CREATE TABLE `routine` (
  `id` int(11) NOT NULL,
  `dept` varchar(256) NOT NULL,
  `semester` varchar(256) NOT NULL,
  `date` text NOT NULL,
  `course` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `routine`
--

INSERT INTO `routine` (`id`, `dept`, `semester`, `date`, `course`) VALUES
(1, 'ICE', 'Y-4,T-2', '27-08-2022', ''),
(2, 'CSTE', 'Y-2,T-2', '2022-08-26', ''),
(4, 'ICE', 'Y-4,T-2', '2022-08-30', ''),
(7, '', '2', '2022-08-28', '2'),
(8, 'ICE', '2', '2022-08-28', '2'),
(9, 'ICE', '5', '2022-08-24', '5'),
(10, 'ICE', 'Y-4,T-1', '2022-08-27', '7/ICE-4101'),
(11, 'ICE', 'Y-4,T-2', '2022-08-27', '8/ICE-4203'),
(12, 'ICE', 'Y-1,T-2', '2022-08-27', '2/ENG-1109');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `f_name` text DEFAULT NULL,
  `l_name` text NOT NULL,
  `mobile` varchar(256) NOT NULL,
  `student_id` varchar(256) DEFAULT NULL,
  `user_pass` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `session` varchar(256) DEFAULT NULL,
  `user_gender` text NOT NULL,
  `user_birthday` text NOT NULL,
  `user_image` varchar(255) NOT NULL,
  `department` varchar(255) DEFAULT NULL,
  `status` text NOT NULL,
  `hall` varchar(256) DEFAULT NULL,
  `position` varchar(256) DEFAULT NULL,
  `user_type` varchar(100) NOT NULL,
  `semester` varchar(256) DEFAULT NULL,
  `present` varchar(256) DEFAULT NULL,
  `absent` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `f_name`, `l_name`, `mobile`, `student_id`, `user_pass`, `user_email`, `session`, `user_gender`, `user_birthday`, `user_image`, `department`, `status`, `hall`, `position`, `user_type`, `semester`, `present`, `absent`) VALUES
(3, 'Khalid', 'hossain', '01236785469', 'ASH1811030M', '1234567890', 'khalid@gmail.com', '2017-18', 'Male', '2022-08-04', 'm1.jpg', 'ICE', '0', 'ASH', '', '1', 'Y-2,T-2', '', ''),
(4, 'Md.Shariful', 'Islam', '01356745256', 'ASH1811033M', '1234567890', 'shariful@gmail.com', '2017-18', 'Male', '2022-05-22', 'm3.jpg', 'ICE', '0', 'ASH', '', '1', 'Y-2,T-2', '', ''),
(5, 'Ullash', 'Nayeem', '017895674356', 'ASH1811075M', '1234567890', 'nayeem@gmail.com', '2017-18', 'Male', '2022-05-23', 'm4.jpg', 'ICE', '0', 'ASH', '', '1', 'Y-2,T-2', '', ''),
(6, 'Mirza', 'Raquib', '01754378945', 'ASH1811069M', '1234567890', 'raquib@gmail.com', '2017-18', 'Male', '2022-05-23', 'm5.jpg', 'ICE', '0', 'ASH', '', '1', '', '', ''),
(7, 'Abidur', 'Rahman', '01245674589', '...', '1234567890', 'abid@gmail.com', '', 'Male', '2022-05-27', '', 'ICE', '0', '', '', '4', '', '', ''),
(8, 'Zayed-us', '-salehin', '', '...', '1234567890', 'zayed@gmail.com', '', 'Male', '2022-06-01', '', 'ICE', '0', '', '', '4', '', '', ''),
(9, 'Md.Amzad', 'Hossain', '', '...', 'qwer12345', 'amjad@gmail.com', '', 'Male', '2022-06-01', '', 'ICE', '0', '', '', '4', '', '', ''),
(10, 'Exam', 'Controller', '', '...', 'asdfghjkl', 'exam@gmail.com', '', 'Male', '2022-06-01', '', '', '0', '', '', '3', '', '', ''),
(24, 'Mirza', 'Rakib', '01234567834', 'ASH1811069M', 'qwertyuiop', 'mir@gmail.com', '2017-18', 'Male', '2022-08-05', 'pic.jpg', 'ICE', '0', 'ASH', '', '1', 'Y-2,T-2', '', ''),
(25, 'Mobin', 'SIkder', '01734976549', 'ASH1811060M', 'asdfghjkl', 'mobin@gmail.com', '2017-18', 'Male', '2022-08-17', 'img4.jpg', 'ICE', '0', 'ASH', '', '1', 'Y-2,T-2', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assign_teacher`
--
ALTER TABLE `assign_teacher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hall`
--
ALTER TABLE `hall`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `routine`
--
ALTER TABLE `routine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assign_teacher`
--
ALTER TABLE `assign_teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(33) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `hall`
--
ALTER TABLE `hall`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `routine`
--
ALTER TABLE `routine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- Database: `IwpFR`
--
CREATE DATABASE IF NOT EXISTS `IwpFR` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `IwpFR`;

-- --------------------------------------------------------

--
-- Table structure for table `frm`
--

CREATE TABLE `frm` (
  `id` int(33) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `sel` varchar(100) NOT NULL,
  `message` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `frm`
--

INSERT INTO `frm` (`id`, `firstname`, `lastname`, `email`, `sel`, `message`) VALUES
(2, 'Mia', 'Aslam', 'mia@gmail.com', 'NULL', '			here we are something.	'),
(5, 'lalmia', 'hj', 'peace9g@hotmail.com', 'NULL', 'huhh'),
(6, 'naaaaaaaaaaa', 'bb', 'h@gmail.com', 'NULL', '			ghhghg		'),
(7, 'saiful', 'Islam', 'peace9g@hotmail.com', 'NULL', 'hhgh'),
(8, '', '', '', 'NULL', ''),
(9, '', '', '', 'NULL', ''),
(10, '', '', '', 'NULL', ''),
(11, 'gh', 'hj', 'df@gmail.com', 'NULL', 'www'),
(12, 'gh', 'hj', 'df@gmail.com', 'NULL', 'www'),
(13, 'Motil', 'saif', 'motil@gmail.com', 'NULL', 'It is my message.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `frm`
--
ALTER TABLE `frm`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `frm`
--
ALTER TABLE `frm`
  MODIFY `id` int(33) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- Database: `my`
--
CREATE DATABASE IF NOT EXISTS `my` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `my`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(13, '2014_10_12_000000_create_users_table', 1),
(14, '2014_10_12_100000_create_password_resets_table', 1),
(15, '2019_08_19_000000_create_failed_jobs_table', 1),
(16, '2022_03_20_090846_create_mytable_table', 1),
(17, '2022_03_20_152731_create_products_table', 1),
(18, '2022_03_20_155010_create_price_to_products_table', 1),
(19, '2022_03_21_045607_add_salary_to_products_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mytable`
--

CREATE TABLE `mytable` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `price_to_products`
--

CREATE TABLE `price_to_products` (
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `salary` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `quantity`, `salary`, `created_at`, `updated_at`) VALUES
(4, 'Saiful Islam', 1, 200, NULL, NULL),
(5, 'Jamal', 1, 300, NULL, NULL),
(6, 'mia', 1, 100, '2022-03-21 04:26:17', '2022-03-21 04:26:17'),
(8, 'hasan', 3, 400, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_user`
--

CREATE TABLE `product_user` (
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_user`
--

INSERT INTO `product_user` (`product_id`, `user_id`) VALUES
(4, 1),
(4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `products_id` bigint(20) UNSIGNED NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `products_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'salman', 'salman@gmail.com', NULL, '123456', 4, NULL, NULL, NULL),
(2, 'alice', 'alice@gmail.com', NULL, '123456', 4, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mytable`
--
ALTER TABLE `mytable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `products_id` (`products_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `mytable`
--
ALTER TABLE `mytable`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`);
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"db_blog\",\"table\":\"tbl_post\"},{\"db\":\"db_blog\",\"table\":\"tbl_user\"},{\"db\":\"examiny\",\"table\":\"routine\"},{\"db\":\"examiny\",\"table\":\"users\"},{\"db\":\"examiny\",\"table\":\"attendance\"},{\"db\":\"examiny\",\"table\":\"assign_teacher\"},{\"db\":\"conn_network\",\"table\":\"users\"},{\"db\":\"conn_network\",\"table\":\"posts\"},{\"db\":\"social_network\",\"table\":\"posts\"},{\"db\":\"social_network\",\"table\":\"users\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

--
-- Dumping data for table `pma__table_info`
--

INSERT INTO `pma__table_info` (`db_name`, `table_name`, `display_field`) VALUES
('my', 'users', 'name');

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2022-08-21 02:34:28', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `practice`
--
CREATE DATABASE IF NOT EXISTS `practice` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `practice`;

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `state` varchar(256) NOT NULL,
  `city_name` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `state`, `city_name`) VALUES
(1, '3', 'Narayangang'),
(2, '3', 'Naoga'),
(3, '2', 'pa1'),
(4, '2', 'pa2'),
(5, '1', 'in1'),
(6, '1', 'in2');

-- --------------------------------------------------------

--
-- Table structure for table `country_tb`
--

CREATE TABLE `country_tb` (
  `cname` varchar(256) NOT NULL,
  `cid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `country_tb`
--

INSERT INTO `country_tb` (`cname`, `cid`) VALUES
('India', 1),
('Pakistan', 2),
('Bangladesh', 3);

-- --------------------------------------------------------

--
-- Table structure for table `state_tb`
--

CREATE TABLE `state_tb` (
  `sid` int(11) NOT NULL,
  `sname` varchar(256) NOT NULL,
  `country` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `state_tb`
--

INSERT INTO `state_tb` (`sid`, `sname`, `country`) VALUES
(1, 'Dhaka', '3'),
(2, 'Chittagong', '3'),
(3, 'Barishal', '3'),
(4, 'Rajshahi', '3'),
(5, 'Khulna', '3'),
(6, 'Islamabad', '2'),
(7, 'Lahore', '2'),
(8, 'Karachi', '2'),
(9, 'Belochistan', '2'),
(10, 'Panjab', '2'),
(11, 'Delhi', '1'),
(12, 'Kolkata', '1'),
(13, 'Mumbai', '1'),
(14, 'Kerala', '1'),
(15, 'Karnataka', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country_tb`
--
ALTER TABLE `country_tb`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `state_tb`
--
ALTER TABLE `state_tb`
  ADD PRIMARY KEY (`sid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `country_tb`
--
ALTER TABLE `country_tb`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `state_tb`
--
ALTER TABLE `state_tb`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- Database: `social_network`
--
CREATE DATABASE IF NOT EXISTS `social_network` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `social_network`;

-- --------------------------------------------------------

--
-- Table structure for table `apply_job`
--

CREATE TABLE `apply_job` (
  `id` int(100) NOT NULL,
  `pdf` varchar(100) NOT NULL,
  `user_type` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `apply_job`
--

INSERT INTO `apply_job` (`id`, `pdf`, `user_type`) VALUES
(2, 'syllabus.pdf', 'Recruiter'),
(3, 'adaline.pdf', 'Recruiter'),
(4, 'adaline.pdf', 'Buyer'),
(5, 'adaline.pdf', 'Buyer'),
(6, 'QUESTION SOLVED(AI).pdf', 'Buyer'),
(7, 'kamrul sir.pdf', 'Buyer'),
(8, 'ch-1.pdf', 'Allumnai'),
(9, 'AI-ch-4-and-ch-8.pdf', 'Allumnai'),
(10, 'AI-ch-4-and-ch-8.pdf', 'Allumnai'),
(11, 'saiful@gmail.com.pdf', 'Allumnai'),
(12, '', 'Allumnai');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `com_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` varchar(256) NOT NULL,
  `comment_author` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `id` int(33) NOT NULL,
  `position` varchar(500) NOT NULL,
  `type` varchar(500) NOT NULL,
  `description` text NOT NULL,
  `PostedBy` varchar(500) NOT NULL,
  `cv` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`id`, `position`, `type`, `description`, `PostedBy`, `cv`) VALUES
(3, 'Web Developer', 'Contract', 'Software Digit is looking some who are interested in software development.Entry level job and no need of previous experience.Although some core requirement is necessary.\r\nRequirement :\r\n1.Basic understanding of programming knowledge such c, c++, python, php or other else.\r\n2.Eager to learn new technology.\r\n3.Basic understanding of data structure and Algorithm.\r\n4.Knowledge about object oriented programming is preferable.', 'Allumnai', ''),
(4, 'Web Developer', 'Part-time', 'Software Digit is looking some who are interested in software development.Entry level job and no need of previous experience.Although some core requirement is necessary.\r\nRequirement :\r\n1.Basic understanding of programming knowledge such c, c++, python, php or other else.\r\n2.Eager to learn new technology.\r\n3.Basic understanding of data structure and Algorithm.\r\n4.Knowledge about object oriented programming is preferable.', 'Recruiter', ''),
(5, 'Software Engineer', 'Full-time', 'Software Digit is looking some who are interested in software development.Entry level job and no need of previous experience.Although some core requirement is necessary.\r\nRequirement :\r\n1.Basic understanding of programming knowledge such c, c++, python, php or other else.\r\n2.Eager to learn new technology.\r\n3.Basic understanding of data structure and Algorithm.\r\n4.Knowledge about object oriented programming is preferable.', 'Buyer', ''),
(6, 'Web Developer', 'Part-time', 'Software Digit is looking some who are interested in software development.Entry level job and no need of previous experience.Although some core requirement is necessary.\r\nRequirement :\r\n1.Basic understanding of programming knowledge such c, c++, python, php or other else.\r\n2.Eager to learn new technology.\r\n3.Basic understanding of data structure and Algorithm.\r\n4.Knowledge about object oriented programming is preferable.', 'Allumnai', ''),
(7, 'Software Engineer', 'Part-time', 'Software Digit is looking some who are interested in software development.Entry level job and no need of previous experience.Although some core requirement is necessary.\r\nRequirement :\r\n1.Basic understanding of programming knowledge such c, c++, python, php or other else.\r\n2.Eager to learn new technology.\r\n3.Basic understanding of data structure and Algorithm.\r\n4.Knowledge about object oriented programming is preferable.', 'Recruiter', ''),
(8, 'Web Developer', 'Part-time', 'Software Digit is looking some who are interested in software development.Entry level job and no need of previous experience.Although some core requirement is necessary.\r\nRequirement :\r\n1.Basic understanding of programming knowledge such c, c++, python, php or other else.\r\n2.Eager to learn new technology.\r\n3.Basic understanding of data structure and Algorithm.\r\n4.Knowledge about object oriented programming is preferable.', 'Buyer', ''),
(9, 'Software Engineer', 'Full-time', 'Software Digit is looking some who are interested in software development.Entry level job and no need of previous experience.Although some core requirement is necessary.\r\nRequirement :\r\n1.Basic understanding of programming knowledge such c, c++, python, php or other else.\r\n2.Eager to learn new technology.\r\n3.Basic understanding of data structure and Algorithm.\r\n4.Knowledge about object oriented programming is preferable.', 'Allumnai', '');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_content` text NOT NULL,
  `upload_image` varchar(255) NOT NULL,
  `post_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `user_id`, `post_content`, `upload_image`, `post_date`) VALUES
(15, 5, 'NO', 'asp_net.jpg.59', '2022-05-25 01:11:43'),
(16, 5, 'NO', 'application.jpg.98', '2022-05-25 01:12:08'),
(17, 5, 'NO', 'flutter.jpg.15', '2022-05-25 01:12:32'),
(18, 5, 'NO', 'laravel.jpg.99', '2022-05-25 01:13:23'),
(21, 10, 'Software Digit is looking some who are interested in software development.Entry level job and no need of previous experience.Although some core requirement is necessary. Requirement : 1.Basic understanding of programming knowledge such c, c++, python, php or other else. 2.Eager to learn new technology. 3.Basic understanding of data structure and Algorithm. 4.Knowledge about object oriented programming is preferable.', 'software.jpeg.57', '2022-07-31 02:34:48'),
(22, 4, 'Software Digit is looking some who are interested in software development.Entry level job and no need of previous experience.Although some core requirement is necessary.', 'pic.jpg.95', '2022-08-07 05:01:39'),
(23, 4, 'No', 'pic.jpg.49', '2022-08-07 05:02:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `f_name` text NOT NULL,
  `l_name` text NOT NULL,
  `user_name` text NOT NULL,
  `describe_user` varchar(255) NOT NULL,
  `Relationship` text NOT NULL,
  `user_pass` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_country` text NOT NULL,
  `user_gender` text NOT NULL,
  `user_birthday` text NOT NULL,
  `user_image` varchar(255) NOT NULL,
  `user_cover` varchar(255) NOT NULL,
  `user_reg_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` text NOT NULL,
  `posts` text NOT NULL,
  `recovery_account` varchar(255) NOT NULL,
  `user_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `f_name`, `l_name`, `user_name`, `describe_user`, `Relationship`, `user_pass`, `user_email`, `user_country`, `user_gender`, `user_birthday`, `user_image`, `user_cover`, `user_reg_date`, `status`, `posts`, `recovery_account`, `user_type`) VALUES
(3, 'Fahima', 'Akter', 'fahima', 'Hello there', '....', '1234567890', 'fahima@gmail.com', 'Bangladesh', 'Female', '3', 's.jpg', 'f.jpg', '2022-05-22 13:52:08', 'y', '4', 'I wanta', '2'),
(7, 'Raha', 'jannat', 'raha_jannat_923648', 'hello', '...', '1234567890', 'raha@gmail.com', 'Bangladesh', 'Female', '2022-05-27', 's.jpg', 'f.jpg', '2022-05-27 13:27:13', 'verified', 'No', 'Iwant', '2'),
(8, 'Belal', 'Alam', 'belal_alam_232382', 'hello', '...', '1234567890', 'belal@gmail.com', 'Bangladesh', 'Male', '2022-06-01', 's.jpg', 'f.jpg', '2022-06-01 02:07:01', 'verified', 'No', 'Iwant', '3'),
(9, 'Rana', 'Islam', 'rana_islam_637751', 'hello', '...', 'qwer12345', 'rana@gmail.com', 'USA', 'Male', '2022-06-01', 's.jpg', 'f.jpg', '2022-06-01 02:12:06', 'verified', 'No', 'Iwant', '4'),
(11, 'Mizan', 'Islam', 'mizan_islam_622235', 'hello', '...', '1234567890', 'mizan@gmail.com', 'Bangladesh', 'Male', '2022-07-12', 's.jpg', 'f.jpg', '2022-07-12 14:05:27', 'verified', 'No', 'Iwant', '2'),
(12, 'Aslam', 'mia', 'aslam_mia_361267', 'hello', '...', '1234567890', 'aslam@gmail.com', 'Bangladesh', 'Male', '2022-08-01', 's.jpg', 'f.jpg', '2022-08-01 14:06:49', 'verified', 'yes', 'Iwant', '1'),
(13, 'Amzad', 'rana', 'amzad_rana_809299', 'hello', '...', 'qwertyuiop', 'amzad@gmail.com', 'Bangladesh', 'Male', '2022-08-15', 's.jpg', 'f.jpg', '2022-08-15 10:20:06', 'verified', 'No', 'Iwant', '1');

-- --------------------------------------------------------

--
-- Table structure for table `user_messages`
--

CREATE TABLE `user_messages` (
  `id` int(11) NOT NULL,
  `user_to` int(11) NOT NULL,
  `user_form` int(11) NOT NULL,
  `msg_body` varchar(200) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `msg_seen` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_messages`
--

INSERT INTO `user_messages` (`id`, `user_to`, `user_form`, `msg_body`, `date`, `msg_seen`) VALUES
(1, 5, 10, 'How are doing?', '2022-07-31 05:00:46', 'no'),
(2, 10, 5, 'I am fine ,what about you?', '2022-07-31 05:03:52', 'no'),
(3, 3, 5, 'hi', '2022-07-31 05:25:59', 'no'),
(4, 3, 5, 'what are you doing?', '2022-07-31 05:26:31', 'no'),
(5, 10, 10, 'whats t condition', '2022-07-31 05:33:48', 'no'),
(6, 5, 10, 'hey', '2022-07-31 05:34:23', 'no'),
(7, 10, 10, 'nothing to do', '2022-07-31 05:35:50', 'no'),
(8, 3, 10, 'what language you learn?', '2022-07-31 05:41:11', 'no'),
(9, 3, 10, 'java', '2022-07-31 05:41:47', 'no');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apply_job`
--
ALTER TABLE `apply_job`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`com_id`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_messages`
--
ALTER TABLE `user_messages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apply_job`
--
ALTER TABLE `apply_job`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `com_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job`
--
ALTER TABLE `job`
  MODIFY `id` int(33) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user_messages`
--
ALTER TABLE `user_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
