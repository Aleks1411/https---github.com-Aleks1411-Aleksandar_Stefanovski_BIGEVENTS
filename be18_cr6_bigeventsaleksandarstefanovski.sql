-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2023 at 10:48 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `be18_cr6_bigeventsaleksandarstefanovski`
--
CREATE DATABASE IF NOT EXISTS `be18_cr6_bigeventsaleksandarstefanovski` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `be18_cr6_bigeventsaleksandarstefanovski`;

-- --------------------------------------------------------

--
-- Table structure for table `big_events`
--

CREATE TABLE `big_events` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date_time` datetime NOT NULL,
  `description` varchar(500) NOT NULL,
  `image` varchar(255) NOT NULL,
  `capacity` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(25) NOT NULL,
  `url_events` varchar(255) NOT NULL,
  `fk_type` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `big_events`
--

INSERT INTO `big_events` (`id`, `name`, `date_time`, `description`, `image`, `capacity`, `email`, `phone`, `url_events`, `fk_type`, `address`) VALUES
(1, 'VIENNA GIN FESTIVAL 2023', '2023-04-12 14:00:00', 'Im Mai 2023 laden wir zur bereits 4. Auflage des legendären VIENNA GIN FESTIVALS ins ehrwürdige Semperdepot im Herzen Wiens ein.\r\n\r\nNeben klassischen Verkostungen und einzigartigen Masterclasses, geben wir auch diesmal in gewohnter Manier den besten nationalen und internationalen Gins eine eigene Bühne und werden mit zusätzlichem Programm und Specials überraschen', 'https://www.viennaginfestival.at/wp-content/uploads/2023/01/MG_8598.jpg', 500, 'events@mail.com', '+43 1 890 54 87 – 10', 'https://www.viennaginfestival.at/', 'Exibition', 'Brehmstraße 12/4, 1110 Wien'),
(2, 'Daniel & Michael Barenboim', '2023-04-27 20:00:00', 'Daniel Barenboim, piano\r\nMichael Barenboim, violin\r\nKian Soltani, violoncello\r\nLudwig van Beethoven:\r\nTrio for piano, violin and violoncello in E flat major, op. 1/1\r\nTrio for Piano, Violin and Violoncello in C minor, op. 1/3\r\nTrio for piano, violin and violoncello G major, op. 1/2\r\nTrio for piano, violin and violoncello D major, op. 70/1, \"Ghost Trio\"', 'https://events.wien.info/media/full/MV_GrosserSaal1_1.jpg', 300, 'events@mail.com', '+43 1 505 81 90', 'https://events.wien.info/en/15kj/daniel-michael-barenboim-kian-soltani/', 'Opera', 'Grosser Saal\r\nMusikvereinsplatz 1\r\n1010 Wien'),
(3, 'Der fliegende Holländer', '2023-05-24 10:28:26', 'After invoking the devil during a perilous journey around a headland, the Flying Dutchman is condemned to a restless odyssey and an eternal search – unless he can find a woman whose unconditional loyalty will bring him salvation from his undead existence. But he can only go ashore to find his soulmate once every seven years …', 'https://events.wien.info/media/full/40558_1.jpg', 500, 'events@mail.com', '+43 1 513 1 513 ', 'https://events.wien.info/en/w47/der-fliegende-hollander/', 'Opera', 'Währinger Straße 78\r\n1090 Wien'),
(4, 'The Hunchback of Notre Dame', '2023-04-25 20:30:00', 'Austrian premiere of Disney\'s \"The Hunchback of Notre Dame\": The story about Quasimodo and the beautiful Esmeralda touches young and old. All Disney songs from the film can also be heard in the musical.\r\n', 'https://events.wien.info/media/full/Gl%C3%B6ckner_von_NotreDame.jpg', 400, 'events@mail.com', '+43 1 588 85', 'https://events.wien.info/en/14p4/the-hunchback-of-notre-dame/', 'Opera', 'Seilerstätte 9\r\n1010 Wien'),
(5, 'Wie es euch gefällt', '2023-05-22 17:00:00', 'by William Shakespeare\r\n\r\nDirected by Tina Lanik\r\n\r\nPremiere: 17 December, 2022\r\n\r\nonly in German!', 'https://events.wien.info/media/full/40760.jpg', 300, 'events@mail.com', '+43 1 505 81 90', 'https://events.wien.info/en/15tu/wie-es-euch-gefallt/', 'Opera', 'Universitätsring 2\r\n1010 Wien'),
(6, 'Manon', '2023-05-13 19:00:00', 'With the world premiere of Manon in 1884, Jules Massenet was able to celebrate what is probably the greatest triumph of his career as a composer – both in his home country of France and abroad. What impressed the audience from the very beginning was the variety of musical forms and textures: it abruptly switches from mass scenes to sections reminiscent of a chamber play, where each scene, however brief, is given its own, multi-faceted mood between genre painting, comedy and sensitive tragedy.', 'https://events.wien.info/media/full/oper.jpg', 600, 'events@mail.com', '+43 1 505 81 90', 'https://events.wien.info/en/12c/manon/', 'Opera', 'Vienna State Opera \r\n(Wiener Staatsoper)\r\nOpernring 2\r\n1010 Wien'),
(7, 'Avril Lavigne', '2023-04-27 20:00:00', 'Love Sux - Europe Tour 2023', 'https://events.wien.info/media/full/151_WienerStadthalle_HalleD_credit-BildagenturZolles_YZ_2373_edit_1.jpg', 1000, 'events@mail.com', '+43 1 513 1 513 (tickets)', 'https://events.wien.info/en/162h/avril-lavigne/', 'Concert', 'Vienna Stadthalle\r\nHalle D\r\nRoland-Rainer-Platz 1\r\n1150 Wien'),
(8, 'Vienna Philharmonic Orchestra', '2023-04-30 19:30:00', 'Vienna Philharmonic Orchestra\r\nConductor: Jakub Hrůša\r\nDaniil Trifonov, piano\r\nLeoš Janáček: Overture \"Zarlivost\r\nSergei Prokofiev: Concerto for Piano and Orchestra No. 3 in C major, op. 26\r\nDmitri Shostakovich: Symphony No. 5, op. 47', 'https://events.wien.info/media/full/MV_GrosserSaal1_1.jpg', 500, 'edvents@gmail.com', '+43 1 505 81 90', 'https://events.wien.info/en/15l5/vienna-philharmonic-orchestra/', 'Concert', 'Musikverein\r\nGrosser Saal\r\nMusikvereinsplatz 1\r\n1010 Wien'),
(10, 'Van Morrison', '2023-04-18 17:00:00', 'Van Morrison - singer, songwriter, poet, author and multi-instrumentalist - is considered one of the most important artists of our time.\nHe was born in Belfast in 1945 and already as a child listened to his father\'s record collection, which included mainly blues, country and gospel and had a lasting impact on his style. At the tender age of 13, Van Morrison was already part of several bands as a singer, guitarist and saxophonist. In 1964, he formed.', 'https://events.wien.info/media/full/KHGrosserSaalNeu.jpg', 200, 'events@mail.com', '+4355 555 555', 'https://events.wien.info/en/162j/van-morrison/', 'Opera', 'Vienna Konzerthaus\r\nGrosser Saal\r\nLothringerstraße 20\r\n1030 Wien');

-- --------------------------------------------------------

--
-- Table structure for table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20230414075014', '2023-04-15 10:03:44', 73),
('DoctrineMigrations\\Version20230414162713', '2023-04-15 10:03:44', 17);

-- --------------------------------------------------------

--
-- Table structure for table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `big_events`
--
ALTER TABLE `big_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `big_events`
--
ALTER TABLE `big_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
