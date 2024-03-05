-- Consultas BD
USE empresa;

SELECT
	* -- Qué campos quiero mostrar
FROM
	empleados; -- De dónde saco la información
    
-- Ejemplo 1: Sacar solamente el nombre de los empleados
SELECT
	nombreEmpleado
FROM
	empleados;
    
-- Ejemplo 2: Sacar el nombre con un alias
SELECT
	nombreEmpleado AS 'Nombre del empleado'
FROM 
	empleados;
    
-- Ejemplo 3: Sacar el nombre y su salario
SELECT
	nombreEmpleado AS 'Nombre del empleado',  salarioEmpleado AS 'Salario del empleado'
FROM
	empleados;
    
-- Ejemplo 4: Sacar el nombre y su salario con €
SELECT
	nombreEmpleado AS 'Nombre del empleado', 
    CONCAT(salarioEmpleado, ' €') AS 'Salario del empleado'
FROM
	empleados;
    
-- Ejemplo 5: Sacar el id, el nombre y el salario
SELECT
	idEmpleado AS 'Código Empleado',
    nombreEmpleado AS 'Nombre del empleado',
    CONCAT(salarioEmpleado, ' €') AS 'Salario del empleado'
FROM
	empleados;
    
-- Ejemplo 6: Sacar el id, el nombre y el salario ordenando por el nombre de empleado
SELECT
	idEmpleado AS 'Código Empleado',
    nombreEmpleado AS 'Nombre del empleado',
    CONCAT(salarioEmpleado, ' €') AS 'Salario del empleado'
FROM
	empleados
ORDER BY nombreEmpleado ASC;
-- ORDER BY 2;		Se refiere al segundo campo de la selección realizada 


-- Ejemplo 7: Sacar el id, el nombre y el salario ordenando por el salario
-- Ejemplo 8: Sacar el nombre y el salario ordenando de mayor a menor
SELECT
	idEmpleado AS 'Código Empleado',
    nombreEmpleado AS 'Nombre del empleado',
    CONCAT(salarioEmpleado, ' €') AS 'Salario del empleado'
FROM
	empleados
ORDER BY 3;

-- Ejemplo 9: Sacar el nombre de los empleados que cobren más de 150
SELECT
	nombreEmpleado AS 'Nombre del Empleado'
FROM
	empleados
WHERE
	salarioEmpleado > 1500
ORDER BY 1;