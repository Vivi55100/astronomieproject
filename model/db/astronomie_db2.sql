-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : lun. 29 avr. 2024 à 09:39
-- Version du serveur : 8.0.36-0ubuntu0.22.04.1
-- Version de PHP : 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `astronomie_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `astre`
--

CREATE TABLE `astre` (
  `id_astre` int NOT NULL,
  `astre_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `size` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `distance_to_earth` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_of_discovery` datetime DEFAULT NULL,
  `name_of_discoverer` datetime DEFAULT NULL,
  `astre_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_type` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `comment`
--

CREATE TABLE `comment` (
  `id_comment` int NOT NULL,
  `comment_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_comment` datetime NOT NULL,
  `number_like_comment` int NOT NULL,
  `id_user` int NOT NULL,
  `id_astre` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `difficulty`
--

CREATE TABLE `difficulty` (
  `id_difficulty` int NOT NULL,
  `difficulty_name` varchar(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `difficulty`
--

INSERT INTO `difficulty` (`id_difficulty`, `difficulty_name`) VALUES
(1, 'Facile'),
(2, 'Moyen'),
(3, 'Difficile');

-- --------------------------------------------------------

--
-- Structure de la table `proposition_astre`
--

CREATE TABLE `proposition_astre` (
  `id_proposition_astre` int NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_validation_start` datetime NOT NULL,
  `date_validation_end` datetime NOT NULL,
  `score_validation` int NOT NULL,
  `id_astre` int NOT NULL,
  `id_user` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `question`
--

