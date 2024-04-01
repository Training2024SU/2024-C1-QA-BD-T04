USE libreriabuscalibre;

-- 5 Registros tabla autor
INSERT INTO LibreriaBuscaLibre.autor (id, `fecha de nacimiento`, nacionalidad, nombre)
VALUES
('A00001', '1965-03-04', 'Colombiano', 'Gabriel Garcia Marquez'),
('A00002', '1977-07-15', 'Estadounidense', 'Og Mandino'),
('A00003', '1988-11-11', 'Colombiano', 'Camilo Cruz'),
('A00004', '1954-02-28', 'Estadounidense', 'Jim Rohn'),
('A00005', '1999-06-15', 'Británica', 'John Gray');

-- 4 Registros en la tabla editorial
INSERT INTO LibreriaBuscaLibre.editorial (nombre, ciudad, complemento, Telefono)
VALUES
('Editorial Sudamericana', 'Bogotá', 'Edificio Centenario, Piso 10', '+57 1 1234567'),
('Editorial Oveja Negra', 'Medellín', 'Torre Empresarial, Oficina 302', '+57 4 7654321'),
('Editorial Colombiana', 'Barranquilla', 'Local 203, Centro Comercial El Prado', '+57 5 9876543'),
('Editorial Norma', 'Cali', 'Calle 23 # 45-67, Apartamento 201', '+57 2 2345678');

-- 20 Registros en la tabla libro
INSERT INTO LibreriaBuscaLibre.libro (ISBN, titulo, numero_paginas, nombre_editorial) 
VALUES 
('9781234001', 'Cien años de soledad', '432', 'Editorial Sudamericana'),
('9781234002', 'El amor en los tiempos del cólera', '368', 'Editorial Oveja Negra'),
('9781234003', 'El Secreto del Bosque Encantado', '320', 'Editorial Oveja Negra'),
('9781234004', 'Aventuras en el Espacio Profundo', '256', 'Editorial Oveja Negra'),
('9781234005', 'El Misterio de la Isla Perdida', '400', 'Editorial Sudamericana'),
('9781234006', 'La vorágine', '320', 'Editorial Colombiana'),
('9781234007', 'Del amor y otros demonios', '288', 'Editorial Oveja Negra'),
('9781234008', 'El coronel no tiene quien le escriba', '304', 'Editorial Oveja Negra'),
('9781234009', 'La Espada del Destino', '432', 'Editorial Sudamericana'),
('9781234010', 'Sueños de Medianoche', '288', 'Editorial Sudamericana'),
('9781234011', 'Memoria de mis putas tristes', '304', 'Editorial Oveja Negra'),
('9781234012', 'El Secreto del Alquimista', '368', 'Editorial Sudamericana'),
('9781234013', 'La Última Profecía', '304', 'Editorial Sudamericana'),
('9781234014', 'Viaje al Centro de la Tierra', '360', 'Editorial Sudamericana'),
('9781234015', 'Secretos del Antiguo Egipto', '416', 'Editorial Sudamericana'),
('9781234016', 'Atrapados en el Tiempo', '344', 'Editorial Oveja Negra'),
('9781234017', 'Noticia de un secuestro', '336', 'Editorial Norma'),
('9781234018', 'Los relatos de la peregrina', '352', 'Editorial Norma'),
('9781234019', 'Los sordos en la batalla', '376', 'Editorial Norma'),
('9781234020', 'La increíble historia de Eréndira', '192', 'Editorial Norma');

-- 7 Registros en la tabla cliente
INSERT INTO LibreriaBuscaLibre.cliente (cedula, nombre)
VALUES
('8350806', 'Pepito Perez'),
('21526358', 'María Marin'),
('32569854', 'Juan Orozco'),
('42596874', 'María González'),
('43582145', 'Carlos Rodríguez'),
('70658952', 'Mario Ponce'),
('98624895', 'Luisa López');

-- 12 Registros en la tabla telefono_cliente
INSERT INTO LibreriaBuscaLibre.telefono_cliente (cedula_cliente, numero)
VALUES
('8350806', '3014789621'),
('8350806', '6044975863'),
('21526358', '3024789621'),
('21526358', '6014975863'),
('32569854', '3044789621'),
('32569854', '6024975863'),
('42596874', '3054789621'),
('42596874', '6054975863'),
('43582145', '3104789621'),
('70658952', '3114789621'),
('70658952', '6064975863'),
('98624895', '3034789621');

-- 10 Registros en la tabla libro_cliente
INSERT INTO LibreriaBuscaLibre.libro_cliente (ISBN_libro_cliente, id_cliente)
VALUES
('9781234001', '8350806'),
('9781234012', '8350806'),
('9781234003', '21526358'),
('9781234014', '21526358'),
('9781234020', '32569854'),
('9781234015', '32569854'),
('9781234004', '42596874'),
('9781234011', '42596874'),
('9781234017', '43582145'),
('9781234008', '70658952');

-- 10 Registros en la tabla libro_autor
INSERT INTO LibreriaBuscaLibre.libro_autor (ISBN_libro, id_autor)
VALUES
('9781234001', 'A00001'),
('9781234012', 'A00002'),
('9781234003', 'A00003'),
('9781234014', 'A00003'),
('9781234020', 'A00001'),
('9781234015', 'A00002'),
('9781234004', 'A00003'),
('9781234011', 'A00004'),
('9781234017', 'A00001'),
('9781234008', 'A00002');
