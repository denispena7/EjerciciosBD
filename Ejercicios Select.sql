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

-- Ejercicio 3.7
SELECT
	nombreEmpleado AS 'Nombre Empleado'
FROM
	empleados
WHERE
	(hijosEmpleado * 1000) <= (salarioEmpleado / 10)
ORDER BY
	nombreEmpleado;

-- Ejercicio 3.8
SELECT
	nombreEmpleado AS 'Nombre Empleado',
    CONCAT((salarioEmpleado + comisionEmpleado), ' €') AS 'Salario Total'
FROM
	empleados
WHERE
	idDepartamentoFK = 112
ORDER BY
	salarioEmpleado + comisionEmpleado DESC;
    
-- Ejercicio 3.9
SELECT
	idEmpleado AS 'Nº Empleado',
    nombreEmpleado AS 'Empleado',
    CONCAT((salarioEmpleado + comisionEmpleado), ' €')  AS 'Salario Total'
FROM
	empleados
WHERE
	(salarioEmpleado + comisionEmpleado) > 3000
ORDER BY 1;

-- Ejercicio 3.10
SELECT
	DISTINCT idDepartamentoFK AS 'Número Departamento'
FROM
	empleados
WHERE
	(comisionEmpleado > salarioEmpleado * 0.2);
    
-- Ejercicio 3.11
SELECT
	nombreEmpleado AS 'Empleado',
    CONCAT((salarioEmpleado + comisionEmpleado), ' €')  AS 'Salario Total',
    CONCAT(ROUND(comisionEmpleado / (salarioEmpleado + comisionEmpleado) * 100), ' %') AS 'Porcentaje comisión'
FROM
	empleados
WHERE
	comisionEmpleado > 0
ORDER BY 1;

-- Ejercicio 3.12
SELECT
	nombreDepartamento AS 'Nombre Departamento'
FROM
	departamentos
WHERE
	idDepartamentoFK IS NULL;

-- Ejercicio 3.13
SELECT
	nombreEmpleado AS 'Nombre Empleado',
    CONCAT(ROUND((salarioEmpleado / hijosEmpleado), 2), ' €') AS 'Salario por hijo'
FROM
	empleados
WHERE
	hijosEmpleado > 0
	AND comisionEmpleado = 0
ORDER BY 1;

-- Ejercicio 3.14
SELECT
	nombreEmpleado AS 'Nombre Empleado',
    CONCAT((salarioEmpleado * 0.01), ' €') AS 'Regalo'
FROM
	empleados
WHERE
	nombreEmpleado LIKE '%, HONORI_'
ORDER BY 1;

-- Ejercicio 3.15
SELECT
	nombreEmpleado AS 'Nombre Empleado'
FROM
	empleados
WHERE
	 nombreEmpleado LIKE '_____________%'
ORDER BY 1;

-- Ejercicio 3.16
SELECT
	SUBSTRING(nombreDepartamento, 1, 9)  AS 'Nombre Departamento'
FROM
	departamentos
ORDER BY 1;

-- Ejercicio 3.17
SELECT
	idDepartamento AS 'Nº Departamento',
    SUBSTRING(nombreDepartamento, 12 + 1, 5) AS 'Nombre Departamento'
FROM
	departamentos
ORDER BY 1;

-- Ejercicio 3.18
SELECT
	idDepartamento AS 'Nº Departamento',
    SUBSTRING(nombreDepartamento, 12 + 1, 5) AS 'Nombre Departamento'
FROM
	departamentos
WHERE
	nombreDepartamento LIKE '_____________%'
ORDER BY 1;

-- Ejercicio 3.19
SELECT
    RIGHT(nombreDepartamento, -3) AS 'Nombre Departamento'
FROM
	departamentos
ORDER BY 1;

-- Ejercicio 3.20
SELECT
	nombreEmpleado AS 'Nombre Empleado'
FROM
	empleados
WHERE
	comisionEmpleado = 0
ORDER BY LENGTH(nombreEmpleado), nombreEmpleado;

-- Ejercicio 3.21
SELECT
	LEFT(nombreEmpleado, (LENGTH(nombreEmpleado) - 3)) AS 'Nombre Acortado'
FROM
	empleados
WHERE
	nombreEmpleado LIKE '%, ______%'
ORDER BY 1;

-- Ejercicio 3.22
UPDATE empleados SET fechaIngresoEmpleado = '1988-05-03' WHERE idEmpleado = 430;

-- Ejercicio 3.23
SELECT
	nombreEmpleado AS 'Nombre Empleado',
    fechaNacimientoEmpleado AS 'Fecha Nacimiento'
FROM
	empleados
WHERE
	idEmpleado = 110
ORDER BY 1;

-- Ejercicio 3.24
-- Extraer de la tabla de empleados los nombres de los que han ingresado posteriormente al año 1970
SELECT
	nombreEmpleado AS 'Nombre Empleado'
FROM
	empleados
WHERE
	fechaIngresoEmpleado > '1970-12-31';

-- Ejercicio 3.25
-- Modificar la fecha de ingreso de Valeriana Mora (empleado número 430) poniendo la del día de hoy
UPDATE empleados SET fechaIngresoEmpleado = CURDATE() WHERE idEmpleado = 430;

