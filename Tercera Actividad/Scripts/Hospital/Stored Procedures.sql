USE `hospital`;


-- SP 1: CREAR MEDICO 
-- Llamar al procedimiento almacenado utilizando CALL
-- CALL sp_InsertarMedico(11, 'Julian', 'Alvarez', 'Dermatología');
-- SELECT * FROM Medico
-- Definir el procedimiento almacenado con el delimitador correcto
DELIMITER //

CREATE PROCEDURE  sp_InsertarMedico 
    (IN IdMedico INT,
    IN NombreMedico VARCHAR(100),
    IN ApellidoMedico VARCHAR(100),
    IN Especialidad VARCHAR(50))
BEGIN
    INSERT INTO Medico (IdMedico, NombreMedico, ApellidoMedico, Especialidad)
    VALUES (IdMedico, NombreMedico, ApellidoMedico, Especialidad);
END //

-- Restaurar el delimitador por defecto
DELIMITER ;

-- ==============================================================================================

-- SP 2: EDITAR MEDICO 
-- Llamar al procedimiento almacenado utilizando CALL
-- CALL sp_editarMedico(11, 'David', 'Alvarez', 'Cardiología');
-- SELECT * FROM Medico
-- Definir el procedimiento almacenado con el delimitador correcto
DELIMITER //

CREATE PROCEDURE sp_editarMedico 
    (IN IdMedicoCompare INT,
    IN NombreMedicoNuevo VARCHAR(100),
    IN ApellidoMedicoNuevo VARCHAR(100),
    IN EspecialidadNuevo VARCHAR(50))
BEGIN
    UPDATE Medico
    SET 
        NombreMedico = NombreMedicoNuevo, ApellidoMedico = ApellidoMedicoNuevo, Especialidad = EspecialidadNuevo
    WHERE
        idMedico = IdMedicoCompare;
END //

-- Restaurar el delimitador por defecto
DELIMITER ;

-- ==============================================================================================

-- SP 3: CONSULTAR MEDICO 
-- Llamar al procedimiento almacenado utilizando CALL
-- CALL sp_buscarMedico(6);
-- Definir el procedimiento almacenado con el delimitador correcto
DELIMITER //

CREATE PROCEDURE sp_buscarMedico
    (IdMedicoCompare INT)
BEGIN
	SELECT 
		`IdMedico`
        ,`NombreMedico`
        ,`ApellidoMedico`
        ,`Especialidad`
	FROM Medico 
    WHERE idMedico = IdMedicoCompare;
END //

-- Restaurar el delimitador por defecto
DELIMITER ;

-- ==============================================================================================

-- SP 4: ELIMINAR MEDICO 
-- Llamar al procedimiento almacenado utilizando CALL
-- CALL sp_eliminarMedico(11);
-- SELECT * FROM Medico
-- Definir el procedimiento almacenado con el delimitador correcto
DELIMITER //

CREATE PROCEDURE sp_eliminarMedico 
    (IdMedicoCompare INT)
BEGIN
	DELETE FROM Medico 
    WHERE IdMedico = IdMedicoCompare;
END //

-- Restaurar el delimitador por defecto
DELIMITER ;










