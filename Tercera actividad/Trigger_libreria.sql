CREATE TABLE IF NOT EXISTS control_de_cambios_librería (
    usuario VARCHAR(50) NOT NULL,
    accion ENUM('Agregar', 'Eliminar') NOT NULL,
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
DELIMITER //

CREATE TRIGGER agregar_editorial_trigger AFTER INSERT ON Editorial
FOR EACH ROW
BEGIN
    INSERT INTO control_de_cambios_librería (usuario, accion)
    VALUES (USER(), 'Agregar');
END//


CREATE TRIGGER eliminar_editorial_trigger AFTER DELETE ON Editorial
FOR EACH ROW
BEGIN
    INSERT INTO control_de_cambios_librería (usuario, accion)
    VALUES (USER(), 'Eliminar');
END//

DELIMITER ;


/* INSERT INTO Editorial (nombre, ciudad, complemento, Telefono)
 VALUES ('Nombre Editorial', 'Ciudad', 'Complemento', '1234567890');
 DELETE FROM Editorial WHERE nombre = 'Nombre Editorial';
 SELECT * FROM control_de_cambios_librería;
 */