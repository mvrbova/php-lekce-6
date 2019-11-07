# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: docker.me (MySQL 5.5.5-10.1.19-MariaDB-1~jessie)
# Database: db
# Generation Time: 2017-02-23 12:17:03 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table class
# ------------------------------------------------------------

DROP TABLE IF EXISTS `class`;

CREATE TABLE `class` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `year` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `homeroom_teacher_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `homeroom_teacher_id` (`homeroom_teacher_id`),
  CONSTRAINT `class_ibfk_1` FOREIGN KEY (`homeroom_teacher_id`) REFERENCES `teacher` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;

INSERT INTO `class` (`id`, `year`, `name`, `homeroom_teacher_id`)
VALUES
	(1,1,'B',5),
	(2,2,'A',17),
	(3,3,'A',18),
	(4,1,'A',12),
	(5,2,'B',16),
	(6,3,'B',19);

/*!40000 ALTER TABLE `class` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table class_subject
# ------------------------------------------------------------

DROP TABLE IF EXISTS `class_subject`;

CREATE TABLE `class_subject` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `subject_id` int(11) unsigned NOT NULL,
  `class_id` int(11) unsigned NOT NULL,
  `teacher_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `subject_id` (`subject_id`),
  KEY `class_id` (`class_id`),
  KEY `teacher_id` (`teacher_id`),
  CONSTRAINT `class_subject_ibfk_1` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`id`),
  CONSTRAINT `class_subject_ibfk_2` FOREIGN KEY (`class_id`) REFERENCES `class` (`id`),
  CONSTRAINT `class_subject_ibfk_3` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `class_subject` WRITE;
/*!40000 ALTER TABLE `class_subject` DISABLE KEYS */;

INSERT INTO `class_subject` (`id`, `subject_id`, `class_id`, `teacher_id`)
VALUES
	(1,1,1,8),
	(2,1,2,19),
	(3,1,3,8),
	(4,1,4,16),
	(5,1,5,17),
	(6,1,6,4),
	(7,2,1,3),
	(8,2,2,3),
	(9,2,3,4),
	(10,2,4,2),
	(11,2,5,15),
	(12,2,6,2),
	(13,3,1,15),
	(14,3,2,14),
	(15,3,3,16),
	(16,3,4,11),
	(17,3,5,8),
	(18,3,6,5),
	(19,4,1,2),
	(20,4,2,7),
	(21,4,3,18),
	(22,4,4,19),
	(23,4,5,18),
	(24,4,6,13);

/*!40000 ALTER TABLE `class_subject` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pupil
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pupil`;

CREATE TABLE `pupil` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `class_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `class_id` (`class_id`),
  CONSTRAINT `pupil_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `class` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `pupil` WRITE;
/*!40000 ALTER TABLE `pupil` DISABLE KEYS */;

