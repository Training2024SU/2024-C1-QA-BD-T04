USE hospital;


-- Consulta 1: realice una consulta que me permita conocer que medicamentos a tomado cada paciente y la dosis suministrada.

SELECT
	P.IdPaciente 
    ,P.NombrePaciente
    ,P.ApellidoPaciente
    ,M.IdMedicamento
    ,M.NombreMedicamento
    ,PM.Dosis
FROM paciente AS P
INNER JOIN pacienteMedicamento AS PM ON (P.IdPaciente = PM.IdMedicamento)
INNER JOIN medicamento AS M ON (M.IdMedicamento = PM.IdMedicamento);



-- Consulta 2: realice una consulta que me permita conocer que enfermeros estuvieron en los procedimientos de los pacientes
SELECT 
	MP.IdProcedimiento
    ,E.NombreEnfermero
    ,E.ApellidoEnfermero
    ,P.NombrePaciente
    ,P.ApellidoPaciente
FROM medicoProcedimiento AS MP 
INNER JOIN Enfermero AS E ON (E.IdMedico = MP.IdMedico)
INNER JOIN Paciente AS P ON (MP.IdProcedimiento = P.IdProcedimiento)
ORDER BY 2,3 
