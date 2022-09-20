-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 20, 2022 at 11:16 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `consorcio`
--

-- --------------------------------------------------------

--
-- Table structure for table `cliente`
--

CREATE TABLE `cliente` (
  `cod` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `ape` varchar(50) NOT NULL,
  `dir` varchar(50) NOT NULL,
  `fnac` date NOT NULL,
  `sex` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cliente`
--

INSERT INTO `cliente` (`cod`, `nom`, `ape`, `dir`, `fnac`, `sex`) VALUES
(1, 'Cesar Augusto', 'Huaman Quincho', 'Av. Las Torres 340', '2008-06-19', 'M'),
(2, 'Daniel', 'Alvarado', 'Los Olivos', '2002-04-12', 'M');

-- --------------------------------------------------------

--
-- Table structure for table `personal`
--

CREATE TABLE `personal` (
  `cod` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `ape` varchar(50) NOT NULL,
  `dir` varchar(50) NOT NULL,
  `fnac` date NOT NULL,
  `sex` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `personal`
--

INSERT INTO `personal` (`cod`, `nom`, `ape`, `dir`, `fnac`, `sex`) VALUES
(1, 'Jorge Antonio', 'Luque Chambi', 'Urb Brisas de Sta Rosa Mz K Lt 16', '1975-06-18', 'M'),
(2, 'Elvis Daniel', 'Alvarado Macharé', 'Urb El Trébol, Los Olivos', '2002-04-12', 'M');

-- --------------------------------------------------------

--
-- Table structure for table `producto`
--

CREATE TABLE `producto` (
  `cod` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `mar` varchar(50) NOT NULL,
  `pre` decimal(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `producto`
--

INSERT INTO `producto` (`cod`, `nom`, `mar`, `pre`) VALUES
(1, 'Disco duro 2TB ', 'Toshiba', '400.00'),
(2, 'Teclado', 'Genius', '50.00'),
(3, 'Cuaderno cuadricula 100 hojas', 'Loro', '10.00'),
(4, 'Usb', 'Toshiba', '60.00'),
(5, 'Disco duro externo 2Gb', 'Toshiba', '450.00'),
(6, 'Teclado en espaÃ±ol', 'Genus', '45.00'),
(7, 'Hojas boom A4 1 millar', 'Pelikan', '35.00'),
(8, 'Cartuchera de cuero 20cm x 8cm', 'Tottus', '20.00'),
(9, 'Lapicero color negro', 'Pilot ', '5.00'),
(10, 'Borrador', 'Pelikan', '4.00'),
(11, 'Cartuchera', 'Renzo costa', '40.00'),
(12, 'Audifonos', 'Samsung', '20.00'),
(13, 'Lapicero', 'Novo', '2.00'),
(14, 'Agenda 2020', 'Artesco', '25.00'),
(15, 'Mouse Inalámbrico', 'Logitech', '129.00');

-- --------------------------------------------------------

--
-- Table structure for table `proveedor`
--

CREATE TABLE `proveedor` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `telef` int(9) NOT NULL,
  `email` varchar(50) NOT NULL,
  `direc` varchar(50) NOT NULL,
  `repr` varchar(50) NOT NULL,
  `ruc` varchar(15) NOT NULL,
  `rub` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `proveedor`
--

INSERT INTO `proveedor` (`id`, `nom`, `telef`, `email`, `direc`, `repr`, `ruc`, `rub`) VALUES
(2, 'AMD', 949378324, 'amdcorp@gmail.com', 'Washington DC', 'AMD Corp', '436598375903', 'Informática'),
(3, 'Intel', 904359035, 'intelcorp@gmail.com', 'New York', 'Intel Name', '437590353', 'Informática'),
(4, 'dsgf', 67575, 'dsgfdhd@gmail.com', 'fghdhd', 'hfdhd', '53643677547', 'gfdhdfh');

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `clave` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`idusuario`, `usuario`, `clave`) VALUES
(1, 'ahuayanay', '654321'),
(2, 'wrivas', '123456'),
(3, 'rnazario', '111222'),
(4, 'jgarcia', '654654'),
(5, 'flopez', '654654'),
(6, 'dtomas', '123412'),
(7, 'jluque', '123456'),
(8, 'edaniel', '121202');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`cod`);

--
-- Indexes for table `personal`
--
ALTER TABLE `personal`
  ADD PRIMARY KEY (`cod`);

--
-- Indexes for table `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`cod`);

--
-- Indexes for table `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idusuario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal`
--
ALTER TABLE `personal`
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `producto`
--
ALTER TABLE `producto`
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
