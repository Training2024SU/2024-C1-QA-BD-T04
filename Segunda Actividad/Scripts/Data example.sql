-- Insertar diez registros en la tabla Medico
INSERT INTO Medico (NombreMedico, ApellidoMedico, Especialidad) VALUES
('Dr. Juan', 'Pérez', 'Cardiología'),
('Dra. María', 'González', 'Pediatría'),
('Dr. Carlos', 'Martínez', 'Cirugía General'),
('Dra. Laura', 'López', 'Dermatología'),
('Dr. Pablo', 'Rodríguez', 'Neurología'),
('Dr. Miguel', 'Sánchez', 'Oftalmología'),
('Dra. Ana', 'Fernández', 'Ginecología'),
('Dr. Luis', 'Hernández', 'Urología'),
('Dra. Sofía', 'Díaz', 'Endocrinología'),
('Dr. Diego', 'Romero', 'Ortopedia');

-- Insertar diez registros en la tabla Enfermero
INSERT INTO Enfermero (NombreEnfermero, ApellidoEnfermero, IdMedico) VALUES
('Ana', 'Martínez', 1),
('Luis', 'Gómez', 2),
('Sofía', 'Hernández', 3),
('Diego', 'Pérez', 4),
('Elena', 'Sánchez', 5),
('Carlos', 'Rodríguez', 6),
('Laura', 'López', 7),
('Juan', 'García', 8),
('María', 'González', 9),
('Pedro', 'Martínez', 10);

-- Insertar diez registros en la tabla Procedimiento
INSERT INTO Procedimiento (TipoProcedimiento) VALUES
('Cirugía de corazón'),
('Vacunación'),
('Extracción de apéndice'),
('Dermabrasión'),
('Electroencefalograma'),
('Colonoscopia'),
('Artroscopia'),
('Tratamiento de quimioterapia'),
('Resonancia magnética'),
('Endoscopia');

-- Insertar diez registros en la tabla Paciente
INSERT INTO Paciente (NombrePaciente, ApellidoPaciente, Direccion, IdProcedimiento) VALUES
('María', 'López', 'Calle 123', 1),
('Juan', 'García', 'Avenida 456', 2),
('Ana', 'Martínez', 'Calle Principal', 3),
('Pedro', 'Sánchez', 'Avenida Central', 4),
('Laura', 'Hernández', 'Calle Secundaria', 5),
('Luis', 'Gómez', 'Avenida 789', 6),
('Sofía', 'Díaz', 'Calle 456', 7),
('Diego', 'Pérez', 'Avenida 012', 8),
('Elena', 'González', 'Calle 789', 9),
('Carlos', 'Martínez', 'Avenida 345', 10);


-- Modificar la definición de la tabla Factura para cambiar el tamaño del tipo de datos DECIMAL
ALTER TABLE Factura
MODIFY COLUMN Precio DECIMAL(10, 2);
-- Insertar diez registros en la tabla Factura
INSERT INTO Factura (Fecha, Precio, IdPaciente) VALUES
('2024-03-01', 100.0, 1),
('2024-03-02', 75.2, 2),
('2024-03-03', 200.0, 3),
('2024-03-04', 150.7, 4),
('2024-03-05', 80.0, 5),
('2024-03-06', 125.5, 6),
('2024-03-07', 90.7, 7),
('2024-03-08', 180.0, 8),
('2024-03-09', 95.2, 9),
('2024-03-10', 110.0, 10);



