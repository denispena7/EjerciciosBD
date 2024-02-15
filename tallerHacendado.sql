CREATE DATABASE hacendado CHARSET utf8mb4 COLLATE utf8mb4_spanish2_ci;

USE hacendado;

CREATE TABLE productos (
	idProducto INT AUTO_INCREMENT NOT NULL,
    descripcionProducto VARCHAR(100) NOT NULL,
    precioProducto DECIMAL(10,2) NOT NULL,
    ivaProducto DECIMAL(5,2) NOT NULL,
    stockProducto INT NOT NULL,
    PRIMARY KEY (idProducto)
);

SELECT * FROM productos;
TRUNCATE TABLE productos;

-- Crear usuario cajero en localhost con clave Studium2023;
CREATE USER 'cajero'@'localhost' IDENTIFIED BY 'Studium2023;';
SELECT host, user FROM mysql.user;

-- Otorgar permisos de datos sobre productos de hacendado
GRANT INSERT, SELECT, DELETE, UPDATE ON hacendado.productos TO 'cajero'@'localhost';
SHOW GRANTS FOR 'cajero'@'localhost';

-- Backup
