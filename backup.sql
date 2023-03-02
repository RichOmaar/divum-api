-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 02, 2023 at 07:16 AM
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
(6, 1, 'Previene enfermedades sistémicas', 1, NULL),
(7, 2, 'Al tener el mismo color que el diente se respeta la estética dental y se mantiene la apariencia natural.', 1, NULL),
(8, 2, 'Se adhiere perfectamente a la superficie del diente.', 1, NULL),
(9, 2, 'Pueden colocarse tanto en dientes frontales como en las muelas.', 1, NULL),
(10, 2, 'Evitan metales en los dientes, como el mercurio.', 1, NULL),
(11, 2, 'Es fácil y práctica de utilizar.', 1, NULL),
(12, 3, 'Para mitigar el dolor y mantener una buena salud dental.', 1, NULL),
(13, 3, 'Para evitar la pérdida de un diente natural.', 1, NULL),
(14, 3, 'Para evitar otros tratamientos dentales como extracciones.', 1, NULL),
(15, 4, 'Reforzar un diente deteriorado', 1, NULL),
(16, 4, 'Mejorar la estética', 1, NULL),
(17, 4, 'Cuando presentas dientes fracturados', 1, NULL),
(18, 4, 'Cuando te colocan un implante', 1, NULL),
(19, 6, 'Evita rechinamiento y apretamiento dental nocturno o diurno.', 1, NULL),
(20, 6, 'Evita el desgaste de las cúspides dentales.', 1, NULL),
(21, 6, 'Aliviar la sensibilidad dental.', 1, NULL),
(22, 6, 'Ayuda en el dolor en la mandíbula al masticar y sobretodo al amanecer.', 1, NULL),
(23, 7, 'Es un procedimiento menos invasivo.', 1, NULL),
(24, 7, 'Mejorar la apariencia de la sonrisa.', 1, NULL),
(25, 7, 'No hay riesgo de rechazo de la prótesis por el organismo.', 1, NULL),
(26, 7, 'Costo accesible', 1, NULL),
(27, 8, 'Tratar la inflamación de las encías.', 1, NULL),
(28, 8, 'Ayudar a prevenir la pérdida de hueso y movilidad dental.', 1, NULL),
(29, 8, 'Eliminar la placa bacteriana.', 1, NULL),
(30, 8, 'Frenar la pérdida de hueso causada por la periodontitis.', 1, NULL),
(31, 9, 'Prevenir y tratar la caries', 1, NULL),
(32, 9, 'Mejorar hábitos de higiene.', 1, NULL),
(33, 9, 'Mejorar la limpieza bucal.', 1, NULL),
(34, 9, 'Prevenir y corregir problemas de colocación dental.', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id_category` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id_category`, `name`, `status`) VALUES
(1, 'Odontología', 1),
(2, 'Pediatría', 1),
(3, 'Ortodoncia', 1),
(4, 'Protesis', 1),
(5, 'Alineadores', 1),
(6, 'Implantes', 1),
(7, 'Estética', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact_form`
--

CREATE TABLE `contact_form` (
  `id_contactForm` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `seen` int(11) NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact_form`
--

INSERT INTO `contact_form` (`id_contactForm`, `name`, `phone`, `message`, `seen`, `date`) VALUES
(1, 'Juan', '5534080960', 'Lorem', 0, '2023-02-02 02:48:03'),
(2, 'Juan 2', '5534080960', 'Lorem 2', 0, '2023-02-02 02:49:47'),
(3, 'Omar', '5512854958', 'Omar', 0, '2023-02-02 02:54:39'),
(4, 'Juan', '5534080960', 'lorem', 0, '2023-02-02 03:07:51'),
(5, 'Juan 5', '5534080960', 'lorem 5', 0, '2023-02-02 03:08:29'),
(6, 'Juan 6 ', '5534080960', 'Lorem 6', 0, '2023-02-02 03:08:51'),
(7, 'Perez', '5534080960', 'Lorem 7', 0, '2023-02-02 03:09:15'),
(8, 'Peres', '5598765432', 'Lorem 8', 0, '2023-02-02 03:10:08'),
(9, 'Perez', '5534080960', 'Lorem 9', 0, '2023-02-02 03:14:18');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id_post` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `foreword` text,
  `content` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id_post`, `title`, `foreword`, `content`, `image`, `author`, `date`, `status`) VALUES
