
-- Consulta para conocer nombre y fecha de nacimiento de autores
SELECT nombre, "fecha de nacimiento"
FROM autor;
 -- ----------------------------------------- 
 -- Consulta para conocer cantidad de libros diferentes vendidos

SELECT COUNT(DISTINCT ISBN_libro_cliente) AS cantidad_libros_vendidos
FROM libro_cliente;
 -- Consulta para conocer cuales fueron los libros diferentes vendidos
SELECT DISTINCT ISBN_libro_cliente as ISBN, id_cliente AS  cedula_cliente
FROM libro_cliente;

-- ----------------------------------------- 
-- Consulta para conocer el nombre de cada cliente acompañado de sus numeros teléfonicos
SELECT c.nombre, t.numero
FROM cliente AS c
LEFT JOIN telefono_cliente AS t ON c.cedula = t.cedula_cliente;
-- ----------------------------------------- 
-- Consulta para ver el titulo del libro acompañado de su autor o autores
SELECT L.titulo ,A.nombre
FROM libro AS L
INNER JOIN libro_Autor AS LA ON (L.ISBN = LA.ISBN_libro)
INNER JOIN autor AS A ON (A.id = LA.id_autor);
-- ----------------------------------------- 
-- Consulta para conocer el número de ventas de libros por editorial
SELECT Ed.nombre, COUNT(Ed.nombre) AS contador_ventas
FROM editorial AS Ed
INNER JOIN libro AS L ON (Ed.nombre = L.nombre_editorial)
GROUP BY Ed.nombre
