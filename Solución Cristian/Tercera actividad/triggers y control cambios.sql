-- Tabla de cambios

CREATE TABLE control_de_cambios_librería (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario VARCHAR(50),
    accion VARCHAR(50),
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


-- Trigger inserción

DELIMITER //

CREATE TRIGGER tr_insertar_editorial
AFTER INSERT ON Editorial
FOR EACH ROW
BEGIN
    INSERT INTO control_de_cambios_librería (usuario, accion)
    VALUES (USER(), 'Inserción de Editorial');
END //

DELIMITER ;


-- Triger eliminación

DELIMITER //

CREATE TRIGGER tr_eliminar_editorial
BEFORE DELETE ON Editorial
FOR EACH ROW
BEGIN
    INSERT INTO control_de_cambios_librería (usuario, accion)
    VALUES (USER(), 'Eliminación de Editorial');
END //

DELIMITER ;

