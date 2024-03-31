USE hospital;

CREATE VIEW `CantidadDeEnfermerosPorMedico` AS 
SELECT 
	M.IdMedico
    ,M.NombreMedico
    ,M.ApellidoMedico
    ,COUNT(E.IdEnfermero) AS CantidadEnfermeros
FROM Medico AS M 
INNER JOIN Enfermero AS E ON (M.IdMedico = E.IdMedico)
GROUP BY M.IdMedico;


CREATE VIEW `CantidadMedicamentosComprados` AS
SELECT 
	M.NombreMedicamento
    ,COUNT(PM.IdPacienteMedicamento) AS CantidadComprada
FROM medicamento AS M 
INNER JOIN pacienteMedicamento AS PM ON (M.IdMedicamento = PM.IdMedicamento)
GROUP BY M.NombreMedicamento
ORDER BY 2 DESC;


CREATE VIEW `PrecioTotalFacturasPorMes` AS 
SELECT
	YEAR(Fecha) AS AnioFactura
    ,MONTH(Fecha) AS MesFactura
	,SUM(Precio) AS SumaPrecio
FROM FACTURA
GROUP BY YEAR(Fecha), MONTH(Fecha);









