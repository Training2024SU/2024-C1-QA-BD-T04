USE hostipal;

-- Vista de Detalles de Contacto de Personal Médico:
CREATE VIEW vista_detalles_contacto_medico AS
SELECT m.id_medico, m.nombre_medico, m.apellido_medico, tm.telefono
FROM hospital.tb_medico m
JOIN hospital.telefono_medico tm ON m.id_medico = tm.id_medico;

-- Vista de Consumo de Medicamentos:
CREATE VIEW vista_consumo_medicamentos AS
SELECT m.id_medicamento, m.nombre_medicamento, m.dosis, COUNT(pm.id_paciente_medicamento) AS cantidad_utilizada
FROM hospital.tb_medicamento m
LEFT JOIN hospital.tb_paciente_medicamento pm ON m.id_medicamento = pm.id_medicamento
GROUP BY m.id_medicamento, m.nombre_medicamento, m.dosis;

-- Vista de Resumen de Facturación Mensual:
CREATE VIEW vista_resumen_facturacion_mensual AS
SELECT YEAR(f.fecha) AS year, MONTH(f.fecha) AS month, SUM(f.valor_total) AS total_facturado
FROM hospital.tb_factura f
GROUP BY YEAR(f.fecha), MONTH(f.fecha);
