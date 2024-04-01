
-- agregar editorial

DELIMITER //

CREATE PROCEDURE AgregarEditorial(
    IN nombre_editorial VARCHAR(50),
    IN ciudad VARCHAR(30),
    IN complemento VARCHAR(100),
    IN telefono VARCHAR(20)
)
BEGIN
    INSERT INTO Editorial (nombre, ciudad, complemento, Telefono)
    VALUES (nombre_editorial, ciudad, complemento, telefono);
END //

DELIMITER ;



-- actualizar editorial

DELIMITER //

CREATE PROCEDURE ActualizarEditorial(
    IN nombre_editorial_actual VARCHAR(50),
    IN nuevo_nombre_editorial VARCHAR(50),
    IN nueva_ciudad VARCHAR(30),
    IN nuevo_complemento VARCHAR(100),
    IN nuevo_telefono VARCHAR(20)
)
BEGIN
    UPDATE Editorial
    SET nombre = nuevo_nombre_editorial,
        ciudad = nueva_ciudad,
        complemento = nuevo_complemento,
        Telefono = nuevo_telefono
    WHERE nombre = nombre_editorial_actual;
END //

DELIMITER ;


-- consultar

DELIMITER //

CREATE PROCEDURE ConsultarEditorial(
    IN nombre_editorial_consulta VARCHAR(50)
)
BEGIN
    SELECT *
    FROM Editorial
    WHERE nombre = nombre_editorial_consulta;
END //

DELIMITER ;


-- borrar

DELIMITER //

CREATE PROCEDURE BorrarEditorial(
    IN nombre_editorial_borrar VARCHAR(50)
)
BEGIN
    DELETE FROM Editorial
    WHERE nombre = nombre_editorial_borrar;
END //

DELIMITER ;



