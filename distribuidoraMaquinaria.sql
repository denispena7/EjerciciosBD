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

-- Inserción en tabla sedes
INSERT INTO sedes VALUES (NULL, 'Sede ESP', 'Madrid',  28001, 'España'), (NULL, 'Sede FR', 'Paris',  70123, 'Francia'), 
(NULL, 'Sede POR', 'Lisboa',  1000-001, 'Portugal'), (NULL, 'Sede ALE', 'Berlin',  10115, 'Alemania'), (NULL, 'Sede ITA', 'Roma',  00100, 'Italia');

-- Mostrar los datos de la tabla sedes
SELECT * FROM sedes;

-- Inserción en tabla maquinas
INSERT INTO maquinas VALUES (NULL, 'Compactadora de Suelo', 'Bomag', 'BW 177 D-5', 'Compactación', '2023-03-10', 65000.00, 3), 
(NULL, 'Dumper', 'Volvo', 'A25G', 'Transporte', '2020-11-28', 200000.00, 2), (NULL, 'Mezcladora de concreto', 'Wacker Neuson', 'EZ 17', 'Concreto', '2022-12-05', 25000.00, 4), 
(NULL, 'Bulldozer', 'Komatsu', 'D61EX-24', 'Nivelación', '2021-07-14', 180000.00, 2);

-- Mostrar los datos de la tabla maquinas
SELECT * FROM maquinas;

-- Inserción en tabla maquinas
INSERT INTO clientes VALUES (NULL, 'Juan', 'García Pérez', '12345678A', '923456789', 'juangarcia@gmail.com', 'Calle Principal 1'), 
(NULL, 'María', 'López Rodríguez', '87654321B', '987654321', 'marialopez@gmail.com', 'Avenida Central 2'), 
(NULL, 'Pedro', 'Martínez Gómez', '56789012C', '941852963', 'pedromartinez@gmail.com', 'Plaza Principal 3'), 
(NULL, 'Ana', 'Fernández García', '90123456D', '969258147', 'anafernandez@gmail.com', 'Calle Secundaria 4'),
(NULL, 'David', 'Pérez Martín', '34567890E', '959264738', 'davidperez@gmail.com', 'Paseo del Parque 5'),
(NULL, 'Laura', 'González Sánchez', '78901234F', '957159246', 'lauragonzalez@gmail.com', 'Carrera Central 6'),
(NULL, 'Carlos', 'Sánchez Rodríguez', '23456789G', '923789456', 'carlossanchez@gmail.com', 'Avenida de la Paz 7'),
(NULL, 'Elena', 'Ruiz Martínez', '67890123H', '987123654', 'elenaruiz@gmail.com', 'Plaza de la Libertad 8'),
(NULL, 'Miguel', 'Hernández López', '01234567I', '956987123', 'miguelhernandez@gmail.com', 'Calle Mayor 9'),
(NULL, 'Sara', 'Díaz Pérez', '45678901J', '987654321', 'saradiaz@gmail.com', 'Avenida del Sol 10');

-- Mostrar los datos de la tabla clientes
SELECT * FROM clientes;

-- Inserción en tabla compra_maquinas
INSERT INTO compra_maquinas VALUES (2, 3, '2020-06-12', 1), (5, 6, '2019-03-05', 1), (9, 1, '2017-04-14', 1), (1, 5, '2021-01-30', 1), (7, 7, '2023-11-29', 1);

-- Mostrar los datos de la tabla compra_clientes
SELECT * FROM compra_maquinas;

-- Inserción en tabla usuarios
-- Contraseña: Studium2024;
INSERT INTO usuarios VALUES (NULL, 'Admin', 'd6aa953427c0551c076f1f9d595985bd1fbd6b1f8b642806ff683ee5b81cb966', 1), 
(NULL, 'Basic', 'd6aa953427c0551c076f1f9d595985bd1fbd6b1f8b642806ff683ee5b81cb966', 2);

-- Mostrar la tabla usuarios
SELECT * FROM usuarios;

-- Crear usuario de conexión
CREATE USER 'Administrador'@'localhost' IDENTIFIED BY 'Studium2024;';
-- Otorgar permisos
GRANT SELECT, INSERT, UPDATE, DELETE ON distribuidoramaquinaria.* TO 'Administrador'@'localhost';
FLUSH PRIVILEGES;
-- Mostrar permisos
SHOW GRANTS FOR 'Administrador'@'localhost';

SELECT host, user FROM mysql.user;