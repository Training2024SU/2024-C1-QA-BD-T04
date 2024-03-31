
-- La siguiente vista muestra el ránking de libros más vendidos de mayor a menor con información de ISBN, título, número de páginas y cantidad de ventas. Es información de utilidad ya que como dueño o gerente de una librería, me interesaría saber cuáles son los libros que más se venden para así poder ver si hay algún patrón entre ellos y comprar más libros similares.

CREATE VIEW LibrosVendidos AS
SELECT
    l.ISBN AS ISBN_libro,
    l.titulo AS titulo_libro,
    l.numero_paginas AS numero_paginas_libro,
    COUNT(lc.ISBN_libro_cliente) AS cantidad_vendidos
FROM libro l
LEFT JOIN libro_cliente lc ON l.ISBN = lc.ISBN_libro_cliente
GROUP BY l.ISBN, l.titulo, l.numero_paginas
ORDER BY cantidad_vendidos DESC;

SELECT * FROM LibrosVendidos;


-- La siguiente vista me trae información sobre los clientes que más libros han comprado. Es información relevante para el negocio ya que es útil para identificar a los clientes más activos y dirigir estrategias de marketing o promociones hacia ellos.

CREATE VIEW ClienteLibrosComprados AS
SELECT
    c.cedula AS cedula_cliente,
    c.nombre AS nombre_cliente,
    COUNT(lc.ISBN_libro_cliente) AS total_libros_comprados
FROM cliente c
LEFT JOIN libro_cliente lc ON c.cedula = lc.id_cliente
GROUP BY c.cedula, c.nombre
ORDER BY total_libros_comprados DESC;

SELECT * FROM ClienteLibrosComprados;
