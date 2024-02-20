CREATE DATABASE gestion CHARSET utf8mb4 COLLATE utf8mb4_spanish2_ci;

USE gestion;

CREATE TABLE departamentos (
    idDepartamento INT AUTO_INCREMENT,
    nombreDepartamento VARCHAR(45),
    localidadDepartamento VARCHAR(45),
    PRIMARY KEY (idDepartamento)
); 

CREATE TABLE empleados (
    idEmpleado INT AUTO_INCREMENT,
    nombreEmpleado VARCHAR(45),
    apellidosEmpleado VARCHAR(45),
    cargoEmpleado VARCHAR(45),
    salarioEmpleado DECIMAL(7 , 2 ),
    idDepartamentoFK INT,
    PRIMARY KEY (idEmpleado),
    FOREIGN KEY (idDepartamentoFK) REFERENCES departamentos (idDepartamento)
);

INSERT INTO departamentos VALUES (null,'VENTAS','FLORIDA'); 
INSERT INTO departamentos (localidadDepartamento, nombreDepartamento) VALUES
('CHICAGO', 'CONTABILIDAD'); 
INSERT INTO departamentos (localidadDepartamento, nombreDepartamento) VALUES
('CHICAGO', 'GESTIÓN'); 

INSERT INTO empleados VALUES(null, 'Edwards', 'Blake', 'Gerente', 9000, 3);
INSERT INTO empleados VALUES(null, 'Thomas', 'Scott', 'Analista', 4000, 3);
INSERT INTO empleados VALUES(null, 'John', 'King', 'Comercial', 2000, 1);
INSERT INTO empleados VALUES(null, 'Nuria', 'Turner', 'Contable', 1500, 2);
INSERT INTO empleados VALUES(null, 'Ellen', 'Smith', 'Contable', 1500, 2);
INSERT INTO empleados VALUES(null, 'Susan', 'Ward', 'Comercial', 2000, 1);

CREATE TABLE usuarios (
    idUsuario INT AUTO_INCREMENT,
    nombreUsuario VARCHAR(45) NOT NULL,
    claveUsuario VARCHAR(256) NOT NULL,
    tipoUsuario TINYINT NOT NULL DEFAULT 0,
    PRIMARY KEY (idUsuario)
);

INSERT INTO usuarios VALUES (null, 'Admin','c1c224b03cd9bc7b6a86d77f5dace40191766c485cd55dc48caf9ac873335d6f', 0), 
(null, '0e35f6e9742e074dfd62e874de3c242c6d9b64c21bf9afbaf3d11f05579b4495', 'Basic', 1);

SELECT * FROM departamentos;
SELECT * FROM empleados;