--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `nombre` varchar(100) COLLATE utf8_bin NOT NULL,
  `apellido` varchar(100) COLLATE utf8_bin NOT NULL,
  `usuario` varchar(20) COLLATE utf8_bin NOT NULL,
  `clave` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usuario`);


insert into usuarios(nombre,usuario,clave) values('Administrador', 'admin','1c7a92ae351d4e21ebdfb897508f59d6');