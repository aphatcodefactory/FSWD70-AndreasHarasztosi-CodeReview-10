-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 12. Jul 2019 um 18:22
-- Server-Version: 10.1.38-MariaDB
-- PHP-Version: 7.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `cr10_andreas_harasztosi_biglibrary`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `author`
--

CREATE TABLE `author` (
  `authorID` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `surname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `author`
--

INSERT INTO `author` (`authorID`, `name`, `surname`) VALUES
(1, 'Andreas', 'Winkelmann'),
(2, 'Pierre', 'Martin'),
(3, 'Romy', 'Hausmann'),
(4, 'Clint', 'Eastwood'),
(5, 'Paul', 'Feig'),
(6, 'Aneesh', 'Chaganty'),
(7, 'Reinhard', 'Mey'),
(8, 'Johnny', 'Cash'),
(9, 'Kiefer', 'Sutherland'),
(10, 'Ava', 'Reed');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `media`
--

CREATE TABLE `media` (
  `mediaID` int(11) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `fk_authorID` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `discription` text,
  `fk_publisherID` int(11) NOT NULL,
  `type` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `img_link` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `media`
--

INSERT INTO `media` (`mediaID`, `isbn`, `fk_authorID`, `title`, `discription`, `fk_publisherID`, `type`, `status`, `img_link`) VALUES
(1, '978-3-499-27517-3', 1, 'Die Lieferung', 'Der neue Thriller von Bestsellerautor Andreas Winkelmann: Seit Wochen hat Viola das Gefühl, verfolgt zu werden. Es ist, als klebe ein Schatten an ihr – immer, wenn sie sich umdreht, ist er verschwunden. Bildet sie sich das nur ein? \r\nIhre Freundin ist die einzige, die ihr glaubt. Doch dann meldet sie sich plötzlich nicht mehr.', 1, 'book', 0, 'https://assets.thalia.media/img/140702061-00-00.jpg'),
(2, '978-3-426-52198-4', 2, 'Madame le Commissaire und der tote Liebhaber', 'Ein neuer Fall für die provenzalische Kommissarin Isabelle Bonnet und ihren Assistenten Apollinaire vom Bestseller-Autor Pierre Martin. \r\nBand 6 der erfolgreichen Krimi-Reihe, die den Leser in das malerische Provence-Dorf Fragolin führt', 2, 'book', 0, 'https://assets.thalia.media/img/140397032-00-00.jpg'),
(3, '978-3-423-26229-3', 3, 'Liebes Kind', NULL, 3, 'book', 0, 'https://assets.thalia.media/img/140723361-00-00.jpg'),
(4, '5051890318169', 4, 'The Mule', 'Eastwood spielt Earl Stone, einen Mann in seinen Achtzigern, der – hoch verschuldet und allein – vor der Zwangsvollstreckung seines Unternehmens steht, als er ein Jobangebot erhält, bei dem er lediglich Auto fahren soll. Doch ohne es zu wissen, hat Earl als Drogenkurier für ein mexikanisches Kartell angeheuert. Er macht seinen Job gut – sogar so gut, dass seine Fracht immer wertvoller wird und er einem Aufpasser des Kartells zugeteilt wird.', 4, 'DVD', 0, 'https://assets.thalia.media/img/141630618-00-00.jpg'),
(5, '4006680089546', 5, 'Nur ein kleiner Gefallen', 'Ist es wirklich Freundschaft, was die unscheinbare und mäßig erfolgreiche Mom-Bloggerin Stephanie (Anna Kendrick) und die extravagante Mode-PR-Chefin Emily (Blake Lively) miteinander verbindet oder kommt Emily die alleinerziehende Stephanie nur gelegen, wenn sich ihr übervoller Terminkalender mal wieder überschlägt?', 5, 'DVD', 0, 'https://assets.thalia.media/img/140585174-00-00.jpg'),
(6, '4030521754188', 6, 'Searching', 'Nachdem die 16-jährige Tochter von David Kim (JOHN CHO) spurlos verschwindet, wird eine örtliche Untersuchung eingeleitet und Kriminalkommissarin Rosemary Vick (DEBRA MESSING) dem Fall zugeteilt. Als es 37 Stunden später immer noch kein Lebenszeichen von Margot (MICHELLE LA) gibt, beschließt David, am einzigen Ort zu suchen, an dem bisher noch keiner nachgesehen hat – dort, wo heutzutage alle Geheimnisse aufbewahrt werden: Er durchsucht den Laptop seiner Tochter.', 6, 'DVD', 0, 'https://assets.thalia.media/img/139574248-00-00.jpg'),
(7, '0602567268932', 7, 'Mr. Lee', '\"Ich möchte singen bis Freund Hein mich holt\", antwortete Reinhard Mey in einem Interview zur Tournee des Jahres 2017. Und so stand er wieder auf der Bühne, der Liedermacher und Geschichtenerzähler Reinhard Mey, der wie am Beginn seiner Karriere ganz allein, nur von seinem Gitarrenspiel begleitet von Freude und Hoffnung, von Liebe und Zorn, von Glück und Schmerz singt.', 7, 'CD', 0, 'https://assets.thalia.media/img/115098233-00-00.jpg'),
(8, '0602498878507', 8, 'Ring Of Fire: The Legend Of Johnny Cash Vol.1', NULL, 8, 'CD', 0, 'https://assets.thalia.media/img/11354484-00-00.jpg'),
(9, '4050538490473', 9, 'Reckless & Me (Ltd.Signed Edition)', NULL, 9, 'CD', 0, 'https://assets.thalia.media/img/142983231-00-00.jpg'),
(10, '978-3-7641-7089-9', 10, 'Alles. Nichts. Und ganz viel dazwischen', 'In jeder Dunkelheit brennt ein Licht. Man muss es nur finden! \r\n\r\nDer Abschluss. So viele Dinge, die zu tun sind. \r\n\r\nUnd danach? Ein Studium? Eine Ausbildung? Reisen? \r\n\r\nLeni ist ein normales und glückliches Mädchen voller Träume. Bis ein Moment alles verändert und etwas in ihr aus dem Gleichgewicht gerät. Es beginnt mit zu vielen Gedanken und wächst zu Übelkeit, Panikattacken, Angst vor der Angst. All das ist plötzlich da und führt zu einer Diagnose, die Leni zu zerbrechen droht. Sie weiß, sie muss Hilfe annehmen, aber sie verliert Tag um Tag mehr Hoffnung. Nichts scheint zu funktionieren, keine Therapie, keine Medikation. Bis sie Matti trifft, der ein ganz anderes Päckchen zu tragen hat, und ihn auf eine Reise begleitet, die sie nie antreten wollte ...', 10, 'book', 0, 'https://assets.thalia.media/img/139973621-00-00.jpg');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `publisher`
--

CREATE TABLE `publisher` (
  `publisherID` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `size` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `publisher`
--

INSERT INTO `publisher` (`publisherID`, `name`, `address`, `size`) VALUES
(1, 'Rororo', 'Rosengasse 24\r\n1040 Wien\r\nAustria', 'medium'),
(2, 'Knaur Taschenbuch', 'Getreidegasse 5\r\n5020 Salzburg\r\nAustria', 'small'),
(3, 'dtv', 'Zuritterstraße 175\r\n4020 Linz\r\nAustria', 'big'),
(4, 'Warner Home Video', 'Superroad 256\r\n6544544 Los Angeles\r\nCalifornia/USA\r\n', 'big'),
(5, 'StudioCanal', 'Triesterstraße 67\r\n1230 Wien\r\nAustria', 'medium'),
(6, 'Sony Pictures Entertainment Deutschland GmbH', 'Tribunstraße 54\r\n5845454 Dresden\r\nGermany', 'big'),
(7, 'Universal Music Vertrieb', 'Bagatellgasse 9\r\n4020 Linz\r\nAustria', 'small'),
(8, 'Galileo Medien AG', 'Pforzgasse 9\r\n6020 Innsbruck\r\nAustria', 'small'),
(9, 'Warner Music', 'Kimberley Avenue 116\r\n654544 Chicago\r\nMichigan/USA', 'medium'),
(10, 'Ueberreuter Verlag', 'Herklotzgasse 11\r\n1150 Wien\r\nAustria', 'small');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`authorID`);

--
-- Indizes für die Tabelle `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`mediaID`),
  ADD UNIQUE KEY `isbn` (`isbn`),
  ADD KEY `media_ibfk_2` (`fk_publisherID`),
  ADD KEY `fk_authorID` (`fk_authorID`);

--
-- Indizes für die Tabelle `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`publisherID`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `author`
--
ALTER TABLE `author`
  MODIFY `authorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT für Tabelle `media`
--
ALTER TABLE `media`
  MODIFY `mediaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT für Tabelle `publisher`
--
ALTER TABLE `publisher`
  MODIFY `publisherID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `media`
--
ALTER TABLE `media`
  ADD CONSTRAINT `media_ibfk_2` FOREIGN KEY (`fk_publisherID`) REFERENCES `publisher` (`publisherID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `media_ibfk_3` FOREIGN KEY (`fk_authorID`) REFERENCES `author` (`authorID`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
