DELIMITER //

CREATE TRIGGER registrar_agregado
AFTER INSERT ON libro
FOR EACH ROW
BEGIN
    INSERT INTO control_de_cambios_libreria (usuario, accion) VALUES (USER(), 'Agregado');
END //

DELIMITER ;


DELIMITER //

CREATE TRIGGER registrar_eliminacion
AFTER DELETE ON libro
FOR EACH ROW
BEGIN
    INSERT INTO control_de_cambios_librería (usuario, accion) VALUES (USER(), 'Eliminacion');
END //

DELIMITER ;