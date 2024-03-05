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