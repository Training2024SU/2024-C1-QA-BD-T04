-- Poblar tabla medico
INSERT INTO hospital.medico (id_medico, nombre, telefono, especialidad)
VALUES 
    ('MED001', 'Dr. Carlos Gómez', '3151234567', 'Cirugía general'),
    ('MED002', 'Dra. Laura Martínez', '3109876543', 'Pediatría'),
    ('MED003', 'Dr. Juan Rodríguez', '3008765432', 'Cardiología'),
    ('MED004', 'Dra. María González', '3187654321', 'Ginecología'),
    ('MED005', 'Dr. Andrés Pérez', '3206543210', 'Oftalmología');

-- Poblar tabla enfermero
INSERT INTO hospital.enfermero (id_enfermero, id_medico, nombre, telefono)
VALUES 
    ('ENF001', 'MED001', 'María Rodríguez', '3151234567'),
    ('ENF002', 'MED002', 'Juan Pérez', '3109876543'),
    ('ENF003', 'MED001', 'Luisa Gómez', '3008765432'),
    ('ENF004', 'MED003', 'Pedro Sánchez', '3187654321'),
    ('ENF005', 'MED002', 'Ana Martínez', '3206543210');

-- Poblar tabla procedimiento
INSERT INTO hospital.procedimiento (id_procedimiento, tipo_procedimiento)
VALUES 
    ('PROC001', 'Cirugía cardíaca'),
    ('PROC002', 'Extracción de apéndice'),
    ('PROC003', 'Colonoscopia'),
    ('PROC004', 'Parto por cesárea'),
    ('PROC005', 'Cirugía de cataratas');

-- Poblar tabla medico_procedimiento
INSERT INTO hospital.medico_procedimiento (idmedico_procedimiento, medico_id, procedimiento_id)
VALUES 
    ('P01', 'MED001', 'PROC001'),
    ('P02', 'MED002', 'PROC002'),
    ('P03', 'MED003', 'PROC003'),
    ('P04', 'MED004', 'PROC004'),
    ('P05', 'MED005', 'PROC005');

-- Poblar tabla paciente
INSERT INTO hospital.paciente (id_paciente, id_procedimiento, nombre, telefono, direccion)
VALUES 
    ('100112233445', 'PROC001', 'Laura Gutiérrez', '3101234567', 'Carrera 10 # 20-30'),
    ('101234567890', 'PROC002', 'Juan Ramírez', '3159876543', 'Calle 30 # 40-50'),
    ('102345678901', 'PROC003', 'María Pérez', '3008765432', 'Avenida 50 # 60-70'),
    ('103456789012', 'PROC004', 'Carlos Rodríguez', '3187654321', 'Diagonal 70 # 80-90'),
    ('104567890123', 'PROC005', 'Luisa Martínez', '3206543210', 'Transversal 90 # 100-110');

-- Poblar tabla factura
INSERT INTO hospital.factura (id_factura, fecha, valor_total, id_paciente)
VALUES 
    ('FAC001', '2024-04-01', 150000, '100112233445'),
    ('FAC002', '2024-04-02', 200000, '101234567890'),
    ('FAC003', '2024-04-03', 175000, '102345678901'),
    ('FAC004', '2024-04-04', 220000, '103456789012'),
    ('FAC005', '2024-04-05', 180000, '104567890123');

-- Poblar tabla medicamento
INSERT INTO hospital.medicamento (nombre, dosis) VALUES
('Paracetamol', '500 mg'),
('Ibuprofeno', '400 mg'),
('Omeprazol', '20 mg'),
('Amoxicilina', '500 mg'),
('Loratadina', '10 mg');

-- Poblar tabla paciente_medicamento
INSERT INTO hospital.paciente_medicamento (id_paciente, nombre_medicamento) VALUES
('100112233445', 'Paracetamol'),
('101234567890', 'Ibuprofeno'),
('102345678901', 'Omeprazol'),
('103456789012', 'Amoxicilina'),
('104567890123', 'Loratadina');
