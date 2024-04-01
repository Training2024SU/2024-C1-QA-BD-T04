USE LibreriaBuscaLibre;

-- PROCEDIMIENTO PARA AGREGAR UNA EDITORIAL
DELIMITER //

CREATE PROCEDURE agregar_editorial(
    IN p_nombre VARCHAR(50),
    IN p_ciudad VARCHAR(30),
    IN p_complemento VARCHAR(100),
    IN p_telefono VARCHAR(20)
)
BEGIN
    INSERT INTO editorial (nombre, ciudad, complemento, telefono)
    VALUES (p_nombre, p_ciudad, p_complemento, p_telefono);
END //

DELIMITER ;

-- PROCEDIMIENTO PARA ACTUALIZAR UNA EDITORIAL
DELIMITER //

CREATE PROCEDURE actualizar_editorial(
    IN p_nombre VARCHAR(50),
    IN p_ciudad VARCHAR(30),
    IN p_complemento VARCHAR(100),
    IN p_telefono VARCHAR(20)
)
BEGIN
    UPDATE editorial
    SET ciudad = p_ciudad, complemento = p_complemento, telefono = p_telefono
    WHERE nombre = p_nombre;
END //

DELIMITER ;

-- PROCEDIMIENTO PARA BORRAR UNA EDITORIAL
DELIMITER //

CREATE PROCEDURE borrar_editorial(
    IN p_nombre VARCHAR(50)
)
BEGIN
    DELETE FROM editorial WHERE nombre = p_nombre;
END //

DELIMITER ;

-- Comentario: Crear la tabla control_de_cambios_librería
CREATE TABLE IF NOT EXISTS control_de_cambios_libreria (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario VARCHAR(100),
    accion VARCHAR(100),
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Trigger para insertar un registro en control_de_cambios_librería cuando se agrega un registro en la tabla Editorial
DELIMITER //
CREATE TRIGGER after_insert_editorial
AFTER INSERT ON editorial
FOR EACH ROW
BEGIN
    INSERT INTO control_de_cambios_libreria (usuario, accion) VALUES (USER(), 'Agregó un registro en la tabla Editorial');
END //
DELIMITER ;

-- Trigger para insertar un registro en control_de_cambios_librería cuando se elimina un registro de la tabla Editorial
DELIMITER //
CREATE TRIGGER after_delete_editorial
AFTER DELETE ON editorial
FOR EACH ROW
BEGIN
    INSERT INTO control_de_cambios_libreria (usuario, accion) VALUES (USER(), 'Eliminó un registro de la tabla Editorial');
END //
DELIMITER ;
