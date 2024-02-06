CREATE DATABASE ejercicio7 CHARSET utf8mb4 COLLATE utf8mb4_spanish2_ci;
USE ejercicio7;

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
    idDepartamentoFK INT,
    PRIMARY KEY(idEmpleado),
    FOREIGN KEY(idDepartamentoFK) REFERENCES departamentos(idDepartamento)
);

-- Modificar TABLAS
-- Añadir campo nuevo
-- Al final
ALTER TABLE empleados ADD direccionEmpleado VARCHAR(100) NOT NULL;

-- Al principio
ALTER TABLE empleados ADD campito INT FIRST;

-- Detrás de un campo existente
ALTER TABLE empleados ADD movilEmpleado VARCHAR(9) AFTER cargoEmpleado;

-- Modificar campos existentes
-- Cambiar un campo de nombre
ALTER TABLE empleados CHANGE campito nuevoCampo INT;

-- Cambiar un campo de tipo
ALTER TABLE empleados CHANGE nuevoCampo nuevoCampo VARCHAR(10);

-- Cambiar un campo de tipo y de nombre
ALTER TABLE empleados CHANGE nuevoCampo campito INT;

-- Eliminar un campo
ALTER TABLE empleados DROP campito;

-- Renombrar una tabla
RENAME TABLE empleados TO empleado;

-- Eliminar una tabla
DROP TABLE tablita;

-- Borrar solo datos
TRUNCATE TABLE empleado;