BEGIN TRANSACTION;


INSERT INTO medicamento (id, nombre, dosis, presentacion, indicaciones, contraindicaciones)
VALUES (1, 'Paracetamol', '500mg', 'Tableta', 'Tomar cada 8 horas', 'No tomar con alcohol');


INSERT INTO receta (id, id_medicamento, id_medico, id_paciente, fecha_de_creacion, dosis, frecuencia, duracion)
VALUES (1, 1, 1, 1, '2024-09-10', '500mg', 'Cada 8 horas', '5 días');


COMMIT;


