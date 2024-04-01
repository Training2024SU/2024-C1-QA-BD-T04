-- Creación de la tabla control_de_cambios_hospital
CREATE TABLE control_de_cambios_hospital (
    usuario VARCHAR(100),
    accion VARCHAR(50),
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Trigger para insertar registros en la tabla tb_paciente
DELIMITER //
CREATE TRIGGER tr_insertar_paciente
AFTER INSERT ON hospital.tb_paciente
FOR EACH ROW
BEGIN
    INSERT INTO control_de_cambios_hospital (usuario, accion)
    VALUES (USER(), 'Insertar registro en tb_paciente');
END //
DELIMITER ;

-- Trigger para eliminar registros en la tabla tb_paciente
DELIMITER //
CREATE TRIGGER tr_eliminar_paciente
AFTER DELETE ON hospital.tb_paciente
FOR EACH ROW
BEGIN
    INSERT INTO control_de_cambios_hospital (usuario, accion)
    VALUES (USER(), 'Eliminar registro en tb_paciente');
END //
DELIMITER ;
