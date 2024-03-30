-- Creación de la base de datos
CREATE DATABASE IF NOT EXISTS Hospital_GNECJ;

-- Usar la base de datos creada
USE Hospital_GNECJ;

-- Creación de la tabla tb_procedimiento
CREATE TABLE IF NOT EXISTS tb_procedimiento (
    id_procedimiento INT AUTO_INCREMENT PRIMARY KEY,
    tipo_procedimiento VARCHAR(100)
);

-- Creación de la tabla tb_medico
CREATE TABLE IF NOT EXISTS tb_medico (
    id_medico INT AUTO_INCREMENT PRIMARY KEY,
    nombre_medico VARCHAR(255),
    apellido_medico VARCHAR(255),
    telefono VARCHAR(20),
    especialidad VARCHAR(100)
);

-- Creación de la tabla tb_enfermero
CREATE TABLE IF NOT EXISTS tb_enfermero (
    id_enfermero INT AUTO_INCREMENT PRIMARY KEY,
    nombre_enfermero VARCHAR(255),
    apellido_enfermero VARCHAR(255),
    telefono VARCHAR(20),
    id_medico INT,
    FOREIGN KEY (id_medico) REFERENCES tb_medico(id_medico)
);

-- Creación de la tabla tb_paciente
CREATE TABLE IF NOT EXISTS tb_paciente (
    id_paciente INT AUTO_INCREMENT PRIMARY KEY,
    nombre_paciente VARCHAR(255),
    apellido_paciente VARCHAR(255),
    telefono VARCHAR(20),
    direccion VARCHAR(255),
    id_procedimiento INT,
    FOREIGN KEY (id_procedimiento) REFERENCES tb_procedimiento(id_procedimiento)
);

-- Creación de la tabla tb_medicamento
CREATE TABLE IF NOT EXISTS tb_medicamento (
    id_medicamento INT AUTO_INCREMENT PRIMARY KEY,
    nombre_medicamento VARCHAR(255),
    dosis VARCHAR(100)
);

-- Creación de la tabla tb_factura
CREATE TABLE IF NOT EXISTS tb_factura (
    id_factura INT AUTO_INCREMENT PRIMARY KEY,
    fecha DATE,
    valor_total DECIMAL(10,2),
    id_paciente INT,
    FOREIGN KEY (id_paciente) REFERENCES tb_paciente(id_paciente)
);



-- Inserción de datos en tb_procedimiento
INSERT INTO tb_procedimiento (tipo_procedimiento) VALUES
    ('Cirugía de corazón abierto'),
    ('Extracción de apéndice'),
    ('Colonoscopia'),
    ('Resonancia magnética'),
    ('Ecocardiograma'),
    ('Endoscopia'),
    ('Radiografía de tórax'),
    ('Tomografía computarizada');

-- Inserción de datos en tb_medico
INSERT INTO tb_medico (nombre_medico, apellido_medico, telefono, especialidad) VALUES
    ('Juan', 'Pérez', '123-456-7890', 'Cardiología'),
    ('María', 'González', '234-567-8901', 'Cirugía General'),
    ('Carlos', 'Martínez', '345-678-9012', 'Gastroenterología'),
    ('Ana', 'López', '456-789-0123', 'Radiología'),
    ('Pedro', 'Sánchez', '567-890-1234', 'Endocrinología'),
    ('Laura', 'Ramírez', '678-901-2345', 'Oftalmología'),
    ('Miguel', 'Díaz', '789-012-3456', 'Neurología'),
    ('Sofía', 'Torres', '890-123-4567', 'Pediatría');

-- Inserción de datos en tb_enfermero
INSERT INTO tb_enfermero (nombre_enfermero, apellido_enfermero, telefono, id_medico) VALUES
    ('Luisa', 'García', '901-234-5678', 1),
    ('Eduardo', 'Hernández', '012-345-6789', 2),
    ('Martina', 'Gómez', '123-456-7890', 3),
    ('David', 'Ruiz', '234-567-8901', 4),
    ('Patricia', 'Alvarez', '345-678-9012', 5),
    ('Jorge', 'Gutiérrez', '456-789-0123', 6),
    ('Isabel', 'Ortega', '567-890-1234', 7),
    ('Roberto', 'Fernández', '678-901-2345', 8);

