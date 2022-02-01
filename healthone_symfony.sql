-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 01 feb 2022 om 13:41
-- Serverversie: 10.4.11-MariaDB
-- PHP-versie: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `healthone_symfony`
--
CREATE DATABASE IF NOT EXISTS `healthone_symfony` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `healthone_symfony`;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `category`
--

INSERT INTO `category` (`id`, `name`, `picture`, `description`) VALUES
(1, 'Roeitrainer', 'categories/roeitrainer.jpg', 'Een roeitrainer is een fitnessapparaat waarmee je het hele lichaam traint. Met een roeitrainer, ook wel roeitoestel of roeimachine, genoemd, boots je de roeibeweging op het water na. Je hebt daarbij voornamelijk je armen, benen en rugspieren nodig, waardoor het een complete workout is. Roeiapparaten zijn er in vele soorten en prijsklassen. '),
(2, 'Crosstrainer', 'categories/crosstrainer.jpg', 'Een crosstrainer is een fitnessapparaat waarmee je jouw hele lichaam traint. Je maakt namelijk een beweging met zowel je benen als je armen. Daarnaast train je ook de spieren in je core (buik en onderrug), borst, rug en schouders. Zowel in sportscholen als bij thuisgebruik zijn crosstrainers (ook wel elliptical machine genoemd) al geruime tijd een van de populairste fitnessapparaten.'),
(3, 'Hometrainer', 'categories/hometrainer.jpg', '\r\nEen hometrainer is het meest bekende fitnessapparaat voor thuisgebruik en staat ook wel bekend als fitness fiets. Wat is er nu prettiger dan thuis op je gemak te kunnen werken aan je conditie? Met een hometrainer kun je eenvoudig meerdere spiergroepen trainen en je uithoudingsvermogen verbeteren. Daarnaast bepaal je zelf het tempo, het trainingsniveau en het tijdstip van je training.'),
(4, 'Loopband', 'categories/loopband.jpg', 'Een loopband is een veelzijdig fitnessapparaat. Een loopband wordt gebruikt om conditie te verbeteren en vetpercentage te verlagen, maar kan ook ingezet worden voor revalidatie. Het voordeel van een loopband is dat je thuis kunt trainen wanneer het jou uitkomt. Heb je er genoeg van om ‘s avonds in het donker of door weer en wind te lopen, of zou je je spieren, pezen en botten willen ontlasten tijdens het (hard)lopen? Dan is een loopband voor jou de beste oplossing!');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20220201082047', '2022-02-01 09:21:40', 43),
('DoctrineMigrations\\Version20220201082528', '2022-02-01 09:25:32', 42),
('DoctrineMigrations\\Version20220201084445', '2022-02-01 09:45:13', 84);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `product`
--

INSERT INTO `product` (`id`, `name`, `picture`, `description`, `category_id`) VALUES
(1, 'Crosstrainer - Focus Fitness Fox 3', 'categories/crosstrainer/cr1.jpg', 'De Focus Fitness Fox 3 is de ideale crosstrainer voor iedere thuissporter. Deze crosstrainer geeft je een stabiele training en is fluisterstil in gebruik. De verstelbare voetpedalen van de Fox 3 maken deze crosstrainer geschikt voor verschillende lichaamslengtes. Daarnaast maakt het vliegwiel, met een gewicht van 7 kg, je training comfortabel en zorgt dit vliegwiel voor een mooie ronde rotatie. Door deze factoren heeft de Focus Fitness Fox 3 in het verleden diverse Kieskeurig awards gewonnen.\r\n\r\n', 2),
(5, 'Crosstrainer - Focus Fitness Fox 4', 'categories/crosstrainer/cr2.jpg', 'Met de Focus Fitness Fox 4 haal je een uitstekende crosstrainer in huis. Deze crosstrainer biedt je met het zware vliegwiel aan de voorkant, de hoge mate van stabiliteit en de longitudinale pas een unieke fitnesservaring in je eigen huis! De Focus Fitness Fox 4 is een hoogwaardige frontcrosstrainer met een uitstekende prijs-kwaliteitverhouding.\r\n\r\n\r\n', 2),
(7, 'Crosstrainer - Focus Fitness Fox 3 iPlus', 'categories/crosstrainer/cr3.jpg', 'De Focus Fitness Fox 3 iPlus is de ideale crosstrainer voor de thuissporter. De Fox 3 iPlus is niet alleen stabiel en sterk, maar ook nog eens geruisloos. Naast een vliegwiel van 7 kg en verstelbare voetpedalen is de Fox 3 iPlus voorzien van de nieuwste technieken. Denk hierbij aan de ingebouwde Bluetooth functie waarmee de computer van de crosstrainer contact maakt met je tablet of smartphone. Hierdoor neemt je tablet of smartphone de functie van trainingscomputer over en kun je met zeer interessante app’s interactief trainen.', 2),
(8, 'Crosstrainer - Focus Fitness Fox 3 HRC', 'categories/crosstrainer/cr4.jpg', 'De Fox 3 HRC is een crosstrainer van Focus Fitness met een uitstekende prijs-kwaliteitverhouding. Door de grote keuze aan trainingsprogramma\'s raak je nooit uitgetraind en de trainingscomputer geeft je inzicht in al je prestaties.\r\n\r\n\r\n', 2),
(9, 'Crosstrainer - Focus Fitness Senator iPlus', 'categories/crosstrainer/cr5.jpg', 'De strakke Focus Fitness Senator iPlus Crosstrainer biedt je een breed scala aan mogelijkheden en voorziet je van de meest moderne technieken. Zo is de Senator voorzien van een stabiel in totaliteit 67 kg wegend frame en een 12 kg zwaar frontwheel wat zorgt voor een soepele en efficiënte work-out. Of je nu een startende of meer ervaren sporter bent de Senator iPlus biedt je voldoende uitdaging tijdens je training.\r\n', 2),
(10, 'Crosstrainer - Focus Fitness Fox 5 HRC', 'categories/crosstrainer/cr6.jpg', 'De Focus Fitness Fox 5 HRC is dankzij de zeer hoge kwaliteit en betaalbare prijs niet voor niets een van onze bestverkochte en best beoordeelde crosstrainers. Mede dankzij het vliegwiel van 10 kg zorgt de Fox 5 ervoor dat je altijd op een natuurlijke en soepele manier kunt trainen. Of je de Fox 5 gebruikt voor revalidatie, in beweging wilt blijven of er intensief gebruik van wilt maken. Deze crosstrainer is geschikt voor iedereen! En dat blijkt: in het verleden heeft de Focus Fitness Fox 5 crosstrainer een Kieskeurig Review Award gewonnen dankzij de positieve reviews van consumenten!\r\n', 2);

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexen voor tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D34A04AD12469DE2` (`category_id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT voor een tabel `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_D34A04AD12469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
