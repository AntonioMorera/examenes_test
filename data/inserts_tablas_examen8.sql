-- EXAMEN EQUIPO 3
INSERT INTO exams (name) VALUES ('DOR - Usabilidad en la Web - Equipo 3');
SET @exam_id = LAST_INSERT_ID();

-- Pregunta 1
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'La técnica eye tracking permite principalmente…');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Corregir errores del código HTML', 0),
(@question_id, 'B', 'Evaluar cómo navega visualmente el usuario', 1),
(@question_id, 'C', 'Determinar la velocidad de carga de la web', 0),
(@question_id, 'D', 'Medir el nivel de accesibilidad WCAG', 0);

-- Pregunta 2
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'La reacción visible al pasar el ratón por un icono (hover feedback) corresponde a:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Visibilidad del estado del sistema', 1),
(@question_id, 'B', 'Consistencia y estándares', 0),
(@question_id, 'C', 'Flexibilidad y eficiencia', 0),
(@question_id, 'D', 'Prevención de errores', 0);

-- Pregunta 3
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Según Nielsen, ¿qué heurística se viola si el sitio requiere recordar pasos previos?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','Flexibilidad y eficiencia de uso',0),
(@question_id,'B','Reconocer antes que recordar',1),
(@question_id,'C','Control y libertad del usuario',0),
(@question_id,'D','Prevención de errores',0);

-- Pregunta 4
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'La persistencia en sistemas de navegación contribuye principalmente a…');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','Reducir la carga cognitiva',1),
(@question_id,'B','Cumplir la heurística de flexibilidad',0),
(@question_id,'C','Mejorar tiempos de carga',0),
(@question_id,'D','Optimizar posicionamiento SEO',0);

-- Pregunta 5
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '“Lo novedoso no siempre es lo más adecuado”. ¿Qué heurística refuerza esta idea?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','Flexibilidad y eficiencia',0),
(@question_id,'B','Consistencia y estándares',1),
(@question_id,'C','Control del usuario',0),
(@question_id,'D','Prevención de errores',0);

