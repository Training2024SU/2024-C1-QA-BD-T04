# drop database if exists hospital;

create database if not exists hospital;

use hospital;

-- Crear tablas independientes
CREATE TABLE Medicos (
    id INT NOT NULL PRIMARY KEY,
    nombres VARCHAR(50) NOT NULL,
    apellidos VARCHAR(50) NOT NULL,
    especialidad VARCHAR(20)
)  ENGINE=INNODB;

CREATE TABLE Procedimientos (
    id INT NOT NULL PRIMARY KEY,
    tipo VARCHAR(30)
)  ENGINE=INNODB;

CREATE TABLE Medicamentos (
    id INT NOT NULL PRIMARY KEY,
    nombre VARCHAR(30),
    dosis VARCHAR(20)
)  ENGINE=INNODB;

-- Crear tablas con llaves foraneas
CREATE TABLE Enfermeros (
    id INT NOT NULL PRIMARY KEY,
    nombres VARCHAR(50) NOT NULL,
    apellidos VARCHAR(50) NOT NULL,
    id_medico INT,
    FOREIGN KEY (id_medico)
        REFERENCES Medicos (id)
)  ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS Pacientes (
    id INT NOT NULL PRIMARY KEY,
    nombres VARCHAR(50) NOT NULL,
    apellidos VARCHAR(50) NOT NULL,
    direccion VARCHAR(100),
    id_procedimiento INT,
    FOREIGN KEY (id_procedimiento)
        REFERENCES Procedimientos (id)
)  ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS Facturas (
    id INT NOT NULL PRIMARY KEY,
    fecha DATE,
    valor_total BIGINT,
    id_paciente INT,
    FOREIGN KEY (id_paciente)
        REFERENCES Pacientes (id)
)  ENGINE=INNODB;

-- Crear tablas de campos multivaluados
CREATE TABLE IF NOT EXISTS telefonos_paciente (
    id_paciente INT,
    telefono VARCHAR(20),
    FOREIGN KEY (id_paciente)
        REFERENCES Pacientes (id),
    PRIMARY KEY (id_paciente , telefono)
)  ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS telefonos_medico (
    id_medico INT,
    telefono VARCHAR(20),
    FOREIGN KEY (id_medico)
        REFERENCES Medicos(id),
    PRIMARY KEY (id_medico, telefono)
)  ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS telefonos_enfermero(
    id_enfermero INT,
    telefono VARCHAR(20),
    FOREIGN KEY (id_enfermero)
        REFERENCES Enfermeros (id),
    PRIMARY KEY (id_enfermero , telefono)
)  ENGINE=INNODB;

-- Crear tablas intermedias de relaciones M:N
CREATE TABLE IF NOT EXISTS paciente_medicamento (
    id_paciente INT NOT NULL,
    id_medicamento INT NOT NULL,
    FOREIGN KEY (id_paciente)
        REFERENCES Pacientes (id),
    FOREIGN KEY (id_medicamento)
        REFERENCES Medicamentos (id),
    PRIMARY KEY (id_paciente , id_medicamento)
)  ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS medico_procedimiento (
    id_medico INT NOT NULL,
    id_procedimiento INT NOT NULL,
    FOREIGN KEY (id_medico)
        REFERENCES Medicos (id),
    FOREIGN KEY (id_procedimiento)
        REFERENCES Procedimientos (id),
    PRIMARY KEY (id_medico , id_procedimiento)
)  ENGINE=INNODB;
