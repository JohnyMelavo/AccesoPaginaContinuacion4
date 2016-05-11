--
-- Base de datos: `dbusuarios`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sg_perfilacceso`
--

CREATE TABLE `sg_perfilacceso` (
  `idperfilacceso` bigint(20) UNSIGNED NOT NULL,
  `idperfil` bigint(20) NOT NULL,
  `tipoacceso` char(1) COLLATE utf8_bin NOT NULL,
  `codigo` varchar(30) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sg_perfiles`
--

CREATE TABLE `sg_perfiles` (
  `IDPERFIL` bigint(20) UNSIGNED NOT NULL,
  `NOMBRE` varchar(30) COLLATE utf8_bin NOT NULL,
  `DESCRIPCION` varchar(300) COLLATE utf8_bin NOT NULL,
  `ESTADO` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sg_perfilusuario`
--

CREATE TABLE `sg_perfilusuario` (
  `idperfilusuario` bigint(20) UNSIGNED NOT NULL,
  `idperfil` bigint(20) NOT NULL,
  `usuario` varchar(20) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

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
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `sg_perfilacceso`
--
ALTER TABLE `sg_perfilacceso`
  ADD PRIMARY KEY (`idperfilacceso`),
  ADD UNIQUE KEY `idperfilacceso` (`idperfilacceso`);

--
-- Indices de la tabla `sg_perfiles`
--
ALTER TABLE `sg_perfiles`
  ADD PRIMARY KEY (`IDPERFIL`),
  ADD UNIQUE KEY `IDPERFIL` (`IDPERFIL`);

--
-- Indices de la tabla `sg_perfilusuario`
--
ALTER TABLE `sg_perfilusuario`
  ADD PRIMARY KEY (`idperfilusuario`),
  ADD UNIQUE KEY `idperfilusuario` (`idperfilusuario`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `sg_perfilacceso`
--
ALTER TABLE `sg_perfilacceso`
  MODIFY `idperfilacceso` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `sg_perfiles`
--
ALTER TABLE `sg_perfiles`
  MODIFY `IDPERFIL` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `sg_perfilusuario`
--
ALTER TABLE `sg_perfilusuario`
  MODIFY `idperfilusuario` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;


insert into usuarios(nombre,usuario,clave)
values('Administrador', 'admin','1c7a92ae351d4e21ebdfb897508f59d6');

insert into sg_perfiles(nombre,DESCRIPCION,ESTADO)
values('administradores','Usuarios responsables del sistema',1)

insert into sg_perfilacceso(tipoacceso,codigo,1)
values('M','SALIR');
insert into sg_perfilacceso(tipoacceso,codigo,1)
values('M','CC');

insert into sg_perfilusuario(idperfil,usuario)
values(1,'admin')
