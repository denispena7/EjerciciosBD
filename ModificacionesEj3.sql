-- Modificaciones Ejercicio 3
USE ejercicio3;

-- Ciclos: ASIR, DAM, DAW
INSERT INTO ciclos VALUES(NULL, 'DAM', '2024-01-30', '2025-01-30');
INSERT INTO ciclos VALUES(NULL, 'DAW', '2023-01-30', '2024-01-30');
INSERT INTO ciclos VALUES(NULL, 'ASIR', '2022-01-30', '2023-01-30');
SELECT * FROM ciclos;

-- Asignaturas:
-- Redes en 1º ASIR
INSERT INTO asignaturas VALUES(NULL, 'Redes', 1, 1, 'R');
SELECT * FROM asignaturas;

-- Bases de datos en 1º DAM
ALTER TABLE asignaturas CHANGE nombreAsignatura nombreAsignatura VARCHAR(45);
INSERT INTO asignaturas VALUES(NULL, 'Base de datos', 1, 1, 'BD');
SELECT * FROM asignaturas;

-- Sistemas en 1º DAW
INSERT INTO asignaturas VALUES(NULL, 'Sistemas Informáticos', 2, 1, 'SI');
SELECT * FROM asignaturas;
UPDATE asignaturas SET nemoAsignatura = 1 WHERE idAsignatura = 3;

-- Administracion de Sistemas de 2º ASIR
INSERT INTO asignaturas VALUES(NULL, 'Administración de Sistemas', 2, 2, 'AD');
SELECT * FROM asignaturas;

-- Desarrollo Android en 2º DAM
INSERT INTO asignaturas VALUES(NULL, 'Desarrollo Android', 2, 2, 'DA');
SELECT * FROM asignaturas;

-- Desarrollo Web en JAVA en 2º DAW
INSERT INTO asignaturas VALUES(NULL, 'Desarrollo Web', 2, 2, 'DW');
SELECT * FROM asignaturas;

INSERT INTO pertenencias VALUES(NULL, 5, 1, 3);
INSERT INTO pertenencias VALUES(NULL, 6, 2, 1);
INSERT INTO pertenencias VALUES(NULL, 7, 3, 2);
INSERT INTO pertenencias VALUES(NULL, 8, 4, 3);
INSERT INTO pertenencias VALUES(NULL, 9, 5, 1);
INSERT INTO pertenencias VALUES(NULL, 4, 6, 2);
SELECT * FROM pertenencias;

-- Modificar 
-- Eliminar