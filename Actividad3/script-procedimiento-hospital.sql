USE Hospital_GNECJ;

DELIMITER //

CREATE PROCEDURE sp_agregar_registro (
    IN p_nombre VARCHAR(255),
    IN p_apellido VARCHAR(255),
    IN p_telefono VARCHAR(20),
    IN p_direccion VARCHAR(255)
)
BEGIN
    INSERT INTO tb_paciente (nombre_paciente, apellido_paciente, telefono, direccion)
    VALUES (p_nombre, p_apellido, p_telefono, p_direccion);
END //

DELIMITER ;



DELIMITER //

CREATE PROCEDURE sp_actualizar_registro (
    IN p_id INT,
    IN p_nombre VARCHAR(255),
    IN p_apellido VARCHAR(255),
    IN p_telefono VARCHAR(20),
    IN p_direccion VARCHAR(255)
)
BEGIN
    UPDATE tb_paciente
    SET nombre_paciente = p_nombre, apellido_paciente = p_apellido, telefono = p_telefono, direccion = p_direccion
    WHERE id_paciente = p_id;
END //

DELIMITER ;



DELIMITER //

CREATE PROCEDURE sp_consultar_registro (
    IN p_id INT
)
BEGIN
    SELECT * FROM tb_paciente WHERE id_paciente = p_id;
END //

DELIMITER ;


DELIMITER //

CREATE PROCEDURE sp_borrar_registro (
    IN p_id INT
)
BEGIN
    DELETE FROM tb_paciente WHERE id_paciente = p_id;
END //

DELIMITER ;


CREATE TABLE IF NOT EXISTS control_de_cambios_hospital (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario VARCHAR(100),
    accion VARCHAR(100),
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DELIMITER //

CREATE TRIGGER tr_insertar_control_insert AFTER INSERT ON tb_paciente
FOR EACH ROW
BEGIN
    -- Registra inserción en control_de_cambios_hospital
    INSERT INTO control_de_cambios_hospital (usuario, accion, fecha) VALUES (USER(), 'INSERT', NOW());
END //

CREATE TRIGGER tr_insertar_control_delete AFTER DELETE ON tb_paciente
FOR EACH ROW
BEGIN
    -- Registra eliminación en control_de_cambios_hospital
    INSERT INTO control_de_cambios_hospital (usuario, accion, fecha) VALUES (USER(), 'DELETE', NOW());
END //

DELIMITER ;



