

BEGIN TRANSACTION;

INSERT INTO Especialidad (id, nombre) VALUES (3, 'Pediatria');

INSERT INTO Consultorio(id , nombre) VALUES (3, 'Consultorio de Pediatria');

INSERT INTO HorarioAtencion(id , horario) VALUES (3 , 'MAÑANA')	


INSERT INTO Doctor (id, nombre, id_especialidad, numero_de_colegiado, años_de_experiencia, id_consultorio, id_horario)
VALUES (4, 'Dr. Carlos Perez', 3, '12345', 10, 3, 3);


INSERT INTO Paciente (id, Nombre, Apellido, Fecha_de_nacimiento, Genero, Direccion, Telefono, Tipo_de_sangre)
VALUES (4, 'Alexis', 'Pantoja', '1980-05-15', 'M', 'Calle Falsa 123', '5553333', 'O+');


INSERT INTO CitaMedica (id, id_medico, id_paciente, fecha, estado, motivo)
VALUES (4, 4, 4, '2024-09-10', 'Listo', 'Chequeo General');


COMMIT;

