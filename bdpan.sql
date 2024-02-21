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
    categoriaInventario VARCHAR(45) NOT NULL,
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

-- Mostrar las tablas
SHOW TABLES;

-- Insertar registros con la sentencia INSERT
INSERT INTO departamentos VALUES (NULL, 'Materias primas'),(NULL, 'Producción'),(NULL, 'Embalaje'),
(NULL, 'Ventas'),(NULL, 'Administración y Finanzas'),(NULL, 'Servicio al cliente');

-- Mostrar la tabla
SELECT * FROM departamentos;
SELECT * FROM empleados;