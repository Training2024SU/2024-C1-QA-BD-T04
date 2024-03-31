CREATE TABLE IF NOT EXISTS control_de_cambios_hospital (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario VARCHAR(50),
    accion VARCHAR(20),
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB;

DELIMITER //

CREATE TRIGGER agregar_medico_trigger
AFTER INSERT ON Medicos
FOR EACH ROW
BEGIN
    INSERT INTO control_de_cambios_hospital (usuario, accion)
    VALUES (USER(), 'agregar');
END //

DELIMITER ;
DELIMITER //

CREATE TRIGGER eliminar_medico_trigger
AFTER DELETE ON Medicos
FOR EACH ROW
BEGIN
    INSERT INTO control_de_cambios_hospital (usuario, accion)
    VALUES (USER(), 'eliminar');
END //

DELIMITER ;
