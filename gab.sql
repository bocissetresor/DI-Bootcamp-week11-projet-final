-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 23 mars 2023 à 19:14
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gab`
--

-- --------------------------------------------------------

--
-- Structure de la table `absence`
--

CREATE TABLE `absence` (
  `id` int(11) NOT NULL,
  `id_etudiant` int(11) NOT NULL,
  `crn_horaire` varchar(255) NOT NULL,
  `type_absence` varchar(255) NOT NULL,
  `is_old` tinyint(1) NOT NULL DEFAULT 0,
  `module` varchar(255) DEFAULT NULL,
  `professeur` int(11) DEFAULT NULL,
  `date_absence` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `absence`
--

INSERT INTO `absence` (`id`, `id_etudiant`, `crn_horaire`, `type_absence`, `is_old`, `module`, `professeur`, `date_absence`) VALUES
(1, 1, '8-10', 'Absence justifiée', 1, 'programmation en c avancée', 7, NULL),
(3, 1, '8-10', 'Absence justifiée', 1, 'programmation en c avancée', 7, '2017-05-19'),
(4, 1, '8-10', 'Absence justifiée', 1, 'programmation en c avancée', 7, '2017-05-19'),
(5, 1, '8-10', 'Absence non-justifiée', 1, 'programmation web', 7, '2017-05-15'),
(6, 1, '8-10', 'Absence non-justifiée', 1, 'programmation web', 7, '2017-05-15'),
(11, 1, '8-10', 'Absence non-justifiée', 1, 'programmation web', 7, '2017-05-15'),
(12, 1, '8-10', 'Absence non-justifiée', 1, 'programmation web', 7, '2017-05-15'),
(13, 1, '8-10', 'Absence non-justifiée', 1, 'programmation web', 7, '2017-05-15'),
(14, 1, '8-10', 'Absence non-justifiée', 1, 'programmation web', 7, '2017-05-15'),
(15, 1, '8-10', 'Absence justifiée', 1, 'programmation en c avancée', 1, '2017-05-16'),
(16, 1, '8-10', 'Absence justifiée', 1, 'programmation en c avancée', 7, '0000-00-00'),
(17, 2, '8-10', 'Absence non-justifiée', 0, 'programmation en c avancée', 7, '0000-00-00'),
(18, 2, '8-10', 'Absence justifiée', 0, 'programmation en c avancée', 7, '0000-00-00'),
(19, 2, '8-10', 'Absence non-justifiée', 0, 'programmation en c avancée', 7, '0000-00-00'),
(20, 2, '8-10', 'Absence non-justifiée', 0, 'programmation en c avancée', 1, '0000-00-00'),
(21, 2, '8-10', 'Absence non-justifiée', 0, 'programmation en c avancée', 1, '0000-00-00'),
(22, 1, '13-15', 'Absence non-justifiée', 0, 'architectures des ordinateurs et  assembleur ', 7, '0000-00-00'),
(23, 1, '8-10', 'Absence non-justifiée', 0, 'programmation en c avancée', 7, '2017-05-14'),
(24, 5, '8-10', 'Absence non-justifiée', 0, 'programmation web', 13, '2023-03-16');

-- --------------------------------------------------------

--
-- Structure de la table `cni`
--

CREATE TABLE `cni` (
  `id` int(11) NOT NULL,
  `numero_piece` varchar(100) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `taille` varchar(20) NOT NULL,
  `sexe` varchar(50) NOT NULL,
  `date_naiss` date NOT NULL,
  `etablie_le` date NOT NULL,
  `fin_valide` date NOT NULL,
  `profession` varchar(100) NOT NULL,
  `nom_prenom_pere` varchar(255) NOT NULL,
  `nom_prenom_mere` varchar(255) NOT NULL,
  `photo` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `cni`
--

INSERT INTO `cni` (`id`, `numero_piece`, `nom`, `prenom`, `taille`, `sexe`, `date_naiss`, `etablie_le`, `fin_valide`, `profession`, `nom_prenom_pere`, `nom_prenom_mere`, `photo`) VALUES
(1, '123456789', 'Cissé', 'IB', '1.80', 'M', '2013-03-12', '2013-03-12', '2013-03-12', 'Chanteur', 'Cissé Iba', 'Cissé Ina', '/test.jpg'),
(2, '213456789', 'Toure', 'IB', '1.80', 'M', '2013-03-12', '2014-03-12', '2015-03-12', 'Chanteur', 'Toure Iba', 'Cissé Ina', '/test.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `contravention`
--

CREATE TABLE `contravention` (
  `id` int(11) NOT NULL,
  `numero_contravention` varchar(100) NOT NULL,
  `type_` varchar(150) NOT NULL,
  `description_` varchar(1000) NOT NULL,
  `immatriculation_vehicule` varchar(150) NOT NULL,
  `couleur_vehicule` varchar(100) NOT NULL,
  `marque_vehicule` varchar(150) NOT NULL,
  `numero_permis` varchar(100) NOT NULL,
  `ville` varchar(100) NOT NULL,
  `somme` int(11) NOT NULL,
  `date_` varchar(50) NOT NULL,
  `agent_verbalisateur` varchar(150) NOT NULL,
  `service_agent_verbalisateur` varchar(150) NOT NULL,
  `effet` varchar(255) NOT NULL,
  `statut` varchar(50) NOT NULL DEFAULT 'NON-PAYER'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `contravention`
--

INSERT INTO `contravention` (`id`, `numero_contravention`, `type_`, `description_`, `immatriculation_vehicule`, `couleur_vehicule`, `marque_vehicule`, `numero_permis`, `ville`, `somme`, `date_`, `agent_verbalisateur`, `service_agent_verbalisateur`, `effet`, `statut`) VALUES
(1, 'TEST', 'TEST', 'TEST', 'TEST', 'TEST', 'TEST', 'TEST', 'TEST', 11, 'TEST', 'TEST', 'TEST', 'TEST', 'NON-PAYER'),
(2, '1679450407', 'vitesse', 'fds', '12AEZ', 'Verte', 'X5', '12AEEZ', 'Bouake', 10000, '22/03/2023', '4512333', 'Centre automatisé de constatation des infractions routières', 'Cette infraction entraine un retraire de 1 point(s) du permis de conduire. Une fois votre amende payée, vous recevrez un message du service du Fichier national des permis de conduire vous informant de ce retraire de point', 'NON-PAYER'),
(3, '1679498582', 'souci_assurance', 'oki', '12AEZ', 'Verte', 'X5', '12AEEZ', 'Bouake', 10000, '22/03/2023', '3181686', 'Centre automatisé de constatation des infractions routières', 'Cette infraction entraine un retraire de 1 point(s) du permis de conduire. Une fois votre amende payée, vous recevrez un message du service du Fichier national des permis de conduire vous informant de ce retraire de point', 'NON-PAYER'),
(4, '1679499852', 'souci_permis', 'd\'accord', '12AEZ', 'Verte', 'X5', '12AEEZ', 'Bouake', 10000, '22/03/2023', '233559', 'Centre automatisé de constatation des infractions routières', 'Cette infraction entraine un retraire de 1 point(s) du permis de conduire. Une fois votre amende payée, vous recevrez un message du service du Fichier national des permis de conduire vous informant de ce retraire de point', 'NON-PAYER'),
(5, '1679527874', 'souci_permis', 'neant', '12AZE', 'Verte', 'X5', '12AEEZ', 'Bouake', 10000, '23/03/2023', '3443773', 'Centre automatisé de constatation des infractions routières', 'Cette infraction entraine un retraire de 1 point(s) du permis de conduire. Une fois votre amende payée, vous recevrez un message du service du Fichier national des permis de conduire vous informant de ce retraire de point', 'PAYER'),
(6, '1679529617', 'souci_permis', 'neant', '12AZE', 'Verte', 'X5', '12AEEZ', 'Bouake', 10000, '23/03/2023', '8359214', 'Centre automatisé de constatation des infractions routières', 'Cette infraction entraine un retraire de 1 point(s) du permis de conduire. Une fois votre amende payée, vous recevrez un message du service du Fichier national des permis de conduire vous informant de ce retraire de point', 'NON-PAYER'),
(7, '1679531830', 'souci_assurance', 'neant', '12AEZ', 'Verte', 'X5', '12AEEZ', 'Bouake', 10000, '23/03/2023', '8141625', 'Centre automatisé de constatation des infractions routières', 'Cette infraction entraine un retraire de 1 point(s) du permis de conduire. Une fois votre amende payée, vous recevrez un message du service du Fichier national des permis de conduire vous informant de ce retraire de point', 'PAYER'),
(8, '1679574804', 'vitesse', 'Bien', '12AEZ', 'Verte', 'X5', '12AEEZ', 'Bouake', 10000, '23/03/2023', '9706557', 'Centre automatisé de constatation des infractions routières', 'Cette infraction entraine un retraire de 1 point(s) du permis de conduire. Une fois votre amende payée, vous recevrez un message du service du Fichier national des permis de conduire vous informant de ce retraire de point', 'NON-PAYER'),
(9, '1679575596', 'souci_permis', 'Neant', '12AEZ', 'Verte', 'X5', '12AEEZ', 'Abidjan', 10000, '23/03/2023', '9532898', 'Centre automatisé de constatation des infractions routières', 'Cette infraction entraine un retraire de 1 point(s) du permis de conduire. Une fois votre amende payée, vous recevrez un message du service du Fichier national des permis de conduire vous informant de ce retraire de point', 'NON-PAYER'),
(10, '1679577292', 'souci_assurance', 'Neant', '12AEZ', 'Verte', 'X5', '12AEEZ', 'Bouake', 10000, '23/03/2023', '3570508', 'Centre automatisé de constatation des infractions routières', 'Cette infraction entraine un retraire de 1 point(s) du permis de conduire. Une fois votre amende payée, vous recevrez un message du service du Fichier national des permis de conduire vous informant de ce retraire de point', 'NON-PAYER'),
(11, '1679587691', 'souci_assurance', 'neqnt', '12AEZ', 'Verte', 'X5', '12AEEZ', 'Bouake', 10000, '23/03/2023', '7581326', 'Centre automatisé de constatation des infractions routières', 'Cette infraction entraine un retraire de 1 point(s) du permis de conduire. Une fois votre amende payée, vous recevrez un message du service du Fichier national des permis de conduire vous informant de ce retraire de point', 'NON-PAYER');

-- --------------------------------------------------------

--
-- Structure de la table `element_module`
--

CREATE TABLE `element_module` (
  `id` int(11) NOT NULL,
  `module` int(11) NOT NULL,
  `intitule` varchar(255) NOT NULL,
  `proportion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `element_module`
