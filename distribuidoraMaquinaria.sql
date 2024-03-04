-- Creacion BD
CREATE DATABASE distribuidoraMaquinaria CHARSET utf8mb4 COLLATE utf8mb4_spanish2_ci;

-- Activar BD
USE distribuidoraMaquinaria;

-- Tabla sedes
CREATE TABLE sedes (
	idSede INT AUTO_INCREMENT NOT NULL,
    nombreSede VARCHAR(45) NOT NULL,
    ciudadSede VARCHAR(45) NOT NULL,
    cpSede INT NOT NULL,
    paisSede VARCHAR(45) NOT NULL,
    PRIMARY KEY (idSede)
);

-- Tabla usuarios
CREATE TABLE usuarios (
	idUsuario INT AUTO_INCREMENT NOT NULL,
    nombreUsuario VARCHAR(45) NOT NULL,
    claveUsuario VARCHAR(256) NOT NULL,
    tipoUsuario TINYINT NOT NULL,
    PRIMARY KEY (idUsuario)
);

-- Tabla maquinas
CREATE TABLE maquinas (
	idMaquina INT AUTO_INCREMENT NOT NULL,
    descripcionMaquina VARCHAR(45) NOT NULL,
    marcaMaquina VARCHAR(45) NOT NULL,
    modeloMaquina VARCHAR(45) NOT NULL,
    tipoMaquina VARCHAR(45) NOT NULL,
    fechaFabricacionMaquina DATE NOT NULL,
    precioMaquina DECIMAL(10,2) NOT NULL,
    idSedeFK INT,
    PRIMARY KEY (idMaquina),
    FOREIGN KEY (idSedeFK) REFERENCES sedes (idSede)
);

DESCRIBE maquinas;

-- Tabla clientes 
CREATE TABLE clientes (
	idCliente INT AUTO_INCREMENT NOT NULL,
    nombreCliente VARCHAR(45) NOT NULL,
    apellidosCliente VARCHAR(45) NOT NULL,
    dniCliente VARCHAR(9),
    telefonoCliente INT NOT NULL,
    correoElectronicoCliente VARCHAR(100) NOT NULL,
    direccionCliente VARCHAR(100) NOT NULL,
    PRIMARY KEY (idCliente)
);

-- Tabla compra_maquinas
CREATE TABLE compra_maquinas (
	idMaquinaFK INT,
    idClienteFK INT,
    fechaCompra DATE NOT NULL,
    cantidadComprada INT NOT NULL,
    PRIMARY KEY (idMaquinaFK, idClienteFK),
    FOREIGN KEY (idMaquinaFK) REFERENCES maquinas (idMaquina),
    FOREIGN KEY (idClienteFK) REFERENCES clientes (idCliente)
);

























