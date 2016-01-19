-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Gegenereerd op: 19 jan 2016 om 00:47
-- Serverversie: 5.6.26
-- PHP-versie: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `datavis`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `cards`
--

CREATE TABLE IF NOT EXISTS `cards` (
  `id` int(11) NOT NULL,
  `fullname` text NOT NULL,
  `suit` text NOT NULL,
  `rank` varchar(6) NOT NULL,
  `occurance` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `cards`
--

INSERT INTO `cards` (`id`, `fullname`, `suit`, `rank`, `occurance`) VALUES
(2, 'Jack of Clubs', 'Clubs', 'Jack', 96090),
(3, '5 of Clubs', 'Clubs', '5', 96109),
(4, '2 of Clubs', 'Clubs', '2', 96613),
(5, '7 of Clubs', 'Clubs', '7', 96347),
(6, 'Queen of Clubs', 'Clubs', 'Queen', 96135),
(7, '4 of Clubs', 'Clubs', '4', 96411),
(8, 'King of Clubs', 'Clubs', 'King', 96211),
(9, '10 of Clubs', 'Clubs', '10', 95625),
(10, '8 of Clubs', 'Clubs', '8', 96083),
(11, '3 of Clubs', 'Clubs', '3', 96236),
(12, 'Ace of Clubs', 'Clubs', 'Ace', 96213),
(13, '9 of Clubs', 'Clubs', '9', 95618),
(14, '6 of Clubs', 'Clubs', '6', 96325),
(15, 'Jack of Diamonds', 'Diamonds', 'Jack', 96431),
(16, '5 of Diamonds', 'Diamonds', '5', 96042),
(17, '2 of Diamonds', 'Diamonds', '2', 96793),
(18, '7 of Diamonds', 'Diamonds', '7', 96378),
(19, 'Queen of Diamonds', 'Diamonds', 'Queen', 96175),
(20, '4 of Diamonds', 'Diamonds', '4', 96357),
(21, 'King of Diamonds', 'Diamonds', 'King', 96698),
(22, '10 of Diamonds', 'Diamonds', '10', 96646),
(23, '8 of Diamonds', 'Diamonds', '8', 96160),
(24, '3 of Diamonds', 'Diamonds', '3', 96221),
(25, 'Ace of Diamonds', 'Diamonds', 'Ace', 95907),
(26, '9 of Diamonds', 'Diamonds', '9', 96177),
(27, '6 of Diamonds', 'Diamonds', '6', 95721),
(28, 'Jack of Hearts', 'Hearts', 'Jack', 96202),
(29, '5 of Hearts', 'Hearts', '5', 95932),
(30, '2 of Hearts', 'Hearts', '2', 96448),
(31, '7 of Hearts', 'Hearts', '7', 96418),
(32, 'Queen of Hearts', 'Hearts', 'Queen', 96008),
(33, '4 of Hearts', 'Hearts', '4', 95834),
(34, 'King of Hearts', 'Hearts', 'King', 96036),
(35, '10 of Hearts', 'Hearts', '10', 96116),
(36, '8 of Hearts', 'Hearts', '8', 96398),
(37, '3 of Hearts', 'Hearts', '3', 96423),
(38, 'Ace of Hearts', 'Hearts', 'Ace', 96260),
(39, '9 of Hearts', 'Hearts', '9', 96076),
(40, '6 of Hearts', 'Hearts', '6', 96485),
(41, 'Jack of Spades', 'Spades', 'Jack', 96106),
(42, '5 of Spades', 'Spades', '5', 95846),
(43, '2 of Spades', 'Spades', '2', 95464),
(44, '7 of Spades', 'Spades', '7', 96344),
(45, 'Queen of Spades', 'Spades', 'Queen', 96221),
(46, '4 of Spades', 'Spades', '4', 96068),
(47, 'King of Spades', 'Spades', 'King', 95574),
(48, '10 of Spades', 'Spades', '10', 96059),
(49, '8 of Spades', 'Spades', '8', 95969),
(50, '3 of Spades', 'Spades', '3', 95905),
(51, 'Ace of Spades', 'Spades', 'Ace', 96270),
(52, '9 of Spades', 'Spades', '9', 95902),
(53, '6 of Spades', 'Spades', '6', 95914);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pokerhand`
--

CREATE TABLE IF NOT EXISTS `pokerhand` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `Description` text NOT NULL,
  `Occurance` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `pokerhand`
--

INSERT INTO `pokerhand` (`id`, `name`, `Description`, `Occurance`) VALUES
(1, 'Four of a kind', 'four of the same rank in hand', 230),
(2, 'Three of a kind', 'Three of the same rank', 21121),
(3, 'Full house', 'a pair and a three of a kind.', 1424),
(4, 'Royal straight flush', 'a straight of Ace, King, Queen, Jack and Ten of the same suit', 3),
(5, 'Pair', '2 cards of the same rank', 422498),
(6, 'Straight', '5 consecutive rank cards', 3885),
(7, 'Straight flush', '5 consecutive rank cards of the same suit', 12),
(8, 'Nothing', 'nothing in hand', 501209),
(9, 'Flush', '5 cards of the same suit', 1996),
(10, 'two Pairs', 'have two different pairs (see pair).', 47622);

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `pokerhand`
--
ALTER TABLE `pokerhand`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `cards`
--
ALTER TABLE `cards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT voor een tabel `pokerhand`
--
ALTER TABLE `pokerhand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
