-- PROCEDIMIENTOS ALMACENADOS

-- ---------------
-- AGREGAR LIBRO
-- ---------------
DELIMITER //
CREATE PROCEDURE AgregarLibro(
    IN p_ISBN VARCHAR(10),
    IN p_titulo VARCHAR(45),
    IN p_numero_paginas VARCHAR(45),
    IN p_nombre_editorial VARCHAR(50)
)
BEGIN
    INSERT INTO libro (ISBN, titulo, numero_paginas, nombre_editorial)
    VALUES (p_ISBN, p_titulo, p_numero_paginas, p_nombre_editorial);
END //
DELIMITER ;

-- -----------------------
-- ACTUALIZAR LIBRO
-- -----------------------
DELIMITER //
CREATE PROCEDURE ActualizarLibro(
    IN p_ISBN VARCHAR(10),
    IN p_titulo VARCHAR(45),
    IN p_numero_paginas VARCHAR(45),
    IN p_nombre_editorial VARCHAR(50)
)
BEGIN
    UPDATE libro
    SET titulo = p_titulo,
        numero_paginas = p_numero_paginas,
        nombre_editorial = p_nombre_editorial
    WHERE ISBN = p_ISBN;
END //
DELIMITER ;

-- ----------------------------------
-- CONSULTAR INFORMACION DE UN LIBRO
-- ----------------------------------
DELIMITER //
CREATE PROCEDURE ConsultarLibro(
    IN p_ISBN VARCHAR(10)
)
BEGIN
    SELECT * FROM libro WHERE ISBN = p_ISBN;
END //
DELIMITER ;


-- -------------------
-- ELIMINAR LIBRO
-- -------------------
DELIMITER //
CREATE PROCEDURE BorrarLibro(
    IN p_ISBN VARCHAR(10)
)
BEGIN
    DELETE FROM libro WHERE ISBN = p_ISBN;
END //
DELIMITER ;