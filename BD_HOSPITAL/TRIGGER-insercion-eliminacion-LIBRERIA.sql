-- CREACION DE LA TABLA
CREATE TABLE control_de_cambios_libreria (
    usuario VARCHAR(50),
    accion VARCHAR(255),
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
-- ----------------------------
-- TRIGGER INSERCION DE CLIENTE
-- ----------------------------
DELIMITER //
CREATE TRIGGER registro_insercion
AFTER INSERT ON cliente
FOR EACH ROW
BEGIN
    INSERT INTO control_de_cambios_libreria (usuario, accion)
    VALUES (NEW.nombre, 'Inserción');
END;
//
DELIMITER ;

-- ------------------------------
-- TRIGGER ELIMINACION DE CLIENTE
-- ------------------------------
DELIMITER //
CREATE TRIGGER registro_eliminacion
AFTER DELETE ON cliente
FOR EACH ROW
BEGIN
    INSERT INTO control_de_cambios_libreria (usuario, accion)
    VALUES (OLD.nombre, 'Eliminación');
END;
//
DELIMITER ;