INSERT INTO `pupil` (`id`, `name`, `class_id`)
VALUES
	(1,'Joan',2),
	(2,'Lawrence',6),
	(3,'Ashley',1),
	(4,'Jose',6),
	(5,'Tammy',5),
	(6,'Norma',5),
	(7,'David',4),
	(8,'Billy',1),
	(9,'Roy',6),
	(10,'Phillip',5),
	(11,'Carl',5),
	(12,'Ronald',2),
	(13,'Dennis',5),
	(14,'Nicholas',2),
	(15,'Virginia',5),
	(16,'Teresa',6),
	(17,'Raymond',1),
	(18,'Amy',2),
	(19,'Lillian',3),
	(20,'Douglas',2),
	(21,'George',1),
	(22,'Karen',4),
	(23,'Donald',4),
	(24,'Edward',2),
	(25,'Jeremy',2),
	(26,'Richard',6),
	(27,'Louise',2),
	(28,'Arthur',5),
	(29,'Janet',5),
	(30,'Keith',3),
	(31,'Cheryl',1),
	(32,'Joe',2),
	(33,'Joan',5),
	(34,'Kathryn',5),
	(35,'Jacqueline',2),
	(36,'Roger',3),
	(37,'Earl',4),
	(38,'Douglas',1),
	(39,'James',4),
	(40,'Fred',1),
	(41,'Robin',2),
	(42,'Joe',6),
	(43,'Diane',4),
	(44,'Rachel',4),
	(45,'Kevin',6),
	(46,'Doris',4),
	(47,'Christopher',5),
	(48,'Howard',5),
	(49,'Janice',5),
	(50,'Randy',5),
	(51,'Frances',4),
	(52,'Lawrence',6),
	(53,'Martha',4),
	(54,'Martha',5),
	(55,'Frances',6),
	(56,'Michelle',6),
	(57,'Cynthia',1),
	(58,'Joe',5),
	(59,'Ralph',4),
	(60,'Jack',1),
	(61,'Kathryn',3),
	(62,'Michelle',2),
	(63,'Robin',4),
	(64,'Ruby',5),
	(65,'Adam',2),
	(66,'Barbara',6),
	(67,'Jason',3),
	(68,'Bonnie',1),
	(69,'Stephanie',5),
	(70,'Julia',2),
	(71,'Ashley',4),
	(72,'Cheryl',6),
	(73,'Edward',1),
	(74,'Margaret',4),
	(75,'Mary',1),
	(76,'Michelle',2),
	(77,'Peter',6),
	(78,'Beverly',6),
	(79,'Theresa',5),
	(80,'Russell',2),
	(81,'Jane',1),
	(82,'Thomas',1),
	(83,'Elizabeth',4),
	(84,'Jonathan',4),
	(85,'Gerald',1),
	(86,'Steven',2),
	(87,'Edward',3),
	(88,'George',5),
	(89,'Stephanie',3),
	(90,'Gary',5),
	(91,'Norma',4),
	(92,'Martha',3),
	(93,'Stephen',4),
	(94,'Lori',3),
	(95,'Kevin',1),
	(96,'Gerald',4),
	(97,'Mark',5),
	(98,'Anthony',5),
	(99,'Kimberly',2),
	(100,'Ruth',5);

/*!40000 ALTER TABLE `pupil` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pupil_subject
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pupil_subject`;

CREATE TABLE `pupil_subject` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pupil_id` int(11) unsigned NOT NULL,
  `subject_id` int(10) unsigned NOT NULL,
  `grade` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pupil_id` (`pupil_id`),
  KEY `subject_id` (`subject_id`),
  CONSTRAINT `pupil_subject_ibfk_1` FOREIGN KEY (`pupil_id`) REFERENCES `pupil` (`id`),
  CONSTRAINT `pupil_subject_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `pupil_subject` WRITE;
/*!40000 ALTER TABLE `pupil_subject` DISABLE KEYS */;

