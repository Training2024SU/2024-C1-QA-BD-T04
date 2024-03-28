USE `LibreriaBuscaLibre` ;

INSERT INTO Editorial VALUES 
    ('Penguin Random House', 'Nueva York', '123 Main St', '1234567890'),
    ('Vintage Books', 'Londres', '456 High St', '9876543210'),
    ('HarperCollins', 'Londres', '789 Park Ave', '5678901234'),
    ('Penguin Books', 'Londres', '321 Oxford St', '4567890123'),
    ('Círculo de Lectores', 'Barcelona', 'Calle Mayor 123', '+34-93-456-7890');

INSERT INTO libro VALUES 
    ('9780140275410', 'Cien años de soledad', '432', 'Penguin Random House'),
    ('9780099448822', 'Tokio Blues', '298', 'Vintage Books'),
    ('9780061122415', 'To Kill a Mockingbird', '336', 'HarperCollins'),
    ('9780307476463', 'The Girl with the Dragon Tattoo', '672', 'Penguin Books'),
    ('9780141182801', '1984', '336', 'Penguin Random House'),
    ('9780062024022', 'The Great Gatsby', '180', 'Vintage Books'),
    ('9780345803508', 'The Catcher in the Rye', '277', 'HarperCollins'),
    ('9780451524935', 'The Lord of the Rings', '1178', 'Penguin Books'),
    ('9780140449334', 'Don Quixote', '1056', 'Penguin Random House'),
    ('9780743273565', 'To Kill a Mockingbird', '336', 'Vintage Books'),
    ('9780735219090', 'Becoming', '448', 'Penguin Random House'),
    ('9780525555373', 'Educated', '352', 'Vintage Books'),
    ('9780735219091', 'Where the Crawdads Sing', '384', 'HarperCollins'),
    ('9780735219092', 'Little Fires Everywhere', '352', 'Penguin Books'),
    ('9780735219093', 'The Silent Patient', '336', 'Penguin Random House'),
    ('9780735219094', 'Before We Were Yours', '352', 'Vintage Books'),
    ('9780735219095', 'The Nightingale', '608', 'HarperCollins'),
    ('9780735219096', 'The Tattooist of Auschwitz', '288', 'Penguin Books'),
    ('9780735219097', 'The Alice Network', '528', 'Penguin Random House'),
    ('9780735219098', 'The Giver of Stars', '400', 'Vintage Books'),
    ('9788408208748', 'Cien años de soledad', '432', 'Penguin Random House'),
    ('9788497593691', 'El amor en los tiempos del cólera', '368', 'Vintage Books'),
    ('9788420489262', 'Crónica de una muerte anunciada', '128', 'HarperCollins'),
    ('9788432211624', 'El general en su laberinto', '368', 'Penguin Books'),
    ('9788497592434', 'Del amor y otros demonios', '288', 'Vintage Books'),
    ('9788497592595', 'El otoño del patriarca', '384', 'HarperCollins'),
    ('9788497592250', 'Noticia de un secuestro', '368', 'Penguin Books'),
    ('9788420488135', 'La hojarasca', '112', 'Penguin Random House'),
    ('9788497592205', 'Doce cuentos peregrinos', '208', 'Vintage Books');

INSERT INTO autor VALUES 
    ('1234567890', '1947-09-21', 'Colombiana', 'Gabriel García Márquez'),
    ('2345678901', '1954-01-12', 'Japonesa', 'Haruki Murakami'),
    ('3456789012', '1926-04-28', 'Estadounidense', 'Harper Lee'),
    ('4567890123', '1962-03-30', 'Sueca', 'Stieg Larsson');

INSERT INTO cliente VALUES 
    ('1234567890', 'Juan Pérez'),
    ('2345678901', 'María González'),
    ('3456789012', 'Carlos López'),
    ('4567890123', 'Ana Martínez'),
    ('5678901234', 'David Rodríguez'),
    ('6789012345', 'Laura Sánchez'),
    ('7890123456', 'Javier Ramírez');

-- Agregar telefonos de clientes
INSERT INTO telefono_cliente VALUES 
    ('1234567890', '+1-555-201-4567'),
    ('2345678901', '+1-555-789-1234'),
    ('3456789012', '+1-555-345-6789'),
    ('4567890123', '+1-555-890-2345'),
    ('5678901234', '+1-555-456-7890'),
    ('6789012345', '+1-555-123-5678'),
    ('7890123456', '+1-555-234-9012'),
    ('1234567890', '+1-555-789-3456'),
    ('2345678901', '+1-555-456-6789'),
    ('3456789012', '+1-555-890-1234'),
    ('2345678901', '+1-555-567-8901'),
    ('3456789012', '+1-555-201-2345');

-- Relacionar libros y autores
INSERT INTO libro_autor VALUES 
    ('9780140275410', '1234567890'),
    ('9780099448822', '2345678901'),
    ('9780061122415', '3456789012'),
    ('9780307476463', '4567890123'),
    ('9780141182801', '1234567890'),
    ('9780140449334', '2345678901'),
    ('9780743273565', '3456789012'),
    ('9780062024022', '1234567890'),
    ('9780345803508', '2345678901'),
    ('9780140275410', '3456789012');

-- Relacionar libros comprados por clientes
INSERT INTO libro_cliente VALUES 
    ('9780140275410', '1234567890'),
    ('9780099448822', '2345678901'),
    ('9780061122415', '3456789012'),
    ('9780307476463', '4567890123'),
    ('9780141182801', '5678901234'),
    ('9780062024022', '6789012345'),
    ('9780345803508', '7890123456'),
    ('9780451524935', '1234567890'),
    ('9780140275410', '3456789012'),
    ('9780743273565', '3456789012');
