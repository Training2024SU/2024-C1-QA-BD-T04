USE `hospital`;


-- SP 1: CREAR MEDICO 
-- Llamar al procedimiento almacenado utilizando CALL
-- CALL sp_crearAutor('6', '1998-02-06', 'Colombiano', 'David Beckham');
-- SELECT * FROM AUTOR
-- Definir el procedimiento almacenado con el delimitador correcto
DELIMITER //

CREATE PROCEDURE sp_crearAutor 
    (IN Id INT,
    IN FechaNacimiento DATE,
    IN Nacionalidad NVARCHAR(100),
    IN Nombre NVARCHAR(100))
BEGIN
    INSERT INTO autor (id, `fecha de nacimiento`, nacionalidad, nombre)
    VALUES (Id, FechaNacimiento, Nacionalidad, Nombre);
END //

-- Restaurar el delimitador por defecto
DELIMITER ;

-- ==============================================================================================

-- SP 2: EDITAR AUTOR 
-- Llamar al procedimiento almacenado utilizando CALL
-- CALL sp_editarAutor('6', '2003-02-06', 'Peruano', 'David Salazar');
-- SELECT * FROM AUTOR
-- Definir el procedimiento almacenado con el delimitador correcto
DELIMITER //

CREATE PROCEDURE sp_editarAutor 
    (IdCompare VARCHAR(10),
    FechaNacimiento VARCHAR(100),
	Nacionalidad NVARCHAR(100),
	Nombre NVARCHAR(100))
BEGIN
    UPDATE autor
    SET 
        `fecha de nacimiento` = FechaNacimiento, nacionalidad = Nacionalidad, nombre = Nombre
    WHERE
        id = IdCompare;
END //

-- Restaurar el delimitador por defecto
DELIMITER ;

-- ==============================================================================================

-- SP 3: CONSULTAR AUTOR 
-- Llamar al procedimiento almacenado utilizando CALL
-- CALL sp_buscarAutor('6');
-- SELECT * FROM AUTOR
-- Definir el procedimiento almacenado con el delimitador correcto
DELIMITER //

CREATE PROCEDURE sp_buscarAutor 
    (IdCompare VARCHAR(10))
BEGIN
	SELECT 
		id
        ,`fecha de nacimiento`
        ,nacionalidad
        ,nombre
	FROM autor 
    WHERE id = IdCompare;
END //

-- Restaurar el delimitador por defecto
DELIMITER ;

-- ==============================================================================================

-- SP 3: ELIMINAR AUTOR 
-- Llamar al procedimiento almacenado utilizando CALL
-- CALL sp_eliminarAutor('6');
-- SELECT * FROM AUTOR
-- Definir el procedimiento almacenado con el delimitador correcto
DELIMITER //

CREATE PROCEDURE sp_eliminarAutor 
    (IdCompare VARCHAR(10))
BEGIN
	DELETE FROM autor 
    WHERE id = IdCompare;
END //

-- Restaurar el delimitador por defecto
DELIMITER ;










