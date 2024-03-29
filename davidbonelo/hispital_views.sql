-- medicamentos más consumidos
CREATE VIEW medicamentos_prioritarios AS
    SELECT 
        m.id, m.nombre, m.dosis, COUNT(m.id) AS `dosis_usadas`
    FROM
        Medicamentos m
            JOIN
        paciente_medicamento pm ON m.id = pm.id_medicamento
    GROUP BY m.id
    ORDER BY dosis_usadas DESC;

-- pacientes que más facturan
CREATE VIEW pacientes_frecuentes AS
    SELECT 
        p.id,
        CONCAT(p.nombres, ' ', p.apellidos) AS `paciente`,
        SUM(f.valor_total) AS `total_facturado`
    FROM
        Facturas f
            LEFT JOIN
        Pacientes p ON f.id_paciente = p.id
    GROUP BY p.id
    ORDER BY total_facturado DESC;

-- medicos que realizan más procedimientos
CREATE VIEW top_medicos AS
    SELECT 
        m.*, COUNT(mp.id_procedimiento) AS `cantidad_procedimientos`
    FROM
        medico_procedimiento mp
            LEFT JOIN
        Medicos m ON mp.id_medico = m.id
    GROUP BY mp.id_medico
    ORDER BY cantidad_procedimientos DESC;

-- todos los procedimientos ralizados a que paciente, por cuales médicos y cuántos enfermeros asistieron
CREATE VIEW procedimientos_completo AS
    SELECT 
        pro.id,
        pro.tipo AS `procedimiento`,
        p.id AS `id_paciente`,
        CONCAT(p.nombres, ' ', p.apellidos) AS `paciente`,
        m.id AS `id_medico`,
        CONCAT(m.nombres, ' ', m.apellidos) AS `medico`,
        COUNT(e.id) AS `cantidad_enfermeros`
    FROM
        Procedimientos pro
            LEFT JOIN
        Pacientes p ON pro.id = p.id_procedimiento
            LEFT JOIN
        medico_procedimiento mp ON pro.id = mp.id_procedimiento
            LEFT JOIN
        Medicos m ON mp.id_medico = m.id
            LEFT JOIN
        Enfermeros e ON mp.id_medico = e.id_medico
    GROUP BY pro.id , p.id , m.id;
