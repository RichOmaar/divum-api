-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:8889
-- Tiempo de generación: 15-09-2023 a las 17:14:10
-- Versión del servidor: 5.7.39
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `divum`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `beauty_services`
--

CREATE TABLE `beauty_services` (
  `id_beautyService` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `url_image` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `long_subtitle` varchar(255) NOT NULL,
  `main_description` text NOT NULL,
  `url_image2` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `beauty_services`
--

INSERT INTO `beauty_services` (`id_beautyService`, `title`, `subtitle`, `description`, `url_image`, `slug`, `status`, `long_subtitle`, `main_description`, `url_image2`) VALUES
(1, 'Microneedling', 'Piel rejuvenecida', 'Estimula el colágeno, reduciendo arrugas, cicatrices y poros dilatados, para una piel más joven y suave.', 'https://images.pexels.com/photos/3541388/pexels-photo-3541388.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2', 'microneedling', 1, 'Revitaliza tu piel', 'El microneedling es un procedimiento estético no invasivo que utiliza un dispositivo con pequeñas agujas para crear microcanales en la piel. Estos microcanales estimulan la producción de colágeno y elastina, promoviendo la regeneración celular y mejorando la textura y firmeza de la piel. Es eficaz para tratar arrugas, cicatrices de acné, poros dilatados y otras imperfecciones cutáneas. Además, el microneedling facilita la absorción de productos para el cuidado de la piel, maximizando sus beneficios. Es una opción segura y efectiva para lograr una piel más radiante y rejuvenecida.', 'https://images.pexels.com/photos/286951/pexels-photo-286951.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
(2, 'Microblading', 'Cejas perfectas', 'Mejora y da forma a las cejas mediante incisiones superficiales, creando trazos naturales y definidos.', 'https://images.pexels.com/photos/3541388/pexels-photo-3541388.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2', 'microblading', 1, 'Trazado de cejas detallado y realista', 'El microblading es una técnica semipermanente que permite mejorar la forma y apariencia de las cejas. Mediante pequeñas incisiones superficiales en la piel, se aplican pigmentos especiales para crear trazos similares a los vellos naturales, rellenando y definiendo las cejas de forma natural y precisa. Esta técnica es ideal para corregir cejas dispersas, poco pobladas o mal definidas. El resultado es un aspecto realista y duradero, que resalta la belleza y expresión de tu rostro. Con el microblading, podrás disfrutar de cejas perfectas y bien definidas sin necesidad de maquillaje diario.', 'https://images.pexels.com/photos/286951/pexels-photo-286951.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
(3, 'Peeling', 'Piel luminosa', 'Elimina células muertas, rejuvenece y da luminosidad a la piel, mejorando su apariencia y textura.', 'https://images.pexels.com/photos/3541388/pexels-photo-3541388.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2', 'peeling', 1, 'Renovación de la piel', 'El peeling es un tratamiento estético que consiste en aplicar una solución química sobre la piel, promoviendo una exfoliación controlada y estimulando la regeneración celular. Esta técnica ayuda a eliminar células muertas, impurezas y marcas superficiales, mejorando la textura y apariencia de la piel. Dependiendo de la intensidad del peeling, se puede tratar problemas como manchas, arrugas finas, acné o cicatrices. El resultado es una piel más suave, luminosa y rejuvenecida. El peeling es una opción efectiva para revitalizar tu cutis y obtener un aspecto más fresco y saludable.', 'https://images.pexels.com/photos/286951/pexels-photo-286951.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
(4, 'Pulido de rostro', 'Rostro renovado', 'Elimina impurezas y renueva la piel del rostro, dejándola suave, radiante y libre de imperfecciones.', 'https://images.pexels.com/photos/3541388/pexels-photo-3541388.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2', 'pulido-de-rostro', 1, 'Exfoliación profunda', 'El pulido de rostro es un tratamiento facial que combina técnicas de exfoliación y limpieza profunda para eliminar impurezas, células muertas y residuos acumulados en la piel del rostro. Mediante procedimientos como la microdermoabrasión, el peeling y la aplicación de máscaras especiales, se logra una exfoliación controlada que estimula la regeneración celular y mejora la textura cutánea. El resultado es una piel más suave, luminosa y libre de imperfecciones. Este tratamiento ayuda a reducir la apariencia de poros dilatados, líneas finas, manchas y cicatrices superficiales, brindando una apariencia rejuvenecida y radiante. El pulido de rostro es una excelente opción para revitalizar tu piel y obtener un cutis más saludable y renovado.', 'https://images.pexels.com/photos/286951/pexels-photo-286951.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
(5, 'Rehabilitación post-quirúrgica', 'Recuperación rápida', 'Tratamientos personalizados para acelerar la recuperación tras cirugías estéticas, mejorando la piel.', 'https://images.pexels.com/photos/3541388/pexels-photo-3541388.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2', 'rehabilitacion-post-quirurgica', 1, 'Recuperación estética', 'La rehabilitación post-quirúrgica es un conjunto de tratamientos personalizados diseñados para acelerar la recuperación después de una cirugía estética. Mediante técnicas especializadas y productos de alta calidad, este proceso se enfoca en promover la cicatrización, reducir la inflamación y mejorar la apariencia de la piel intervenida. Los tratamientos pueden incluir terapias de masaje, aplicaciones de productos regeneradores y procedimientos de estimulación cutánea para fomentar la formación de colágeno. La rehabilitación post-quirúrgica optimiza los resultados de la cirugía, minimizando la aparición de cicatrices, mejorando la elasticidad de la piel y restaurando un aspecto rejuvenecido y natural. Es fundamental para lograr una recuperación más rápida y una apariencia estética óptima tras una intervención quirúrgica.', 'https://images.pexels.com/photos/286951/pexels-photo-286951.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
(6, 'Tratamientos para hidratar, nutrir y estimular la piel', 'Piel saludable', 'Tratamientos especializados para hidratar, nutrir y estimular la piel, mejorando su salud y apariencia.', 'https://images.pexels.com/photos/3541388/pexels-photo-3541388.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2', 'tratamientos-para-hidratar-nutrir-y-estimular-la-piel', 1, 'Cuidado intensivo de la piel', 'Nuestros tratamientos para hidratar, nutrir y estimular la piel ofrecen un cuidado intensivo y personalizado para mejorar su salud y apariencia general. Mediante productos y técnicas especializadas, proporcionamos una hidratación profunda que revitaliza y suaviza la piel. Además, nutrimos con nutrientes esenciales que fortalecen y protegen de daños ambientales. Estimulamos la regeneración celular, promoviendo una piel más luminosa y rejuvenecida. Estos tratamientos son ideales para mantener una piel radiante y saludable, ya que ayudan a combatir los signos del envejecimiento, reducir la opacidad y mejorar la textura cutánea. Recupera la vitalidad de tu piel y disfruta de un aspecto radiante y rejuvenecido con nuestros tratamientos especializados para cuidar tu piel en profundidad.', 'https://images.pexels.com/photos/286951/pexels-photo-286951.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
(7, 'Tratamiento para quitar manchas en piel', 'Sin manchas', 'Tecnologías avanzadas reducen manchas, hiperpigmentación y decoloración, revelando una piel uniforme.', 'https://images.pexels.com/photos/3541388/pexels-photo-3541388.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2', 'tratamiento-para-quitar-manchas-en-piel', 1, 'Piel uniforme y luminosa', 'Nuestro tratamiento para quitar manchas en la piel utiliza tecnologías avanzadas y productos especializados para reducir la apariencia de manchas, hiperpigmentación y decoloración, restaurando un tono de piel más uniforme y radiante. Mediante métodos seguros y eficaces, eliminamos las manchas oscuras causadas por el sol, la edad o condiciones cutáneas, permitiendo que tu piel recupere su luminosidad y juventud. El proceso de rejuvenecimiento cutáneo se logra gracias a nuestra combinación de técnicas y productos que ayudan a disminuir la sobreproducción de melanina, permitiendo que las manchas se desvanezcan gradualmente. Obtén una piel más uniforme, luminosa y radiante con nuestro tratamiento especializado para quitar manchas, que está diseñado para mejorar la textura y apariencia de tu piel, brindándote una apariencia más joven y saludable.', 'https://images.pexels.com/photos/286951/pexels-photo-286951.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
(8, 'Tratamiento para el acné', 'Control del acné', 'Aborda las causas del acné, controlando la grasa y mejorando la apariencia de la piel afectada.', 'https://images.pexels.com/photos/3541388/pexels-photo-3541388.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2', 'tratamiento-para-el-acne', 1, 'Piel libre de imperfecciones', 'Nuestro tratamiento para el acné aborda las causas subyacentes de esta condición cutánea, utilizando técnicas y productos diseñados para reducir la inflamación, controlar la producción de grasa y mejorar la apariencia general de la piel afectada. Con enfoque en la limpieza profunda y la eliminación de las bacterias que provocan el acné, nuestro tratamiento te proporciona una piel más limpia, equilibrada y libre de imperfecciones. Además, trabajamos para reducir las marcas y cicatrices que el acné deja en la piel, promoviendo una apariencia más uniforme y suave. Recupera tu confianza con nuestra solución efectiva y personalizada para el acné, que te ayuda a mantener bajo control los brotes acneicos y a mejorar la salud general de tu piel.', 'https://images.pexels.com/photos/286951/pexels-photo-286951.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
(9, 'Aplicación de toxina', 'Arrugas suavizadas', 'Inyecciones de toxina botulínica reducen arrugas y líneas de expresión, brindando un aspecto rejuvenecido.', 'https://images.pexels.com/photos/3541388/pexels-photo-3541388.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2', 'aplicacion-de-toxina', 1, 'Aspecto rejuvenecido', 'Nuestro procedimiento de aplicación de toxina botulínica, comúnmente conocida como \"botox\", es una solución estética no invasiva y de resultados efectivos. Mediante la inyección de pequeñas cantidades de toxina botulínica en músculos faciales específicos, logramos suavizar las líneas de expresión y arrugas, brindándote un aspecto rejuvenecido y más fresco. El tratamiento ayuda a relajar los músculos, reduciendo la aparición de líneas de expresión en la frente, entrecejo y patas de gallo. Con una aplicación precisa y personalizada, obtendrás resultados naturales y duraderos. Disfruta de una apariencia más joven y radiante con nuestro servicio de aplicación de toxina que te ayudará a lucir y sentirte mejor contigo mismo/a.', 'https://images.pexels.com/photos/286951/pexels-photo-286951.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
(10, 'Arrugas', 'Firmeza y elasticidad', 'Tratamientos para suavizar arrugas y líneas de expresión, mejorando la firmeza y elasticidad de la piel.', 'https://images.pexels.com/photos/8686319/pexels-photo-8686319.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2', 'arrugas', 1, 'Tratamientos antiarrugas', 'Nuestros tratamientos especializados para combatir las arrugas y líneas de expresión te brindan una solución efectiva y personalizada para mejorar la firmeza y elasticidad de tu piel. Utilizando técnicas avanzadas y productos de alta calidad, trabajamos para suavizar y reducir la apariencia de las arrugas, brindándote una piel más suave y rejuvenecida. Ya sea mediante procedimientos no invasivos como el botox o tratamientos con rellenos dérmicos, nuestro equipo de profesionales te ayudará a recuperar la juventud y la confianza en tu apariencia. Disfruta de una piel revitalizada y radiante con nuestros tratamientos antiarrugas diseñados para satisfacer tus necesidades y objetivos estéticos.', 'https://images.pexels.com/photos/286951/pexels-photo-286951.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
(11, 'Aplicación de rellenos (en labios y surcos)', 'Volumen restaurado', 'Rellenos dérmicos aumentan el volumen de labios y restauran surcos y arrugas, revitalizando el rostro.', 'https://images.pexels.com/photos/3541388/pexels-photo-3541388.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2', 'aplicacion-de-rellenos', 1, 'Labios más voluminosos', 'Nuestro servicio de aplicación de rellenos dérmicos te ofrece la posibilidad de realzar tus labios y rellenar surcos faciales para lograr un aspecto más juvenil y equilibrado. Utilizamos rellenos seguros y de alta calidad que se adaptan a tus necesidades y preferencias estéticas. Si deseas labios más voluminosos y sensuales, nuestros expertos pueden darles forma y definición con resultados naturales. También podemos reducir la apariencia de surcos faciales, como las líneas de marioneta y los surcos nasolabiales, para mejorar la armonía de tu rostro. Con nuestros tratamientos de aplicación de rellenos, te ayudaremos a lograr una apariencia rejuvenecida y radiante que resalte tu belleza única.', 'https://images.pexels.com/photos/286951/pexels-photo-286951.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
(12, 'Aplicación de pestañas', 'Mirada expresiva', 'Extensiones de alta calidad realzan tus pestañas naturales, brindando una mirada expresiva y glamorosa.', 'https://images.pexels.com/photos/3541388/pexels-photo-3541388.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2', 'aplicacion-de-pestanas', 1, 'Pestañas más largas y voluminosas', 'Nuestro servicio de aplicación de pestañas ofrece extensiones de alta calidad que realzan y dan volumen a tus pestañas naturales, brindándote una mirada más expresiva y glamorosa. Utilizamos técnicas avanzadas y productos seguros para aplicar las extensiones, asegurándonos de que se vean naturales y cómodas. Si deseas unas pestañas más largas y exuberantes sin tener que recurrir a pestañas postizas diariamente, nuestras extensiones son la solución perfecta. Olvídate de aplicar y remover máscara de pestañas todos los días, y disfruta de la comodidad y belleza duradera que nuestras extensiones de pestañas te ofrecen. Además, nuestras extensiones están diseñadas para resistir el agua, el calor y la humedad, lo que te permite llevar un aspecto impecable en cualquier situación. Con nuestro servicio de aplicación de pestañas, lograrás una mirada cautivadora y seductora que resaltará tus ojos y realzará tu belleza natural.', 'https://images.pexels.com/photos/286951/pexels-photo-286951.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
(13, 'Rejuvenecimiento de manos', 'Manos jóvenes', 'Mejora la apariencia y suavidad de las manos, reduciendo manchas, arrugas y signos de envejecimiento.', 'https://images.pexels.com/photos/3541388/pexels-photo-3541388.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2', 'rejuvenecimiento-de-manos', 1, 'Renueva la piel de tus manos', 'Nuestro tratamiento de rejuvenecimiento de manos utiliza técnicas y productos especializados para mejorar la apariencia y suavidad de la piel de las manos. A lo largo del tiempo, las manos pueden mostrar signos de envejecimiento, como manchas, arrugas y pérdida de volumen. Con nuestro enfoque personalizado, abordamos estos problemas para devolverle a tus manos un aspecto más juvenil y radiante. Utilizamos procedimientos no invasivos y efectivos que promueven la producción de colágeno, reducen manchas y restauran la firmeza de la piel. Nuestro equipo de profesionales capacitados te brindará el cuidado y la atención que tus manos merecen, dejándolas suaves, hidratadas y con un aspecto rejuvenecido. Con el rejuvenecimiento de manos, podrás lucir unas manos más jóvenes y hermosas, complementando tu apariencia general y aumentando tu confianza.', 'https://images.pexels.com/photos/286951/pexels-photo-286951.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
(14, 'Manicure (\'Manos de cera\')', 'Cuidado completo', 'Manicura completa con atención especial a uñas, cutículas y parafina para hidratar y suavizar la piel.', 'https://images.pexels.com/photos/3541388/pexels-photo-3541388.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2', 'manicure-manos-de-cera', 1, 'Disfruta de unas manos impecables', 'Nuestro servicio de manicure \'Manos de cera\' es la experiencia definitiva para el cuidado de tus manos. Comenzamos con un suave masaje y un tratamiento de exfoliación para eliminar células muertas, dejando tu piel suave y renovada. Luego, sumergimos tus manos en una cera nutritiva y cálida, lo que ayuda a hidratar y suavizar la piel, brindando una sensación relajante y terapéutica. Después, nos encargamos del cuidado completo de tus uñas, recortando y limando para obtener una forma perfecta. También trabajamos en tus cutículas para mantenerlas saludables y sin irregularidades. Finalizamos el servicio aplicando tu esmalte favorito o un brillo natural, dejando tus manos con un aspecto impecable y pulido. Con nuestro servicio \'Manos de cera\', tus manos recibirán el trato que se merecen, luciendo bellas y bien cuidadas en todo momento. Disfruta de esta experiencia relajante y embellecedora para resaltar la belleza de tus manos y sentirte confiada en cualquier ocasión.', 'https://images.pexels.com/photos/286951/pexels-photo-286951.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `benefits`
--

CREATE TABLE `benefits` (
  `id_benefit` int(11) NOT NULL,
  `id_treatment` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `ordering` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `benefits`
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
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id_category` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `area` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id_category`, `name`, `area`, `status`) VALUES
(1, 'Odontología', 'dental', 1),
(2, 'Pediatría', 'dental', 1),
(3, 'Ortodoncia', 'dental', 1),
(4, 'Protesis', 'dental', 1),
(5, 'Alineadores', 'dental', 1),
(6, 'Implantes', 'dental', 1),
(7, 'Estética', 'dental', 1),
(8, 'Endodoncia', 'dental', 1),
(9, 'Belleza', 'belleza', 1),
(10, 'Cuidado Facial', 'belleza', 1),
(11, 'Maquillaje', 'belleza', 1),
(12, 'Salud Interior', 'belleza', 1),
(13, 'Estilo de Vida', 'belleza', 1),
(14, 'Anti-Envejecimiento', 'belleza', 1),
(15, 'Cuidado Capilar', 'belleza', 1),
(16, 'Bienestar Natural', 'belleza', 1),
(17, 'Nutrición', 'belleza', 1),
(18, 'Ejercicio Facial', 'belleza', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contact_form`
--

CREATE TABLE `contact_form` (
  `id_contactForm` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `message` varchar(255) NOT NULL,
  `seen` int(11) NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `contact_form`
--

INSERT INTO `contact_form` (`id_contactForm`, `name`, `phone`, `email`, `message`, `seen`, `date`) VALUES
(1, 'Juan', '5534080960', NULL, 'Lorem', 0, '2023-02-02 02:48:03'),
(2, 'Juan 2', '5534080960', NULL, 'Lorem 2', 0, '2023-02-02 02:49:47'),
(3, 'Omar', '5512854958', NULL, 'Omar', 0, '2023-02-02 02:54:39'),
(4, 'Juan', '5534080960', NULL, 'lorem', 0, '2023-02-02 03:07:51'),
(5, 'Juan 5', '5534080960', NULL, 'lorem 5', 0, '2023-02-02 03:08:29'),
(6, 'Juan 6 ', '5534080960', NULL, 'Lorem 6', 0, '2023-02-02 03:08:51'),
(7, 'Perez', '5534080960', NULL, 'Lorem 7', 0, '2023-02-02 03:09:15'),
(8, 'Peres', '5598765432', NULL, 'Lorem 8', 0, '2023-02-02 03:10:08'),
(9, 'Perez', '5534080960', NULL, 'Lorem 9', 0, '2023-02-02 03:14:18'),
(10, 'Juan', '5534080960', 'om@gmail.com', 'Kjhajkshdkjashd akjshd', 0, '2023-09-04 22:57:44'),
(11, '', '', '', '', 0, '2023-09-04 22:58:53'),
(12, 'Juan Gil', '5512345678', 'juan@gmail.com', 'KLhAJ ASKLDHJAJKSH DAKJSHD KJSAD', 0, '2023-09-04 23:00:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE `posts` (
  `id_post` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `foreword` text,
  `content` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `author` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `posts`
--

INSERT INTO `posts` (`id_post`, `title`, `foreword`, `content`, `image`, `url`, `author`, `date`, `status`) VALUES
(8, 'Endodoncia: Qué es y cuándo se necesita', 'Test', '<h2>¿Qué es la endodoncia?</h2><p>La <strong>endodoncia</strong> es la rama de la odontología que se ocupa de la pulpa dental y los tejidos que rodean la raíz del diente. La pulpa dental es el tejido blando que se encuentra dentro del diente y que contiene nervios, vasos sanguíneos y tejido conectivo. Cuando la pulpa se infecta o inflama, puede causar dolor y dañar el diente. El tratamiento <strong>endodóntico</strong> implica la eliminación de la pulpa dañada o infectada, la limpieza y el conformado de los conductos radiculares, y el sellado del diente para evitar una infección adicional.</p><p><br></p><h2>¿Cuándo se puede necesitar un tratamiento endodóntico?</h2><p>El tratamiento <strong>endodóntico</strong> se necesita cuando la pulpa dental se infecta o inflama. Esto puede ser causado por una variedad de factores, incluyendo la caries dental, traumatismo en el diente, o procedimientos dentales repetidos en el mismo diente. Los síntomas de una pulpa infectada o inflamada incluyen dolor, sensibilidad al calor o al frío, hinchazón y un mal sabor en la boca. Si experimenta alguno de estos síntomas, es importante que consulte a su dentista lo antes posible.</p><p><br></p><h2>Proceso de tratamiento endodóntico:</h2><ul><li>La <strong>endodoncia</strong> es una rama especializada de la odontología que se encarga del tratamiento de la pulpa dental y los tejidos circundantes.</li><li>Si experimenta síntomas de una pulpa infectada o inflamada, es importante que consulte a su dentista lo antes posible.</li><li>El tratamiento <strong>endodóntico</strong> puede salvar un diente dañado o infectado y evitar la necesidad de extracción.</li><li>Con el cuidado adecuado, un diente tratado puede durar toda la vida.</li></ul>', 'endodonciaquesycundosenecesita.jpg', NULL, 'endodoncia-que-es-y-cuando-se-necesita', '2023-09-13 04:32:16', 1),
(9, 'Caries dental: Qué es y cómo prevenirla', 'La caries dental es uno de los problemas dentales más comunes en todo el mundo. Es una enfermedad infecciosa y destructiva que afecta a los dientes y puede causar dolor, sensibilidad y problemas de masticación. En esta publicación del blog, hablaremos sobre qué es la caries dental, qué la causa y cómo se puede prevenir.', '<h2>¿Qué es la caries dental?</h2><p>La caries dental es una enfermedad que afecta a los dientes y que se produce cuando las bacterias en la boca producen ácidos que desmineralizan el esmalte dental. El esmalte es la capa protectora y dura que cubre los dientes, y cuando se desmineraliza, los dientes pueden desarrollar agujeros o cavidades. Si no se trata, la caries dental puede avanzar y afectar a la pulpa dental, lo que puede causar dolor y eventualmente la pérdida del diente.</p><p><br></p><h2>¿Qué causa la caries dental?</h2><p>La caries dental es causada por la combinación de bacterias en la boca, alimentos azucarados y una higiene oral deficiente. Las bacterias en la boca forman una película pegajosa llamada placa dental, que se adhiere a los dientes y produce ácidos que pueden desmineralizar el esmalte. Los alimentos azucarados son especialmente peligrosos, ya que las bacterias utilizan los azúcares para producir más ácidos. Una higiene oral deficiente, como no cepillarse los dientes con regularidad o no usar hilo dental, también puede contribuir a la caries dental.</p><p><br></p><h2>¿Cómo se puede prevenir la caries dental?</h2><p>La buena noticia es que la caries dental es una enfermedad prevenible. Aquí hay algunos consejos para prevenir la caries dental:</p><ol><li>Cepíllese los dientes dos veces al día con pasta dental que contenga flúor.</li><li>Use hilo dental diariamente para eliminar la placa dental y los restos de alimentos entre los dientes.</li><li>Limite los alimentos y bebidas azucaradas y pegajosas, como los refrescos y los caramelos.</li><li>Aumente su consumo de alimentos ricos en calcio, como los productos lácteos.</li><li>Visite a su dentista regularmente para revisiones y limpiezas dentales.</li></ol><p><br></p><h2>Conclusión</h2><p>La caries dental es una enfermedad común que puede causar dolor, sensibilidad y problemas de masticación. Se puede prevenir con una buena higiene oral, una dieta saludable y visitas regulares al dentista. Si sospecha que tiene una caries dental, es importante que consulte a su dentista lo antes posible para recibir tratamiento.</p>', 'cariesdentalquesycmoprevenirla.jpg', 'caries-dental-que-es-y-como-prevenirla', 'Omar Camacho by GPT', '2023-03-03 02:29:27', 1),
(10, 'TEst', 'sdssd', 'sdsdsd', 'cariesdentalquesycmoprevenirla.jpg', 'url', 'om', '2023-08-04 21:53:07', 1),
(11, 'asdad', 'asdadd', 'adadas', 'tercermuestramuconcaractresespecialestambin.jpg', '', 'asdad', '2023-08-04 21:53:20', 1),
(12, 'adafa', 'adfsdfs', 'sfsdf', 'segundapruebadeurkl.jpg', NULL, 'sdfsdf', '2023-08-04 21:53:15', 1),
(13, 'lkasjkljakld', 'lakjlkajfls', '<p>cdfsdfsdf sdf sdf s </p>', 'lkasjkljakld.jpg', NULL, 'fadfsf', '2023-03-16 21:29:16', 1),
(14, 'Caries dental: Qué es y cómo prevenirla', 'Prefacio', '<p>asdasdsad</p>', 'cariesdentalquesycmoprevenirla.jpg', NULL, 'Yo', '2023-03-17 03:52:36', 1),
(15, 'Prueba final par aprobar la url>?', 'Prefacio de la prueba', '<h1>Prueba</h1><p><br></p><p>Test prueba</p>', 'pruebafinalparaprobarlaurl.jpg', NULL, 'prueba-final-par-aprobar-la-url>?', '2023-03-17 04:01:45', 1),
(16, 'Segunda prueba de URKL?:,?', 'Test atesj;lkasd', '<p>asdsfasfs</p>', 'segundapruebadeurkl.jpg', 'segunda-prueba-de-urkl?:,?', 'asdsd', '2023-03-17 04:04:37', 1),
(17, 'Tercer muestra ?>.m,.,., u con caractéres especiales también', 'asdasdsadf', '<p>dsafdfsdfasf</p>', 'tercermuestramuconcaractresespecialestambin.jpg', 'tercer-muestra-m-u-con-caracteres-especiales-tambien', 'asdasdffsaf', '2023-03-17 04:16:57', 1),
(18, '¿Cómo estás? Un blog', 'dfdf', '<p>sfwdsfdsfsdfsf</p>', '--c--mo-est--s--un-blog.jpg', '--c--mo-est--s--un-blog.jpg', 'Yo', '2023-03-20 20:46:02', 1),
(19, 'Trabajando duro o Duando en el trabajo', 'Prefacio', '<p>sdsdsdsdsdsd</p>', 'trabajandodurooduandoeneltrabajo.jpg', 'trabajando-duro-o-duando-en-el-trabajo', 'Autor', '2023-03-20 21:01:00', 1),
(21, 'Microblading para Cejas Perfectas: Logra tus Cejas de Ensueño', 'Siempre has soñado con cejas perfectas que enmarquen tu rostro de manera natural y elegante. El microblading es la solución definitiva para lograrlo. En nuestra clínica de belleza, te ofrecemos el innovador servicio de microblading que transformará tus cejas y realzará tu belleza de manera sorprendente.', '<h2>¿Qué es el Microblading?</h2><p>El microblading es una técnica avanzada que implica la aplicación manual de pigmento semipermanente en la capa superior de la piel. Mediante el uso de microcuchillas estériles, nuestro equipo de artistas del microblading crea trazos finos que imitan la apariencia de los cabellos naturales de las cejas. Este proceso meticuloso resulta en cejas de aspecto natural y simétrico, mejorando tu expresión facial y brindándote una mirada impactante.</p><h2>Beneficios del Microblading para Cejas</h2><ul><li><strong>Aspecto Natural:</strong> El microblading ofrece resultados realistas y de aspecto natural, sin la apariencia artificial de maquillaje convencional.</li><li><strong>Durabilidad:</strong> Disfruta de cejas perfectas durante meses. El microblading tiene una duración prolongada, permitiéndote lucir increíble en todo momento.</li><li><strong>Ahorro de Tiempo:</strong> Olvídate de la rutina diaria de dibujar tus cejas. Despiértate con cejas listas para impresionar.</li><li><strong>Personalización:</strong> Nuestros expertos en microblading ajustarán la forma y el color de tus cejas según tus preferencias únicas.</li></ul><p><br></p><h2>El Proceso de Microblading</h2><ol><li><strong>Consulta Personalizada:</strong> Comenzamos con una consulta detallada para entender tus objetivos y preferencias de cejas.</li><li><strong>Diseño de Cejas:</strong> Nuestros artistas profesionales diseñarán la forma ideal de tus cejas, teniendo en cuenta tu estructura facial.</li><li><strong>Aplicación del Pigmento:</strong> Utilizando microcuchillas estériles, depositamos cuidadosamente el pigmento en trazos finos y precisos.</li><li><strong>Adormecimiento:</strong> Aplicamos un adormecimiento tópico para garantizar tu comodidad durante el procedimiento.</li><li><strong>Resultados Impresionantes:</strong> Al final de la sesión, te sorprenderás con unas cejas perfectamente realzadas y de aspecto natural.</li></ol><p><br></p><h2>Cuidado Posterior al Microblading</h2><ul><li><strong>Evita la Exposición al Sol:</strong> Protege tus cejas recién microblading de la luz solar directa y el bronceado.</li><li><strong>Hidratación:</strong> Mantén tus cejas hidratadas con productos recomendados por nuestros expertos.</li><li><strong>Evita Picking:</strong> No arranques ni frotes tus cejas durante el proceso de curación.</li></ul><p><br></p><h2>¿Es el Microblading adecuado para ti?</h2><p>El microblading es ideal para personas que desean mejorar la apariencia de sus cejas de manera natural y duradera. Es seguro para la mayoría de los tipos de piel y ofrece resultados asombrosos tanto para cejas densas como para aquellas con áreas dispersas. Si deseas una mejora de cejas que resalte tu belleza única, el microblading es la elección perfecta.</p><p><br></p><h2>Reserva tu Sesión de Microblading</h2><p>¿Estás lista para transformar tus cejas y conseguir una mirada impresionante? ¡Reserva una consulta en nuestra clínica de belleza y descubre cómo el microblading puede mejorar tu apariencia de manera extraordinaria!</p><p>Para obtener más información sobre nuestros servicios de microblading y cuidado de cejas, no dudes en contactarnos. ¡Estamos aquí para ayudarte a lograr tus cejas de ensueño!</p>', 'microblading-para-cejas-perfectas--logra-tus-cejas-de-ensue--o.png', 'microblading-para-cejas-perfectas-logra-tus-cejas-de-ensueo', 'Juan Gil', '2023-08-08 01:07:16', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `post_category`
--

CREATE TABLE `post_category` (
  `id_post` int(11) DEFAULT NULL,
  `id_category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `post_category`
--

INSERT INTO `post_category` (`id_post`, `id_category`) VALUES
(21, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `post_usuario`
--

CREATE TABLE `post_usuario` (
  `id_postUsuario` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_post` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `treatments`
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
-- Volcado de datos para la tabla `treatments`
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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `fotoPerfil` varchar(255) DEFAULT 'imgPerfilPredeterminado.jpg',
  `descripcionPersonal` varchar(500) DEFAULT NULL,
  `fechaRegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_login`
--

CREATE TABLE `usuarios_login` (
  `id_usuarioLogin` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `last_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `beauty_services`
--
ALTER TABLE `beauty_services`
  ADD PRIMARY KEY (`id_beautyService`);

--
-- Indices de la tabla `benefits`
--
ALTER TABLE `benefits`
  ADD PRIMARY KEY (`id_benefit`),
  ADD KEY `id_treatment` (`id_treatment`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id_category`);

--
-- Indices de la tabla `contact_form`
--
ALTER TABLE `contact_form`
  ADD PRIMARY KEY (`id_contactForm`);

--
-- Indices de la tabla `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id_post`);

--
-- Indices de la tabla `post_category`
--
ALTER TABLE `post_category`
  ADD KEY `id_post` (`id_post`),
  ADD KEY `id_category` (`id_category`);

--
-- Indices de la tabla `post_usuario`
--
ALTER TABLE `post_usuario`
  ADD PRIMARY KEY (`id_postUsuario`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_post` (`id_post`);

--
-- Indices de la tabla `treatments`
--
ALTER TABLE `treatments`
  ADD PRIMARY KEY (`id_treatment`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Indices de la tabla `usuarios_login`
--
ALTER TABLE `usuarios_login`
  ADD PRIMARY KEY (`id_usuarioLogin`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `beauty_services`
--
ALTER TABLE `beauty_services`
  MODIFY `id_beautyService` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `benefits`
--
ALTER TABLE `benefits`
  MODIFY `id_benefit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `contact_form`
--
ALTER TABLE `contact_form`
  MODIFY `id_contactForm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `posts`
--
ALTER TABLE `posts`
  MODIFY `id_post` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `post_usuario`
--
ALTER TABLE `post_usuario`
  MODIFY `id_postUsuario` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `treatments`
--
ALTER TABLE `treatments`
  MODIFY `id_treatment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios_login`
--
ALTER TABLE `usuarios_login`
  MODIFY `id_usuarioLogin` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `benefits`
--
ALTER TABLE `benefits`
  ADD CONSTRAINT `benefits_ibfk_1` FOREIGN KEY (`id_treatment`) REFERENCES `treatments` (`id_treatment`);

--
-- Filtros para la tabla `post_category`
--
ALTER TABLE `post_category`
  ADD CONSTRAINT `post_category_ibfk_1` FOREIGN KEY (`id_post`) REFERENCES `posts` (`id_post`),
  ADD CONSTRAINT `post_category_ibfk_2` FOREIGN KEY (`id_category`) REFERENCES `categories` (`id_category`);

--
-- Filtros para la tabla `post_usuario`
--
ALTER TABLE `post_usuario`
  ADD CONSTRAINT `post_usuario_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`),
  ADD CONSTRAINT `post_usuario_ibfk_2` FOREIGN KEY (`id_post`) REFERENCES `posts` (`id_post`);

--
-- Filtros para la tabla `usuarios_login`
--
ALTER TABLE `usuarios_login`
  ADD CONSTRAINT `usuarios_login_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
