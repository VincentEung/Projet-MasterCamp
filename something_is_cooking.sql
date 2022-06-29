-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 29 juin 2022 à 16:28
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `something_is_cooking`
--

-- --------------------------------------------------------

--
-- Structure de la table `abonnement`
--

CREATE TABLE `abonnement` (
  `ID_ABONNEMENT` int(11) NOT NULL,
  `Type` varchar(50) DEFAULT NULL,
  `Prix` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------
INSERT INTO `abonnement` (`ID_ABONNEMENT`, `Type`, `Prix`) VALUES
(0, 'loan', '0 euro');
INSERT INTO `abonnement` (`ID_ABONNEMENT`, `Type`, `Prix`) VALUES
(1, 'premium', '10 euro');
INSERT INTO `abonnement` (`ID_ABONNEMENT`, `Type`, `Prix`) VALUES
(2, 'VIP', '20 euro');
--
-- Structure de la table `associer`
--

CREATE TABLE `associer` (
  `ID_CONSULTATION` int(11) NOT NULL,
  `ID_TYPEC` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------
INSERT INTO `associer` (`ID_CONSULTATION`, `ID_TYPEC`) VALUES
(0, 0);
INSERT INTO `associer` (`ID_CONSULTATION`, `ID_TYPEC`) VALUES
(1, 1);
INSERT INTO `associer` (`ID_CONSULTATION`, `ID_TYPEC`) VALUES
(2, 2);
--
-- Structure de la table `attribuer`
--

CREATE TABLE `attribuer` (
  `ID_PATIENT` int(11) NOT NULL,
  `ID_REGIME` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------
INSERT INTO `attribuer` (`ID_PATIENT`, `ID_REGIME`) VALUES
(6, 0);
--
-- Structure de la table `calendrier`
--

CREATE TABLE `calendrier` (
  `ID_CALENDRIER` int(11) NOT NULL,
  `Debut` datetime DEFAULT NULL,
  `Fin` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------
INSERT INTO `calendrier` (`ID_CALENDRIER`, `Debut`, `Fin`) VALUES
(0, '2022-09-24', '2022-10-24');
INSERT INTO `calendrier` (`ID_CALENDRIER`, `Debut`, `Fin`) VALUES
(1, '2022-07-12', '2022-07-25');
INSERT INTO `calendrier` (`ID_CALENDRIER`, `Debut`, `Fin`) VALUES
(2, '2022-07-10', '2023-01-10');
--
--
-- Structure de la table `categoriser`
--

CREATE TABLE `categoriser` (
  `ID_CUISINIER` int(11) NOT NULL,
  `ID_CU` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO `categoriser` (`ID_CUISINIER`, `ID_CU`) VALUES
(0, 0);
INSERT INTO `categoriser` (`ID_CUISINIER`, `ID_CU`) VALUES
(1, 1);
INSERT INTO `categoriser` (`ID_CUISINIER`, `ID_CU`) VALUES
(2, 2);
-- --------------------------------------------------------

--
-- Structure de la table `conseille`
--

CREATE TABLE `conseille` (
  `ID_PATIENT` int(11) NOT NULL,
  `ID_NUTRITIONNISTE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------
INSERT INTO `conseille` (`ID_PATIENT`, `ID_NUTRITIONNISTE`) VALUES
(6, 0);
-- Structure de la table `consultation`
--

CREATE TABLE `consultation` (
  `ID_CONSULTATION` int(11) NOT NULL,
  `Intitulé` varchar(50) DEFAULT NULL,
  `Date_Rendez_vous` datetime DEFAULT NULL,
  `Prix` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------
INSERT INTO `consultation` (`ID_CONSULTATION`, `Intitulé`, `Date_Rendez_Vous`,`Prix`) VALUES
(0,'premiere rencontre', '2022-07-10', '10 euro');
INSERT INTO `consultation` (`ID_CONSULTATION`, `Intitulé`, `Date_Rendez_Vous`,`Prix`) VALUES
(1,'prise de masse', '2022-08-10', '10 euro');
INSERT INTO `consultation` (`ID_CONSULTATION`, `Intitulé`, `Date_Rendez_Vous`,`Prix`) VALUES
(2,'perte de poids', '2022-09-10', '10 euro');
--
-- Structure de la table `cuisiner`
--

CREATE TABLE `cuisiner` (
  `ID_RECETTE` int(11) NOT NULL,
  `ID_CUISINIER` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------
INSERT INTO `cuisinier` (`ID_RECETTE`, `ID_CUISINIER`) VALUES
(0, 0);
INSERT INTO `cuisinier` (`ID_RECETTE`, `ID_CUISINIER`) VALUES
(1, 1);
INSERT INTO `cuisinier` (`ID_RECETTE`, `ID_CUISINIER`) VALUES
(2, 2);
INSERT INTO `cuisinier` (`ID_RECETTE`, `ID_CUISINIER`) VALUES
(3, 0);
INSERT INTO `cuisinier` (`ID_RECETTE`, `ID_CUISINIER`) VALUES
(4, 1);
INSERT INTO `cuisinier` (`ID_RECETTE`, `ID_CUISINIER`) VALUES
(5, 2);
INSERT INTO `cuisinier` (`ID_RECETTE`, `ID_CUISINIER`) VALUES
(6, 0);
INSERT INTO `cuisinier` (`ID_RECETTE`, `ID_CUISINIER`) VALUES
(7, 1);
INSERT INTO `cuisinier` (`ID_RECETTE`, `ID_CUISINIER`) VALUES
(8, 2);
--
-- Structure de la table `cuisinier`
--

CREATE TABLE `cuisinier` (
  `ID_CUISINIER` int(11) NOT NULL,
  `Nom` varchar(50) DEFAULT NULL,
  `Prénom` varchar(50) DEFAULT NULL,
  `Grade` varchar(50) DEFAULT NULL,
  `Pays` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------
INSERT INTO `cuisinier` (`ID_CUISINIER`, `Nom`, `Prénom`, `Grade`, `Pays`) VALUES
(0, 'Etchebest', 'Philippe', 'chef étoilé', 'france');
INSERT INTO `cuisinier` (`ID_CUISINIER`, `Nom`, `Prénom`, `Grade`, `Pays`) VALUES
(1, 'Ducasse', 'Alain', 'chef étoilé', 'france');
INSERT INTO `cuisinier` (`ID_CUISINIER`, `Nom`, `Prénom`, `Grade`, `Pays`) VALUES
(2, 'Passard', 'Alain', 'chef étoilé', 'france');
--
-- Structure de la table `diagnostique`
--

CREATE TABLE `diagnostique` (
  `ID_NUTRITIONNISTE` int(11) NOT NULL,
  `ID_CONSULTATION` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------
INSERT INTO `diagnostique` (`ID_NUTRITIONNISTE`, `ID_CONSULTATION`) VALUES
(0, 0);
INSERT INTO `diagnostique` (`ID_NUTRITIONNISTE`, `ID_CONSULTATION`) VALUES
(0, 1);
INSERT INTO `diagnostique` (`ID_NUTRITIONNISTE`, `ID_CONSULTATION`) VALUES
(0, 2);
--
-- Structure de la table `nutritionniste`
--

CREATE TABLE `nutritionniste` (
  `ID_NUTRITIONNISTE` int(11) NOT NULL,
  `Nom` varchar(50) DEFAULT NULL,
  `Prénom` varchar(50) DEFAULT NULL,
  `Ville` varchar(50) DEFAULT NULL,
  `Téléphone` varchar(50) DEFAULT NULL,
  `Réseaux` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------
INSERT INTO `nutritionniste` (`ID_NUTRITIONNISTE`, `Nom`, `Prénom`, `Ville`, `Téléphone`,`Réseaux`) VALUES
(0, 'Lacombe', 'Francoise', 'Paris', '0658965423','@FrLacombe');
--
-- Structure de la table `objectif`
--

CREATE TABLE `objectif` (
  `ID_OBJECTIF` int(11) NOT NULL,
  `Intitulé` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO `objectif` (`ID_OBJECTIF`, `Intitulé`) VALUES
(0, 'Perte de 10 kilos');
INSERT INTO `objectif` (`ID_OBJECTIF`, `Intitulé`) VALUES
(1, 'Prise de 5 kilos');
INSERT INTO `objectif` (`ID_OBJECTIF`, `Intitulé`) VALUES
(2, 'Manger plus équilibré');
-- --------------------------------------------------------

--
-- Structure de la table `patient`
--

CREATE TABLE `patient` (
  `ID_PATIENT` int(50) NOT NULL,
  `Nom` varchar(50) DEFAULT NULL,
  `Prénom` varchar(50) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `Poids` int(11) DEFAULT NULL,
  `Taille` varchar(50) DEFAULT NULL,
  `IMC` int(11) DEFAULT NULL,
  `Telephone` varchar(50) DEFAULT NULL,
  `Mail` varchar(50) DEFAULT NULL,
  `password` varchar(50) NOT NULL,
  `user_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `patient`
--

INSERT INTO `patient` (`ID_PATIENT`, `Nom`, `Prénom`, `Age`, `Poids`, `Taille`, `IMC`, `Telephone`, `Mail`, `password`, `user_type`) VALUES
(6, 'oui', 'oui', 8, NULL, NULL, NULL, '0651497986', 'oui@gmail.com', 'cc8c0a97c2dfcd73caff160b65aa39e2', 'client');

-- --------------------------------------------------------

--
-- Structure de la table `possède`
--

CREATE TABLE `possède` (
  `ID_REGIME` int(11) NOT NULL,
  `ID_RECETTE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------
INSERT INTO `possède` (`ID_REGIME`, `ID_RECETTE`) VALUES
( 0, 0);
INSERT INTO `possède` (`ID_REGIME`, `ID_RECETTE`) VALUES
( 1, 1);
INSERT INTO `possède` (`ID_REGIME`, `ID_RECETTE`) VALUES
( 2, 2);
INSERT INTO `possède` (`ID_REGIME`, `ID_RECETTE`) VALUES
( 0, 3);
INSERT INTO `possède` (`ID_REGIME`, `ID_RECETTE`) VALUES
( 1, 4);
INSERT INTO `possède` (`ID_REGIME`, `ID_RECETTE`) VALUES
( 2, 5);
INSERT INTO `possède` (`ID_REGIME`, `ID_RECETTE`) VALUES
( 0, 6);
INSERT INTO `possède` (`ID_REGIME`, `ID_RECETTE`) VALUES
( 1, 7);
INSERT INTO `possède` (`ID_REGIME`, `ID_RECETTE`) VALUES
( 2, 8);
--
-- Structure de la table `prendre`
--

CREATE TABLE `prendre` (
  `ID_PATIENT` int(11) NOT NULL,
  `ID_CONSULTATION` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------
INSERT INTO `prendre` (`ID_PATIENT`, `ID_CONSUTATION`) VALUES
( 6,0 );
INSERT INTO `prendre` (`ID_PATIENT`, `ID_CONSUTATION`) VALUES
( 6,1 );
INSERT INTO `prendre` (`ID_PATIENT`, `ID_CONSUTATION`) VALUES
( 6,2 );
--
-- Structure de la table `proposer`
--

CREATE TABLE `proposer` (
  `ID_NUTRITIONNISTE` int(11) NOT NULL,
  `ID_REGIME` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `recette`
--

CREATE TABLE `recette` (
  `ID_RECETTE` int(11) NOT NULL,
  `Nom` varchar(50) DEFAULT NULL,
  `Apport_Calorique` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO `recette` (`ID_RECETTE`, `Nom`, `Apport_Calorique`) VALUES
(0, 'Salade de légume', '1000');
INSERT INTO `recette` (`ID_RECETTE`, `Nom`, `Apport_Calorique`) VALUES
(1, 'Tofu de courgettes', '900');
INSERT INTO `recette` (`ID_RECETTE`, `Nom`, `Apport_Calorique`) VALUES
(2, 'falafel', '800');
INSERT INTO `recette` (`ID_RECETTE`, `Nom`, `Apport_Calorique`) VALUES
(3, 'Cote de boeuf', '1500');
INSERT INTO `recette` (`ID_RECETTE`, `Nom`, `Apport_Calorique`) VALUES
(4, 'Lasagne', '1200');
INSERT INTO `recette` (`ID_RECETTE`, `Nom`, `Apport_Calorique`) VALUES
(5, 'Poulet au citron', '800');
INSERT INTO `recette` (`ID_RECETTE`, `Nom`, `Apport_Calorique`) VALUES
(6, 'salade de tomates aux boeuf séché', '700');
INSERT INTO `recette` (`ID_RECETTE`, `Nom`, `Apport_Calorique`) VALUES
(7, 'salade crevettes avocats', '750');
INSERT INTO `recette` (`ID_RECETTE`, `Nom`, `Apport_Calorique`) VALUES
(8, 'brique a la viande hachées', '1300');

-- --------------------------------------------------------

--
-- Structure de la table `relier`
--

CREATE TABLE `relier` (
  `ID_REGIME` int(11) NOT NULL,
  `ID_CALENDRIER` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------
INSERT INTO `prendre` (`ID_REGIME`, `ID_CALENDRIER`) VALUES
( 0,0 );
INSERT INTO `prendre` (`ID_REGIME`, `ID_CALENDRIER`) VALUES
( 1,1);
INSERT INTO `prendre` (`ID_REGIME`, `ID_CALENDRIER`) VALUES
( 2,2 );
--
--
-- Structure de la table `réaliser`
--

CREATE TABLE `réaliser` (
  `ID_PATIENT` int(11) NOT NULL,
  `ID_OBJECTIF` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------
INSERT INTO `réaliser` (`ID_PATIENT`, `ID_OBJECTIF`) VALUES
( 6,0 );
--
-- Structure de la table `régime`
--

CREATE TABLE `régime` (
  `ID_REGIME` int(11) NOT NULL,
  `Apport_Calorique` int(11) DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------
INSERT INTO `régime` (`ID_REGIME`, `Apport_Calorique`, `Type`) VALUES
(0, '2500', 'végétarien');
INSERT INTO `régime` (`ID_REGIME`, `Apport_Calorique`, `Type`) VALUES
(1, '2500', 'healthy');
INSERT INTO `régime` (`ID_REGIME`, `Apport_Calorique`, `Type`) VALUES
(2, '2500', 'Végan');
--
-- Structure de la table `suivre`
--

CREATE TABLE `suivre` (
  `ID_PATIENT` int(11) NOT NULL,
  `ID_ABONNEMENT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------
INSERT INTO `suivre` (`ID_PATIENT`, `ID_ABONNEMENT`) VALUES
( 6,1 );
--
-- Structure de la table `s_abonne`
--

CREATE TABLE `s_abonne` (
  `ID_NUTRITIONNISTE` int(11) NOT NULL,
  `ID_ABONNEMENT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------
INSERT INTO `s_abonne` (`ID_NUTRITIONNISTE`, `ID_ABONNEMENT`) VALUES
( 0,1 );
--
--
-- Structure de la table `type`
--

CREATE TABLE `type` (
  `ID_OBJECTIF` int(11) NOT NULL,
  `ID_TYPEO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------
INSERT INTO `type` (`ID_OBJECTIF`, `ID_TYPEO`) VALUES
( 0,0);
INSERT INTO `type` (`ID_OBJECTIF`, `ID_TYPEO`) VALUES
( 1,1);
INSERT INTO `type` (`ID_OBJECTIF`, `ID_TYPEO`) VALUES
( 2,2);
--
-- Structure de la table `type1`
--

CREATE TABLE `type1` (
  `ID_RECETTE` int(11) NOT NULL,
  `Id_TYPER` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------
INSERT INTO `type1` (`ID_RECETTE`, `ID_TYPER`) VALUES
( 0,0);
INSERT INTO `type1` (`ID_RECETTE`, `ID_TYPER`) VALUES
( 1,1);
INSERT INTO `type1` (`ID_RECETTE`, `ID_TYPER`) VALUES
( 2,2);
INSERT INTO `type1` (`ID_RECETTE`, `ID_TYPER`) VALUES
( 3,0);
INSERT INTO `type1` (`ID_RECETTE`, `ID_TYPER`) VALUES
( 4,1);
INSERT INTO `type1` (`ID_RECETTE`, `ID_TYPER`) VALUES
( 5,2);
INSERT INTO `type1` (`ID_RECETTE`, `ID_TYPER`) VALUES
( 6,0);
INSERT INTO `type1` (`ID_RECETTE`, `ID_TYPER`) VALUES
( 7,1);
INSERT INTO `type1` (`ID_RECETTE`, `ID_TYPER`) VALUES
( 8,2);
--
-- Structure de la table `typec`
--

CREATE TABLE `typec` (
  `ID_TYPEC` int(11) NOT NULL,
  `Type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------
INSERT INTO `typec` (`ID_TYPEC`, `Type`) VALUES
(0, 'premiere consultation');
INSERT INTO `typec` (`ID_TYPEC`, `Type`) VALUES
(1, 'Prise de masses');
INSERT INTO `typec` (`ID_TYPEC`, `Type`) VALUES
(2, 'perte de poids');
--
-- Structure de la table `typecu`
--

CREATE TABLE `typecu` (
  `ID_CU` int(11) NOT NULL,
  `Type` varchar(50) DEFAULT NULL,
  `Style` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------
INSERT INTO `typecu` (`ID_CU`, `Type`, `Style`) VALUES
(0, 'repas pour sportif','Gastronomie Francaise');
INSERT INTO `typecu` (`ID_CU`, `Type`, `Style`) VALUES
(1, 'perte de poids',' Asian Food');
INSERT INTO `typecu` (`ID_CU`, `Type`, `Style`) VALUES
(2, 'prise de masses',' Italian Food');
--
-- Structure de la table `typeo`
--

CREATE TABLE `typeo` (
  `ID_TYPEO` int(11) NOT NULL,
  `Type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO `typeo` (`ID_TYPER`, `Type`) VALUES
(0, 'Perte de poids');
INSERT INTO `typeo` (`ID_TYPER`, `Type`) VALUES
(1, 'Prise de masses');
INSERT INTO `typeo` (`ID_TYPER`, `Type`) VALUES
(2, 'maintient du poids');
-- --------------------------------------------------------

--
-- Structure de la table `typer`
--

CREATE TABLE `typer` (
  `Id_TYPER` int(11) NOT NULL,
  `Type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO `typer` (`ID_TYPER`, `Type`) VALUES
(0, 'Perte de poids');
INSERT INTO `typer` (`ID_TYPER`, `Type`) VALUES
(1, 'Prise de masses');
INSERT INTO `typer` (`ID_TYPER`, `Type`) VALUES
(2, 'maintient du poids');
--
-- Index pour les tables déchargées
--

--
-- Index pour la table `abonnement`
--
ALTER TABLE `abonnement`
  ADD PRIMARY KEY (`ID_ABONNEMENT`);

--
-- Index pour la table `associer`
--
ALTER TABLE `associer`
  ADD PRIMARY KEY (`ID_CONSULTATION`,`ID_TYPEC`),
  ADD KEY `ID_TYPEC` (`ID_TYPEC`);

--
-- Index pour la table `attribuer`
--
ALTER TABLE `attribuer`
  ADD PRIMARY KEY (`ID_PATIENT`,`ID_REGIME`),
  ADD KEY `ID_REGIME` (`ID_REGIME`);

--
-- Index pour la table `calendrier`
--
ALTER TABLE `calendrier`
  ADD PRIMARY KEY (`ID_CALENDRIER`);

--
-- Index pour la table `categoriser`
--
ALTER TABLE `categoriser`
  ADD PRIMARY KEY (`ID_CUISINIER`,`ID_CU`),
  ADD KEY `ID_CU` (`ID_CU`);

--
-- Index pour la table `conseille`
--
ALTER TABLE `conseille`
  ADD PRIMARY KEY (`ID_PATIENT`,`ID_NUTRITIONNISTE`),
  ADD KEY `ID_NUTRITIONNISTE` (`ID_NUTRITIONNISTE`);

--
-- Index pour la table `consultation`
--
ALTER TABLE `consultation`
  ADD PRIMARY KEY (`ID_CONSULTATION`);

--
-- Index pour la table `cuisiner`
--
ALTER TABLE `cuisiner`
  ADD PRIMARY KEY (`ID_RECETTE`,`ID_CUISINIER`),
  ADD KEY `ID_CUISINIER` (`ID_CUISINIER`);

--
-- Index pour la table `cuisinier`
--
ALTER TABLE `cuisinier`
  ADD PRIMARY KEY (`ID_CUISINIER`);

--
-- Index pour la table `diagnostique`
--
ALTER TABLE `diagnostique`
  ADD PRIMARY KEY (`ID_NUTRITIONNISTE`,`ID_CONSULTATION`),
  ADD KEY `ID_CONSULTATION` (`ID_CONSULTATION`);

--
-- Index pour la table `nutritionniste`
--
ALTER TABLE `nutritionniste`
  ADD PRIMARY KEY (`ID_NUTRITIONNISTE`);

--
-- Index pour la table `objectif`
--
ALTER TABLE `objectif`
  ADD PRIMARY KEY (`ID_OBJECTIF`);

--
-- Index pour la table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`ID_PATIENT`);

--
-- Index pour la table `possède`
--
ALTER TABLE `possède`
  ADD PRIMARY KEY (`ID_REGIME`,`ID_RECETTE`),
  ADD KEY `ID_RECETTE` (`ID_RECETTE`);

--
-- Index pour la table `prendre`
--
ALTER TABLE `prendre`
  ADD PRIMARY KEY (`ID_PATIENT`,`ID_CONSULTATION`),
  ADD KEY `ID_CONSULTATION` (`ID_CONSULTATION`);

--
-- Index pour la table `proposer`
--
ALTER TABLE `proposer`
  ADD PRIMARY KEY (`ID_NUTRITIONNISTE`,`ID_REGIME`),
  ADD KEY `ID_REGIME` (`ID_REGIME`);

--
-- Index pour la table `recette`
--
ALTER TABLE `recette`
  ADD PRIMARY KEY (`ID_RECETTE`);

--
-- Index pour la table `relier`
--
ALTER TABLE `relier`
  ADD PRIMARY KEY (`ID_REGIME`,`ID_CALENDRIER`),
  ADD KEY `ID_CALENDRIER` (`ID_CALENDRIER`);

--
-- Index pour la table `réaliser`
--
ALTER TABLE `réaliser`
  ADD PRIMARY KEY (`ID_PATIENT`,`ID_OBJECTIF`),
  ADD KEY `ID_OBJECTIF` (`ID_OBJECTIF`);

--
-- Index pour la table `régime`
--
ALTER TABLE `régime`
  ADD PRIMARY KEY (`ID_REGIME`);

--
-- Index pour la table `suivre`
--
ALTER TABLE `suivre`
  ADD PRIMARY KEY (`ID_PATIENT`,`ID_ABONNEMENT`),
  ADD KEY `ID_ABONNEMENT` (`ID_ABONNEMENT`);

--
-- Index pour la table `s_abonne`
--
ALTER TABLE `s_abonne`
  ADD PRIMARY KEY (`ID_NUTRITIONNISTE`,`ID_ABONNEMENT`),
  ADD KEY `ID_ABONNEMENT` (`ID_ABONNEMENT`);

--
-- Index pour la table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`ID_OBJECTIF`,`ID_TYPEO`),
  ADD KEY `ID_TYPEO` (`ID_TYPEO`);

--
-- Index pour la table `type1`
--
ALTER TABLE `type1`
  ADD PRIMARY KEY (`ID_RECETTE`,`Id_TYPER`),
  ADD KEY `Id_TYPER` (`Id_TYPER`);

--
-- Index pour la table `typec`
--
ALTER TABLE `typec`
  ADD PRIMARY KEY (`ID_TYPEC`);

--
-- Index pour la table `typecu`
--
ALTER TABLE `typecu`
  ADD PRIMARY KEY (`ID_CU`);

--
-- Index pour la table `typeo`
--
ALTER TABLE `typeo`
  ADD PRIMARY KEY (`ID_TYPEO`);

--
-- Index pour la table `typer`
--
ALTER TABLE `typer`
  ADD PRIMARY KEY (`Id_TYPER`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `patient`
--
ALTER TABLE `patient`
  MODIFY `ID_PATIENT` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `associer`
--
ALTER TABLE `associer`
  ADD CONSTRAINT `associer_ibfk_1` FOREIGN KEY (`ID_CONSULTATION`) REFERENCES `consultation` (`ID_CONSULTATION`),
  ADD CONSTRAINT `associer_ibfk_2` FOREIGN KEY (`ID_TYPEC`) REFERENCES `typec` (`ID_TYPEC`);

--
-- Contraintes pour la table `attribuer`
--
ALTER TABLE `attribuer`
  ADD CONSTRAINT `attribuer_ibfk_1` FOREIGN KEY (`ID_PATIENT`) REFERENCES `patient` (`ID_PATIENT`),
  ADD CONSTRAINT `attribuer_ibfk_2` FOREIGN KEY (`ID_REGIME`) REFERENCES `régime` (`ID_REGIME`);

--
-- Contraintes pour la table `categoriser`
--
ALTER TABLE `categoriser`
  ADD CONSTRAINT `categoriser_ibfk_1` FOREIGN KEY (`ID_CUISINIER`) REFERENCES `cuisinier` (`ID_CUISINIER`),
  ADD CONSTRAINT `categoriser_ibfk_2` FOREIGN KEY (`ID_CU`) REFERENCES `typecu` (`ID_CU`);

--
-- Contraintes pour la table `conseille`
--
ALTER TABLE `conseille`
  ADD CONSTRAINT `conseille_ibfk_1` FOREIGN KEY (`ID_PATIENT`) REFERENCES `patient` (`ID_PATIENT`),
  ADD CONSTRAINT `conseille_ibfk_2` FOREIGN KEY (`ID_NUTRITIONNISTE`) REFERENCES `nutritionniste` (`ID_NUTRITIONNISTE`);

--
-- Contraintes pour la table `cuisiner`
--
ALTER TABLE `cuisiner`
  ADD CONSTRAINT `cuisiner_ibfk_1` FOREIGN KEY (`ID_RECETTE`) REFERENCES `recette` (`ID_RECETTE`),
  ADD CONSTRAINT `cuisiner_ibfk_2` FOREIGN KEY (`ID_CUISINIER`) REFERENCES `cuisinier` (`ID_CUISINIER`);

--
-- Contraintes pour la table `diagnostique`
--
ALTER TABLE `diagnostique`
  ADD CONSTRAINT `diagnostique_ibfk_1` FOREIGN KEY (`ID_NUTRITIONNISTE`) REFERENCES `nutritionniste` (`ID_NUTRITIONNISTE`),
  ADD CONSTRAINT `diagnostique_ibfk_2` FOREIGN KEY (`ID_CONSULTATION`) REFERENCES `consultation` (`ID_CONSULTATION`);

--
-- Contraintes pour la table `possède`
--
ALTER TABLE `possède`
  ADD CONSTRAINT `possède_ibfk_1` FOREIGN KEY (`ID_REGIME`) REFERENCES `régime` (`ID_REGIME`),
  ADD CONSTRAINT `possède_ibfk_2` FOREIGN KEY (`ID_RECETTE`) REFERENCES `recette` (`ID_RECETTE`);

--
-- Contraintes pour la table `prendre`
--
ALTER TABLE `prendre`
  ADD CONSTRAINT `prendre_ibfk_1` FOREIGN KEY (`ID_PATIENT`) REFERENCES `patient` (`ID_PATIENT`),
  ADD CONSTRAINT `prendre_ibfk_2` FOREIGN KEY (`ID_CONSULTATION`) REFERENCES `consultation` (`ID_CONSULTATION`);

--
-- Contraintes pour la table `proposer`
--
ALTER TABLE `proposer`
  ADD CONSTRAINT `proposer_ibfk_1` FOREIGN KEY (`ID_NUTRITIONNISTE`) REFERENCES `nutritionniste` (`ID_NUTRITIONNISTE`),
  ADD CONSTRAINT `proposer_ibfk_2` FOREIGN KEY (`ID_REGIME`) REFERENCES `régime` (`ID_REGIME`);

--
-- Contraintes pour la table `relier`
--
ALTER TABLE `relier`
  ADD CONSTRAINT `relier_ibfk_1` FOREIGN KEY (`ID_REGIME`) REFERENCES `régime` (`ID_REGIME`),
  ADD CONSTRAINT `relier_ibfk_2` FOREIGN KEY (`ID_CALENDRIER`) REFERENCES `calendrier` (`ID_CALENDRIER`);

--
-- Contraintes pour la table `réaliser`
--
ALTER TABLE `réaliser`
  ADD CONSTRAINT `réaliser_ibfk_1` FOREIGN KEY (`ID_PATIENT`) REFERENCES `patient` (`ID_PATIENT`),
  ADD CONSTRAINT `réaliser_ibfk_2` FOREIGN KEY (`ID_OBJECTIF`) REFERENCES `objectif` (`ID_OBJECTIF`);

--
-- Contraintes pour la table `suivre`
--
ALTER TABLE `suivre`
  ADD CONSTRAINT `suivre_ibfk_1` FOREIGN KEY (`ID_PATIENT`) REFERENCES `patient` (`ID_PATIENT`),
  ADD CONSTRAINT `suivre_ibfk_2` FOREIGN KEY (`ID_ABONNEMENT`) REFERENCES `abonnement` (`ID_ABONNEMENT`);

--
-- Contraintes pour la table `s_abonne`
--
ALTER TABLE `s_abonne`
  ADD CONSTRAINT `s_abonne_ibfk_1` FOREIGN KEY (`ID_NUTRITIONNISTE`) REFERENCES `nutritionniste` (`ID_NUTRITIONNISTE`),
  ADD CONSTRAINT `s_abonne_ibfk_2` FOREIGN KEY (`ID_ABONNEMENT`) REFERENCES `abonnement` (`ID_ABONNEMENT`);

--
-- Contraintes pour la table `type`
--
ALTER TABLE `type`
  ADD CONSTRAINT `type_ibfk_1` FOREIGN KEY (`ID_OBJECTIF`) REFERENCES `objectif` (`ID_OBJECTIF`),
  ADD CONSTRAINT `type_ibfk_2` FOREIGN KEY (`ID_TYPEO`) REFERENCES `typeo` (`ID_TYPEO`);

--
-- Contraintes pour la table `type1`
--
ALTER TABLE `type1`
  ADD CONSTRAINT `type1_ibfk_1` FOREIGN KEY (`ID_RECETTE`) REFERENCES `recette` (`ID_RECETTE`),
  ADD CONSTRAINT `type1_ibfk_2` FOREIGN KEY (`Id_TYPER`) REFERENCES `typer` (`Id_TYPER`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;