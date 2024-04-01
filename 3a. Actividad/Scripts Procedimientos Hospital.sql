-- Procedimiento para Agregar un Nuevo Paciente:
DELIMITER //
CREATE PROCEDURE agregar_paciente(
    IN nombre VARCHAR(45),
    IN apellido VARCHAR(45),
    IN direccion VARCHAR(100),
    IN id_procedimiento INT
)
BEGIN
    INSERT INTO hospital.tb_paciente (nombre_paciente, apellido_paciente, direccion, id_procedimiento)
    VALUES (nombre, apellido, direccion, id_procedimiento);
END //
DELIMITER ;

CALL agregar_paciente('NombreNuevo', 'ApellidoNuevo', 'DirecciónNueva', id_procedimiento);


-- Procedimiento para Actualizar la Información de un Paciente:
DELIMITER //
CREATE PROCEDURE actualizar_paciente(
    IN id_paciente INT,
    IN nombre VARCHAR(45),
    IN apellido VARCHAR(45),
    IN direccion VARCHAR(100),
    IN id_procedimiento INT
)
BEGIN
    UPDATE hospital.tb_paciente
    SET nombre_paciente = nombre, apellido_paciente = apellido, direccion = direccion, id_procedimiento = id_procedimiento
    WHERE id_paciente = id_paciente;
END //
DELIMITER ;

CALL actualizar_paciente(id_paciente, 'NuevoNombre', 'NuevoApellido', 'NuevaDirección', nuevo_id_procedimiento);


-- Procedimiento para Consultar la Información de un Paciente por su ID:
DELIMITER //
CREATE PROCEDURE consultar_paciente(
    IN id_paciente INT
)
BEGIN
    SELECT *
    FROM hospital.tb_paciente
    WHERE id_paciente = id_paciente;
END //
DELIMITER ;

CALL consultar_paciente(id_paciente);


-- Procedimiento para Borrar un Paciente por su ID:
DELIMITER //
CREATE PROCEDURE borrar_paciente(
    IN id_paciente INT
)
BEGIN
    DELETE FROM hospital.tb_paciente
    WHERE id_paciente = id_paciente;
END //
DELIMITER ;

CALL borrar_paciente(id_paciente);



