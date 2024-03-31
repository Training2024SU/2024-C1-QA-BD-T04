USE `libreriabuscalibre`;

--  Creacion de la tabla para las auditorias
CREATE TABLE control_de_cambios_librería (
    usuario VARCHAR(100),
    accion VARCHAR(100),
    fecha DATETIME
);


DELIMITER //
-- Creacion 1er Trigger: Control de inserción
-- Ejemplo uso:
-- CALL sp_crearAutor('6', '1998-02-06', 'Colombiano', 'David Beckham');
-- SELECT * FROM control_de_cambios_librería
CREATE TRIGGER controlInsercionAutor
AFTER INSERT ON autor 
FOR EACH ROW
BEGIN
    INSERT INTO control_de_cambios_librería (usuario, accion, fecha)
    VALUES (USER(), 'Insert Autor', NOW());
END;
//

DELIMITER ;

--

DELIMITER //
-- Creacion 2er Trigger: Control de eliminación
-- Ejemplo uso:
-- CALL sp_eliminarAutor('6');
-- SELECT * FROM control_de_cambios_librería
CREATE TRIGGER controlEliminacionAutor
AFTER DELETE ON autor 
FOR EACH ROW
BEGIN
    INSERT INTO control_de_cambios_librería (usuario, accion, fecha)
    VALUES (USER(), 'Delete Autor', NOW());
END;
//

DELIMITER ;