(1, 'Odontopediatría en clinica DIVUM', 'Ha ocurrido un error al publicar la noticia, intentalo de nuevo.\r\nHa ocurrido un error al publicar la noticia, intentalo de nuevo. Ha ocurrido un error al publicar la noticia, intentalo de nuevo', '<h1>Hola mundo</h1><p><br></p><p>alkdjkljdkljaskldjkaljdklajd aksdjklasjd alskjdklsjdkljsdklsjdklajs dlksjd skdj lk jkljdlkadjasjd sldjkajdklsjdlkj lksdjlksjdkl jsd.</p><p><br></p><p>alkdjkljdkljaskldjkaljdklajd aksdjklasjd alskjdklsjdkljsdklsjdklajs dlksjd skdj lk jkljdlkadjasjd sldjkajdklsjdlkj lksdjlksjdkl jsd.</p><p><br></p><blockquote>alkdjkljdkljaskldjkaljdklajd aksdjklasjd alskjdklsjdkljsdklsjdklajs dlksjd skdj lk jkljdlkadjasjd sldjkajdklsjdlkj lksdjlksjdkl jsd.</blockquote><p><br></p><p>alkdjkljdkljaskldjkaljdklajd aksdjklasjd alskjdklsjdkljsdklsjdklajs dlksjd skdj lk jkljdlkadjasjd sldjkajdklsjdlkj lksdjlksjdkl jsd.</p><p><br></p><ul><li>Uno</li><li>DOS</li><li>TRES</li><li><a href=\"facebook.com\" rel=\"noopener noreferrer\" target=\"_blank\">CUATRO</a></li></ul><p><br></p><p>alkdjkljdkljaskldjkaljdklajd aksdjklasjd alskjdklsjdkljsdklsjdklajs dlksjd skdj lk jkljdlkadjasjd sldjkajdklsjdlkj lksdjlksjdkl jsd.</p><p>alkdjkljdkljaskldjkaljdklajd aksdjklasjd alskjdklsjdkljsdklsjdklajs dlksjd skdj lk jkljdlkadjasjd sldjkajdklsjdlkj lksdjlksjdkl jsd</p><p><br></p><p>alkdjkljdkljaskldjkaljdklajd aksdjklasjd alskjdklsjdkljsdklsjdklajs dlksjd skdj lk jkljdlkadjasjd sldjkajdklsjdlkj lksdjlksjdkl jsd. alkdjkljdkljaskldjkaljdklajd aksdjklasjd alskjdklsjdkljsdklsjdk<strong>lajs dlksjd skdj lk jkljdlkadjasjd sldjkajdklsjdlkj lksdjlksjdkl jsd. alkdjkljdkljaskldjkaljdklajd aksdjklasjd alsk</strong>jdklsjdkljsdklsjdklajs dlksjd skdj lk jkljdlkadjasjd sldjkajdklsjdlkj lksdjlksjdkl jsd, alkdjkljdkljaskldjkaljdklajd aksdjklasjd alskjdklsjdkljsdklsjdklajs dlksjd skdj lk jkljdlkadjasjd sldjkajdklsjdlkj lksdjlksjdkl jsd.</p><p><br></p><p>alkdjkljdkljaskldjkaljdklajd aksdjklasjd alskjdklsjdkljsdklsjdklajs dlksjd skdj lk jkljdlkadjasjd sldjkajdklsjdlkj lksdjlksjdkl jsd</p>', 'odontopediatraenclinicadivum.png', 'DIVUM', '2023-03-02 07:01:37', 1),
(2, 'Odontopediatría en clinica DIVUM Segundo post', 'Ha ocurrido un error al publicar la noticia, intentalo de nuevo.\r\nHa ocurrido un error al publicar la noticia, intentalo de nuevo. Ha ocurrido un error al publicar la noticia, intentalo de nuevo', '<h1>Hola mundo</h1><p><br></p><p>alkdjkljdkljaskldjkaljdklajd aksdjklasjd alskjdklsjdkljsdklsjdklajs dlksjd skdj lk jkljdlkadjasjd sldjkajdklsjdlkj lksdjlksjdkl jsd.</p><p><br></p><p>alkdjkljdkljaskldjkaljdklajd aksdjklasjd alskjdklsjdkljsdklsjdklajs dlksjd skdj lk jkljdlkadjasjd sldjkajdklsjdlkj lksdjlksjdkl jsd.</p><p><br></p><blockquote>alkdjkljdkljaskldjkaljdklajd aksdjklasjd alskjdklsjdkljsdklsjdklajs dlksjd skdj lk jkljdlkadjasjd sldjkajdklsjdlkj lksdjlksjdkl jsd.</blockquote><p><br></p><p>alkdjkljdkljaskldjkaljdklajd aksdjklasjd alskjdklsjdkljsdklsjdklajs dlksjd skdj lk jkljdlkadjasjd sldjkajdklsjdlkj lksdjlksjdkl jsd.</p><p><br></p><ul><li>Uno</li><li>DOS</li><li>TRES</li><li><a href=\"facebook.com\" rel=\"noopener noreferrer\" target=\"_blank\">CUATRO</a></li></ul><p><br></p><p>alkdjkljdkljaskldjkaljdklajd aksdjklasjd alskjdklsjdkljsdklsjdklajs dlksjd skdj lk jkljdlkadjasjd sldjkajdklsjdlkj lksdjlksjdkl jsd.</p><p>alkdjkljdkljaskldjkaljdklajd aksdjklasjd alskjdklsjdkljsdklsjdklajs dlksjd skdj lk jkljdlkadjasjd sldjkajdklsjdlkj lksdjlksjdkl jsd</p><p><br></p><p>alkdjkljdkljaskldjkaljdklajd aksdjklasjd alskjdklsjdkljsdklsjdklajs dlksjd skdj lk jkljdlkadjasjd sldjkajdklsjdlkj lksdjlksjdkl jsd. alkdjkljdkljaskldjkaljdklajd aksdjklasjd alskjdklsjdkljsdklsjdk<strong>lajs dlksjd skdj lk jkljdlkadjasjd sldjkajdklsjdlkj lksdjlksjdkl jsd. alkdjkljdkljaskldjkaljdklajd aksdjklasjd alsk</strong>jdklsjdkljsdklsjdklajs dlksjd skdj lk jkljdlkadjasjd sldjkajdklsjdlkj lksdjlksjdkl jsd, alkdjkljdkljaskldjkaljdklajd aksdjklasjd alskjdklsjdkljsdklsjdklajs dlksjd skdj lk jkljdlkadjasjd sldjkajdklsjdlkj lksdjlksjdkl jsd.</p><p><br></p><p>alkdjkljdkljaskldjkaljdklajd aksdjklasjd alskjdklsjdkljsdklsjdklajs dlksjd skdj lk jkljdlkadjasjd sldjkajdklsjdlkj lksdjlksjdkl jsd</p>', 'odontopediatraenclinicadivumsegundopost.png', 'DIVUM', '2023-03-02 07:03:34', 1),
(3, 'Odontopediatría en clinica DIVUM Segundo post', 'Ha ocurrido un error al publicar la noticia, intentalo de nuevo.\r\nHa ocurrido un error al publicar la noticia, intentalo de nuevo. Ha ocurrido un error al publicar la noticia, intentalo de nuevo', '<h1>Hola mundo</h1>', 'odontopediatraenclinicadivumsegundopost.png', 'DIVUM', '2023-03-02 07:05:52', 1),
(4, 'Odontopediatría en clinica DIVUM Segundo post', 'Ha ocurrido un error al publicar la noticia, intentalo de nuevo.\r\nHa ocurrido un error al publicar la noticia, intentalo de nuevo. Ha ocurrido un error al publicar la noticia, intentalo de nuevo', '<h1>Hola mundo</h1>', 'odontopediatraenclinicadivumsegundopost.png', 'DIVUM', '2023-03-02 07:06:03', 1),
(5, 'Noticia ultima', 'Prefacio ultimo', '<h1>HOLA MUNDO</h1><p><br></p><p>OASJDLKJDKLJKS DALKSDJKLSJD LSKDJKSJDKLSJDKL KSLJDK LJKD KLJSDLKJ KLJSD</p><p>OASJDLKJDKLJKS DALKSDJKLSJD LSKDJKSJDKLSJDKL KSLJDK LJKD KLJSDLKJ KLJSD OASJDLKJDKLJKS DALKSDJKLSJD LSKDJKSJDKLSJDKL KSLJDK LJKD KLJSDLKJ KLJSD OASJDLKJDKLJKS DALKSDJKLSJD LSKDJKSJDKLSJDKL KSLJDK LJKD KLJSDLKJ KLJSD OASJDLKJDKLJKS DALKSDJKLSJD LSKDJKSJDKLSJDKL KSLJDK LJKD KLJSDLKJ KLJSD</p><p>OASJDLKJDKLJKS DALKSDJKLSJD LSKDJKSJDKLSJDKL KSLJDK LJKD KLJSDLKJ KLJSD.OASJDLKJDKLJKS DALKSDJKLSJD LSKDJKSJDKLSJDKL KSLJDK LJKD KLJSDLKJ KLJSD</p><p><br></p><p><strong>OASJDLKJDKLJKS DALKSDJKLSJD LSKDJKSJDKLSJDKL KSLJDK LJKD KLJSDLKJ KLJSD</strong></p><p><strong>OASJDLKJDKLJKS DALKSDJKLSJD LSKDJKSJDKLSJDKL KSLJDK LJKD KLJSDLKJ KLJSD OASJDLKJDKLJ<s><u>KS DALKSDJKLSJD LSKDJKSJDKLSJDKL KSLJDK LJKD KLJSDLKJ KLJSD OASJDLKJDKLJKS DALKSDJKLSJD LSKDJKSJDKLSJDKL KSLJDK LJKD KLJSDLKJ KLJSD OASJDLKJDKLJKS DALKSDJKLSJD LSKD</u></s>JKSJDKLSJDKL KSLJDK LJKD KLJSDLKJ KLJSD</strong></p><p><strong>OASJDLKJDKLJKS DALKSDJKLSJD LSKDJKSJDKLSJDKL KSLJDK LJKD KLJSDLKJ KLJSD.OASJDLKJDKLJKS DALKSDJKLSJD LSKDJKSJDKLSJDKL KSLJDK LJKD KLJSDLKJ KLJSD</strong></p><p><br></p><p><em><u>OASJDLKJDKLJKS DALKSDJKLSJD LSKDJKSJDKLSJDKL KSLJDK LJKD KLJSDLKJ KLJSD</u></em></p><p><em><u>OASJDLKJDKLJKS DALKSDJKLSJD LSKDJKSJDKLSJDKL KSLJDK LJKD KLJSDLKJ KLJSD OASJDLKJDKLJKS DALKSDJKLSJD LSKDJKSJDKLSJDKL KSLJDK LJKD KLJSDLKJ KLJSD OASJDLKJDKLJKS DALKSDJKLSJD LSKDJKSJDKLSJDKL KSLJDK LJKD KLJSDLKJ KLJSD OASJDLKJDKLJKS DALKSDJKLSJD LSKDJKSJDKLSJDKL KSLJDK LJKD KLJSDLKJ KLJSD</u></em></p><p><em><u>OASJDLKJDKLJKS DALKSDJKLSJD LSKDJKSJDKLSJDKL KSLJDK LJKD KLJSDLKJ KLJSD.OASJDLKJDKLJKS DALKSDJKLSJD LSKDJKSJDKLSJDKL KSLJDK LJKD KLJSDLKJ KLJSD</u></em></p>', 'noticiaultima.jpg', 'OMAR CAMACHO', '2023-03-02 07:10:25', 1),
(6, 'Noticia ultima', 'Prefacio ultimo', '<h1>HOLA MUNDO</h1><p><br></p><p>OASJDLKJDKLJKS DALKSDJKLSJD LSKDJKSJDKLSJDKL KSLJDK LJKD KLJSDLKJ KLJSD</p><p>OASJDLKJDKLJKS DALKSDJKLSJD LSKDJKSJDKLSJDKL KSLJDK LJKD KLJSDLKJ KLJSD OASJDLKJDKLJKS DALKSDJKLSJD LSKDJKSJDKLSJDKL KSLJDK LJKD KLJSDLKJ KLJSD OASJDLKJDKLJKS DALKSDJKLSJD LSKDJKSJDKLSJDKL KSLJDK LJKD KLJSDLKJ KLJSD OASJDLKJDKLJKS DALKSDJKLSJD LSKDJKSJDKLSJDKL KSLJDK LJKD KLJSDLKJ KLJSD</p><p>OASJDLKJDKLJKS DALKSDJKLSJD LSKDJKSJDKLSJDKL KSLJDK LJKD KLJSDLKJ KLJSD.OASJDLKJDKLJKS DALKSDJKLSJD LSKDJKSJDKLSJDKL KSLJDK LJKD KLJSDLKJ KLJSD</p><p><br></p><p><strong>OASJDLKJDKLJKS DALKSDJKLSJD LSKDJKSJDKLSJDKL KSLJDK LJKD KLJSDLKJ KLJSD</strong></p><p><strong>OASJDLKJDKLJKS DALKSDJKLSJD LSKDJKSJDKLSJDKL KSLJDK LJKD KLJSDLKJ KLJSD OASJDLKJDKLJ<s><u>KS DALKSDJKLSJD LSKDJKSJDKLSJDKL KSLJDK LJKD KLJSDLKJ KLJSD OASJDLKJDKLJKS DALKSDJKLSJD LSKDJKSJDKLSJDKL KSLJDK LJKD KLJSDLKJ KLJSD OASJDLKJDKLJKS DALKSDJKLSJD LSKD</u></s>JKSJDKLSJDKL KSLJDK LJKD KLJSDLKJ KLJSD</strong></p><p><strong>OASJDLKJDKLJKS DALKSDJKLSJD LSKDJKSJDKLSJDKL KSLJDK LJKD KLJSDLKJ KLJSD.OASJDLKJDKLJKS DALKSDJKLSJD LSKDJKSJDKLSJDKL KSLJDK LJKD KLJSDLKJ KLJSD</strong></p><p><br></p><p><em><u>OASJDLKJDKLJKS DALKSDJKLSJD LSKDJKSJDKLSJDKL KSLJDK LJKD KLJSDLKJ KLJSD</u></em></p><p><em><u>OASJDLKJDKLJKS DALKSDJKLSJD LSKDJKSJDKLSJDKL KSLJDK LJKD KLJSDLKJ KLJSD OASJDLKJDKLJKS DALKSDJKLSJD LSKDJKSJDKLSJDKL KSLJDK LJKD KLJSDLKJ KLJSD OASJDLKJDKLJKS DALKSDJKLSJD LSKDJKSJDKLSJDKL KSLJDK LJKD KLJSDLKJ KLJSD OASJDLKJDKLJKS DALKSDJKLSJD LSKDJKSJDKLSJDKL KSLJDK LJKD KLJSDLKJ KLJSD</u></em></p><p><em><u>OASJDLKJDKLJKS DALKSDJKLSJD LSKDJKSJDKLSJDKL KSLJDK LJKD KLJSDLKJ KLJSD.OASJDLKJDKLJKS DALKSDJKLSJD LSKDJKSJDKLSJDKL KSLJDK LJKD KLJSDLKJ KLJSD</u></em></p>', 'noticiaultima.jpg', 'OMAR CAMACHO', '2023-03-02 07:10:39', 1),
(7, 'Ultima noticia', 'Prefacio de la noticia', '<h1>Hola mundo</h1>', 'ultimanoticia.png', 'OMAR CAMACHo', '2023-03-02 07:15:13', 1);

