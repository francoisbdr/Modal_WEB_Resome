-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Dim 19 Février 2017 à 17:38
-- Version du serveur :  10.1.16-MariaDB
-- Version de PHP :  5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `resome`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`) VALUES
(1, 'francois.bdr@live.fr', 'daa6f9082ecb0128d3eb1b1c130c39585bf9c089'),
(2, 'olivier.serre@polytechnique.edu', '663194f2b9123a38cd9e2e2811f8d2fd387b765e');

-- --------------------------------------------------------

--
-- Structure de la table `refugees`
--

CREATE TABLE `refugees` (
  `id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `firstname` varchar(30) DEFAULT NULL,
  `email` varchar(128) NOT NULL,
  `inscriptiondate` date DEFAULT NULL,
  `emailcontact` varchar(128) DEFAULT NULL,
  `appel` int(11) NOT NULL DEFAULT '0',
  `birthdate` date DEFAULT NULL,
  `password` varchar(64) NOT NULL,
  `country` varchar(64) DEFAULT NULL,
  `studies` varchar(128) DEFAULT NULL,
  `certificate` varchar(32) DEFAULT NULL,
  `tel` int(11) DEFAULT NULL,
  `address` text,
  `futurestudies` text,
  `langages` text,
  `statut` varchar(128) DEFAULT NULL,
  `CIEP` tinyint(1) NOT NULL DEFAULT '0',
  `school` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `refugees`
--

INSERT INTO `refugees` (`id`, `name`, `firstname`, `email`, `inscriptiondate`, `emailcontact`, `appel`, `birthdate`, `password`, `country`, `studies`, `certificate`, `tel`, `address`, `futurestudies`, `langages`, `statut`, `CIEP`, `school`) VALUES
(14, NULL, NULL, 'benardjean96@gmail.com', '2017-01-28', NULL, 0, NULL, 'c944a872edba9aeb523ed68198b08da162bc188d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'ulm'),
(16, 'BENOIT du REY', 'François', 'francois.benoit-du-rey@polytechnique.edu', '2017-01-29', 'jean@me.fr', 1, '1995-04-06', 'daa6f9082ecb0128d3eb1b1c130c39585bf9c089', 'Congo', 'Polytechnique', 'Oui', 781169406, 'lzeldezldle', 'Polytechnique', 'Débutant (A1)', 'Celibataire', 1, NULL),
(32, NULL, NULL, 'francois.bdr@live.fr', '2017-02-01', NULL, 8, NULL, '27f5cabc2ca45265db84b805ee8ec634ca4d074f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `school`
--

CREATE TABLE `school` (
  `id` int(64) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `inscriptiondate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `school`
--

INSERT INTO `school` (`id`, `name`, `email`, `password`, `inscriptiondate`) VALUES
(8, 'BDR', 'francois.bdr@live.fr', '6e0eb9bb502af16a47ac3ad2941948384beaa1f7', '2017-01-29'),
(9, 'Dominique''s School', 'dominique.rossin@polytechnique.edu', '9cc140dd813383e134e7e365b203780da9376438', '2017-01-29'),
(12, 'BDR', 'francois.benoit-du-rey@polytechnique.edu', 'daa6f9082ecb0128d3eb1b1c130c39585bf9c089', '2017-01-29');

-- --------------------------------------------------------

--
-- Structure de la table `school_en_attente`
--

CREATE TABLE `school_en_attente` (
  `id` int(11) NOT NULL,
  `email` varchar(64) NOT NULL,
  `password` varchar(128) NOT NULL,
  `clef` int(128) NOT NULL,
  `inscriptiondate` date NOT NULL,
  `name` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur_en_attente`
--

CREATE TABLE `utilisateur_en_attente` (
  `id` int(11) NOT NULL,
  `email` varchar(64) NOT NULL,
  `password` varchar(128) NOT NULL,
  `clef` int(128) NOT NULL,
  `inscriptiondate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `utilisateur_en_attente`
--

INSERT INTO `utilisateur_en_attente` (`id`, `email`, `password`, `clef`, `inscriptiondate`) VALUES
(16, 'jean.benard@polytechnique.edu', 'c944a872edba9aeb523ed68198b08da162bc188d', 8240207, '2017-01-28'),
(29, 'dominique.rossin@polytechnique.edu', '9cc140dd813383e134e7e365b203780da9376438', 2433928, '2017-01-29'),
(50, 'i@yopmail.com', '042dc4512fa3d391c5170cf3aa61e6a638f84342', 6006701, '2017-02-01');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `refugees`
--
ALTER TABLE `refugees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Index pour la table `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `school_en_attente`
--
ALTER TABLE `school_en_attente`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `utilisateur_en_attente`
--
ALTER TABLE `utilisateur_en_attente`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `refugees`
--
ALTER TABLE `refugees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT pour la table `school`
--
ALTER TABLE `school`
  MODIFY `id` int(64) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `school_en_attente`
--
ALTER TABLE `school_en_attente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `utilisateur_en_attente`
--
ALTER TABLE `utilisateur_en_attente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
