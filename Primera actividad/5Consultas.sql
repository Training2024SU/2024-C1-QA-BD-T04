---------------------------------------
-- Consulta 1:
SELECT 
	Nombre,
    `Fecha de nacimiento`
FROM Autor;

---------------------------------------
-- Consulta 2:
SELECT 
	L.ISBN
    ,L.titulo
FROM libro_cliente AS LC
INNER JOIN libro AS L ON (LC.ISBN_libro_cliente = L.ISBN);

---------------------------------------
-- Consulta 3:
SELECT 
	C.nombre
    ,TC.numero
FROM Cliente AS C
INNER JOIN telefono_cliente AS TC ON (c.cedula = TC.cedula_cliente);

---------------------------------------
-- Consulta 4:
SELECT 
	L.titulo
    ,A.nombre
FROM libro AS L
INNER JOIN libro_Autor AS LA ON (L.ISBN = LA.ISBN_libro)
INNER JOIN autor AS A ON (A.id = LA.id_autor);

---------------------------------------
-- Consulta 5:
SELECT 
	E.nombre,
    COUNT(E.nombre) AS Ventas
FROM editorial AS E
INNER JOIN libro AS L ON (E.nombre = L.nombre_editorial)
GROUP BY E.nombre