-- Creación de la BD
CREATE DATABASE bdpan CHARSET utf8mb4 COLLATE utf8mb4_spanish2_ci;

-- Activación de la BD
USE bdpan;

-- Creación de la tabla departamentos
CREATE TABLE departamentos (
	idDepartamento INT AUTO_INCREMENT NOT NULL,
    nombreDepartamento VARCHAR(45) NOT NULL,
    PRIMARY KEY (idDepartamento)
);

-- Creación de la tabla empleados
CREATE TABLE empleados (
	idEmpleado INT AUTO_INCREMENT NOT NULL,
    nombreEmpleado VARCHAR(45) NOT NULL,
    apellidosEmpleado VARCHAR(45) NOT NULL,
    puestoEmpleado VARCHAR(45) NOT NULL,
    dniEmpleado VARCHAR(45),
    idDepartamentoFK INT,
    PRIMARY KEY (idEmpleado),
    FOREIGN KEY (idDepartamentoFK) REFERENCES departamentos (idDepartamento)
);

-- Creación de la tabla inventario
CREATE TABLE inventario (
	idInventario INT AUTO_INCREMENT NOT NULL,
    descripcionInventario VARCHAR(45) NOT NULL,
    ubicacionInventario VARCHAR(45) NOT NULL,
    idDepartamentoFK INT,
    PRIMARY KEY (idInventario),
    FOREIGN KEY (idDepartamentoFK) REFERENCES departamentos (idDepartamento)
);

-- Creación de la tabla productos
CREATE TABLE productos (
	idProducto INT AUTO_INCREMENT NOT NULL,
    descripcionProducto VARCHAR(45) NOT NULL,
    stockProducto INT NOT NULL,
    ivaProduto DECIMAL(4,2) NOT NULL,
    precioProducto DECIMAL(5,2) NOT NULL,
    idInventarioFK INT,
    PRIMARY KEY (idProducto),
    FOREIGN KEY (idInventarioFK) REFERENCES inventario (idInventario)
);

-- Creación de la tabla productos_recomiendan
CREATE TABLE productos_recomiendan (
	idProductoFK1 INT,
    idProductoFK2 INT,
    categoria VARCHAR(45) NOT NULL,
    ingredientePrincipal VARCHAR(45) NOT NULL,
    PRIMARY KEY (idProductoFK1, idProductoFK2),
    FOREIGN KEY (idProductoFK1) REFERENCES productos (idProducto),
    FOREIGN KEY (idProductoFK2) REFERENCES productos (idProducto)
);

-- Creación de la tabla clientes
CREATE TABLE clientes (
	idCliente INT AUTO_INCREMENT NOT NULL,
    telefonoCliente INT NOT NULL,
    correoElectronicoCliente VARCHAR(100) NOT NULL,
    localidadCliente VARCHAR(45) NOT NULL,
    cpCliente INT NOT NULL,
    PRIMARY KEY (idCliente)
);

-- Creación de la tabla compra_productos
CREATE TABLE compra_productos (
	idClienteFK INT,
    idProductoFK INT,
    cantidadProductos INT NOT NULL,
    PRIMARY KEY (idClienteFK, idProductoFK),
    FOREIGN KEY (idClienteFK) REFERENCES clientes (idCliente),
	FOREIGN KEY (idProductoFK) REFERENCES productos (idProducto)
);

-- Creación de la tabla personas
CREATE TABLE personas (
	idClienteFK INT,
    nombrePersona VARCHAR(45) NOT NULL,
    apellidosPersona VARCHAR(45) NOT NULL,
    dniPersona VARCHAR(9),
    PRIMARY KEY (idClienteFK),
    FOREIGN KEY (idClienteFK) REFERENCES clientes (idCliente)
);

-- Creación de la tabla negocios_suministrados
CREATE TABLE negocios_suministrados (
	idClienteFK INT,
    denominacionNegocio VARCHAR(45) NOT NULL,
    nifNegocio VARCHAR(9) NOT NULL,
    PRIMARY KEY (idClienteFK),
    FOREIGN KEY (idClienteFK) REFERENCES clientes (idCliente)
);


-- Insertar registros con la sentencia INSERT
INSERT INTO departamentos VALUES (NULL, 'Materias primas'),(NULL, 'Producción'),(NULL, 'Embalaje'),
(NULL, 'Ventas'),(NULL, 'Administración y Finanzas'),(NULL, 'Servicio al cliente');

