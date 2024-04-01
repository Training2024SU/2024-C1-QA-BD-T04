USE hospital;

-- Consulta que me permita conocer que medicamentos a tomado cada paciente y la dosis suministrada.
SELECT p.id_paciente, p.nombre_paciente, p.apellido_paciente, m.nombre_medicamento, m.dosis
FROM hospital.tb_paciente p
JOIN hospital.tb_paciente_medicamento pm ON p.id_paciente = pm.id_paciente
JOIN hospital.tb_medicamento m ON pm.id_medicamento = m.id_medicamento;

-- Consulta que me permita conocer que enfermeros estuvieron en los procedimientos de los pacientes
SELECT DISTINCT e.nombre_enfermero, e.apellido_enfermero, p.tipo_procedimiento, pa.nombre_paciente, pa.apellido_paciente
FROM hospital.tb_enfermero e
JOIN hospital.tb_medico m ON e.id_medico = m.id_medico
JOIN hospital.tb_medico_procedimiento mp ON m.id_medico = mp.id_medico
JOIN hospital.tb_procedimiento p ON mp.id_procedimiento = p.id_procedimiento
JOIN hospital.tb_paciente pa ON p.id_procedimiento = pa.id_procedimiento;