CREATE TABLE `question` (
  `id_question` int NOT NULL,
  `question_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_difficulty` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `question`
--

INSERT INTO `question` (`id_question`, `question_content`, `id_difficulty`) VALUES
(1, 'Quelle est la planète la plus proche du Soleil ?', 1),
(2, 'Quelle est la planète la plus grande du système solaire ?', 1),
(3, 'Quel est le nom de notre galaxie ?', 1),
(4, 'Combien de planètes composent notre système solaire ?', 1),
(5, 'Quel est le nom de l\'étoile autour de laquelle la Terre orbite ?', 1),
(6, 'Quel est le satellite principal naturel de la Terre ?', 1),
(7, 'Quelle est la planète connue pour ses anneaux ?', 1),
(8, 'Quel est le nom de la première personne à avoir marché sur la Lune ?', 1),
(9, 'Quelle est la planète connue comme la \"planète rouge\" ?', 1),
(10, 'Quel est le plus grand satellite de Jupiter ?', 1),
(11, 'Quelle est la planète la plus éloignée du Soleil ?', 1),
(12, 'Quel est le nom de la comète la plus célèbre qui revient tout les 76 ans près de la Terre ?', 1),
(13, 'Quel sont les noms des satellites naturels de Mars ?', 1),
(14, 'Combien d\'Hommes ont marché sur la Lune ?', 1),
(15, 'Quel astre s\'est vu retrograder par l\'UAI en 2006 ?', 1),
(16, 'Quel est le nom du premier homme à aller dans l\'espace ?', 1),
(17, 'Quel est le nom de la 3e planète orbitant le soleil ?', 1),
(18, 'Quels sont les noms des 2 galaxies satellites les plus connus de la Voie Lactée ?', 1),
(19, 'Quel est le nom du premier satellite artificiel de la Terre ?', 1),
(20, 'Quel est le nom de l\'étoile polaire ?', 1),
(21, 'Quelle est la distance moyenne entre la Terre et le Soleil ?', 2),
(22, 'Qu\'est-ce qu\'une supernova ?', 2),
(23, 'Qu\'est-ce qu\'une année lumière et quelle est sa distance approximative en kilomètres ?', 2),
(24, 'Qu\'est-ce qu\'un trou noir ?', 2),
(25, 'Quelle est la théorie actuelle sur l\'origine de l\'Univers ?', 2),
(26, 'Quelles sont les 4 forces fondamentales ?', 2),
(27, 'Qu\'est-ce qu\'une planète naine ?', 2),
(28, 'Qu\'est-ce qu\'une météorite ?', 2),
(29, 'Qu\'est-ce qu\'une étoile géante rouge ?', 2),
(30, 'Qu\'est-ce que la ceinture de Kuiper ?', 2),
(31, 'Qu\'est-ce qu\'une galaxie spirale ?', 2),
(32, 'Quelle est la théorie actuelle sur la formation de la Lune ?', 2),
(33, 'Qu\'est-ce qu\'un pulsar ?', 2),
(34, 'Quelle est la différence entre une planète tellurique et une planète gazeuse ?', 2),
(35, 'Qu\'est-ce qu\'une exoplanète ?', 2),
(36, 'Qu\'est-ce que la ceinture d\'astéroïdes ?', 2),
(37, 'Qu\'est-ce que la magnétosphère d\'une planète ?', 2),
(38, 'Quelle est la différence entre un astéroïde et une météorite ?', 2),
(39, 'Qu\'est-ce que le phénomène des aurores polaires et comment se produisent-elles ?', 2),
(40, 'Qu\'est-ce que la période de révolution d\'une planète ?', 2);

-- --------------------------------------------------------

--
-- Structure de la table `quiz`
--

CREATE TABLE `quiz` (
  `id_quiz` int NOT NULL,
  `quiz_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `quiz`
--

INSERT INTO `quiz` (`id_quiz`, `quiz_name`) VALUES
(1, 'Quiz de niveau 1 Facile'),
(2, 'Quiz de niveau 2 Moyen'),
(3, 'Quiz de niveau 3 Difficile');

-- --------------------------------------------------------

--
-- Structure de la table `response`
--

CREATE TABLE `response` (
  `id_response` int NOT NULL,
  `response_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `is_correct` tinyint NOT NULL,
  `id_question` int NOT NULL,
  `id_quiz` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `response`
--

INSERT INTO `response` (`id_response`, `response_content`, `is_correct`, `id_question`, `id_quiz`) VALUES
(1, 'Mercure', 1, 1, 1),
(2, 'Jupiter', 0, 1, 1),
(3, 'Venus', 0, 1, 1),
(4, 'Ceres', 0, 1, 1),
(5, 'Jupiter', 1, 2, 1),
(6, 'Andromède', 0, 2, 1),
(7, 'La lune', 0, 2, 1),
(8, 'Saturne', 0, 2, 1),
(9, 'La voie lactée', 1, 3, 1),
(10, 'Proxima', 0, 3, 1),
(11, 'Vega', 0, 3, 1),
(12, 'Andomède', 0, 3, 1),
(13, 'Huit', 1, 4, 1),
(14, 'Neuf', 0, 4, 1),
(15, 'Sept', 0, 4, 1),
(16, 'Douze', 0, 4, 1),
(17, 'Sol', 1, 5, 1),
(18, 'Proxima du centaure', 0, 5, 1),
(19, 'Sirus', 0, 5, 1),
(20, 'Arcturus', 0, 5, 1),
(21, 'Terre 1', 1, 6, 1),
(22, 'Sol 3', 0, 6, 1),
(23, 'Ganymède', 0, 6, 1),
(24, 'Charon', 0, 6, 1),
(25, 'Saturne', 1, 7, 1),
(26, 'Uranus', 0, 7, 1),
(27, 'Neptune', 0, 7, 1),
(28, 'Vesta', 0, 7, 1),
(29, 'Neil Armstrong', 1, 8, 1),
(30, 'Eugene Cernan', 0, 8, 1),
(31, 'Buzz Aldrin', 0, 8, 1),
(32, 'Aya Nakamura', 0, 8, 1),
(33, 'Mars', 1, 9, 1),
(34, 'La Terre', 0, 9, 1),
(35, 'Neptune', 0, 9, 1),
(36, 'Orion', 0, 9, 1),
(37, 'Ganymède', 1, 10, 1),
(38, 'Europe', 0, 10, 1),
(39, 'Charon', 0, 10, 1),
(40, 'La lune', 0, 10, 1),
(41, 'Neptune', 1, 11, 1),
(42, 'Pluton', 0, 11, 1),
(43, 'Mercure', 0, 11, 1),
(44, 'Mars', 0, 11, 1),
(45, ' La comète de Halley', 1, 12, 1),
(46, 'La ceinture d\'asteroïde', 0, 12, 1),
(47, 'Sirus', 0, 12, 1),
(48, 'Le nébuleuse du crabe', 0, 12, 1),
(49, 'Phobos et Deimos', 1, 13, 1),
(50, 'Hades et Promethée', 0, 13, 1),
(51, 'Narsil et Anduril', 0, 13, 1),
(52, 'Scooby et Samy', 0, 13, 1),
(53, '12', 1, 14, 1),
(54, '2', 0, 14, 1),
(55, '152', 0, 14, 1),
(56, '0 parce que la Terre est plate et personne n\'a réellement dépassé le dôme', 0, 14, 1),
(57, 'Pluton', 1, 15, 1),
(58, 'Ceres', 0, 15, 1),
(59, 'Les anneaux de Saturne', 0, 15, 1),
(60, 'Jupiter', 0, 15, 1),
(61, 'Youri Gagarine', 1, 16, 1),
(62, 'Neil Armstrong', 0, 16, 1),
(63, 'Thomas Pesquet', 0, 16, 1),
(64, 'Jackie Kennedy', 0, 16, 1),
(65, 'La Terre', 1, 17, 1),
(66, 'Pluton', 0, 17, 1),
(67, 'Mars', 0, 17, 1),
(68, 'Saturne', 0, 17, 1),
(69, 'Le grand et le petit nuage de Magellan', 1, 18, 1),
(70, 'Andromède', 0, 18, 1),
(71, 'Galaxie du cigare', 0, 18, 1),
(72, 'Galaxie du Sombrero', 0, 18, 1),
(73, 'Spoutnik 1', 1, 19, 1),
(74, 'Elvis 3', 0, 19, 1),
(75, 'Apollo 8', 0, 19, 1),
(76, 'Fallout 76', 0, 19, 1),
(77, 'Polaris', 1, 20, 1),
(78, 'Stellaris', 0, 20, 1),
(79, 'Apis', 0, 20, 1),
(80, 'Doris', 0, 20, 1),
(81, 'Environ 150 millions de kilomètres.', 1, 21, 2),
(82, 'Environ 5 milliards de kilomètres.', 0, 21, 2),
(83, 'Environ 1500 millions de kilomètres.', 0, 21, 2),
(84, 'Environ 15 années-lumière', 0, 21, 2),
(85, 'Une explosion cataclysmique d\'une étoile en fin de vie', 1, 22, 2),
(86, 'Un saut sur fornite', 0, 22, 2),
(87, 'Une danse traditionnelle pratiquée par les étoiles lorsqu\'elles sont particulièrement excitées.', 0, 22, 2),
(88, 'Une supernova est une comète géante qui traverse le cosmos, illuminant le ciel nocturne de sa traînée lumineuse et laissant derrière elle un sillage de poussière stellaire.', 0, 22, 2),
(89, 'Une année lumière est la distance que parcourt la lumière en une année. Cela équivaut à environ 9,46 billions de kilomètres.', 1, 23, 2),
(90, 'Une année-lumière est la distance que parcourt la Terre autour du Soleil en une année, ce qui correspond à environ 950 millions de kilomètres.', 0, 23, 2),
(91, 'Une année-lumière est en réalité une unité de mesure de la luminosité des étoiles, indiquant la quantité de lumière qu\'une étoile émet en une année. Sa distance approximative en kilomètres est d\'environ 95,746 milliards de kilomètres.', 0, 23, 2),
(92, '42', 0, 23, 2),
(93, 'Un trou noir est une région de l\'espace où la gravité est si intense que rien, pas même la lumière, ne peut s\'en échapper.', 1, 24, 2),
(94, 'Un trou noir est un aspirateur cosmique géant qui absorbe tout ce qui se trouve à proximité, y compris la lumière, et le convertit en énergie pour alimenter les étoiles voisines.', 0, 24, 2),
(95, 'Un trou noir est une légende urbaine dans l\'univers', 0, 24, 2),
(96, 'Un trou noir est simplement une illusion d\'optique causée par la distorsion de la lumière lorsqu\'elle traverse des champs magnétiques intenses dans l\'espace', 0, 24, 2),
(97, 'La théorie du Big Bang, qui postule que l\'Univers a commencé à partir d\'un état de très haute densité et de température il y a environ 13,8 milliards d\'années.', 1, 25, 2),
(98, 'Selon la théorie de la \"Pancréation\", l\'Univers a émergé d\'une collision cosmique entre deux dimensions parallèles, créant ainsi un équilibre subtil entre la matière et l\'antimatière.', 0, 25, 2),
(99, 'La théorie \"Renaissance Cosmique\" suggère que l\'Univers est le résultat cyclique de l\'expansion et de la contraction éternelles d\'un cosmos infini, chaque \"Big Bang\" étant suivi d\'un \"Big Crunch\" ultérieur.', 0, 25, 2),
(100, 'La \"Théorie de la Fracturation Cosmique\" avance que l\'Univers a été formé par la fragmentation d\'un super-univers primitif, chaque fragment donnant naissance à une dimension différente de l\'Univers observable.', 0, 25, 2),
(101, 'Les 4 forces fondamentales sont : l\'interaction nucleaire forte, l\'interaction nucleaire faible, la force électromagnétique et la force gravitationnelle', 1, 26, 2),
(102, 'Les 4 forces fondamentales sont : la force temporelle, la force universelle, la force tellurique,  la force galactique', 0, 26, 2),
(103, 'Les 4 forces fondamentales sont : l\'interaction éthérique, la force celeste, l\'interaction physico-quantique, la force dynamique', 0, 26, 2),
(104, 'Les 4 forces fondamentales sont : la force harmonique, la force psionique, la force d\'ubiquité, la force fractale', 0, 26, 2),
(105, 'Un objet céleste qui orbite autour du Soleil et qui a une masse suffisante pour être presque sphérique, mais qui n\'a pas dégagé son orbite des autres objets voisins.', 1, 27, 2),
(106, 'Une planète naine n\'est rien de plus qu\'un amas de poussière, et de glace, orbitant une autre planète.', 0, 27, 2),
(107, 'Une planète naine est une planète en tout point semblable aux autres.', 0, 27, 2),
(108, 'Une planète naine est un corps céleste de faible densité, mais d\'une gravité extrême.', 0, 27, 2),
(109, 'Un fragment de roche ou de métal provenant de l\'espace qui survit à son passage à travers l\'atmosphère terrestre et atteint la surface de la Terre.', 1, 28, 2),
(110, 'Une météorite est un objet qui frôle la planète lors de sa course.', 0, 28, 2),
(111, 'Une météorite est une comète qui a laissé derrière elle une immense traînée de glace.', 0, 28, 2),
(112, 'Une météorite est une lune artificielle orbitant le soleil, croisant occasionnellement le chemin que prend la Terre.', 0, 28, 2),
(113, 'Une étoile en fin de vie, de masse moyenne à élevée, qui a épuisé son stock d\'hydrogène dans son noyau et qui a commencé à fusionner de l\'hélium.', 1, 29, 2),
(114, 'Une planète de couleur rouge semblable à la planète Mars.', 0, 29, 2),
(115, 'Une étoile géante rouge est une étoile dont la couleur rouge provient de sa capacité à absorber sélectivement la lumière bleue dans son atmosphère, lui donnant ainsi une teinte rougeâtre distincte.', 0, 29, 2),
(116, 'Une étoile géante rouge est une étoile massive ayant atteint la moitié de sa vie, caractérisée par sa propension à émettre des éruptions solaires spectaculaires qui la font briller intensément en rouge dans le ciel nocturne.', 0, 29, 2),
(117, 'Une région du système solaire au-delà de l\'orbite de Neptune, contenant de nombreux petits corps glacés, y compris la planète naine Pluton.', 1, 30, 2),
(118, 'Une ceinture de planètes errante hors du système solaire.', 0, 30, 2),
(119, 'Un amas de galaxies en formation.', 0, 30, 2),
(120, 'Une nébuleuse qui d\'un point de vue de le Terre est plate telle une ceinture, d\'où la raison de cette appellation.', 0, 30, 2),
(121, 'Une galaxie avec des bras spiraux distincts contenant des étoiles, du gaz et de la poussière, comme la Voie lactée.', 1, 31, 2),
(122, 'Une galaxie sans bras spiraux, contenant uniquement de la poussière.', 0, 31, 2),
(123, 'Une galaxie spirale est une sorte de phénomène météorologique se produisant dans les régions galactiques, caractérisée par des vents stellaires en spirale qui soufflent à travers l\'espace, créant des formations nuageuses en forme de spirale.', 0, 31, 2),
(124, 'Une galaxie spirale est une organisation sociale extraterrestre où les habitants vivent en communauté dans des habitats en forme de spirale, se déplaçant le long des bras spiraux de leur galaxie d\'origine.', 0, 31, 2),
(125, 'La théorie de l\'impact géant, selon laquelle la Lune s\'est formée à la suite de la collision entre la Terre primitive et un objet de la taille de Mars appelée Théïa.', 1, 32, 2),
(126, 'La théorie de la \"Récolte Céleste\" suggère que la Lune est le résultat de la capture accidentelle d\'un gigantesque morceau de fromage lunaire par la gravité terrestre lors d\'un banquet céleste organisé par les dieux.', 0, 32, 2),
(127, 'Selon la théorie de la \"Résonance Cosmique\", la Lune est le produit d\'une collision cataclysmique entre la Terre et une comète géante, dont les débris se sont agglomérés pour former notre satellite naturel.', 0, 32, 2),
(128, 'Selon la théorie du « Nuage de Troie », la Lune s\'est formée à partir de débris laissés par une collision entre la Terre et un nuage de matière solide, semblable à celui qui aurait pu coexister avec le système solaire primitif.', 0, 32, 2),
(129, 'Une étoile à neutrons en rotation rapide émettant des faisceaux de rayonnement électromagnétique à intervalles réguliers.', 1, 33, 2),
(130, 'Un pulsar est une sorte de phénomène atmosphérique se produisant dans les régions les plus éloignées de l\'espace interstellaire, où des vents stellaires intenses génèrent des pulsations lumineuses rythmiques dans l\'atmosphère des étoiles.', 0, 33, 2),
(131, 'Selon la théorie de la \"Marée Galactique\", un pulsar est une zone de forte gravité située au centre des galaxies, où les marées gravitationnelles déforment l\'espace-temps et créent des ondes de choc périodiques.', 0, 33, 2),
(132, 'Un pulsar est une forme exotique de vie extraterrestre, hypothétiquement capable de communiquer avec d\'autres espèces à travers l\'émission de signaux lumineux pulsés, comme un moyen de navigation interstellaire, le premier pulsar découvert se nomme LGM2.', 0, 33, 2),
(133, 'Une planète tellurique est principalement constituée de roche et de métal, tandis qu\'une planète gazeuse est principalement composée d\'hydrogène et d\'hélium sous forme gazeuse.', 1, 34, 2),
(134, 'Il n\'y a qu\'une différence minime entre les planètes tellurique et les planètes gazeuses, cette différence se caractérise par la densité de gaz présent dans leurs atmosphères respective.', 0, 34, 2),
(135, 'La différence fondamentale entre une planète tellurique et une planète gazeuse réside dans leur taille. Les planètes telluriques sont généralement plus petites que les planètes gazeuses, ce qui les rend plus denses et plus solides.', 0, 34, 2),
(136, 'La principale différence entre une planète tellurique et une planète gazeuse est leur position dans le système solaire. Les planètes telluriques se trouvent plus près du Soleil, tandis que les planètes gazeuses se trouvent plus loin.', 0, 34, 2),
(137, 'Une planète qui orbite autour d\'une étoile autre que le Soleil.', 1, 35, 2),
(138, 'Une planète qui n\'a pas encore été découverte et qui orbite autour du soleil.', 0, 35, 2),
(139, 'Une planète qui orbite une autre planète.', 0, 35, 2),
(140, 'Une planète recouverte de plantes exotiques.', 0, 35, 2),
(141, 'Une région du système solaire située entre les orbites de Mars et Jupiter, contenant de nombreux petits corps rocheux appelés astéroïdes.', 1, 36, 2),
(142, 'Une ceinture de nébuleuses contenant suffisamment de poussières et d\'étoiles, pour briller et refléter sa propre lumière.', 0, 36, 2),
(143, 'Une région de l\'espace entièrement vide.', 0, 36, 2),
(144, 'La ceinture d\'astéroïdes est une barrière naturelle formée par une série de champs magnétiques autour des planètes telluriques du système solaire, agissant comme un bouclier protecteur contre les radiations cosmiques nocives.', 0, 36, 2),
(145, 'La région de l\'espace autour d\'une planète où le champ magnétique de la planète domine l\'influence du vent solaire, protégeant ainsi la planète et son atmosphère des particules solaires chargées.', 1, 37, 2),
(146, 'La magnétosphère d\'une planète est une zone de l\'espace interstellaire où les forces gravitationnelles de la planète sont si faibles que les objets peuvent flotter en apesanteur, semblable à une zone de microgravité comme celle de la Station spatiale internationale.', 0, 37, 2),
(147, 'La magnétosphère est une région située entre l\'atmosphère d\'une planète et l\'espace intersidéral, qui protège la planète des géocroiseurs.', 0, 37, 2),
(148, 'Contrairement à son appellation, la magnétosphère d\'une planète est une région située entre deux galaxies, elle fait le lien entre les deux galaxies afin de ne pas les laisser se distancer entre elles et ainsi déchirer le tissu de l\'espace-temps.', 0, 37, 2),
(149, 'Un astéroïde est un petit corps rocheux qui orbite autour du Soleil, généralement situé dans la ceinture d\'astéroïdes ou au-delà. Une météorite est un fragment d\'astéroïde ou de comète qui a survécu à son entrée dans l\'atmosphère terrestre et a atteint la surface de la Terre.', 1, 38, 2),
(150, 'Une météorite frôle la planète tandis qu\'un astéroïde ira se crasher sur celle-ci, ne laissant aucune trace.', 0, 38, 2),
(151, 'La principale différence entre un astéroïde et une météorite réside dans leur origine : les astéroïdes proviennent généralement de l\'espace interstellaire, tandis que les météorites sont formées à partir de débris terrestres.', 0, 38, 2),
(152, 'La différence entre un astéroïde et une météorite réside dans leur composition chimique : les astéroïdes sont principalement composés de glace et de poussière, tandis que les météorites sont principalement composées de métal et de roche.', 0, 38, 2),
(153, 'Les aurores polaires sont des lumières colorées qui apparaissent dans le ciel nocturne près des pôles nord et sud. Elles sont causées par l\'interaction entre les particules solaires chargées et les atomes dans la haute atmosphère terrestre.', 1, 39, 2),
(154, 'Les aurores polaires sont le résultat de l\'émission de lumière par des créatures lumineuses vivant dans les profondeurs des océans polaires. Elles se produisent lorsque ces créatures remontent à la surface et illuminent le ciel nocturne avec leurs éclats bioluminescents.', 0, 39, 2),
(155, 'Les aurores polaires sont causées par la réflexion de la lumière des étoiles dans l\'atmosphère terrestre. Elles se produisent lorsque la lumière stellaire est piégée dans les couches supérieures de l\'atmosphère et se diffuse dans le ciel nocturne, créant des lumières colorées.', 0, 39, 2),
(156, 'Les aurores polaires sont des phénomènes naturels qui se produisent lors de lancement de fusées spatiales près des pôles, les composants rejetés par le lanceur et les particules de l\'atmosphère se mélangent, fusionnent ce qui déclenche un rejet énergétique sous forme de photons desquels ressortent de multiples couleurs.', 0, 39, 2),
(157, 'La période de révolution d\'une planète est le temps nécessaire à cette planète pour effectuer une orbite complète autour de son étoile.', 1, 40, 2),
(158, 'La période de révolution d\'une planète est la durée pendant laquelle elle tourne sur elle-même autour de son axe, déterminant ainsi la longueur de ses journées et de ses nuits.', 0, 40, 2),
(159, 'La période de révolution d\'une planète est le temps nécessaire pour qu\'elle effectue une orbite complète autour de son satellite naturel, comme la Lune pour la Terre.', 0, 40, 2),
(160, 'La période de révolution d\'une planète est la période de temps pendant laquelle elle est en rétrogradation, c\'est-à-dire en mouvement rétrograde par rapport à la direction de son orbite habituelle autour du Soleil.', 0, 40, 2);

-- --------------------------------------------------------

--
-- Structure de la table `type`
--

CREATE TABLE `type` (
  `id_type` int NOT NULL,
  `type_content` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id_user` int NOT NULL,
  `last_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `first_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `avatar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(96) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `mail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `role` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `delete_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id_user`, `last_name`, `first_name`, `avatar`, `username`, `password`, `mail`, `role`, `delete_date`) VALUES
(1, 'Halliez', 'Steven', 'assets/img/avatarUpload/662a2ac97b86c1714039497.avif', 'vivi', '$argon2i$v=19$m=65536,t=4,p=1$QXdWMmJBZjNkRDE2amRNVQ$l6DDSSFfgBMaffbFSFcNDFgFYLSs0IqWlgBOtBOGxvg', 'steven.halliez@hotmail.fr', '2', NULL),
(2, 'Illuvatar', 'Eru', 'assets/img/static/iconUser.png', 'eru', '$argon2i$v=19$m=65536,t=4,p=1$bmRqYzdhT2FCay50N2ljSw$xfgAOfZuSRDuHnpMGaIfOhICgSRkumyStqqeBUj1yEE', 'eruIlluvatar@ea.com', '1', NULL),
(3, 'Lenclume', 'Jordan', 'assets/img/static/iconUser.png', 'nika', '$argon2i$v=19$m=65536,t=4,p=1$N01qbWUxeVZyZ0Y5TlZLcw$ASRCq+Tqbbt34WtxL5jbGo6k9au0NZ1Vmn/A/7lasYc', 'jordan.com', '1', '2024-04-23 12:02:06');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `astre`
--
ALTER TABLE `astre`
  ADD PRIMARY KEY (`id_astre`),
  ADD KEY `FK_Type_Astre` (`id_type`);

--
-- Index pour la table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id_comment`),
  ADD KEY `FK_User_Comment` (`id_user`),
  ADD KEY `FK_Comment_Astre` (`id_astre`);

--
-- Index pour la table `difficulty`
--
ALTER TABLE `difficulty`
  ADD PRIMARY KEY (`id_difficulty`);

--
-- Index pour la table `proposition_astre`
--
ALTER TABLE `proposition_astre`
  ADD PRIMARY KEY (`id_proposition_astre`),
  ADD KEY `FK_Astre_Proposition_Astre` (`id_astre`),
  ADD KEY `FK_User_Proposition_Astre` (`id_user`);

--
-- Index pour la table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id_question`),
  ADD KEY `FK_Difficulty_Question` (`id_difficulty`);

--
-- Index pour la table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`id_quiz`);

--
-- Index pour la table `response`
--
ALTER TABLE `response`
  ADD PRIMARY KEY (`id_response`),
  ADD KEY `FK_Quiz_Response` (`id_quiz`),
  ADD KEY `FK_Question_Response` (`id_question`);

--
-- Index pour la table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id_type`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `astre`
--
ALTER TABLE `astre`
  MODIFY `id_astre` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `comment`
--
ALTER TABLE `comment`
  MODIFY `id_comment` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `difficulty`
--
ALTER TABLE `difficulty`
  MODIFY `id_difficulty` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `proposition_astre`
--
ALTER TABLE `proposition_astre`
  MODIFY `id_proposition_astre` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `question`
--
ALTER TABLE `question`
  MODIFY `id_question` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT pour la table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `id_quiz` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `response`
--
ALTER TABLE `response`
  MODIFY `id_response` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT pour la table `type`
--
ALTER TABLE `type`
  MODIFY `id_type` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `astre`
--
ALTER TABLE `astre`
  ADD CONSTRAINT `FK_Type_Astre` FOREIGN KEY (`id_type`) REFERENCES `type` (`id_type`);

--
-- Contraintes pour la table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FK_Comment_Astre` FOREIGN KEY (`id_astre`) REFERENCES `astre` (`id_astre`),
  ADD CONSTRAINT `FK_User_Comment` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Contraintes pour la table `proposition_astre`
--
ALTER TABLE `proposition_astre`
  ADD CONSTRAINT `FK_Astre_Proposition_Astre` FOREIGN KEY (`id_astre`) REFERENCES `astre` (`id_astre`),
  ADD CONSTRAINT `FK_User_Proposition_Astre` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Contraintes pour la table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `FK_Difficulty_Question` FOREIGN KEY (`id_difficulty`) REFERENCES `difficulty` (`id_difficulty`);

--
-- Contraintes pour la table `response`
--
ALTER TABLE `response`
  ADD CONSTRAINT `FK_Question_Response` FOREIGN KEY (`id_question`) REFERENCES `question` (`id_question`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_Quiz_Response` FOREIGN KEY (`id_quiz`) REFERENCES `quiz` (`id_quiz`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;