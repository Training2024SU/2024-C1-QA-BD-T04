-- registrar agregado

CREATE DEFINER=`root`@`localhost` TRIGGER `registrar_agregado` AFTER INSERT ON `paciente` FOR EACH ROW BEGIN
    INSERT INTO control_de_cambios_hospital (usuario, accion, fecha) VALUES (USER(), 'Agregado', NOW());
END

-- registrar eliminacion 
CREATE DEFINER=`root`@`localhost` TRIGGER `registrar_eliminacion` AFTER DELETE ON `paciente` FOR EACH ROW BEGIN
    INSERT INTO control_de_cambios_hospital (usuario, accion, fecha) VALUES (USER(), 'Eliminacion', NOW());
END