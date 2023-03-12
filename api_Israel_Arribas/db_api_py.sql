-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-03-2023 a las 21:07:58
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_api_py`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoriashombre`
--

CREATE TABLE `categoriashombre` (
  `Categoria` varchar(20) NOT NULL,
  `Ruta` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categoriashombre`
--

INSERT INTO `categoriashombre` (`Categoria`, `Ruta`) VALUES
('Hoodies', './HOODIES/Hoodies.html'),
('Tees', './TEES/Tees.html');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoriasmujer`
--

CREATE TABLE `categoriasmujer` (
  `Categoria` varchar(20) NOT NULL,
  `Ruta` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categoriasmujer`
--

INSERT INTO `categoriasmujer` (`Categoria`, `Ruta`) VALUES
('Crewnecks', './CREWNECKS/Crewnecks.html'),
('Croptops', './CROPTOPS/Croptops.html');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `Nombre` varchar(50) NOT NULL,
  `Precio` varchar(20) NOT NULL,
  `Url` varchar(50) NOT NULL,
  `Imagen` varchar(50) NOT NULL,
  `Imagen2` varchar(50) NOT NULL,
  `Imagen3` varchar(50) NOT NULL,
  `Categoria` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`Nombre`, `Precio`, `Url`, `Imagen`, `Imagen2`, `Imagen3`, `Categoria`) VALUES
('Fruit Neat Crewneck', '90,00€', 'Crewneckazul1.html', '../IMAGENES/CREWNECKS/Crewneckazul1vista1.png', '', '', 'Crewnecks'),
('Roses Neat Crewneck', '90,00€', 'Crewneckazul2.html', '../IMAGENES/CREWNECKS/Crewneckazul2vista1.png', '../IMAGENES/CREWNECKS/Crewneckazul2vista2.png', '../IMAGENES/CREWNECKS/Crewneckazul2vista3.png', 'Crewnecks'),
('Moon Neat Crewneck', '90,00€', 'Crewneckazulclaro1.html', '../IMAGENES/CREWNECKS/Crewneckazulclaro1vista1.png', '', '', 'Crewnecks'),
('Roses Neat Crewneck', '90,00€', 'Crewneckgranate1.html', '../IMAGENES/CREWNECKS/Crewneckgranate1vista1.png', '../IMAGENES/CREWNECKS/Crewneckgranate1vista2.png', '../IMAGENES/CREWNECKS/Crewneckgranate1vista3.png', 'Crewnecks'),
('Roses Neat Crewneck', '90,00€', 'Crewneckgris1.html', '../IMAGENES/CREWNECKS/Crewneckgris1vista1.png', '../IMAGENES/CREWNECKS/Crewneckgris1vista2.png', '../IMAGENES/CREWNECKS/Crewneckgris1vista3.png', 'Crewnecks'),
('Moon Neat Crewneck', '90,00€', 'Crewnecknegra1.html', '../IMAGENES/CREWNECKS/Crewnecknegra1vista1.png', '', '', 'Crewnecks'),
('Fruit Neat Crewneck', '90,00€', 'Crewnecknegra2.html', '../IMAGENES/CREWNECKS/Crewnecknegra2vista1.png', '', '', 'Crewnecks'),
('Moon Neat Crewneck', '90,00€', 'Crewneckroja1.html', '../IMAGENES/CREWNECKS/Crewneckroja1vista1.png', '', '', 'Crewnecks'),
('Fruit Neat Crewneck', '90,00€', 'Crewneckrosa1.html', '../IMAGENES/CREWNECKS/Crewneckrosa1vista1.png', '', '', 'Crewnecks'),
('Basic Neat Croptop', '45,00€', 'Croptopbeis1.html', '../IMAGENES/CROPTOPS/Croptopbeis1vista1.png', '', '', 'Croptops'),
('Heel Neat Croptop', '50,00€', 'Croptopbeis2.html', '../IMAGENES/CROPTOPS/Croptopbeis2vista1.png', '', '', 'Croptops'),
('Wolf Neat Croptop', '50,00€', 'Croptopblanco1.html', '../IMAGENES/CROPTOPS/Croptopblanco1vista1.png', '', '', 'Croptops'),
('Basic Neat Croptop', '45,00€', 'Croptopmostaza1.html', '../IMAGENES/CROPTOPS/Croptopmostaza1vista1.png', '', '', 'Croptops'),
('Basic Neat Croptop', '45,00€', 'Croptopnegro1.html', '../IMAGENES/CROPTOPS/Croptopnegro1vista1.png', '', '', 'Croptops'),
('Heel Neat Croptop', '50,00€', 'Croptopnegro2.html', '../IMAGENES/CROPTOPS/Croptopnegro2vista1.png', '', '', 'Croptops'),
('Wolf Neat Croptop', '50,00€', 'Croptopnegro3.html', '../IMAGENES/CROPTOPS/Croptopnegro3vista1.png', '', '', 'Croptops'),
('Heel Neat Croptop', '50,00€', 'Croptoprojo1.html', '../IMAGENES/CROPTOPS/Croptoprojo1vista1.png', '', '', 'Croptops'),
('Wolf Neat Croptop', '50,00€', 'Croptopverde1.html', '../IMAGENES/CROPTOPS/Croptopverde1vista1.png', '', '', 'Croptops'),
('Skate Neat Hoodie', '110,00€', 'Hoodieazulclaro1.html', '../IMAGENES/HOODIES/Hoodieazulclaro1vista1.png', '../IMAGENES/HOODIES/Hoodieazulclaro1vista2.png', '../IMAGENES/HOODIES/Hoodieazulclaro1vista3.png', 'Hoodies'),
('Basic Neat Hoodie', '100,00€', 'Hoodieazuloscuro1.html', '../IMAGENES/HOODIES/Hoodieazuloscuro1vista1.png', '../IMAGENES/HOODIES/Hoodieazuloscuro1vista2.png', '../IMAGENES/HOODIES/Hoodieazuloscuro1vista3.png', 'Hoodies'),
('Basic Neat Hoodie', '100,00€', 'Hoodieblanca1.html', '../IMAGENES/HOODIES/Hoodieblanca1vista1.png', '../IMAGENES/HOODIES/Hoodieblanca1vista2.png', '../IMAGENES/HOODIES/Hoodieblanca1vista3.png', 'Hoodies'),
('Skate Neat Hoodie', '110,00€', 'Hoodieblanca2.html', '../IMAGENES/HOODIES/Hoodieblanca2vista1.png', '../IMAGENES/HOODIES/Hoodieblanca2vista2.png', '../IMAGENES/HOODIES/Hoodieblanca2vista3.png', 'Hoodies'),
('Basic Neat Hoodie', '100,00€', 'Hoodiegrisclaro1.html', '../IMAGENES/HOODIES/Hoodiegrisclaro1vista1.png', '../IMAGENES/HOODIES/Hoodiegrisclaro1vista2.png', '../IMAGENES/HOODIES/Hoodiegrisclaro1vista3.png', 'Hoodies'),
('Basic Neat Hoodie', '100,00€', 'Hoodiegrisoscuro1.html', '../IMAGENES/HOODIES/Hoodiegrisoscuro1vista1.png', '../IMAGENES/HOODIES/Hoodiegrisoscuro1vista2.png', '../IMAGENES/HOODIES/Hoodiegrisoscuro1vista3.png', 'Hoodies'),
('Basic Neat Hoodie', '100,00€', 'Hoodienegra1.html', '../IMAGENES/HOODIES/Hoodienegra1vista1.png', '../IMAGENES/HOODIES/Hoodienegra1vista2.png', '../IMAGENES/HOODIES/Hoodienegra1vista3.png', 'Hoodies'),
('Basic Neat Hoodie', '100,00€', 'Hoodienegra2.html', '../IMAGENES/HOODIES/Hoodienegra2vista1.png', '../IMAGENES/HOODIES/Hoodienegra2vista2.png', '../IMAGENES/HOODIES/Hoodienegra2vista3.png', 'Hoodies'),
('Skate Neat Hoodie', '110,00€', 'Hoodieverde1.html', '../IMAGENES/HOODIES/Hoodieverde1vista1.png', '../IMAGENES/HOODIES/Hoodieverde1vista2.png', '../IMAGENES/HOODIES/Hoodieverde1vista3.png', 'Hoodies'),
('Basic Neat Tee', '35,00€', 'Teesinmangasblanca1.html', '../IMAGENES/TEES/Teesinmangasblanca1vista1.png', '', '', 'Tees'),
('Basic Neat Tee', '35,00€', 'Teesinmangasnegra1.html', '../IMAGENES/TEES/Teesinmangasnegra1vista1.png', '', '', 'Tees');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `Nombre` varchar(20) NOT NULL,
  `Correo` varchar(20) NOT NULL,
  `Contraseña` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`Nombre`, `Correo`, `Contraseña`) VALUES
('admin', 'admin@gmail.com', 'admin'),
('prueba', 'njuan@gmail.com', 'juanin'),
('pruebaModificada', 'prueba@gmail.com', 'prueba');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoriashombre`
--
ALTER TABLE `categoriashombre`
  ADD PRIMARY KEY (`Categoria`);

--
-- Indices de la tabla `categoriasmujer`
--
ALTER TABLE `categoriasmujer`
  ADD PRIMARY KEY (`Categoria`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`Url`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`Nombre`),
  ADD UNIQUE KEY `Correo` (`Correo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
