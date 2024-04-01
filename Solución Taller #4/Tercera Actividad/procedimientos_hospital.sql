-- agregar paciente
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregar_paciente`(
    IN p_id_paciente VARCHAR(30),
    IN p_id_procedimiento VARCHAR(45),
    IN p_nombre VARCHAR(45),
    IN p_telefono VARCHAR(45),
    IN p_direccion VARCHAR(45)
)
BEGIN
    INSERT INTO hospital.paciente (id_paciente, id_procedimiento, nombre, telefono, direccion) 
    VALUES (p_id_paciente, p_id_procedimiento, p_nombre, p_telefono, p_direccion);
END

-- actualizar paciente
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizar_paciente`(
    IN p_id_paciente VARCHAR(30),
    IN p_id_procedimiento VARCHAR(45),
    IN p_nombre VARCHAR(45),
    IN p_telefono VARCHAR(45),
    IN p_direccion VARCHAR(45)
)
BEGIN
    UPDATE hospital.paciente 
    SET id_procedimiento = p_id_procedimiento, 
        nombre = p_nombre, 
        telefono = p_telefono, 
        direccion = p_direccion
    WHERE id_paciente = p_id_paciente;
END

--  consultar paciente

CREATE DEFINER=`root`@`localhost` PROCEDURE `consultar_paciente`(
    IN p_id_paciente VARCHAR(30)
)
BEGIN
    SELECT * FROM hospital.paciente WHERE id_paciente = p_id_paciente;
END


--  borrar paciente 
CREATE DEFINER=`root`@`localhost` PROCEDURE `borrar_paciente`(
    IN p_id_paciente VARCHAR(30)
)
BEGIN
    DELETE FROM hospital.paciente WHERE id_paciente = p_id_paciente;
END