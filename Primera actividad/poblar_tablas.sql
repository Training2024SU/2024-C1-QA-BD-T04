USE `LibreriaBuscaLibre`;

INSERT INTO Editorial
VALUES ('Anagrama', 'Barcelona', 'Calle Bailén', '12345678910'),
	   ('Gallimard', 'Paris', '5 rue Sébastien Bottin', '9874563217'),
       ('Viking', 'New york', '375 Hudson St', '1223334444'),
       ('Santillana', 'Madrid', ' Calle de Juan Ignacio', '321456987');
       
INSERT INTO libro VALUES
('ISBN1', 'Los detectives salvajes', 640, 'Anagrama'),
('ISBN2', '2666', 912, 'Anagrama'),
('ISBN3', 'Rayuela', 656, 'Gallimard'),
('ISBN4', 'Cien años de soledad', 432, 'Gallimard'),
('ISBN5', 'Moby Dick', 720, 'Viking'),
('ISBN6', 'La Odisea', 432, 'Viking'),
('ISBN7', 'Don Quijote de la Mancha', 1056, 'Santillana'),
('ISBN8', 'El Aleph', 224, 'Santillana'),
('ISBN9', 'La ciudad y los perros', 496, 'Anagrama'),
('ISBN10', 'La casa de los espíritus', 496, 'Anagrama'),
('ISBN11', 'En busca del tiempo perdido', 4215, 'Gallimard'),
('ISBN12', 'El extranjero', 160, 'Gallimard'),
('ISBN13', 'La saga/fuga de J. B.', 672, 'Viking'),
('ISBN14', 'El corazón es un cazador solitario', 400, 'Viking'),
('ISBN15', 'Crónica de una muerte anunciada', 128, 'Santillana'),
('ISBN16', 'Cien años de soledad', 432, 'Santillana'),
('ISBN17', 'La insoportable levedad del ser', 352, 'Anagrama'),
('ISBN18', 'El amor en los tiempos del cólera', 512, 'Anagrama'),
('ISBN19', 'Rayuela', 656, 'Gallimard'),
('ISBN20', '2666', 912, 'Gallimard');

INSERT INTO autor VALUES
(1, '1927-03-06', 'Colombiano', 'Gabriel García Márquez'),
(2, '1953-02-28', 'Estadounidense', 'Paul Auster'),
(3, '1942-07-28', 'Chileno', 'Roberto Bolaño'),
(4, '1937-06-28', 'Argentino', 'Juan José Saer'),
(5, '1926-10-15', 'Francesa', 'Michel Foucault');

INSERT INTO cliente VALUES
('123456789', 'Juan Pérez'),
('987654321', 'María Rodríguez'),
('456123789', 'Luis García'),
('789123456', 'Ana Martínez'),
('321654987', 'Pedro López'),
('456789123', 'Laura González'),
('987321654', 'Carlos Ramírez');

INSERT INTO libro_autor VALUES
('ISBN1', 1),
('ISBN2', 2),
('ISBN3', 3),
('ISBN4', 4),
('ISBN5', 5),
('ISBN6', 1),
('ISBN7', 2),
('ISBN8', 3),
('ISBN9', 4),
('ISBN10', 5);

INSERT INTO libro_cliente VALUES
('ISBN1', 123456789),
('ISBN8', 123456789),
('ISBN5', 321654987),
('ISBN10', 456123789),
('ISBN3', 456123789),
('ISBN6', 456789123),
('ISBN4', 789123456),
('ISBN7', 987321654),
('ISBN2', 987654321),
('ISBN9', 987654321);

INSERT INTO telefono_cliente VALUES
('123456789', '+1234567890'),
('123456789', '+9876543210'),
('987654321', '+1111111111'),
('987654321', '+2222222222'),
('456123789', '+3333333333'),
('456123789', '+4444444444'),
('789123456', '+5555555555'),
('789123456', '+6666666666'),
('321654987', '+7777777777'),
('321654987', '+8888888888'),
('456789123', '+9999999999'),
('456789123', '+0000000000');










