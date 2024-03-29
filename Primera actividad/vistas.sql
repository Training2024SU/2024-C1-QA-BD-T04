CREATE VIEW `EditorialesConMenosVentas` AS
SELECT Ed.nombre, COUNT(Ed.nombre) AS contador_ventas
FROM editorial AS Ed
INNER JOIN libro AS L ON (Ed.nombre = L.nombre_editorial)
GROUP BY Ed.nombre
ORDER BY contador_ventas ASC;

CREATE VIEW `ClientesConMasCompras` AS 
    SELECT c.*, COUNT(c.cedula) AS cantidad_compras
    FROM libro_cliente AS lc
	LEFT JOIN cliente AS c ON lc.id_cliente = c.cedula
    GROUP BY c.cedula
    ORDER BY cantidad_compras DESC;
        
     