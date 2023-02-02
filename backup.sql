-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jan 19, 2023 at 02:56 AM
-- Server version: 5.7.30
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `divum`
--

-- --------------------------------------------------------

--
-- Table structure for table `benefits`
--

CREATE TABLE `benefits` (
  `id_benefit` int(11) NOT NULL,
  `id_treatment` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `active` int(2) NOT NULL DEFAULT '1',
  `ordering` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `benefits`
--

INSERT INTO `benefits` (`id_benefit`, `id_treatment`, `description`, `active`, `ordering`) VALUES
(1, 1, 'Previene la caries dental', 1, NULL),
(2, 1, 'Previene la gingivitis', 1, NULL),
(3, 1, 'Previene la periodontitis', 1, NULL),
(4, 1, 'Previene la halitosis', 1, NULL),
(5, 1, 'Previene enfermedades de encías y hueso', 1, NULL),
(6, 1, 'Previene enfermedades sistémicas', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `treatments`
--

CREATE TABLE `treatments` (
  `id_treatment` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `definicion` text NOT NULL,
  `procedimiento` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `treatments`
--

INSERT INTO `treatments` (`id_treatment`, `image`, `title`, `description`, `link`, `definicion`, `procedimiento`) VALUES
(1, 'limpieza-dental.png', 'Limpieza Dental', 'Limpieza Dental • Limpiezas Dentales con Ultrasonido • Ultrasonido Dental • Remueve Manchas: Sarro, Placa y Más', 'limpieza-dental', 'La limpieza dental, también llamada profilaxis dental, es un procedimiento en el cual tu odontólogo removerá manchas, sarro y placa dentobacteriana para mantener la salud de tus dientes y encías.', 'En DIVUM realizamos la limpieza dental usando ultrasonido, que funciona a base de vibración y agua a presión. Este procedimiento se realiza en tan sólo 1 sesión.'),
(2, 'resina-dental.png', 'Resina Dental', 'Resinas Dentales • Elimina Caries y Limpia el Área Afectada • Resinas Estéticas • ¿Para qué Sirve?', 'resina-dental', '', ''),
(3, 'endodoncias.png', 'Endodoncias', 'Dentista Endodoncia • Tratamiento Más Común para las Caries Avanzadas • ¿Para que Sirve? • ¿Como se Hace?', 'endodoncias', '', ''),
(4, 'coronas-dentales.png', 'Coronas Dentales', 'Corona Dental Estéticas y Funcionales: Metal,Porcelana,Resina, Ceramica,Zirconia • Eficaces para el Reemplazo', 'coronas-dentales', '', ''),
(5, 'implantes-dentales.png', 'Implantes Dentales', 'Qué son? • ¿Cuándo se necesita Implantes Dentales? • ¿Por qué se Requiere? • ¿Cómo se Coloca?', 'implantes-dentales', '', ''),
(6, 'guarda-dental.png', 'Guarda Dental', 'Guardas Dentales • Guarda Oclusal • Guarda Dental Precio • Guarda para Dientes • Guarda Dental para que Sirve', 'guarda-dental', '', ''),
(7, 'puentes-dentales.png', 'Puentes Dentales', 'Prótesis Dentales Fijas: Proporciona Estética Agradable • Aumenta tu Confianza y Seguridad • Puentes Dentales', 'puentes-dentales', '', ''),
(8, 'periodoncia.png', 'Periodoncia', '¿Que es la Periodoncia? • ¿Para qué sirve la Periodoncia? • Conoce los sintomas, Causas, Consecuencias y Precios para Tratarala', 'periodoncia', '', ''),
(9, 'odontopediatria.png', 'Odontopediatría', '¿Qué es la Odontopediatría? • Dentista para Niños • Dentistas para/de Niños • Limpieza, Selladores, Resina', 'odontopediatria', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `benefits`
--
ALTER TABLE `benefits`
  ADD PRIMARY KEY (`id_benefit`),
  ADD KEY `id_treatment` (`id_treatment`);

--
-- Indexes for table `treatments`
--
ALTER TABLE `treatments`
  ADD PRIMARY KEY (`id_treatment`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `benefits`
--
ALTER TABLE `benefits`
  MODIFY `id_benefit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `treatments`
--
ALTER TABLE `treatments`
  MODIFY `id_treatment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `benefits`
--
ALTER TABLE `benefits`
  ADD CONSTRAINT `benefits_ibfk_1` FOREIGN KEY (`id_treatment`) REFERENCES `treatments` (`id_treatment`);
