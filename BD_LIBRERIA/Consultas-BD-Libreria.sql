-- ---------------------------------
-- CONSULTAS
-- ---------------------------------

-- Nombre y fecha de nacimieto de cada autor
SELECT nombre, `fecha de nacimiento` 
FROM autor;

-- ------------------------------------------
-- cantidad de libros diferentes vendidos
-- ------------------------------------------
SELECT COUNT(DISTINCT ISBN_libro_cliente) AS cantidad_libros_vendidos
FROM libro_cliente;

-- ------------------------------------------
-- Nombre de su cliente acompañado de su numero teléfonico
-- ------------------------------------------

SELECT c.nombre, tc.numero
FROM cliente c
JOIN telefono_cliente tc ON c.cedula = tc.cedula_cliente;

-- ------------------------------------------
-- Nombre del libro acompañado por su autor o autores
-- ------------------------------------------

SELECT l.titulo AS nombre_libro, GROUP_CONCAT(a.nombre SEPARATOR ', ') AS autores
FROM libro l
JOIN libro_autor la ON l.ISBN = la.ISBN_libro
JOIN autor a ON la.id_autor = a.id
GROUP BY l.titulo;

-- ------------------------------------------
-- Nombre de la editoriales que han logrado verder mas libros
-- ------------------------------------------

SELECT DISTINCT e.nombre
FROM Editorial e
JOIN libro l ON e.nombre = l.nombre_editorial;