INSERT INTO `pupil_subject` (`id`, `pupil_id`, `subject_id`, `grade`)
VALUES
	(1,1,1,4),
	(2,1,2,1),
	(3,1,3,2),
	(4,1,4,4),
	(5,2,1,2),
	(6,2,2,3),
	(7,2,3,2),
	(8,2,4,3),
	(9,3,1,3),
	(10,3,2,3),
	(11,3,3,4),
	(12,3,4,2),
	(13,4,1,3),
	(14,4,2,4),
	(15,4,3,4),
	(16,4,4,4),
	(17,5,1,4),
	(18,5,2,3),
	(19,5,3,4),
	(20,5,4,2),
	(21,6,1,4),
	(22,6,2,3),
	(23,6,3,3),
	(24,6,4,5),
	(25,7,1,4),
	(26,7,2,3),
	(27,7,3,4),
	(28,7,4,4),
	(29,8,1,4),
	(30,8,2,3),
	(31,8,3,1),
	(32,8,4,3),
	(33,9,1,3),
	(34,9,2,4),
	(35,9,3,3),
	(36,9,4,3),
	(37,10,1,4),
	(38,10,2,3),
	(39,10,3,4),
	(40,10,4,3),
	(41,11,1,3),
	(42,11,2,4),
	(43,11,3,2),
	(44,11,4,1),
	(45,12,1,4),
	(46,12,2,2),
	(47,12,3,5),
	(48,12,4,3),
	(49,13,1,2),
	(50,13,2,3),
	(51,13,3,1),
	(52,13,4,3),
	(53,14,1,2),
	(54,14,2,4),
	(55,14,3,4),
	(56,14,4,1),
	(57,15,1,4),
	(58,15,2,4),
	(59,15,3,1),
	(60,15,4,3),
	(61,16,1,1),
	(62,16,2,3),
	(63,16,3,3),
	(64,16,4,3),
	(65,17,1,5),
	(66,17,2,2),
	(67,17,3,3),
	(68,17,4,4),
	(69,18,1,3),
	(70,18,2,2),
	(71,18,3,3),
	(72,18,4,5),
	(73,19,1,3),
	(74,19,2,3),
	(75,19,3,2),
	(76,19,4,2),
	(77,20,1,5),
	(78,20,2,5),
	(79,20,3,2),
	(80,20,4,3),
	(81,21,1,2),
	(82,21,2,5),
	(83,21,3,3),
	(84,21,4,2),
	(85,22,1,4),
	(86,22,2,2),
	(87,22,3,4),
	(88,22,4,3),
	(89,23,1,4),
	(90,23,2,3),
	(91,23,3,6),
	(92,23,4,3),
	(93,24,1,3),
	(94,24,2,3),
	(95,24,3,2),
	(96,24,4,2),
	(97,25,1,4),
	(98,25,2,3),
	(99,25,3,2),
	(100,25,4,2),
	(101,26,1,2),
	(102,26,2,3),
	(103,26,3,5),
	(104,26,4,2),
	(105,27,1,3),
	(106,27,2,3),
	(107,27,3,2),
	(108,27,4,3),
	(109,28,1,3),
	(110,28,2,3),
	(111,28,3,3),
	(112,28,4,2),
	(113,29,1,4),
	(114,29,2,3),
	(115,29,3,4),
	(116,29,4,3),
	(117,30,1,4),
	(118,30,2,3),
	(119,30,3,2),
	(120,30,4,4),
	(121,31,1,3),
	(122,31,2,3),
	(123,31,3,3),
	(124,31,4,2),
	(125,32,1,3),
	(126,32,2,3),
	(127,32,3,3),
	(128,32,4,2),
	(129,33,1,2),
	(130,33,2,4),
	(131,33,3,2),
	(132,33,4,3),
	(133,34,1,2),
	(134,34,2,5),
	(135,34,3,2),
	(136,34,4,4),
	(137,35,1,5),
	(138,35,2,1),
	(139,35,3,2),
	(140,35,4,2),
	(141,36,1,3),
	(142,36,2,1),
	(143,36,3,2),
	(144,36,4,5),
	(145,37,1,2),
	(146,37,2,3),
	(147,37,3,4),
	(148,37,4,3),
	(149,38,1,0),
	(150,38,2,4),
	(151,38,3,3),
	(152,38,4,3),
	(153,39,1,1),
	(154,39,2,4),
	(155,39,3,3),
	(156,39,4,3),
	(157,40,1,3),
	(158,40,2,2),
	(159,40,3,5),
	(160,40,4,4),
	(161,41,1,3),
	(162,41,2,4),
	(163,41,3,2),
	(164,41,4,3),
	(165,42,1,2),
	(166,42,2,4),
	(167,42,3,2),
	(168,42,4,3),
	(169,43,1,4),
	(170,43,2,2),
	(171,43,3,4),
	(172,43,4,3),
	(173,44,1,2),
	(174,44,2,2),
	(175,44,3,4),
	(176,44,4,4),
	(177,45,1,2),
	(178,45,2,2),
	(179,45,3,3),
	(180,45,4,3),
	(181,46,1,2),
	(182,46,2,4),
	(183,46,3,4),
	(184,46,4,3),
	(185,47,1,1),
	(186,47,2,3),
	(187,47,3,5),
	(188,47,4,2),
	(189,48,1,4),
	(190,48,2,4),
	(191,48,3,3),
	(192,48,4,4),
	(193,49,1,2),
	(194,49,2,3),
	(195,49,3,4),
	(196,49,4,3),
	(197,50,1,3),
	(198,50,2,5),
	(199,50,3,3),
	(200,50,4,3),
	(201,51,1,1),
	(202,51,2,3),
	(203,51,3,3),
	(204,51,4,3),
	(205,52,1,3),
	(206,52,2,4),
	(207,52,3,3),
	(208,52,4,4),
	(209,53,1,3),
	(210,53,2,4),
	(211,53,3,4),
	(212,53,4,2),
	(213,54,1,2),
	(214,54,2,3),
	(215,54,3,5),
	(216,54,4,3),
	(217,55,1,4),
	(218,55,2,3),
	(219,55,3,2),
	(220,55,4,4),
	(221,56,1,3),
	(222,56,2,1),
	(223,56,3,2),
	(224,56,4,2),
	(225,57,1,3),
	(226,57,2,2),
	(227,57,3,5),
	(228,57,4,4),
	(229,58,1,3),
	(230,58,2,4),
	(231,58,3,4),
	(232,58,4,2),
	(233,59,1,2),
	(234,59,2,1),
	(235,59,3,5),
	(236,59,4,4),
	(237,60,1,2),
	(238,60,2,5),
	(239,60,3,3),
	(240,60,4,2),
	(241,61,1,2),
	(242,61,2,4),
	(243,61,3,3),
	(244,61,4,2),
	(245,62,1,3),
	(246,62,2,3),
	(247,62,3,3),
	(248,62,4,3),
	(249,63,1,2),
	(250,63,2,3),
	(251,63,3,1),
	(252,63,4,2),
	(253,64,1,3),
	(254,64,2,3),
	(255,64,3,6),
	(256,64,4,6),
	(257,65,1,4),
	(258,65,2,2),
	(259,65,3,3),
	(260,65,4,3),
	(261,66,1,4),
	(262,66,2,2),
	(263,66,3,2),
	(264,66,4,2),
	(265,67,1,3),
	(266,67,2,1),
	(267,67,3,3),
	(268,67,4,2),
	(269,68,1,3),
	(270,68,2,3),
	(271,68,3,5),
	(272,68,4,3),
	(273,69,1,3),
	(274,69,2,4),
	(275,69,3,2),
	(276,69,4,2),
	(277,70,1,4),
	(278,70,2,3),
	(279,70,3,2),
	(280,70,4,2),
	(281,71,1,3),
	(282,71,2,2),
	(283,71,3,3),
	(284,71,4,3),
	(285,72,1,3),
	(286,72,2,2),
	(287,72,3,2),
	(288,72,4,2),
	(289,73,1,3),
	(290,73,2,3),
	(291,73,3,2),
	(292,73,4,2),
	(293,74,1,2),
	(294,74,2,3),
	(295,74,3,2),
	(296,74,4,3),
	(297,75,1,3),
	(298,75,2,4),
	(299,75,3,4),
	(300,75,4,3),
	(301,76,1,2),
	(302,76,2,3),
	(303,76,3,3),
	(304,76,4,4),
	(305,77,1,3),
	(306,77,2,3),
	(307,77,3,3),
	(308,77,4,4),
	(309,78,1,3),
	(310,78,2,3),
	(311,78,3,3),
	(312,78,4,3),
	(313,79,1,4),
	(314,79,2,4),
	(315,79,3,4),
	(316,79,4,2),
	(317,80,1,2),
	(318,80,2,3),
	(319,80,3,3),
	(320,80,4,2),
	(321,81,1,4),
	(322,81,2,3),
	(323,81,3,4),
	(324,81,4,4),
	(325,82,1,3),
	(326,82,2,4),
	(327,82,3,2),
	(328,82,4,2),
	(329,83,1,4),
	(330,83,2,3),
	(331,83,3,2),
	(332,83,4,4),
	(333,84,1,3),
	(334,84,2,4),
	(335,84,3,4),
	(336,84,4,4),
	(337,85,1,3),
	(338,85,2,3),
	(339,85,3,2),
	(340,85,4,4),
	(341,86,1,3),
	(342,86,2,3),
	(343,86,3,3),
	(344,86,4,2),
	(345,87,1,1),
	(346,87,2,1),
	(347,87,3,6),
	(348,87,4,3),
	(349,88,1,3),
	(350,88,2,3),
	(351,88,3,2),
	(352,88,4,4),
	(353,89,1,6),
	(354,89,2,4),
	(355,89,3,1),
	(356,89,4,4),
	(357,90,1,3),
	(358,90,2,3),
	(359,90,3,3),
	(360,90,4,3),
	(361,91,1,2),
	(362,91,2,3),
	(363,91,3,3),
	(364,91,4,3),
	(365,92,1,3),
	(366,92,2,2),
	(367,92,3,3),
	(368,92,4,2),
	(369,93,1,2),
	(370,93,2,3),
	(371,93,3,2),
	(372,93,4,3),
	(373,94,1,4),
	(374,94,2,4),
	(375,94,3,3),
	(376,94,4,2),
	(377,95,1,3),
	(378,95,2,3),
	(379,95,3,2),
	(380,95,4,3),
	(381,96,1,2),
	(382,96,2,1),
	(383,96,3,2),
	(384,96,4,6),
	(385,97,1,5),
	(386,97,2,4),
	(387,97,3,3),
	(388,97,4,1),
	(389,98,1,4),
	(390,98,2,2),
	(391,98,3,3),
	(392,98,4,5),
	(393,99,1,3),
	(394,99,2,4),
	(395,99,3,4),
	(396,99,4,4),
	(397,100,1,3),
	(398,100,2,3),
	(399,100,3,5),
	(400,100,4,2);

