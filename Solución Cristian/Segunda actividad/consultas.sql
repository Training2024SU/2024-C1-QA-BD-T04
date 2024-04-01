
-- realice una consulta que me permita conocer que medicamentos a tomado cada paciente 
-- y la dosis suministrada.

select p.id_paciente, p.nombre_paciente, p.apellido_paciente, m.nombre, m.dósis
from tb_paciente p
join paciente_medicamento pm
on p.id_paciente = pm.tb_paciente_id_paciente
join tb_medicamento m
on pm.tb_medicamento_id_medicamento = m.id_medicamento;

-- realice una consulta que me permita conocer que enfermeros estuvieron en los procedimientos 
-- de los pacientes.

select pa.id_paciente, pa.nombre_paciente, pa.apellido_paciente, pr.tipo_procedimiento, en.id_enfermero, en.nombre, en.apellido
from tb_enfermero en
join tb_médico me
on en.tb_médico_id_médico = me.id_médico
join médico_procedimiento mp
on me.id_médico = mp.tb_médico_id_médico
join tb_procedimiento pr
on mp.tb_procedimiento_id_procedimiento = pr.id_procedimiento
join tb_paciente pa 
on pr.id_procedimiento = pa.tb_procedimiento_id_procedimiento
order by pa.id_paciente
;