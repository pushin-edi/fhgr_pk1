# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.5.5-10.5.8-MariaDB)
# Datenbank: cheval_tool2
# Erstellt am: 2021-03-15 09:11:36 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Export von Tabelle anwendbarkeit
# ------------------------------------------------------------

DROP TABLE IF EXISTS `anwendbarkeit`;

CREATE TABLE `anwendbarkeit` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `id_methoden` int(3) NOT NULL,
  `id_produktstatus` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `anwendbarkeit` WRITE;
/*!40000 ALTER TABLE `anwendbarkeit` DISABLE KEYS */;

INSERT INTO `anwendbarkeit` (`id`, `id_methoden`, `id_produktstatus`)
VALUES
	(1,1,2),
	(2,1,3),
	(3,1,4),
	(4,2,2),
	(5,2,3),
	(6,3,2),
	(7,3,3),
	(8,3,4),
	(9,4,2),
	(10,4,3),
	(11,4,4),
	(12,5,2),
	(13,5,3),
	(15,6,2),
	(16,6,3),
	(17,6,4),
	(19,7,2),
	(20,7,3),
	(21,7,4),
	(61,2,4),
	(23,8,3),
	(24,8,4),
	(25,9,3),
	(26,9,4),
	(27,10,3),
	(28,10,4),
	(29,11,3),
	(30,11,4),
	(31,12,3),
	(32,12,4),
	(33,13,3),
	(34,13,4),
	(35,14,3),
	(36,14,4),
	(37,15,3),
	(38,15,4),
	(39,16,1),
	(40,16,2),
	(41,16,3),
	(42,17,1),
	(43,17,2),
	(44,17,3),
	(45,18,3),
	(46,18,4),
	(48,19,2),
	(49,19,3),
	(50,20,1),
	(51,20,2),
	(52,20,3),
	(53,21,1),
	(54,21,2),
	(55,21,3),
	(56,21,4),
	(57,22,1),
	(58,22,2),
	(59,22,3),
	(60,22,4);

/*!40000 ALTER TABLE `anwendbarkeit` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle fokus
# ------------------------------------------------------------

DROP TABLE IF EXISTS `fokus`;

CREATE TABLE `fokus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_methoden` int(3) NOT NULL,
  `id_untersuchungsschwerpunkt` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `fokus` WRITE;
/*!40000 ALTER TABLE `fokus` DISABLE KEYS */;

INSERT INTO `fokus` (`id`, `id_methoden`, `id_untersuchungsschwerpunkt`)
VALUES
	(1,1,1),
	(2,1,2),
	(3,1,3),
	(4,2,2),
	(5,2,3),
	(6,3,2),
	(7,3,3),
	(8,4,2),
	(9,4,3),
	(10,5,2),
	(11,6,2),
	(12,7,3),
	(13,8,4),
	(14,9,5),
	(15,10,2),
	(16,11,2),
	(17,12,2),
	(57,22,8),
	(56,20,8),
	(55,17,8),
	(54,16,8),
	(24,16,2),
	(25,16,3),
	(26,17,2),
	(27,17,3),
	(29,18,2),
	(30,18,3),
	(32,19,2),
	(33,20,3),
	(39,18,1),
	(36,21,7),
	(37,22,6),
	(40,1,9),
	(41,2,9),
	(42,3,9),
	(43,4,9),
	(44,5,9),
	(45,9,9),
	(46,13,9),
	(47,14,9),
	(48,15,9),
	(49,16,9),
	(50,17,9),
	(51,18,9),
	(52,21,9),
	(53,22,9);

/*!40000 ALTER TABLE `fokus` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle methoden
# ------------------------------------------------------------

DROP TABLE IF EXISTS `methoden`;

CREATE TABLE `methoden` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `bezeichnung` varchar(40) NOT NULL,
  `zeit` varchar(40) NOT NULL,
  `budget` varchar(40) NOT NULL,
  `relevanz` varchar(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `methoden` WRITE;
/*!40000 ALTER TABLE `methoden` DISABLE KEYS */;

INSERT INTO `methoden` (`id`, `bezeichnung`, `zeit`, `budget`, `relevanz`)
VALUES
	(1,'Cognitive Walkthrough','hoch','hoch','4'),
	(2,'Pluralistic Usability Walkthrough','hoch','hoch','2'),
	(3,'Collaborative Usability Inspection','hoch','hoch','3'),
	(4,'Heuristische Evaluation','mittel','mittel','5'),
	(5,'Claims Analysis','mittel','mittel','1'),
	(6,'ISO-9241-110','wenig','niedrig','3'),
	(7,'ISO-9241-12','wenig','niedrig','3'),
	(8,'Web Accessibility Guidelines','mittel','mittel','3'),
	(9,'AttrakDiff','sehr wenig','sehr niedrig','5'),
	(10,'ISOMetrics (kurz)','sehr wenig','sehr niedrig','4'),
	(11,'ISOMetrics (lang)','wenig','niedrig','3'),
	(12,'ISONorm 110-S/ISONorm 10','sehr wenig','sehr niedrig','4'),
	(13,'SUMI','wenig','niedrig','2'),
	(14,'QUIS','wenig','niedrig','2'),
	(15,'WUI','wenig','niedrig','3'),
	(16,'Contextual Inquiry','hoch','hoch','3'),
	(17,'Focus Groups','hoch','hoch','3'),
	(18,'Usability Test','hoch','hoch','5'),
	(19,'Card Sorting','wenig','niedrig','3'),
	(20,'Personas','mittel','mittel','3'),
	(21,'Best-Practice-Analyse','mittel','mittel','5'),
	(22,'Umfragen','sehr hoch','mittel','4');

