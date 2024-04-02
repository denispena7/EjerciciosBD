-- Ejercicio 1.1
SELECT
	nombreCentroTrabajo AS 'Centro de Trabajo'
FROM
	centrostrabajo
ORDER BY 1;

-- Ejercicio 1.2
SELECT
	nombreEmpleado AS 'Nombre Empleado'
FROM
	empleados
WHERE idDepartamentoFK = 121
ORDER BY nombreEmpleado;

-- Ejercicio 1.3
SELECT
	*
FROM
	departamentos
WHERE idDepartamento = 121;

-- Ejercicio 1.4
SELECT
	nombreEmpleado AS 'Nombre',
    salarioEmpleado AS 'Salario'
FROM
	empleados
WHERE hijosEmpleado > 3
ORDER BY 1;

-- Ejercicio 1.5
SELECT
	comisionEmpleado AS 'Comisión',
	idDepartamentoFK AS 'Departamento',
    nombreEmpleado AS 'Empleado'
FROM
	empleados
WHERE
	salarioEmpleado < 1900
ORDER BY
	idDepartamentoFK
ASC, 
	comisionEmpleado 
DESC;

	
-- Ejercicio 1.6
SELECT
	nombreDepartamento AS 'Departamento'
FROM
	departamentos
WHERE
	presupuestoDepartamento > 10
ORDER BY
	1;
    
-- Ejercicio 1.7
SELECT
	DISTINCT idDepartamentoFK AS 'Departamento'
FROM
	empleados
WHERE
	salarioEmpleado < 2000
ORDER BY 1;

-- Ejercicio 1.8
SELECT
	DISTINCT comisionEmpleado AS 'Comisión'
FROM
	empleados
WHERE
	idDepartamentoFK = 110;

-- Ejercicio 1.9
SELECT
	nombreDepartamento AS 'Departamento'
FROM
	departamentos
WHERE
	tipoDirectorDepartamento = 'F'
ORDER BY 1;


-- Ejercicio 1.10
SELECT
	nombreEmpleado AS 'Empleado',
    idEmpleado AS '#',
    extensionEmpleado AS 'Extensión'
FROM
	empleados
WHERE
	idDepartamentoFK = 121
ORDER BY 1;

-- Ejercicio 1.11
SELECT
	DISTINCT extensionEmpleado AS 'Extensión'
FROM
	empleados
ORDER BY extensionEmpleado;

-- Ejercicio 1.12
SELECT
	comisionEmpleado AS 'Comisión',
    nombreEmpleado AS 'Empleado',
	salarioEmpleado AS 'Salario'
FROM
	empleados
WHERE
	hijosEmpleado > 3
ORDER BY
	nombreEmpleado;

-- Ejercicio 1.13
SELECT
	CONCAT(salarioEmpleado, ' €') AS 'Salario',
    nombreEmpleado AS 'Empleado'
FROM
	empleados
WHERE
	hijosEmpleado = 0
ORDER BY    
	salarioEmpleado DESC, nombreEmpleado;

USE empresa;
-- Ejercicio 1.14
SELECT
	nombreEmpleado AS 'Nombre Empleado'
FROM
	empleados
WHERE nombreEmpleado LIKE 'MORA%, %'
ORDER BY 1;

-- Ejercicio 1.15
SELECT
	nombreEmpleado AS 'Nombre Empleado'
FROM
	empleados
WHERE nombreEmpleado LIKE '%, VALERIANA%'
ORDER BY 1;

-- Ejercicio 1.16
SELECT
	nombreEmpleado AS 'Nombre Empleado'
FROM
	empleados
WHERE nombreEmpleado LIKE '_______, %'
ORDER BY 1;

-- Ejercicio 1.17
SELECT
	nombreEmpleado AS 'Nombre Empleado'
FROM
	empleados
WHERE
	nombreEmpleado LIKE '______%, %'
ORDER BY 1;

-- Ejercicio 1.18
SELECT
	nombreEmpleado AS 'Nombre Empleado'
FROM
	empleados
WHERE
	nombreEmpleado LIKE '_, %'
    OR nombreEmpleado LIKE '__, %'
    OR nombreEmpleado LIKE '___, %'
ORDER BY 1;
-- WHERE nombreEmpleado NOT LIKE '____%, %';
    
-- Ejercicio 1.19
SELECT
	nombreEmpleado AS 'Nombre Empleado'
FROM
	empleados
WHERE nombreEmpleado LIKE '%EZ, %__O';

-- Ejercicio 1.20
SELECT
	nombreEmpleado AS 'Nombre Empleado',
    salarioEmpleado AS 'Salario',
    fechaIngresoEmpleado AS 'Fecha de ingreso'
