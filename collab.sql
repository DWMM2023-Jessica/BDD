-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 29 août 2023 à 15:40
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `jessica`
--

-- --------------------------------------------------------

--
-- Structure de la table `collab`
--

CREATE TABLE `collab` (
  `id_style` int(11) NOT NULL,
  `nom_collab` varchar(100) DEFAULT NULL,
  `logo_collab` varchar(300) DEFAULT NULL,
  `visibilite_collab` tinyint(1) NOT NULL DEFAULT 0,
  `id_collab` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `collab`
--

INSERT INTO `collab` (`id_style`, `nom_collab`, `logo_collab`, `visibilite_collab`, `id_collab`) VALUES
(1, 'Tollens', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAXoAAACFCAMAAABizcPaAAAAnFBMVEX///8AOl0AIE7t7/AAL1YAN1sANFkAMVdceY+On60AKVKGlKKBl6dMbYUANl0vWXUsT2x2jJ5wh5nAzdQAJlEAHEurusQIRWcAKFIfRmXZ4eZBZX9JY3uZqbUAIk7z9vgAF0lnf5MAD0a2wsvO1929yNDK1Nvl6u48XHd7kqOTpbMTSWkAP2IAAD6er7siTm0AADuDn7BUcYdjeY7vGN0iAAAKCklEQV', 1, 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `collab`
--
ALTER TABLE `collab`
  ADD PRIMARY KEY (`id_style`),
  ADD KEY `FK_collab_id_collab` (`id_collab`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `collab`
--
ALTER TABLE `collab`
  MODIFY `id_style` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `collab`
--
ALTER TABLE `collab`
  ADD CONSTRAINT `FK_collab_id_collab` FOREIGN KEY (`id_collab`) REFERENCES `style_collab` (`id_collab`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
