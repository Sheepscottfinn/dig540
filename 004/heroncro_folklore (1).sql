-- phpMyAdmin SQL Dump
-- version 4.0.10.7
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Oct 15, 2015 at 09:50 PM
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
-- Table structure for table `contributor`
--

CREATE TABLE IF NOT EXISTS `contributor` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `name-last` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name_first` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `origin` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name-last` (`name-last`),
  KEY `origin` (`origin`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `contributor`
--

INSERT INTO `contributor` (`id`, `name-last`, `name_first`, `origin`) VALUES
(1, 'desplanque', 'marie_annick', 'france'),
(2, 'mccarthy', 'billy', 'cork'),
(3, 'wulff', 'stefan', 'germany'),
(4, 'fourie', 'robert', 'south africa'),
(5, 'ikebuasi', 'emeka', 'nigeria'),
(6, 'ocarroll', 'kay', 'cork'),
(7, 'osullivan', 'mary', 'cork'),
(8, 'vladman', 'yossi', 'isreal'),
(9, 'xiong', 'lily', 'china'),
(10, 'carmody', 'brigid', 'cork');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE IF NOT EXISTS `media` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `media_type` enum('radio','disc','book') COLLATE utf8_unicode_ci NOT NULL,
  `story_id` int(8) NOT NULL,
  `theme_id` int(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `media_type` (`media_type`),
  KEY `story_id` (`story_id`),
  KEY `theme_id` (`theme_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `media_type`, `story_id`, `theme_id`) VALUES
(1, 'radio', 0, 0),
(2, 'disc', 0, 0),
(3, 'book', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `story`
--

CREATE TABLE IF NOT EXISTS `story` (
  `id` int(8) NOT NULL,
  `story_name` enum('pub music','bicycling in cork','spring festival','river lee','first communion','cold and different','ucc','grandad','local talk','at the quay','shops') NOT NULL,
  `contributor_id` int(8) NOT NULL,
  `media_id` int(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `contributor_id` (`contributor_id`),
  KEY `story_name` (`story_name`),
  KEY `media_id` (`media_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `story`
--

INSERT INTO `story` (`id`, `story_name`, `contributor_id`, `media_id`) VALUES
(1, 'pub music', 1, 2),
(2, 'bicycling in cork', 2, 1),
(3, 'spring festival', 9, 3),
(4, 'river lee', 4, 3),
(5, 'first communion', 6, 3),
(6, 'cold and different', 5, 3),
(7, 'ucc', 4, 1),
(8, 'grandad', 7, 1),
(9, 'local talk', 3, 2),
(10, 'at the quay', 2, 1),
(11, 'shops', 10, 3);

-- --------------------------------------------------------

--
-- Table structure for table `story_theme`
--

CREATE TABLE IF NOT EXISTS `story_theme` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `story_id` int(8) NOT NULL,
  `theme_id` int(8) NOT NULL,
  `media_id` int(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `story_id` (`story_id`),
  KEY `theme_id` (`theme_id`),
  KEY `media_id` (`media_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `theme`
--

CREATE TABLE IF NOT EXISTS `theme` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `theme_name` enum('the emigration experience','neighborhoods','family','food','sports and games','coming to Cork','our city') COLLATE utf8_unicode_ci NOT NULL,
  `media_id` int(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `media_id` (`media_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `theme`
--

INSERT INTO `theme` (`id`, `theme_name`, `media_id`) VALUES
(1, 'the emigration experience', 3),
(2, 'neighborhoods', 1),
(3, 'family', 3),
(4, 'food', 2),
(5, 'sports and games', 2),
(6, 'coming to Cork', 3),
(7, 'our city', 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `story`
--
ALTER TABLE `story`
  ADD CONSTRAINT `story_ibfk_1` FOREIGN KEY (`contributor_id`) REFERENCES `contributor` (`id`),
  ADD CONSTRAINT `story_ibfk_2` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`);

--
-- Constraints for table `story_theme`
--
ALTER TABLE `story_theme`
  ADD CONSTRAINT `story_theme_ibfk_1` FOREIGN KEY (`story_id`) REFERENCES `story` (`id`),
  ADD CONSTRAINT `story_theme_ibfk_2` FOREIGN KEY (`theme_id`) REFERENCES `theme` (`id`),
  ADD CONSTRAINT `story_theme_ibfk_3` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`);

--
-- Constraints for table `theme`
--
ALTER TABLE `theme`
  ADD CONSTRAINT `theme_ibfk_1` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
