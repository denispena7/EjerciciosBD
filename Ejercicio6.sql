CREATE DATABASE ejercicio6 CHARSET utf8mb4 COLLATE utf8mb4_spanish2_ci;
USE ejercicio6;

CREATE TABLE personas (
	idPersona INT AUTO_INCREMENT NOT NULL,
    dniPersona VARCHAR(9) NOT NULL,
    nombrePersona VARCHAR(45) NOT NULL,
    primerApellidoPersona VARCHAR(45) NOT NULL,
    segundoApellidoPersona VARCHAR(45) NOT NULL,
    telefonoPersona VARCHAR(9) NOT NULL,
    correoElectronicoPersona VARCHAR(100) NOT NULL,
    direccionPersona VARCHAR(100) NOT NULL,
    PRIMARY KEY (idPersona)
);

CREATE TABLE animales (
	idAnimal INT AUTO_INCREMENT,
    microchipAnimal DECIMAL(20,0) NOT NULL,
    nombreAnimal VARCHAR(45) NOT NULL, 
    razaAnimal VARCHAR(45),
    PRIMARY KEY(idAnimal)
);

CREATE TABLE historico (
	idAnimalFK INT,
    idPersonaFK INT,
    fechaDesde DATE NOT NULL,
    fechaHasta DATE NOT NULL,
    PRIMARY KEY(idAnimalFK, idPersonaFK),
    FOREIGN KEY(idAnimalFK) REFERENCES animales(idAnimal),
    FOREIGN KEY(idPersonaFK) REFERENCES personas(idPersona)
);