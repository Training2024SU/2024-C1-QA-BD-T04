-- nombre y fecha de nacimiento de cada escritor
select nombre, fecha_nacimiento from autor;

-- Cantidad de libros diferentes vendidos
select count(distinct(ISBN_libro_cliente)) from libro_cliente;

-- nombre de cliente del libro acompañado de numero telefonico
select cliente.nombre, telefono_cliente.numero 
from cliente 
inner join telefono_cliente on cliente.cedula = telefono_cliente.cedula_cliente;

-- nombre de libro acompañado por su autor o sus autores
select libro.titulo, autor.nombre
from libro 
join libro_autor on libro.ISBN = libro_autor.ISBN_libro
join autor on autor.id = libro_autor.id_autor;


-- nombre de las editoriales que hayan logrado vender libros
select distinct editorial.nombre from editorial
join libro on libro.nombre_editorial = editorial.nombre
join libro_cliente on libro_cliente.ISBN_libro_cliente = libro.ISBN;



