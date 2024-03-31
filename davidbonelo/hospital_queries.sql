-- realice las consultas que me permita conocer:
USE hospital;

-- que medicamentos a tomado cada paciente y la dosis suministrada.
SELECT 
    p.id AS `id_paciente`,
    p.nombres,
    p.apellidos,
    m.id AS `id_medicamento`,
    m.nombre AS `medicamento`,
    m.dosis
FROM
    paciente_medicamento pm
        LEFT JOIN
    Pacientes AS p ON pm.id_paciente = p.id
        LEFT JOIN
    Medicamentos AS m ON pm.id_medicamento = m.id;
    
-- que enfermeros estuvieron en los procedimientos de los pacientes.
SELECT 
    p.id AS `id_paciente`,
    p.nombres,
    p.apellidos,
    p.id_procedimiento,
    pro.tipo AS `procedimiento`,
    e.id AS `id_enfermero`,
    CONCAT(e.nombres, e.apellidos) AS `enfermero`
FROM
    Pacientes AS p
        LEFT JOIN
    Procedimientos AS pro ON p.id_procedimiento = pro.id
        LEFT JOIN
    medico_procedimiento AS mp ON pro.id = mp.id_procedimiento
        LEFT JOIN
    Enfermeros AS e ON mp.id_medico = e.id_medico;
