-- phpMyAdmin SQL Dump
-- version 4.0.10.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 06, 2015 at 11:45 AM
-- Server version: 5.5.45-cll
-- PHP Version: 5.4.31

--
-- northside folklore project
--
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `heroncro_demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE IF NOT EXISTS `book` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `chapter` varchar(255) NOT NULL,
  `pages` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `chapter` (`chapter`,`pages`),
  KEY `id` (`id`),
  KEY `id_2` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `chapter`, `pages`) VALUES
(1, 'neighborhood', '19-32'),
(2, 'when we were young', '33-47'),
(3, 'paths to cork', '55-60'),
(4, 'talking cork', '67-78'),
(5, 'here there and in-between', '83-88'),
(6, 'the city', '94-112');

-- --------------------------------------------------------

--
-- Table structure for table `contributor`
--

CREATE TABLE IF NOT EXISTS `contributor` (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `origin` varchar(255) NOT NULL,
  `stories` varchar(255) NOT NULL,
  `tape` int(8) unsigned zerofill NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tape` (`tape`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `contributor`
--

INSERT INTO `contributor` (`id`, `name`, `origin`, `stories`, `tape`) VALUES
(2, 'marie-anique desplanques', 'france', 'coming to cork', 00000001);

-- --------------------------------------------------------

--
-- Table structure for table `disc`
--

CREATE TABLE IF NOT EXISTS `disc` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `topics` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `story` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tracks` int(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `disc`
--

INSERT INTO `disc` (`id`, `topics`, `story`, `tracks`) VALUES
(1, 'emmigration', 'there and back again', 1),
(2, '1059s cork', 'i''ll see you in my dreams', 2),
(3, 'home, family, and food', 'I remember it well', 3),
(4, 'growing up', 'where we sported and played', 4),
(5, 'coming to cork', 'corkonian by choice', 5),
(6, 'our city', 'doing pana and meeting at the fountain', 6);

-- --------------------------------------------------------

--
-- Table structure for table `episode`
--

CREATE TABLE IF NOT EXISTS `episode` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `aired` date NOT NULL,
  `topic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `length` int(8) NOT NULL,
  `contributor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `episode`
--

INSERT INTO `episode` (`id`, `aired`, `topic`, `length`, `contributor`) VALUES
(1, '2005-03-02', 'there and back again', 52, 'marie-anique desplanques'),
(2, '2005-03-09', 'i''ll see you in my dreams', 47, 'tim o''brien'),
(3, '2005-03-16', 'i remember it well', 53, 'billy mccarthy'),
(4, '2005-03-23', 'where we sported and played', 49, 'stefan wulff'),
(5, '2005-03-30', 'corconian by choice', 47, 'mary o''sullivan'),
(6, '2005-04-06', 'doing pana and meeting at the fountain', 53, 'cliona o''carroll');

-- --------------------------------------------------------

--
-- Table structure for table `interview`
--

CREATE TABLE IF NOT EXISTS `interview` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `name` varchar(255) NOT NULL,
  `story` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tape` int(8) unsigned zerofill NOT NULL,
  PRIMARY KEY (`id`),
  KEY `date` (`date`,`name`,`tape`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `interview`
--

INSERT INTO `interview` (`id`, `date`, `name`, `story`, `tape`) VALUES
(0, '2004-05-11', '1', 'irish pubs', 00000001),
(2, '2004-05-23', 'billy mccarthy', 'cycling in the lough', 00000003);

-- --------------------------------------------------------

--
-- Table structure for table `medium`
--

CREATE TABLE IF NOT EXISTS `medium` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `type` varchar(6) NOT NULL,
  `date` year(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `medium`
--

INSERT INTO `medium` (`id`, `type`, `date`) VALUES
(1, 'radio_', 2005),
(3, 'disc', 2005),
(4, 'book', 2006);

-- --------------------------------------------------------

--
-- Table structure for table `northside`
--

CREATE TABLE IF NOT EXISTS `northside` (
  `id` int(11) NOT NULL COMMENT 'Primary',
  `participant` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `medium` varchar(11) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` year(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `participant` (`participant`,`medium`,`date`),
  KEY `id` (`id`),
  KEY `id_2` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `northside`
--

INSERT INTO `northside` (`id`, `participant`, `medium`, `date`) VALUES
(1, 'cliona o''carroll', 'radio_episo', 2005);

-- --------------------------------------------------------

--
-- Table structure for table `story`
--

CREATE TABLE IF NOT EXISTS `story` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `contributor` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `interview` varchar(8) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `topic` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tape` int(8) NOT NULL,
  `episode` int(6) NOT NULL,
  `page` int(128) NOT NULL,
  `track` int(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `contributor` (`contributor`,`interview`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `story`
--

INSERT INTO `story` (`id`, `contributor`, `interview`, `topic`, `tape`, `episode`, `page`, `track`) VALUES
(1, 'marie-annik desplanque', '1', 'coming to cork', 234, 1, 76, 1),
(2, 'mary o''sullivan', '5', 'i remember it well', 364, 3, 79, 3);

-- --------------------------------------------------------

--
-- Table structure for table `topic`
--

CREATE TABLE IF NOT EXISTS `topic` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `topic_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contributor` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`topic_title`(250))
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `topic`
--

INSERT INTO `topic` (`id`, `topic_title`, `contributor`) VALUES
(1, 'the city', 'stefan wulff'),
(2, 'i remember it well', 'mary o''sullivan');

-- --------------------------------------------------------

--
-- Table structure for table `tracks`
--

CREATE TABLE IF NOT EXISTS `tracks` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `story` varchar(500) NOT NULL,
  `length` int(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `tracks`
--

INSERT INTO `tracks` (`id`, `story`, `length`) VALUES
(1, 'there and back again', 25),
(2, 'I''ll see you in my dreams', 16),
(3, 'I remember it well', 21),
(4, 'Where we sported and played', 15),
(5, 'corconian by choice', 32),
(6, 'doing pana and meeting at the fountain', 33);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
