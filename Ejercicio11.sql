CREATE DATABASE ejercicio11 CHARSET utf8mb4 COLLATE utf8mb4_spanish2_ci;
USE ejercicio11;

CREATE TABLE empleados (
	idEmpleado INT AUTO_INCREMENT NOT NULL,
	nombreEmpleado VARCHAR(45) NOT NULL,
    apellidosEmpleado VARCHAR(45) NOT NULL,
    dniEmpleado VARCHAR(9) UNIQUE,
    telefonoEmpleado VARCHAR(9),
    PRIMARY KEY(idEmpleado)
);

CREATE TABLE directivos (
	idEmpleadoFK INT,
    matriculaCocheDirectivo INT,
    PRIMARY KEY(idEmpleadoFK),
    FOREIGN KEY(idEmpleadoFK) REFERENCES empleados(idEmpleado)
);

CREATE TABLE administrativos (
	idEmpleadoFK INT,
    fechaIngresoAdministrativo DATE NOT NULL,
    PRIMARY KEY(idEmpleadoFK),
    FOREIGN KEY(idEmpleadoFK) REFERENCES empleados(idEmpleado)
);

CREATE TABLE tecnicos (
	idEmpleadoFK INT,
    tituloTecnico VARCHAR(45) NOT NULL,
    PRIMARY KEY(idEmpleadoFK),
    FOREIGN KEY(idEmpleadoFK) REFERENCES empleados(idEmpleado)
);