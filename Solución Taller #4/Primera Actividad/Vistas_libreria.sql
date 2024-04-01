-- Vista "libros_vendidos"
CREATE VIEW libros_vendidos AS
select libro.titulo as 'libros_vendidos', count(*) as 'cantidad_vendidos' from libro
join libro_cliente on libro.ISBN = libro_cliente.ISBN_libro_cliente
group by(libro_cliente.ISBN_libro_cliente)
order by(cantidad_vendidos) desc;

-- Vista "clientes_compradores"

CREATE VIEW clientes_compradores as
select cliente.nombre, group_concat(telefono_cliente.numero separator ', ') as 'telefonos' , count(libro_cliente.ISBN_libro_cliente) as 'cantidad_libros_comprados'
from cliente
join libro_cliente on cliente.cedula = libro_cliente.id_cliente
join telefono_cliente on cliente.cedula = telefono_cliente.cedula_cliente
group by cliente.nombre
order by cantidad_libros_comprados desc;