/*!40000 ALTER TABLE `methoden` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle motivation
# ------------------------------------------------------------

DROP TABLE IF EXISTS `motivation`;

CREATE TABLE `motivation` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `untersuchungstyp` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `motivation` WRITE;
/*!40000 ALTER TABLE `motivation` DISABLE KEYS */;

INSERT INTO `motivation` (`id`, `untersuchungstyp`)
VALUES
	(1,'nur ein Produkt untersuchen'),
	(2,'mehrere Produkte/Varianten vergleichen'),
	(3,'mehr über das Marktumfeld erfahren'),
	(4,'Unterstützung bei der Entwicklung');

/*!40000 ALTER TABLE `motivation` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle produktstatus
# ------------------------------------------------------------

DROP TABLE IF EXISTS `produktstatus`;

CREATE TABLE `produktstatus` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `status` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `produktstatus` WRITE;
/*!40000 ALTER TABLE `produktstatus` DISABLE KEYS */;

INSERT INTO `produktstatus` (`id`, `status`)
VALUES
	(1,'eine Idee'),
	(2,'einen skizzierten Entwurf'),
	(3,'einen funktionsfähigen Entwurf'),
	(4,'ein fertiges Produkt');

/*!40000 ALTER TABLE `produktstatus` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle untersuchungsgrund
# ------------------------------------------------------------

DROP TABLE IF EXISTS `untersuchungsgrund`;

CREATE TABLE `untersuchungsgrund` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `id_methoden` int(3) NOT NULL,
  `id_motivation` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `untersuchungsgrund` WRITE;
/*!40000 ALTER TABLE `untersuchungsgrund` DISABLE KEYS */;

INSERT INTO `untersuchungsgrund` (`id`, `id_methoden`, `id_motivation`)
VALUES
	(1,1,1),
	(2,2,1),
	(3,3,1),
	(4,4,1),
	(5,5,1),
	(6,5,2),
	(7,6,1),
	(8,6,2),
	(9,6,4),
	(10,7,1),
	(11,7,2),
	(12,7,4),
	(13,8,1),
	(14,8,4),
	(15,9,1),
	(16,9,2),
	(17,10,1),
	(18,10,2),
	(19,11,1),
	(20,11,2),
	(21,12,1),
	(22,12,2),
	(23,13,1),
	(24,13,2),
	(25,14,1),
	(26,14,2),
	(27,15,1),
	(28,15,2),
	(30,16,4),
	(31,17,1),
	(32,17,2),
	(33,17,3),
	(34,17,4),
	(35,18,1),
	(37,19,1),
	(38,19,4),
	(39,20,4),
	(40,21,3),
	(41,21,4),
	(42,22,3),
	(43,22,4);

/*!40000 ALTER TABLE `untersuchungsgrund` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle untersuchungsschwerpunkt
# ------------------------------------------------------------

DROP TABLE IF EXISTS `untersuchungsschwerpunkt`;

CREATE TABLE `untersuchungsschwerpunkt` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `schwerpunkt` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `untersuchungsschwerpunkt` WRITE;
/*!40000 ALTER TABLE `untersuchungsschwerpunkt` DISABLE KEYS */;

INSERT INTO `untersuchungsschwerpunkt` (`id`, `schwerpunkt`)
VALUES
	(1,'Erlernbarkeit'),
	(2,'Dialoggestaltung'),
	(3,'Informationspräsentation'),
	(4,'Accessibility'),
	(5,'Joy of Use'),
	(6,'Zielgruppendefinition'),
	(7,'Mitbewerber'),
	(8,'Anforderungsdefinition'),
	(9,'gesamthaft untersucht werden');

/*!40000 ALTER TABLE `untersuchungsschwerpunkt` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle untersuchungsziel
# ------------------------------------------------------------

DROP TABLE IF EXISTS `untersuchungsziel`;

CREATE TABLE `untersuchungsziel` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `ziel` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `untersuchungsziel` WRITE;
/*!40000 ALTER TABLE `untersuchungsziel` DISABLE KEYS */;

INSERT INTO `untersuchungsziel` (`id`, `ziel`)
VALUES
	(1,'eine allgemeine Bewertung meines Produkt'),
	(2,'Fehler und Schwachstellen aufdecken'),
	(3,'eine explorative Analyse des Produktes'),
	(4,'konzeptionelle Unterstützung');

/*!40000 ALTER TABLE `untersuchungsziel` ENABLE KEYS */;
UNLOCK TABLES;


# Export von Tabelle zielsetzung
# ------------------------------------------------------------

DROP TABLE IF EXISTS `zielsetzung`;

CREATE TABLE `zielsetzung` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `id_methoden` int(3) NOT NULL,
  `id_untersuchungsziel` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `zielsetzung` WRITE;
/*!40000 ALTER TABLE `zielsetzung` DISABLE KEYS */;

INSERT INTO `zielsetzung` (`id`, `id_methoden`, `id_untersuchungsziel`)
VALUES
	(1,1,3),
	(2,2,3),
	(3,3,2),
	(4,4,2),
	(5,5,1),
	(6,6,1),
	(8,7,1),
	(10,8,1),
	(11,8,2),
	(13,9,1),
	(14,10,1),
	(16,11,2),
	(17,12,1),
	(18,13,1),
	(19,14,1),
	(20,15,1),
	(22,16,4),
	(23,17,1),
	(34,17,2),
	(25,17,4),
	(26,18,2),
	(27,19,4),
	(28,20,4),
	(29,21,1),
	(30,21,4),
	(31,22,1),
	(32,22,2),
	(33,22,4);

/*!40000 ALTER TABLE `zielsetzung` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
