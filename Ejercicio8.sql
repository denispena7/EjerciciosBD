CREATE DATABASE ejercicio8 CHARSET utf8mb4 COLLATE utf8mb4_spanish2_ci;
USE ejercicio8;

CREATE TABLE departamentos (
	idDepartamento INT AUTO_INCREMENT NOT NULL,
	nombreDepartamento VARCHAR(45) NOT NULL,
	PRIMARY KEY(idDepartamento)
);

CREATE TABLE empleados (
	idEmpleado INT AUTO_INCREMENT NOT NULL,
    nombreEmpleado VARCHAR(45) NOT NULL,
    primerApellidoEmpleado VARCHAR(45) NOT NULL,
    segundoApellidosEmpleado VARCHAR(45) NOT NULL,
    cargoEmpleado VARCHAR(45) NOT NULL,
    dniEmpleado VARCHAR(9) UNIQUE, 
    PRIMARY KEY(idEmpleado)
);

CREATE TABLE historico (
	idDepartamentoFK INT,
	idEmpleadoFK INT,
    cargoEmpleado VARCHAR(45) NOT NULL,
    fechaDesde DATE NOT NULL,
    fechaHasta DATE NOT NULL,
    PRIMARY KEY(idDepartamentoFK, idEmpleadoFK),
    FOREIGN KEY(idDepartamentoFK) REFERENCES departamentos(idDepartamento),
    FOREIGN KEY(idEmpleadoFK) REFERENCES empleados(idEmpleado)
);