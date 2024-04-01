--Poblar Tabla "libro_autor" con 10 registros

INSERT INTO libreriabuscalibre.libro_autor (ISBN_libro, id_autor) 
VALUES 
  ('978-1400034956', 'ID001'), 
  ('978-1501142970', 'ID003'), 
  ('978-8401352327', 'ID004'), 
  ('978-8423346607', 'ID004'), 
  ('978-8432210295', 'ID003'), 
  ('978-8435018629', 'ID003'), 
  ('978-8437619301', 'ID003'), 
  ('978-8439915007', 'ID003'),
  ('978-8471668971', 'ID002'), 
  ('978-8499894141', 'ID004'); 


--Poblar Tabla "cliente" con 5 registros
INSERT INTO libreriabuscalibre.autor (id, fecha_nacimiento, nacionalidad, nombre)
VALUES 
  ('ID001', '1927-03-06', 'Mexicano', 'Gabriel Garcia Marquez'),
  ('ID002', '1899-07-21', 'Estadounidense', 'Ernest Hemingway'),
  ('ID003', '1947-09-21', 'Estadounidense', 'Stephen King'),
  ('ID004', '1947-08-24', 'Brasileño', 'Paulo Coelho'),
  ('ID005', '1809-01-19', 'Estadounidense', 'Edgar Allan Poe');


--Poblar Tabla "cliente" con 7 registros
INSERT INTO libreriabuscalibre.cliente (cedula, nombre) 
VALUES 
  ('32567876', 'Leidy Laura Martinez Restrepo'),
  ('1017543567', 'Paula Andrea Cordoba Sanchez'),
  ('1077653789', 'Pablo Emilio Castillo'),
  ('32456765', 'Sara Caicedo'),
  ('1077654321', 'José Lopez'),
  ('4567890', 'Pedro Gonzalez'),
  ('1011654321', 'Gissela Moreno');

--Poblar Tabla "cliente" con 4 registros
INSERT INTO libreriabuscalibre.editorial (nombre, ciudad, complemento, Telefono) 
VALUES 
  ('Gato Malo', 'Bogotá', 'Calle 7 1 84', '672345678'),
  ('Planeta', 'Cali', 'Carrera 3 7 1', '3234567898'),
  ('Babel Libros', 'Bogotá', 'Calle 23 56 78', '3008765443'),
  ('Siruela', 'Madrid', 'c/ Almagro 25. 28010', '+34 913555720');

--Poblar Tabla "libro" con 20 registros

INSERT INTO libreriabuscalibre.libro (ISBN, titulo, numero_paginas, nombre_editorial) 
VALUES 
  ('978-0307474728', 'Cien años de soledad', '448', 'Gato Malo'),
  ('978-0307389731', 'El amor en los tiempos del cólera', '368', 'Gato Malo'),
  ('978-1400034956', 'Crónica de una muerte anunciada', '128', 'Gato Malo'),
  ('978-0670813025', 'El otoño del patriarca', '272', 'Gato Malo'), -- Corregido el ISBN
  ('978-1400033956', 'La hojarasca', '128', 'Gato Malo'),
  ('978-8471668971', 'El viejo y el mar', '128', 'Planeta'),
  ('978-8439915007', 'Adiós a las armas', '336', 'Planeta'),
  ('978-8437619301', 'Por quién doblan las campanas', '576', 'Planeta'),
  ('978-8499894141', 'Fiesta', '352', 'Planeta'),
  ('978-8435018629', 'París era una fiesta', '272', 'Planeta'),
  ('978-1501142970', 'It', '1138', 'Babel Libros'),
  ('978-8432210295', 'El resplandor', '672', 'Babel Libros'),
  ('978-8423346607', 'Cementerio de animales', '456', 'Babel Libros'),
  ('978-0451169525', 'Misery', '368', 'Babel Libros'),
  ('978-8401352327', 'Carrie', '304', 'Babel Libros'),
  ('978-0062315007', 'El alquimista', '208', 'Siruela'),
  ('978-0062502179', 'Brida', '240', 'Siruela'),
  ('978-0060589288', 'Once minutos', '320', 'Siruela'),
  ('978-0061124266', 'Veronika decide morir', '240', 'Siruela'),
  ('978-0062512796', 'El peregrino de Compostela', '208', 'Siruela');


--Poblar Tabla "libro_cliente" con 10 registros
INSERT INTO libreriabuscalibre.libro_cliente (ISBN_libro_cliente, id_cliente) 
VALUES 
  ('978-0307474728', '1011654321'),
  ('978-0307389731', '1017543567'),
  ('978-1400034956', '1077653789'),
  ('978-0670813025', '1077654321'),
  ('978-1400034956', '32456765'),
  ('978-8471668971', '32567876'),
  ('978-8439915007', '4567890'),
  ('978-8437619301', '1011654321'),
  ('978-8499894141', '1017543567'),
  ('978-8435018629', '1077653789');

--Poblar Tabla "telefono_cliente" con 12 registros
INSERT INTO libreriabuscalibre.telefono_cliente (cedula_cliente, numero) 
VALUES 
  ('1011654321', '3101234567'),
  ('1017543567', '3122345678'),
  ('1077653789', '3143456789'),
  ('1077654321', '3154567890'),
  ('32456765', '3205678901'),
  ('32567876', '3186789012'),
  ('1011654321', '3001122334'),
  ('1017543567', '3012233445'),
  ('1077653789', '3023344556'),
  ('1077654321', '3034455667'),
  ('32456765', '3045566778'),
  ('32567876', '3056677889');
