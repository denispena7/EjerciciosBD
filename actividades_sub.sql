CREATE DATABASE actividades_subacuaticas CHARSET utf8mb4 COLLATE utf8mb4_spanish2_ci;
USE actividades_subacuaticas;

CREATE TABLE clientes (
	idCliente INT AUTO_INCREMENT NOT NULL,
    nombreCliente VARCHAR(45) NOT NULL,
    apellidosCliente VARCHAR(45) NOT NULL,
    dniCliente VARCHAR(9),
    telefonoCliente INT NOT NULL,
    correoElectronicoCliente VARCHAR(100) NOT NULL,
    PRIMARY KEY (idCliente)
);

CREATE TABLE actividades (
	idActividad INT AUTO_INCREMENT NOT NULL,
    descripcionActividad VARCHAR(100) NOT NULL,
    precioActividad DECIMAL(6,2) NOT NULL,
    duracionActividad TIME NOT NULL,
    nivelRequeridoActividad VARCHAR(45) NOT NULL,
    PRIMARY KEY (idActividad)
);

CREATE TABLE facturas (
	idFactura INT AUTO_INCREMENT NOT NULL,
    ivaFactura DECIMAL(4,2) NOT NULL,
    importeTotalFactura DECIMAL(8,2) NOT NULL,
    fechaFactura DATE NOT NULL,
    PRIMARY KEY (idFactura)
);

CREATE TABLE contrataciones (
	idClienteFK INT,
    idActividadFK INT,
    fechaContratacionActividad DATE,
    PRIMARY KEY (idClienteFK, idActividadFK),
    FOREIGN KEY (idClienteFK) REFERENCES clientes (idCliente),
    FOREIGN KEY (idActividadFK) REFERENCES actividades (idActividad)
);

CREATE TABLE generar_facturas (
	idFacturaFK INT,
    idActividadFK INT,
    PRIMARY KEY (idFacturaFK, idActividadFK),
    FOREIGN KEY (idFacturaFK) REFERENCES facturas (idFactura),
    FOREIGN KEY (idActividadFK) REFERENCES actividades (idActividad)
);

INSERT INTO clientes VALUES (NULL, 'Mario', 'Medrano', 'Z1234567X', 605205305, 'mario@gmail.com'), 
(NULL, 'Josué', 'Pérez', 'Z7654321X', 611235987, 'josuepz@gmail.com');

SELECT * FROM clientes;