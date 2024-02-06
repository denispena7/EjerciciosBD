-- Modificaciones Ejercicio3
USE ejercicio3;
-- Tabla asignaturas
-- Meter un campo nuevo al final llamado abreviaturaAsignatura VARCHAR(3)
ALTER TABLE asignaturas ADD abreviaturaAsignatura VARCHAR(3);

-- Modificar el tipo de nombreAsignatura a VARCHAR(10)
ALTER TABLE asignaturas CHANGE nombreAsignatura nombreAsignatura VARCHAR(10);

-- Meter un campo entre nombre y curso llamado nemoAsignatura de tipo INT
ALTER TABLE asignaturas ADD nemoAsignatura INT AFTER nombreAsignatura;

-- Tabla ciclos
-- Meter fechaInicio
ALTER TABLE ciclos ADD fechaInicio DATE;

-- Meter fechaFin
ALTER TABLE ciclos ADD fechaFin DATE AFTER nombreCiclo;

-- Tabla pertenencias
-- Meter campo duracion de tipo INT
ALTER TABLE pertenencias ADD duracion INT AFTER idPertenencia;