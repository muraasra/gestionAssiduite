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
DROP TABLE IF EXISTS `enseignant`;

CREATE TABLE `enseignant` (
  `matricule_ens` varchar(20) NOT NULL,
  `nom_ens` varchar(30) DEFAULT NULL,
  `matiere` varchar(10) DEFAULT NULL,
  `cle_ens` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--
DROP TABLE IF EXISTS `etudiant`;

CREATE TABLE `etudiant` (
  `matricule_etd` varchar(20) NOT NULL,
  `nom_etd` varchar(30) DEFAULT NULL,
  `classe` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `fiche_abs`
--
DROP TABLE IF EXISTS `fiche_abs`;

CREATE TABLE `fiche_abs` (
  `id_fa` varchar(10) NOT NULL,
  `matricule_etd` varchar(20) DEFAULT NULL,
  `matricule_ens` varchar(20) DEFAULT NULL,
  `heure_abs` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `fiche_rtd`
--
DROP TABLE IF EXISTS `fiche_rtd`;

CREATE TABLE `fiche_rtd` (
  `id_fr` varchar(10) NOT NULL,
  `matricule_etd` varchar(20) DEFAULT NULL,
  `matricule_sur` varchar(20) DEFAULT NULL,
  `nbr_rtd` varchar(10) DEFAULT NULL,
  `heure_arrivee` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `surveillant`
--
DROP TABLE IF EXISTS `surveillant`;

CREATE TABLE `surveillant` (
  `matricule_sur` varchar(20) NOT NULL,
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
INSERT INTO `etudiant` (`matricule_etd`, `nom_etd`, `classe`) VALUES
('SR.CMR.B001.2223', 'AKEULIFACK FAPONG', 'niveau2'),
('SR.CMR.B002.2223', 'ASSON DONFACK', 'niveau2'),
('SR.CMR.B001.2223A', 'BONSO DEMANOU', 'niveau2'),
('SR.CMR.B003.2223', 'CHEKEP IDRIC', 'niveau2'),
('SR.CMR.B004.2223', 'DEMNADJOU DIDEROT', 'niveau2'),
('SR.CMR.B005.2223', 'DJITAP PAULIN', 'niveau2'),
('GL.CMR.B004.2223A', 'DZOUA DIBATO', 'niveau2'),
('GL.CMR.B005.2223A', 'ELABA DOUA', 'niveau2'),
('GL.CMR.B007.2223A', 'FOFIE TCHINDA ', 'niveau2'),
('GL.CMR.B008.2223A', 'FOFOU YVES', 'niveau2'),
('GL.CMR.B009.2223A', 'FOKA NKOUPAJU', 'niveau2'),
('SR.CMR.B006.2223', 'FOPI TATSAA', 'niveau2'),
('GL.CMR.B010.2223A', 'FOTSING SOH', 'niveau2'),
('GL.CMR.B011.2223A', 'FOTSO YOUMBI', 'niveau2'),
('SR.CMR.B008.2223', 'FOUTCHOUM GUEFFE', 'niveau2'),
('GL.CMR.B009.2223', 'GANDZAM FOKA ', 'niveau2'),
('GL.CMR.B012.2223A', 'GHASSI GHASSI', 'niveau2'),
('GL.CMR.B014.2223A', 'KAMDEM NGUETSE ', 'niveau2'),
('GL.CMR.B013.2223A', 'KAMDEM WABO', 'niveau2'),
('GL.CMR.B011.2223', 'KENFACK TONTSA', 'niveau2'),
('GL.CMR.B016.2223A', 'KENGNE TALO', 'niveau2'),
('GL.CMR.B015.2223A', 'KENMOGNE KOME', 'niveau2'),
('GL.CMR.B018.2223A', 'KOCHELE MOUOKUO', 'niveau2'),
('GL.CMR.B012.2223', 'KOUABENA', 'niveau2'),
('GL.CMR.B013.2223', 'LEHEM LEHEM', 'niveau2'),
('SR.CMR.B019.2223A', 'MADJOUPE LIWAIRE', 'niveau2'),
('GL.CMR.B014.2223', 'MATSING TCHOUPE', 'niveau2'),
('SR.CMR.B016.2223', 'MBOUMGNI', 'niveau2'),
('GL.CMR.B017.2223', 'MBOUOMBOUO MAACHE', 'niveau2'),
('SR.CMR.B021.2223A', 'MEGAK TATCHUM ', 'niveau2'),
('GL.CMR.B022.2223A', 'MOUAFO NLA', 'niveau2'),
('GL.CMR.B018.2223', 'NAHOUSSI', 'niveau2'),
('GL.CMR.B032.2223A', 'NDAM NSOWO', 'niveau2'),
('GL.CMR.B019.2223', 'NDIFORCHAD', 'niveau2'),
('SR.CMR.B024.2223A', 'NDJEUSSEU NYA', 'niveau2'),
('GL.CMR.B020.2223', 'NDOGAM MAGHE', 'niveau2'),
('GL.CMR.B026.2223A', 'NGANGWA', 'niveau2'),
('GL.CMR.B027.2223A', 'NGUEMO TSOPNANG', 'niveau2'),
('SR.CMR.B028.2223A', 'NGUETSA TSOPNA', 'niveau2'),
('GL.CMR.B022.2223B', 'SANDIO KONGUE', 'niveau2'),
('SR.CMR.B023.2223B', 'SIME KAMDEM', 'niveau2'),
('SR.CMR.B025.2223B', 'TADJO MBOU', 'niveau2'),
('GL.CMR.B033.2223A', 'TATIAGOUM BRANDON', 'niveau2'),
('GL.CMR.B027.2223B', 'TAYOU FOM', 'niveau2'),
('SR.CMR.B029.2223B', 'TCHOUANKAP DJOFANG', 'niveau2'),
('GL.CMR.B028.2223B', 'TEGUEMNE KUATE', 'niveau2'),
('GL.CMR.B030.2223B', 'TIDO DONALD', 'niveau2'),
('GL.CMR.B031.2223B', 'TSASSE TATANG', 'niveau2'),
('GL.CMR.B033.2223B', 'WELMANDAI DOUFERIE', 'niveau2');




COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
