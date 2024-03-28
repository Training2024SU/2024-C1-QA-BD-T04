# Solución Taller #4 Consultas, Vistas, Procedimientos y Trigger

## Primera actividad

Modifico el script generador de la librería para que acepte números de ISBN de 13 digitos, ya que el standard se actualizó desde 2008: [about ISBN](https://www.isbn.org/about_ISBN_standard)

Script de poblado de la base de datos: [libreria_populate.sql](./libreria_populate.sql)

5 Consultas a la librería: [libreria_queries.sql](./libreria_queries.sql)

Vistas realizadas:
Las 2 vistas más relevantes para obtener de esta base de datos son las que otorgan información sobre el negocio, facilitando la toma de desiciónes. Por lo tanto realicé vistas que muestran información relacionada con las ventas y los clientes.

- Libros más vendidos en orden
- Clientes que más libros compraron en orden

Archivo [libreria_views.sql](./libreria_views.sql)

## Segunda actividad

De acuerdo al modelo relacional del hospital, realizo la definición de la base de datos en sql: [hospital_schema.sql](./hospital_schema.sql)

Script de poblado de la db hospital: [hospital_populate.sql](./hospital_populate.sql)
