-- Taller Importación - Exportación
-- Crear la base de datos
CREATE DATABASE tallerImpExp CHARSET utf8mb4 COLLATE utf8mb4_spanish2_ci;

-- Activarlaa
USE tallerImpExp;

-- Crear la tabla 'coches'
CREATE TABLE coches (
	numeroMatriculaCoche VARCHAR(10) NOT NULL,
    marcaCoche VARCHAR(45),
    modeloCoche VARCHAR(45),
    colorCoche VARCHAR(45),
    fechaCompra DATE,
	dniPersonaFK VARCHAR(9),
    PRIMARY KEY (numeroMatriculaCoche)
);

SELECT * FROM coches;
DESC coches;

-- Poblar tablas
-- Insertar datos con INSERT INTO (x2)
INSERT INTO coches VALUES('0123457CMJ', 'BMW', 'BMW iX M60', 'Gris', '2021-07-15', 1),('7654321JMC', 'Hyundai', 'i30 CW', 'Gris', '2022-06-14', 2);

-- Insertar datos escribiendo y Apply
-- Insertar datos desde Excel