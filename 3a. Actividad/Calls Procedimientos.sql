USE `libreriabuscalibre`;

-- Prueba Procedimiento para Agregar Editorial:
CALL agregar_editorial('Editorial Bribge', 'Los Angeles', '5600 E. Olympic Blvd', '1-800-722-1733');

-- Prueba Procedimiento para Actualizar Editorial:
CALL actualizar_editorial('Editorial Bribge', 'San Francisco', '2600 E. Olympic Blvd', '1-800-722-1734');

-- Prueba Procedimiento para Consultar Editorial:
CALL consultar_editorial('Editorial Norma');

-- Prueba Procedimiento paraEliminar Editorial:
CALL eliminar_editorial('Editorial Bribge');
