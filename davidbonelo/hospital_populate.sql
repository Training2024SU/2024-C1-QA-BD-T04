-- Agregar registros en tablas independientes
INSERT INTO Medicos VALUES 
    (101, 'Juan', 'García', 'Cirugía'),
    (102, 'María', 'López', 'Pediatría'),
    (103, 'Carlos', 'Martínez', 'Cardiología'),
    (104, 'Luisa', 'Pérez', 'Dermatología'),
    (105, 'Andrés', 'Sánchez', 'Neurología');

INSERT INTO Procedimientos VALUES 
    (201, 'Cirugía de emergencia'),
    (202, 'Consulta general'),
    (203, 'Extracción de sangre'),
    (204, 'Resonancia magnética'),
    (205, 'Endoscopia');

INSERT INTO Medicamentos VALUES 
    (301, 'Paracetamol', '500mg'),
    (302, 'Amoxicilina', '250mg'),
    (303, 'Ibuprofeno', '400mg'),
    (304, 'Omeprazol', '20mg'),
    (305, 'Dexametasona', '1mg');

-- Agregar registros a tablas con llaves foraneas
INSERT INTO Enfermeros VALUES 
    (401, 'Laura', 'Rodríguez', 101),
    (402, 'Andrés', 'Gómez', 102),
    (403, 'Paula', 'Hernández', 103),
    (404, 'David', 'Ramírez', 104),
    (405, 'María', 'Gutiérrez', 105);

INSERT INTO Pacientes VALUES 
    (501, 'Ana', 'Martínez', 'Carrera 10 #23-45, Bogotá', 201),
    (502, 'Carlos', 'Díaz', 'Calle 7 #15-30, Medellín', 202),
    (503, 'Luis', 'Gómez', 'Carrera 5 #12-78, Cali', 203),
    (504, 'María', 'Pérez', 'Avenida 15 #3-45, Bogotá', 204),
    (505, 'Pedro', 'Sánchez', 'Calle 20 #5-67, Medellín', 205);

INSERT INTO Facturas VALUES 
    (601, '2024-03-27', 150000, 501),
    (602, '2024-03-27', 200000, 502),
    (603, '2024-03-28', 300000, 503),
    (604, '2024-03-28', 250000, 504),
    (605, '2024-03-29', 180000, 505);

-- Agregar telefonos multivaluados
INSERT INTO telefonos_paciente VALUES 
    (501, '+57 3001234567'),
    (502, '+57 3109876543'),
    (503, '+57 3204567890'),
    (504, '+57 3306789012'),
    (505, '+57 3403210987');

INSERT INTO telefonos_medico VALUES 
    (101, '+573011112222'),
    (102, '+573022223333'),
    (103, '+573033334444'),
    (104, '+573044445555'),
    (105, '+573055556666');

INSERT INTO telefonos_enfermero VALUES 
    (401, '+573047778899'),
    (402, '+573059990011'),
    (403, '+573061112233'),
    (404, '+573073334455'),
    (405, '+573085556677');

-- Relacionaar pacientes con medicamentos
INSERT INTO paciente_medicamento VALUES 
    (501, 301),
    (502, 302),
    (503, 303),
    (504, 304),
    (505, 305);

-- Relacionar medicos con procedimientos
INSERT INTO medico_procedimiento VALUES 
    (101, 201),
    (102, 202),
    (103, 203),
    (104, 204),
    (105, 205);
