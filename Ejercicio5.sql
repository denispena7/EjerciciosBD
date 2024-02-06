-- Ejercicio 5
-- Crear la BD
CREATE DATABASE ejercicio5 CHARSET utf8mb4 COLLATE utf8mb4_spanish2_ci;

-- Activar la BD
USE ejercicio5;

-- Crear la tabla personas
CREATE TABLE personas (
    idPersona INT AUTO_INCREMENT,
    dniPersona VARCHAR(9),
    ombrePersona VARCHAR(45),
    primerApellidoPersona VARCHAR(45),
    segundoApellidoPersona VARCHAR(45),
    telefonoPersona VARCHAR(9),
    correoElectronicoPersona VARCHAR(100),
    direccionPersona VARCHAR(100),
    PRIMARY KEY (idPersona)
);

-- Crear la tabla animales
CREATE TABLE animales (
	idAnimal INT AUTO_INCREMENT,
    microchipAnimal DECIMAL(20,0) NOT NULL,
    nombreAnimal VARCHAR(45) NOT NULL, 
    razaAnimal VARCHAR(45),
    idPersonaFK INT,
    PRIMARY KEY(idAnimal),
    FOREIGN KEY (idPersonaFK) REFERENCES personas(idPersona)
);