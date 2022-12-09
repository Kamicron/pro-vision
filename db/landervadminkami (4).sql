-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : ven. 09 déc. 2022 à 20:28
-- Version du serveur : 5.7.24
-- Version de PHP : 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `landervadminkami`
--

-- --------------------------------------------------------

--
-- Structure de la table `arme`
--

CREATE TABLE `arme` (
  `idarme` int(11) NOT NULL,
  `pistol` int(11) DEFAULT NULL,
  `pm` int(11) DEFAULT NULL,
  `rifle` int(11) DEFAULT NULL,
  `sniper` int(11) DEFAULT NULL,
  `joueur_idJoueur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `arme`
--

INSERT INTO `arme` (`idarme`, `pistol`, `pm`, `rifle`, `sniper`, `joueur_idJoueur`) VALUES
(1, 10, 9, 7, 10, 1),
(2, 2, 5, 9, 11, 2),
(3, 7, 4, 8, 9, 3),
(4, 11, 2, 9, 1, 4),
(5, 5, 12, 3, 10, 5),
(6, 12, 5, 3, 3, 6),
(7, 9, 3, 8, 3, 7),
(8, 3, 8, 3, 6, 8),
(9, 9, 2, 5, 10, 9),
(10, 9, 2, 4, 1, 10),
(11, 7, 4, 13, 15, 11),
(12, 4, 1, 0, 3, 12),
(13, 2, 7, 6, 4, 13),
(14, 0, 6, 7, 7, 14),
(15, 9, 2, 2, 4, 15),
(16, 9, 3, 1, 10, 16),
(17, 5, 5, 6, 7, 17),
(18, 2, 4, 7, 6, 18),
(19, 5, 9, 2, 3, 19),
(20, 2, 8, 2, 3, 20),
(21, 1, 4, 7, 2, 21),
(22, 9, 18, 4, 4, 22),
(23, 6, 8, 1, 4, 23),
(24, 1, 11, 9, 2, 24),
(25, 3, 5, 3, 15, 25),
(26, 4, 11, 5, 9, 26),
(27, 8, 3, 11, 8, 27),
(28, 3, 9, 3, 8, 28),
(29, 10, 2, 8, 6, 29),
(30, 5, 6, 8, 3, 30),
(31, 7, 6, 9, 4, 31),
(32, 4, 9, 6, 4, 32),
(33, 9, 1, 1, 2, 33),
(34, 4, 9, 7, 7, 34),
(35, 10, 11, 1, 4, 35),
(36, 1, 3, 11, 9, 36),
(37, 8, 5, 3, 7, 37),
(38, 13, 13, 16, 14, 38),
(39, 5, 7, 5, 3, 39),
(40, 5, 9, 13, 8, 40),
(41, 8, 2, 3, 8, 41),
(42, 15, 9, 10, 9, 42),
(43, 10, 14, 12, 18, 43),
(44, 9, 6, 10, 1, 44),
(45, 4, 9, 2, 3, 45),
(46, 11, 9, 8, 2, 46),
(47, 0, 5, 6, 8, 47),
(48, 8, 1, 1, 4, 48),
(49, 11, 4, 6, 6, 49),
(50, 3, 6, 12, 8, 50),
(51, 1, 5, 10, 8, 51),
(52, 13, 19, 14, 19, 52),
(53, 4, 7, 10, 8, 53),
(54, 10, 8, 4, 7, 54),
(55, 7, 4, 5, 8, 55),
(56, 2, 6, 6, 2, 56),
(57, 9, 10, 12, 10, 57),
(58, 7, 5, 1, 11, 58),
(59, 5, 9, 3, 7, 59),
(60, 7, 4, 2, 8, 60),
(61, 10, 5, 2, 11, 61);

-- --------------------------------------------------------

--
-- Structure de la table `avatar`
--

CREATE TABLE `avatar` (
  `idavatar` int(11) NOT NULL,
  `face` int(11) NOT NULL,
  `eyes` int(11) NOT NULL,
  `nose` int(11) NOT NULL,
  `sourcil` int(11) NOT NULL,
  `mouth` int(11) NOT NULL,
  `hair` int(11) NOT NULL,
  `joueur_idjoueur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `avatar`
--

INSERT INTO `avatar` (`idavatar`, `face`, `eyes`, `nose`, `sourcil`, `mouth`, `hair`, `joueur_idjoueur`) VALUES
(1, 4, 3, 43, 4, 4, 3, 1),
(2, 3, 2, 34, 4, 3, 3, 2),
(3, 3, 2, 33, 1, 2, 5, 3),
(4, 2, 1, 22, 3, 5, 8, 4),
(5, 3, 1, 34, 4, 3, 7, 5),
(6, 4, 1, 42, 2, 5, 4, 6),
(7, 1, 1, 14, 4, 4, 1, 7),
(8, 4, 2, 42, 4, 4, 5, 8),
(9, 3, 3, 33, 1, 1, 1, 9),
(10, 2, 1, 23, 4, 3, 1, 10),
(11, 3, 1, 34, 3, 5, 3, 11),
(12, 1, 3, 14, 4, 2, 5, 12),
(13, 2, 4, 21, 2, 2, 1, 13),
(14, 2, 4, 24, 3, 5, 7, 14),
(15, 2, 2, 22, 3, 4, 4, 15),
(16, 2, 3, 21, 4, 2, 8, 16),
(17, 2, 1, 22, 1, 5, 9, 17),
(18, 4, 4, 43, 4, 1, 3, 18),
(19, 1, 4, 14, 3, 4, 3, 19),
(20, 2, 4, 23, 4, 3, 4, 20),
(21, 2, 4, 23, 4, 2, 8, 21),
(22, 4, 2, 44, 4, 3, 6, 22),
(23, 3, 1, 31, 1, 2, 1, 23),
(24, 2, 3, 21, 3, 1, 5, 24),
(25, 4, 2, 44, 2, 2, 4, 25),
(26, 1, 1, 13, 4, 1, 5, 26),
(27, 4, 4, 42, 3, 1, 1, 27),
(28, 2, 1, 23, 2, 1, 1, 28),
(29, 4, 3, 43, 1, 2, 9, 29),
(30, 3, 3, 34, 3, 2, 3, 30),
(31, 1, 3, 12, 2, 1, 5, 31),
(32, 1, 1, 11, 4, 4, 8, 32),
(33, 3, 4, 33, 1, 1, 6, 33),
(34, 3, 4, 34, 1, 1, 8, 34),
(35, 4, 2, 44, 3, 4, 7, 35),
(36, 3, 4, 34, 4, 3, 8, 36),
(37, 4, 1, 42, 1, 5, 5, 37),
(38, 3, 1, 32, 1, 3, 1, 38),
(39, 2, 2, 21, 3, 1, 3, 39),
(40, 1, 3, 11, 4, 4, 8, 40),
(41, 4, 2, 42, 2, 1, 8, 41),
(42, 2, 2, 23, 4, 2, 9, 42),
(43, 3, 1, 31, 2, 5, 4, 43),
(44, 1, 4, 12, 3, 5, 1, 44),
(45, 2, 3, 22, 2, 1, 2, 45),
(46, 4, 1, 42, 1, 5, 2, 46),
(47, 3, 4, 32, 4, 5, 9, 47),
(48, 1, 2, 14, 3, 2, 5, 48),
(49, 1, 3, 11, 1, 2, 1, 49),
(50, 1, 4, 11, 4, 3, 9, 50),
(51, 4, 4, 44, 4, 1, 1, 51),
(52, 4, 2, 41, 4, 5, 9, 52),
(53, 4, 3, 43, 3, 2, 1, 53),
(54, 2, 2, 22, 4, 2, 2, 54),
(55, 2, 2, 21, 4, 2, 5, 55),
(56, 2, 2, 23, 3, 3, 5, 56),
(57, 1, 1, 12, 4, 3, 4, 57),
(58, 3, 1, 31, 1, 2, 2, 58),
(59, 1, 3, 12, 2, 3, 3, 59),
(60, 4, 1, 43, 1, 3, 8, 60),
(61, 1, 3, 11, 1, 2, 9, 61);

-- --------------------------------------------------------

--
-- Structure de la table `equipe`
--

CREATE TABLE `equipe` (
  `idEquipe` int(11) NOT NULL,
  `nom_equipe` varchar(45) DEFAULT NULL,
  `logo_path` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `equipe`
--

INSERT INTO `equipe` (`idEquipe`, `nom_equipe`, `logo_path`) VALUES
(1, 'NC', 'NULL'),
(2, 'Vitality', 'img/logo_team/vitality.png');

-- --------------------------------------------------------

--
-- Structure de la table `ingredients`
--

CREATE TABLE `ingredients` (
  `idIngredients` int(11) NOT NULL,
  `name_ingredients` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ingredients_has_list`
--

CREATE TABLE `ingredients_has_list` (
  `ingredients_idIngredients` int(11) NOT NULL,
  `List_idList` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ingredients_has_meal`
--

CREATE TABLE `ingredients_has_meal` (
  `ingredients_idIngredients` int(11) NOT NULL,
  `Meal_idMeal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `joueur`
--

CREATE TABLE `joueur` (
  `idJoueur` int(11) NOT NULL,
  `prenom` varchar(45) DEFAULT NULL,
  `nom_joueur` varchar(45) DEFAULT NULL,
  `surnom` varchar(45) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `nationalite_idnationalite` int(11) NOT NULL,
  `equipe_idEquipe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `joueur`
--

INSERT INTO `joueur` (`idJoueur`, `prenom`, `nom_joueur`, `surnom`, `age`, `nationalite_idnationalite`, `equipe_idEquipe`) VALUES
(1, 'Amro', 'Gijsen', 'Joueur85858', 28, 16, 1),
(2, 'Donald', 'Morrison', 'Joueur88208', 18, 15, 1),
(3, 'Gabriel', 'Dupuis', 'Joueur80274', 23, 1, 1),
(4, 'Frederick', 'Harrison', 'Joueur22908', 24, 7, 1),
(5, 'Eelis', 'Kangas', 'Joueur14442', 32, 10, 1),
(6, 'Norman', 'Simmons', 'Joueur57004', 29, 12, 1),
(7, 'Tom', 'Clark', 'Joueur29801', 24, 15, 1),
(8, 'Dragomir', 'Golodnyuk', 'Joueur97401', 31, 5, 1),
(9, 'Magnus', 'Larsen', 'Joueur40725', 17, 2, 1),
(10, 'Abdulkerim', 'Van Erkelens', 'Joueur88535', 28, 16, 1),
(11, 'Fatih', 'Korol', 'Joueur27801', 30, 18, 1),
(12, 'Elias', 'Petersen', 'Joueur60783', 16, 2, 1),
(13, 'Rodoslav', 'Sologub', 'Joueur79137', 18, 5, 1),
(14, 'Tommy', 'Sanders', 'Joueur24320', 15, 12, 1),
(15, 'Heinz-Günther', 'Ramm', 'Joueur28111', 15, 6, 1),
(16, 'Benjamin', 'Thomsen', 'Joueur17827', 30, 2, 1),
(17, 'Marco', 'Colón', 'Joueur38488', 26, 17, 1),
(18, 'Pedro', 'Ibáñez', 'Joueur93464', 31, 3, 1),
(19, 'Milorad', 'Sokolović', 'Joueur99094', 32, 14, 1),
(20, 'Orestes', 'Martins', 'Joueur60642', 15, 4, 1),
(21, 'Davut', 'Beşok', 'Joueur24023', 17, 18, 1),
(22, 'Nicholas', 'Stanley', 'Joueur68888', 22, 12, 1),
(23, 'Alf', 'Schulte', 'Joueur16926', 20, 6, 1),
(24, 'Ramiro', 'Gankema', 'Joueur93145', 20, 11, 1),
(25, 'Tobias', 'Larsen', 'Joueur48174', 22, 2, 1),
(26, 'Milton', 'Nelson', 'Joueur42109', 15, 7, 1),
(27, 'Svarg', 'Fedorin', 'Joueur82153', 22, 5, 1),
(28, 'Dragoje', 'Abramović', 'Joueur89978', 17, 14, 1),
(29, 'Mikkel', 'Sørensen', 'Joueur98821', 20, 11, 1),
(30, 'Arnold', 'Mckinney', 'Joueur40728', 22, 12, 1),
(31, 'Bernard', 'Evenstad', 'Joueur66754', 24, 13, 1),
(32, 'Andre', 'Fleury', 'Joueur6240', 22, 9, 1),
(33, 'Niclas', 'Kåsa', 'Joueur23936', 19, 13, 1),
(34, 'António', 'Martinez', 'Joueur62109', 31, 9, 1),
(35, 'William', 'Miller', 'Joueur55613', 16, 8, 1),
(36, 'Bertram', 'Christiansen', 'Joueur57436', 27, 2, 1),
(37, 'Blagoje', 'Bjelica', 'Joueur90189', 32, 14, 1),
(38, 'Okan', 'Ayverdi', 'Joueur82163', 28, 18, 1),
(39, 'Rolf', 'Myhra', 'Joueur88670', 19, 13, 1),
(40, 'Eemeli', 'Tuominen', 'Joueur65369', 29, 10, 1),
(41, 'Lester', 'Flores', 'Joueur2690', 19, 12, 1),
(42, 'Johnni', 'Dean', 'Joueur64490', 21, 15, 1),
(43, 'Gert', 'Coenraad', 'Joueur91422', 27, 16, 1),
(44, 'Sário', 'Viana', 'Joueur44413', 29, 4, 1),
(45, 'Carl', 'Jones', 'Joueur60636', 18, 7, 1),
(46, 'Aurélien', 'Bonnet', 'Joueur2710', 26, 1, 1),
(47, 'Allen', 'Scott', 'Joueur41506', 30, 15, 1),
(48, 'Bertrand', 'Petit', 'Joueur65392', 15, 9, 1),
(49, 'Mátio', 'Oliveira', 'Joueur33491', 26, 4, 1),
(50, 'Xavier', 'Portillo', 'Joueur84968', 27, 17, 1),
(51, 'Andrés', 'Romero', 'Joueur45157', 18, 3, 1),
(52, 'Ahmet', 'Demirbaş', 'Joueur2571', 26, 18, 1),
(53, 'Oscar', 'Larsen', 'Joueur87859', 20, 2, 1),
(54, 'Aaron', 'Berry', 'Joueur75952', 24, 15, 1),
(55, 'Dylan', 'Martin', 'Joueur42675', 27, 8, 1),
(56, 'Liam', 'Garcia', 'Joueur48463', 28, 1, 1),
(57, 'Kent', 'Edwards', 'Joueur34656', 30, 15, 1),
(58, 'Troy', 'Richards', 'Joueur77164', 22, 12, 1),
(59, 'Tobias', 'Jensen', 'Joueur18249', 22, 2, 1),
(60, 'Kirilo', 'Kulikovskiy', 'Joueur66033', 20, 5, 1),
(61, 'Onni', 'Lehtinen', 'Joueur55859', 19, 10, 1);

-- --------------------------------------------------------

--
-- Structure de la table `list`
--

CREATE TABLE `list` (
  `idList` int(11) NOT NULL,
  `name_liste` varchar(45) DEFAULT NULL,
  `users_idusers` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `meal`
--

CREATE TABLE `meal` (
  `idMeal` int(11) NOT NULL,
  `name_meal` varchar(45) DEFAULT NULL,
  `alternative` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `nationalite`
--

CREATE TABLE `nationalite` (
  `idnationalite` int(11) NOT NULL,
  `nom_nationalite` varchar(45) DEFAULT NULL,
  `iso` varchar(5) NOT NULL,
  `logo_pays` varchar(64) NOT NULL,
  `alt_logo_pays` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `nationalite`
--

INSERT INTO `nationalite` (`idnationalite`, `nom_nationalite`, `iso`, `logo_pays`, `alt_logo_pays`) VALUES
(1, 'France', 'FR', 'France.png', 'Logo de la France'),
(2, 'Danemark', 'DK', 'Denmark.png', 'Logo du danemark'),
(3, 'Espagne', 'ES', 'Spain.png', 'Logo de l\'Espagne'),
(4, 'Brésil', 'BR', 'Brazil.png', 'Logo du Brésil'),
(5, 'Ukraine', 'UA', 'Ukraine.png', 'Logo de la Chine'),
(6, 'Allemagne', 'DE', 'Germany.png', 'Logo de l\'Allemagne'),
(7, 'Autriche', 'AU', 'Austria.png', 'Drapeau de l\'Autriche'),
(8, 'Canada', 'CA', 'Canada.png', 'Drapeau du Canada'),
(9, 'Suisse', 'CH', 'Switzerland.png', 'Drapeau de la Suisse'),
(10, 'Finland', 'FI', 'Finland.png', 'Drapeau de la Finland'),
(11, 'Anglais', 'BG', 'United-Kingdom.png', 'Drapeau de la Grande Bretagne'),
(12, 'Irelande', 'IE', 'Ireland.png', 'Drapeau de l\'Irlande'),
(13, 'Norvège', 'NO', 'Norway.png', 'Drapeau de la Norvège'),
(14, 'Russe', 'RS', 'Russia.png', 'Drapeau de la Russie'),
(15, 'USA', 'US', 'United-States-of-America.png', 'Drapeau des États Unis d\'Amérique'),
(16, 'Hollande', 'NL', 'Netherlands.png', 'Drapeau de la Hollande'),
(17, 'Mexique', 'MX', 'Mexico.png', 'Drapeau du Mexique'),
(18, 'Turquie', 'TR', 'Turkey.png', 'Drapeau de la Turquie');

-- --------------------------------------------------------

--
-- Structure de la table `niveaujoueur`
--

CREATE TABLE `niveaujoueur` (
  `idniveaujoueur` int(11) NOT NULL,
  `current` int(11) NOT NULL,
  `potentiel` int(11) NOT NULL,
  `joueur_idjoueur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `niveaujoueur`
--

INSERT INTO `niveaujoueur` (`idniveaujoueur`, `current`, `potentiel`, `joueur_idjoueur`) VALUES
(1, 74, 80, 1),
(2, 68, 84, 2),
(3, 78, 80, 3),
(4, 66, 80, 4),
(5, 79, 90, 5),
(6, 80, 81, 6),
(7, 78, 80, 7),
(8, 82, 145, 8),
(9, 80, 80, 9),
(10, 65, 80, 10),
(11, 100, 207, 11),
(12, 64, 176, 12),
(13, 65, 80, 13),
(14, 63, 80, 14),
(15, 74, 80, 15),
(16, 64, 80, 16),
(17, 71, 80, 17),
(18, 63, 80, 18),
(19, 66, 145, 19),
(20, 67, 90, 20),
(21, 74, 119, 21),
(22, 100, 145, 22),
(23, 77, 80, 23),
(24, 77, 80, 24),
(25, 86, 90, 25),
(26, 73, 101, 26),
(27, 66, 84, 27),
(28, 61, 80, 28),
(29, 67, 80, 29),
(30, 75, 81, 30),
(31, 60, 80, 31),
(32, 85, 101, 32),
(33, 68, 80, 33),
(34, 68, 90, 34),
(35, 73, 80, 35),
(36, 66, 80, 36),
(37, 88, 239, 37),
(38, 131, 176, 38),
(39, 67, 101, 39),
(40, 97, 145, 40),
(41, 63, 80, 41),
(42, 135, 239, 42),
(43, 183, 230, 43),
(44, 68, 81, 44),
(45, 88, 207, 45),
(46, 74, 90, 46),
(47, 60, 80, 47),
(48, 72, 176, 48),
(49, 73, 80, 49),
(50, 82, 90, 50),
(51, 67, 145, 51),
(52, 181, 207, 52),
(53, 68, 80, 53),
(54, 71, 81, 54),
(55, 105, 119, 55),
(56, 71, 80, 56),
(57, 101, 230, 57),
(58, 77, 80, 58),
(59, 72, 80, 59),
(60, 71, 80, 60),
(61, 72, 119, 61);

-- --------------------------------------------------------

--
-- Structure de la table `nom`
--

CREATE TABLE `nom` (
  `idnom` int(11) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `nom_idnationalite` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `nom`
--

INSERT INTO `nom` (`idnom`, `nom`, `nom_idnationalite`) VALUES
(1, 'Martin', 1),
(2, 'Bernard', 1),
(3, 'Dubois', 1),
(4, 'Thomas', 1),
(5, 'Robert', 1),
(6, 'Richard', 1),
(7, 'Durand ', 1),
(8, 'Petit', 1),
(9, 'Moreau', 1),
(10, 'Leroy ', 1),
(12, 'Mathieu', 1),
(25, 'Nielsen', 2),
(26, 'Jensen', 2),
(27, 'Hansen', 2),
(28, 'Andersen', 2),
(29, 'Pedersen', 2),
(30, 'Christensen', 2),
(31, 'Sørensen', 2),
(32, 'Rasmussen', 2),
(33, 'Jørgensen', 2),
(34, 'Petersen', 2),
(35, 'Madsen', 2),
(36, 'Kristensen', 2),
(49, 'Garcia', 3),
(50, 'Gonzalez', 3),
(51, 'Lopez', 3),
(52, 'Sanchez', 3),
(53, 'Gomez', 3),
(54, 'Jimenez', 3),
(55, 'Hernandez', 3),
(56, 'Moreno', 3),
(57, 'Alonso', 3),
(58, 'Navarro', 3),
(59, 'Dominguez', 3),
(60, 'Vasquez', 3),
(61, 'Müller', 6),
(62, 'Schneider', 6),
(63, 'Weber', 6),
(64, 'Wagner', 6),
(65, 'Schulz', 6),
(66, 'Koch', 6),
(67, 'Bauer', 6),
(68, 'Schrödner', 6),
(69, 'Schwarz', 6),
(70, 'Zimmermann', 6),
(71, 'Lange', 6),
(72, 'Krüger', 6),
(73, 'Da silva', 4),
(74, 'Pereira', 4),
(75, 'Silva', 4),
(76, 'Fereira', 4),
(77, 'De souza', 4),
(78, 'Santos', 4),
(79, 'Ribeiro', 4),
(80, 'Martins', 4),
(81, 'Barbosa', 4),
(82, 'Vieira', 4),
(83, 'Fernandes', 4),
(84, 'Costa', 4),
(85, 'Wang', 5),
(86, 'Zhang', 5),
(87, 'Chen', 5),
(88, 'Huang', 5),
(89, 'Xu', 5),
(90, 'Zhou', 5),
(91, 'Zhu', 5),
(92, 'Ma', 5),
(93, 'Yu', 5),
(94, 'Lin', 5),
(95, 'Guo', 5),
(96, 'Tang', 5);

-- --------------------------------------------------------

--
-- Structure de la table `personnalite`
--

CREATE TABLE `personnalite` (
  `idpersonnalite` int(11) NOT NULL,
  `reserve` int(11) DEFAULT NULL,
  `aggressivite` int(11) DEFAULT NULL,
  `serieux` int(11) DEFAULT NULL,
  `joueur_idJoueur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `personnalite`
--

INSERT INTO `personnalite` (`idpersonnalite`, `reserve`, `aggressivite`, `serieux`, `joueur_idJoueur`) VALUES
(1, 4, 2, 4, 1),
(2, 6, 6, 2, 2),
(3, 6, 7, 3, 3),
(4, 3, 4, 9, 4),
(5, 3, 4, 7, 5),
(6, 4, 4, 7, 6),
(7, 7, 11, 5, 7),
(8, 6, 10, 8, 8),
(9, 6, 11, 3, 9),
(10, 8, 5, 10, 10),
(11, 11, 4, 3, 11),
(12, 12, 4, 1, 12),
(13, 1, 8, 6, 13),
(14, 8, 5, 1, 14),
(15, 2, 8, 1, 15),
(16, 5, 2, 4, 16),
(17, 2, 1, 9, 17),
(18, 1, 3, 2, 18),
(19, 3, 5, 3, 19),
(20, 4, 4, 1, 20),
(21, 3, 2, 4, 21),
(22, 3, 9, 6, 22),
(23, 2, 11, 8, 23),
(24, 4, 11, 7, 24),
(25, 2, 2, 4, 25),
(26, 5, 10, 4, 26),
(27, 7, 8, 2, 27),
(28, 6, 10, 2, 28),
(29, 1, 1, 3, 29),
(30, 9, 1, 4, 30),
(31, 10, 2, 7, 31),
(32, 12, 5, 2, 32),
(33, 7, 5, 9, 33),
(34, 3, 3, 6, 34),
(35, 9, 3, 11, 35),
(36, 11, 1, 4, 36),
(37, 6, 4, 2, 37),
(38, 13, 7, 6, 38),
(39, 5, 4, 2, 39),
(40, 6, 3, 8, 40),
(41, 5, 1, 5, 41),
(42, 2, 15, 14, 42),
(43, 20, 12, 5, 43),
(44, 5, 5, 5, 44),
(45, 9, 12, 11, 45),
(46, 2, 5, 2, 46),
(47, 3, 2, 6, 47),
(48, 9, 9, 2, 48),
(49, 7, 4, 2, 49),
(50, 5, 3, 3, 50),
(51, 2, 9, 1, 51),
(52, 15, 17, 10, 52),
(53, 9, 6, 3, 53),
(54, 6, 11, 4, 54),
(55, 6, 7, 13, 55),
(56, 9, 2, 7, 56),
(57, 2, 12, 6, 57),
(58, 2, 9, 9, 58),
(59, 9, 2, 2, 59),
(60, 10, 6, 3, 60),
(61, 1, 9, 3, 61);

-- --------------------------------------------------------

--
-- Structure de la table `prenom`
--

CREATE TABLE `prenom` (
  `idprenom` int(11) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `prenom_idnationalite` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `prenom`
--

INSERT INTO `prenom` (`idprenom`, `prenom`, `prenom_idnationalite`) VALUES
(1, 'Alexandre', 1),
(2, 'Mathieu', 1),
(3, 'Ludovic', 1),
(4, 'Pierre', 1),
(5, 'Nicolas', 1),
(6, 'Franck', 1),
(7, 'Kenny', 1),
(8, 'Charles', 1),
(9, 'Charlie', 1),
(10, 'Quentin', 1),
(11, 'Florient', 1),
(12, 'Julien', 1),
(13, 'Olaf', 2),
(14, 'Lars', 2),
(15, 'Magnus', 2),
(16, 'Soren', 2),
(17, 'Alfred', 2),
(18, 'Elias', 2),
(19, 'Jorgen', 2),
(20, 'Felix', 2),
(21, 'Tobias', 2),
(22, 'Simon', 2),
(23, 'Lukas', 2),
(24, 'Jonas', 2),
(49, 'Eric', 3),
(50, 'José', 3),
(51, 'Francisco', 3),
(52, 'Antonio', 3),
(53, 'Pablo', 3),
(54, 'Álvaro', 3),
(55, 'Daniel', 3),
(56, 'Hugo', 3),
(57, 'Xosé', 3),
(58, 'Iker', 3),
(59, 'Mikel', 3),
(60, 'Markel', 3),
(61, 'Peter', 6),
(62, 'Wolfgang', 6),
(63, 'Klaus', 6),
(64, 'Manfred', 6),
(65, 'Heinz', 6),
(66, 'Gerhard', 6),
(67, 'Frank', 6),
(68, 'Horst', 6),
(69, 'Bernd', 6),
(70, 'Karl', 6),
(71, 'Christian', 6),
(72, 'Heinrich', 6),
(73, 'Joao', 4),
(74, 'Luiz', 4),
(75, 'Paulo', 4),
(76, 'Manoel', 4),
(77, 'Lucas', 4),
(78, 'Rafael', 4),
(79, 'Daniel', 4),
(80, 'Marcelo', 4),
(81, 'Eduardo', 4),
(82, 'Rodrigo', 4),
(83, 'Jorge', 4),
(84, 'Andre', 4),
(85, 'Wei', 5),
(86, 'Li', 5),
(87, 'Hui', 5),
(88, 'Hong', 5),
(89, 'Min', 5),
(90, 'Bin', 5),
(91, 'Lin', 5),
(92, 'Ming', 5),
(93, 'Qing', 5),
(94, 'Chao', 5),
(95, 'Jin', 5),
(96, 'Yue', 5);

-- --------------------------------------------------------

--
-- Structure de la table `saison`
--

CREATE TABLE `saison` (
  `idsaison` int(11) NOT NULL,
  `nom_saison` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `saison`
--

INSERT INTO `saison` (`idsaison`, `nom_saison`) VALUES
(1, 'total'),
(2021, '2021'),
(2022, '2022');

-- --------------------------------------------------------

--
-- Structure de la table `stats_ig`
--

CREATE TABLE `stats_ig` (
  `idstat_ig` int(11) NOT NULL,
  `kill_joueur` varchar(45) DEFAULT NULL,
  `assist` varchar(45) DEFAULT NULL,
  `mort` varchar(45) DEFAULT NULL,
  `saison_idsaison` int(11) NOT NULL,
  `joueur_idJoueur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `stats_ig`
--

INSERT INTO `stats_ig` (`idstat_ig`, `kill_joueur`, `assist`, `mort`, `saison_idsaison`, `joueur_idJoueur`) VALUES
(1, '0', '0', '0', 1, 1),
(2, '0', '0', '0', 1, 2),
(3, '0', '0', '0', 1, 3),
(4, '0', '0', '0', 1, 4),
(5, '0', '0', '0', 1, 5),
(6, '0', '0', '0', 1, 6),
(7, '0', '0', '0', 1, 7),
(8, '0', '0', '0', 1, 8),
(9, '0', '0', '0', 1, 9),
(10, '0', '0', '0', 1, 10),
(11, '0', '0', '0', 1, 11),
(12, '0', '0', '0', 1, 12),
(13, '0', '0', '0', 1, 13),
(14, '0', '0', '0', 1, 14),
(15, '0', '0', '0', 1, 15),
(16, '0', '0', '0', 1, 16),
(17, '0', '0', '0', 1, 17),
(18, '0', '0', '0', 1, 18),
(19, '0', '0', '0', 1, 19),
(20, '0', '0', '0', 1, 20),
(21, '0', '0', '0', 1, 21),
(22, '0', '0', '0', 1, 22),
(23, '0', '0', '0', 1, 23),
(24, '0', '0', '0', 1, 24),
(25, '0', '0', '0', 1, 25),
(26, '0', '0', '0', 1, 26),
(27, '0', '0', '0', 1, 27),
(28, '0', '0', '0', 1, 28),
(29, '0', '0', '0', 1, 29),
(30, '0', '0', '0', 1, 30),
(31, '0', '0', '0', 1, 31),
(32, '0', '0', '0', 1, 32),
(33, '0', '0', '0', 1, 33),
(34, '0', '0', '0', 1, 34),
(35, '0', '0', '0', 1, 35),
(36, '0', '0', '0', 1, 36),
(37, '0', '0', '0', 1, 37),
(38, '0', '0', '0', 1, 38),
(39, '0', '0', '0', 1, 39),
(40, '0', '0', '0', 1, 40),
(41, '0', '0', '0', 1, 41),
(42, '0', '0', '0', 1, 42),
(43, '0', '0', '0', 1, 43),
(44, '0', '0', '0', 1, 44),
(45, '0', '0', '0', 1, 45),
(46, '0', '0', '0', 1, 46),
(47, '0', '0', '0', 1, 47),
(48, '0', '0', '0', 1, 48),
(49, '0', '0', '0', 1, 49),
(50, '0', '0', '0', 1, 50),
(51, '0', '0', '0', 1, 51),
(52, '0', '0', '0', 1, 52),
(53, '0', '0', '0', 1, 53),
(54, '0', '0', '0', 1, 54),
(55, '0', '0', '0', 1, 55),
(56, '0', '0', '0', 1, 56),
(57, '0', '0', '0', 1, 57),
(58, '0', '0', '0', 1, 58),
(59, '0', '0', '0', 1, 59),
(60, '0', '0', '0', 1, 60),
(61, '0', '0', '0', 1, 61);

-- --------------------------------------------------------

--
-- Structure de la table `stat_joueur`
--

CREATE TABLE `stat_joueur` (
  `idstat` int(11) NOT NULL,
  `aim` int(11) DEFAULT NULL,
  `reflex` int(11) DEFAULT NULL,
  `concentration` int(11) DEFAULT NULL,
  `leader` int(11) DEFAULT NULL,
  `soutient` varchar(45) DEFAULT NULL,
  `resistance` int(11) DEFAULT NULL,
  `joueur_idJoueur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `stat_joueur`
--

INSERT INTO `stat_joueur` (`idstat`, `aim`, `reflex`, `concentration`, `leader`, `soutient`, `resistance`, `joueur_idJoueur`) VALUES
(1, 5, 2, 6, 9, '5', 1, 1),
(2, 2, 3, 5, 3, '11', 3, 2),
(3, 5, 11, 1, 5, '5', 7, 3),
(4, 2, 10, 7, 1, '4', 3, 4),
(5, 2, 11, 2, 12, '6', 2, 5),
(6, 6, 12, 6, 6, '2', 10, 6),
(7, 4, 8, 4, 5, '6', 5, 7),
(8, 6, 11, 1, 2, '11', 7, 8),
(9, 2, 9, 8, 2, '6', 7, 9),
(10, 7, 2, 3, 2, '6', 6, 10),
(11, 6, 7, 4, 9, '11', 6, 11),
(12, 2, 10, 10, 7, '10', 0, 12),
(13, 9, 4, 6, 7, '3', 2, 13),
(14, 17, 0, 1, 9, '0', 2, 14),
(15, 9, 6, 13, 6, '9', 3, 15),
(16, 5, 4, 1, 10, '10', 0, 16),
(17, 11, 5, 9, 6, '4', 1, 17),
(18, 8, 4, 6, 3, '10', 7, 18),
(19, 4, 8, 8, 2, '5', 9, 19),
(20, 4, 17, 9, 5, '7', 1, 20),
(21, 6, 7, 20, 8, '5', 5, 21),
(22, 4, 13, 5, 5, '8', 12, 22),
(23, 4, 3, 4, 11, '8', 7, 23),
(24, 8, 8, 1, 3, '6', 6, 24),
(25, 10, 2, 12, 5, '3', 20, 25),
(26, 2, 2, 6, 3, '4', 8, 26),
(27, 2, 4, 5, 6, '1', 1, 27),
(28, 6, 1, 5, 2, '2', 4, 28),
(29, 18, 4, 2, 3, '8', 1, 29),
(30, 11, 3, 8, 1, '6', 10, 30),
(31, 1, 9, 3, 0, '0', 2, 31),
(32, 10, 10, 2, 9, '8', 4, 32),
(33, 3, 7, 10, 7, '2', 5, 33),
(34, 1, 9, 5, 1, '5', 8, 34),
(35, 5, 4, 1, 2, '8', 4, 35),
(36, 8, 1, 4, 8, '1', 4, 36),
(37, 12, 4, 8, 3, '6', 20, 37),
(38, 7, 9, 9, 6, '10', 8, 38),
(39, 2, 5, 4, 9, '8', 8, 39),
(40, 9, 8, 11, 12, '1', 4, 40),
(41, 6, 3, 3, 8, '9', 2, 41),
(42, 14, 1, 10, 6, '14', 16, 42),
(43, 16, 11, 15, 19, '16', 15, 43),
(44, 2, 5, 2, 3, '11', 4, 44),
(45, 8, 3, 2, 10, '9', 6, 45),
(46, 6, 8, 5, 4, '10', 2, 46),
(47, 17, 9, 1, 1, '0', 2, 47),
(48, 5, 6, 2, 10, '8', 7, 48),
(49, 11, 3, 9, 7, '1', 2, 49),
(50, 10, 6, 7, 6, '4', 9, 50),
(51, 5, 2, 7, 4, '6', 7, 51),
(52, 15, 4, 12, 19, '10', 14, 52),
(53, 2, 6, 2, 2, '1', 8, 53),
(54, 3, 5, 9, 2, '1', 1, 54),
(55, 14, 7, 14, 12, '7', 1, 55),
(56, 1, 10, 1, 9, '10', 6, 56),
(57, 5, 2, 12, 3, '7', 11, 57),
(58, 10, 4, 1, 10, '4', 4, 58),
(59, 11, 8, 2, 1, '2', 11, 59),
(60, 2, 9, 10, 4, '2', 4, 60),
(61, 1, 1, 6, 8, '6', 9, 61);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id_users` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `confirmation_token` varchar(60) DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id_users`, `username`, `email`, `password`, `confirmation_token`, `confirmed_at`) VALUES
(1, 'Kamicron', 'Kamicron@gmail.com', '$2y$10$EIdHkRrLeypNdpjOOlgPpObFWMGEygY0mbSbQRe8vGSBwuCgSoGJW', NULL, '2022-12-09 14:48:36');

-- --------------------------------------------------------

--
-- Structure de la table `users_has_user_role`
--

CREATE TABLE `users_has_user_role` (
  `idUsers` int(11) NOT NULL,
  `idUser_role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `users_has_user_role`
--

INSERT INTO `users_has_user_role` (`idUsers`, `idUser_role`) VALUES
(1, 1),
(1, 2);

-- --------------------------------------------------------

--
-- Structure de la table `users_role`
--

CREATE TABLE `users_role` (
  `idUsers_role` int(11) NOT NULL,
  `libelle` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `users_role`
--

INSERT INTO `users_role` (`idUsers_role`, `libelle`) VALUES
(1, 'Admin'),
(2, 'Membre');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `arme`
--
ALTER TABLE `arme`
  ADD PRIMARY KEY (`idarme`),
  ADD KEY `fk_arme_joueur1_idx` (`joueur_idJoueur`);

--
-- Index pour la table `avatar`
--
ALTER TABLE `avatar`
  ADD PRIMARY KEY (`idavatar`),
  ADD UNIQUE KEY `joueur_idjoueur` (`joueur_idjoueur`);

--
-- Index pour la table `equipe`
--
ALTER TABLE `equipe`
  ADD PRIMARY KEY (`idEquipe`);

--
-- Index pour la table `ingredients`
--
ALTER TABLE `ingredients`
  ADD PRIMARY KEY (`idIngredients`);

--
-- Index pour la table `ingredients_has_list`
--
ALTER TABLE `ingredients_has_list`
  ADD PRIMARY KEY (`ingredients_idIngredients`,`List_idList`),
  ADD KEY `fk_ingredients_has_List_List1_idx` (`List_idList`),
  ADD KEY `fk_ingredients_has_List_ingredients1_idx` (`ingredients_idIngredients`);

--
-- Index pour la table `ingredients_has_meal`
--
ALTER TABLE `ingredients_has_meal`
  ADD PRIMARY KEY (`ingredients_idIngredients`,`Meal_idMeal`),
  ADD KEY `fk_ingredients_has_Meal_Meal1_idx` (`Meal_idMeal`),
  ADD KEY `fk_ingredients_has_Meal_ingredients1_idx` (`ingredients_idIngredients`);

--
-- Index pour la table `joueur`
--
ALTER TABLE `joueur`
  ADD PRIMARY KEY (`idJoueur`),
  ADD KEY `fk_Joueur_nationalite_idx` (`nationalite_idnationalite`),
  ADD KEY `fk_joueur_equipe1_idx` (`equipe_idEquipe`);

--
-- Index pour la table `list`
--
ALTER TABLE `list`
  ADD PRIMARY KEY (`idList`),
  ADD KEY `fk_Liste_users_idx` (`users_idusers`);

--
-- Index pour la table `meal`
--
ALTER TABLE `meal`
  ADD PRIMARY KEY (`idMeal`);

--
-- Index pour la table `nationalite`
--
ALTER TABLE `nationalite`
  ADD PRIMARY KEY (`idnationalite`);

--
-- Index pour la table `niveaujoueur`
--
ALTER TABLE `niveaujoueur`
  ADD PRIMARY KEY (`idniveaujoueur`),
  ADD KEY `joueur_idjoueur` (`joueur_idjoueur`);

--
-- Index pour la table `nom`
--
ALTER TABLE `nom`
  ADD PRIMARY KEY (`idnom`),
  ADD KEY `prenom_idnationalite` (`nom_idnationalite`);

--
-- Index pour la table `personnalite`
--
ALTER TABLE `personnalite`
  ADD PRIMARY KEY (`idpersonnalite`,`joueur_idJoueur`),
  ADD KEY `fk_personnalite_joueur1_idx` (`joueur_idJoueur`);

--
-- Index pour la table `prenom`
--
ALTER TABLE `prenom`
  ADD PRIMARY KEY (`idprenom`),
  ADD KEY `prenom_idnationalite` (`prenom_idnationalite`);

--
-- Index pour la table `saison`
--
ALTER TABLE `saison`
  ADD PRIMARY KEY (`idsaison`);

--
-- Index pour la table `stats_ig`
--
ALTER TABLE `stats_ig`
  ADD PRIMARY KEY (`idstat_ig`,`saison_idsaison`,`joueur_idJoueur`),
  ADD KEY `fk_stat_ig_saison1_idx` (`saison_idsaison`),
  ADD KEY `fk_stat_ig_joueur1_idx` (`joueur_idJoueur`);

--
-- Index pour la table `stat_joueur`
--
ALTER TABLE `stat_joueur`
  ADD PRIMARY KEY (`idstat`,`joueur_idJoueur`),
  ADD KEY `fk_stat_joueur_joueur1_idx` (`joueur_idJoueur`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_users`),
  ADD UNIQUE KEY `confirmation_token` (`confirmation_token`),
  ADD UNIQUE KEY `confirmed_at` (`confirmed_at`);

--
-- Index pour la table `users_has_user_role`
--
ALTER TABLE `users_has_user_role`
  ADD KEY `idUsers` (`idUsers`),
  ADD KEY `idUser_role` (`idUser_role`);

--
-- Index pour la table `users_role`
--
ALTER TABLE `users_role`
  ADD PRIMARY KEY (`idUsers_role`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `arme`
--
ALTER TABLE `arme`
  MODIFY `idarme` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT pour la table `avatar`
--
ALTER TABLE `avatar`
  MODIFY `idavatar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT pour la table `equipe`
--
ALTER TABLE `equipe`
  MODIFY `idEquipe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `ingredients`
--
ALTER TABLE `ingredients`
  MODIFY `idIngredients` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `joueur`
--
ALTER TABLE `joueur`
  MODIFY `idJoueur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT pour la table `list`
--
ALTER TABLE `list`
  MODIFY `idList` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `meal`
--
ALTER TABLE `meal`
  MODIFY `idMeal` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `nationalite`
--
ALTER TABLE `nationalite`
  MODIFY `idnationalite` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `niveaujoueur`
--
ALTER TABLE `niveaujoueur`
  MODIFY `idniveaujoueur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT pour la table `nom`
--
ALTER TABLE `nom`
  MODIFY `idnom` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT pour la table `personnalite`
--
ALTER TABLE `personnalite`
  MODIFY `idpersonnalite` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT pour la table `prenom`
--
ALTER TABLE `prenom`
  MODIFY `idprenom` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT pour la table `saison`
--
ALTER TABLE `saison`
  MODIFY `idsaison` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2023;

--
-- AUTO_INCREMENT pour la table `stats_ig`
--
ALTER TABLE `stats_ig`
  MODIFY `idstat_ig` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT pour la table `stat_joueur`
--
ALTER TABLE `stat_joueur`
  MODIFY `idstat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `users_role`
--
ALTER TABLE `users_role`
  MODIFY `idUsers_role` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `arme`
--
ALTER TABLE `arme`
  ADD CONSTRAINT `fk_arme_joueur1` FOREIGN KEY (`joueur_idJoueur`) REFERENCES `joueur` (`idJoueur`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `avatar`
--
ALTER TABLE `avatar`
  ADD CONSTRAINT `avatar_ibfk_1` FOREIGN KEY (`joueur_idjoueur`) REFERENCES `joueur` (`idJoueur`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `ingredients_has_list`
--
ALTER TABLE `ingredients_has_list`
  ADD CONSTRAINT `fk_ingredients_has_List_List1` FOREIGN KEY (`List_idList`) REFERENCES `list` (`idList`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ingredients_has_List_ingredients1` FOREIGN KEY (`ingredients_idIngredients`) REFERENCES `ingredients` (`idIngredients`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `ingredients_has_meal`
--
ALTER TABLE `ingredients_has_meal`
  ADD CONSTRAINT `fk_ingredients_has_Meal_Meal1` FOREIGN KEY (`Meal_idMeal`) REFERENCES `meal` (`idMeal`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ingredients_has_Meal_ingredients1` FOREIGN KEY (`ingredients_idIngredients`) REFERENCES `ingredients` (`idIngredients`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `joueur`
--
ALTER TABLE `joueur`
  ADD CONSTRAINT `fk_Joueur_nationalite` FOREIGN KEY (`nationalite_idnationalite`) REFERENCES `nationalite` (`idnationalite`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_joueur_equipe1` FOREIGN KEY (`equipe_idEquipe`) REFERENCES `equipe` (`idEquipe`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `list`
--
ALTER TABLE `list`
  ADD CONSTRAINT `fk_Liste_users` FOREIGN KEY (`users_idusers`) REFERENCES `users` (`id_users`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `niveaujoueur`
--
ALTER TABLE `niveaujoueur`
  ADD CONSTRAINT `niveaujoueur_ibfk_1` FOREIGN KEY (`joueur_idjoueur`) REFERENCES `joueur` (`idJoueur`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `personnalite`
--
ALTER TABLE `personnalite`
  ADD CONSTRAINT `fk_personnalite_joueur1` FOREIGN KEY (`joueur_idJoueur`) REFERENCES `joueur` (`idJoueur`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `prenom`
--
ALTER TABLE `prenom`
  ADD CONSTRAINT `prenom_ibfk_1` FOREIGN KEY (`prenom_idnationalite`) REFERENCES `nationalite` (`idnationalite`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `stats_ig`
--
ALTER TABLE `stats_ig`
  ADD CONSTRAINT `fk_stat_ig_joueur1` FOREIGN KEY (`joueur_idJoueur`) REFERENCES `joueur` (`idJoueur`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_stat_ig_saison1` FOREIGN KEY (`saison_idsaison`) REFERENCES `saison` (`idsaison`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `stat_joueur`
--
ALTER TABLE `stat_joueur`
  ADD CONSTRAINT `fk_stat_joueur_joueur1` FOREIGN KEY (`joueur_idJoueur`) REFERENCES `joueur` (`idJoueur`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `users_has_user_role`
--
ALTER TABLE `users_has_user_role`
  ADD CONSTRAINT `users_has_user_role_ibfk_1` FOREIGN KEY (`idUsers`) REFERENCES `users` (`id_users`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users_has_user_role_ibfk_2` FOREIGN KEY (`idUser_role`) REFERENCES `users_role` (`idUsers_role`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
