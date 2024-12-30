-- --------------------------------------------------------
-- Host:                         10.0.0.50
-- Server-Version:               10.11.3-MariaDB-1+rpi1 - Raspbian 12
-- Server-Betriebssystem:        debian-linux-gnueabihf
-- HeidiSQL Version:             12.8.0.6908
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Exportiere Datenbank-Struktur für beecounterdb
CREATE DATABASE IF NOT EXISTS `beecounterdb` /*!40100 DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci */;
USE `beecounterdb`;

-- Exportiere Struktur von Tabelle beecounterdb.ENTRANCE
CREATE TABLE IF NOT EXISTS `ENTRANCE` (
  `EN_ID` int(11) NOT NULL,
  `EN_NUMBER` int(11) NOT NULL,
  `EN_NAME` text NOT NULL,
  PRIMARY KEY (`EN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Exportiere Daten aus Tabelle beecounterdb.ENTRANCE: ~6 rows (ungefähr)
INSERT INTO `ENTRANCE` (`EN_ID`, `EN_NUMBER`, `EN_NAME`) VALUES
	(1, 1, 'Entrance 1'),
	(2, 2, 'Entrance 2'),
	(3, 3, 'Entrance 3'),
	(4, 4, 'Entrance 4'),
	(5, 5, 'Entrance 5'),
	(6, 6, 'Entrance 6'),
	(7, 7, 'Entrance 7');

-- Exportiere Struktur von Tabelle beecounterdb.LIGHT_BARRIERE
CREATE TABLE IF NOT EXISTS `LIGHT_BARRIERE` (
  `LB_ID` int(11) NOT NULL,
  `LB_TYPE` text NOT NULL,
  `LB_GPIO_PORT` int(11) NOT NULL,
  `LB_EN_ID` int(11) NOT NULL,
  PRIMARY KEY (`LB_ID`),
  KEY `FK_ENTRANCE_ID` (`LB_EN_ID`),
  CONSTRAINT `FK_ENTRANCE_ID` FOREIGN KEY (`LB_EN_ID`) REFERENCES `ENTRANCE` (`EN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- Exportiere Daten aus Tabelle beecounterdb.LIGHT_BARRIERE: ~14 rows (ungefähr)
INSERT INTO `LIGHT_BARRIERE` (`LB_ID`, `LB_TYPE`, `LB_GPIO_PORT`, `LB_EN_ID`) VALUES
	(1, 'INNER', 17, 1),
	(2, 'OUTER', 18, 1),
	(3, 'INNER', 27, 2),
	(4, 'OUTER', 22, 2),
	(5, 'INNER', 23, 3),
	(6, 'OUTER', 24, 3),
	(7, 'INNER', 25, 4),
	(8, 'OUTER', 4, 4),
	(9, 'INNER', 14, 5),
	(10, 'OUTER', 555, 5),
	(11, 'INNER', 8, 6),
	(12, 'OUTER', 7, 6),
	(13, 'INNER', 10, 7),
	(14, 'OUTER', 9, 7);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