-- --------------------------------------------------------

--
-- Table structure for table `post_category`
--

CREATE TABLE `post_category` (
  `id_post` int(11) DEFAULT NULL,
  `id_category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `post_category`
--

INSERT INTO `post_category` (`id_post`, `id_category`) VALUES
(1, 3),
(1, 5),
(1, 7),
(2, 6),
(4, 7),
(6, 1),
(6, 2),
(6, 7),
(7, 4);

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
  `procedimiento` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `treatments`
--

INSERT INTO `treatments` (`id_treatment`, `image`, `title`, `description`, `link`, `definicion`, `procedimiento`, `status`) VALUES
(1, 'limpieza-dental.png', 'Limpieza Dental', 'Limpieza Dental • Limpiezas Dentales con Ultrasonido • Ultrasonido Dental • Remueve Manchas: Sarro, Placa y Más', 'limpieza-dental', 'La limpieza dental, también llamada profilaxis dental, es un procedimiento en el cual tu odontólogo removerá manchas, sarro y placa dentobacteriana para mantener la salud de tus dientes y encías.', 'En DIVUM realizamos la limpieza dental usando ultrasonido, que funciona a base de vibración y agua a presión. Este procedimiento se realiza en tan sólo 1 sesión.', 1),
(2, 'resina-dental.png', 'Resina Dental', 'Resinas Dentales • Elimina Caries y Limpia el Área Afectada • Resinas Estéticas • ¿Para qué Sirve?', 'resina-dental', 'Las resinas dentales son restauraciones estéticas de los dientes, que se pueden utilizar en dientes dañados o cariados en las cuales el material que se utiliza es precisamente la resina.', 'Las restauraciones con composite o resina dental son tratamientos sencillos que permiten mejorar en gran medida la estética de la sonrisa.  Primero, si es necesario, habrá que tallar la superficie del diente para adherir la resina. Posteriormente se aplica el composite directamente sobre la pieza y se moldea. Una vez colocada, se endurece la resina con luz ultravioleta y finalmente se lima y pule para mejorar su apariencia.', 1),
(3, 'endodoncias.png', 'Endodoncias', 'Dentista Endodoncia • Tratamiento Más Común para las Caries Avanzadas • ¿Para que Sirve? • ¿Como se Hace?', 'endodoncias', 'La endodoncia es un tratamiento mediante el cual se limpia y sella el interior del diente para evitar un episodio infeccioso. ', 'El tratamiento se lleva a cabo bajo anestesia, tras haber aislado por completo el diente afectado. Consiste en limpiar, vaciar el interior de la pieza y rellenarlo posteriormente con un material biocompatible para impedir la filtración de fluidos externos o internos. Este material de relleno debe sellar, ocupar y obturar la totalidad del interior de la pieza dental.', 1),
(4, 'coronas-dentales.png', 'Coronas Dentales', 'Corona Dental Estéticas y Funcionales: Metal,Porcelana,Resina, Ceramica,Zirconia • Eficaces para el Reemplazo', 'coronas-dentales', 'La corona dental es una prótesis dentaria hecha a medida para cada paciente en concreto. Son como pequeñas fundas que nos permiten recubrir completamente un diente que haya sufrido daños por motivos varios.', 'Durante la primera cita, el médico prepara sus dientes y evaluará la situación. Una vez hecho el molde, te colocará coronas provisionales. Posteriormente el dentista te colocará las coronas dentales permanentes. Finalmente, podrás disfrutar de tu nueva sonrisa.', 1),
(5, 'implantes-dentales.png', 'Implantes Dentales', 'Qué son? • ¿Cuándo se necesita Implantes Dentales? • ¿Por qué se Requiere? • ¿Cómo se Coloca?', 'implantes-dentales', '', '', 0),
(6, 'guarda-dental.png', 'Guarda Dental', 'Guardas Dentales • Guarda Oclusal • Guarda Dental Precio • Guarda para Dientes • Guarda Dental para que Sirve', 'guarda-dental', 'El guarda oclusal es un aparato ortopédico intraoral que se ajusta sobre las piezas dentarias del maxilar superior estableciendo un determinado esquema oclusal, específico según el diseño y los objetivos de dicha férula. De tipo removible comúnmente usado para el manejo de los trastornos temporomandibulares.', 'Nuestros expertos tomarán las impresiones de sus dientes para poder confeccionar tu guarda, basándose en ellas realizará un molde acrílico idéntico a tu dentadura. Una vez listo, probarás la guarda oclusal para verificar que te ajusta cómodamente, de no ser así se realizarán los ajustes necesarios.', 1),
(7, 'puentes-dentales.png', 'Puentes Dentales', 'Prótesis Dentales Fijas: Proporciona Estética Agradable • Aumenta tu Confianza y Seguridad • Puentes Dentales', 'puentes-dentales', 'Un puente dental está compuesto por un conjunto de coronas unidas entre sí para sustituir varios dientes faltantes. Para que el tratamiento función es necesario contar con dientes adyacentes que sirvan como pilares para sostener la estructura.', 'En este caso, se tallan los dientes a través de endodoncias para colocar el puente dental sobre una corona que va en el diente desgastado. Se colocan las coronas sobre los implantes dentales para soportarlo y esto proporciona una estética agradable al paciente, aumentando su confianza y seguridad.', 1),
(8, 'periodoncia.png', 'Periodoncia', '¿Que es la Periodoncia? • ¿Para qué sirve la Periodoncia? • Conoce los sintomas, Causas, Consecuencias y Precios para Tratarala', 'periodoncia', 'La periodontitis es una infección en las encías que puede afectar gravemente los tejidos alrededor de los dientes e incluso provocar que se caigan. ', 'El procedimiento consiste en un raspado y alisado radicular, es una limpieza manual por debajo de las encías para eliminar las bacterias y el tejido inflamado para posteriormente alisar y pulir las superficies de la raíz del diente. En algunos casos es necesario realizar una cirugía de encías para corregir defectos que pueda haber provocado la enfermedad.', 1),
(9, 'odontopediatria.png', 'Odontopediatría', '¿Qué es la Odontopediatría? • Dentista para Niños • Dentistas para/de Niños • Limpieza, Selladores, Resina', 'odontopediatria', 'En DIVUM también nos dedicamos a la salud bucal de los niños desde la infancia hasta la adolescencia.', 'Nuestros dentistas expertos en odontopediatría brindan atención integral que incluye cuidado dental preventivo que incluye limpieza y tratamientos con flúor, así como recomendaciones nutricionales y dietéticas e higiénicas, asesoramiento sobre hábitos (por ejemplo, uso de chupón y chuparse el dedo), evaluación y tratamiento tempranos para enderezar los dientes y corregir una mordida inadecuada, reparación de caries o defectos dentales, manejo de enfermedades y afecciones de las encías que incluyen úlceras, frenillos cortos, mucoceles y enfermedad periodontal pediátrica y atención de lesiones dentales (por ejemplo, dientes fracturados, desplazados o caídos).', 1);

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
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id_category`);

--
-- Indexes for table `contact_form`
--
ALTER TABLE `contact_form`
  ADD PRIMARY KEY (`id_contactForm`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id_post`);

--
-- Indexes for table `post_category`
--
ALTER TABLE `post_category`
  ADD KEY `id_post` (`id_post`),
  ADD KEY `id_category` (`id_category`);

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
  MODIFY `id_benefit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contact_form`
--
ALTER TABLE `contact_form`
  MODIFY `id_contactForm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id_post` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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

--
-- Constraints for table `post_category`
--
ALTER TABLE `post_category`
  ADD CONSTRAINT `post_category_ibfk_1` FOREIGN KEY (`id_post`) REFERENCES `posts` (`id_post`),
  ADD CONSTRAINT `post_category_ibfk_2` FOREIGN KEY (`id_category`) REFERENCES `categories` (`id_category`);
