-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 25-07-2022 a las 01:52:03
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyectoFinal`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `localidades`
--

CREATE TABLE `localidades` (
  `idlocalidad` int(11) NOT NULL,
  `nombrelocalidad` varchar(40) NOT NULL,
  `idprovlocalidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `localidades`
--

INSERT INTO `localidades` (`idlocalidad`, `nombrelocalidad`, `idprovlocalidad`) VALUES
(1, 'Moreno', 3),
(2, 'Guaymallén', 4),
(3, 'Cafayate', 2),
(4, 'Cruz Alta', 1),
(5, 'Quilmes', 3),
(6, 'Berazategui', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido1`
--

CREATE TABLE `pedido1` (
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(20) NOT NULL,
  `direction` varchar(20) NOT NULL,
  `producto` varchar(40) NOT NULL,
  `peso` int(5) NOT NULL,
  `cantidad` int(4) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pedido1`
--

INSERT INTO `pedido1` (`nombre`, `apellido`, `direction`, `producto`, `peso`, `cantidad`, `id`) VALUES
('valeria', 'flores', 'luis 2323', 'Royal canin', 21, 1, 1),
('Oriana', 'ares', 'rosas 333', 'dog chow', 21, 2, 2),
('ana', 'suarez', 'araoz 212', 'Pedigree', 8, 5, 3),
('asdasd', 'fsdfsdf', 'fwerwe', 'Eukanuba', 8, 2, 4),
('luis', 'hhhh', 'marga 123', 'Dog chow', 10, 1, 5),
('ariana', 'gomez', 'valle 222', 'pedigree', 21, 3, 6),
('hugo', 'gomez', 'valle 222', 'Purina', 5, 3, 14);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `idpedido` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `apellido` varchar(40) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `mail` varchar(30) NOT NULL,
  `lugarentrega` varchar(80) NOT NULL,
  `localidad` int(11) NOT NULL,
  `provincia` int(11) NOT NULL,
  `codpostal` varchar(9) NOT NULL,
  `formadepago` varchar(10) NOT NULL,
  `tarjtitular` varchar(40) NOT NULL,
  `tarjnumero` bigint(16) NOT NULL,
  `tarjvto` varchar(10) NOT NULL,
  `tarjclave` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`idpedido`, `nombre`, `apellido`, `usuario`, `mail`, `lugarentrega`, `localidad`, `provincia`, `codpostal`, `formadepago`, `tarjtitular`, `tarjnumero`, `tarjvto`, `tarjclave`) VALUES
