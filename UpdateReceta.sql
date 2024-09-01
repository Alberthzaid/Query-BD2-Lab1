BEGIN TRANSACTION;


UPDATE Receta
SET frecuencia = 'Una vez al dia'
WHERE id = 1;


COMMIT;

