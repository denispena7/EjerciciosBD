-- Crear la BD
CREATE DATABASE ejercicio4 CHARSET utf8mb4 COLLATE utf8mb4_spanish2_ci;

-- Activar la BD
USE ejercicio4;

-- Crear tabla personas
CREATE TABLE personas (
	idPersona INT AUTO_INCREMENT NOT NULL,
    nombrePersona VARCHAR(45) NOT NULL,
    apellidosPersona VARCHAR(45) NOT NULL,
    fechaNacimientoPersona DATE,
    PRIMARY KEY (idPersona)
);

-- Crear tabla matrimonios
CREATE TABLE matrimonios (
	idMatrimonio INT AUTO_INCREMENT NOT NULL,
    idPersona1FK INT,
    idPersona2FK INT,
    fechaMatrimonio DATE NOT NULL,
    PRIMARY KEY (idMatrimonio),
    FOREIGN KEY (idPersona1FK) REFERENCES personas (idPersona),
    FOREIGN KEY (idPersona2FK) REFERENCES personas (idPersona)
);

SELECT * FROM matrimonios;