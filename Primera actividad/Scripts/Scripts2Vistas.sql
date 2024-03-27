CREATE VIEW `TOP3EditorialesConMasLibros` AS
SELECT 
	nombre_editorial
    ,COUNT(titulo) AS cantidad_libros
FROM libro
GROUP BY nombre_editorial
ORDER BY cantidad_libros DESC
LIMIT 3;


CREATE VIEW `ClientesCantidadLibrosComprados` AS 
SELECT 
    C.nombre AS nombre_cliente
   ,COUNT(L.titulo) AS Cantidad_libros_comprados
FROM libro_cliente AS LC 
INNER JOIN libro AS L ON (LC.ISBN_libro_cliente = L.ISBN)
INNER JOIN cliente AS C ON (C.cedula = LC.id_cliente)
GROUP BY C.nombre
ORDER BY 2 DESC;





