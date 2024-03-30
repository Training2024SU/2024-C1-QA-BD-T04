-- Resumen cliente
CREATE VIEW resumen_facturacion AS
SELECT 
    f.id_factura AS `Factura`,
    f.fecha AS `Fecha`,
    f.valor_total AS `Valor total`,
    CONCAT(p.nombre_paciente," ", p.apellido_paciente) AS `Paciente`
FROM
    facturas f
        LEFT JOIN
    pacientes p ON f.id_paciente = p.id_pacientes;

-- Paciente con procedimientos, medico y enfermero
CREATE VIEW procedimientos_paciente AS
SELECT 
    pr.id_procedimientos AS 'ID procedimiento',
    pr.tipo_procedimiento as 'Nombre',
    CONCAT(p.nombre_paciente," ", p.apellido_paciente) AS `Paciente`,
    CONCAT(m.nombre_medico," ", m.apellido_medico) AS 'Medico', 
    CONCAT(e.nombre_enfermero," ",e.apellido_enfermero) AS 'Enfermero'
FROM
	pacientes p
    LEFT JOIN
    procedimientos pr ON p.id_procedimiento = pr.id_procedimientos
        LEFT JOIN
    medico_procedimiento mepr ON pr.id_procedimientos = mepr.id_procedimiento
        LEFT JOIN
    medicos m ON mepr.id_medico = m.id_medicos
        LEFT JOIN
    enfermeros e ON m.id_medicos = e.id_medico;

-- Factura completa
CREATE VIEW factura_completa AS
SELECT 
    p.id_pacientes,
    CONCAT(p.nombre_paciente," ", p.apellido_paciente) AS `Paciente`,
    f.id_factura,
    pr.tipo_procedimiento AS 'Procedimiento',
    m.nombre_medicamento AS 'Medicamento',
    f.valor_total AS 'Valor total'    
FROM
    pacientes p
    LEFT JOIN facturas f ON p.id_pacientes = f.id_paciente
    LEFT JOIN procedimientos pr ON p.id_procedimiento = pr.id_procedimientos
    LEFT JOIN paciente_medicamento pm ON p.id_pacientes = pm.id_paciente
    LEFT JOIN medicamentos m ON pm.id_medicamento = m.id_medicamentos;