FROM
	empleados
WHERE
	fechaIngresoEmpleado > '1988-01-01'
    OR salarioEmpleado < 2000
ORDER BY 3, 1;

-- Ejercicio 1.21
SELECT
	nombreDepartamento AS 'Departamento'
FROM
	departamentos
WHERE 
	nombreDepartamento NOT LIKE 'DIRECCION %'
	AND nombreDepartamento NOT LIKE 'SECTOR %'
ORDER BY 1;

-- Ejercicio 1.22
SELECT
	nombreDepartamento AS 'Nombre Departamento'
FROM
	departamentos
WHERE
	tipoDirectorDepartamento = 'F'
    OR (tipoDirectorDepartamento = 'P' AND presupuestoDepartamento > 5)
    OR idDepartamentoFK IS NULL
ORDER BY 1;

-- Ejercicio 2.1
SELECT 
	nombreEmpleado AS 'Nombre Empleado'
FROM
	empleados
WHERE
	extensionEmpleado IN (250, 750)
ORDER BY 1;

-- Ejercicio 2.2
SELECT
	nombreEmpleado AS 'Nombre Empleado'
FROM
	empleados
WHERE
	idDepartamentoFK IN (SELECT idDepartamentoFK FROM empleados WHERE nombreEmpleado = "FLOR, DOROTEA")
ORDER BY 1;

-- Ejercicio 2.3
SELECT
	nombreEmpleado AS 'Nombre Empleado'
FROM
	empleados
WHERE
	salarioEmpleado BETWEEN 2500 AND 3001
ORDER BY 1;

-- Ejercicio 2.4
SELECT
	nombreEmpleado AS 'Nombre Empleado',
    CONCAT(salarioEmpleado, ' €') AS 'Salario'
FROM
	empleados
WHERE
	(salarioEmpleado / hijosEmpleado BETWEEN 0 AND 1200)
    OR (salarioEmpleado/ hijosEmpleado > comisionEmpleado * 2)
ORDER BY nombreEmpleado;

-- Ejercicio 2.5
SELECT
	nombreEmpleado AS 'Invitados 1er día',
    hijosEmpleado + 2 AS 'Invitaciones',
    hijosEmpleado AS 'Regalos'
FROM
	empleados
WHERE 
	nombreEmpleado BETWEEN 'A' AND 'M'
ORDER BY 1;

-- Ejercicio 3.1
SELECT
	nombreEmpleado AS 'Nombre Empleado',
    CONCAT(salarioEmpleado * 12, ' €') AS 'Salario Anual'
FROM
	empleados
WHERE
	idDepartamentoFK = 100
ORDER BY 2 DESC;

-- Ejercicio 3.2
SELECT
	nombreEmpleado AS 'Nombre Empleado'
FROM
	empleados
WHERE
	comisionEmpleado >= (salarioEmpleado / 2)
ORDER BY 1;

-- Ejercicio 3.3
SELECT
	nombreEmpleado AS 'Nombre Empleado',
    CONCAT(salarioEmpleado + (hijosEmpleado * 500), ' €') AS 'Salario Total'
FROM
	empleados
WHERE
	hijosEmpleado >= 4
ORDER BY 1;

-- Ejercicio 3.4
SELECT
	CONCAT('Departamento de ', nombreDepartamento) AS 'Nombre Departamento'
FROM
	departamentos
WHERE
	presupuestoDepartamento < 5
ORDER BY 1;

-- Ejercicio 3.5
SELECT
	nombreDepartamento AS 'Nombre Departamento',
    CONCAT(ROUND((presupuestoDepartamento * 9 / 12) + (presupuestoDepartamento * 1.1 * 3 / 12), 2), ' €')  AS 'Presupuesto anual total'
FROM
	departamentos
WHERE
	(presupuestoDepartamento * 9 / 12) > 5
ORDER BY 1;

-- Ejercicio 3.6
SELECT
	nombreEmpleado AS 'Nombre Empleado',
    CONCAT(ROUND(salarioEmpleado * 12, 2),' €') AS 'Salario Anual Actual',
    CONCAT(ROUND(salarioEmpleado * 12 * 1.06, 2), ' €') AS 'Salario Anual Primer Año',
    CONCAT(ROUND(salarioEmpleado * 12 * 1.06 * 1.06, 2), ' €') AS 'Salario Anual Segundo Año',
    CONCAT(ROUND(salarioEmpleado * 12 * 1.06 * 1.06 * 1.06, 2), ' €') AS 'Salario Anual Tercer Año'
FROM
	empleados
WHERE
	hijosEmpleado > 4
ORDER BY 1;











