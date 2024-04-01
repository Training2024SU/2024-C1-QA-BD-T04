USE libreriabuscalibre;

-- Vista de Detalles de Libros y Autores
CREATE VIEW Vista_LibrosAutores AS
SELECT l.titulo AS nombre_libro, GROUP_CONCAT(a.nombre SEPARATOR ', ') AS autores
FROM LibreriaBuscaLibre.libro AS l
JOIN LibreriaBuscaLibre.libro_autor AS la ON l.ISBN = la.ISBN_libro
JOIN LibreriaBuscaLibre.autor AS a ON la.id_autor = a.id
GROUP BY l.titulo;
