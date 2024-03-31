DROP VIEW IF EXISTS libros_vendidos;
DROP VIEW IF EXISTS clientes_frequentes;

-- vista libros más vendidos en orden
CREATE VIEW libros_vendidos AS
    SELECT 
        l.*, COUNT(l.ISBN) AS `cantidad_vendidos`
    FROM
        libro_cliente AS lc
            LEFT JOIN
        libro AS l ON lc.ISBN_libro_cliente = l.ISBN
    GROUP BY l.ISBN
    ORDER BY cantidad_vendidos DESC;
        
SELECT * FROM libros_vendidos;

-- vista clientes más frecuentes
CREATE VIEW clientes_frequentes AS
    SELECT 
        c.*, COUNT(lc.ISBN_libro_cliente) AS `cantidad_comprados`
    FROM
        libro_cliente AS lc
            LEFT JOIN
        cliente AS c ON lc.id_cliente = c.cedula
    GROUP BY c.cedula
    ORDER BY cantidad_comprados DESC;
        
SELECT * FROM clientes_frequentes;
