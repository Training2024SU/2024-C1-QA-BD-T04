USE `LibreriaBuscaLibre`;

-- DROP PROCEDURE libro_detalles;
-- DROP PROCEDURE eliminar_libro;

DELIMITER $$

-- Consultar todos los detalles relacionados a un libro
CREATE PROCEDURE libro_detalles (
		IN isbn VARCHAR(13)
    )
BEGIN
	SELECT 
		l.*,
        e.Telefono as "telefono_editorial",
        a.id as "id_autor",
        a.nombre as "autor",
        a.nacionalidad
	FROM (
		SELECT *
		FROM libro l
		WHERE l.ISBN = isbn
	) AS l
	LEFT JOIN libro_autor la ON l.ISBN = la.ISBN_libro
	LEFT JOIN autor a ON la.id_autor = a.id
    LEFT JOIN Editorial e ON l.nombre_editorial = e.nombre;
END$$

-- Ejemplo:
-- CALL libro_detalles('9780061122123')$$


-- Crear nuevo libro con autor ya registrado y relacionarlos
CREATE PROCEDURE crear_libro_con_un_actor (
		IN isbn VARCHAR(13),
		IN titulo VARCHAR(45),
		IN num_paginas VARCHAR(45),
		IN nombre_editorial VARCHAR(50),
		IN id_autor VARCHAR(10)
    )
BEGIN
	INSERT INTO libro VALUES (isbn, titulo, num_paginas, nombre_editorial);
	INSERT INTO libro_autor VALUES (isbn, id_autor);
END$$

-- Ejemplo:
SELECT * FROM libro$$
SELECT * FROM libro_autor$$
SELECT * FROM autor$$
-- CALL crear_libro_con_un_actor('9780061122123', 'Libro de prueba', 429, 'HarperCollins', '2345678901')$$

-- Actualizar el titulo de un libro
CREATE PROCEDURE actualizar_libro_titulo (
		IN isbn VARCHAR(13),
        IN titulo VARCHAR(45)
	)
BEGIN
	UPDATE libro l SET l.titulo = titulo WHERE l.ISBN = isbn;
END$$

-- Ejemplo:
SELECT * FROM libro$$
-- CALL actualizar_libro_titulo('9780061122123', 'Libro de prueba 2')$$

-- Actualizar agregando autor existente a libro existente
CREATE PROCEDURE agregar_libro_autor (
		IN isbn VARCHAR(13),
		IN id_autor VARCHAR(10)
    )
BEGIN
	INSERT INTO libro_autor VALUES (isbn, id_autor);
END$$

-- Ejemplo:
SELECT * FROM libro$$
SELECT * FROM libro_autor$$
SELECT * FROM autor$$
-- CALL agregar_libro_autor('9780061122123', '1234567890')$$

-- Eliminar libro con sus relaciones de autores
CREATE PROCEDURE eliminar_libro (
		IN isbn VARCHAR(13)
    )
BEGIN
	DELETE FROM libro_autor la WHERE la.ISBN_libro = isbn;
    DELETE FROM libro l WHERE l.ISBN = isbn;
END$$

-- Ejemplo:
SELECT * FROM libro$$
-- CALL eliminar_libro('9780061122123')$$

DELIMITER ;
