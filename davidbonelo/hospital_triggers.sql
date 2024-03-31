USE `hospital`;

CREATE TABLE if not exists control_de_cambios_hospital (
    usuario VARCHAR(50),
    accion VARCHAR(255),
    fecha_hora TIMESTAMP
)  ENGINE=INNODB;

-- DROP TRIGGER insert_logger;
CREATE 
    TRIGGER insert_logger
 AFTER INSERT ON Enfermeros FOR EACH ROW 
    INSERT INTO control_de_cambios_hospital VALUES (
		CURRENT_USER(),
        CONCAT('nuevo enfermero registrado; ', NEW.id, ", ", NEW.nombres, ", ", NEW.apellidos, ", ", NEW.id_medico),
        NOW()
	);

-- DROP TRIGGER delete_logger;
CREATE 
    TRIGGER delete_logger
 AFTER delete ON Enfermeros FOR EACH ROW 
    INSERT INTO control_de_cambios_hospital VALUES (
		CURRENT_USER(),
        CONCAT('registro de enfermero borrado; ', OLD.id, ", ", OLD.nombres, ", ", OLD.apellidos, ", ", OLD.id_medico),
        NOW()
	);
    
-- Ejemplo:
INSERT INTO Enfermeros VALUES (409, 'Pepito', 'Perez', 102);
DELETE FROM Enfermeros e WHERE e.id= 409;
SELECT * FROM Enfermeros;
SELECT * FROM control_de_cambios_hospital;
