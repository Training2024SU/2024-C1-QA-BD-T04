-- realice 5 consultas que me permitan conocer:
USE `LibreriaBuscaLibre`;

-- el nombre y la fecha de nacimiento de cada escritor
SELECT 
    nombre AS autor, `fecha de nacimiento`
FROM
    autor;

-- la cantidad de libros diferentes vendidos
SELECT 
    l.ISBN,
    l.titulo,
    l.numero_paginas,
    l.nombre_editorial,
    c.nombre AS `comprado_por`
FROM
    libro_cliente AS lc
        LEFT JOIN
    libro AS l ON ISBN_libro_cliente = ISBN
        LEFT JOIN
    cliente AS c ON id_cliente = cedula;

-- el nombre de su cliente acompañado de sus numeros teléfonicos
SELECT 
    c.nombre, t.numero
FROM
    cliente AS c
        LEFT JOIN
    telefono_cliente AS t ON c.cedula = t.cedula_cliente;
    
-- el nombre del libro acompañado por su autor o sus autores
SELECT 
    l.ISBN,
    l.titulo,
    l.numero_paginas,
    l.nombre_editorial,
    a.nombre AS autor
FROM
    libro AS l
        LEFT JOIN
    libro_autor AS la ON LA.ISBN_libro = l.ISBN
        LEFT JOIN
    autor AS a ON la.id_autor = a.id;
    
-- el nombre de las editoriales que han logrado vender libros.
SELECT 
    nombre_editorial, COUNT(ISBN) AS `Libros_vendidos`
FROM
    libro_cliente
        LEFT JOIN
    libro ON ISBN_libro_cliente = ISBN
GROUP BY nombre_editorial;