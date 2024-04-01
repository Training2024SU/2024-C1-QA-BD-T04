-- PROCEDIMIENTO AGREGAR PACIENTE
DELIMITER //

CREATE PROCEDURE AgregarPaciente(
    IN nombre_paciente VARCHAR(45),
    IN apellido_paciente VARCHAR(45),
    IN direccion VARCHAR(45),
    IN id_procedimiento INT
)
BEGIN
    INSERT INTO Hospital_BD.Paciente (nombre_paciente, apellido_paciente, direccion, id_procedimiento)
    VALUES (nombre_paciente, apellido_paciente, direccion, id_procedimiento);
END //
DELIMITER ;


-- PROCEDIMIENTO ACTUALIZAR PACIENTE
DELIMITER //
CREATE PROCEDURE ActualizarPaciente(
    IN id_paciente INT,
    IN nuevo_nombre_paciente VARCHAR(45),
    IN nuevo_apellido_paciente VARCHAR(45),
    IN nueva_direccion VARCHAR(45),
    IN nuevo_id_procedimiento INT
)
BEGIN
    UPDATE Hospital_BD.Paciente
    SET nombre_paciente = nuevo_nombre_paciente,
        apellido_paciente = nuevo_apellido_paciente,
        direccion = nueva_direccion,
        id_procedimiento = nuevo_id_procedimiento
    WHERE id_Paciente = id_paciente;
END //
DELIMITER ;


-- PROCEDIMIENTO CONSULTAR PACIENTE
DELIMITER //
CREATE PROCEDURE ConsultarPaciente(
    IN p_id_paciente INT
)
BEGIN
    SELECT *
    FROM Hospital_BD.Paciente
    WHERE p_id_paciente = id_Paciente;
END //
DELIMITER ;


-- PROCEDIMIENTO ELIMINAR PACIENTE
DELIMITER //
CREATE PROCEDURE BorrarPaciente(
    IN p_id_paciente INT
)
BEGIN
    DELETE FROM Hospital_BD.Paciente
    WHERE p_id_Paciente = id_Paciente;
END //
DELIMITER ;










