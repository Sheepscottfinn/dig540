-- phpMyAdmin SQL Dump
-- version 4.0.10.7
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Oct 17, 2015 at 09:38 AM
-- Server version: 5.5.45-cll
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `heroncro_folklore`
--

-- --------------------------------------------------------

--
-- Table structure for table `story`
--

CREATE TABLE IF NOT EXISTS `story` (
  `id` int(8) NOT NULL,
  `storyname` enum('river lee in cork','grandad','spring festival','first communion','at the quay in cork',
    'growing up in germany','cold and different','exchange studies at uc cork','patrick street in cork city',
    'walking cork','cycling cork','bringing traditions', 'soutwest cork pub music','cork talk') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `contributor_id` int(8) NOT NULL,
  `media_id` int(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `contributor_id` (`contributor_id`),
  KEY `story_name` (`storyname`),
  KEY `media_id` (`media_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `story`
--

INSERT INTO `story` (`id`, `storyname`, `contributor_id`, `media_id`) VALUES
(1, 'river lee in cork', 1, 2),
(2, 'grandad', 2, 1),
(3, 'spring festival', 9, 3),
(4, 'first communion', 4, 3),
(5, 'at the quay in cork', 6, 3),
(6, 'growing up in germany', 5, 3),
(7, 'cold and different', 4, 1),
(8, 'exchange studies at uc cork', 7, 1),
(9, 'patrick street in cork city center', 3, 2),
(10, 'walking cork', 2, 1),
(11, 'cycling cork', 10, 3),
(12, 'bringing traditions', 8, 3),
(13, 'southwest cork pub music', 1, 2),
(14, 'cork talk', 5, 1),
(15, 'shop', 6, 3);

--
-- Constraints for dumped tables
--

--
