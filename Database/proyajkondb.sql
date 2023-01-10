-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 10, 2023 at 01:38 AM
-- Server version: 5.7.31
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `proyajkondb`
--

-- --------------------------------------------------------

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
CREATE TABLE IF NOT EXISTS `categoria` (
  `idcategoria` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(120) COLLATE utf8mb4_swedish_ci NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idcategoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `detallepedido`
--

DROP TABLE IF EXISTS `detallepedido`;
CREATE TABLE IF NOT EXISTS `detallepedido` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pedidoid` bigint(20) NOT NULL,
  `productoid` bigint(20) NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pedidoid` (`pedidoid`),
  KEY `productoid` (`productoid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `detalle_temp`
--

DROP TABLE IF EXISTS `detalle_temp`;
CREATE TABLE IF NOT EXISTS `detalle_temp` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `productoid` bigint(20) NOT NULL,
  `precio` varchar(300) COLLATE utf8mb4_swedish_ci NOT NULL,
  `cantidad` int(11) NOT NULL,
  `token` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `productoid` (`productoid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `me_categoriados`
--

DROP TABLE IF EXISTS `me_categoriados`;
CREATE TABLE IF NOT EXISTS `me_categoriados` (
  `idcategoriados` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(170) COLLATE utf8mb4_swedish_ci NOT NULL,
  `categoriaunoid` bigint(20) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idcategoriados`),
  KEY `categoriaunoid` (`categoriaunoid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Dumping data for table `me_categoriados`
--

INSERT INTO `me_categoriados` (`idcategoriados`, `nombre`, `categoriaunoid`, `status`) VALUES
(1, 'Paquetes Turisticos', 13, 1),
(2, 'Ademo', 13, 0),
(3, 'demo 3', 13, 0),
(4, 'Asub categoria de ejemplo', 16, 1),
(5, 'Balanzas secas', 13, 0),
(6, 'Acerrimo', 13, 0),
(7, 'Balones', 13, 0),
(8, 'Damburguesa', 13, 0),
(9, 'Perro', 13, 0),
(10, 'Farde', 13, 0);

-- --------------------------------------------------------

--
-- Table structure for table `me_categoriatres`
--

DROP TABLE IF EXISTS `me_categoriatres`;
CREATE TABLE IF NOT EXISTS `me_categoriatres` (
  `idcategoriatres` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(170) COLLATE utf8mb4_swedish_ci NOT NULL,
  `categoriadosid` bigint(20) NOT NULL,
  `ruta` varchar(512) COLLATE utf8mb4_swedish_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idcategoriatres`),
  KEY `categoriadosid` (`categoriadosid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Dumping data for table `me_categoriatres`
--

INSERT INTO `me_categoriatres` (`idcategoriatres`, `nombre`, `categoriadosid`, `ruta`, `descripcion`, `status`) VALUES
(1, 'Paquetes Nacionales', 1, 'harinas', 'Tenemos la mejor variedad de harinas en AgroenergyFoods', 1),
(2, 'subcategoria 1', 4, 'subcategoria-1', '', 0),
(3, 'Paquetes Internacionales', 1, 'frutas-deshidratadas', 'Brindamos las mejores frutas deshidratadas', 1);

-- --------------------------------------------------------

--
-- Table structure for table `me_categoriauno`
--

DROP TABLE IF EXISTS `me_categoriauno`;
CREATE TABLE IF NOT EXISTS `me_categoriauno` (
  `idcategoriauno` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(120) COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idcategoriauno`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Dumping data for table `me_categoriauno`
--

INSERT INTO `me_categoriauno` (`idcategoriauno`, `nombre`, `status`) VALUES
(9, 'cat 1', 0),
(10, 'deede', 0),
(11, 'dededed rfrfrfr', 0),
(12, 'yhyhy', 0),
(13, 'Harinas', 1),
(14, 'Categoria 01', 0),
(15, 'Categoria de ejemplo', 0),
(16, 'DENTAL', 0),
(17, 'demo', 0),
(18, 'Arroz chanchito', 0),
(19, 'ASUB CATEGORIA DE EJEMPLO', 0);

-- --------------------------------------------------------

--
-- Table structure for table `me_departamento`
--

DROP TABLE IF EXISTS `me_departamento`;
CREATE TABLE IF NOT EXISTS `me_departamento` (
  `iddepartamento` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) COLLATE utf8mb4_swedish_ci NOT NULL,
  `lat` varchar(20) COLLATE utf8mb4_swedish_ci NOT NULL,
  `lon` varchar(20) COLLATE utf8mb4_swedish_ci NOT NULL,
  PRIMARY KEY (`iddepartamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `me_detalle_pedido`
--

DROP TABLE IF EXISTS `me_detalle_pedido`;
CREATE TABLE IF NOT EXISTS `me_detalle_pedido` (
  `iddetpedido` bigint(20) NOT NULL AUTO_INCREMENT,
  `pedidoid` bigint(20) NOT NULL,
  `productoid` bigint(20) NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  PRIMARY KEY (`iddetpedido`),
  KEY `pedidoid` (`pedidoid`),
  KEY `productoid` (`productoid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `me_det_caracteristicas`
--

DROP TABLE IF EXISTS `me_det_caracteristicas`;
CREATE TABLE IF NOT EXISTS `me_det_caracteristicas` (
  `iddetcaracteristicas` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) COLLATE utf8mb4_swedish_ci NOT NULL,
  `valorcapacidad` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL,
  `productoid` bigint(20) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`iddetcaracteristicas`),
  KEY `productoid` (`productoid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Dumping data for table `me_det_caracteristicas`
--

INSERT INTO `me_det_caracteristicas` (`iddetcaracteristicas`, `nombre`, `valorcapacidad`, `productoid`, `status`) VALUES
(1, 'peso', '100', 1, 1),
(2, 'color', 'blanco', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `me_distrito`
--

DROP TABLE IF EXISTS `me_distrito`;
CREATE TABLE IF NOT EXISTS `me_distrito` (
  `iddistrito` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) COLLATE utf8mb4_swedish_ci NOT NULL,
  `provinciaid` bigint(20) NOT NULL,
  PRIMARY KEY (`iddistrito`),
  KEY `provinciaid` (`provinciaid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `me_galeria`
--

DROP TABLE IF EXISTS `me_galeria`;
CREATE TABLE IF NOT EXISTS `me_galeria` (
  `idgaleria` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) COLLATE utf8mb4_swedish_ci NOT NULL,
  `titulogaleria` varchar(250) COLLATE utf8mb4_swedish_ci NOT NULL,
  `productoid` bigint(20) NOT NULL,
  PRIMARY KEY (`idgaleria`),
  KEY `productoid` (`productoid`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Dumping data for table `me_galeria`
--

INSERT INTO `me_galeria` (`idgaleria`, `nombre`, `titulogaleria`, `productoid`) VALUES
(1, 'pro_4bdb6edb790a0fcb0a32d5eff4d83608.jpg', 'pro_4bdb6edb790a0fcb0a32d5eff4d83608.jpg', 1),
(2, 'pro_94dd9fb45bf6447b312f4bffdb56a3ea.jpg', 'pro_94dd9fb45bf6447b312f4bffdb56a3ea.jpg', 4),
(3, 'pro_e643311359398356ad6f4dc6fa028c08.jpg', 'pro_e643311359398356ad6f4dc6fa028c08.jpg', 4),
(4, 'pro_73d0dae8abbc69747e459799d5ddea25.jpg', 'pro_73d0dae8abbc69747e459799d5ddea25.jpg', 4),
(5, 'pro_a59177d0b4f1fa976b25ac08a0f725ff.jpg', 'pro_a59177d0b4f1fa976b25ac08a0f725ff.jpg', 5),
(6, 'pro_8f6d4d6f29870e4ebe352b15c177707c.jpg', 'pro_8f6d4d6f29870e4ebe352b15c177707c.jpg', 5),
(7, 'pro_052af2e69e068de8572a1f2593d3212a.jpg', 'pro_052af2e69e068de8572a1f2593d3212a.jpg', 6),
(8, 'pro_4bdb6edb790a0fcb0a32d5eff4d83608.jpg', 'pro_4bdb6edb790a0fcb0a32d5eff4d83608.jpg', 1),
(9, 'pro_a3fe8e442549a9c8e850ce19fd054e1b.jpg', 'pro_a3fe8e442549a9c8e850ce19fd054e1b.jpg', 7),
(10, 'pro_ae9b39d1957c1118402d5b6a17029e5b.jpg', 'pro_ae9b39d1957c1118402d5b6a17029e5b.jpg', 8),
(11, 'pro_8caf6db5892fd02ccb2d7f3b7d9cbc4b.jpg', 'pro_8caf6db5892fd02ccb2d7f3b7d9cbc4b.jpg', 8),
(12, 'pro_139062ac5d2227608ea2ecd4db2e3137.jpg', 'pro_139062ac5d2227608ea2ecd4db2e3137.jpg', 10),
(13, 'pro_e80c64ebd3515e92d09c9212f3558dff.jpg', 'pro_e80c64ebd3515e92d09c9212f3558dff.jpg', 11),
(14, 'pro_f7cfe31d42752a39941532ddc7689787.jpg', 'pro_f7cfe31d42752a39941532ddc7689787.jpg', 12),
(15, 'pro_81cf5eb9236cb2d0f4bc83d615dbb965.jpg', 'pro_81cf5eb9236cb2d0f4bc83d615dbb965.jpg', 13),
(16, 'pro_38e1a854fc2abaaf4a2f744053ab0d93.jpg', 'pro_38e1a854fc2abaaf4a2f744053ab0d93.jpg', 13),
(17, 'pro_5ee57187a028d663e52e612b0fcbb176.jpg', 'pro_5ee57187a028d663e52e612b0fcbb176.jpg', 14),
(23, 'pro_6c5a529f3cdb1696116313460868a025.jpg', 'pro_6c5a529f3cdb1696116313460868a025.jpg', 20),
(25, 'pro_7f221b839e50bae8491a70f0578d7b74.jpg', 'pro_7f221b839e50bae8491a70f0578d7b74.jpg', 22),
(26, 'pro_21a714744f3ffb024ea802100e4f9740.jpg', 'pro_21a714744f3ffb024ea802100e4f9740.jpg', 23),
(27, 'pro_dcdb036b77978db58f2a1dfce3730a06.jpg', 'pro_dcdb036b77978db58f2a1dfce3730a06.jpg', 24),
(32, 'pro_bd869d005040814e1a5700f3287311fb.jpg', 'pro_bd869d005040814e1a5700f3287311fb.jpg', 19),
(33, 'pro_6bb115702023210262423d2e3dfda5da.jpg', 'pro_6bb115702023210262423d2e3dfda5da.jpg', 28),
(36, 'pro_f71daf3e4da29e4e8ce95d81cfdcb57d.jpg', 'pro_f71daf3e4da29e4e8ce95d81cfdcb57d.jpg', 21),
(37, 'pro_a0306ded7260795e400f6275d189f117.jpg', 'pro_a0306ded7260795e400f6275d189f117.jpg', 29),
(38, 'pro_dbe80f69b854f9f31b8cda764cce6bb2.jpg', 'pro_dbe80f69b854f9f31b8cda764cce6bb2.jpg', 30),
(39, 'pro_9e4fdc68dfa4a612fa11eaebfe0d0c04.jpg', 'pro_9e4fdc68dfa4a612fa11eaebfe0d0c04.jpg', 31),
(40, 'pro_f2fd0c6e1e95ac6e223be4fc4dccd3ef.jpg', 'pro_f2fd0c6e1e95ac6e223be4fc4dccd3ef.jpg', 32),
(41, 'pro_bd3b6749c69cf3c5655123a45a7d8944.jpg', 'pro_bd3b6749c69cf3c5655123a45a7d8944.jpg', 33),
(43, 'pro_ac723a3ca0b3f7a113d472f53686bd6c.jpg', 'pro_ac723a3ca0b3f7a113d472f53686bd6c.jpg', 37),
(44, 'pro_de1a0313e3e4f0c9a6e728cfab6044f8.jpg', 'pro_de1a0313e3e4f0c9a6e728cfab6044f8.jpg', 34),
(45, 'pro_125bc43e51a8c064c174f19c149b5cc1.jpg', 'pro_125bc43e51a8c064c174f19c149b5cc1.jpg', 35),
(46, 'pro_54d745ffd8f5670616581923005a361d.jpg', 'pro_54d745ffd8f5670616581923005a361d.jpg', 36),
(47, 'pro_e74e06d2e38c0fc954eab9026ec01973.jpg', 'pro_e74e06d2e38c0fc954eab9026ec01973.jpg', 38),
(48, 'pro_a095b1293eabe03125081e22f4d3ce5b.jpg', 'pro_a095b1293eabe03125081e22f4d3ce5b.jpg', 39),
(49, 'pro_fb88caeaca76f09bebb6dc486b1bb3f4.jpg', 'pro_fb88caeaca76f09bebb6dc486b1bb3f4.jpg', 40),
(50, 'pro_b00f509bd4a46986d3b856841e3b38c1.jpg', 'pro_b00f509bd4a46986d3b856841e3b38c1.jpg', 41),
(51, 'pro_5b3a1ce4885ebc13616e9c942770b281.jpg', 'pro_5b3a1ce4885ebc13616e9c942770b281.jpg', 42),
(52, 'pro_d15a3fb243ea5e011475c8bac0eccb15.jpg', 'pro_d15a3fb243ea5e011475c8bac0eccb15.jpg', 43),
(53, 'pro_9ece3487ba9b3683af08254c7ccbb358.jpg', 'pro_9ece3487ba9b3683af08254c7ccbb358.jpg', 44),
(56, 'pro_fa58da5c93119900e4420c10680105aa.jpg', 'pro_fa58da5c93119900e4420c10680105aa.jpg', 70),
(57, 'pro_16156cc4504c5275fc59df512d4ec93d.jpg', 'pro_16156cc4504c5275fc59df512d4ec93d.jpg', 45),
(58, 'pro_2bc2dc28e3240fa407545148c6e30e94.jpg', 'pro_2bc2dc28e3240fa407545148c6e30e94.jpg', 71),
(59, 'pro_99df149a9fa544beebd2f20ff4a293f1.jpg', 'pro_99df149a9fa544beebd2f20ff4a293f1.jpg', 72),
(60, 'pro_463435870a8e71e8ef5732d228d8dc2b.jpg', 'pro_463435870a8e71e8ef5732d228d8dc2b.jpg', 73),
(61, 'pro_2c2950b152e6dc221ac8c8a8c3e20d25.jpg', 'pro_2c2950b152e6dc221ac8c8a8c3e20d25.jpg', 74),
(62, 'pro_1c7cb01c70391d950a2fdcc5dab06d40.jpg', 'pro_1c7cb01c70391d950a2fdcc5dab06d40.jpg', 75),
(63, 'pro_22babbfff2d0c237453beeb901004402.jpg', 'pro_22babbfff2d0c237453beeb901004402.jpg', 76),
(64, 'pro_22a4ff0c77be710c8e459b0cb06dc7c7.jpg', 'pro_22a4ff0c77be710c8e459b0cb06dc7c7.jpg', 77),
(65, 'pro_b69fa517fa70c00b4f38bc4a45782080.jpg', 'pro_b69fa517fa70c00b4f38bc4a45782080.jpg', 78),
(71, 'pro_a4103ab0e559fe4232c28363d50c0d2f.jpg', 'pro_a4103ab0e559fe4232c28363d50c0d2f.jpg', 52),
(72, 'pro_9966c1a9980d64ceba9b5181720423b3.jpg', 'pro_9966c1a9980d64ceba9b5181720423b3.jpg', 53),
(73, 'pro_e2a4ca1b834a17e94d22e76200599510.jpg', 'pro_e2a4ca1b834a17e94d22e76200599510.jpg', 54),
(74, 'pro_f3553d3ce4d2d14aecaa5a7f3dda8f39.jpg', 'pro_f3553d3ce4d2d14aecaa5a7f3dda8f39.jpg', 55),
(75, 'pro_dbb6a379e91981668851736ae01cb1ec.jpg', 'pro_dbb6a379e91981668851736ae01cb1ec.jpg', 56),
(76, 'pro_f4808a03cd9510402f6ebb88e4ad9d3f.jpg', 'pro_f4808a03cd9510402f6ebb88e4ad9d3f.jpg', 57),
(78, 'pro_2893c52d51c301e6f5a2728af07fadf2.jpg', 'pro_2893c52d51c301e6f5a2728af07fadf2.jpg', 58),
(79, 'pro_05886a7b1774b8c51014a1d39c9e60cc.jpg', 'pro_05886a7b1774b8c51014a1d39c9e60cc.jpg', 59),
(80, 'pro_5747ea850244f6ccfdde108b047cc782.jpg', 'pro_5747ea850244f6ccfdde108b047cc782.jpg', 60),
(81, 'pro_1072809413938dc97b37cb9186cf2716.jpg', 'pro_1072809413938dc97b37cb9186cf2716.jpg', 61),
(82, 'pro_d2749c21ce252b8d1449598798e17fd7.jpg', 'pro_d2749c21ce252b8d1449598798e17fd7.jpg', 62),
(83, 'pro_c98dbdbf04fbdaa0f71ed6fb6deafe21.jpg', 'pro_c98dbdbf04fbdaa0f71ed6fb6deafe21.jpg', 63),
(85, 'pro_4ae56f7c78c3d5b0de8526abf5ed5150.jpg', 'pro_4ae56f7c78c3d5b0de8526abf5ed5150.jpg', 64),
(86, 'pro_17d898ebb700289a6a4299d03961d3d4.jpg', 'pro_17d898ebb700289a6a4299d03961d3d4.jpg', 65),
(87, 'pro_a5e350639b559022bb74cd21597f60ea.jpg', 'pro_a5e350639b559022bb74cd21597f60ea.jpg', 66),
(88, 'pro_9cf777cb0560a2eb71825a1c9ad7fe14.jpg', 'pro_9cf777cb0560a2eb71825a1c9ad7fe14.jpg', 67),
(89, 'pro_2418ec1b561e959e84689172a0aa48c1.jpg', 'pro_2418ec1b561e959e84689172a0aa48c1.jpg', 68),
(90, 'pro_0d5133e7342e0039a429f7e0b3b8447b.jpg', 'pro_0d5133e7342e0039a429f7e0b3b8447b.jpg', 69),
(93, 'pro_7887bf389084438c3e33bad48b42fc35.jpg', 'pro_7887bf389084438c3e33bad48b42fc35.jpg', 16),
(94, 'pro_2164ec7af7dba309f75e075879f84965.jpg', 'pro_2164ec7af7dba309f75e075879f84965.jpg', 15),
(95, 'pro_9f5cde8afd3933e7acf7be2bebf0b267.jpg', 'pro_9f5cde8afd3933e7acf7be2bebf0b267.jpg', 17),
(96, 'pro_45de7b83429f73507e6edb4ee7316f73.jpg', 'pro_45de7b83429f73507e6edb4ee7316f73.jpg', 18),
(97, 'pro_f7cf33033ffe6c498ab6bafc2fa4fda3.jpg', 'pro_f7cf33033ffe6c498ab6bafc2fa4fda3.jpg', 46),
(98, 'pro_8499eb5aae2c4fc52081925311dfba42.jpg', 'pro_8499eb5aae2c4fc52081925311dfba42.jpg', 47),
(99, 'pro_e9a5723e9ae4758a57a6de56250726c7.jpg', 'pro_e9a5723e9ae4758a57a6de56250726c7.jpg', 48),
(101, 'pro_b1eee1d15dd92fefef3cab46296d2f2a.jpg', 'pro_b1eee1d15dd92fefef3cab46296d2f2a.jpg', 49),
(103, 'pro_3f471f516fdec7daadc8d73c8d2b489d.jpg', 'pro_3f471f516fdec7daadc8d73c8d2b489d.jpg', 50),
(104, 'pro_46a117c20437bc047f5b82e4c1aa0200.jpg', 'pro_46a117c20437bc047f5b82e4c1aa0200.jpg', 51);

-- --------------------------------------------------------

--
-- Table structure for table `me_marcas`
--

DROP TABLE IF EXISTS `me_marcas`;
CREATE TABLE IF NOT EXISTS `me_marcas` (
  `idmarca` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) COLLATE utf8mb4_swedish_ci NOT NULL,
  `imagen` varchar(80) COLLATE utf8mb4_swedish_ci NOT NULL,
  `paisid` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`idmarca`),
  KEY `paisid` (`paisid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Dumping data for table `me_marcas`
--

INSERT INTO `me_marcas` (`idmarca`, `nombre`, `imagen`, `paisid`, `status`) VALUES
(1, 'PCE', 'pce.jpg', 1, 1),
(2, 'RADWAG', 'radwag.jpg', 2, 1),
(3, 'AXIS', 'axis.jpg', 2, 1),
(4, 'KERN', 'kern.jpg', 1, 1),
(5, 'ACZET', 'aczet.jpg', 3, 1),
(8, 'GIORGIO', 'giorgio.jpg', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `me_modulo`
--

DROP TABLE IF EXISTS `me_modulo`;
CREATE TABLE IF NOT EXISTS `me_modulo` (
  `idmodulo` bigint(20) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(200) COLLATE utf8mb4_swedish_ci NOT NULL,
  `descripcion` varchar(200) COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idmodulo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `me_pais`
--

DROP TABLE IF EXISTS `me_pais`;
CREATE TABLE IF NOT EXISTS `me_pais` (
  `idpais` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) COLLATE utf8mb4_swedish_ci NOT NULL,
  `imagen` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL,
  PRIMARY KEY (`idpais`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Dumping data for table `me_pais`
--

INSERT INTO `me_pais` (`idpais`, `nombre`, `imagen`) VALUES
(1, 'alemania', 'alemania.jpg'),
(2, 'Polonia', 'polonia.jpg'),
(3, 'EEUU', 'eeuu.jpg'),
(4, 'Italia', 'italia.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `me_pedidos`
--

DROP TABLE IF EXISTS `me_pedidos`;
CREATE TABLE IF NOT EXISTS `me_pedidos` (
  `idpedido` bigint(20) NOT NULL AUTO_INCREMENT,
  `personaid` bigint(20) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tipopagopedido` varchar(40) COLLATE utf8mb4_swedish_ci NOT NULL,
  `recojoenpedido` varchar(40) COLLATE utf8mb4_swedish_ci NOT NULL,
  `monto` decimal(11,2) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idpedido`),
  KEY `personaid` (`personaid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `me_permisos`
--

DROP TABLE IF EXISTS `me_permisos`;
CREATE TABLE IF NOT EXISTS `me_permisos` (
  `idpermiso` bigint(20) NOT NULL AUTO_INCREMENT,
  `rolid` bigint(20) NOT NULL,
  `moduloid` bigint(20) NOT NULL,
  `r` int(2) NOT NULL DEFAULT '0',
  `w` int(2) NOT NULL DEFAULT '0',
  `u` int(2) NOT NULL DEFAULT '0',
  `d` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idpermiso`),
  KEY `rolid` (`rolid`),
  KEY `moduloid` (`moduloid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `me_persona`
--

DROP TABLE IF EXISTS `me_persona`;
CREATE TABLE IF NOT EXISTS `me_persona` (
  `idpersona` bigint(20) NOT NULL AUTO_INCREMENT,
  `dnipersona` varchar(20) COLLATE utf8mb4_swedish_ci NOT NULL,
  `nombres` varchar(200) COLLATE utf8mb4_swedish_ci NOT NULL,
  `apellidos` varchar(200) COLLATE utf8mb4_swedish_ci NOT NULL,
  `telefono` varchar(20) COLLATE utf8mb4_swedish_ci NOT NULL,
  `celular` int(20) NOT NULL,
  `email_user` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL,
  `password` varchar(20) COLLATE utf8mb4_swedish_ci NOT NULL,
  `rucemp` varchar(20) COLLATE utf8mb4_swedish_ci NOT NULL,
  `razonsocialemp` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL,
  `direccionfiscalemp` varchar(200) COLLATE utf8mb4_swedish_ci NOT NULL,
  `token` varchar(80) COLLATE utf8mb4_swedish_ci NOT NULL,
  `rolid` bigint(20) NOT NULL,
  `departamentoid` bigint(20) NOT NULL,
  `provinciaid` bigint(20) NOT NULL,
  `distritoid` bigint(20) NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idpersona`),
  KEY `rolid` (`rolid`),
  KEY `departamentoid` (`departamentoid`),
  KEY `provinciaid` (`provinciaid`),
  KEY `distritoid` (`distritoid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `me_productos`
--

DROP TABLE IF EXISTS `me_productos`;
CREATE TABLE IF NOT EXISTS `me_productos` (
  `idproducto` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) COLLATE utf8mb4_swedish_ci NOT NULL,
  `modelo` varchar(200) COLLATE utf8mb4_swedish_ci NOT NULL,
  `codigo` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL,
  `categoriatresid` bigint(20) NOT NULL,
  `marcaid` bigint(20) NOT NULL,
  `descripcion` text COLLATE utf8mb4_swedish_ci NOT NULL,
  `datosdscto` varchar(120) COLLATE utf8mb4_swedish_ci NOT NULL,
  `caracteristicaid` bigint(20) NOT NULL,
  `imagen` varchar(70) COLLATE utf8mb4_swedish_ci NOT NULL DEFAULT 'noimage.jpg',
  `galeriaid` bigint(20) NOT NULL,
  `codigobarra` varchar(40) COLLATE utf8mb4_swedish_ci NOT NULL,
  `preciodolares` decimal(11,2) NOT NULL DEFAULT '0.00',
  `preciodolaresigv` decimal(11,2) NOT NULL DEFAULT '0.00',
  `preciosoles` decimal(11,2) NOT NULL DEFAULT '0.00',
  `preciosolesigv` decimal(11,2) NOT NULL DEFAULT '0.00',
  `porcentajedscto` varchar(20) COLLATE utf8mb4_swedish_ci NOT NULL DEFAULT '0',
  `preciodescuento` decimal(11,2) NOT NULL,
  `stock` int(20) NOT NULL,
  `ruta` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `resumen` varchar(512) COLLATE utf8mb4_swedish_ci NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1',
  `caracteristica` text COLLATE utf8mb4_swedish_ci,
  `lugar` varchar(150) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`idproducto`),
  KEY `categoriatresid` (`categoriatresid`),
  KEY `marcaid` (`marcaid`),
  KEY `caracteristicaid` (`caracteristicaid`),
  KEY `galeriaid` (`galeriaid`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Dumping data for table `me_productos`
--

INSERT INTO `me_productos` (`idproducto`, `nombre`, `modelo`, `codigo`, `categoriatresid`, `marcaid`, `descripcion`, `datosdscto`, `caracteristicaid`, `imagen`, `galeriaid`, `codigobarra`, `preciodolares`, `preciodolaresigv`, `preciosoles`, `preciosolesigv`, `porcentajedscto`, `preciodescuento`, `stock`, `ruta`, `resumen`, `datecreated`, `status`, `caracteristica`, `lugar`) VALUES
(3, 'Producto 3', '1234', '12345d', 2, 1, '<p>Este es el producto 1234</p>', 'datosdscto', 1, 'imagen.jpg', 1, '1234', '100.00', '180.00', '400.00', '430.00', '10', '10.00', 1200, 'producto-3', '', '2022-04-25 15:47:08', 0, NULL, NULL),
(4, 'cuatro', '100', '23456', 2, 1, '<p>asdfasd</p>', '1010', 2, 'imagen.jpg', 1, '23456', '100.00', '100.00', '100.00', '100.00', '1001', '30.00', 10, 'cuatro', '', '2022-04-25 16:41:32', 0, NULL, NULL),
(5, 'Producto 05', '0', '4356675', 2, 1, '<p>Demostracion</p> <table style=\"border-collapse: collapse; width: 100%;\" border=\"1\"> <tbody> <tr> <td style=\"width: 31.3101%;\">nombre</td> <td style=\"width: 31.3101%;\">apellido</td> <td style=\"width: 31.3131%;\">marca</td> </tr> <tr> <td style=\"width: 31.3101%;\">juan</td> <td style=\"width: 31.3101%;\"><span style=\"color: #f1c40f;\">flores</span></td> <td style=\"width: 31.3131%;\">marpo</td> </tr> </tbody> </table>', '34', 1, 'imagen.jpg', 1, '4356675', '100.00', '2000.00', '2200.00', '4455.00', '45', '45.00', 445, 'producto-05', '', '2022-04-25 18:01:26', 0, NULL, NULL),
(15, 'SG-LVS2', '1', 'arinadearroz', 1, 1, '<p>La harina de arroz se elabora moliendo el arroz crudo, puede ser arroz blanco o integral, se puede agregar especias para mejorar su sabor.</p>', '1', 1, 'imagen.jpg', 1, 'arinadearroz', '1.00', '1.00', '1.00', '1.00', '1', '1.00', 1, 'sg-lvs2', 'La mejor harina de arroz, se elabora moliendo el arroz crudo.', '2022-04-27 17:29:29', 0, NULL, NULL),
(16, 'SG-LVS', '1', 'maca1', 1, 1, '<p>SG-LVS</p>', '1', 1, 'imagen.jpg', 1, 'maca1', '1.00', '1.00', '1.00', '1.00', '1', '1.00', 5, 'sg-lvs', 'La maca amarilla es un producto de origen peruano', '2022-04-27 17:39:32', 0, NULL, NULL),
(17, 'SG-LVF', '1', '1231231', 1, 1, '<p>SG-LVF</p>', '1', 1, 'imagen.jpg', 1, '1231231', '1.00', '1.00', '1.00', '1.00', '1', '1.00', 1, 'sg-lvf', 'La soja o soya es una legumbre muy deliciosa.', '2022-04-27 17:47:37', 0, NULL, NULL),
(18, 'SG-C', '1', 'macanegra', 1, 1, '<p>SG-C</p>', '1', 1, 'imagen.jpg', 1, 'macanegra', '1.00', '1.00', '1.00', '1.00', '1', '1.00', 100, 'sg-c', 'El complemento ideal para la fatiga', '2022-04-27 18:38:23', 0, NULL, NULL),
(46, 'JBOX-LAB', '1', 'prod', 3, 1, '<p>JBOX-LAB</p>', '1', 1, 'imagen.jpg', 1, 'prod', '1.00', '1.00', '1.00', '1.00', '1', '1.00', 1, 'jbox-lab', 'resumen', '2022-04-28 15:09:33', 0, NULL, NULL),
(47, 'SG-LAB', '1', 'prod', 3, 1, '<p>SG-LAB</p>', '1', 1, 'imagen.jpg', 1, 'prod', '1.00', '1.00', '1.00', '1.00', '1', '1.00', 1, 'sg-lab', 'resumen', '2022-04-28 15:09:33', 0, NULL, NULL),
(48, 'SG-LAS', '1', 'prod', 3, 1, '<p>SG-LAS</p>', '1', 1, 'imagen.jpg', 1, 'prod', '1.00', '1.00', '1.00', '1.00', '1', '1.00', 1, 'sg-las', 'resumen', '2022-04-28 15:09:33', 0, NULL, NULL),
(49, 'Tour Tarapoto', '1', 'prod', 1, 1, '<p>3 Noches de Alojamiento 3</p> <p>Desayunos + 4 Almuerzos</p> <p>El mejor paquete del 2022</p>', '1', 1, 'imagen.jpg', 1, 'prod', '1.00', '1.00', '1.00', '1549.00', '1', '1.00', 1, 'tour-tarapoto', '3 Noches de Alojamiento 3 Desayunos + 4 Almuerzos', '2022-04-28 15:09:33', 1, 'Demo2', 'Piura'),
(50, 'Tour Churin', '1', 'csasas1', 1, 1, '<p>Tour Churin 3 dias&nbsp;</p> <p>2 Noches Churin</p>', '1', 1, 'imagen.jpg', 1, 'csasas1', '1.00', '1.00', '1.00', '1200.00', '1', '1.00', 100, 'tour-churin', 'Tour Churin 4 dias  3 Noches Churin', '2023-01-09 09:33:13', 1, 'Demo3', 'Los Olivos'),
(51, 'Tour EEUU', '1', 'csasas', 3, 1, '<p>7 d&iacute;as 4 Noches</p> <p>Terminos y condiciones del paquete.</p> <table style=\"border-collapse: collapse; width: 100%;\" border=\"1\"> <tbody> <tr> <td style=\"width: 31.2951%;\">Paquete</td> <td style=\"width: 31.2951%;\">Bueno</td> <td style=\"width: 31.2996%;\">Sensacional</td> </tr> </tbody> </table>', '1', 1, 'imagen.jpg', 1, 'csasas', '1.00', '1.00', '1.00', '2590.00', '1', '1.00', 100, 'tour-eeuu', '7 días - Tours 4 Noches', '2023-01-09 09:44:44', 1, 'Incluye dos personas, WIFI,', 'Huancayo');

-- --------------------------------------------------------

--
-- Table structure for table `me_provincia`
--

DROP TABLE IF EXISTS `me_provincia`;
CREATE TABLE IF NOT EXISTS `me_provincia` (
  `idprovincia` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(170) COLLATE utf8mb4_swedish_ci NOT NULL,
  `departamentoid` bigint(20) NOT NULL,
  PRIMARY KEY (`idprovincia`),
  KEY `departamentoid` (`departamentoid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `me_rol`
--

DROP TABLE IF EXISTS `me_rol`;
CREATE TABLE IF NOT EXISTS `me_rol` (
  `idrol` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombrerol` varchar(200) COLLATE utf8mb4_swedish_ci NOT NULL,
  `descripcion` varchar(200) COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idrol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modulo`
--

DROP TABLE IF EXISTS `modulo`;
CREATE TABLE IF NOT EXISTS `modulo` (
  `idmodulo` bigint(20) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(90) COLLATE utf8mb4_swedish_ci NOT NULL,
  `descripcion` varchar(170) COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idmodulo`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Dumping data for table `modulo`
--

INSERT INTO `modulo` (`idmodulo`, `titulo`, `descripcion`, `status`) VALUES
(1, 'Dashboard', 'Dashboard', 1),
(2, 'Usuarios', 'Usuarios de sistema tienda virtual', 1),
(3, 'Clientes', 'Clientes', 1),
(4, 'Productos', 'Todos los Productos', 1),
(5, 'Pedidos', 'Pedidos', 1),
(6, 'Categorias', 'Categorias', 1),
(7, 'Subcategorias', 'Sub categorias', 1),
(8, 'Sub Categoria dos', 'Sub Categoria dos', 1),
(9, 'Marcas', 'Marcas', 1),
(10, 'Páginas', 'Páginas', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
CREATE TABLE IF NOT EXISTS `pedido` (
  `idpedido` bigint(20) NOT NULL AUTO_INCREMENT,
  `personaid` bigint(20) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `monto` decimal(11,2) NOT NULL,
  `tipopagoid` bigint(20) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idpedido`),
  KEY `personaid` (`personaid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permisos`
--

DROP TABLE IF EXISTS `permisos`;
CREATE TABLE IF NOT EXISTS `permisos` (
  `idpermiso` bigint(20) NOT NULL AUTO_INCREMENT,
  `rolid` bigint(20) NOT NULL,
  `moduloid` bigint(20) NOT NULL,
  `r` int(11) NOT NULL DEFAULT '0',
  `w` int(11) NOT NULL DEFAULT '0',
  `u` int(11) NOT NULL DEFAULT '0',
  `d` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idpermiso`),
  KEY `rolid` (`rolid`),
  KEY `moduloid` (`moduloid`)
) ENGINE=InnoDB AUTO_INCREMENT=223 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Dumping data for table `permisos`
--

INSERT INTO `permisos` (`idpermiso`, `rolid`, `moduloid`, `r`, `w`, `u`, `d`) VALUES
(34, 2, 1, 0, 0, 0, 0),
(35, 2, 2, 0, 0, 0, 0),
(36, 2, 3, 0, 0, 0, 0),
(37, 2, 4, 1, 0, 0, 0),
(38, 2, 5, 1, 0, 0, 0),
(39, 12, 1, 1, 1, 0, 1),
(40, 12, 2, 1, 0, 1, 0),
(41, 12, 3, 1, 1, 0, 1),
(42, 12, 4, 1, 0, 1, 0),
(43, 12, 5, 1, 1, 0, 1),
(195, 13, 1, 0, 0, 0, 0),
(196, 13, 2, 1, 1, 1, 1),
(197, 13, 3, 0, 0, 0, 0),
(198, 13, 4, 0, 0, 0, 0),
(199, 13, 5, 0, 0, 0, 0),
(200, 13, 6, 0, 0, 0, 0),
(201, 13, 7, 0, 0, 0, 0),
(202, 13, 8, 0, 0, 0, 0),
(213, 1, 1, 1, 1, 1, 1),
(214, 1, 2, 1, 1, 1, 1),
(215, 1, 3, 1, 1, 1, 1),
(216, 1, 4, 1, 1, 1, 1),
(217, 1, 5, 1, 1, 1, 1),
(218, 1, 6, 1, 1, 1, 1),
(219, 1, 7, 1, 1, 1, 1),
(220, 1, 8, 1, 1, 1, 1),
(221, 1, 9, 0, 0, 0, 0),
(222, 1, 10, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
CREATE TABLE IF NOT EXISTS `persona` (
  `idpersona` bigint(20) NOT NULL AUTO_INCREMENT,
  `dni` varchar(15) COLLATE utf8mb4_swedish_ci NOT NULL,
  `nombres` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL,
  `apellidos` varchar(120) COLLATE utf8mb4_swedish_ci NOT NULL,
  `telefono` bigint(20) NOT NULL,
  `email_user` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL,
  `password` varchar(80) COLLATE utf8mb4_swedish_ci NOT NULL,
  `ruc` varchar(11) COLLATE utf8mb4_swedish_ci NOT NULL DEFAULT '0',
  `razonsocial` varchar(100) COLLATE utf8mb4_swedish_ci NOT NULL DEFAULT '-',
  `direccionfiscal` varchar(150) COLLATE utf8mb4_swedish_ci NOT NULL DEFAULT '-',
  `token` varchar(80) COLLATE utf8mb4_swedish_ci NOT NULL DEFAULT ' ',
  `rolid` bigint(20) NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idpersona`),
  KEY `rolid` (`rolid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Dumping data for table `persona`
--

INSERT INTO `persona` (`idpersona`, `dni`, `nombres`, `apellidos`, `telefono`, `email_user`, `password`, `ruc`, `razonsocial`, `direccionfiscal`, `token`, `rolid`, `datecreated`, `status`) VALUES
(1, '48039852', 'Mack', 'Flores rivera', 938222552, 'oswaldoelflori@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '20601579317', 'fr system d', 'Avenida Garcilaso de la Vega 1260 of. 6', '1', 1, '2022-04-13 20:29:06', 1),
(2, '859875', 'Gliceria', 'Rivera Soto', 987749433, 'gliceriariverasoto@gmail.com', '123456', '20601579254', 'no', 'direccionfiscal', '', 10, '2022-04-14 12:15:44', 1),
(3, '23424243', 'Jose', 'Fdsgsdfgsfd', 453543, 'erwerew@gm.com', 'c4d4033f908d7c8c653b191694464600f9555280ce8059a211a272f5f3252aa8', '0', '-', '-', ' ', 2, '2022-04-14 12:32:36', 0),
(4, '74586920', 'Jose', 'Perez Lrr', 987654321, 'vendedor@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '0', '-', '-', ' ', 2, '2022-04-14 12:34:51', 1),
(5, '12345678', 'Roger', 'Roger G', 12345678, 'roger@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '0', '-', '-', ' ', 1, '2022-04-19 18:24:02', 1),
(6, '47586932', 'Juan', 'Perezo', 874561321, 'j@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '0', '-', '-', ' ', 1, '2022-04-19 19:54:30', 1),
(7, '34569087', 'Juan', 'Perez R', 495098766, 'd@lgf.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '0', '-', '-', ' ', 1, '2022-04-24 16:21:40', 0),
(8, '09876785', 'Jupo', 'Moko', 456945459, 'frpol@mg.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '0', '-', '-', ' ', 11, '2022-04-24 16:40:52', 0),
(9, '12345679', 'Neyda', 'Import', 987654231, 'neydatest@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '0', '-', '-', ' ', 1, '2022-11-19 10:27:17', 1);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
CREATE TABLE IF NOT EXISTS `post` (
  `idpost` bigint(20) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `contenido` text COLLATE utf8mb4_swedish_ci NOT NULL,
  `portada` varchar(255) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `datecreate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ruta` varchar(255) COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idpost`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`idpost`, `titulo`, `contenido`, `portada`, `datecreate`, `ruta`, `status`) VALUES
(1, 'Nosotros', '<div class=\"col-xs-12 col-sm-12 col-md-12 col-lg-12 detalle bg_blanco\" style=\"line-height: 25px; margin: 0px !important; padding: 0px !important;\"> <h2 class=\"text-success\" style=\"text-align: center;\">PROYAJKON</h2> <p>Es una Agencia de Viajes y Operador de Turismo que cuenta con 03 a&ntilde;os de experiencia ininterrumpida en el mercado Somos una compa&ntilde;&iacute;a l&iacute;der especializada en la gesti&oacute;n de las necesidades de viajes empresariales y en brindar productos tur&iacute;sticos y de negocios que requieren los clientes corporativos, con una estructura organizacional que se adapta a las necesidades de cada cliente para ofrecerle un servicio espec&iacute;fico e integral, que cuenta con herramientas tecnol&oacute;gicas innovadoras, asistencia personalizada Es de este modo que se convierte en uno de los operadores tur&iacute;sticos representativos de Lima.</p> <h2 class=\"elementor-heading-title elementor-size-default\">Nuestra Visi&oacute;n</h2> <p>Consolidarnos como l&iacute;deres en el sector Receptivo, Nacional, Vacacional y Corporativo, ofreciendo programas originales con tarifas competitivas Queremos mostrar la diversidad y la amplia gama de actividades que tenemos para ofrecer a casi todo tipo de viajero.</p> <h2 class=\"elementor-heading-title elementor-size-default\">Nuestra Misi&oacute;n</h2> <p>brindar los mejores servicios tur&iacute;sticos del mercado, superando las expectativas de nuestros clientes y minimizando los impactos que afectan el medio ambiente (ahorrando energ&iacute;a y reciclando) La atenci&oacute;n personalizada, la buena comunicaci&oacute;n y la rapidez en nuestros servicios son tres pilares importantes para cumplir esta misi&oacute;n.</p> </div>', 'img_f572554ceaff07d460435b67ccd8ed7b.jpg', '2022-05-11 17:30:25', 'nosotros', 1),
(2, 'Nuestros Servicios', '<section class=\"staticData2\"><! titulo > <! /titulo > <div class=\"clearfix\">&nbsp;</div> <div class=\"espacio\">&nbsp;</div> <div class=\"container\"> <div class=\"row\"> <article class=\"col-md-3 sProduct\"> <div class=\"containerSer\"> <h3>Boletos A&eacute;reos</h3> <img src=\"img/Boletos-Aereos.png\" alt=\"\" height=\"50\" /></div> </article> <article class=\"col-md-3 sProduct\"> <div class=\"containerSer\"> <h3>Traslados</h3> <img src=\"https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjF7HybFB0me1vk9zeXyva2iub9Dg_SpcmghZhsFvSdA3FFrKnY8HjWLgjTYRSSqxSI0G5gHmuv_IoL6dva2Wxg9SjintP73HWFjtHMQZ9dgw8m0aF66HXVSrHzs310hutHd4qjFwnybnkG26ZkesWCtnyqPc1I1yiFq52A4pm2tAPkxZ4H1TDHM-/s320/Traslados.png\" alt=\"\" height=\"50\" /></div> </article> <article class=\"col-md-3 sProduct\"> <div class=\"containerSer\"> <h3>Boletos A&eacute;reos</h3> <img src=\"img/Boletos-Aereos.png\" alt=\"\" height=\"50\" /></div> </article> <article class=\"col-md-3 sProduct\"> <div class=\"containerSer\"> <h3>Boletos A&eacute;reos</h3> <img src=\"img/Boletos-Aereos.png\" alt=\"\" height=\"50\" /></div> </article> </div> </div> </section>', 'Servicios', '2023-01-09 17:17:52', 'servicios', 1);

-- --------------------------------------------------------

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
CREATE TABLE IF NOT EXISTS `producto` (
  `idproducto` bigint(20) NOT NULL AUTO_INCREMENT,
  `categoriaid` bigint(20) NOT NULL,
  `codigo` varchar(50) COLLATE utf8mb4_swedish_ci NOT NULL,
  `nombre` varchar(150) COLLATE utf8mb4_swedish_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_swedish_ci NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `imagen` varchar(120) COLLATE utf8mb4_swedish_ci NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idproducto`),
  KEY `categoriaid` (`categoriaid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rol`
--

DROP TABLE IF EXISTS `rol`;
CREATE TABLE IF NOT EXISTS `rol` (
  `idrol` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombrerol` varchar(70) COLLATE utf8mb4_swedish_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idrol`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Dumping data for table `rol`
--

INSERT INTO `rol` (`idrol`, `nombrerol`, `descripcion`, `status`) VALUES
(1, 'Administrador', 'Administrador', 1),
(2, 'Vendedor', 'Vendedor', 1),
(10, 'Gerente de ventas', 'Gerente de ventas 1', 1),
(11, 'Cliente', 'Cliente', 1),
(12, 'Reportes', 'Reportes del sistema', 1),
(13, 'Asistente', 'Datos del asistente', 1),
(14, 'Rol numero 12', 'Rol numero 1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

DROP TABLE IF EXISTS `slider`;
CREATE TABLE IF NOT EXISTS `slider` (
  `idslider` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(80) COLLATE utf8mb4_swedish_ci NOT NULL,
  `titulo` varchar(90) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `imagen` varchar(80) COLLATE utf8mb4_swedish_ci NOT NULL,
  `boton` varchar(100) COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idslider`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`idslider`, `nombre`, `titulo`, `imagen`, `boton`, `status`) VALUES
(1, 'Slider 1', 'Turismo en peru - Proyajkon', 'slide1.jpg', 'http://localhost/proyajkon2/contacto', 1),
(2, 'Slider 2', 'Peru Turismo - Proyajkon\r\n\r\n', 'slide2.jpg', 'http://localhost/proyajkon2/contacto', 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `me_categoriados`
--
ALTER TABLE `me_categoriados`
  ADD CONSTRAINT `me_categoriados_ibfk_1` FOREIGN KEY (`categoriaunoid`) REFERENCES `me_categoriauno` (`idcategoriauno`);

--
-- Constraints for table `me_categoriatres`
--
ALTER TABLE `me_categoriatres`
  ADD CONSTRAINT `me_categoriatres_ibfk_1` FOREIGN KEY (`categoriadosid`) REFERENCES `me_categoriados` (`idcategoriados`);

--
-- Constraints for table `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`personaid`) REFERENCES `persona` (`idpersona`);

--
-- Constraints for table `permisos`
--
ALTER TABLE `permisos`
  ADD CONSTRAINT `permisos_ibfk_1` FOREIGN KEY (`rolid`) REFERENCES `rol` (`idrol`),
  ADD CONSTRAINT `permisos_ibfk_2` FOREIGN KEY (`moduloid`) REFERENCES `modulo` (`idmodulo`);

--
-- Constraints for table `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `persona_ibfk_1` FOREIGN KEY (`rolid`) REFERENCES `rol` (`idrol`);

--
-- Constraints for table `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`categoriaid`) REFERENCES `categoria` (`idcategoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
