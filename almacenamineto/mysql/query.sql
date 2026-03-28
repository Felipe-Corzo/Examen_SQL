#1. Número de pacientes atendidos por cada médico.


SELECT m.nombre  as Nombre, COUNT(DISTINCT c.cedula) AS total_pacientes
FROM consulta c join medico m on c.cedula_medico = m.cedula_medico
GROUP BY m.cedula_medico


#Total de días de vacaciones planificadas y disfrutadas por cada empleado.

SELECT v.dias_vacaciones_totales as 'Dias de Vacaciones planificadas', v.dias_vacaciones_disfrutados as 'Dias de Vacaciones disfrutadas', m.nombre 
from vacaciones v JOIN medico m ON v.cedula_medico = m.cedula_medico  ;


#3. Médicos con mayor cantidad de horas de consulta en la semana.

SELECT 
    cedula_medico,
    nombre AS nombre_medico,
    puesto,
    horas_consulta
FROM 
    medico
ORDER BY 
    horas_consulta DESC;



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

SELECT m.nombre , m.puesto 
FROM medico m join sustituciones s on s.cedula_medico = m.cedula_medico 

# 10. Total de días de vacaciones planificadas y disfrutadas por cada tipo de empleado.

SELECT 
    m.puesto AS tipo_empleado,
    SUM(v.dias_vacaciones_totales) AS total_planificadas,
    SUM(v.dias_vacaciones_disfrutados) AS total_disfrutadas
FROM 
    medico m
JOIN 
    vacaciones v ON m.cedula_medico = v.cedula_medico
GROUP BY 
    m.puesto;
   
# 11. Total de pacientes por cada tipo de médico.

SELECT 
    e.nombre_especialidad, 
    COUNT(DISTINCT c.cedula) AS total_pacientes_atendidos
FROM 
    especialidad e
JOIN 
    medico_especialidad me ON e.id_especialidad = me.id_especialidad
JOIN 
    consulta c ON me.cedula_medico = c.cedula_medico
GROUP BY 
    e.nombre_especialidad;
   
# 12. Número de sustituciones por tipo de médico.
   
  SELECT 
    m.puesto AS tipo_medico, 
    COUNT(s.id_sustitucion) AS numero_de_sustituciones
FROM 
    medico m
JOIN 
    sustituciones s ON m.cedula_medico = s.cedula_medico
GROUP BY 
    m.puesto;

   

# 13. Total de pacientes por médico y por especialidad.
   

   
   SELECT 
    m.nombre AS nombre_medico,
    e.nombre_especialidad,
    COUNT(DISTINCT c.cedula) AS total_pacientes_unicos
FROM 
    medico m
JOIN 
    medico_especialidad me ON m.cedula_medico = me.cedula_medico
JOIN 
    especialidad e ON me.id_especialidad = e.id_especialidad
JOIN 
    consulta c ON m.cedula_medico = c.cedula_medico
GROUP BY 
    m.nombre, 
    e.nombre_especialidad
ORDER BY 
    total_pacientes_unicos DESC;
   
   
 # 14. Empleados y médicos con más de 20 días de vacaciones planificadas.
   
   SELECT 
    m.nombre AS nombre_empleado,
    m.puesto,
    v.dias_vacaciones_totales AS Dias_de_vacaciones_planificadas
FROM 
    medico m
JOIN 
    vacaciones v ON m.cedula_medico = v.cedula_medico
WHERE 
    v.dias_vacaciones_totales > 20
ORDER BY 
    v.dias_vacaciones_totales DESC;
   
   
 # 15. Total de horas de consulta por especialidad y día de la semana.
   
   
   SELECT 
    e.nombre_especialidad,
    DAYNAME(c.fecha_consulta) AS dia_semana,
    SUM(m.horas_consulta) AS total_horas_asignadas
FROM 
    especialidad e
JOIN 
    medico_especialidad me ON e.id_especialidad = me.id_especialidad
JOIN 
    medico m ON me.cedula_medico = m.cedula_medico
JOIN 
    consulta c ON m.cedula_medico = c.cedula_medico
GROUP BY 
    e.nombre_especialidad, 
    dia_semana
ORDER BY 
    FIELD(dia_semana, 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday');
   