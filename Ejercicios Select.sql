-- Ejercicio 1: Obtener los nombres de todos los centros de trabajo de la empresa clasificados
-- por orden alfabético

SELECT
	nombreCentroTrabajo AS 'Centro de Trabajo'
FROM
	centrostrabajo
ORDER BY 1;

-- Ejercicio 2: Obtener los nombres de los empleados que trabajan en el departamento 121.
SELECT
	nombreEmpleado AS 'Nombre Empleado'
FROM
	empleados
WHERE idDepartamentoFK = 121
ORDER BY nombreEmpleado;

-- Ejercicio 3: Extraer todos los datos del departamento 121.
SELECT
	*
FROM
	departamentos
WHERE idDepartamento = 121;

-- Ejercicio 4: Obtener los nombres y salarios de los empleados con más de tres hijos por
-- orden alfabético
SELECT
	nombreEmpleado AS 'Nombre',
    salarioEmpleado AS 'Salario'
FROM
	empleados
WHERE hijosEmpleado > 3
ORDER BY 1;

-- Ejercicio 5
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

	
-- Ejercicio 6
SELECT
	nombreDepartamento AS 'Departamento'
FROM
	departamentos
WHERE
	presupuestoDepartamento > 10
ORDER BY
	1;
    
-- Ejercicio 7
SELECT
	DISTINCT idDepartamentoFK AS 'Departamento'
FROM
	empleados
WHERE
	salarioEmpleado < 2000
ORDER BY 1;

-- Ejercicio 8
SELECT
	DISTINCT comisionEmpleado AS 'Comisión'
FROM
	empleados
WHERE
	idDepartamentoFK = 110;

-- Ejercicio 9
SELECT
	nombreDepartamento AS 'Departamento'
FROM
	departamentos
WHERE
	tipoDirectorDepartamento = 'F'
ORDER BY 1;


-- Ejercicio 10
SELECT
	nombreEmpleado AS 'Empleado',
    idEmpleado AS '#',
    extensionEmpleado AS 'Extensión'
FROM
	empleados
WHERE
	idDepartamentoFK = 121
ORDER BY 1;

-- Ejercicio 11
SELECT
	DISTINCT extensionEmpleado AS 'Extensión'
FROM
	empleados
ORDER BY extensionEmpleado;

-- Ejercicio 12
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

-- Ejercicio 13
SELECT
	CONCAT(salarioEmpleado, ' €') AS 'Salario',
    nombreEmpleado AS 'Empleado'
FROM
	empleados
WHERE
	hijosEmpleado = 0
ORDER BY    
	salarioEmpleado DESC, nombreEmpleado;




