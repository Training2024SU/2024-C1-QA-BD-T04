USE hospital;

--  Creacion de la tabla para las auditorias
CREATE TABLE control_de_cambios_hospital(
    usuario VARCHAR(100),
    accion VARCHAR(100),
    fecha DATETIME
);


DELIMITER //
-- Creacion 1er Trigger: Control de inserción
-- Ejemplo uso:
-- CALL sp_InsertarMedico(11, 'Julian', 'Alvarez', 'Dermatología');
-- SELECT * FROM control_de_cambios_hospital
CREATE TRIGGER controlInsercionMedico 
AFTER INSERT ON Medico 
FOR EACH ROW
BEGIN
    INSERT INTO control_de_cambios_hospital (usuario, accion, fecha)
    VALUES (USER(), 'Insert Medico', NOW());
END;
//

DELIMITER ;

--

DELIMITER //
-- Creacion 2er Trigger: Control de eliminación
-- Ejemplo uso:
-- CALL sp_eliminarMedico (11);
-- SELECT * FROM control_de_cambios_hospital
CREATE TRIGGER controlEliminacionMedico 
AFTER DELETE ON Medico  
FOR EACH ROW
BEGIN
    INSERT INTO control_de_cambios_hospital (usuario, accion, fecha)
    VALUES (USER(), 'Delete Medico', NOW());
END;
//

DELIMITER ;
