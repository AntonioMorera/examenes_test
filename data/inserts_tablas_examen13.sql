
-------------------------------------------------
-- EXAMEN EQUIPO 2
INSERT INTO exams (name) VALUES ('DOR - Usabilidad en la Web - Equipo 2');
SET @exam_id = 30;

-- Pregunta 1
INSERT INTO questions (exam_id,text) VALUES (@exam_id,'Una página es usable cuando…');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id,label,text,is_correct) VALUES
(@question_id,'A','Tiene muchos efectos visuales novedosos',0),
(@question_id,'B','El usuario puede usar su interfaz fácilmente',1),
(@question_id,'C','Sigue estrictamente los colores corporativos',0),
(@question_id,'D','Utiliza muchos iconos nuevos y poco comunes',0);

-- Pregunta 2
INSERT INTO questions (exam_id,text) VALUES (@exam_id,'Selecciona cuáles son principios de usabilidad y accesibilidad de Nielsen');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id,label,text,is_correct) VALUES
(@question_id,'A','Visibilidad del estado del sistema',1),
(@question_id,'B','Desvincular el sistema del mundo real',0),
(@question_id,'C','Consistencia y estándares',1),
(@question_id,'D','Flexibilidad y eficiencia de uso',1),
(@question_id,'E','No necesitar ayuda y documentación',0);

-- Pregunta 3
INSERT INTO questions (exam_id,text) VALUES (@exam_id,'Las barras de navegación deben mantener coherencia visual.');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id,label,text,is_correct) VALUES
(@question_id,'A','Verdadero',1),
(@question_id,'B','Falso',0);

-- Pregunta 4
INSERT INTO questions (exam_id,text) VALUES (@exam_id,'Directriz importante para diseñar una interfaz usable:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id,label,text,is_correct) VALUES
(@question_id,'A','Usar colores brillantes para llamar la atención',0),
(@question_id,'B','Evitar metáforas visuales',0),
(@question_id,'C','Ponerse en el lugar de los usuarios',1),
(@question_id,'D','Diseñar interfaces complejas',0);

-- Pregunta 5
INSERT INTO questions (exam_id,text) VALUES (@exam_id,'Fallo de persistencia en un sistema de navegación:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id,label,text,is_correct) VALUES
(@question_id,'A','Icono no intuitivo',0),
(@question_id,'B','Menús cambian de posición entre páginas',1),
(@question_id,'C','Enlaces con nombres ambiguos',0),
(@question_id,'D','Usuario debe recordar datos mucho tiempo',0);

-- Pregunta 6
INSERT INTO questions (exam_id,text) VALUES (@exam_id,'Unir cada término con su definición:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id,label,text,is_correct) VALUES
(@question_id,'A','Eficacia = El usuario logra objetivo',1),
(@question_id,'B','Eficiencia = Logra objetivo sin esfuerzo',1),
(@question_id,'C','Satisfacción = Reporta satisfacción',1);

-- Pregunta 7
INSERT INTO questions (exam_id,text) VALUES (@exam_id,'Método recomendado para evitar fallos graves antes de publicar una web:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id,label,text,is_correct) VALUES
(@question_id,'A','Test con usuarios reales',0),
(@question_id,'B','Encuestas online',0),
(@question_id,'C','Evaluación heurística',1),
(@question_id,'D','Eye tracking',0);

-- Pregunta 8
INSERT INTO questions (exam_id,text) VALUES (@exam_id,'¿Qué es un enlace roto?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id,label,text,is_correct) VALUES
(@question_id,'A','Cambia de color al hacer clic',0),
(@question_id,'B','No lleva a ninguna parte / error 404',1),
(@question_id,'C','Contiene una imagen en vez de texto',0),
(@question_id,'D','Redirige a una página diferente',0);

-- Pregunta 9
INSERT INTO questions (exam_id,text) VALUES (@exam_id,'Según la usabilidad, los usuarios NO quieren…');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id,label,text,is_correct) VALUES
(@question_id,'A','Recordar información por más de unos segundos',1),
(@question_id,'B','Que la interfaz responda rápido',0),
(@question_id,'C','Lenguaje sencillo',0),
(@question_id,'D','Metáforas visuales fáciles',0);