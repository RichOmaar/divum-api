-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:8889
-- Tiempo de generación: 28-10-2023 a las 08:39:32
-- Versión del servidor: 5.7.39
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

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
(9, 'Aplicación de toxina', 'Arrugas suavizadas', 'Inyecciones de toxina botulínica reducen arrugas y líneas de expresión, brindando un aspecto rejuvenecido.', 'https://images.pexels.com/photos/3541388/pexels-photo-3541388.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2', 'aplicacion-de-toxina', 0, 'Aspecto rejuvenecido', 'Nuestro procedimiento de aplicación de toxina botulínica, comúnmente conocida como \"botox\", es una solución estética no invasiva y de resultados efectivos. Mediante la inyección de pequeñas cantidades de toxina botulínica en músculos faciales específicos, logramos suavizar las líneas de expresión y arrugas, brindándote un aspecto rejuvenecido y más fresco. El tratamiento ayuda a relajar los músculos, reduciendo la aparición de líneas de expresión en la frente, entrecejo y patas de gallo. Con una aplicación precisa y personalizada, obtendrás resultados naturales y duraderos. Disfruta de una apariencia más joven y radiante con nuestro servicio de aplicación de toxina que te ayudará a lucir y sentirte mejor contigo mismo/a.', 'https://images.pexels.com/photos/286951/pexels-photo-286951.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
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
(1, 'Tratamientos faciales para rejuvenecer tu piel: una guía completa', 'El paso del tiempo es inevitable, pero eso no significa que no podamos hacer algo para retrasar los signos del envejecimiento. Los tratamientos faciales son una excelente manera de mejorar la apariencia de la piel, reducir las arrugas, las líneas de expresión y la flacidez.', '<p>En esta guía, te explicaremos los diferentes tipos de tratamientos faciales que existen en México, así como sus beneficios y riesgos. También te daremos algunos consejos para elegir el tratamiento adecuado para ti.</p><h2></h2><p><br></p><p><strong>Rellenos dérmicos</strong></p><p>Los rellenos dérmicos son tratamientos mínimamente invasivos que se utilizan para rellenar las arrugas y líneas de expresión. Los rellenos más comunes en México son el ácido hialurónico y el colágeno.</p><p><strong>Beneficios:</strong></p><ul><li class=\"ql-indent-1\">Reducen las arrugas y líneas de expresión</li><li class=\"ql-indent-1\">Aumentan el volumen de los labios y pómulos</li><li class=\"ql-indent-1\">Mejoran la textura de la piel</li></ul><p><strong>Riesgos:</strong></p><ul><li class=\"ql-indent-1\">Inflamación</li><li class=\"ql-indent-1\">Enrojecimiento</li><li class=\"ql-indent-1\">Hematomas</li><li class=\"ql-indent-1\">Raramente, infección</li></ul><p><br></p><p><strong>Toxina botulínica</strong></p><p>La toxina botulínica es un tratamiento mínimamente invasivo que se utiliza para relajar los músculos faciales, lo que ayuda a reducir las arrugas de expresión.</p><p><strong>Beneficios:</strong></p><ul><li class=\"ql-indent-1\">Reduce las arrugas de expresión, como las patas de gallo y las arrugas de la frente</li><li class=\"ql-indent-1\">Mejora la apariencia de la piel</li></ul><p><strong>Riesgos:</strong></p><ul><li class=\"ql-indent-1\">Enrojecimiento</li><li class=\"ql-indent-1\">Inflamación</li><li class=\"ql-indent-1\">Dolor</li><li class=\"ql-indent-1\">Raramente, visión borrosa</li></ul><p><br></p><p><strong>Peelings químicos</strong></p><p>Los peelings químicos son tratamientos que eliminan las capas superficiales de la piel, lo que ayuda a mejorar el tono y la textura de la piel.</p><p><strong>Beneficios:</strong></p><ul><li class=\"ql-indent-1\">Eliminan las manchas</li><li class=\"ql-indent-1\">Reducen las arrugas</li><li class=\"ql-indent-1\">Mejoran la textura de la piel</li></ul><p><strong>Riesgos:</strong></p><ul><li class=\"ql-indent-1\">Enrojecimiento</li><li class=\"ql-indent-1\">Descamación</li><li class=\"ql-indent-1\">En raras ocasiones, infección</li></ul><p><br></p><p><strong>Luz pulsada intensa (IPL)</strong></p><p>La luz pulsada intensa (IPL) es un tratamiento que utiliza la luz para eliminar las manchas, las arrugas y la flacidez.</p><p><strong>Beneficios:</strong></p><ul><li class=\"ql-indent-1\">Elimina las manchas</li><li class=\"ql-indent-1\">Reduce las arrugas</li><li class=\"ql-indent-1\">Mejora la textura de la piel</li></ul><p><strong>Riesgos:</strong></p><ul><li class=\"ql-indent-1\">Enrojecimiento</li><li class=\"ql-indent-1\">Descamación</li><li class=\"ql-indent-1\">En raras ocasiones, infección</li></ul><p><br></p><p><strong>Radiofrecuencia</strong></p><p>La radiofrecuencia es un tratamiento que utiliza la energía térmica para tensar la piel y reducir la flacidez.</p><p><strong>Beneficios:</strong></p><ul><li class=\"ql-indent-1\">Tensa la piel</li><li class=\"ql-indent-1\">Reduce la flacidez</li><li class=\"ql-indent-1\">Mejora la textura de la piel</li></ul><p><strong>Riesgos:</strong></p><ul><li class=\"ql-indent-1\">Enrojecimiento</li><li class=\"ql-indent-1\">Inflamación</li><li class=\"ql-indent-1\">En raras ocasiones, infección</li></ul><p><br></p><p><strong>Consejos para elegir el tratamiento adecuado:</strong></p><ul><li><strong>Considera tu </strong><a href=\"https://aprende.com/blog/moda-y-belleza/maquillaje/tipos-de-piel/\" rel=\"noopener noreferrer\" target=\"_blank\"><strong>tipo de piel</strong></a><strong>:</strong> No todos los tratamientos faciales son adecuados para todos los tipos de piel. Asegúrate de consultar con un especialista para que te recomiende el tratamiento que mejor se adapte a tu tipo de piel.</li><li><strong>Pregúntate qué quieres lograr:</strong> ¿Quieres reducir las arrugas? ¿Quieres mejorar la textura de la piel? ¿Quieres tensar la piel? Una vez que sepas lo que quieres lograr, podrás elegir el tratamiento adecuado.</li><li><strong>Investiga los diferentes tratamientos:</strong> Hay muchos tratamientos faciales disponibles, cada uno con sus propios beneficios y riesgos. Haz tu investigación para asegurarte de elegir el tratamiento que sea adecuado para ti.</li><li><strong>Consulta con un especialista:</strong> La mejor manera de elegir el tratamiento facial adecuado es consultar con un especialista en medicina estética. El especialista te ayudará a evaluar tus necesidades y a elegir el tratamiento que mejor se adapte a ti.</li></ul><p><br></p><p>En DIVUM, ofrecemos una amplia gama de tratamientos. Nuestros especialistas te ayudarán a elegir el tratamiento adecuado para ti y a obtener los mejores resultados.</p><p><br></p><p>¿Quieres saber más sobre nuestros tratamientos faciales? Contáctanos  para obtener más información.</p><p><br></p>', 'tratamientos-faciales-para-rejuvenecer-tu-piel--una-gu--a-completa.png', 'tratamientos-faciales-para-rejuvenecer-tu-piel-una-gua-completa', 'DIVUM', '2023-10-23 19:04:00', 1),
(2, 'La importancia de la higiene bucal para tu salud y bienestar', 'La higiene bucal es una parte fundamental de la salud general. Una buena higiene bucal ayuda a prevenir problemas dentales, como caries, enfermedades de las encías y mal aliento. También puede ayudar a mejorar la apariencia de tu sonrisa y la confianza en ti mismo.', '<h4><strong>¿Por qué es importante la higiene bucal?</strong></h4><p>La boca es un ecosistema complejo que alberga bacterias, virus y hongos. Estas bacterias pueden causar problemas dentales si no se eliminan de forma regular.</p><p>Una buena higiene bucal ayuda a eliminar estas bacterias y prevenir problemas dentales, como:</p><ul><li><strong>Caries:</strong> Las caries son agujeros en los dientes que pueden causar dolor y sensibilidad.</li><li><strong>Enfermedades de las encías:</strong> Las enfermedades de las encías son una infección que puede dañar las encías y los huesos que sostienen los dientes.</li><li><strong>Mal aliento:</strong> El mal aliento, también conocido como halitosis, es causado por bacterias en la boca.</li></ul><p><br></p><h4><strong>¿Cómo practicar una buena higiene bucal?</strong></h4><p>Para practicar una buena higiene bucal, es importante cepillarse los dientes dos veces al día durante dos minutos cada vez. También es importante usar hilo dental una vez al día para eliminar la placa y los restos de comida de entre los dientes.</p><p>Además del cepillado y el uso del hilo dental, es importante visitar al dentista regularmente para realizar limpiezas y controles dentales.</p><p><br></p><h4><strong>Consejos para una buena higiene bucal:</strong></h4><ul><li><strong>Use una pasta dental con flúor.</strong> El flúor ayuda a fortalecer los dientes y prevenir las caries.</li><li><strong>Cepille los dientes en círculos.</strong> Esto ayudará a eliminar la placa y los restos de comida de todas las superficies de los dientes.</li><li><strong>Use hilo dental una vez al día.</strong> El hilo dental ayuda a eliminar la placa y los restos de comida de entre los dientes, donde el cepillo no puede llegar.</li><li><strong>Visite al dentista regularmente para realizar limpiezas y controles dentales.</strong> El dentista puede eliminar la placa y el sarro acumulados, que pueden causar problemas dentales.</li></ul><h4><br></h4><p>La higiene bucal es una parte importante de la salud general. Practicando una buena higiene bucal, puedes ayudar a prevenir problemas dentales y mantener una sonrisa sana y hermosa.</p><p><br></p><h4><strong><em>¿Quieres saber más sobre cómo mejorar tu higiene bucal? Programa una cita con nosotros hoy mismo.</em></strong></h4><p><br></p>', 'la-importancia-de-la-higiene-bucal-para-tu-salud-y-bienestar.png', 'la-importancia-de-la-higiene-bucal-para-tu-salud-y-bienestar', 'DIVUM', '2023-10-24 06:11:35', 1),
(3, 'Tratamientos faciales para rejuvenecer tu piel en México: una guía completa', 'Con el paso del tiempo, la piel del rostro va perdiendo su elasticidad y firmeza, lo que se traduce en la aparición de arrugas, flacidez y manchas. Sin embargo, existen una serie de tratamientos faciales que pueden ayudar a retrasar los signos del envejecimiento y recuperar un aspecto más joven y saludable.', '<p>En esta guía, te contamos cuáles son los tratamientos faciales más efectivos para rejuvenecer la piel en México. Además, te damos consejos para elegir el tratamiento más adecuado para ti.</p><p><br></p><h4><strong>Los tipos de tratamientos faciales para rejuvenecer la piel</strong></h4><p>Los tratamientos faciales para rejuvenecer la piel se pueden clasificar en dos categorías principales:</p><ul><li><a href=\"http://belleza.divumclinic.com/servicios\" rel=\"noopener noreferrer\" target=\"_blank\"><strong>Tratamientos no invasivos</strong></a><strong>:</strong> Estos tratamientos no requieren cirugía ni incisiones. Se realizan en la consulta del médico o en un centro de estética y sus resultados son temporales. Algunos ejemplos de tratamientos no invasivos para rejuvenecer la piel son:</li><li class=\"ql-indent-1\"><strong>Rellenos faciales:</strong> Estos tratamientos se utilizan para rellenar las arrugas y líneas de expresión. Los rellenos más comunes son los de ácido hialurónico, que son biodegradables y se absorben por el cuerpo con el tiempo.</li><li class=\"ql-indent-1\"><strong>Toxina botulínica:</strong> Este tratamiento se utiliza para relajar los músculos faciales que causan las arrugas de expresión. Los resultados de la toxina botulínica suelen durar entre 4 y 6 meses.</li><li class=\"ql-indent-1\"><strong>Peelings químicos:</strong> Estos tratamientos se utilizan para eliminar las capas superficiales de la piel y mejorar su textura y luminosidad.</li><li class=\"ql-indent-1\"><strong>Radiofrecuencia facial:</strong> Este tratamiento estimula la producción de colágeno y elastina, lo que ayuda a tensar la piel y reducir las arrugas.</li><li class=\"ql-indent-1\"><strong>Hilos tensores:</strong> Estos tratamientos se utilizan para tensar la piel mediante la inserción de hilos finos en las capas profundas de la piel.</li><li><strong>Tratamientos invasivos:</strong> Estos tratamientos requieren cirugía o incisiones. Se realizan en un hospital o clínica especializada y sus resultados son duraderos. Algunos ejemplos de tratamientos invasivos para rejuvenecer la piel son:</li><li class=\"ql-indent-1\"><strong>Lifting facial:</strong> Este tratamiento se utiliza para tensar la piel y eliminar la flacidez del rostro.</li><li class=\"ql-indent-1\"><strong>Blefaroplastia:</strong> Este tratamiento se utiliza para corregir los párpados caídos.</li><li class=\"ql-indent-1\"><strong>Rejuvenecimiento con láser:</strong> Este tratamiento se utiliza para eliminar manchas, arrugas y cicatrices.</li></ul><p><br></p><h4><strong>Cómo elegir el tratamiento facial adecuado</strong></h4><p>El mejor tratamiento facial para rejuvenecer la piel dependerá de las necesidades y objetivos de cada persona. Por eso, es importante consultar con un médico o especialista en estética para que te asesore sobre el tratamiento más adecuado para ti.</p><p>A continuación, te damos algunos consejos para elegir el tratamiento facial adecuado:</p><ul><li><strong>Evalúa tus necesidades:</strong> ¿Qué es lo que te preocupa de tu piel? ¿Quieres eliminar arrugas, mejorar la textura de la piel o corregir la flacidez?</li><li><strong>Considera tus objetivos:</strong> ¿Qué resultados esperas obtener? ¿Quieres un efecto inmediato o duradero?</li><li><a href=\"http://belleza.divumclinic.com/contacto\" rel=\"noopener noreferrer\" target=\"_blank\"><strong>Consulta con un profesional</strong></a><strong>:</strong> Un médico o especialista en estética podrá asesorarte sobre el tratamiento más adecuado para ti.</li></ul><p><br></p><p>Los tratamientos faciales para rejuvenecer la piel son una excelente opción para retrasar los signos del envejecimiento y recuperar un aspecto más joven y saludable. Sin embargo, es importante elegir el tratamiento adecuado para ti y consultar con un profesional antes de realizar cualquier tratamiento.</p>', 'tratamientos-faciales-para-rejuvenecer-tu-piel-en-m--xico--una-gu--a-completa.png', 'tratamientos-faciales-para-rejuvenecer-tu-piel-en-mxico-una-gua-completa', 'DIVUM', '2023-10-25 15:32:55', 1),
(4, 'Consejos para una higiene bucal perfecta', 'Una sonrisa sana y brillante es una de las mejores tarjetas de presentación que podemos tener. Sin embargo, para mantenerla así, es necesario seguir una rutina de higiene bucal adecuada.', '<h4>En esta entrada del blog, te daremos algunos consejos para que puedas tener una higiene bucal perfecta.</h4><p><br></p><p><strong>1. Cepíllese los dientes dos veces al día durante dos minutos cada vez.</strong></p><p>Este es el consejo más importante para una buena higiene bucal. El cepillado elimina la placa bacteriana, que es la principal causa de caries y enfermedades de las encías.</p><p>Al cepillarse los dientes, use una pasta dental con flúor. El flúor ayuda a fortalecer los dientes y prevenir las caries.</p><p><strong>2. Use hilo dental una vez al día.</strong></p><p>El hilo dental es esencial para eliminar la placa y los restos de comida de entre los dientes, donde el cepillo no puede llegar.</p><p><strong>3. Use un enjuague bucal.</strong></p><p>Un enjuague bucal puede ayudar a eliminar las bacterias y refrescar el aliento.</p><p><strong>4. </strong><a href=\"https://divumclinic.com/contacto\" rel=\"noopener noreferrer\" target=\"_blank\"><strong>Visite al dentista regularmente</strong></a><strong>.</strong></p><p>Las limpiezas dentales profesionales pueden eliminar la placa y el sarro acumulados, que pueden causar problemas dentales.</p><p><strong>Consejos adicionales:</strong></p><ul><li>Use un cepillo de dientes de cerdas suaves.</li><li>Reemplace su cepillo de dientes cada tres meses.</li><li>Use una pasta dental con flúor.</li><li>Cepíllese los dientes en círculos, prestando especial atención a las superficies internas y externas de los dientes.</li><li>Use hilo dental una vez al día, antes de acostarse.</li><li>Use un enjuague bucal.</li><li>Visite al dentista regularmente para realizar limpiezas y controles dentales.</li></ul><p><strong><br></strong></p><p>Siguiendo estos consejos, puede mantener una higiene bucal perfecta y disfrutar de una sonrisa sana y brillante.</p>', 'consejos-para-una-higiene-bucal-perfecta.png', 'consejos-para-una-higiene-bucal-perfecta', 'DIVUM', '2023-10-26 20:48:12', 1),
(5, 'Los beneficios de la toxina botulínica para rejuvenecer la piel', 'La toxina botulínica, también conocida como botox, es un tratamiento estético no invasivo que se utiliza para eliminar o suavizar las arrugas de expresión. Este tratamiento funciona al bloquear la señal nerviosa que envía el cerebro a los músculos faciales, lo que hace que estos se relajen y las arrugas desaparezcan o se reduzcan.', '<h4><strong>¿Cuáles son los beneficios de la toxina botulínica?</strong></h4><p>La toxina botulínica tiene una serie de beneficios para rejuvenecer la piel, entre los que se encuentran:</p><ul><li><strong>Elimina o suaviza las arrugas de expresión:</strong> Las arrugas de expresión son las que se forman en el rostro cuando se realizan movimientos faciales repetitivos, como fruncir el ceño, levantar la ceja o sonreír. La toxina botulínica es muy efectiva para eliminar o suavizar estas arrugas.</li><li><strong>Mejora la apariencia del rostro:</strong> La toxina botulínica puede ayudar a mejorar la apariencia del rostro, haciendo que se vea más relajado y joven.</li><li><strong>Es un tratamiento seguro y eficaz:</strong> La toxina botulínica es un tratamiento seguro y eficaz que ha sido aprobado por la FDA (Administración de Alimentos y Medicamentos de los Estados Unidos).</li></ul><p><br></p><h4><strong>¿Cuáles son las indicaciones de la toxina botulínica?</strong></h4><p>La toxina botulínica está indicada para el tratamiento de las siguientes arrugas de expresión:</p><ul><li><strong>Arrugas de la frente:</strong> Las arrugas de la frente son las que se forman en el centro de la frente cuando se frunce el ceño.</li><li><strong>Arrugas del entrecejo:</strong> Las arrugas del entrecejo son las que se forman entre las cejas cuando se frunce el ceño.</li><li><strong>Arrugas patas de gallo:</strong> Las arrugas patas de gallo son las que se forman en los extremos de los ojos cuando se sonríe o se ríe.</li><li><strong>Arrugas alrededor de la boca:</strong> Las arrugas alrededor de la boca son las que se forman cuando se sonríe o se ríe.</li></ul><p><br></p><h4><strong>¿Cuáles son los efectos secundarios de la toxina botulínica?</strong></h4><p>Los efectos secundarios de la toxina botulínica son leves y suelen desaparecer en unos pocos días. Los efectos secundarios más comunes son:</p><ul><li><strong>Hinchazón y enrojecimiento en el lugar de la inyección:</strong> Estos efectos secundarios suelen desaparecer en unas pocas horas.</li><li><strong>Dolor de cabeza:</strong> El dolor de cabeza es un efecto secundario poco frecuente.</li><li><strong>Baja intensidad de los músculos faciales:</strong> En casos muy raros, la toxina botulínica puede provocar una baja intensidad de los músculos faciales.</li></ul><p><br></p><h4><strong>¿Cómo se aplica la toxina botulínica?</strong></h4><p>La toxina botulínica se aplica mediante inyecciones en los músculos faciales. El procedimiento se realiza en la consulta del médico o del especialista en estética y es relativamente sencillo y rápido.</p><p><br></p><h4><strong>¿Cuánto dura el efecto de la toxina botulínica?</strong></h4><p>El efecto de la toxina botulínica suele durar entre 4 y 6 meses.</p><p><br></p><h4><strong>¿Es necesario realizar un mantenimiento del tratamiento?</strong></h4><p>Sí, es necesario realizar un mantenimiento del tratamiento cada 4 o 6 meses para prolongar los resultados.</p><p><strong><br></strong></p><p>La toxina botulínica es un tratamiento estético eficaz y seguro que puede ayudar a eliminar o suavizar las arrugas de expresión. Si estás pensando en realizarte este tratamiento, es importante que consultes con un médico o especialista en estética para que te asesore sobre la idoneidad del tratamiento para ti.</p>', 'los-beneficios-de-la-toxina-botul--nica-para-rejuvenecer-la-piel.png', 'los-beneficios-de-la-toxina-botulnica-para-rejuvenecer-la-piel', 'DIVUM', '2023-10-27 17:59:52', 1),
(6, '¿Cómo elegir el cepillo de dientes adecuado?', 'El cepillo de dientes es una herramienta esencial para la higiene bucal. Sin embargo, no todos los cepillos de dientes son iguales. Elegir el cepillo de dientes adecuado es importante para mantener una buena salud bucal.', '<h4>En esta entrada del blog, te daremos algunos consejos para elegir el cepillo de dientes adecuado.</h4><p><br></p><p><strong>1. Tamaño de la cabeza del cepillo:</strong></p><p>La cabeza del cepillo debe ser del tamaño adecuado para que puedas llegar a todos los dientes de tu boca. Una cabeza demasiado grande puede ser difícil de usar y no te permitirá llegar a todos los rincones.</p><p><strong>2. Dureza de las cerdas:</strong></p><p>Las cerdas de los cepillos de dientes vienen en diferentes durezas. Las cerdas suaves son las mejores para la mayoría de las personas. Las cerdas duras pueden dañar las encías.</p><p><strong>3. Mango del cepillo:</strong></p><p>El mango del cepillo debe ser cómodo de sostener. Un mango con un agarre antideslizante te ayudará a cepillarte los dientes con seguridad.</p><p><strong>4. Tipo de cepillo:</strong></p><p>Hay dos tipos principales de cepillos de dientes: manuales y eléctricos. Los cepillos de dientes manuales son más económicos y fáciles de encontrar. Los cepillos de dientes eléctricos pueden ser más eficaces para eliminar la placa y los restos de comida.</p><p><strong>Consejos adicionales:</strong></p><ul><li>Reemplace su cepillo de dientes cada tres meses.</li><li>Use una pasta dental con flúor.</li><li>Cepíllese los dientes dos veces al día durante dos minutos cada vez.</li><li>Use hilo dental una vez al día.</li><li><a href=\"https://divumclinic.com/contacto\" rel=\"noopener noreferrer\" target=\"_blank\">Visite al dentista regularmente</a> para realizar limpiezas y controles dentales.</li></ul><p><strong><br></strong></p><p>Elegir el cepillo de dientes adecuado es importante para mantener una buena salud bucal. Siguiendo estos consejos, puedes elegir el cepillo de dientes perfecto para ti.</p>', '--c--mo-elegir-el-cepillo-de-dientes-adecuado-.png', 'cmo-elegir-el-cepillo-de-dientes-adecuado', 'DIVUM', '2023-10-30 07:19:59', 0);

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
(1, 9),
(2, 2),
(3, 10),
(4, 7),
(5, 14),
(6, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `post_usuario`
--

CREATE TABLE `post_usuario` (
  `id_postUsuario` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_post` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `post_usuario`
--

INSERT INTO `post_usuario` (`id_postUsuario`, `id_usuario`, `id_post`) VALUES
(3, 1, 1),
(4, 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roulette_options`
--

CREATE TABLE `roulette_options` (
  `id_option` int(11) NOT NULL,
  `option_text` varchar(255) NOT NULL,
  `option_style` json DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `roulette_options`
--

INSERT INTO `roulette_options` (`id_option`, `option_text`, `option_style`, `status`) VALUES
(1, '10% OFF FACIAL', '{\"fontSize\": 15, \"textColor\": \"white\", \"fontWeight\": 10, \"backgroundColor\": \"#005682\"}', 1),
(2, 'GRATIS MIRADA HOLLYWOOD', '{\"fontSize\": 15, \"textColor\": \"black\", \"fontWeight\": 10, \"backgroundColor\": \"#FFFFFF\"}', 1),
(3, '5% OFF MICRONEEDLING', '{\"fontSize\": 15, \"textColor\": \"white\", \"fontWeight\": 10, \"backgroundColor\": \"#005682\"}', 0),
(4, 'GRATIS MICROBLADING', '{\"fontSize\": 15, \"textColor\": \"black\", \"fontWeight\": 10, \"backgroundColor\": \"#FFFFFF\"}', 1),
(5, '10% OFF PEELING', '{\"fontSize\": 15, \"textColor\": \"white\", \"fontWeight\": 10, \"backgroundColor\": \"#005682\"}', 1),
(6, 'GRATIS PULIDO ROSTRO', '{\"fontSize\": 15, \"textColor\": \"black\", \"fontWeight\": 10, \"backgroundColor\": \"#FFFFFF\"}', 1),
(7, '15% OFF HIDRATACIÓN DE PIEL', '{\"fontSize\": 15, \"textColor\": \"white\", \"fontWeight\": 10, \"backgroundColor\": \"#005682\"}', 1),
(8, '25% OFF MANCHAS DE PIEL', '{\"fontSize\": 15, \"textColor\": \"black\", \"fontWeight\": 10, \"backgroundColor\": \"#FFFFFF\"}', 1),
(9, 'GRATIS CONSULTA VALORACIÓN RINOPLASTIA', '{\"fontSize\": 15, \"textColor\": \"white\", \"fontWeight\": 10, \"backgroundColor\": \"#005682\"}', 0),
(10, 'GRATIS CONSULTA VALORACIÓN RINOPLASTIA', '{\"fontSize\": 15, \"textColor\": \"black\", \"fontWeight\": 10, \"backgroundColor\": \"#FFFFFF\"}', 1),
(11, 'GRATIS CONSULTA VALORACIÓN RINOPLASTIA', '{\"fontSize\": 15, \"textColor\": \"white\", \"fontWeight\": 10, \"backgroundColor\": \"#005682\"}', 1),
(12, 'GRATIS CONSULTA VALORACIÓN RINOPLASTIA', '{\"fontSize\": 15, \"textColor\": \"black\", \"fontWeight\": 10, \"backgroundColor\": \"#FFFFFF\"}', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roulette_user`
--

CREATE TABLE `roulette_user` (
  `id_roulette_user` int(11) NOT NULL,
  `id_option` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `confirmation_code` varchar(550) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `roulette_user`
--

INSERT INTO `roulette_user` (`id_roulette_user`, `id_option`, `id_usuario`, `confirmation_code`) VALUES
(2, 9, 1, '7uPTEwsM5BkKMIU2n9-1'),
(4, 3, 3, 'qdBEKBmQ1sd3xkk3ye-3');

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
  `tipo` varchar(255) NOT NULL DEFAULT 'usuario',
  `fechaRegistro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nombre`, `titulo`, `fotoPerfil`, `descripcionPersonal`, `tipo`, `fechaRegistro`, `status`) VALUES
(1, 'JUAN OMAR CAMACHO GIL', 'INGE EN SISTEMAS', 'imgPerfilPredeterminado.jpg', 'SOY EL DESARROLLADOR', 'admin', '2023-10-04 00:57:17', 0),
(2, 'DIVUM', 'ADMIN', 'imgPerfilPredeterminado.jpg', 'ADMIN', 'admin', '2023-10-24 06:08:26', 0),
(3, 'JUAN GIL', 'Ninguno', 'imgPerfilPredeterminado.jpg', 'JUEGO DE RULETA', 'usuario', '2023-10-28 07:21:17', 1);

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
-- Volcado de datos para la tabla `usuarios_login`
--

INSERT INTO `usuarios_login` (`id_usuarioLogin`, `id_usuario`, `correo`, `password`, `last_login`) VALUES
(1, 1, 'juanomarcamacho@gmail.com', '$2y$10$0wKRwBy/nNKzemlNxGhQqO5Xkm2UTAQlf9fk2K8dJ/O1Mdnd/GsD6', '2023-10-04 00:57:17'),
(2, 3, 'omar@yopmail.com', '$2y$10$7WyOW14ou/qV8XBYFKGYPeKqKp10M6pLhQcLrqP598xNTwWmeUbH6', '2023-10-28 07:21:17');

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
-- Indices de la tabla `roulette_options`
--
ALTER TABLE `roulette_options`
  ADD PRIMARY KEY (`id_option`);

--
-- Indices de la tabla `roulette_user`
--
ALTER TABLE `roulette_user`
  ADD PRIMARY KEY (`id_roulette_user`),
  ADD KEY `id_option` (`id_option`),
  ADD KEY `id_usuario` (`id_usuario`);

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
  MODIFY `id_post` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `post_usuario`
--
ALTER TABLE `post_usuario`
  MODIFY `id_postUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `roulette_options`
--
ALTER TABLE `roulette_options`
  MODIFY `id_option` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `roulette_user`
--
ALTER TABLE `roulette_user`
  MODIFY `id_roulette_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `treatments`
--
ALTER TABLE `treatments`
  MODIFY `id_treatment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuarios_login`
--
ALTER TABLE `usuarios_login`
  MODIFY `id_usuarioLogin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
-- Filtros para la tabla `roulette_user`
--
ALTER TABLE `roulette_user`
  ADD CONSTRAINT `roulette_user_ibfk_1` FOREIGN KEY (`id_option`) REFERENCES `roulette_options` (`id_option`),
  ADD CONSTRAINT `roulette_user_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `usuarios_login`
--
ALTER TABLE `usuarios_login`
  ADD CONSTRAINT `usuarios_login_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);
COMMIT;
