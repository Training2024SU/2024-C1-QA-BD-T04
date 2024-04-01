-- La siguiente vista permite ver de forma rápida y clara la información de los pacientes junto con 
-- el detalle de sus facturas. Es útil para el personal administrativo que necesita tener 
-- un seguimiento de los pagos de los pacientes y para identificar rápidamente a qué paciente
-- pertenece cada factura.

CREATE VIEW Vista_Pacientes_Facturas AS
SELECT
    p.id_paciente,
    p.nombre_paciente,
    p.apellido_paciente,
    p.dirección,
    f.id_factura,
    f.fecha,
    f.valor_total
FROM tb_paciente p
JOIN tb_factura f 
ON p.id_paciente = f.tb_paciente_id_paciente;


-- Esta vista brinda información sobre qué médico está asignado a qué tipo de procedimiento 
-- en el hospital. Puede ayudar a los administradores a realizar asignaciones de personal médico y 
-- a los médicos mismos a tener una visión clara de sus responsabilidades.

CREATE VIEW Vista_Médicos_Procedimientos AS
SELECT
    mp.id_médico_procedimiento,
    m.nombre AS nombre_médico,
    m.apellido AS apellido_médico,
    m.especialidad,
    p.tipo_procedimiento
FROM médico_procedimiento mp
JOIN tb_médico m 
ON mp.tb_médico_id_médico = m.id_médico
JOIN tb_procedimiento p 
ON mp.tb_procedimiento_id_procedimiento = p.id_procedimiento;


-- Esta vista muestra qué pacientes están tomando qué medicamentos y en qué dosis. Es crucial para 
-- el personal médico y de enfermería tener esta información fácilmente accesible para garantizar 
-- un tratamiento adecuado para los pacientes.

CREATE VIEW Vista_Pacientes_Medicamentos AS
SELECT
    pm.id_paciente_medicamento,
    p.nombre_paciente,
    p.apellido_paciente,
    m.nombre AS nombre_medicamento,
    m.dósis
FROM paciente_medicamento pm
JOIN tb_paciente p 
ON pm.tb_paciente_id_paciente = p.id_paciente
JOIN tb_medicamento m 
ON pm.tb_medicamento_id_medicamento = m.id_medicamento;
