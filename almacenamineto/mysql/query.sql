
#1. Número de pacientes atendidos por cada médico.


SELECT m.nombre  as Nombre, COUNT(DISTINCT c.cedula) AS total_pacientes
FROM consulta c join medico m on c.cedula_medico = m.cedula_medico
GROUP BY m.cedula_medico


#Total de días de vacaciones planificadas y disfrutadas por cada empleado.

SELECT v.dias_vacaciones_totales as 'Dias de Vacaciones planificadas', v.dias_vacaciones_disfrutados as 'Dias de Vacaciones disfrutadas', m.nombre 
from vacaciones v JOIN medico m ON v.cedula_medico = m.cedula_medico  ;


#3. Médicos con mayor cantidad de horas de consulta en la semana.







# 4. Número de sustituciones realizadas por cada médico sustituto.

SELECT m.nombre as nombre , m.puesto ,COUNT(DISTINCT s.fechas_sustituidas) 'cantidad sustituciones'
FROM medico m join sustituciones s on s.cedula_medico = m.cedula_medico 
GROUP BY m.cedula_medico  ;

# 5. Número de médicos que están actualmente en sustitución.

SELECT COUNT(nombre) AS total_medicos FROM medico;


#6. Horas totales de consulta por médico por día de la semana.

SELECT nombre , horas_consulta as 'horas consulta por dia'
FROM medico 


# 7. Médico con mayor cantidad de pacientes asignados.

SELECT m.nombre as Doctor, COUNT(*) AS 	Pacientes_asignados
FROM consulta c join medico m on m.cedula_medico = c.cedula_medico
GROUP BY c.cedula_medico
ORDER BY pacientes_asignados DESC
LIMIT 1;


#8. Empleados con más de 10 días de vacaciones disfrutadas.

SELECT m.nombre as Nombre , v.dias_vacaciones_disfrutados as Dias_disfrutados
FROM vacaciones v join medico m on m.cedula_medico = v.cedula_medico 
WHERE v.dias_vacaciones_disfrutados > 10;

# 9. Médicos que actualmente están realizando una sustitución.

SELECT m.nombre , m.estado
FROM medico m
WHERE m.puesto  = 'Sustituto'

