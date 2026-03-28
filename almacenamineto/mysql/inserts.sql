INSERT INTO `especialidad` (`id_especialidad`, `nombre_especialidad`) VALUES
(1,	'Medicina General'),
(2,	'Cardiología'),
(3,	'Neurología'),
(4,	'Pediatría'),
(5,	'Dermatología'),
(6,	'Ginecología'),
(7,	'Ortopedia'),
(8,	'Oftalmología'),
(9,	'Oncología'),
(10,	'Psiquiatría'),
(11,	'Endocrinología'),
(12,	'Gastroenterología'),
(13,	'Neumología'),
(14,	'Urología'),
(15,	'Reumatología'),
(16,	'Infectología'),
(17,	'Hematología'),
(18,	'Nefrología'),
(19,	'Cirugía General'),
(20,	'Medicina de Urgencias');



INSERT INTO `medico` (`cedula_medico`,`puesto`, `nombre`,`horas_consulta`) VALUES
(10001,	'Titular',	'Carlos Ramírez',	5),
(10002,	'Interno'	,'Lucía Torres',	7),
(10003,		'Sustituto', 'Andrés Gómez',4),
(10004,		'Interno','Valentina Herrera',	5),
(10005,	'Titular','Felipe Morales',	6),
(10006,	'Interno',	'Natalia Jiménez',	6),
(10007,		'Sustituto','Diego Vargas',	5),
(10008,		'Sustituto','Camila Reyes',	4),
(10009,	'Titular',	'Sebastián Castro',	8),
(10010,	'Interno',	'Paula Mendoza',	7),
(10011,		'Sustituto','Jorge Ríos',	5),
(10012,	'Sustituto',	'Mónica Salcedo',	6),
(10013,	'Titular',	'Ricardo Peña',	5),
(10014,	'Interno',	'Adriana López',	7),
(10015,	'Sustituto',	'Miguel Fuentes',	4),
(10016,	'Titular',	'Sandra Navarro',	5),
(10017,	'Interno', 'Julián Bermúdez',	6),
(10018,	'Sustituto', 'Paola Cárdenas',	8),
(10019,	'Titular',	'Esteban Gutiérrez',	5),
(10020,	'Interno',	'Daniela Arce',	4);

INSERT INTO `medico_especialidad` (`cedula_medico`, `id_especialidad`) VALUES
(10001,	1),
(10015,	1),
(10002,	2),
(10011,	2),
(10003,	3),
(10004,	4),
(10005,	5),
(10006,	6),
(10007,	7),
(10008,	8),
(10009,	9),
(10017,	9),
(10003,	10),
(10010,	10),
(10011,	11),
(10012,	12),
(10013,	13),
(10014,	14),
(10015,	15),
(10005,	16),
(10016,	16),
(10009,	17),
(10017,	17),
(10018,	18),
(10002,	19),
(10007,	19),
(10019,	19),
(10001,	20),
(10013,	20),
(10020,	20);



INSERT INTO `paciente` (`cedula`, `nombre`, `apellido`, `correo`, `telefono`) VALUES
(20001,	'Ana',	'Martínez',	'ana.martinez@mail.com',	3101234567),
(20002,	'Luis',	'García',	'luis.garcia@mail.com',	3119876543),
(20003,	'Sofía',	'Pérez',	'sofia.perez@mail.com',	3201122334),
(20004,	'Tomás',	'Ruiz',	'tomas.ruiz@mail.com',	3154455667),
(20005,	'Isabella',	'Cruz',	'isabella.cruz@mail.com',	3173344556),
(20006,	'Mateo',	'Ramos',	'mateo.ramos@mail.com',	3187766554),
(20007,	'Valeria',	'Díaz',	'valeria.diaz@mail.com',	3009988776),
(20008,	'Samuel',	'Mora',	'samuel.mora@mail.com',	3124433221),
(20009,	'Emma',	'Silva',	'emma.silva@mail.com',	3138877665),
(20010,	'Daniel',	'Ortega',	'daniel.ortega@mail.com',	3162233445),
(20011,	'Laura',	'Vega',	'laura.vega@mail.com',	3176655443),
(20012,	'Nicolás',	'Rojas',	'nicolas.rojas@mail.com',	3191122334),
(20013,	'Gabriela',	'Vargas',	'gabriela.vargas@mail.com',	3012244556),
(20014,	'Alejandro',	'Ávila',	'alejandro.avila@mail.com',	3126677889),
(20015,	'Manuela',	'Soto',	'manuela.soto@mail.com',	3141199008),
(20016,	'Simón',	'Pardo',	'simon.pardo@mail.com',	3155588907),
(20017,	'Mariana',	'León',	'mariana.leon@mail.com',	3169977806),
(20018,	'Camilo',	'Bravo',	'camilo.bravo@mail.com',	3184466705),
(20019,	'Fernanda',	'Huertas',	'fernanda.huertas@mail.com',	3198855604),
(20020,	'Santiago',	'Montes',	'santiago.montes@mail.com',	3023344503);



