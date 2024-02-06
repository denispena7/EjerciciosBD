CREATE DATABASE conversiones CHARSET utf8mb4 COLLATE utf8mb4_spanish2_ci;
USE conversiones;

CREATE TABLE tabla (
	idTabla INT(11) AUTO_INCREMENT NOT NULL,
    campoEntero INT(11),
    campoDecimal DECIMAL(10,2),
    campoDecimal2 DECIMAL(10,2),
    campoFecha DATE,
    campoHora TIME,
    PRIMARY KEY(idTabla) 
);

INSERT INTO tabla VALUES(NULL, 1, 1.11, 1.11, '2015-08-05', '19:22:22'), (NULL, 2, 2.22, 2.22, '2015-08-05', '20:22:23');

ALTER TABLE tabla CHANGE campoEntero campoEntero DECIMAL(10,2);

ALTER TABLE tabla CHANGE campoDecimal campoDecimal INT(11);

ALTER TABLE tabla CHANGE campoFecha campoFecha VARCHAR(10);

ALTER TABLE tabla CHANGE campoFecha campoFecha DATE;
SELECT * FROM tabla;
DESC tabla;