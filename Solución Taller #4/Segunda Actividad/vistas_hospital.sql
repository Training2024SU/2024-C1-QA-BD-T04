-- 3 vistas mas importantes
-- Saber que medicamentos se le suministran a los pacientes
CREATE VIEW medicamentos_pacientes as
select paciente.id_paciente, paciente.nombre, paciente_medicamento.nombre_medicamento, medicamento.dosis from paciente
join paciente_medicamento on paciente.id_paciente = paciente_medicamento.id_paciente
join medicamento on paciente_medicamento.nombre_medicamento = medicamento.nombre
;

-- Saber cuanto deben los pacientes, cual procedimiento se le hizo y cuando
CREATE VIEW costos_pacientes as
select paciente.nombre, factura.valor_total, procedimiento.tipo_procedimiento, factura.fecha from paciente 
join factura on paciente.id_paciente = factura.id_paciente
join procedimiento on paciente.id_procedimiento = procedimiento.id_procedimiento
;

-- Saber qué medico atiende a que paciente
CREATE VIEW medico_paciente as
select medico.nombre, paciente.nombre as nombre_paciente from medico
join medico_procedimiento on medico.id_medico = medico_procedimiento.medico_id
join paciente on medico_procedimiento.procedimiento_id = paciente.id_procedimiento
;
