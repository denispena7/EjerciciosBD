-- Ejercicio 2
-- Crear la BD
CREATE DATABASE ejercicio2;

-- Activar la BD
USE ejercicio2;

-- Crear la tabla continentes
CREATE TABLE continentes (
	idContinente INT AUTO_INCREMENT NOT NULL,
    nombreContinente VARCHAR(45) NOT NULL,
    PRIMARY KEY (idContinente)
);

-- Crear la tabla paises
CREATE TABLE paises (
	idPais INT AUTO_INCREMENT NOT NULL,
    nombrePais VARCHAR(45) NOT NULL,
    idContinenteFK INT,
    PRIMARY KEY (idPais),
    FOREIGN KEY (idContinenteFK) REFERENCES continentes (idContinente)
);

-- Crear la tabla ciudades
CREATE TABLE ciudades (
	idCiudad INT AUTO_INCREMENT NOT NULL,
    nombreCiudad VARCHAR(45) NOT NULL,
    esCapital BIT(1),
    idPaisFK INT,
    PRIMARY KEY (idCiudad),
    FOREIGN KEY (idPaisFK) REFERENCES paises (idPais)
);

ALTER TABLE ciudades ADD fechaFundacionCiudad DATE NOT NULL AFTER nombreCiudad;