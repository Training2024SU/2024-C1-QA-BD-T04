USE libreriabuscalibre;

-- El nombre y la fecha de nacimiento de cada escritor
SELECT nombre, `fecha de nacimiento` FROM LibreriaBuscaLibre.autor;

-- La cantidad de libros diferentes vendidos
SELECT COUNT(DISTINCT ISBN_libro_cliente) AS cantidad_libros_vendidos FROM LibreriaBuscaLibre.libro_cliente;

-- El nombre de su cliente acompañado de su numero teléfonico
SELECT c.nombre AS nombre_cliente, tc.numero AS numero_telefonico
FROM LibreriaBuscaLibre.cliente AS c
JOIN LibreriaBuscaLibre.telefono_cliente AS tc ON c.cedula = tc.cedula_cliente;

-- El nombre del libro acompañado por su autor o sus autores
SELECT l.titulo AS nombre_libro, GROUP_CONCAT(a.nombre SEPARATOR ', ') AS autores
FROM LibreriaBuscaLibre.libro AS l
JOIN LibreriaBuscaLibre.libro_autor AS la ON l.ISBN = la.ISBN_libro
JOIN LibreriaBuscaLibre.autor AS a ON la.id_autor = a.id
GROUP BY l.titulo;

-- el nombre de las editoriales que han logrado vender libros
SELECT DISTINCT e.nombre AS nombre_editorial
FROM LibreriaBuscaLibre.Editorial AS e
JOIN LibreriaBuscaLibre.libro AS l ON e.nombre = l.nombre_editorial;

-- los libros más vendidos en la librería
SELECT l.titulo AS nombre_libro, 
COUNT(lc.ISBN_libro_cliente) AS total_ventas
FROM LibreriaBuscaLibre.libro AS l
JOIN LibreriaBuscaLibre.libro_cliente AS lc ON l.ISBN = lc.ISBN_libro_cliente
GROUP BY l.titulo
ORDER BY total_ventas DESC
LIMIT 10;