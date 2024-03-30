use hospital;

DELIMITER //

CREATE PROCEDURE agregar_medico(
    IN nombre_medico VARCHAR(45),
    IN apellido_medico VARCHAR(45),
    IN especialidad VARCHAR(45)
)
BEGIN
    INSERT INTO Medicos (nombre_medico, apellido_medico, especialidad) 
    VALUES (nombre_medico, apellido_medico, especialidad);
END //



CREATE PROCEDURE actualizar_medico(
    IN id_medico INT,
    IN nuevo_nombre_medico VARCHAR(45),
    IN nuevo_apellido_medico VARCHAR(45),
    IN nueva_especialidad VARCHAR(45)
)
BEGIN
    UPDATE Medicos 
    SET nombre_medico = nuevo_nombre_medico, 
        apellido_medico = nuevo_apellido_medico,
        especialidad = nueva_especialidad
    WHERE id_medicos = id_medico;
END //


CREATE PROCEDURE consultar_medico(
    IN id_medico INT
)
BEGIN
    SELECT * FROM Medicos WHERE id_medicos = id_medico;
END //


CREATE PROCEDURE eliminar_medico(
    IN id_medico INT
)
BEGIN
    DELETE FROM Medicos WHERE id_medicos = id_medico;
END //

DELIMITER ;