(2, '', 'Suarez', 'psuarez', 'pedro@gmail.com', 'Lavalle 3222', 1, 1, '1234', 'mercado', 'Pedro suarez', 2147483647, '0422', 325),
(3, 'Pedro', 'Suarez', 'psuarez', 'pedro@gmail.com', 'Lavalle 3222', 1, 1, '1233', 'o', 'Pedro suarez', 2147483647, '0422', 123),
(4, 'Pedro', 'Suarez', 'psuarez', 'pedro@gmail.com', 'Lavalle 3222', 1, 1, '1234', 'o', 'sdf', 2147483647, 'sdf', 1245),
(5, 'Juan', 'Rodriguez', 'jrodriguez', 'jrodriguez@gmail.com', 'Av. Rivadavia 32556', 1, 2, '1233', 'o', 'Juan rodriguez', 2147483647, '0422', 124),
(6, 'María', 'Rosalex', 'mrosales', 'jrodriguez@gmail.com', 'Jujuy 323', 1, 2, '3433', 'o', 'María Rosales', 2147483647, '0422', 314),
(7, 'Pedro', 'Suarez', 'jrodriguez', 'dsf@vorterix.com', 'Av. Rivadavia 32556', 1, 1, '1233', 'o', 'Juan rodriguez', 2147483647, '0422', 124),
(8, 'Juana', 'Rodriguez', 'sdf', 'jrodriguez@gmail.com', 'Lavalle 3222', 1, 1, '1233', 'o', 'Juan rodriguez', 2147483647, '0422', 124),
(9, 'Juana', 'Rodriguez', 'sdf', 'jrodriguez@gmail.com', 'Lavalle 3222', 1, 1, '1233', 'o', 'Juan rodriguez', 2147483647, '0422', 124),
(10, 'Hermeto', 'Carmona', 'hcarmona', 'hcarmona@gmail.com', 'Av. La Plata 2233 ', 1, 1, '1882', 'o', 'ss', 33, '33', 33),
(12, 'Facundo', 'Sileo', 'fsileo', 'fsileo@gmail.com', 'Av. La Plata 556', 1, 1, '1884', 'checkedVal', 'Facundo Sileo', 1234, '0422', 423),
(13, 'Brenda', 'Benitez', 'bbenitez', 'bbenitez@hotmail.com', 'Av. Cabildo 4555', 1, 1, '1223', 'checkedVal', 'Brenda Benitez', 1234, '0422', 423),
(14, 'Jesus', 'Rodriguez', 'jrodriguez', 'jrodriguez@gmail.com', 'Av. Cabildo 333', 1, 1, '1223', 'checkedVal', 'Jesus Rodriguez', 123456, '0422', 325),
(23, 'Beatriz', 'Perez', 'bperez', 'bperez@gmail.com', 'Laprida 232', 2, 4, '1554', 'mercado', 'Beatriz Perez', 1234, '0422', 325),
(25, 'Hernesto', 'Rodriguez', 'jrodriguez', 'prueba@gmail.com', 'Av. Cabildo 4555', 1, 1, '1223', 'null', 'Jesus Rodriguez', 1123455645667899, '0422', 123),
(27, 'Hernesto', 'Rodriguez', 'jrodriguez', 'prueba@gmail.com', 'Av. Cabildo 4555', 2, 4, '1223', 'tarjeta', 'Jesus Rodriguez', 1123455645667899, '0422', 123),
(28, 'Hernan', 'Jacinto', 'hjacinto', 'hjacinto@gmail.com', 'Laprida 232', 3, 6, '1255', 'mercado', 'dd', 3333, '3333', 333),
(29, 'Paola', 'Hernanedz', 'phernan', 'ph@gmail.com', 'Laprida 232', 3, 6, '1234', 'tarjeta', 'aa', 333, '3333', 333),
(30, 'Romina', 'Estevez', 'restevez', 'restevez@gmail.com', 'Av La Plata 321', 1, 1, '1882', 'on', '111', 111, '0122', 123);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincias`
--

CREATE TABLE `provincias` (
  `idprovincia` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `provincias`
--

INSERT INTO `provincias` (`idprovincia`, `nombre`) VALUES
(1, 'Tucumán'),
(2, 'Salta'),
(3, 'Buenos Aires'),
(4, 'Mendoza'),
(5, 'Neuquen'),
(6, 'Entre Ríos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idusuario` int(11) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `clave` varchar(20) NOT NULL,
  `nombreyapellido` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idusuario`, `usuario`, `clave`, `nombreyapellido`) VALUES
(1, 'prueba@gmail.com', '909090', 0x4a6f73c3a92049676e6163696f),
(2, 'mail@hotmail.com', '808080', 0x4a75616e204361726c6f73),
(3, 'abi@abi.com', '777', 0x5b76616c75652d345d),
(4, 'pipi@pipi.com', 'miau', NULL),
(5, 'patp@pato.com', 'popo', NULL),
(6, 'oro@oro.com', '123', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `localidades`
--
ALTER TABLE `localidades`
  ADD PRIMARY KEY (`idlocalidad`),
  ADD UNIQUE KEY `LocProvincia` (`idlocalidad`),
  ADD KEY `LocProv` (`idprovlocalidad`);

--
-- Indices de la tabla `pedido1`
--
ALTER TABLE `pedido1`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`idpedido`),
  ADD KEY `FK_Localidad` (`localidad`),
  ADD KEY `FK_Provincia` (`provincia`);

--
-- Indices de la tabla `provincias`
--
ALTER TABLE `provincias`
  ADD PRIMARY KEY (`idprovincia`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idusuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `localidades`
--
ALTER TABLE `localidades`
  MODIFY `idlocalidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `pedido1`
--
ALTER TABLE `pedido1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `idpedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `provincias`
--
ALTER TABLE `provincias`
  MODIFY `idprovincia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `localidades`
--
ALTER TABLE `localidades`
  ADD CONSTRAINT `LocProv` FOREIGN KEY (`idprovlocalidad`) REFERENCES `provincias` (`idprovincia`);

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `FK_Localidad` FOREIGN KEY (`localidad`) REFERENCES `localidades` (`idlocalidad`),
  ADD CONSTRAINT `FK_Provincia` FOREIGN KEY (`provincia`) REFERENCES `provincias` (`idprovincia`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
