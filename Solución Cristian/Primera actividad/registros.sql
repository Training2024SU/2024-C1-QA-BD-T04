INSERT INTO `LibreriaBuscaLibre`.`autor` (`id`, `fecha de nacimiento`, `nacionalidad`, `nombre`) VALUES
('A101', '1980-02-15', 'Española', 'Juan Pérez'),
('A102', '1975-07-20', 'Mexicana', 'María García'),
('A103', '1990-05-10', 'Argentina', 'Carlos López'),
('A104', '1988-11-30', 'Colombiana', 'Ana Martínez'),
('A105', '1982-09-25', 'Chilena', 'Pedro Gómez');

INSERT INTO `LibreriaBuscaLibre`.`Editorial` (`nombre`, `ciudad`, `complemento`, `Telefono`) VALUES
('Editorial ABC', 'Madrid', 'Calle Mayor 123', '6013909541'),
('Editorial DEF', 'Barcelona', 'Avenida Diagonal 456', '6013909541'),
('Editorial GHI', 'Buenos Aires', 'Calle Florida 789', '6013909541'),
('Editorial JKL', 'Ciudad de México', 'Paseo de la Reforma 1011', '6013909541');

INSERT INTO `LibreriaBuscaLibre`.`libro` (`ISBN`, `titulo`, `numero_paginas`, `nombre_editorial`) VALUES
('ISBN1001', 'Libro de Aventuras', '200', 'Editorial ABC'),
('ISBN1002', 'Historia de Amor', '180', 'Editorial DEF'),
('ISBN1003', 'Ciencia Ficción', '250', 'Editorial DEF'),
('ISBN1004', 'Biografía de un Líder', '300', 'Editorial GHI'),
('ISBN1005', 'Novela Policial', '220', 'Editorial JKL'),
('ISBN1006', 'Cuentos Infantiles', '120', 'Editorial JKL'),
('ISBN1007', 'Historia Real', '280', 'Editorial GHI'),
('ISBN1008', 'Fantasía Épica', '350', 'Editorial DEF'),
('ISBN1009', 'Drama Profundo', '190', 'Editorial ABC'),
('ISBN1010', 'Aventuras en el Espacio', '240', 'Editorial ABC'),
('ISBN1011', 'Novela Histórica', '270', 'Editorial DEF'),
('ISBN1012', 'Misterio en la Montaña', '180', 'Editorial GHI'),
('ISBN1013', 'Poesía Moderna', '160', 'Editorial JKL'),
('ISBN1014', 'Ciencia y Tecnología', '220', 'Editorial JKL'),
('ISBN1015', 'Historias de Amistad', '190', 'Editorial GHI'),
('ISBN1016', 'Fábulas y Leyendas', '210', 'Editorial DEF'),
('ISBN1017', 'Viajes por el Mundo', '260', 'Editorial ABC'),
('ISBN1018', 'Aventuras Submarinas', '230', 'Editorial ABC'),
('ISBN1019', 'Amores Prohibidos', '280', 'Editorial DEF'),
('ISBN1020', 'Romance en París', '200', 'Editorial DEF');

INSERT INTO `LibreriaBuscaLibre`.`cliente` (`cedula`, `nombre`) VALUES
('C1001', 'Laura Pérez'),
('C1002', 'Roberto Gómez'),
('C1003', 'Sofía Martínez'),
('C1004', 'Javier López'),
('C1005', 'Elena García'),
('C1006', 'Carlos Ramírez'),
('C1007', 'Ana Ruiz');

INSERT INTO `LibreriaBuscaLibre`.`libro_autor` (`ISBN_libro`, `id_autor`) VALUES
('ISBN1001', 'A101'),
('ISBN1002', 'A102'),
('ISBN1003', 'A103'),
('ISBN1003', 'A104'),
('ISBN1004', 'A105'),
('ISBN1005', 'A101'),
('ISBN1005', 'A102'),
('ISBN1006', 'A103'),
('ISBN1007', 'A104'),
('ISBN1008', 'A105');

INSERT INTO `LibreriaBuscaLibre`.`libro_cliente` (`ISBN_libro_cliente`, `id_cliente`) VALUES
('ISBN1001', 'C1001'),
('ISBN1002', 'C1002'),
('ISBN1003', 'C1003'),
('ISBN1004', 'C1004'),
('ISBN1005', 'C1005'),
('ISBN1006', 'C1006'),
('ISBN1007', 'C1007'),
('ISBN1002', 'C1001'),
('ISBN1003', 'C1002'),
('ISBN1014', 'C1003');

INSERT INTO `LibreriaBuscaLibre`.`telefono_cliente` (`cedula_cliente`, `numero`) VALUES
('C1001', '555-1234'),
('C1001', '555-5678'),
('C1002', '555-9876'),
('C1003', '555-5432'),
('C1003', '555-8765'),
('C1004', '555-3456'),
('C1005', '555-8901'),
('C1005', '555-2345'),
('C1006', '555-6789'),
('C1007', '555-4321'),
('C1007', '555-0123'),
('C1007', '555-7890');
