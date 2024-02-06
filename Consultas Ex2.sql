-- Insertar datos en ejercicio2
-- Insertar datos en continentes
INSERT INTO continentes VALUES(null, 'Asia'), (null, 'Europa'), (null, 'América'), (null, 'Oceanía');
SELECT * FROM continentes;

-- Insertar datos en paises
INSERT INTO paises VALUES(null, 'Nigeria', 1), (null, 'China', 2), (null, 'Alemania', 3), (null, 'Estados Unidos', 4), (null, 'Australia', 5);
SELECT * FROM paises;

-- Insertar datos en ciudades
INSERT INTO ciudades VALUES(NULL, 'Lagos', '1967-05-27', 1, 1), (null, 'Beijin', '1940-03-25', 	1, 2), (null, 'Berlin', '1920-06-20', 1, 3), (null, 'Washingtong', '1920-03-15', 1, 4), (null, 'Sydney', '1910-04-17', 1, 5);
SELECT * FROM ciudades;

-- Modificar un registro
UPDATE continentes SET nombreContinente = 'áfrica' WHERE idContinente = 1;
UPDATE continentes SET nombreContinente = 'asia' WHERE idContinente = 2;
UPDATE continentes SET nombreContinente = 'europa' WHERE idContinente = 3;
UPDATE continentes SET nombreContinente = 'américa' WHERE idContinente = 4;
UPDATE continentes SET nombreContinente = 'oceanía' WHERE idContinente = 5;
UPDATE continentes SET nombreContinente = 'continentes' WHERE idContinente = 8;

-- Borrar registros
DELETE FROM continentes WHERE idContinente = 8;