USE `hospital`;

-- DROP PROCEDURE enfermero_detalles;
-- DROP PROCEDURE crear_enfermero_con_telefono;
-- DROP PROCEDURE eliminar_enfermero
-- DROP PROCEDURE reasignar_enfermero
DELIMITER $$

-- Consultar todos los detalles relacionados a un medico
CREATE PROCEDURE enfermero_detalles (
		IN id INT
    )
BEGIN
	SELECT 
		e.*,
        CONCAT( m.nombres, " ", m.apellidos) AS `medico`,
        m.especialidad
	FROM (
		SELECT *
		FROM Enfermeros e
		WHERE e.id = id
	) AS e
	LEFT JOIN Medicos m ON e.id_medico = m.id;
END$$

-- Crear nuevo enfermero y relacionarlo con un nuevo num de telefono
CREATE PROCEDURE crear_enfermero_con_telefono (
		IN id int,
		IN nombres VARCHAR(50),
        IN apellidos VARCHAR(50),
        IN id_medico INT,
		IN telefono VARCHAR(20)
    )
BEGIN
	INSERT INTO Enfermeros VALUES (id, nombres, apellidos, id_medico);
	INSERT INTO telefonos_enfermero VALUES (id, telefono);
END$$

-- Reasignar enfermero a otro medico
CREATE PROCEDURE reasignar_enfermero (
		IN id INT,
        IN id_medico INT
	)
BEGIN
	UPDATE Enfermeros e SET e.id_medico = id_medico WHERE e.id = id;
END$$

-- Eliminar enfermero y sus telefonos relacionados
CREATE PROCEDURE eliminar_enfermero (
		IN id INT
    )
BEGIN
	DELETE FROM telefonos_enfermero te WHERE te.id_enfermero = id;
    DELETE FROM Enfermeros e WHERE e.id = id;
END$$

DELIMITER ;

-- Ejemplos:

SELECT * FROM Enfermeros;
-- CALL enfermero_detalles(403);
SELECT * FROM telefonos_enfermero;
-- CALL crear_enfermero_con_telefono(409, 'Pepito', 'Perez', 102, '3102812040');
-- CALL enfermero_detalles(409);
-- CALL reasignar_enfermero(409, 104);
-- CALL eliminar_enfermero(409);
