USE `LibreriaBuscaLibre`;

CREATE TABLE control_de_cambios_librería (
    usuario VARCHAR(50),
    accion VARCHAR(255),
    fecha_hora TIMESTAMP
)  ENGINE=INNODB;

DROP TRIGGER insert_logger;
CREATE 
    TRIGGER  insert_logger
 AFTER INSERT ON libro FOR EACH ROW 
    INSERT INTO control_de_cambios_librería VALUES (
		CURRENT_USER(),
        CONCAT('nuevo registro; ', NEW.ISBN, ", ", NEW.titulo, ", ", NEW.numero_paginas, ", ", NEW.nombre_editorial),
        NOW()
	);

-- DROP TRIGGER delete_logger;
CREATE 
    TRIGGER  delete_logger
 AFTER delete ON libro FOR EACH ROW 
    INSERT INTO control_de_cambios_librería VALUES (
		CURRENT_USER(),
        CONCAT('registro borrado; ', OLD.ISBN, ", ", OLD.titulo, ", ", OLD.numero_paginas, ", ", OLD.nombre_editorial),
        NOW()
	);
    
-- Ejemplo:
INSERT INTO libro VALUES ('123','Libro de preubaa',123,'HarperCollins');
DELETE FROM libro l WHERE l.ISBN = "123";
SELECT * FROM libro;
SELECT * FROM control_de_cambios_librería;
