USE hospital;

-- consulta que me permite conocer que medicamentos a tomado cada paciente y la dosis suministrada.
SELECT 
    p.id_pacientes AS `ID paciente`,
    CONCAT(p.nombre_paciente," ", p.apellido_paciente) AS `Paciente`,
	m.nombre_medicamento AS `Medicamento`,
    m.dosis
FROM
    paciente_medicamento pm
        LEFT JOIN
    pacientes AS p ON pm.id_paciente = p.id_pacientes
        LEFT JOIN
    medicamentos AS m ON pm.id_medicamento = m.id_medicamentos;

--  consulta que me permite conocer que enfermeros estuvieron en los procedimientos de los pacientes.
SELECT 
    p.id_pacientes AS `ID paciente`,
    CONCAT(p.nombre_paciente," ", p.apellido_paciente) AS `Paciente`,
    
    pr.tipo_procedimiento AS `Procedimiento`,
    e.id_enfermero AS `ID enfermero`,
    CONCAT(e.nombre_enfermero," ", e.apellido_enfermero) AS `Enfermero`
FROM
    Pacientes AS p
        LEFT JOIN
    Procedimientos AS pr ON p.id_procedimiento = pr.id_procedimientos
        LEFT JOIN
    medico_procedimiento AS mepr ON pr.id_procedimientos = mepr.id_procedimiento
        LEFT JOIN
    Enfermeros AS e ON mepr.id_medico = e.id_medico;