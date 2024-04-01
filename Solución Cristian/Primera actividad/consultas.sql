
-- conocer el nombre y la fecha de nacimiento de cada escritor

SELECT nombre, `fecha de nacimiento`
FROM autor;


-- la cantidad de libros diferentes vendidos

SELECT COUNT(DISTINCT ISBN_libro_cliente) AS "Cantidad libros diferentes vendidos"
FROM libro_cliente;


-- el nombre de su cliente acompañado de su numero teléfonico, 

SELECT nombre, numero
FROM cliente
INNER JOIN telefono_cliente
ON cliente.cedula = telefono_cliente.cedula_cliente;


-- el nombre del libro acompañado por su autor o sus autores

SELECT l.titulo AS 'Nombre del Libro', GROUP_CONCAT(a.nombre SEPARATOR ', ') AS 'Autor(es)'
FROM LibreriaBuscaLibre.libro l
JOIN LibreriaBuscaLibre.libro_autor la ON l.ISBN = la.ISBN_libro
JOIN LibreriaBuscaLibre.autor a ON la.id_autor = a.id
GROUP BY l.titulo;


-- el nombre de las editoriales que han logrado vender libros.

SELECT DISTINCT nombre_editorial AS `Editorial que ha vendido`
FROM libro
INNER JOIN libro_cliente
ON libro.ISBN = libro_cliente.ISBN_libro_cliente;
