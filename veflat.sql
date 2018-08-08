-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 12, 2018 at 01:51 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.1.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `veflat`
--

-- --------------------------------------------------------

--
-- Table structure for table `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `iduser` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`, `iduser`) VALUES
(1, 'Belleza', 0);

-- --------------------------------------------------------

--
-- Table structure for table `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dominio` int(11) NOT NULL,
  `email` int(11) NOT NULL,
  `telefono` int(11) NOT NULL,
  `plan` int(11) NOT NULL,
  `fecha_vencimiento` date NOT NULL,
  `fecha_renovacion` date NOT NULL,
  `activo` int(11) NOT NULL,
  `anios` int(11) NOT NULL,
  `iduser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE `config` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `value` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `config_user`
--

CREATE TABLE `config_user` (
  `id` int(11) NOT NULL,
  `nombre` varchar(32) NOT NULL,
  `valor` varchar(32) NOT NULL,
  `usuario` int(11) NOT NULL,
  `iduser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `config_user`
--

INSERT INTO `config_user` (`id`, `nombre`, `valor`, `usuario`, `iduser`) VALUES
(1, 'tarificacion', '60', 25, 25),
(2, 'tarificacion', '60', 45, 45),
(3, 'tarificacion', '60', 49, 49),
(4, 'tarificacion', '60', 63, 63);

-- --------------------------------------------------------

--
-- Table structure for table `cuenta`
--

