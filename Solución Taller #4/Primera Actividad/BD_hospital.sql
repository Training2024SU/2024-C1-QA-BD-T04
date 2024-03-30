-- Crear esquema "hospital"

CREATE SCHEMA `hospital` ;

-- Crear tabla enfermero
CREATE TABLE IF NOT EXISTS `enfermero` (
  `id_enfermero` varchar(30) NOT NULL,
  `id_medico` varchar(45) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `telefono` varchar(45) NOT NULL,
  PRIMARY KEY (`id_enfermero`),
  KEY `id_medico_idx` (`id_medico`),
  CONSTRAINT `id_medico` FOREIGN KEY (`id_medico`) REFERENCES `medico` (`id_medico`)
);

-- Crear tabla factura
CREATE TABLE IF NOT EXISTS `factura` (
  `id_factura` varchar(15) NOT NULL,
  `fecha` date NOT NULL,
  `valor_total` decimal(6,0) NOT NULL,
  `id_paciente` varchar(45) NOT NULL,
  PRIMARY KEY (`id_factura`),
  KEY `id_paciente_idx` (`id_paciente`),
  CONSTRAINT `id_paciente` FOREIGN KEY (`id_paciente`) REFERENCES `paciente` (`id_paciente`)
);

-- Crear tabla medicamento
CREATE TABLE IF NOT EXISTS `medicamento` (
  `nombre` varchar(50) NOT NULL,
  `dosis` varchar(45) NOT NULL,
  PRIMARY KEY (`nombre`)
);

-- Crear tabla medicamento
CREATE TABLE IF NOT EXISTS `medico` (
  `id_medico` varchar(30) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `telefono` varchar(45) NOT NULL,
  `especialidad` varchar(45) NOT NULL,
  PRIMARY KEY (`id_medico`)
) ;

-- Crear tabla medico_procedimiento
CREATE TABLE IF NOT EXISTS `medico_procedimiento` (
  `idmedico_procedimiento` varchar(30) NOT NULL,
  `medico_id` varchar(45) NOT NULL,
  `procedimiento_id` varchar(45) NOT NULL,
  PRIMARY KEY (`idmedico_procedimiento`),
  KEY `medico_id_idx` (`medico_id`),
  KEY `procedimiento_id_idx` (`procedimiento_id`),
  CONSTRAINT `medico_id` FOREIGN KEY (`medico_id`) REFERENCES `medico` (`id_medico`),
  CONSTRAINT `procedimiento_id` FOREIGN KEY (`procedimiento_id`) REFERENCES `procedimiento` (`id_procedimiento`)
);

-- Crear tabla paciente
CREATE TABLE IF NOT EXISTS `paciente` (
  `id_paciente` varchar(30) NOT NULL,
  `id_procedimiento` varchar(45) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `telefono` varchar(45) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  PRIMARY KEY (`id_paciente`),
  KEY `id_procedimiento_idx` (`id_procedimiento`),
  CONSTRAINT `id_procedimiento` FOREIGN KEY (`id_procedimiento`) REFERENCES `procedimiento` (`id_procedimiento`)
);

-- Crear tabla paciente_medicamento
CREATE TABLE IF NOT EXISTS `paciente_medicamento` (
  `id_paciente` varchar(30) NOT NULL,
  `nombre_medicamento` varchar(45) NOT NULL,
  PRIMARY KEY (`id_paciente`),
  KEY `nombre_medicamento_idx` (`nombre_medicamento`),
  CONSTRAINT `nombre_medicamento` FOREIGN KEY (`nombre_medicamento`) REFERENCES `medicamento` (`nombre`)
);

-- Crear tabla procedimiento
CREATE TABLE IF NOT EXISTS `procedimiento` (
  `id_procedimiento` varchar(30) NOT NULL,
  `tipo_procedimiento` varchar(45) NOT NULL,
  PRIMARY KEY (`id_procedimiento`)
);