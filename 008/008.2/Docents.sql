-- phpMyAdmin SQL Dump
-- version 4.0.10.7
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Nov 21, 2015 at 05:55 PM
-- Server version: 5.5.46-cll
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `heroncro_Docents`
--

-- --------------------------------------------------------

--
-- Table structure for table `docents`
--

CREATE TABLE IF NOT EXISTS `docents` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact` int(10) NOT NULL,
  `availability` enum('Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday') COLLATE utf8_unicode_ci NOT NULL,
  `specialty` enum('education','interpretation','events','garden') CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `research` enum('history','architecture','textiles','collections','culture','mast trade') COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;
