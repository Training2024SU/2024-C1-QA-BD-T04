INSERT INTO `hospital_db`.`tb_procedimiento` (`id_procedimiento`, `tipo_procedimiento`) VALUES
(1, 'Cirugía de apéndice'),
(2, 'Extracción de muelas'),
(3, 'Colonoscopia'),
(4, 'Cirugía de cataratas'),
(5, 'Endoscopia');

INSERT INTO `hospital_db`.`tb_paciente` (`id_paciente`, `nombre_paciente`, `apellido_paciente`, `dirección`, `tb_procedimiento_id_procedimiento`) VALUES
(1, 'Juan', 'Pérez', 'Calle 123', 1),
(2, 'María', 'Gómez', 'Avenida Central', 2),
(3, 'Carlos', 'López', 'Calle Principal', 3),
(4, 'Ana', 'Martínez', 'Calle Norte', 4),
(5, 'Pedro', 'García', 'Avenida Sur', 5);

INSERT INTO `hospital_db`.`tb_factura` (`id_factura`, `fecha`, `valor_total`, `tb_paciente_id_paciente`) VALUES
(1, '2024-03-01', 500.00, 1),
(2, '2024-03-02', 300.50, 2),
(3, '2024-03-03', 1500.00, 3),
(4, '2024-03-04', 800.25, 4),
(5, '2024-03-05', 120.75, 5);

INSERT INTO `hospital_db`.`tb_médico` (`id_médico`, `nombre`, `apellido`, `especialidad`) VALUES
(1, 'Dr. Alberto', 'García', 'Cirugía'),
(2, 'Dra. Laura', 'Hernández', 'Odontología'),
(3, 'Dr. Juan', 'Pérez', 'Gastroenterología'),
(4, 'Dra. Ana', 'Rodríguez', 'Oftalmología'),
(5, 'Dr. Carlos', 'Martínez', 'Endoscopia');

INSERT INTO `hospital_db`.`tb_enfermero` (`id_enfermero`, `nombre`, `apellido`, `tb_médico_id_médico`) VALUES
(1, 'Elena', 'Gómez', 1),
(2, 'Pedro', 'López', 2),
(3, 'María', 'González', 3),
(4, 'Antonio', 'Martín', 4),
(5, 'Laura', 'Sánchez', 5);

INSERT INTO `hospital_db`.`teléfono_enfermero` (`teléfono`, `tb_enfermero_id_enfermero`) VALUES
(123456789, 1),
(234567890, 2),
(345678901, 3),
(456789012, 4),
(567890123, 5);

INSERT INTO `hospital_db`.`médico_procedimiento` (`id_médico_procedimiento`, `tb_procedimiento_id_procedimiento`, `tb_médico_id_médico`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5);

INSERT INTO `hospital_db`.`tb_medicamento` (`id_medicamento`, `nombre`, `dósis`) VALUES
(1, 'Paracetamol', 500.0),
(2, 'Amoxicilina', 250.0),
(3, 'Ibuprofeno', 200.0),
(4, 'Omeprazol', 20.0),
(5, 'Diazepam', 5.0);

INSERT INTO `hospital_db`.`paciente_medicamento` (`id_paciente_medicamento`, `tb_medicamento_id_medicamento`, `tb_paciente_id_paciente`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5);

INSERT INTO `hospital_db`.`teléfono_paciente` (`teléfono`, `tb_paciente_id_paciente`) VALUES
(678901234, 1),
(789012345, 2),
(890123456, 3),
(901234567, 4),
(123456789, 5);

INSERT INTO `hospital_db`.`teléfono_médico` (`teléfono`, `tb_médico_id_médico`) VALUES
(987654321, 1),
(876543210, 2),
(765432109, 3),
(654321098, 4),
(543210987, 5);
