-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 29 avr. 2024 à 21:13
-- Version du serveur : 10.4.21-MariaDB
-- Version de PHP : 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gestionassiduite`
--

-- --------------------------------------------------------

--
-- Structure de la table `enseignant`
--

CREATE TABLE `enseignant` (
  `matricule_ens` varchar(10) NOT NULL,
  `nom_ens` varchar(30) DEFAULT NULL,
  `matiere` varchar(10) DEFAULT NULL,
  `cle_ens` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

CREATE TABLE `etudiant` (
  `matricule_etd` varchar(10) NOT NULL,
  `nom_etd` varchar(30) DEFAULT NULL,
  `classe` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `fiche_abs`
--

CREATE TABLE `fiche_abs` (
  `id_fa` varchar(10) NOT NULL,
  `matricule_etd` varchar(10) DEFAULT NULL,
  `matricule_ens` varchar(10) DEFAULT NULL,
  `heure_abs` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `fiche_rtd`
--

CREATE TABLE `fiche_rtd` (
  `id_fr` varchar(10) NOT NULL,
  `matricule_etd` varchar(10) DEFAULT NULL,
  `matricule_sur` varchar(10) DEFAULT NULL,
  `nbr_rtd` varchar(10) DEFAULT NULL,
  `heure_arrivee` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `surveillant`
--

CREATE TABLE `surveillant` (
  `matricule_sur` varchar(10) NOT NULL,
  `nom_sur` varchar(30) DEFAULT NULL,
  `cle_sur` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `enseignant`
--
ALTER TABLE `enseignant`
  ADD PRIMARY KEY (`matricule_ens`);

--
-- Index pour la table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`matricule_etd`);

--
-- Index pour la table `fiche_abs`
--
ALTER TABLE `fiche_abs`
  ADD PRIMARY KEY (`id_fa`),
  ADD KEY `matricule_etd` (`matricule_etd`),
  ADD KEY `matricule_ens` (`matricule_ens`);

--
-- Index pour la table `fiche_rtd`
--
ALTER TABLE `fiche_rtd`
  ADD PRIMARY KEY (`id_fr`),
  ADD KEY `matricule_etd` (`matricule_etd`),
  ADD KEY `matricule_sur` (`matricule_sur`);

--
-- Index pour la table `surveillant`
--
ALTER TABLE `surveillant`
  ADD PRIMARY KEY (`matricule_sur`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `fiche_abs`
--
ALTER TABLE `fiche_abs`
  ADD CONSTRAINT `fiche_abs_ibfk_1` FOREIGN KEY (`matricule_etd`) REFERENCES `etudiant` (`matricule_etd`),
  ADD CONSTRAINT `fiche_abs_ibfk_2` FOREIGN KEY (`matricule_ens`) REFERENCES `enseignant` (`matricule_ens`);

--
-- Contraintes pour la table `fiche_rtd`
--
ALTER TABLE `fiche_rtd`
  ADD CONSTRAINT `fiche_re_ibfk_1` FOREIGN KEY (`matricule_etd`) REFERENCES `etudiant` (`matricule_etd`),
  ADD CONSTRAINT `fiche_re_ibfk_2` FOREIGN KEY (`matricule_sur`) REFERENCES `surveillant` (`matricule_sur`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
