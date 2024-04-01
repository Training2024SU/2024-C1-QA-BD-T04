-- Crear la tabla control_de_cambios_librería
CREATE TABLE IF NOT EXISTS control_de_cambios_librería (
    usuario VARCHAR(50),
    accion VARCHAR(10),
    fecha DATETIME
);

-- Trigger para registrar la inserción de registros en la tabla Editorial
DELIMITER //
CREATE TRIGGER editorial_insert_trigger
AFTER INSERT ON Editorial
FOR EACH ROW
BEGIN
    INSERT INTO control_de_cambios_librería (usuario, accion, fecha)
    VALUES (USER(), 'INSERT', NOW());
END//
DELIMITER ;

-- Trigger para registrar la eliminación de registros en la tabla Editorial
DELIMITER //
CREATE TRIGGER editorial_delete_trigger
AFTER DELETE ON Editorial
FOR EACH ROW
BEGIN
    INSERT INTO control_de_cambios_librería (usuario, accion, fecha)
    VALUES (USER(), 'DELETE', NOW());
END//
DELIMITER ;