-- Inserción de datos en tb_paciente
INSERT INTO tb_paciente (nombre_paciente, apellido_paciente, telefono, direccion, id_procedimiento) VALUES
    ('Ana', 'Gómez', '123-456-7890', 'Calle 123, Ciudad A', 1),
    ('José', 'Martínez', '234-567-8901', 'Avenida Principal, Ciudad B', 2),
    ('María', 'López', '345-678-9012', 'Carrera 45, Ciudad C', 3),
    ('Pedro', 'Sánchez', '456-789-0123', 'Calle 67, Ciudad D', 4),
    ('Laura', 'González', '567-890-1234', 'Avenida Central, Ciudad E', 5),
    ('Carlos', 'Pérez', '678-901-2345', 'Calle 89, Ciudad F', 6),
    ('Sofía', 'Díaz', '789-012-3456', 'Carrera 12, Ciudad G', 7),
    ('Miguel', 'Fernández', '890-123-4567', 'Avenida 34, Ciudad H', 8);

-- Inserción de datos en tb_medicamento
INSERT INTO tb_medicamento (nombre_medicamento, dosis) VALUES
    ('Paracetamol', '500 mg'),
    ('Ibuprofeno', '400 mg'),
    ('Amoxicilina', '250 mg'),
    ('Omeprazol', '20 mg'),
    ('Loratadina', '10 mg'),
    ('Atorvastatina', '20 mg'),
    ('Insulina', '100 UI'),
    ('Warfarina', '5 mg');

-- Inserción de datos en tb_factura
INSERT INTO tb_factura (fecha, valor_total, id_paciente) VALUES
    ('2024-03-27', 150.00, 1),
    ('2024-03-26', 200.00, 2),
    ('2024-03-25', 300.00, 3),
    ('2024-03-24', 250.00, 4),
    ('2024-03-23', 180.00, 5),
    ('2024-03-22', 210.00, 6),
    ('2024-03-21', 270.00, 7),
    ('2024-03-20', 320.00, 8);

-- Consultas
-- Paciente, medicamento y dosis
SELECT CONCAT(p.nombre_paciente, ' ', p.apellido_paciente) AS paciente, 
       CONCAT(m.nombre_medicamento, ' - ', m.dosis) AS Medicamento
FROM tb_paciente AS p
LEFT JOIN tb_medicamento AS m ON p.id_procedimiento = m.id_medicamento;



-- Enfermeros presentes en los procedimientos de los pacientes.
SELECT DISTINCT CONCAT(e.nombre_enfermero, ' ', e.apellido_enfermero) AS nombre_completo_enfermero,
                CONCAT(p.nombre_paciente, ' ', p.apellido_paciente) AS nombre_completo_paciente,
                pr.tipo_procedimiento AS tipo_procedimiento
FROM tb_enfermero AS e
INNER JOIN tb_medico AS m ON e.id_medico = m.id_medico
INNER JOIN tb_paciente AS p ON m.id_medico = p.id_procedimiento
INNER JOIN tb_procedimiento AS pr ON p.id_procedimiento = pr.id_procedimiento;

-- Vistas

CREATE VIEW vista_resumen_medicos AS
SELECT id_medico, CONCAT(nombre_medico, ' ', apellido_medico) AS medico, especialidad
FROM tb_medico;


CREATE VIEW vista_informacion_paciente AS
SELECT p.id_paciente, CONCAT(p.nombre_paciente, ' ', p.apellido_paciente) AS paciente,
       pr.tipo_procedimiento AS procedimiento_medico,
       f.fecha AS fecha_procedimiento
FROM tb_paciente p
LEFT JOIN tb_procedimiento pr ON p.id_procedimiento = pr.id_procedimiento
LEFT JOIN tb_factura f ON p.id_paciente = f.id_paciente;


CREATE VIEW vista_medicamentos AS
SELECT id_medicamento, nombre_medicamento, dosis
FROM tb_medicamento;


SELECT * FROM vista_medicamentos;
SELECT * FROM vista_informacion_paciente;
SELECT * FROM vista_resumen_medicos;