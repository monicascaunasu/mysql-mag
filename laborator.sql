-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Gazdă: 127.0.0.1
-- Timp de generare: apr. 20, 2020 la 02:05 PM
-- Versiune server: 10.4.11-MariaDB
-- Versiune PHP: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Bază de date: `laborator`
--
-- CREATE DATABASE IF NOT EXISTS `laborator` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
-- USE `laborator`;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `cos`
--

DROP TABLE IF EXISTS `cos`;
CREATE TABLE `cos` (
  `email` varchar(255) DEFAULT NULL,
  `pret` int(11) DEFAULT NULL,
  `cantitate` int(11) DEFAULT NULL,
  `produs` varchar(255) DEFAULT NULL,
  `imgLoc` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Eliminarea datelor din tabel `cos`
--

INSERT INTO `cos` (`email`, `pret`, `cantitate`, `produs`, `imgLoc`) VALUES
('root@toor.com', 2000, 4, 'product2', 'img/gallery/gallery-2.jpg'),
('root@toor.com', 1500, 3, 'product1', 'img/gallery/gallery-1.jpg'),
('ce97@yahoo.com', 1500, 3, 'product1', 'img/gallery/gallery-1.jpg'),
('ce97@yahoo.com', 2000, 2, 'product2', 'img/gallery/gallery-2.jpg');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `nume` varchar(255) DEFAULT NULL,
  `prenume` varchar(255) DEFAULT NULL,
  `telefon` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `parola` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Eliminarea datelor din tabel `login`
--

INSERT INTO `login` (`id`, `nume`, `prenume`, `telefon`, `email`, `parola`) VALUES
(1, 'root', 'toor', '07352341', 'root@toor.com', 'toor'),
(2, 'corlan ', 'eduard', '021321321', 'ce97@yahoo.com', 'toor');

--
-- Indexuri pentru tabele eliminate
--

--
-- Indexuri pentru tabele `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pentru tabele eliminate
--

--
-- AUTO_INCREMENT pentru tabele `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