--

INSERT INTO `element_module` (`id`, `module`, `intitule`, `proportion`) VALUES
(1, 1, 'Algèbre', '');

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

CREATE TABLE `etudiant` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `cin` varchar(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `cne` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `date_naissance` date NOT NULL,
  `adresse` text NOT NULL,
  `lieu_naissance` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `etudiant`
--

INSERT INTO `etudiant` (`id`, `id_user`, `cin`, `nom`, `cne`, `prenom`, `date_naissance`, `adresse`, `lieu_naissance`, `telephone`, `email`) VALUES
(1, 8, 'LE20225', 'Ahmed', '1122558899', 'Saleh', '1996-02-11', 'Martil', 'Martil', '06666666', 'ahmedsaleh@gmail.com'),
(2, 9, 'BJ430880', 'ADIB', '2222222', 'Houssam', '2017-05-25', 'Hello World', 'Casablanca', '+212655552785', 'adibhousam@gmail.com'),
(3, 10, '123456789', 'Leila', '222222222', 'Benis', '2017-05-17', 'adress rue appart', 'lieu de naissance', '0655555555', 'Leila@gmai.com'),
(4, 11, 'ss', 'professeur', 'ss', 'ss', '2018-02-02', 'ss', 'ss', 'ss', 'ss@ss'),
(5, 12, '123456789', 'Yaya', '123456789', 'Cissé', '2010-12-27', 'Marcory/Abidjan', 'bke', '+225 87 58 62 22', 'bocissetresor@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `module`
--

CREATE TABLE `module` (
  `id` int(11) NOT NULL,
  `nom_module` varchar(255) NOT NULL,
  `nature` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `module`
--

INSERT INTO `module` (`id`, `nom_module`, `nature`) VALUES
(2, 'programmation en c avancée', 'Module scientifique et technique'),
(3, 'programmation web', 'Module scientifique et technique'),
(4, 'architectures des ordinateurs et  assembleur ', 'Module scientifique et technique'),
(5, 'compilation et théorie des langages', 'Module scientifique et technique'),
(6, 'système d\'exploitation', 'Module scientifique et technique');

-- --------------------------------------------------------

--
-- Structure de la table `paiement`
--

CREATE TABLE `paiement` (
  `id` int(11) NOT NULL,
  `montant` int(11) NOT NULL,
  `numero_piece` varchar(100) NOT NULL,
  `date_paiement` varchar(50) NOT NULL,
  `statut` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `paiement`
--

INSERT INTO `paiement` (`id`, `montant`, `numero_piece`, `date_paiement`, `statut`) VALUES
(1, 5000, 'C0142 4548 45575', '22/03/2023 16:16:11', 'ECHEC'),
(2, 15000, 'C0142 4548 45575', '22/03/2023 16:16:11', 'SUCCES'),
(3, 5, 'C0142 4548 45575', '22/03/2023 16:55:52', 'SUCCES'),
(4, 20000, 'C0142 4548 45575', '22/03/2023 16:55:53', 'SUCCES'),
(5, 10000, 'C0142 4548 45575', '23/03/2023 01:38:20', 'SUCCES'),
(6, 5, 'C0142 4548 45575', '23/03/2023 01:38:20', 'SUCCES'),
(7, 5, 'C0142 4548 45575', '23/03/2023 01:42:39', 'SUCCES'),
(8, 5, 'C0142 4548 45575', '23/03/2023 01:42:39', 'ECHEC'),
(9, 5, 'C0142 4548 45575', '23/03/2023 02:01:52', 'SUCCES'),
(10, 5, 'C0142 4548 45575', '23/03/2023 02:01:52', 'SUCCES'),
(11, 5, 'C0142 4548 45575', '23/03/2023 02:05:35', 'SUCCES'),
(12, 5, 'C0142 4548 45575', '23/03/2023 02:05:35', 'SUCCES'),
(13, 5, 'C0142 4548 45575', '23/03/2023 02:10:01', 'SUCCES'),
(14, 10000, 'C0142 4548 45575', '23/03/2023 02:10:01', 'SUCCES'),
(15, 5, 'C0142 4548 45575', '23/03/2023 02:10:47', 'SUCCES'),
(16, 5000, 'C0142 4548 45575', '23/03/2023 02:10:48', 'SUCCES'),
(17, 5, 'C0142 4548 45575', '23/03/2023 02:13:45', 'SUCCES'),
(18, 5, 'C0142 4548 45575', '23/03/2023 02:15:58', 'SUCCES'),
(19, 5000, 'C0142 4548 45575', '23/03/2023 02:15:58', 'SUCCES'),
(20, 5, 'C0142 4548 45575', '23/03/2023 13:52:22', 'SUCCES'),
(21, 5, 'C0142 4548 45575', '23/03/2023 13:52:22', 'SUCCES'),
(22, 5, 'C0142 4548 45575', '23/03/2023 14:16:55', 'SUCCES'),
(23, 5, 'C0142 4548 45575', '23/03/2023 14:16:56', 'SUCCES'),
(24, 5, 'C0142 4548 45575', '23/03/2023 17:09:10', 'SUCCES'),
(25, 5, 'C0142 4548 45575', '23/03/2023 17:09:11', 'SUCCES');

-- --------------------------------------------------------

--
-- Structure de la table `passeport`
--

CREATE TABLE `passeport` (
  `id` int(11) NOT NULL,
  `numero_piece` varchar(100) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `taille` varchar(20) NOT NULL,
  `sexe` varchar(50) NOT NULL,
  `date_naiss` date NOT NULL,
  `etablie_le` date NOT NULL,
  `fin_valide` date NOT NULL,
  `profession` varchar(100) NOT NULL,
  `nom_prenom_pere` varchar(255) NOT NULL,
  `nom_prenom_mere` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `permis`
--

CREATE TABLE `permis` (
  `id` int(11) NOT NULL,
  `numero_piece` varchar(100) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `taille` varchar(20) NOT NULL,
  `groupe_sanguin` varchar(50) NOT NULL,
  `sexe` varchar(50) NOT NULL,
  `categorie` varchar(255) NOT NULL,
  `date_naiss` date NOT NULL,
  `etablie_le` date NOT NULL,
  `fin_valide` date NOT NULL,
  `profession` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `professeur`
--

CREATE TABLE `professeur` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL DEFAULT 0,
  `som` int(7) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `professeur`
--

INSERT INTO `professeur` (`id`, `id_user`, `som`, `nom`, `prenom`, `email`, `telephone`) VALUES
(1, 7, 7777777, 'Yacine', 'Lyounssi', 'yacine@gmail.com', '0666552288'),
(2, 13, 1111111, 'Test', 'Test', 'bocissetresor@gmail.com', '+225 87 58 62 22');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id` int(11) NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `type` varchar(255) DEFAULT 'etudiant'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `login`, `password`, `type`) VALUES
(1, 'admin', 'password', 'admin'),
(7, 'professeur', 'password', 'professeur'),
(8, 'etudiant', 'password', 'etudiant'),
(9, 'mehdiaarab', 'password', 'etudiant'),
(10, 'adib', '123456', 'etudiant'),
(11, 'professeur', 'ss', 'etudiant'),
(12, 'bocissetresor', '17-cisse', 'etudiant'),
(13, 'bocissetresor1', '17-cisse', 'professeur');

-- --------------------------------------------------------

--
-- Structure de la table `verification`
--

CREATE TABLE `verification` (
  `id` int(11) NOT NULL,
  `numero_piece` varchar(100) NOT NULL,
  `statut` varchar(50) NOT NULL,
  `date_verification` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `verification`
--

INSERT INTO `verification` (`id`, `numero_piece`, `statut`, `date_verification`) VALUES
(1, 'dd', 'numero_piece Invalid !', '23/03/2023 02:28:05'),
(2, 'sss', 'numero_piece Invalid !', '23/03/2023 02:29:49'),
(3, 'sss', 'numero_piece Invalid !', '23/03/2023 02:30:40'),
(4, '123456789', 'Cette carte est Valide', '23/03/2023 02:30:47'),
(5, '123456789', 'Cette carte est Valide', '23/03/2023 12:59:40'),
(6, 'dd', 'numero_piece Invalid !', '23/03/2023 12:59:51'),
(7, '123456789', 'Cette carte est Valide', '23/03/2023 14:13:33'),
(8, '18574821', 'numero_piece Invalid !', '23/03/2023 14:13:48'),
(9, '123456789', 'Cette carte est Valide', '23/03/2023 17:07:41'),
(10, '147854144', 'numero_piece Invalid !', '23/03/2023 17:08:01');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `absence`
--
ALTER TABLE `absence`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_etudiant` (`id_etudiant`);

--
-- Index pour la table `contravention`
--
ALTER TABLE `contravention`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `element_module`
--
ALTER TABLE `element_module`
  ADD PRIMARY KEY (`id`),
  ADD KEY `module` (`module`);

--
-- Index pour la table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Index pour la table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `paiement`
--
ALTER TABLE `paiement`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `professeur`
--
ALTER TABLE `professeur`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `verification`
--
ALTER TABLE `verification`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `absence`
--
ALTER TABLE `absence`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pour la table `contravention`
--
ALTER TABLE `contravention`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `element_module`
--
ALTER TABLE `element_module`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `etudiant`
--
ALTER TABLE `etudiant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `module`
--
ALTER TABLE `module`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `paiement`
--
ALTER TABLE `paiement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT pour la table `professeur`
--
ALTER TABLE `professeur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `verification`
--
ALTER TABLE `verification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
