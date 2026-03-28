CREATE DATABASE MediSistema;

USE MediSistema;


CREATE TABLE `medico` (
  `cedula_medico` int NOT NULL,
  `puesto` varchar (50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `horas_consulta` int NOT NULL,
  PRIMARY KEY (`cedula_medico`));

 CREATE TABLE `paciente` (
  `cedula` int NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `telefono` bigint DEFAULT NULL,
  PRIMARY KEY (`cedula`)
);
 
CREATE TABLE `consulta` (
  `id_consulta` int NOT NULL,
  `fecha_consulta` date NOT NULL,
  `motivo_consulta` varchar(200) DEFAULT NULL,
  `diagnostico` varchar(200) DEFAULT NULL,
  `cedula_medico` int NOT NULL,
  `cedula` int NOT NULL,
  PRIMARY KEY (`id_consulta`),
  KEY `fk_con_medico` (`cedula_medico`),
  KEY `fk_con_paciente` (`cedula`),
  CONSTRAINT `fk_con_medico` FOREIGN KEY (`cedula_medico`) REFERENCES `medico` (`cedula_medico`),
  CONSTRAINT `fk_con_paciente` FOREIGN KEY (`cedula`) REFERENCES `paciente` (`cedula`));

CREATE TABLE `especialidad` (
  `id_especialidad` int NOT NULL,
  `nombre_especialidad` varchar(100) NOT NULL,
  PRIMARY KEY (`id_especialidad`));

 CREATE TABLE `medico_especialidad` (
  `cedula_medico` int NOT NULL,
  `id_especialidad` int NOT NULL,
  PRIMARY KEY (`cedula_medico`,`id_especialidad`),
  KEY `fk_me_especialidad` (`id_especialidad`),
  CONSTRAINT `fk_me_especialidad` FOREIGN KEY (`id_especialidad`) REFERENCES `especialidad` (`id_especialidad`),
  CONSTRAINT `fk_me_medico` FOREIGN KEY (`cedula_medico`) REFERENCES `medico` (`cedula_medico`));



CREATE TABLE `sustituciones` (
`id_sustitucion` int NOT NULL,
`horas_sustituidas` int NOT NULL,
`fechas_sustituidas` date NOT NULL,
`cedula_medico` int NOT NULL,
PRIMARY KEY (id_sustitucion),
KEY `fk_con_medico` (`cedula_medico`),
CONSTRAINT `fk_con_medico_sus` FOREIGN KEY (`cedula_medico`) REFERENCES `medico` (`cedula_medico`));


CREATE TABLE `vacaciones` (
`id_vacaciones` int NOT NULL,
`dias_vacaciones_totales` int NOT NULL,
`dias_vacaciones_disfrutados` int NOT NULL,
`cedula_medico` int NOT NULL,
PRIMARY KEY (id_vacaciones),
KEY `fk_con_medico_vaca` (`cedula_medico`),
CONSTRAINT `fk_con_medico_vaca` FOREIGN KEY (`cedula_medico`) REFERENCES `medico` (`cedula_medico`));



