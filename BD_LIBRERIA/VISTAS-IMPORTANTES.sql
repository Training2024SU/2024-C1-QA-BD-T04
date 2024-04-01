-- ----------------------------------
-- VISTAS IMPORTANTES
-- ----------------------------------

-- ----------------------------------
-- VISTA LIBROS VENDIDOS CON DETALLE DE CLIENTES
-- --------------------------------------------------------------------------------------------------------------
-- Esta vista proporciona una lista de todos los libros vendidos junto con detalles de los clientes que los compraron
-- incluyendo su nombre y número de teléfono. Es importante esta vista ya que es útil para consultas frecuentes que 
-- involucran detalles de ventas y clientes debido a que simplifica la consulta al centralizar 
-- la información relevante en una sola vista.
-- --------------------------------------------------------------------------------------------------------------

CREATE VIEW VistaLibrosVendidos AS
SELECT lc.ISBN_libro_cliente, l.titulo AS titulo_libro, c.cedula, c.nombre AS nombre_cliente, tc.numero AS telefono_cliente
FROM libro_cliente lc
JOIN libro l ON lc.ISBN_libro_cliente = l.ISBN
JOIN cliente c ON lc.id_cliente = c.cedula
JOIN telefono_cliente tc ON c.cedula = tc.cedula_cliente;

-- -------------------------------------------------
-- VISTA CANTIDAD DE LIBROS VENDIDOS POR EDITORIAL
-- -------------------------------------------------
--  Esta vista proporciona una perspectiva de la cantidad de libros vendidos por cada editorial. Es útil para el análisis
-- de ventas y la toma de decisiones empresariales, ya que permite identificar rápidamente las editoriales más exitosas en 
-- términos de ventas.

CREATE VIEW VistaLibrosPorEditorial AS
SELECT l.nombre_editorial, COUNT(l.ISBN) AS cantidad_libros_vendidos
FROM libro l
JOIN libro_cliente lc ON l.ISBN = lc.ISBN_libro_cliente
GROUP BY l.nombre_editorial;