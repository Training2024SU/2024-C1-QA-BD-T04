USE libreriabuscalibre;

--Procedimiento para agregar libro 
DELIMITER //

CREATE DEFINER=`root`@`localhost` PROCEDURE `agregar_libro`(
    IN ISBN VARCHAR(30),
    IN titulo VARCHAR(45),
    IN numero_paginas VARCHAR(45),
    IN nombre_editorial VARCHAR(50)
)
BEGIN
    INSERT INTO libro (ISBN, titulo, numero_paginas, nombre_editorial) VALUES (ISBN, titulo, numero_paginas, nombre_editorial);
END //

DELIMITER ;

--Procedimiento para actualizar libro 
DELIMITER //

CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizar_libro`(
    IN p_ISBN VARCHAR(30),
    IN p_titulo VARCHAR(45),
    IN p_numero_paginas VARCHAR(45),
    IN p_nombre_editorial VARCHAR(50)
)
BEGIN
    -- Variable para almacenar el número de libros con el ISBN proporcionado
    DECLARE libro_count INT;

    -- Verificar si el libro con el ISBN proporcionado existe
    SELECT COUNT(*) INTO libro_count
    FROM libro
    WHERE ISBN = p_ISBN;

    -- Si el libro no existe, mostrar un mensaje de error y terminar el procedimiento
    IF libro_count = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: El libro con el ISBN proporcionado no existe en la base de datos.';
    ELSE
        -- El libro existe, por lo tanto, actualizar su información
        UPDATE libro
        SET titulo = p_titulo,
            numero_paginas = p_numero_paginas,
            nombre_editorial = p_nombre_editorial
        WHERE ISBN = p_ISBN;
    END IF;
END //

DELIMITER ;

--Procedimiento para consultar libro por ISBN

DELIMITER //

CREATE DEFINER=`root`@`localhost` PROCEDURE `consultar_libro`(
    IN p_ISBN VARCHAR(30)
)
BEGIN
    -- Variable para almacenar la información del libro
    DECLARE v_titulo VARCHAR(45);
    DECLARE v_numero_paginas VARCHAR(45);
    DECLARE v_nombre_editorial VARCHAR(50);

    -- Verificar si el libro con el ISBN proporcionado existe
    SELECT titulo, numero_paginas, nombre_editorial INTO v_titulo, v_numero_paginas, v_nombre_editorial
    FROM libro
    WHERE ISBN = p_ISBN;

    -- Si el libro no existe, mostrar un mensaje de error
    IF v_titulo IS NULL THEN
        SELECT 'El libro con el ISBN proporcionado no existe en la base de datos.' AS Mensaje;
    ELSE
        -- Devolver la información del libro
        SELECT v_titulo AS Titulo, v_numero_paginas AS Numero_Paginas, v_nombre_editorial AS Nombre_Editorial;
    END IF;
END //
DELIMITER ;

--Procedimiento para borrar libro por ISBN

DELIMITER //

CREATE DEFINER=`root`@`localhost` PROCEDURE `borrar_libro`(
    IN p_ISBN VARCHAR(30)
)
BEGIN
    -- Verificar si el libro con el ISBN proporcionado existe
    IF EXISTS (SELECT * FROM libro WHERE ISBN = p_ISBN) THEN
        -- El libro existe, por lo tanto, borrarlo
        DELETE FROM libro WHERE ISBN = p_ISBN;
    END IF;
END //

DELIMITER ;
