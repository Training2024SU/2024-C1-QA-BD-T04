USE `libreriabuscalibre`;

-- Procedimiento para Agregar Editorial:
DELIMITER $$
CREATE PROCEDURE `agregar_editorial` (IN nombre_editorial VARCHAR(50),
    IN ciudad VARCHAR(30),
    IN complemento VARCHAR(100),
    IN Telefono VARCHAR(20)
    )
BEGIN
	INSERT INTO Editorial(nombre, ciudad, complemento, Telefono) 
    VALUES(nombre_editorial, ciudad, complemento, Telefono);
END$$
DELIMITER ;

CALL agregar_editorial('Editorial Bribge', 'Los Angeles', '5600 E. Olympic Blvd', '1-800-722-1733');

-- Procedimiento para Actualizar Editorial:
DELIMITER $$
CREATE PROCEDURE `actualizar_editorial` (
	IN nombre_editorial VARCHAR(50),
    IN nueva_ciudad VARCHAR(30),
    IN nuevo_complemento VARCHAR(100),
    IN nuevo_Telefono VARCHAR(20))
BEGIN
	UPDATE Editorial 
    SET ciudad = nueva_ciudad, 
        complemento = nuevo_complemento, 
        Telefono = nuevo_Telefono
    WHERE nombre = nombre_editorial;
END$$
DELIMITER ;

CALL actualizar_editorial('Editorial Bribge', 'San Francisco', '2600 E. Olympic Blvd', '1-800-722-1734');

-- Procedimiento para Consultar Editorial:
DELIMITER $$
CREATE PROCEDURE `consultar_editorial` (
IN nombre_editorial VARCHAR(50)
)
BEGIN
	SELECT * FROM Editorial WHERE nombre = nombre_editorial;
END$$
DELIMITER ;

CALL consultar_editorial('Editorial Norma');


-- Procedimiento para Eliminar una Editorial:
DELIMITER $$
CREATE PROCEDURE `eliminar_editorial` (
IN nombre_editorial VARCHAR(50)
)
BEGIN
	DELETE FROM Editorial WHERE nombre = nombre_editorial;
END$$
DELIMITER ;

CALL eliminar_editorial('Editorial Bribge');



