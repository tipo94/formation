-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Mar 16 Mai 2017 à 17:03
-- Version du serveur: 5.5.54-0ubuntu0.14.04.1
-- Version de PHP: 5.5.9-1ubuntu4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `cupoftea`
--

-- --------------------------------------------------------

--
-- Structure de la table `tea`
--

CREATE TABLE IF NOT EXISTS `tea` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `quantity` float NOT NULL,
  `salePrice` float NOT NULL,
  `buyPrice` float NOT NULL,
  `description` text NOT NULL,
  `summary` varchar(100) NOT NULL,
  `weight` float NOT NULL,
  `photo` varchar(100) NOT NULL,
  `ref` smallint(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Contenu de la table `tea`
--

INSERT INTO `tea` (`id`, `name`, `category`, `quantity`, `salePrice`, `buyPrice`, `description`, `summary`, `weight`, `photo`, `ref`) VALUES
(1, 'Blue of London', 'Thé noir', 100, 9, 4, 'Blue of London est un Earl Grey d''exception qui associe un des meilleurs thés noirs au monde, le Yunnan, et une bergamote fraîche et délicate. Un mélange remarquable d''équilibre et de finesse.\r\n\r\nLe Earl Grey est un grand classique anglais, depuis que Charles Grey, comte (earl en anglais) de Falodon et Ministre des Affaires étrangères du Royaume britannique au milieu du XIX ème siècle, reçut d''un mandarin chinois une vieille recette consistant à aromatiser son thé avec de la bergamote.', 'Thé noir à la bergamote', 100, 'product3_big.jpg', 3742),
(2, 'Thé des lords', 'Thé noir', 2000, 8.2, 5, 'Thé xoxoxoox', 'Thé noir xoxoxo', 100, 'product6_big.jpg', 235),
(3, 'Thé du hammam', 'Thé vert', 200, 8.5, 2, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Thé vert à la rose', 100, 'product1_big.jpg', 2685),
(4, 'Vive les fetes', 'Oolong', 5880, 11.1, 2, 'Les Oolong, que les chinois appellent thés bleu-vert en référence à la couleur de leurs feuilles infusées, sont des thés semi-oxydés : leur oxydation n''a pas été menée à son terme. Spécialités de Chine et de Taïwan, il en existe une grande variété, en fonction de la région de culture, de l''espèce du théier ou encore du processus de fabrication.', 'Oolong xoxoxo', 100, 'product8_big.jpg', 1459),
(5, 'Thé des songes blancs', 'Thé blanc', 581, 12, 5, 'Le thé blanc est une spécialité de la province chinoise du Fujian. De toutes les familles de thé, c''est celle dont la feuille est la moins transformée par rapport à son état naturel. Non oxydé, le thé blanc ne subit que deux opérations : un flétrissage et une dessiccation. Il existe deux grands types de thés blancs : les Aiguilles d''Argent et les Bai Mu Dan.', 'Thé blanc oxxoxoox', 100, 'product11_big.jpg', 1485),
(6, 'Rooibos à la verveine', 'Rooibos', 45963, 7, 2.5, 'Le Rooibos (appelé thé rouge bien qu''il ne s''agisse pas de thé) est une plante poussant uniquement en Afrique du Sud et qui ne contient pas du tout de théine. Son infusion donne une boisson très agréable, ronde et légèrement sucrée. Riche en antioxydants, faible en tanins et dénué de théine, le Rooibos peut être dégusté en journée comme en soirée.', 'Verveine', 100, 'product14_big.jpg', 450),
(7, 'Thé des vahinés', 'Thé noir', 122, 9.4, 2.5, 'Lorem ipsum', 'Thé à la vanille', 100, 'product7_big.jpg', 12),
(8, 'Vive le thé !', 'Thé vert', 156749, 6.8, 2.5, 'Lorza vogdcbapfcbgapehf', 'Thé aux agrumes', 100, 'product4_big.jpg', 14),
(9, 'Thé des alizés', 'Thé vert', 15485, 9.3, 5, 'bebnpgvhz vaifdapf vzaeoufaàief', 'Thé vert vanille citron', 100, 'product5_big.jpg', 456),
(10, 'Fleur d''oranger Oolong', 'Oolong', 598, 10.9, 2, 'Les Oolong, que les chinois appellent thés bleu-vert en référence à la couleur de leurs feuilles infusées, sont des thés semi-oxydés : leur oxydation n''a pas été menée à son terme. Spécialités de Chine et de Taïwan, il en existe une grande variété, en fonction de la région de culture, de l''espèce du théier ou encore du processus de fabrication.', 'Oolong à la fleur d''oranger', 100, 'product9_big.jpg', 589),
(11, 'Oolong 7 agrumes', 'Oolong', 4882, 13.2, 5.6, 'Les Oolong, que les chinois appellent thés bleu-vert en référence à la couleur de leurs feuilles infusées, sont des thés semi-oxydés : leur oxydation n''a pas été menée à son terme. Spécialités de Chine et de Taïwan, il en existe une grande variété, en fonction de la région de culture, de l''espèce du théier ou encore du processus de fabrication.', 'Oolong aux agrumes', 100, 'product10_big.jpg', 895),
(12, 'Bai mu dan', 'Thé blanc', 48751, 9.5, 1.2, 'Le thé blanc est une spécialité de la province chinoise du Fujian. De toutes les familles de thé, c''est celle dont la feuille est la moins transformée par rapport à son état naturel. Non oxydé, le thé blanc ne subit que deux opérations : un flétrissage et une dessiccation. Il existe deux grands types de thés blancs : les Aiguilles d''Argent et les Bai Mu Dan.', 'Thé ciouvvi', 100, 'product12_big.jpg', 598),
(13, 'Aguilles d''argent', 'Thé blanc', 14585, 47.2, 4.5, 'Le thé blanc est une spécialité de la province chinoise du Fujian. De toutes les familles de thé, c''est celle dont la feuille est la moins transformée par rapport à son état naturel. Non oxydé, le thé blanc ne subit que deux opérations : un flétrissage et une dessiccation. Il existe deux grands types de thés blancs : les Aiguilles d''Argent et les Bai Mu Dan.', 'Grand cru', 100, 'product13_big.jpg', 5981),
(14, 'Spicy Passion', 'Rooibos', 9841340, 9, 1, 'Le Rooibos (appelé thé rouge bien qu''il ne s''agisse pas de thé) est une plante poussant uniquement en Afrique du Sud et qui ne contient pas du tout de théine. Son infusion donne une boisson très agréable, ronde et légèrement sucrée. Riche en antioxydants, faible en tanins et dénué de théine, le Rooibos peut être dégusté en journée comme en soirée.', 'Thé rouge', 100, 'product15_big.jpg', 895),
(15, 'Rooibos des amants', 'Rooibos', 5881, 8.2, 1.2, 'Le Rooibos (appelé thé rouge bien qu''il ne s''agisse pas de thé) est une plante poussant uniquement en Afrique du Sud et qui ne contient pas du tout de théine. Son infusion donne une boisson très agréable, ronde et légèrement sucrée. Riche en antioxydants, faible en tanins et dénué de théine, le Rooibos peut être dégusté en journée comme en soirée.', 'Thé rouge aux épices', 100, 'product16_big.jpg', 598);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
