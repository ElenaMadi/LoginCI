-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Gazdă: 127.0.0.1
-- Timp de generare: ian. 16, 2019 la 10:39 PM
-- Versiune server: 10.1.37-MariaDB
-- Versiune PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Bază de date: `librarie`
--

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `angajati`
--

CREATE TABLE `angajati` (
  `idang` int(11) NOT NULL,
  `functie` varchar(50) DEFAULT NULL,
  `salariu` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `angajati`
--

INSERT INTO `angajati` (`idang`, `functie`, `salariu`) VALUES
(11, 'Vanzator', 1500),
(22, 'Manager', 2000),
(33, 'Operator curatenie', 1500),
(44, 'Distribuitor', 2000),
(55, 'Contabil', 2500);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `autor`
--

CREATE TABLE `autor` (
  `idautor` int(11) NOT NULL,
  `nume` varchar(50) DEFAULT NULL,
  `datan` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `autor`
--

INSERT INTO `autor` (`idautor`, `nume`, `datan`) VALUES
(11, 'R.J.Ellory', '1967-06-02'),
(22, 'Paula Hawkins', '1989-02-01'),
(33, 'Mark Twain', '1835-11-30'),
(44, 'Jules Verne', '1828-02-08'),
(55, 'Jane Austen', '1775-12-16'),
(66, 'Osho', '1931-12-11'),
(77, 'Ion Creanga', '1837-03-01'),
(88, 'Mihai Eminescu', '2019-01-16');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `carte`
--

CREATE TABLE `carte` (
  `idcarte` int(11) NOT NULL,
  `nume` varchar(50) DEFAULT NULL,
  `pret` int(11) DEFAULT NULL,
  `stoc` int(11) DEFAULT NULL,
  `autor` int(11) DEFAULT NULL,
  `editura` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `carte`
--

INSERT INTO `carte` (`idcarte`, `nume`, `pret`, `stoc`, `autor`, `editura`) VALUES
(1, 'Print si cersetor', 22, 2, 33, 'TREI'),
(2, 'Fata din tren', 22, 5, 22, 'TREI'),
(3, 'Mandrie si prejudecata', 40, 10, 55, 'Epica'),
(5, 'Ratiune si simtire', 40, 6, 55, 'Litera'),
(6, 'O credinta oarba in ingeri', 50, 3, 11, 'RAO'),
(7, 'Doi ani de vacanta', 10, 5, 44, 'RAO'),
(8, 'Sarea in bucate', 10, 3, 77, 'Epica'),
(9, 'Harap-Alb', 15, 12, 77, 'RAO'),
(10, 'Capra cu trei iezi', 10, 15, 77, 'ANDREAS'),
(11, 'Amintiri din copilarie', 10, 32, 77, 'ANDREAS'),
(12, 'Povesti ilustrate', 8, 8, 77, 'ANDREAS'),
(13, 'Ivan Turbinca', 12, 9, 77, 'RAO'),
(14, 'Punguta cu doi bani', 9, 11, 77, 'ANDREAS');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `client`
--

CREATE TABLE `client` (
  `idclient` int(11) NOT NULL,
  `nume` varchar(50) DEFAULT NULL,
  `adresa` varchar(50) DEFAULT NULL,
  `telefon` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `client`
--

INSERT INTO `client` (`idclient`, `nume`, `adresa`, `telefon`) VALUES
(111, 'Ion Popescu ', 'Strada Narciselor, nr.3', '0756456987'),
(112, 'Alin Popa', 'Strada Brailei, nr 5.', '0740617345'),
(113, 'Sarbu Alexa', 'Strada Domneasca, nr.3', '0730234567');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `factura`
--

CREATE TABLE `factura` (
  `idfactura` int(11) NOT NULL,
  `idclient` int(11) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `idproduse` int(11) DEFAULT NULL,
  `data` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `factura`
--

INSERT INTO `factura` (`idfactura`, `idclient`, `status`, `idproduse`, `data`) VALUES
(1, 112, 'Incheiat', NULL, '2019-01-16');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `film`
--

CREATE TABLE `film` (
  `idfilm` int(11) NOT NULL,
  `nume` varchar(50) DEFAULT NULL,
  `pret` int(11) DEFAULT NULL,
  `stoc` int(11) DEFAULT NULL,
  `durata` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `film`
--

INSERT INTO `film` (`idfilm`, `nume`, `pret`, `stoc`, `durata`) VALUES
(1, 'Crazy Stupid Love', 50, 6, '1h 58m'),
(2, 'Divergent', 30, 5, '2h 19m'),
(3, 'Mask', 25, 7, '1h 41m'),
(4, 'Before I Fall', 50, 2, '1h 38m'),
(5, 'Bad Moms', 30, 12, '1h 40m'),
(6, 'The Lucky One', 40, 6, '1h 40 m'),
(7, 'Annabelle', 50, 8, '1h 38m'),
(8, 'Fifty Shades Of Grey', 50, 6, '1h 20m'),
(9, 'F the Prom', 30, 12, '1h 50m'),
(10, 'Aquaman', 60, 30, '2h 25m');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `jucarie`
--

CREATE TABLE `jucarie` (
  `idjucarie` int(11) NOT NULL,
  `nume` varchar(50) DEFAULT NULL,
  `pret` int(11) DEFAULT NULL,
  `stoc` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `jucarie`
--

INSERT INTO `jucarie` (`idjucarie`, `nume`, `pret`, `stoc`) VALUES
(1, 'Robot', 22, 4),
(2, 'Masina', 30, 0),
(3, 'Barbie', 50, 10),
(4, 'Puzzle', 30, 2),
(5, 'Papusa', 10, 3),
(6, 'Set masinute', 60, 5),
(7, 'Ursulet', 40, 7),
(8, 'Set Lego', 100, 12),
(9, 'Papusa Ken', 70, 8),
(10, 'Figurina Star Wars', 40, 1),
(11, 'Urs ', 90, 3),
(12, 'Set pictura', 150, 5);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `muzica`
--

CREATE TABLE `muzica` (
  `idmuzica` int(11) NOT NULL,
  `nume` varchar(50) DEFAULT NULL,
  `pret` int(11) DEFAULT NULL,
  `stoc` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `muzica`
--

INSERT INTO `muzica` (`idmuzica`, `nume`, `pret`, `stoc`) VALUES
(1, 'CD - Disturbed', 100, 21),
(2, 'CD - Evanescence', 70, 3),
(3, 'CD - Three Days Grace', 90, 2),
(4, 'CD - Hollywood Undead', 150, 5),
(5, 'CD - KORN', 60, 4),
(6, 'CD - Alternosfera', 70, 10),
(7, 'CD - Bucovina', 80, 9),
(8, 'CD - Shinedown', 100, 7),
(9, 'CD - One Direction ', 20, 20),
(10, 'CD - Halestorm', 100, 2);

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `papetarie`
--

CREATE TABLE `papetarie` (
  `idpapetarie` int(11) NOT NULL,
  `nume` varchar(50) DEFAULT NULL,
  `pret` int(11) DEFAULT NULL,
  `stoc` int(11) DEFAULT NULL,
  `culoare` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `papetarie`
--

INSERT INTO `papetarie` (`idpapetarie`, `nume`, `pret`, `stoc`, `culoare`) VALUES
(1, 'Pix', 3, 10, 'Negru'),
(2, 'Pix', 3, 20, 'Roz'),
(3, 'Creion', 1, 12, 'Negru'),
(4, 'Set Creioane Colorate', 10, 6, 'Toate'),
(5, 'Hartie A4', 10, 100, 'Alb'),
(6, 'Hartie Colorata', 2, 150, 'Toate'),
(7, 'Foi A3', 4, 50, 'Alb'),
(8, 'Caiet A4', 3, 7, 'Alb');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `vanzator`
--

CREATE TABLE `vanzator` (
  `idvanzator` varchar(50) NOT NULL,
  `nume` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `idang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Eliminarea datelor din tabel `vanzator`
--

INSERT INTO `vanzator` (`idvanzator`, `nume`, `username`, `password`, `idang`) VALUES
('1', 'Popa Ion', 'ion', '1234', 11),
('2', 'Oprea Alina', 'alina', '1234', 11);

--
-- Indexuri pentru tabele eliminate
--

--
-- Indexuri pentru tabele `angajati`
--
ALTER TABLE `angajati`
  ADD PRIMARY KEY (`idang`);

--
-- Indexuri pentru tabele `autor`
--
ALTER TABLE `autor`
  ADD PRIMARY KEY (`idautor`);

--
-- Indexuri pentru tabele `carte`
--
ALTER TABLE `carte`
  ADD PRIMARY KEY (`idcarte`),
  ADD KEY `FK_autor` (`autor`);

--
-- Indexuri pentru tabele `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`idclient`);

--
-- Indexuri pentru tabele `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`idfactura`),
  ADD KEY `FK_idclient` (`idclient`);

--
-- Indexuri pentru tabele `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`idfilm`);

--
-- Indexuri pentru tabele `jucarie`
--
ALTER TABLE `jucarie`
  ADD PRIMARY KEY (`idjucarie`);

--
-- Indexuri pentru tabele `muzica`
--
ALTER TABLE `muzica`
  ADD PRIMARY KEY (`idmuzica`);

--
-- Indexuri pentru tabele `papetarie`
--
ALTER TABLE `papetarie`
  ADD PRIMARY KEY (`idpapetarie`);

--
-- Indexuri pentru tabele `vanzator`
--
ALTER TABLE `vanzator`
  ADD PRIMARY KEY (`idvanzator`),
  ADD KEY `FK_angajat` (`idang`);

--
-- Constrângeri pentru tabele eliminate
--

--
-- Constrângeri pentru tabele `carte`
--
ALTER TABLE `carte`
  ADD CONSTRAINT `FK_autor` FOREIGN KEY (`autor`) REFERENCES `autor` (`idautor`);

--
-- Constrângeri pentru tabele `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `FK_idclient` FOREIGN KEY (`idclient`) REFERENCES `client` (`idclient`);

--
-- Constrângeri pentru tabele `vanzator`
--
ALTER TABLE `vanzator`
  ADD CONSTRAINT `FK_angajat` FOREIGN KEY (`idang`) REFERENCES `angajati` (`idang`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