INSERT INTO `consulta` (`id_consulta`, `fecha_consulta`, `motivo_consulta`, `diagnostico`, `cedula_medico`, `cedula`) VALUES
(1,	'2024-01-05',	'Dolor de cabeza persistente',	'Migraña tensional',	10003,	20001),
(2,	'2024-01-12',	'Fiebre alta y tos seca',	'Infección respiratoria aguda',	10001,	20002),
(3,	'2024-01-18',	'Dolor en el pecho al caminar',	'Angina estable',	10002,	20003),
(4,	'2024-02-03',	'Erupción cutánea en el brazo',	'Dermatitis de contacto',	10005,	20004),
(5,	'2024-02-14',	'Control prenatal rutinario',	'Embarazo de 20 semanas sin novedad',	10006,	20005),
(6,	'2024-02-20',	'Dolor articular en rodilla derecha',	'Osteoartritis leve',	10007,	20006),
(7,	'2024-03-01',	'Visión borrosa desde hace una semana',	'Miopía moderada',	10008,	20007),
(8,	'2024-03-10',	'Tristeza profunda y falta de sueño',	'Episodio depresivo mayor',	10010,	20008),
(9,	'2024-03-22',	'Aumento de glucosa en sangre',	'Diabetes mellitus tipo 2',	10011,	20009),
(10,	'2024-04-04',	'Dolor abdominal recurrente',	'Gastritis crónica',	10012,	20010),
(11,	'2024-04-15',	'Tos con flema de tres semanas',	'Bronquitis crónica',	10013,	20011),
(12,	'2024-04-28',	'Dificultad para orinar',	'Hiperplasia prostática benigna',	10014,	20012),
(13,	'2024-05-07',	'Dolor en articulaciones de manos',	'Artritis reumatoide temprana',	10015,	20013),
(14,	'2024-05-19',	'Fiebre y manchas rojas en el cuerpo',	'Dengue clásico',	10016,	20014),
(15,	'2024-06-02',	'Cansancio extremo y palidez',	'Anemia ferropénica',	10017,	20015),
(16,	'2024-06-11',	'Inflamación de pies y tobillos',	'Insuficiencia renal crónica leve',	10018,	20016),
(17,	'2024-06-25',	'Dolor en hipocondrio derecho',	'Colelitiasis',	10019,	20017),
(18,	'2024-07-08',	'Palpitaciones y mareo',	'Taquicardia supraventricular',	10002,	20018),
(19,	'2024-07-17',	'Chequeo general anual',	'Paciente en buen estado de salud',	10001,	20019),
(20,	'2024-07-30',	'Lesión en masa palpable en el cuello',	'Adenopatía reactiva — estudio pendiente',	10009,	20020);




INSERT INTO vacaciones (`id_vacaciones`, `dias_vacaciones_totales`, `dias_vacaciones_disfrutados` ,`cedula_medico` ) VALUES
(1, 15 , 3, 10001),
(2,15,6,10002),
(3, 15, 15 , 10003),
(4, 15 ,10 , 10004);



INSERT INTO sustituciones (id_sustitucion,horas_sustituidas,fechas_sustituidas,cedula_medico) VALUES 
(1, 56 , '2024-02-14' , 10005),
(2, 25 , '2024-07-30' , 10008),
(3, 78 , '2024-06-02' , 10004);





