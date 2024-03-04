-- Gestion de Usuarios
SELECT host, user FROM mysql.user;

-- Crear usuarios
-- Desde PC donde está la base de datos (+ seguro)
CREATE USER 'denis'@'localhost' IDENTIFIED BY 'Studium2023;';

-- Desde un PC de la red donde está la base de datos
CREATE USER 'beta'@'192.168.0.167' IDENTIFIED BY 'Studium2023;';

-- Desde cualquier PC dentro de la misma red
CREATE USER 'gamma'@'192.168.0' IDENTIFIED BY 'Studium2023;';

-- Desde cualquier PC de cualquier lugar, inclusive fuera de la red (+ peligroso)
CREATE USER 'alfa'@'%' IDENTIFIED BY 'Studium2023;';

-- Crear usuario que pueda crear otros usuarios
CREATE USER 'root2'@'%' IDENTIFIED BY 'Studium2023;';
GRANT ALL ON *.* TO 'root2'@'%' WITH GRANT OPTION;
-- GRANT ALL ON *.* TO 'root2'@'%' WITH GRANT OPTION WITH MAX_QUERIES_PER_HOUR 5;
-- GRANT ALL ON *.* TO 'root2'@'%' WITH GRANT OPTION WITH MAX_UPDATES_PER_HOUR 5;
-- GRANT ALL ON *.* TO 'root2'@'%' WITH GRANT OPTION WITH MAX_CONNECTIONS_PER_HOUR 5;

-- Ver los permisos de un usuario
SHOW GRANTS FOR 'denis'@'localhost';
SHOW GRANTS FOR 'root2'@'%';

-- QUITAR PERMISOS
REVOKE SELECT ON ejercicio7.empleados FROM 'denis'@'localhost';

-- Eliminar usuarios
DROP USER 'gamma'@'192.168.0';
DROP USER 'beta'@'192.168.0.167';

-- Otorgar permisos
GRANT USAGE ON ejercicio7.empleado TO 'denis'@'localhost';
FLUSH PRIVILEGES;

-- Grupos de permisos:
-- Estructura: CREATE, DROP, ALTER
-- Datos: INSERT, SELECT, DELETE, UPDATE
GRANT SELECT ON ejercicio7.empleado TO 'denis'@'localhost';
FLUSH PRIVILEGES;

GRANT INSERT, SELECT, DELETE, UPDATE ON ejercicio7.empleado TO 'denis'@'localhost';
FLUSH PRIVILEGES;

GRANT CREATE, DROP, ALTER ON ejercicio7.empleado TO 'denis'@'localhost';
FLUSH PRIVILEGES;

GRANT ALL ON ejercicio7.empleado TO 'denis'@'localhost';
FLUSH PRIVILEGES;