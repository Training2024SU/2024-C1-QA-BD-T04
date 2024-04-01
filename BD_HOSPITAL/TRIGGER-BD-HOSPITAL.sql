CREATE TABLE control_de_cambios_hospital (
    usuario INT,
    accion VARCHAR(50),
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- TRIGGER INSERCION DE PACIENTE
DELIMITER //
CREATE TRIGGER registro_insercion_paciente
AFTER INSERT ON paciente
FOR EACH ROW
BEGIN
    INSERT INTO control_de_cambios_hospital (usuario, accion)
    VALUES (NEW.nombre_paciente, 'Inserción');
END;
//
DELIMITER ;

-- ------------------------------
-- TRIGGER ELIMINACION DE PACIENTE
-- ------------------------------
DELIMITER //
CREATE TRIGGER registro_eliminacion
AFTER DELETE ON paciente
FOR EACH ROW
BEGIN
    INSERT INTO control_de_cambios_hospital (usuario, accion)
    VALUES (OLD.nombre_paciente, 'Eliminación');
END;
//
DELIMITER ;