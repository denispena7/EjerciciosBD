-- Ejercicio 1
-- Crear la BD
CREATE DATABASE ejercicio1;

-- Activar la BD
USE ejercicio1;

-- Crear la tabla ciudades
CREATE TABLE ciudades (
	idCiudad INT AUTO_INCREMENT NOT NULL,
    nombreCiudad VARCHAR(45),
    PRIMARY KEY (idCiudad)
);

-- Crear la tabla monumentos
CREATE TABLE monumentos (
	idMonumento INT AUTO_INCREMENT NOT NULL,
    nombreMonumento VARCHAR(45) NOT NULL,
    fechaConstruccionMonumento VARCHAR(45) NOT NULL,
    idCiudadFK INT,
    PRIMARY KEY (idMonumento),
    FOREIGN KEY (idCiudadFK) REFERENCES ciudades(idCiudad)
);