/*!40000 ALTER TABLE `pupil_subject` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table subject
# ------------------------------------------------------------

DROP TABLE IF EXISTS `subject`;

CREATE TABLE `subject` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `subject` WRITE;
/*!40000 ALTER TABLE `subject` DISABLE KEYS */;

INSERT INTO `subject` (`id`, `name`)
VALUES
	(1,'Mathematics'),
	(2,'Physics'),
	(3,'Biology'),
	(4,'Chemistry');

/*!40000 ALTER TABLE `subject` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table teacher
# ------------------------------------------------------------

DROP TABLE IF EXISTS `teacher`;

CREATE TABLE `teacher` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `salary` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;

INSERT INTO `teacher` (`id`, `name`, `salary`)
VALUES
	(1,'Joe',48901),
	(2,'Helen',27677.4),
	(3,'Frank',20828.8),
	(4,'Arthur',34068.8),
	(5,'Susan',29761.7),
	(6,'Gerald',34053.7),
	(7,'Virginia',21250.1),
	(8,'Donna',48901),
	(9,'Jesse',37895.7),
	(10,'Diane',39494.5),
	(11,'Eugene',48901),
	(12,'Brandon',22434.6),
	(13,'Scott',39229),
	(14,'James',29381.7),
	(15,'Alice',49129.7),
	(16,'Larry',49598.2),
	(17,'Jack',35026.6),
	(18,'Lois',21903.5),
	(19,'Albert',30067.6),
	(20,'Kathleen',37192.1);

/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
