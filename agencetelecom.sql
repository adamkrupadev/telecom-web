-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Mer 24 Janvier 2018 à 13:28
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `agencetelecom`
--

-- --------------------------------------------------------

--
-- Structure de la table `abonne`
--

CREATE TABLE `abonne` (
  `matricule` varchar(50) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `adresse` varchar(50) NOT NULL,
  `mail` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `abonne`
--

INSERT INTO `abonne` (`matricule`, `nom`, `prenom`, `adresse`, `mail`) VALUES
('07211617', 'Khouloud', 'Rmedi', 'dkj', 'k@gmail.com'),
('07211617', 'Khouloud', 'Rmedi', 'dkj', 'k@gmail.com'),
('152', 'dlj', 'qldj', 'lzj', 'rmedi.khouloud@gmail.com'),
('454', 'kdj', 'ldskj', 'dlkj', 'jd@gmail.com'),
('15', 'qdlkj', 'ldj', 'dlm', 'sj@gmail.com'),
('123456', 'lahmer', 'medamine', 'lala', 'livelive0@live.fr'),
('147', 'attia', 'attia', 'o', 'live@live.fr'),
('5', '5', '5', '5', 'lala@lala.com'),
('5', '5', '5', '5', 'lala@lala.com'),
('14759951', 'Attia', 'Med Amine', '13 Rue de Paris , Bardo', 'attia.med.aminee@gmail.com'),
('14759951', 'Attia', 'Med Amine', '13 Rue de Paris , Bardo', 'attia.med.aminee@gmail.com'),
('14759951', 'Attia', 'Med amine', 'tunis', 'livelive0àlive.fr'),
('007', 'attia', 'amine', 'sousse', 'attia.med.aminee@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `communication`
--

CREATE TABLE `communication` (
  `numLigne` varchar(50) NOT NULL,
  `NbreUnitésConsommés` varchar(50) NOT NULL,
  `Prix total` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `employe`
--

CREATE TABLE `employe` (
  `nom` varchar(50) COLLATE utf8_bin NOT NULL,
  `prenom` varchar(50) COLLATE utf8_bin NOT NULL,
  `pseudo` varchar(50) COLLATE utf8_bin NOT NULL,
  `mp` varchar(50) COLLATE utf8_bin NOT NULL,
  `type` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `employe`
--

INSERT INTO `employe` (`nom`, `prenom`, `pseudo`, `mp`, `type`) VALUES
('ab', 'ab', 'ab', 'ab', 'F'),
('cd', 'cd', 'cd', 'cd', 'C');

-- --------------------------------------------------------

--
-- Structure de la table `facture`
--

CREATE TABLE `facture` (
  `idFacture` varchar(20) COLLATE utf8_bin NOT NULL,
  `numLigne` varchar(20) COLLATE utf8_bin NOT NULL,
  `numService` int(11) NOT NULL,
  `annee` varchar(11) COLLATE utf8_bin NOT NULL,
  `mois` varchar(255) COLLATE utf8_bin NOT NULL,
  `nbrUniteConsom` int(11) NOT NULL,
  `prixTotal` float NOT NULL,
  `delais` int(11) NOT NULL,
  `payer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `facture`
--

INSERT INTO `facture` (`idFacture`, `numLigne`, `numService`, `annee`, `mois`, `nbrUniteConsom`, `prixTotal`, `delais`, `payer`) VALUES
('0', '0', 0, '0', '0', 0, 0, 0, 0),
('4', '4', 4, 'null', '', 4, 4, 4, 0),
('5', '6', 50, '4', '', 5, 5, 5, 5),
('6', '66', 6, '69', '69', 6, 96, 69, 0),
('7', '7', 7, '7', '7', 7, 7, 7, 0),
('88', '45832145', 64, '64', '64', 64, 64, 64, 0);

-- --------------------------------------------------------

--
-- Structure de la table `fixe`
--

CREATE TABLE `fixe` (
  `numLigne` varchar(50) COLLATE utf8_bin NOT NULL,
  `matricule` varchar(50) COLLATE utf8_bin NOT NULL,
  `localisation` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `fixe`
--

INSERT INTO `fixe` (`numLigne`, `matricule`, `localisation`) VALUES
('21572492', '1234', 'Sousse'),
('45832145', '15', 'Tunis'),
('71236458', '152', 'Sousse'),
('71660237', '14759951', 'Tunis');

-- --------------------------------------------------------

--
-- Structure de la table `ligne`
--

CREATE TABLE `ligne` (
  `numLigne` varchar(50) COLLATE utf8_bin NOT NULL,
  `matricule` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `ligne`
--

INSERT INTO `ligne` (`numLigne`, `matricule`) VALUES
('21572492', '1234'),
('22154878', '454'),
('45832145', '15'),
('55555555', '147'),
('71236458', '152'),
('71660237', '14759951'),
('99999999', '14759951');

-- --------------------------------------------------------

--
-- Structure de la table `mobile`
--

CREATE TABLE `mobile` (
  `numLigne` varchar(50) COLLATE utf8_bin NOT NULL,
  `matricule` varchar(50) COLLATE utf8_bin NOT NULL,
  `type` varchar(50) COLLATE utf8_bin NOT NULL,
  `reseau` varchar(50) COLLATE utf8_bin NOT NULL,
  `paiement` varchar(50) COLLATE utf8_bin NOT NULL,
  `num_service` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `mobile`
--

INSERT INTO `mobile` (`numLigne`, `matricule`, `type`, `reseau`, `paiement`, `num_service`) VALUES
('21572492', '147', '2', '3', 'pré-payé', 2),
('22154878', '454', '1', '1', 'post-payé', 1),
('55555555', '147', '2', '3', 'pré-payé', 2),
('99999999', '14759951', '2', '3', 'post-payé', 2);

-- --------------------------------------------------------

--
-- Structure de la table `region`
--

CREATE TABLE `region` (
  `idZone` int(11) NOT NULL,
  `zone` varchar(20) COLLATE utf8_bin NOT NULL,
  `encombrement` int(11) NOT NULL,
  `nbDispo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `region`
--

INSERT INTO `region` (`idZone`, `zone`, `encombrement`, `nbDispo`) VALUES
(1, 'Tunis', 30, 30),
(2, 'Sousse', 30, 30),
(3, 'Monastir', 30, 30),
(4, 'Beja', 30, 30),
(5, 'Sfax', 30, 30),
(6, 'Tozeur', 30, 0);

-- --------------------------------------------------------

--
-- Structure de la table `reseau`
--

CREATE TABLE `reseau` (
  `nom_reseau` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `reseau`
--

INSERT INTO `reseau` (`nom_reseau`) VALUES
('Communication Vocale'),
('Internet');

-- --------------------------------------------------------

--
-- Structure de la table `service`
--

CREATE TABLE `service` (
  `numService` int(11) NOT NULL,
  `description` varchar(50) COLLATE utf8_bin NOT NULL,
  `cout` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `service`
--

INSERT INTO `service` (`numService`, `description`, `cout`) VALUES
(1, 'Ajeja', 2000),
(2, 'Amigos', 1000),
(3, 'Internet mobile', 2500);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `employe`
--
ALTER TABLE `employe`
  ADD PRIMARY KEY (`pseudo`);

--
-- Index pour la table `facture`
--
ALTER TABLE `facture`
  ADD PRIMARY KEY (`idFacture`);

--
-- Index pour la table `fixe`
--
ALTER TABLE `fixe`
  ADD PRIMARY KEY (`numLigne`);

--
-- Index pour la table `ligne`
--
ALTER TABLE `ligne`
  ADD PRIMARY KEY (`numLigne`);

--
-- Index pour la table `mobile`
--
ALTER TABLE `mobile`
  ADD PRIMARY KEY (`numLigne`);

--
-- Index pour la table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`idZone`);

--
-- Index pour la table `reseau`
--
ALTER TABLE `reseau`
  ADD PRIMARY KEY (`nom_reseau`);

--
-- Index pour la table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`numService`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
