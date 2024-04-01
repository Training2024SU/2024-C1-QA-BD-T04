-- -----------------------------------------------------------------
--  medicamentos que ha tomado cada paciente y la dosis suministrada
-- -----------------------------------------------------------------
SELECT 
    p.nombre_paciente, 
    p.apellido_paciente, 
    m.Nombre_medicamento, 
    m.Dosis
FROM 
    Hospital_BD.Paciente AS p
INNER JOIN 
    Hospital_BD.Paciente_Medicamento AS pm ON p.id_Paciente = pm.id_Paciente
INNER JOIN 
    Hospital_BD.Medicamento AS m ON pm.id_medicamento = m.id_Medicamento;
    
-- -------------------------------------------------------------
-- enfermeros estuvieron en los procedimientos de los pacientes.
-- -------------------------------------------------------------
    SELECT 
    e.nombre_enfermero, 
    e.apellido_enfermero, 
    m.Nombre_medico, 
    m.Apellido_medico, 
    mp.id_procedimiento
FROM 
    Hospital_BD.Enfermero AS e
INNER JOIN 
    Hospital_BD.Medico_Procedimiento AS mp ON e.id_Enfermero = mp.id_medico
INNER JOIN 
    Hospital_BD.Medico AS m ON mp.id_medico = m.id_Medico;