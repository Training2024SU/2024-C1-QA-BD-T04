
-- --------------------------------
-- Registro para la tabla Autor
-- --------------------------------
INSERT INTO `LibreriaBuscaLibre`.`autor` (`id`, `fecha de nacimiento`, `nacionalidad`, `nombre`)
VALUES 
('1', '1968-07-10', 'Mexico', 'Jorge Volpi '),
('2', '1975-08-20', 'España', 'María Lopez'),
('3', '1990-03-15', 'Argentina', 'Pedro Martinez'),
('4', '1950-03-07', 'Colombia', 'Laura Restrepo'),
('5', '1942-08-02', 'Chile', 'Isabel Allende'),
('6', '1927-03-06', 'Colombia', 'Gabriel Garcia Marquez');

-- --------------------------------
-- Registro para la tabla Cliente
-- --------------------------------

INSERT INTO `LibreriaBuscaLibre`.`cliente` (`cedula`, `nombre`)
VALUES 
('1003049506', 'Juanse Gomez'),
('50891234', 'Mariana Perez'),
('34987687', 'Miguel Hernandez'),
('1003047685', 'Ana Martinez'),
('10987345', 'Luisa Perez'),
('50897324', 'Carlos Sanchez'),
('1067987234', 'Laura Diaz'),
('309875670', 'Fernando Torres'),
('10916347', 'Lucia Ramirez'),
('1003046324', 'Sofia Gonzalez'),
('1068945987', 'Daniel Lopez'),
('10923485', 'Carmen Garcia'),
('34960070', 'Diego Castro'),
('1003049387', 'Ana Maria Suarez'),
('28905432', 'Jorge Fernandez'),
('50345987', 'Elena Navarro'),
('34234109', 'Roberto Morales'),
('18456890', 'Isabel Ruiz'),
('50960987', 'Adriana Jimenez'),
('1006986954', 'Raul Medina');

-- --------------------------------
-- Registro para la tabla Editorial
-- --------------------------------

INSERT INTO `LibreriaBuscaLibre`.`Editorial` (`nombre`, `ciudad`, `complemento`, `Telefono`)
VALUES 
('Editorial Norma', 'Bogotá', 'Carrera 58 # 127 - 59', '+57 3004534567'),
('Planeta Colombia', 'Bogotá', 'Calle 69A # 6 - 61', '+57 3214560987'),
('Editorial Océano de México', 'Ciudad de México', 'Av. Presidente Masaryk 61', '+5252811141'),
('Fondo de Cultura Económica', 'Ciudad de México', 'Avenida Universidad 975', '+52 55 4155 0000'),
('Siglo XXI Editores', 'Buenos Aires', 'Av. Pueyrredón 1539', '+54 11 4821-8611'),
('Sudamericana', 'Buenos Aires', 'Av. Leandro N. Alem 720', '+54 11 4319-3800'),
('Grupo Editorial Penguin Random House', 'Buenos Aires', 'Alicia M. de Justo 740', '+54 11 4309-7500');

-- --------------------------------
-- Registro para la tabla Libro
-- --------------------------------

INSERT INTO `LibreriaBuscaLibre`.`libro` (`ISBN`, `titulo`, `numero_paginas`, `nombre_editorial`)
VALUES 
('9788408150', 'La embarcacion solitaria', '432', 'Editorial Norma'),
('9786070756', 'El laberinto de los espíritus', '896', 'Planeta Colombia'),
('9786073135', 'La casa de los espíritus', '416', 'Editorial Océano de México'),
('9789500718', 'Rayuela', '666', 'Siglo XXI Editores');

-- --------------------------------
-- Registro para la tabla Libro_autor
-- --------------------------------

INSERT INTO `LibreriaBuscaLibre`.`libro_autor` (`ISBN_libro`, `id_autor`)
VALUES 
('9788408150', '1'), -- la embarcacion solitaria - Jorge Volpi
('9786070756', '1'), -- El laberinto de los espíritus - Jorge Volpi
('9786073135', '5'), -- La casa de los espíritus - Isabel Allende      
('9789500718', '3'), -- Rayuela - Pedro Martinez 
('9788408251', '6'), -- Crónica de una muerte anunciada - Gabriel García Márquez
('9786078352', '6'), -- El amor en los tiempos del cólera - Gabriel García Márquez 
('9786078453', '6'), -- Doce cuentos peregrinos - Gabriel García Márquez 
('9787907645', '5'), -- Eva Luna - Isabel Allende 
('9778094564', '5'), -- Hija de la fortuna - Isabel Allende
('9788466328', '2'); -- Bestiario - Maria lopez

-- --------------------------------
-- Registro para la tabla Libro_cliente
-- --------------------------------

INSERT INTO `LibreriaBuscaLibre`.`libro_cliente` (`ISBN_libro_cliente`, `id_cliente`)
VALUES 
('9788408251', '1003046324'), -- Cronicas de una muerte anunciada - Sofia Gonzalez
('9786070756', '1003047685'), -- El laberinto de los espíritus - Ana Martinez
('9786073135', '1006986954'), -- La casa de los espíritus - Raul Medina
('9789500718', '1067987234'), -- Rayuela - Laura Diaz
('9788408251', '28905432'), -- Crónica de una muerte anunciada - Jorge Hernandez
('9786078352', '34987687'), -- El amor en los tiempos del cólera - Miguel Hernandezz
('9786078453', '50897324'), -- Doce cuentos peregrinos - Carlos Sanchez
('9787907645', '34960070'), -- Eva Luna - Diego Castro
('9788466328', '309875670'), -- Bestiario - Fernando Torres
('9786078352', '10923485'); -- Crónica de una muerte anunciada - Carmen Garcia

-- --------------------------------
-- Registro para la tabla Telefono_cliente
-- --------------------------------

INSERT INTO `LibreriaBuscaLibre`.`telefono_cliente` (`cedula_cliente`, `numero`)
VALUES 
('10923485', '3145763458'), -- Carmen Garcia
('34987687', '3119783457'), -- Miguel Hernandez
('28905432', '3246328712'), -- Jorge Hernandez
('1003046324', '3156943723'), -- Sofia Gonzalez
('1006986954', '3023610274'), -- Raul Medina
('50897324', '3023785469'), -- Carlos Sanchez
('1067987234', '3233974634'), -- Laura Diaz
('309875670', '3135018999'), -- Fernando Torres
('34960070', '3135258285'), -- Diego Castro
('1003046324', '3134567843'), -- Sofia Gonzalez
('1003047685', '3162095489'), -- Ana Martinez
('1003047685', '3024673219'); -- Ana Martinez
