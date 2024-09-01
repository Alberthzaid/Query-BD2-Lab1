USE ColegioHospitalDB
GO



CREATE TABLE Paciente (
    id INT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Apellido VARCHAR(100) NOT NULL,
    Fecha_de_nacimiento DATE NOT NULL,
    Genero CHAR(1) NOT NULL,
    Direccion VARCHAR(255),
    Telefono VARCHAR(20),
    Tipo_de_sangre VARCHAR(3)
);
GO


CREATE TABLE SeguroMedico (
    id INT PRIMARY KEY,
    id_paciente INT,
    Numero_de_seguro VARCHAR(50) NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    FOREIGN KEY (id_paciente) REFERENCES Paciente(id)
);
GO
CREATE TABLE Prueba (
    id INT PRIMARY KEY,
    tipo_de_prueba VARCHAR(100) NOT NULL,
    descripcion VARCHAR(255),
    resultado VARCHAR(255)
);
GO


CREATE TABLE EstadoSaludPaciente (
    id INT PRIMARY KEY,
    id_paciente INT,
    id_prueba INT,
    FOREIGN KEY (id_paciente) REFERENCES Paciente(id),
    FOREIGN KEY (id_prueba) REFERENCES Prueba(id)
);
GO


CREATE TABLE Especialidad (
    id INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);
GO


CREATE TABLE Consultorio (
    id INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);
GO


CREATE TABLE HorarioAtencion (
    id INT PRIMARY KEY,
    horario VARCHAR(50) NOT NULL
);
GO


CREATE TABLE Doctor (
    id INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    id_especialidad INT,
    numero_de_colegiado VARCHAR(50) NOT NULL,
    años_de_experiencia INT,
    id_consultorio INT,
    id_horario INT,
    FOREIGN KEY (id_especialidad) REFERENCES Especialidad(id),
    FOREIGN KEY (id_consultorio) REFERENCES Consultorio(id),
    FOREIGN KEY (id_horario) REFERENCES HorarioAtencion(id)
);
GO


CREATE TABLE Diagnostico (
    id INT PRIMARY KEY,
    resultado VARCHAR(255) NOT NULL
);
GO


CREATE TABLE HistoriaMedica (
    id INT PRIMARY KEY,
    id_diagnostico INT,
    id_cliente INT,
    fecha_de_creacion DATE NOT NULL,
    FOREIGN KEY (id_diagnostico) REFERENCES Diagnostico(id),
    FOREIGN KEY (id_cliente) REFERENCES Paciente(id)
);
GO


CREATE TABLE CitaMedica (
    id INT PRIMARY KEY,
    id_medico INT,
    id_paciente INT,
    fecha DATE NOT NULL,
    estado VARCHAR(50) NOT NULL,
    motivo VARCHAR(255),
    FOREIGN KEY (id_medico) REFERENCES Doctor(id),
    FOREIGN KEY (id_paciente) REFERENCES Paciente(id)
);
GO


CREATE TABLE AlergiasEnfermedades (
    id INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);
GO

CREATE TABLE Medicamento (
    id INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    dosis VARCHAR(50) NOT NULL,
    presentacion VARCHAR(100) NOT NULL,
    indicaciones VARCHAR(255),
    contraindicaciones VARCHAR(255)
);
GO

CREATE TABLE Receta (
    id INT PRIMARY KEY,
    id_medicamento INT,
    id_medico INT,
    id_paciente INT,
    fecha_de_creacion DATE NOT NULL,
    dosis VARCHAR(50) NOT NULL,
    frecuencia VARCHAR(50) NOT NULL,
    duracion VARCHAR(50) NOT NULL,
    FOREIGN KEY (id_medicamento) REFERENCES Medicamento(id),
    FOREIGN KEY (id_medico) REFERENCES Doctor(id),
    FOREIGN KEY (id_paciente) REFERENCES Paciente(id)
);
GO



