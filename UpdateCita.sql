BEGIN TRANSACTION;


UPDATE CitaMedica
SET estado = 'Confirmada'
WHERE id = 1;

COMMIT;


