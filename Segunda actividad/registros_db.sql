
INSERT INTO Medicos VALUES 
    (101, 'Luis', 'Pérez', 'Dermatología'),
	(102, 'Elena', 'Gómez', 'Gastroenterología'),
	(103, 'Alejandro', 'Fernández', 'Endocrinología'),
	(104, 'Sofía', 'Díaz', 'Urología'),
	(105, 'Laura', 'Ruiz', 'Ortopedia');
    
INSERT INTO Medicamentos VALUES 
    (201, 'Aspirina', '100 mg'),
	(202, 'Cefalexina', '500 mg'),
	(203, 'Loratadina', '10 mg'),
	(204, 'Pantoprazol', '40 mg'),
	(205, 'Losartán', '50 mg');

INSERT INTO Procedimientos VALUES 
    (301, 'Cirugía de Emergencia'),
	(302, 'Endoscopia Digestiva'),
	(303, 'Angioplastia Coronaria'),
	(304, 'Colonoscopia'),
	(305, 'Cirugía Laparoscópica');

-- tablas con llaves foraneas
INSERT INTO Pacientes VALUES 
    (401, 'María', 'González', 'Calle 123', 301),
	(402, 'Juan', 'Martínez', 'Avenida 456', 302),
	(403, 'Ana', 'López', 'Calle Principal', 303),
	(404, 'Carlos', 'Rodríguez', 'Avenida Central', 304),
	(405, 'Laura', 'Fernández', 'Calle 789', 305);

INSERT INTO Enfermeros VALUES 
    (501, 'Pedro', 'Sánchez', 101),
	(502, 'María', 'Ramírez', 102),
	(503, 'José', 'Gómez', 103),
	(504, 'Laura', 'Pérez', 104),
	(505, 'Ana', 'Martín', 105);

INSERT INTO Facturas VALUES 
    (601, '2024-03-01', 150.00, 401),
	(602, '2024-03-02', 200.50, 402),
	(603, '2024-03-03', 180.25, 403),
	(604, '2024-03-04', 220.75, 404),
	(605, '2024-03-05', 190.30, 405);

-- tablas de telefonos
INSERT INTO telefono_medicos VALUES 
    (101, '1234567890'),
	(102, '9876543210'),
	(103, '4567891230'),
	(104, '0123456789'),
	(105, '9876543210');

INSERT INTO telefono_paciente VALUES 
    (401, '1111111111'),
	(402, '2222222222'),
	(403, '3333333333'),
	(404, '4444444444'),
	(405, '5555555555');

INSERT INTO telefono_enfermeros VALUES 
	(501, '1111111111'),
	(502, '2222222222'),
	(503, '3333333333'),
	(504, '4444444444'),
	(505, '5555555555');
    
-- tabla medico con procedimiento

INSERT INTO medico_procedimiento VALUES 
    (101, 301),
	(102, 302),
	(103, 303),
	(104, 304),
	(105, 305);
    
-- tabla paciente con medicamento
INSERT INTO paciente_medicamento VALUES 
   (401, 201),
	(402, 202),
	(403, 203),
	(404, 204),
	(405, 205);