-- Mostrar tabla departamentos
SELECT * FROM departamentos;


-- Insertar registros en la tabla productos
INSERT INTO productos VALUES (NULL, 'Pan blanco', 200, 0.05, 0.30, 2), 
(NULL, 'Tarta de queso', 120, 0.05, 3.50, 2), (NULL, 'Empanada vegana', 150, 0.05, 1.20, 4),
(NULL, 'Roscón de reyes', 100, 0.05, 6.50, 5), (NULL, 'Donuts', 300, 0.05, 0.90, 2), 
(NULL, 'Tarta de frutas veganas', 250, 0.05, 1.10, 4), (NULL, 'Monas de pascua', 300, 0.05, 0.80, 5);

-- Mostrar la tabla productos con los registros
SELECT * FROM productos;


-- Insertar registros en la tabla productos recomiendan
INSERT INTO productos_recomiendan VALUES (2, 5, 'Pasteles y tartas', 'Azúcar'),
(3, 6, 'Productos veganos', 'Base de masa vegetal'), (4, 7, 'Producto de temporada', 'Frutas');

-- Mostrar la tabla productos_recomiendan
SELECT * FROM productos_recomiendan;


-- Insertar registros en la tabla clientes
INSERT INTO clientes VALUES (NULL, 605401230, 'cafeterialarosaleda@gmail.com', 'Sevilla', 41004),
(NULL, 611258498, 'frangarz@gmail.com', 'Dos Hermanas', 41700), (NULL, 641089357, 'bareljuncal@gmail.com', 
'Sevilla', 41006), (NULL, 643258147, 'alvarognz@gmail.com', 'Carmona', 41410), (NULL, 697541328, 'cafeterianervion@gmail.com',
'Utrera', 41710), (NULL, 654321789, 'josuequino@gmail.com', 'Alcalá de Guadaira', 41500);

-- Mostrar tabla clientes
SELECT * FROM clientes;


-- Insertar registros en la tabla compra_productos
INSERT INTO compra_productos VALUES (1, 1, 50), (3, 1, 40), (2, 4, 2), (4, 6, 3);

-- Mostrar tabla compra_productos
SELECT * FROM compra_productos;


-- Insertar registros en la tabla personas
INSERT INTO personas VALUES (2, 'Francisco', 'García', '35796421Z'), (4, 'Alvaro', 'González', '98745612Z'),
(6, 'Josué', 'Quijano', '96385274Z');

-- Motrar tabla personas
SELECT * FROM personas;


-- Insertar registros en la tabla negocios_suministrados
INSERT INTO negocios_suministrados VALUES (1, 'Cafetería La Rosaleda', 'Z9296548L'), (3, 'Bar El Juncal', 'Z9514638M'),
(5, 'Cafetería Nervión', 'Z9638527N');

-- Mostrar tabla negocios_suministrados
SELECT * FROM negocios_suministrados;

-- Mostrar las tablas
SHOW TABLES;

-- Mostrar usuarios
SELECT host, user FROM mysql.user;

-- Creación de usuarios
-- Usuario adminPanaderia
CREATE USER 'adminPanaderia'@'localhost' IDENTIFIED BY 'Studium2023;';
-- Otorgar permisos al usuario adminPanaderia
GRANT CREATE, ALTER, DROP, INSERT, DELETE, UPDATE, SELECT ON bdpan.* TO 'adminPanaderia'@'localhost';
FLUSH PRIVILEGES;

-- Usuario gerentePanaderia
CREATE USER 'gerentePanaderia'@'localhost' IDENTIFIED BY 'Studium2023;';
-- Otorgar permisos al usuario gerentePanaderia
GRANT INSERT, DELETE, UPDATE, SELECT ON bdpan.* TO 'gerentePanaderia'@'localhost';
FLUSH PRIVILEGES;

-- Usuario administrativoPanaderia
CREATE USER 'administrativoPanaderia'@'localhost' IDENTIFIED BY 'Studium2023;';
-- Otorgar privilegios a administrativoPanaderia
GRANT SELECT, INSERT ON bdpan.inventario TO 'administrativoPanaderia'@'localhost';
GRANT SELECT, INSERT ON bdpan.productos TO 'administrativoPanaderia'@'localhost';
FLUSH PRIVILEGES;