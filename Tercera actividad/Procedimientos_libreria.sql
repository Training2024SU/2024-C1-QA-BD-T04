USE LibreriaBuscaLibre;

DELIMITER //	

CREATE PROCEDURE agregar_editorial(
    IN nombre_editorial VARCHAR(50),
    IN ciudad VARCHAR(30),
    IN complemento VARCHAR(100),
    IN Telefono VARCHAR(20)
)
BEGIN
    INSERT INTO Editorial (nombre, ciudad, complemento, Telefono)
    VALUES (nombre_editorial, ciudad, complemento, Telefono);
END//



CREATE PROCEDURE actualizar_editorial(
    IN nombre_editorial VARCHAR(50),
    IN nueva_ciudad VARCHAR(30),
    IN nuevo_complemento VARCHAR(100),
    IN nuevo_Telefono VARCHAR(20)
)
BEGIN
    UPDATE Editorial
    SET ciudad = nueva_ciudad,
        complemento = nuevo_complemento,
        Telefono = nuevo_Telefono
    WHERE nombre = nombre_editorial;
END//



CREATE PROCEDURE consultar_editorial(
    IN nombre_editorial VARCHAR(50)
)
BEGIN
    SELECT * FROM Editorial WHERE nombre = nombre_editorial;
END//



CREATE PROCEDURE borrar_editorial(
    IN nombre_editorial VARCHAR(50)
)
BEGIN
    DELETE FROM Editorial WHERE nombre = nombre_editorial;
END//

DELIMITER ;

