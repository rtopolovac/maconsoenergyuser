-- --------------------------------------------------------
-- Hôte:                         127.0.0.1
-- Version du serveur:           10.4.28-MariaDB - mariadb.org binary distribution
-- SE du serveur:                Win64
-- HeidiSQL Version:             12.5.0.6677
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Listage de la structure de la table maconsoenergy. consommation
CREATE TABLE IF NOT EXISTS `consommation` (
  `Id_Consommation` int(11) NOT NULL AUTO_INCREMENT,
  `Quantite_KWH` decimal(15,2) DEFAULT NULL,
  `Id_Type_Conso` int(11) NOT NULL,
  `Id_Foyer` int(11) NOT NULL,
  PRIMARY KEY (`Id_Consommation`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Listage des données de la table maconsoenergy.consommation : ~101 rows (environ)
DELETE FROM `consommation`;
INSERT INTO `consommation` (`Id_Consommation`, `Quantite_KWH`, `Id_Type_Conso`, `Id_Foyer`) VALUES
	(1, 10927.00, 6, 1),
	(2, 12824.00, 3, 101),
	(3, 11344.00, 2, 102),
	(4, 4452.00, 1, 103),
	(5, 17598.00, 5, 104),
	(6, 12281.00, 3, 105),
	(7, 25198.00, 4, 106),
	(8, 17679.00, 4, 107),
	(9, 34951.00, 5, 108),
	(10, 948.00, 7, 109),
	(11, 980.00, 7, 110),
	(12, 22775.00, 4, 111),
	(13, 12103.00, 3, 112),
	(14, 4904.00, 1, 113),
	(15, 980.00, 7, 114),
	(16, 18297.00, 5, 115),
	(17, 12960.00, 2, 116),
	(18, 4939.00, 1, 117),
	(19, 941.00, 7, 118),
	(20, 10596.00, 6, 119),
	(21, 36077.00, 5, 120),
	(22, 965.00, 7, 121),
	(23, 11499.00, 6, 122),
	(24, 4797.00, 1, 123),
	(25, 12184.00, 3, 124),
	(26, 960.00, 7, 125),
	(27, 913.00, 7, 126),
	(28, 4736.00, 1, 127),
	(29, 4538.00, 1, 128),
	(30, 11125.00, 3, 129),
	(31, 11740.00, 3, 130),
	(32, 22582.00, 4, 131),
	(33, 20839.00, 4, 132),
	(34, 24159.00, 5, 133),
	(35, 11728.00, 3, 134),
	(36, 4156.00, 1, 135),
	(37, 4442.00, 1, 136),
	(38, 920.00, 7, 137),
	(39, 23691.00, 4, 138),
	(40, 4738.00, 1, 139),
	(41, 11206.00, 2, 140),
	(42, 4186.00, 1, 141),
	(43, 12094.00, 2, 142),
	(44, 15839.00, 5, 143),
	(45, 12765.00, 2, 144),
	(46, 15810.00, 4, 145),
	(47, 10612.00, 6, 146),
	(48, 953.00, 7, 147),
	(49, 9292.00, 6, 148),
	(50, 12309.00, 3, 149),
	(51, 963.00, 7, 150),
	(52, 4267.00, 1, 151),
	(53, 11207.00, 6, 152),
	(54, 4209.00, 1, 153),
	(55, 15231.00, 4, 154),
	(56, 11700.00, 3, 155),
	(57, 940.00, 7, 156),
	(58, 9090.00, 6, 157),
	(59, 4842.00, 1, 158),
	(60, 9177.00, 6, 159),
	(61, 4582.00, 1, 160),
	(62, 12452.00, 3, 161),
	(63, 11158.00, 2, 162),
	(64, 17383.00, 4, 163),
	(65, 4194.00, 1, 164),
	(66, 9382.00, 6, 165),
	(67, 4617.00, 1, 166),
	(68, 11343.00, 3, 167),
	(69, 11002.00, 2, 168),
	(70, 12441.00, 3, 169),
	(71, 20741.00, 4, 170),
	(72, 12543.00, 2, 171),
	(73, 12344.00, 2, 172),
	(74, 948.00, 7, 173),
	(75, 9473.00, 6, 174),
	(76, 958.00, 7, 175),
	(77, 28481.00, 5, 176),
	(78, 983.00, 7, 177),
	(79, 10770.00, 6, 178),
	(80, 4430.00, 1, 179),
	(81, 11109.00, 3, 180),
	(82, 977.00, 7, 181),
	(83, 981.00, 7, 182),
	(84, 12918.00, 3, 183),
	(85, 12492.00, 3, 184),
	(86, 11207.00, 3, 185),
	(87, 9151.00, 6, 186),
	(88, 937.00, 7, 187),
	(89, 923.00, 7, 188),
	(90, 34276.00, 5, 189),
	(91, 939.00, 7, 190),
	(92, 11922.00, 2, 191),
	(93, 10659.00, 6, 192),
	(94, 4360.00, 1, 193),
	(95, 26181.00, 4, 194),
	(96, 9049.00, 6, 195),
	(97, 12247.00, 2, 196),
	(98, 11226.00, 3, 197),
	(99, 915.00, 7, 198),
	(100, 10444.00, 6, 199),
	(101, 4372.00, 1, 200);

-- Listage de la structure de la table maconsoenergy. departement
CREATE TABLE IF NOT EXISTS `departement` (
  `id_departement` int(11) NOT NULL AUTO_INCREMENT,
  `num_departement` int(11) DEFAULT NULL,
  `nom_departement` varchar(50) DEFAULT NULL,
  `num_region` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_departement`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Listage des données de la table maconsoenergy.departement : ~101 rows (environ)
DELETE FROM `departement`;
INSERT INTO `departement` (`id_departement`, `num_departement`, `nom_departement`, `num_region`) VALUES
	(1, 1, 'Ain', 84),
	(2, 2, 'Aisne', 32),
	(3, 3, 'Allier', 84),
	(4, 4, 'Alpes-de-Haute-Provence', 93),
	(5, 5, 'Hautes-Alpes', 93),
	(6, 6, 'Alpes-Maritimes', 93),
	(7, 7, 'Ard?che', 84),
	(8, 8, 'Ardennes', 44),
	(9, 9, 'Ari?ge', 76),
	(10, 10, 'Aube', 44),
	(11, 11, 'Aude', 76),
	(12, 12, 'Aveyron', 76),
	(13, 13, 'Bouches-du-Rhone', 93),
	(14, 14, 'Calvados', 28),
	(15, 15, 'Cantal', 84),
	(16, 16, 'Charente', 75),
	(17, 17, 'Charente-Maritime', 75),
	(18, 18, 'Cher', 24),
	(19, 19, 'Corr?ze', 75),
	(20, 21, 'Cote-d\'Or', 27),
	(21, 22, 'Cotes-d\'Armor', 53),
	(22, 23, 'Creuse', 75),
	(23, 24, 'Dordogne', 75),
	(24, 25, 'Doubs', 27),
	(25, 26, 'Drome', 84),
	(26, 27, 'Eure', 28),
	(27, 28, 'Eure-et-Loir', 24),
	(28, 29, 'Finist?re', 53),
	(29, 2, 'Corse-du-Sud', 94),
	(30, 2, 'Haute-Corse', 94),
	(31, 30, 'Gard', 76),
	(32, 31, 'Haute-Garonne', 76),
	(33, 32, 'Gers', 76),
	(34, 33, 'Gironde', 75),
	(35, 34, 'Herault', 76),
	(36, 35, 'Ille-et-Vilaine', 53),
	(37, 36, 'Indre', 24),
	(38, 37, 'Indre-et-Loire', 24),
	(39, 38, 'Is?re', 84),
	(40, 39, 'Jura', 27),
	(41, 40, 'Landes', 75),
	(42, 41, 'Loir-et-Cher', 24),
	(43, 42, 'Loire', 84),
	(44, 43, 'Haute-Loire', 84),
	(45, 44, 'Loire-Atlantique', 52),
	(46, 45, 'Loiret', 24),
	(47, 46, 'Lot', 76),
	(48, 47, 'Lot-et-Garonne', 75),
	(49, 48, 'Loz?re', 76),
	(50, 49, 'Maine-et-Loire', 52),
	(51, 50, 'Manche', 28),
	(52, 51, 'Marne', 44),
	(53, 52, 'Haute-Marne', 44),
	(54, 53, 'Mayenne', 52),
	(55, 54, 'Meurthe-et-Moselle', 44),
	(56, 55, 'Meuse', 44),
	(57, 56, 'Morbihan', 53),
	(58, 57, 'Moselle', 44),
	(59, 58, 'Ni?vre', 27),
	(60, 59, 'Nord', 32),
	(61, 60, 'Oise', 32),
	(62, 61, 'Orne', 28),
	(63, 62, 'Pas-de-Calais', 32),
	(64, 63, 'Puy-de-Dome', 84),
	(65, 64, 'Pyrenees-Atlantiques', 75),
	(66, 65, 'Hautes-Pyrenees', 76),
	(67, 66, 'Pyrenees-Orientales', 76),
	(68, 67, 'Bas-Rhin', 44),
	(69, 68, 'Haut-Rhin', 44),
	(70, 69, 'Rhone', 84),
	(71, 70, 'Haute-Saone', 27),
	(72, 71, 'Saone-et-Loire', 27),
	(73, 72, 'Sarthe', 52),
	(74, 73, 'Savoie', 84),
	(75, 74, 'Haute-Savoie', 84),
	(76, 75, 'Paris', 11),
	(77, 76, 'Seine-Maritime', 28),
	(78, 77, 'Seine-et-Marne', 11),
	(79, 78, 'Yvelines', 11),
	(80, 79, 'Deux-S?vres', 75),
	(81, 80, 'Somme', 32),
	(82, 81, 'Tarn', 76),
	(83, 82, 'Tarn-et-Garonne', 76),
	(84, 83, 'Var', 93),
	(85, 84, 'Vaucluse', 93),
	(86, 85, 'Vendee', 52),
	(87, 86, 'Vienne', 75),
	(88, 87, 'Haute-Vienne', 75),
	(89, 88, 'Vosges', 44),
	(90, 89, 'Yonne', 27),
	(91, 90, 'Territoire de Belfort', 27),
	(92, 91, 'Essonne', 11),
	(93, 92, 'Hauts-de-Seine', 11),
	(94, 93, 'Seine-Saint-Denis', 11),
	(95, 94, 'Val-de-Marne', 11),
	(96, 95, 'Val-d\'Oise', 11),
	(97, 971, 'Guadeloupe', 1),
	(98, 972, 'Martinique', 2),
	(99, 973, 'Guyane', 3),
	(100, 974, 'La Reunion', 4),
	(101, 976, 'Mayotte', 6);

-- Listage de la structure de la table maconsoenergy. foyer
CREATE TABLE IF NOT EXISTS `foyer` (
  `Id_Foyer` int(11) NOT NULL AUTO_INCREMENT,
  `Adresse` varchar(50) DEFAULT NULL,
  `Nom_Foyer` varchar(50) DEFAULT NULL,
  `code_postal` int(11) DEFAULT NULL,
  `ville` varchar(50) DEFAULT NULL,
  `id_departement` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id_Foyer`)
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Listage des données de la table maconsoenergy.foyer : ~102 rows (environ)
DELETE FROM `foyer`;
INSERT INTO `foyer` (`Id_Foyer`, `Adresse`, `Nom_Foyer`, `code_postal`, `ville`, `id_departement`) VALUES
	(1, 'Rue de la Paix', 'Fournier Antoine', 34000, NULL, 35),
	(101, 'Rue de la Paix', 'Fournier Antoine', 34000, NULL, 35),
	(102, 'Rue Saint-Antoine', 'Roux Emilie', 39000, NULL, 40),
	(103, 'Rue des Francs-Bourgeois', 'Girard Julie', 28000, NULL, 27),
	(104, 'Rue du Faubourg Saint-Honoré', 'Roux Marie', 18000, NULL, 18),
	(105, 'Rue du Faubourg Saint-Honoré', 'Durand Isabelle', 69000, NULL, 70),
	(106, 'Rue du Faubourg Saint-Honoré', 'Carpentier Marie', 13000, NULL, 13),
	(107, 'Rue de Rivoli', 'Durand Julie', 72000, NULL, 73),
	(108, 'Rue Saint-Antoine', 'Durand Julie', 41000, NULL, 42),
	(109, 'Rue des Archives', 'Carpentier Sophie', 62000, NULL, 63),
	(110, 'Rue du Faubourg Saint-Honoré', 'Girard Francois', 8000, NULL, 8),
	(111, 'Avenue des Champs-Elysées', 'Roux Jean', 93000, NULL, 94),
	(112, 'Rue des Francs-Bourgeois', 'Fournier Jean', 64000, NULL, 65),
	(113, 'Avenue Montaigne', 'Lefort Sophie', 91000, NULL, 92),
	(114, 'Rue des Francs-Bourgeois', 'Durand Sophie', 29000, NULL, 28),
	(115, 'Rue des Archives', 'Lefebvre Marie', 58000, NULL, 59),
	(116, 'Avenue Montaigne', 'Durand Luc', 66000, NULL, 67),
	(117, 'Rue du Faubourg Saint-Honoré', 'Girard Luc', 71000, NULL, 72),
	(118, 'Rue des Archives', 'Moreau Luc', 43000, NULL, 44),
	(119, 'Rue des Francs-Bourgeois', 'Roux Sophie', 71000, NULL, 72),
	(120, 'Rue de Rivoli', 'Carpentier Pierre', 12000, NULL, 12),
	(121, 'Avenue Montaigne', 'Carpentier Antoine', 74000, NULL, 75),
	(122, 'Boulevard Haussmann', 'Lefebvre Pierre', 25000, NULL, 24),
	(123, 'Rue des Francs-Bourgeois', 'Dubois Jean', 85000, NULL, 86),
	(124, 'Avenue des Champs-Elysées', 'Moreau Emilie', 12000, NULL, 12),
	(125, 'Rue de la Paix', 'Dubois Marie', 11000, NULL, 11),
	(126, 'Rue des Archives', 'Roux Antoine', 36000, NULL, 37),
	(127, 'Place de la Concorde', 'Roux Sophie', 87000, NULL, 88),
	(128, 'Rue des Francs-Bourgeois', 'Carpentier Antoine', 36000, NULL, 37),
	(129, 'Avenue Montaigne', 'Girard Emilie', 11000, NULL, 11),
	(130, 'Avenue des Champs-Elysées', 'Lefort Isabelle', 63000, NULL, 64),
	(131, 'Place de la Concorde', 'Carpentier Julie', 32000, NULL, 33),
	(132, 'Avenue des Champs-Elysées', 'Martin Pierre', 91000, NULL, 92),
	(133, 'Boulevard Haussmann', 'Lefebvre Julie', 43000, NULL, 44),
	(134, 'Avenue des Champs-Elysées', 'Fournier Jean', 19000, NULL, 19),
	(135, 'Rue des Francs-Bourgeois', 'Lefebvre Jean', 82000, NULL, 83),
	(136, 'Avenue des Champs-Elysées', 'Roux Isabelle', 4000, NULL, 4),
	(137, 'Rue des Francs-Bourgeois', 'Durand Sophie', 74000, NULL, 75),
	(138, 'Avenue des Champs-Elysées', 'Durand Antoine', 48000, NULL, 49),
	(139, 'Rue des Francs-Bourgeois', 'Durand Jean', 3000, NULL, 3),
	(140, 'Avenue des Champs-Elysées', 'Lefebvre Marie', 62000, NULL, 63),
	(141, 'Rue de la Paix', 'Lefebvre Jean', 70000, NULL, 71),
	(142, 'Avenue des Champs-Elysées', 'Fournier Isabelle', 34000, NULL, 35),
	(143, 'Avenue des Champs-Elysées', 'Durand Sophie', 83000, NULL, 84),
	(144, 'Rue Saint-Antoine', 'Moreau Julie', 24000, NULL, 23),
	(145, 'Rue de Rivoli', 'Martin Francois', 6000, NULL, 6),
	(146, 'Rue Saint-Antoine', 'Carpentier Luc', 26000, NULL, 25),
	(147, 'Rue de Rivoli', 'Moreau Julie', 73000, NULL, 74),
	(148, 'Rue de la Paix', 'Dubois Sophie', 87000, NULL, 88),
	(149, 'Avenue Montaigne', 'Dubois Marie', 68000, NULL, 69),
	(150, 'Rue des Francs-Bourgeois', 'Moreau Luc', 57000, NULL, 58),
	(151, 'Rue de Rivoli', 'Dubois Jean', 88000, NULL, 89),
	(152, 'Rue des Archives', 'Fournier Isabelle', 40000, NULL, 41),
	(153, 'Rue du Faubourg Saint-Honoré', 'Lefort Antoine', 20000, NULL, NULL),
	(154, 'Rue de Rivoli', 'Roux Jean', 95000, NULL, 96),
	(155, 'Rue de la Paix', 'Durand Julie', 70000, NULL, 71),
	(156, 'Place de la Concorde', 'Moreau Marie', 62000, NULL, 63),
	(157, 'Rue du Faubourg Saint-Honoré', 'Lefort Isabelle', 87000, NULL, 88),
	(158, 'Rue des Francs-Bourgeois', 'Lefort Isabelle', 17000, NULL, 17),
	(159, 'Rue Saint-Antoine', 'Moreau Antoine', 84000, NULL, 85),
	(160, 'Rue des Francs-Bourgeois', 'Durand Jean', 25000, NULL, 24),
	(161, 'Place de la Concorde', 'Lefort Marie', 29000, NULL, 28),
	(162, 'Rue des Francs-Bourgeois', 'Girard Antoine', 54000, NULL, 55),
	(163, 'Rue des Francs-Bourgeois', 'Martin Antoine', 54000, NULL, 55),
	(164, 'Rue de Rivoli', 'Martin Marie', 9000, NULL, 9),
	(165, 'Rue de Rivoli', 'Moreau Marie', 68000, NULL, 69),
	(166, 'Rue des Francs-Bourgeois', 'Girard Francois', 1000, NULL, 1),
	(167, 'Avenue Montaigne', 'Martin Emilie', 40000, NULL, 41),
	(168, 'Rue Saint-Antoine', 'Girard Jean', 25000, NULL, 24),
	(169, 'Boulevard Haussmann', 'Roux Luc', 2000, NULL, 2),
	(170, 'Avenue Montaigne', 'Fournier Antoine', 1000, NULL, 1),
	(171, 'Rue de la Paix', 'Lefebvre Jean', 87000, NULL, 88),
	(172, 'Avenue des Champs-Elysées', 'Roux Isabelle', 25000, NULL, 24),
	(173, 'Place de la Concorde', 'Durand Isabelle', 39000, NULL, 40),
	(174, 'Avenue des Champs-Elysées', 'Moreau Marie', 61000, NULL, 62),
	(175, 'Rue de la Paix', 'Fournier Luc', 36000, NULL, 37),
	(176, 'Rue du Faubourg Saint-Honoré', 'Girard Luc', 18000, NULL, 18),
	(177, 'Avenue des Champs-Elysées', 'Roux Julie', 20000, NULL, NULL),
	(178, 'Rue de la Paix', 'Moreau Jean', 6000, NULL, 6),
	(179, 'Rue des Archives', 'Lefebvre Pierre', 41000, NULL, 42),
	(180, 'Rue de la Paix', 'Lefort Isabelle', 90000, NULL, 91),
	(181, 'Rue de Rivoli', 'Carpentier Emilie', 82000, NULL, 83),
	(182, 'Rue des Archives', 'Fournier Julie', 23000, NULL, 22),
	(183, 'Rue des Francs-Bourgeois', 'Lefebvre Antoine', 38000, NULL, 39),
	(184, 'Boulevard Haussmann', 'Martin Marie', 35000, NULL, 36),
	(185, 'Avenue Montaigne', 'Lefort Julie', 92000, NULL, 93),
	(186, 'Rue des Francs-Bourgeois', 'Durand Julie', 5000, NULL, 5),
	(187, 'Boulevard Haussmann', 'Martin Pierre', 20000, NULL, NULL),
	(188, 'Avenue Montaigne', 'Carpentier Pierre', 51000, NULL, 52),
	(189, 'Rue du Faubourg Saint-Honoré', 'Roux Marie', 15000, NULL, 15),
	(190, 'Rue de la Paix', 'Girard Sophie', 40000, NULL, 41),
	(191, 'Avenue des Champs-Elysées', 'Dubois Francois', 39000, NULL, 40),
	(192, 'Rue du Faubourg Saint-Honoré', 'Fournier Julie', 54000, NULL, 55),
	(193, 'Rue des Archives', 'Durand Luc', 62000, NULL, 63),
	(194, 'Avenue Montaigne', 'Girard Julie', 16000, NULL, 16),
	(195, 'Rue de Rivoli', 'Girard Luc', 55000, NULL, 56),
	(196, 'Avenue Montaigne', 'Martin Pierre', 95000, NULL, 96),
	(197, 'Rue des Francs-Bourgeois', 'Dubois Marie', 49000, NULL, 50),
	(198, 'Avenue des Champs-Elysées', 'Durand Luc', 26000, NULL, 25),
	(199, 'Rue Saint-Antoine', 'Lefebvre Jean', 2000, NULL, 2),
	(200, 'Rue des Archives', 'Durand Antoine', 67000, NULL, 68),
	(201, 'a', 'n', 1, NULL, NULL);

-- Listage de la structure de la table maconsoenergy. login
CREATE TABLE IF NOT EXISTS `login` (
  `id_login` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `Id_Foyer` int(11) NOT NULL,
  PRIMARY KEY (`id_login`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Listage des données de la table maconsoenergy.login : ~0 rows (environ)
DELETE FROM `login`;
INSERT INTO `login` (`id_login`, `login`, `password`, `Id_Foyer`) VALUES
	(1, 'youness', '123+aze', 101);

-- Listage de la structure de la table maconsoenergy. region
CREATE TABLE IF NOT EXISTS `region` (
  `num_region` int(11) NOT NULL,
  `nom_region` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`num_region`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Listage des données de la table maconsoenergy.region : ~18 rows (environ)
DELETE FROM `region`;
INSERT INTO `region` (`num_region`, `nom_region`) VALUES
	(1, 'Guadelouppe'),
	(2, 'Martinique'),
	(3, 'Guyane'),
	(4, 'La Réunion'),
	(6, 'Mayotte'),
	(11, 'Ile-de-France'),
	(24, 'Centre-Val de Loire'),
	(27, 'Bourgogne-Franche-Comté'),
	(28, 'Normandie'),
	(32, 'Hauts-de-France'),
	(44, 'Grand Est'),
	(52, 'Pays de la Loire'),
	(53, 'Bretagne'),
	(75, 'Nouvelle-Aquitaine'),
	(76, 'Occitanie'),
	(84, 'AuvergneRhôneAlpes'),
	(93, 'Provence-Alpes-Côte d\'Azur'),
	(94, 'Corse');

-- Listage de la structure de la table maconsoenergy. type_conso
CREATE TABLE IF NOT EXISTS `type_conso` (
  `Id_Type_Conso` int(11) NOT NULL AUTO_INCREMENT,
  `Nom_conso` varchar(50) DEFAULT NULL,
  `Unite` varchar(25) DEFAULT NULL,
  `equivalence` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id_Type_Conso`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Listage des données de la table maconsoenergy.type_conso : ~7 rows (environ)
DELETE FROM `type_conso`;
INSERT INTO `type_conso` (`Id_Type_Conso`, `Nom_conso`, `Unite`, `equivalence`) VALUES
	(1, 'électricité ', 'KWh', 1),
	(2, 'gaz butane', 'bouteille de gaz', 10),
	(3, 'gaz naturel', 'kWh', 10),
	(4, 'fuel ', 'L', 10),
	(5, 'bois de chauffage', 'stère ', 2100),
	(6, 'granulé de bois', 'sac ', 5),
	(7, 'essenceetdiesel', 'litre', 10);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