-- Ejercicio 3.26
-- Obtener los nombres y fechas de nacimiento de los empleados del departamento 100, en formato dd/mm/yyyy, de más viejo a más joven.
SELECT
	nombreEmpleado AS 'Nombre Empleado',
    DATE_FORMAT(fechaNacimientoEmpleado, '%d/%m/%Y') AS 'Fecha Nacimiento'
FROM
	empleados
WHERE
	idDepartamentoFK = 100
ORDER BY fechaNacimientoEmpleado;

-- Ejercicio 3.27
-- Para los empleados que ingresaron durante el año 1968, después del mes de mayo, hallar, su nombre y cuántos días llevaban trabajando en la empresa a
-- primeros de año de 1969, por orden alfabético.


-- Suma de los salarios de los empleados del departamento 130
SELECT
	idDepartamentoFK AS 'Departamento',
	CONCAT(SUM(salarioEmpleado), ' €') AS 'Salario Empleado'
FROM
	empleados
GROUP BY idDepartamentoFK
HAVING SUM(salarioEmpleado) > 10000;

-- Ejercicio 4.1
SELECT
	idDepartamentoFK AS 'Departamento',
    ROUND(AVG(salarioEmpleado), 2) AS 'Salario Medio',
    MIN(salarioEmpleado) AS 'Mínimo',
    MAX(salarioEmpleado) AS 'Máximo'
FROM
	empleados
GROUP BY idDepartamentoFK;

-- Ejercicio 4.2
SELECT
	idDepartamentoFK AS 'Departamento',
	YEAR(CURDATE()) - YEAR(MIN(fechaNacimientoEmpleado)) AS 'Edad'
FROM
	empleados
WHERE
	comisionEmpleado > 0
GROUP BY idDepartamentoFK
ORDER BY YEAR(CURDATE()) - YEAR(MIN(fechaNacimientoEmpleado));

SELECT 
    nombreEmpleado AS 'Compañeros'
FROM
    empleados
WHERE
    idDepartamentoFK = (SELECT 
            idDepartamentoFK
        FROM
            empleados
        WHERE
            nombreEmpleado = 'CAMPS, AURELIO');

SELECT 
    nombreEmpleado AS 'Compañeros', salarioEmpleado AS 'Salario'
FROM
    empleados
WHERE
    salarioEmpleado > (SELECT 
            salarioEmpleado
        FROM
            empleados
        WHERE
            nombreEmpleado = 'CAMPS, AURELIO');
            
SELECT 
    nombreEmpleado AS 'Empleado', salarioEmpleado AS 'Salario'
FROM
    empleados
WHERE
    salarioEmpleado >= ANY (SELECT 
            salarioEmpleado
        FROM
            empleados
        WHERE
            idDepartamentoFK = 112
                AND salarioEmpleado > 3000);

SELECT 
    nombreEmpleado AS 'Empleado', salarioEmpleado AS 'Salario'
FROM
    empleados
WHERE
    salarioEmpleado >= ALL (SELECT 
            salarioEmpleado
        FROM
            empleados
        WHERE
            idDepartamentoFK = 112
                AND salarioEmpleado > 3000);
                
SELECT 
    nombreEmpleado AS 'Empleado', salarioEmpleado AS 'Salario'
FROM
    empleados
WHERE
    idDepartamentoFK = 111
        AND EXISTS( SELECT 
            *
        FROM
            empleados
        WHERE
            idDepartamentoFK = 112);
            
--  Ejercicio 5.1
SELECT 
    nombreEmpleado AS 'Empleado'
FROM
    empleados
WHERE
    salarioEmpleado >= (SELECT 
            salarioEmpleado * 1.5
        FROM
            empleados
        WHERE
            nombreEmpleado = 'FIERRO, CLAUDIA');


-- Ejercicio 5.2
SELECT
	idDepartamentoFK AS 'Departamento',
    AVG(salarioEmpleado) AS 'Media Empleado'
FROM
	empleados
GROUP BY idDepartamentoFK
HAVING MAX(salarioEmpleado) < (SELECT AVG(salarioEmpleado) FROM empleados);

-- Ejercicio 5.3
SELECT
	idDepartamentoFK AS 'Departamento',
    COUNT(1) AS 'Número de empleados',
    SUM(salarioEmpleado) AS 'Sumatorio de salarios',
    SUM(comisionEmpleado) AS  'Sumatorio de comisiones',
    SUM(hijosEmpleado) AS 'Número de hijos'
FROM
	empleados
    WHERE
		idDepartamentoFK IN (SELECT DISTINCT idDepartamentoFK FROM empleados WHERE salarioEmpleado > 4000)
        GROUP BY idDepartamentoFK;
        
-- Ejercicio 5.4
--  Para los departamentos en los que la antigüedad media de sus empleados superaba a la de la empresa
SELECT
	idDepartamentoFK AS 'Departamento',
    MIN(salarioEmpleado) AS 'Salario mínimo',
    AVG(salarioEmpleado) AS 'Salario medio',
    MAX(salarioEmpleado) AS 'Salario máximo'
FROM
	empleados
    GROUP BY idDepartamentoFK
    HAVING
		AVG(YEAR(CURDATE()) - YEAR(fechaIngresoEmpleado)) >
			(SELECT AVG(YEAR(CURDATE()) - YEAR(fechaIngresoEmpleado)) FROM empleados);