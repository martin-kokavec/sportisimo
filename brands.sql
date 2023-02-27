-- phpMyAdmin SQL Dump
-- version 3.5.8.2
-- http://www.phpmyadmin.net
--
-- Host: md71.wedos.net:3306
-- Generation Time: Feb 27, 2023 at 08:50 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.4.23

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `d233559_sport`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE IF NOT EXISTS `brands` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=108 ;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Carraa', '2023-02-27 19:46:55', '2023-02-27 19:46:55'),
(2, 'Nike', '2023-02-27 19:47:03', '2023-02-27 19:47:03'),
(3, 'Keller', '2023-02-27 19:47:12', '2023-02-27 19:47:12'),
(4, 'Harrows', '2023-02-27 19:47:18', '2023-02-27 19:47:18'),
(5, 'Znacka1', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(6, 'Znacka2', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(7, 'Znacka3', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(8, 'Znacka4', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(9, 'Znacka5', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(10, 'Znacka6', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(11, 'Znacka7', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(12, 'Znacka8', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(13, 'Znacka9', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(14, 'Znacka10', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(15, 'Znacka11', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(16, 'Znacka12', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(17, 'Znacka13', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(18, 'Znacka14', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(19, 'Znacka15', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(20, 'Znacka16', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(21, 'Znacka17', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(22, 'Znacka18', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(23, 'Znacka19', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(24, 'Znacka20', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(25, 'Znacka21', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(26, 'Znacka22', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(27, 'Znacka23', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(28, 'Znacka24', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(29, 'Znacka25', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(30, 'Znacka26', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(31, 'Znacka27', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(32, 'Znacka28', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(33, 'Znacka29', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(34, 'Znacka30', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(35, 'Znacka31', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(36, 'Znacka32', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(37, 'Znacka33', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(38, 'Znacka34', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(39, 'Znacka35', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(40, 'Znacka36', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(41, 'Znacka37', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(42, 'Znacka38', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(43, 'Znacka39', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(44, 'Znacka40', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(45, 'Znacka41', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(46, 'Znacka42', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(47, 'Znacka43', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(48, 'Znacka44', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(49, 'Znacka45', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(50, 'Znacka46', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(51, 'Znacka47', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(52, 'Znacka48', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(53, 'Znacka49', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(54, 'Znacka50', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(55, 'Znacka51', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(56, 'Znacka52', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(57, 'Znacka53', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(58, 'Znacka54', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(59, 'Znacka55', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(60, 'Znacka56', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(61, 'Znacka57', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(62, 'Znacka58', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(63, 'Znacka59', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(64, 'Znacka60', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(65, 'Znacka61', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(66, 'Znacka62', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(67, 'Znacka63', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(68, 'Znacka64', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(69, 'Znacka65', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(70, 'Znacka66', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(71, 'Znacka67', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(72, 'Znacka68', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(73, 'Znacka69', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(74, 'Znacka70', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(75, 'Znacka71', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(76, 'Znacka72', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(77, 'Znacka73', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(78, 'Znacka74', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(79, 'Znacka75', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(80, 'Znacka76', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(81, 'Znacka77', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(82, 'Znacka78', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(83, 'Znacka79', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(84, 'Znacka80', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(85, 'Znacka81', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(86, 'Znacka82', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(87, 'Znacka83', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(88, 'Znacka84', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(89, 'Znacka85', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(90, 'Znacka86', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(91, 'Znacka87', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(92, 'Znacka88', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(93, 'Znacka89', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(94, 'Znacka90', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(95, 'Znacka91', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(96, 'Znacka92', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(97, 'Znacka93', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(98, 'Znacka94', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(99, 'Znacka95', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(100, 'Znacka96', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(101, 'Znacka97', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(102, 'Znacka98', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(103, 'Znacka99', '2023-02-27 19:59:37', '2023-02-27 19:59:37'),
(104, 'Znacka100', '2023-02-27 19:59:37', '2023-02-27 19:59:37');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;