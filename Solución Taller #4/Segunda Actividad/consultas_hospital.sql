-- que medicamentos ha tomado cada paciente y la dosis suministrada
select paciente.id_paciente, paciente.nombre, paciente_medicamento.nombre_medicamento, medicamento.dosis from paciente
join paciente_medicamento on paciente.id_paciente = paciente_medicamento.id_paciente
join medicamento on paciente_medicamento.nombre_medicamento = medicamento.nombre
;

-- que enfermeros estuvieron en los procedimientos de los pacientes
select enfermero.nombre, procedimiento.tipo_procedimiento from enfermero
join medico on enfermero.id_medico = medico.id_medico
join medico_procedimiento on medico.id_medico = medico_procedimiento.medico_id
join procedimiento on medico_procedimiento.procedimiento_id = id_procedimiento
;