CREATE TABLE `cuenta` (
  `id` int(11) NOT NULL,
  `entrada` float NOT NULL,
  `salida` float NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `moneda` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `iduser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `grupo` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `orden` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `grupo`, `nombre`, `link`, `icon`, `orden`) VALUES
(1, 99, 'Inicio', '?inicio', 'fa fa-home', 1),
(2, 99, 'Salir', '?logout', 'fa fa-out', 99),
(3, 99, 'Cuentas', '?cuentas', 'fa fa-list-o', 1);

-- --------------------------------------------------------

--
-- Table structure for table `paises`
--

CREATE TABLE `paises` (
  `id` smallint(3) UNSIGNED ZEROFILL NOT NULL,
  `iso2` char(2) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `iso3` char(3) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `prefijo` smallint(5) UNSIGNED NOT NULL,
  `nombre` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `continente` varchar(16) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `subcontinente` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `iso_moneda` varchar(3) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `nombre_moneda` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `paises`
--

INSERT INTO `paises` (`id`, `iso2`, `iso3`, `prefijo`, `nombre`, `continente`, `subcontinente`, `iso_moneda`, `nombre_moneda`) VALUES
(004, 'AF', 'AFG', 93, 'Afganistán', 'Asia', NULL, 'AFN', 'Afgani afgano'),
(008, 'AL', 'ALB', 355, 'Albania', 'Europa', NULL, 'ALL', 'Lek albanés'),
(010, 'AQ', 'ATA', 672, 'Antártida', 'Antártida', NULL, NULL, NULL),
(012, 'DZ', 'DZA', 213, 'Argelia', 'África', NULL, 'DZD', 'Dinar algerino'),
(016, 'AS', 'ASM', 1684, 'Samoa Americana', 'Oceanía', NULL, NULL, NULL),
(020, 'AD', 'AND', 376, 'Andorra', 'Europa', NULL, 'EUR', 'Euro'),
(024, 'AO', 'AGO', 244, 'Angola', 'África', NULL, 'AOA', 'Kwanza angoleño'),
(028, 'AG', 'ATG', 1268, 'Antigua y Barbuda', 'América', 'El Caribe', NULL, NULL),
(031, 'AZ', 'AZE', 994, 'Azerbaiyán', 'Asia', NULL, 'AZM', 'Manat azerbaiyano'),
(032, 'AR', 'ARG', 54, 'Argentina', 'América', 'América del Sur', 'ARS', 'Peso argentino'),
(036, 'AU', 'AUS', 61, 'Australia', 'Oceanía', NULL, 'AUD', 'Dólar australiano'),
(040, 'AT', 'AUT', 43, 'Austria', 'Europa', NULL, 'EUR', 'Euro'),
(044, 'BS', 'BHS', 1242, 'Bahamas', 'América', 'El Caribe', 'BSD', 'Dólar bahameño'),
(048, 'BH', 'BHR', 973, 'Bahréin', 'Asia', NULL, 'BHD', 'Dinar bahreiní'),
(050, 'BD', 'BGD', 880, 'Bangladesh', 'Asia', NULL, 'BDT', 'Taka de Bangladesh'),
(051, 'AM', 'ARM', 374, 'Armenia', 'Asia', NULL, 'AMD', 'Dram armenio'),
(052, 'BB', 'BRB', 1246, 'Barbados', 'América', 'El Caribe', 'BBD', 'Dólar de Barbados'),
(056, 'BE', 'BEL', 32, 'Bélgica', 'Europa', NULL, 'EUR', 'Euro'),
(060, 'BM', 'BMU', 1441, 'Bermudas', 'América', 'El Caribe', 'BMD', 'Dólar de Bermuda'),
(064, 'BT', 'BTN', 975, 'Bhután', 'Asia', NULL, 'BTN', 'Ngultrum de Bután'),
(068, 'BO', 'BOL', 591, 'Bolivia', 'América', 'América del Sur', 'BOB', 'Boliviano'),
(070, 'BA', 'BIH', 387, 'Bosnia y Herzegovina', 'Europa', NULL, 'BAM', 'Marco convertible de Bosnia-Herzegovina'),
(072, 'BW', 'BWA', 267, 'Botsuana', 'África', NULL, 'BWP', 'Pula de Botsuana'),
(074, 'BV', 'BVT', 0, 'Isla Bouvet', NULL, NULL, NULL, NULL),
(076, 'BR', 'BRA', 55, 'Brasil', 'América', 'América del Sur', 'BRL', 'Real brasileño'),
(084, 'BZ', 'BLZ', 501, 'Belice', 'América', 'América Central', 'BZD', 'Dólar de Belice'),
(086, 'IO', 'IOT', 0, 'Territorio Británico del Océano Índico', NULL, NULL, NULL, NULL),
(090, 'SB', 'SLB', 677, 'Islas Salomón', 'Oceanía', NULL, 'SBD', 'Dólar de las Islas Salomón'),
(092, 'VG', 'VGB', 1284, 'Islas Vírgenes Británicas', 'América', 'El Caribe', NULL, NULL),
(096, 'BN', 'BRN', 673, 'Brunéi', 'Asia', NULL, 'BND', 'Dólar de Brunéi'),
(100, 'BG', 'BGR', 359, 'Bulgaria', 'Europa', NULL, 'BGN', 'Lev búlgaro'),
(104, 'MM', 'MMR', 95, 'Myanmar', 'Asia', NULL, 'MMK', 'Kyat birmano'),
(108, 'BI', 'BDI', 257, 'Burundi', 'África', NULL, 'BIF', 'Franco burundés'),
(112, 'BY', 'BLR', 375, 'Bielorrusia', 'Europa', NULL, 'BYR', 'Rublo bielorruso'),
(116, 'KH', 'KHM', 855, 'Camboya', 'Asia', NULL, 'KHR', 'Riel camboyano'),
(120, 'CM', 'CMR', 237, 'Camerún', 'África', NULL, NULL, NULL),
(124, 'CA', 'CAN', 1, 'Canadá', 'América', 'América del Norte', 'CAD', 'Dólar canadiense'),
(132, 'CV', 'CPV', 238, 'Cabo Verde', 'África', NULL, 'CVE', 'Escudo caboverdiano'),
(136, 'KY', 'CYM', 1345, 'Islas Caimán', 'América', 'El Caribe', 'KYD', 'Dólar caimano (de Islas Caimán)'),
(140, 'CF', 'CAF', 236, 'República Centroafricana', 'África', NULL, NULL, NULL),
(144, 'LK', 'LKA', 94, 'Sri Lanka', 'Asia', NULL, 'LKR', 'Rupia de Sri Lanka'),
(148, 'TD', 'TCD', 235, 'Chad', 'África', NULL, NULL, NULL),
(152, 'CL', 'CHL', 56, 'Chile', 'América', 'América del Sur', 'CLP', 'Peso chileno'),
(156, 'CN', 'CHN', 86, 'China', 'Asia', NULL, 'CNY', 'Yuan Renminbi de China'),
(158, 'TW', 'TWN', 886, 'Taiwán', 'Asia', NULL, 'TWD', 'Dólar taiwanés'),
(162, 'CX', 'CXR', 61, 'Isla de Navidad', 'Oceanía', NULL, NULL, NULL),
(166, 'CC', 'CCK', 61, 'Islas Cocos', 'Óceanía', NULL, NULL, NULL),
(170, 'CO', 'COL', 57, 'Colombia', 'América', 'América del Sur', 'COP', 'Peso colombiano'),
(174, 'KM', 'COM', 269, 'Comoras', 'África', NULL, 'KMF', 'Franco comoriano (de Comoras)'),
(175, 'YT', 'MYT', 262, 'Mayotte', 'África', NULL, NULL, NULL),
(178, 'CG', 'COG', 242, 'Congo', 'África', NULL, NULL, NULL),
(180, 'CD', 'COD', 243, 'República Democrática del Congo', 'África', NULL, 'CDF', 'Franco congoleño'),
(184, 'CK', 'COK', 682, 'Islas Cook', 'Oceanía', NULL, NULL, NULL),
(188, 'CR', 'CRI', 506, 'Costa Rica', 'América', 'América Central', 'CRC', 'Colón costarricense'),
(191, 'HR', 'HRV', 385, 'Croacia', 'Europa', NULL, 'HRK', 'Kuna croata'),
(192, 'CU', 'CUB', 53, 'Cuba', 'América', 'El Caribe', 'CUP', 'Peso cubano'),
(196, 'CY', 'CYP', 357, 'Chipre', 'Europa', NULL, 'CYP', 'Libra chipriota'),
(203, 'CZ', 'CZE', 420, 'República Checa', 'Europa', NULL, 'CZK', 'Koruna checa'),
(204, 'BJ', 'BEN', 229, 'Benín', 'África', NULL, NULL, NULL),
(208, 'DK', 'DNK', 45, 'Dinamarca', 'Europa', NULL, 'DKK', 'Corona danesa'),
(212, 'DM', 'DMA', 1767, 'Dominica', 'América', 'El Caribe', NULL, NULL),
(214, 'DO', 'DOM', 1809, 'República Dominicana', 'América', 'El Caribe', 'DOP', 'Peso dominicano'),
(218, 'EC', 'ECU', 593, 'Ecuador', 'América', 'América del Sur', NULL, NULL),
(222, 'SV', 'SLV', 503, 'El Salvador', 'América', 'América Central', 'SVC', 'Colón salvadoreño'),
(226, 'GQ', 'GNQ', 240, 'Guinea Ecuatorial', 'África', NULL, NULL, NULL),
(231, 'ET', 'ETH', 251, 'Etiopía', 'África', NULL, 'ETB', 'Birr etíope'),
(232, 'ER', 'ERI', 291, 'Eritrea', 'África', NULL, 'ERN', 'Nakfa eritreo'),
(233, 'EE', 'EST', 372, 'Estonia', 'Europa', NULL, 'EEK', 'Corona estonia'),
(234, 'FO', 'FRO', 298, 'Islas Feroe', 'Europa', NULL, NULL, NULL),
(238, 'FK', 'FLK', 500, 'Islas Malvinas', 'América', 'América del Sur', 'FKP', 'Libra malvinense'),
(239, 'GS', 'SGS', 0, 'Islas Georgias del Sur y Sandwich del Sur', 'América', 'América del Sur', NULL, NULL),
(242, 'FJ', 'FJI', 679, 'Fiyi', 'Oceanía', NULL, 'FJD', 'Dólar fijiano'),
(246, 'FI', 'FIN', 358, 'Finlandia', 'Europa', NULL, 'EUR', 'Euro'),
(248, 'AX', 'ALA', 0, 'Islas Gland', 'Europa', NULL, NULL, NULL),
(250, 'FR', 'FRA', 33, 'Francia', 'Europa', NULL, 'EUR', 'Euro'),
(254, 'GF', 'GUF', 0, 'Guayana Francesa', 'América', 'América del Sur', NULL, NULL),
(258, 'PF', 'PYF', 689, 'Polinesia Francesa', 'Oceanía', NULL, NULL, NULL),
(260, 'TF', 'ATF', 0, 'Territorios Australes Franceses', NULL, NULL, NULL, NULL),
(262, 'DJ', 'DJI', 253, 'Yibuti', 'África', NULL, 'DJF', 'Franco yibutiano'),
(266, 'GA', 'GAB', 241, 'Gabón', 'África', NULL, NULL, NULL),
(268, 'GE', 'GEO', 995, 'Georgia', 'Europa', NULL, 'GEL', 'Lari georgiano'),
(270, 'GM', 'GMB', 220, 'Gambia', 'África', NULL, 'GMD', 'Dalasi gambiano'),
(275, 'PS', 'PSE', 0, 'Palestina', 'Asia', NULL, NULL, NULL),
(276, 'DE', 'DEU', 49, 'Alemania', 'Europa', NULL, 'EUR', 'Euro'),
(288, 'GH', 'GHA', 233, 'Ghana', 'África', NULL, 'GHC', 'Cedi ghanés'),
(292, 'GI', 'GIB', 350, 'Gibraltar', 'Europa', NULL, 'GIP', 'Libra de Gibraltar'),
(296, 'KI', 'KIR', 686, 'Kiribati', 'Oceanía', NULL, NULL, NULL),
(300, 'GR', 'GRC', 30, 'Grecia', 'Europa', NULL, 'EUR', 'Euro'),
(304, 'GL', 'GRL', 299, 'Groenlandia', 'América', 'América del Norte', NULL, NULL),
(308, 'GD', 'GRD', 1473, 'Granada', 'América', 'El Caribe', NULL, NULL),
(312, 'GP', 'GLP', 0, 'Guadalupe', 'América', 'El Caribe', NULL, NULL),
(316, 'GU', 'GUM', 1671, 'Guam', 'Oceanía', NULL, NULL, NULL),
(320, 'GT', 'GTM', 502, 'Guatemala', 'América', 'América Central', 'GTQ', 'Quetzal guatemalteco'),
(324, 'GN', 'GIN', 224, 'Guinea', 'África', NULL, 'GNF', 'Franco guineano'),
(328, 'GY', 'GUY', 592, 'Guyana', 'América', 'América del Sur', 'GYD', 'Dólar guyanés'),
(332, 'HT', 'HTI', 509, 'Haití', 'América', 'El Caribe', 'HTG', 'Gourde haitiano'),
(334, 'HM', 'HMD', 0, 'Islas Heard y McDonald', 'Oceanía', NULL, NULL, NULL),
(336, 'VA', 'VAT', 39, 'Ciudad del Vaticano', 'Europa', NULL, NULL, NULL),
(340, 'HN', 'HND', 504, 'Honduras', 'América', 'América Central', 'HNL', 'Lempira hondureño'),
(344, 'HK', 'HKG', 852, 'Hong Kong', 'Asia', NULL, 'HKD', 'Dólar de Hong Kong'),
(348, 'HU', 'HUN', 36, 'Hungría', 'Europa', NULL, 'HUF', 'Forint húngaro'),
(352, 'IS', 'ISL', 354, 'Islandia', 'Europa', NULL, 'ISK', 'Króna islandesa'),
(356, 'IN', 'IND', 91, 'India', 'Asia', NULL, 'INR', 'Rupia india'),
(360, 'ID', 'IDN', 62, 'Indonesia', 'Asia', NULL, 'IDR', 'Rupiah indonesia'),
(364, 'IR', 'IRN', 98, 'Irán', 'Asia', NULL, 'IRR', 'Rial iraní'),
(368, 'IQ', 'IRQ', 964, 'Iraq', 'Asia', NULL, 'IQD', 'Dinar iraquí'),
(372, 'IE', 'IRL', 353, 'Irlanda', 'Europa', NULL, 'EUR', 'Euro'),
(376, 'IL', 'ISR', 972, 'Israel', 'Asia', NULL, 'ILS', 'Nuevo shéquel israelí'),
(380, 'IT', 'ITA', 39, 'Italia', 'Europa', NULL, 'EUR', 'Euro'),
(384, 'CI', 'CIV', 225, 'Costa de Marfil', 'África', NULL, NULL, NULL),
(388, 'JM', 'JAM', 1876, 'Jamaica', 'América', 'El Caribe', 'JMD', 'Dólar jamaicano'),
(392, 'JP', 'JPN', 81, 'Japón', 'Asia', NULL, 'JPY', 'Yen japonés'),
(398, 'KZ', 'KAZ', 7, 'Kazajstán', 'Asia', NULL, 'KZT', 'Tenge kazajo'),
(400, 'JO', 'JOR', 962, 'Jordania', 'Asia', NULL, 'JOD', 'Dinar jordano'),
(404, 'KE', 'KEN', 254, 'Kenia', 'África', NULL, 'KES', 'Chelín keniata'),
(408, 'KP', 'PRK', 850, 'Corea del Norte', 'Asia', NULL, 'KPW', 'Won norcoreano'),
(410, 'KR', 'KOR', 82, 'Corea del Sur', 'Asia', NULL, 'KRW', 'Won surcoreano'),
(414, 'KW', 'KWT', 965, 'Kuwait', 'Asia', NULL, 'KWD', 'Dinar kuwaití'),
(417, 'KG', 'KGZ', 996, 'Kirguistán', 'Asia', NULL, 'KGS', 'Som kirguís (de Kirguistán)'),
(418, 'LA', 'LAO', 856, 'Laos', 'Asia', NULL, 'LAK', 'Kip lao'),
(422, 'LB', 'LBN', 961, 'Líbano', 'Asia', NULL, 'LBP', 'Libra libanesa'),
(426, 'LS', 'LSO', 266, 'Lesotho', 'África', NULL, 'LSL', 'Loti lesotense'),
(428, 'LV', 'LVA', 371, 'Letonia', 'Europa', NULL, 'LVL', 'Lat letón'),
(430, 'LR', 'LBR', 231, 'Liberia', 'África', NULL, 'LRD', 'Dólar liberiano'),
(434, 'LY', 'LBY', 218, 'Libia', 'África', NULL, 'LYD', 'Dinar libio'),
(438, 'LI', 'LIE', 423, 'Liechtenstein', 'Europa', NULL, NULL, NULL),
(440, 'LT', 'LTU', 370, 'Lituania', 'Europa', NULL, 'LTL', 'Litas lituano'),
(442, 'LU', 'LUX', 352, 'Luxemburgo', 'Europa', NULL, 'EUR', 'Euro'),
(446, 'MO', 'MAC', 853, 'Macao', 'Asia', NULL, 'MOP', 'Pataca de Macao'),
(450, 'MG', 'MDG', 261, 'Madagascar', 'África', NULL, 'MGA', 'Ariary malgache'),
(454, 'MW', 'MWI', 265, 'Malaui', 'África', NULL, 'MWK', 'Kwacha malauiano'),
(458, 'MY', 'MYS', 60, 'Malasia', 'Asia', NULL, 'MYR', 'Ringgit malayo'),
(462, 'MV', 'MDV', 960, 'Maldivas', 'Asia', NULL, 'MVR', 'Rufiyaa maldiva'),
(466, 'ML', 'MLI', 223, 'Malí', 'África', NULL, NULL, NULL),
(470, 'MT', 'MLT', 356, 'Malta', 'Europa', NULL, 'MTL', 'Lira maltesa'),
(474, 'MQ', 'MTQ', 0, 'Martinica', 'América', 'El Caribe', NULL, NULL),
(478, 'MR', 'MRT', 222, 'Mauritania', 'África', NULL, 'MRO', 'Ouguiya mauritana'),
(480, 'MU', 'MUS', 230, 'Mauricio', 'África', NULL, 'MUR', 'Rupia mauricia'),
(484, 'MX', 'MEX', 52, 'México', 'América', 'América del Norte', 'MXN', 'Peso mexicano'),
(492, 'MC', 'MCO', 377, 'Mónaco', 'Europa', NULL, NULL, NULL),
(496, 'MN', 'MNG', 976, 'Mongolia', 'Asia', NULL, 'MNT', 'Tughrik mongol'),
(498, 'MD', 'MDA', 373, 'Moldavia', 'Europa', NULL, 'MDL', 'Leu moldavo'),
(499, 'ME', 'MNE', 382, 'Montenegro', 'Europa', NULL, NULL, NULL),
(500, 'MS', 'MSR', 1664, 'Montserrat', 'América', 'El Caribe', NULL, NULL),
(504, 'MA', 'MAR', 212, 'Marruecos', 'África', NULL, 'MAD', 'Dirham marroquí'),
(508, 'MZ', 'MOZ', 258, 'Mozambique', 'África', NULL, 'MZM', 'Metical mozambiqueño'),
(512, 'OM', 'OMN', 968, 'Omán', 'Asia', NULL, 'OMR', 'Rial omaní'),
(516, 'NA', 'NAM', 264, 'Namibia', 'África', NULL, 'NAD', 'Dólar namibio'),
(520, 'NR', 'NRU', 674, 'Nauru', 'Oceanía', NULL, NULL, NULL),
(524, 'NP', 'NPL', 977, 'Nepal', 'Asia', NULL, 'NPR', 'Rupia nepalesa'),
(528, 'NL', 'NLD', 31, 'Países Bajos', 'Europa', NULL, 'EUR', 'Euro'),
(530, 'AN', 'ANT', 599, 'Antillas Holandesas', 'América', 'El Caribe', 'ANG', 'Florín antillano neerlandés'),
(533, 'AW', 'ABW', 297, 'Aruba', 'América', 'El Caribe', 'AWG', 'Florín arubeño'),
(540, 'NC', 'NCL', 687, 'Nueva Caledonia', 'Oceanía', NULL, NULL, NULL),
(548, 'VU', 'VUT', 678, 'Vanuatu', 'Oceanía', NULL, 'VUV', 'Vatu vanuatense'),
(554, 'NZ', 'NZL', 64, 'Nueva Zelanda', 'Oceanía', NULL, 'NZD', 'Dólar neozelandés'),
(558, 'NI', 'NIC', 505, 'Nicaragua', 'América', 'América Central', 'NIO', 'Córdoba nicaragüense'),
(562, 'NE', 'NER', 227, 'Níger', 'África', NULL, NULL, NULL),
(566, 'NG', 'NGA', 234, 'Nigeria', 'África', NULL, 'NGN', 'Naira nigeriana'),
(570, 'NU', 'NIU', 683, 'Niue', 'Oceanía', NULL, NULL, NULL),
(574, 'NF', 'NFK', 0, 'Isla Norfolk', 'Oceanía', NULL, NULL, NULL),
(578, 'NO', 'NOR', 47, 'Noruega', 'Europa', NULL, 'NOK', 'Corona noruega'),
(580, 'MP', 'MNP', 1670, 'Islas Marianas del Norte', 'Oceanía', NULL, NULL, NULL),
(581, 'UM', 'UMI', 0, 'Islas Ultramarinas de Estados Unidos', NULL, NULL, NULL, NULL),
(583, 'FM', 'FSM', 691, 'Micronesia', 'Oceanía', NULL, NULL, NULL),
(584, 'MH', 'MHL', 692, 'Islas Marshall', 'Oceanía', NULL, NULL, NULL),
(585, 'PW', 'PLW', 680, 'Palaos', 'Oceanía', NULL, NULL, NULL),
(586, 'PK', 'PAK', 92, 'Pakistán', 'Asia', NULL, 'PKR', 'Rupia pakistaní'),
(591, 'PA', 'PAN', 507, 'Panamá', 'América', 'América Central', 'PAB', 'Balboa panameña'),
(598, 'PG', 'PNG', 675, 'Papúa Nueva Guinea', 'Oceanía', NULL, 'PGK', 'Kina de Papúa Nueva Guinea'),
(600, 'PY', 'PRY', 595, 'Paraguay', 'América', 'América del Sur', 'PYG', 'Guaraní paraguayo'),
(604, 'PE', 'PER', 51, 'Perú', 'América', 'América del Sur', 'PEN', 'Nuevo sol peruano'),
(608, 'PH', 'PHL', 63, 'Filipinas', 'Asia', NULL, 'PHP', 'Peso filipino'),
(612, 'PN', 'PCN', 870, 'Islas Pitcairn', 'Oceanía', NULL, NULL, NULL),
(616, 'PL', 'POL', 48, 'Polonia', 'Europa', NULL, 'PLN', 'zloty polaco'),
(620, 'PT', 'PRT', 351, 'Portugal', 'Europa', NULL, 'EUR', 'Euro'),
(624, 'GW', 'GNB', 245, 'Guinea-Bissau', 'África', NULL, NULL, NULL),
(626, 'TL', 'TLS', 670, 'Timor Oriental', 'Asia', NULL, NULL, NULL),
(630, 'PR', 'PRI', 1, 'Puerto Rico', 'América', 'El Caribe', NULL, NULL),
(634, 'QA', 'QAT', 974, 'Qatar', 'Asia', NULL, 'QAR', 'Rial qatarí'),
(638, 'RE', 'REU', 262, 'Reunión', 'África', NULL, NULL, NULL),
(642, 'RO', 'ROU', 40, 'Rumania', 'Europa', NULL, 'RON', 'Leu rumano'),
(643, 'RU', 'RUS', 7, 'Rusia', 'Asia', NULL, 'RUB', 'Rublo ruso'),
(646, 'RW', 'RWA', 250, 'Ruanda', 'África', NULL, 'RWF', 'Franco ruandés'),
(654, 'SH', 'SHN', 290, 'Santa Helena', 'África', NULL, 'SHP', 'Libra de Santa Helena'),
(659, 'KN', 'KNA', 1869, 'San Cristóbal y Nieves', 'América', 'El Caribe', NULL, NULL),
(660, 'AI', 'AIA', 1264, 'Anguila', 'América', 'El Caribe', NULL, NULL),
(662, 'LC', 'LCA', 1758, 'Santa Lucía', 'América', 'El Caribe', NULL, NULL),
(666, 'PM', 'SPM', 508, 'San Pedro y Miquelón', 'América', 'América del Norte', NULL, NULL),
(670, 'VC', 'VCT', 1784, 'San Vicente y las Granadinas', 'América', 'El Caribe', NULL, NULL),
(674, 'SM', 'SMR', 378, 'San Marino', 'Europa', NULL, NULL, NULL),
(678, 'ST', 'STP', 239, 'Santo Tomé y Príncipe', 'África', NULL, 'STD', 'Dobra de Santo Tomé y Príncipe'),
(682, 'SA', 'SAU', 966, 'Arabia Saudí', 'Asia', NULL, 'SAR', 'Riyal saudí'),
(686, 'SN', 'SEN', 221, 'Senegal', 'África', NULL, NULL, NULL),
(688, 'RS', 'SRB', 381, 'Serbia', 'Europa', NULL, NULL, NULL),
(690, 'SC', 'SYC', 248, 'Seychelles', 'África', NULL, 'SCR', 'Rupia de Seychelles'),
(694, 'SL', 'SLE', 232, 'Sierra Leona', 'África', NULL, 'SLL', 'Leone de Sierra Leona'),
(702, 'SG', 'SGP', 65, 'Singapur', 'Asia', NULL, 'SGD', 'Dólar de Singapur'),
(703, 'SK', 'SVK', 421, 'Eslovaquia', 'Europa', NULL, 'SKK', 'Corona eslovaca'),
(704, 'VN', 'VNM', 84, 'Vietnam', 'Asia', NULL, 'VND', 'Dong vietnamita'),
(705, 'SI', 'SVN', 386, 'Eslovenia', 'Europa', NULL, NULL, NULL),
(706, 'SO', 'SOM', 252, 'Somalia', 'África', NULL, 'SOS', 'Chelín somalí'),
(710, 'ZA', 'ZAF', 27, 'Sudáfrica', 'África', NULL, 'ZAR', 'Rand sudafricano'),
(716, 'ZW', 'ZWE', 263, 'Zimbabue', 'África', NULL, 'ZWL', 'Dólar zimbabuense'),
(724, 'ES', 'ESP', 34, 'España', 'Europa', NULL, 'EUR', 'Euro'),
(732, 'EH', 'ESH', 0, 'Sahara Occidental', 'África', NULL, NULL, NULL),
(736, 'SD', 'SDN', 249, 'Sudán', 'África', NULL, 'SDD', 'Dinar sudanés'),
(740, 'SR', 'SUR', 597, 'Surinam', 'América', 'América del Sur', 'SRD', 'Dólar surinamés'),
(744, 'SJ', 'SJM', 0, 'Svalbard y Jan Mayen', 'Europa', NULL, NULL, NULL),
(748, 'SZ', 'SWZ', 268, 'Suazilandia', 'África', NULL, 'SZL', 'Lilangeni suazi'),
(752, 'SE', 'SWE', 46, 'Suecia', 'Europa', NULL, 'SEK', 'Corona sueca'),
(756, 'CH', 'CHE', 41, 'Suiza', 'Europa', NULL, 'CHF', 'Franco suizo'),
(760, 'SY', 'SYR', 963, 'Siria', 'Asia', NULL, 'SYP', 'Libra siria'),
(762, 'TJ', 'TJK', 992, 'Tayikistán', 'Asia', NULL, 'TJS', 'Somoni tayik (de Tayikistán)'),
(764, 'TH', 'THA', 66, 'Tailandia', 'Asia', NULL, 'THB', 'Baht tailandés'),
(768, 'TG', 'TGO', 228, 'Togo', 'África', NULL, NULL, NULL),
(772, 'TK', 'TKL', 690, 'Tokelau', 'Oceanía', NULL, NULL, NULL),
(776, 'TO', 'TON', 676, 'Tonga', 'Oceanía', NULL, 'TOP', 'Pa\'anga tongano'),
(780, 'TT', 'TTO', 1868, 'Trinidad y Tobago', 'América', 'El Caribe', 'TTD', 'Dólar de Trinidad y Tobago'),
(784, 'AE', 'ARE', 971, 'Emiratos Árabes Unidos', 'Asia', NULL, 'AED', 'Dirham de los Emiratos Árabes Unidos'),
(788, 'TN', 'TUN', 216, 'Túnez', 'África', NULL, 'TND', 'Dinar tunecino'),
(792, 'TR', 'TUR', 90, 'Turquía', 'Asia', NULL, 'TRY', 'Lira turca'),
(795, 'TM', 'TKM', 993, 'Turkmenistán', 'Asia', NULL, 'TMM', 'Manat turcomano'),
(796, 'TC', 'TCA', 1649, 'Islas Turcas y Caicos', 'América', 'El Caribe', NULL, NULL),
(798, 'TV', 'TUV', 688, 'Tuvalu', 'Oceanía', NULL, NULL, NULL),
(800, 'UG', 'UGA', 256, 'Uganda', 'África', NULL, 'UGX', 'Chelín ugandés'),
(804, 'UA', 'UKR', 380, 'Ucrania', 'Europa', NULL, 'UAH', 'Grivna ucraniana'),
(807, 'MK', 'MKD', 389, 'Macedonia', 'Europa', NULL, 'MKD', 'Denar macedonio'),
(818, 'EG', 'EGY', 20, 'Egipto', 'África', NULL, 'EGP', 'Libra egipcia'),
(826, 'GB', 'GBR', 44, 'Reino Unido', 'Europa', NULL, 'GBP', 'Libra esterlina (libra de Gran Bretaña)'),
(834, 'TZ', 'TZA', 255, 'Tanzania', 'África', NULL, 'TZS', 'Chelín tanzano'),
(840, 'US', 'USA', 1, 'Estados Unidos', 'América', 'América del Norte', 'USD', 'Dólar estadounidense'),
(850, 'VI', 'VIR', 1340, 'Islas Vírgenes de los Estados Unidos', 'América', 'El Caribe', NULL, NULL),
(854, 'BF', 'BFA', 226, 'Burkina Faso', 'África', NULL, NULL, NULL),
(858, 'UY', 'URY', 598, 'Uruguay', 'América', 'América del Sur', 'UYU', 'Peso uruguayo'),
(860, 'UZ', 'UZB', 998, 'Uzbekistán', 'Asia', NULL, 'UZS', 'Som uzbeko'),
(862, 'VE', 'VEN', 58, 'Venezuela', 'América', 'América del Sur', 'VEB', 'Bolívar venezolano'),
(876, 'WF', 'WLF', 681, 'Wallis y Futuna', 'Oceanía', NULL, NULL, NULL),
(882, 'WS', 'WSM', 685, 'Samoa', 'Oceanía', NULL, 'WST', 'Tala samoana'),
(887, 'YE', 'YEM', 967, 'Yemen', 'Asia', NULL, 'YER', 'Rial yemení (de Yemen)'),
(894, 'ZM', 'ZMB', 260, 'Zambia', 'África', NULL, 'ZMK', 'Kwacha zambiano');

-- --------------------------------------------------------

--
-- Table structure for table `privilegios_grupo`
--

CREATE TABLE `privilegios_grupo` (
  `id_grupo` int(11) NOT NULL,
  `modulo` varchar(32) NOT NULL,
  `nivel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `privilegios_grupo`
--

INSERT INTO `privilegios_grupo` (`id_grupo`, `modulo`, `nivel`) VALUES
(1, 'index', 1),
(1, 'index', 2);

-- --------------------------------------------------------

--
-- Table structure for table `privilegios_user`
--

CREATE TABLE `privilegios_user` (
  `id_user` int(11) NOT NULL,
  `modulo` varchar(32) NOT NULL,
  `nivel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tipo_usuarios`
--

CREATE TABLE `tipo_usuarios` (
  `id` int(11) NOT NULL,
  `id_grupo` int(2) NOT NULL,
  `nombre` varchar(64) NOT NULL,
  `nivel` int(2) NOT NULL,
  `iduser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tipo_usuarios`
--

INSERT INTO `tipo_usuarios` (`id`, `id_grupo`, `nombre`, `nivel`, `iduser`) VALUES
(1, 1, 'Administrator', 1, 0),
(2, 2, 'Cliente', 2, 0),
(3, 3, 'Asociado', 3, 0),
(4, 4, 'Director', 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `id_grupo` int(11) NOT NULL DEFAULT '2',
  `nombre` varchar(64) NOT NULL,
  `apellido` varchar(63) NOT NULL,
  `usuario` varchar(32) NOT NULL,
  `clave` varchar(32) NOT NULL,
  `correo` varchar(64) NOT NULL,
  `puntos` int(11) NOT NULL DEFAULT '0',
  `empresa` varchar(31) NOT NULL,
  `tlf` varchar(32) NOT NULL,
  `celular` varchar(300) NOT NULL,
  `direccion` varchar(1023) NOT NULL,
  `estado` varchar(300) NOT NULL,
  `ciudad` varchar(300) NOT NULL,
  `postal` varchar(7) NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ultima_vez` datetime DEFAULT NULL,
  `modificado` datetime NOT NULL,
  `foto` varchar(255) NOT NULL,
  `iduser` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `id_grupo`, `nombre`, `apellido`, `usuario`, `clave`, `correo`, `puntos`, `empresa`, `tlf`, `celular`, `direccion`, `estado`, `ciudad`, `postal`, `activo`, `fecha_registro`, `ultima_vez`, `modificado`, `foto`, `iduser`) VALUES
(1, 1, 'Jhoubert', 'Rincon', 'rincon', 'b63f80b2948185959f6d9f4384ee26ba', 'jhoubert@veflat.com', 0, 'Veflat', '+573127278639', '+584246405296', 'Cucuta', '', 'Norte de santander', '', 1, '2016-06-29 15:51:12', '2018-02-12 00:12:05', '2016-06-29 03:51:12', '', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `config_user`
--
ALTER TABLE `config_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usr` (`nombre`,`usuario`);

--
-- Indexes for table `cuenta`
--
ALTER TABLE `cuenta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `paises`
--
ALTER TABLE `paises`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `iso2` (`iso2`),
  ADD UNIQUE KEY `iso3` (`iso3`);

--
-- Indexes for table `tipo_usuarios`
--
ALTER TABLE `tipo_usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `correo` (`correo`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `config`
--
ALTER TABLE `config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `config_user`
--
ALTER TABLE `config_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `cuenta`
--
ALTER TABLE `cuenta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tipo_usuarios`
--
ALTER TABLE `tipo_usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
