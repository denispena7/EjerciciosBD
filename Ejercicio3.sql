-- Crear la BD
CREATE DATABASE ejercicio3 CHARSET utf8mb4 COLLATE utf8mb4_spanish2_ci;

-- Activar la BD
USE ejercicio3;

-- Crear tabla asignaturas
CREATE TABLE asignaturas (
	idAsignatura INT AUTO_INCREMENT NOT NULL,
    nombreAsignatura VARCHAR(45) NOT NULL,
    cursoAsignatura INT NOT NULL,
    PRIMARY KEY (idAsignatura)
);

-- Crear tabla ciclos
CREATE TABLE ciclos (
	idCiclo INT AUTO_INCREMENT NOT NULL,
    nombreCiclo VARCHAR(45) NOT NULL,
    PRIMARY KEY (idCiclo)
);

-- Crear tabla pertenencias
CREATE TABLE pertenencias (
	idPertenencia INT AUTO_INCREMENT NOT NULL,
    idAsignaturaFK INT,
    idCicloFK INT,
    PRIMARY KEY (idPertenencia),
    FOREIGN KEY (idAsignaturaFK) REFERENCES asignaturas (idAsignatura),
    FOREIGN KEY (idCicloFK) REFERENCES ciclos (idCiclo)
);