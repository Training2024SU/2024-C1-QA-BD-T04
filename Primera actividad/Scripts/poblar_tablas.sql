
USE `LibreriaBuscaLibre`;

-- Insert data into Editorial table
INSERT INTO `Editorial` (`nombre`, `ciudad`, `complemento`, `Telefono`) 
VALUES ('Villa', 'Bogota', 'villa del rio', '1234567890'),
	   ('Cain', 'Medellin', 'Cain de medallo', '5734567810'),
       ('Bosque', 'Cali', 'Bosque de rosas', '001254212'),
       ('Calle seca', 'Bogota', '', '122354811');

-- Insert data into libro table
INSERT INTO `libro` (`ISBN`, `titulo`, `numero_paginas`, `nombre_editorial`) 
VALUES ('ISBN1', 'Libro1', '100', 'Villa'),
	   ('ISBN2', 'Libro2', '122', 'Cain'),
       ('ISBN3', 'Libro3', '110', 'Bosque'),
       ('ISBN4', 'Libro4', '100', 'Calle seca'),
       ('ISBN5', 'Libro5', '1000', 'Cain'),
       ('ISBN6', 'Libro6', '1210', 'Villa'),
       ('ISBN7', 'Libro7', '50', 'Cain'),
       ('ISBN8', 'Libro8', '90', 'Bosque'),
       ('ISBN9', 'Libro9', '125', 'Calle seca'),
       ('ISBN10', 'Libro10', '166', 'Villa'),
       ('ISBN11', 'Libro11', '666', 'Villa'),
       ('ISBN12', 'Libro12', '174', 'Cain'),
       ('ISBN13', 'Libro13', '356', 'Cain'),
       ('ISBN14', 'Libro14', '922', 'Bosque'),
       ('ISBN15', 'Libro15', '522', 'Bosque'),
       ('ISBN16', 'Libro16', '322', 'Bosque'),
       ('ISBN17', 'Libro17', '222', 'Calle seca'),
       ('ISBN18', 'Libro18', '142', 'Calle seca'),
       ('ISBN19', 'Libro19', '120', 'Cain'),
       ('ISBN20', 'Libro20', '250', 'Cain');

-- Insert data into cliente table
INSERT INTO `cliente` (`cedula`, `nombre`) 
VALUES ('1234567890', 'Javier francisco'),
       ('1234567820', 'David Gomez'),
       ('1231548521', 'Mateo Sierra'),
       ('3301384121', 'Camilo Pacho'),
       ('2214522655', 'Felipe Russi'),
       ('0033366888', 'Mike Villarreal'),
       ('0987651231', 'Saul Sandman');

-- Insert data into autor table
INSERT INTO `autor` (`id`, `fecha de nacimiento`, `nacionalidad`, `nombre`) 
VALUES  ('1', '1999-01-01', 'Colombiano', 'Johan Cifuentes'),
		('2', '1993-10-15', 'Peruano', 'Jorge Rodriguez'),	
        ('3', '2001-01-09', 'Colombiano', 'David Gomez'),
        ('4', '2000-10-11', 'Ingles', 'David White'),
        ('5', '1980-01-01', 'Americano', 'Allan Walker');

-- Insert data into libro_autor table
INSERT INTO `libro_autor` (`ISBN_libro`, `id_autor`) 
VALUES ('ISBN1', '1'),
       ('ISBN2', '2'),
       ('ISBN3', '3'),
       ('ISBN4', '4'),
       ('ISBN5', '5'),
       ('ISBN6', '1'),
       ('ISBN7', '2'),
       ('ISBN8', '3'),
       ('ISBN9', '4'),
       ('ISBN10', '5');

-- Insert data into libro_cliente table
INSERT INTO `libro_cliente` (`ISBN_libro_cliente`, `id_cliente`) 
VALUES ('ISBN1', '1234567890'),
       ('ISBN2', '1234567820'),
       ('ISBN3', '1231548521'),
       ('ISBN4', '3301384121'),
       ('ISBN5', '2214522655'),
       ('ISBN6', '0033366888'),
       ('ISBN7', '0987651231'),
       ('ISBN8', '1234567890'),
       ('ISBN9', '1234567820'),
       ('ISBN10', '1231548521');

-- Insert data into telefono_cliente table
INSERT INTO `telefono_cliente` (`cedula_cliente`, `numero`) 
VALUES ('1234567890', '1234567890'),
       ('1234567820', '0987654321'),
       ('1231548521', '1122334455'),
       ('3301384121', '9876543210'),
       ('2214522655', '5432167890'),
       ('0033366888', '0987654321'),
       ('0987651231', '1234567890'),
       ('1234567890', '9876543210'),
       ('1234567820', '1122334455'),
       ('1231548521', '5432167890');
