

-------------------------------------------------
-- EXAMEN GRUPO 5
INSERT INTO exams (name) VALUES ('DOR - Usabilidad en la Web - Grupo 5');
SET @exam_id = 27;

-- Pregunta 1
INSERT INTO questions (exam_id,text) VALUES (@exam_id, '¿Cuál de estas NO es una característica de una interfaz usable?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id,label,text,is_correct) VALUES
(@question_id,'A','Eficiencia',0),
(@question_id,'B','Satisfacción',0),
(@question_id,'C','Velocidad de carga perfecta',1),
(@question_id,'D','Eficacia',0);

-- Pregunta 2
INSERT INTO questions (exam_id,text) VALUES (@exam_id, 'Según Nielsen, ¿cuál NO es uno de los componentes clave de la usabilidad?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id,label,text,is_correct) VALUES
(@question_id,'A','Facilidad de aprendizaje',0),
(@question_id,'B','Memoria a largo plazo del sistema',1),
(@question_id,'C','Gestión de errores',0),
(@question_id,'D','Satisfacción',0);

-- Pregunta 3
INSERT INTO questions (exam_id,text) VALUES (@exam_id, 'El diseño centrado en el usuario forma parte de las recomendaciones de la norma ISO 13407.');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id,label,text,is_correct) VALUES
(@question_id,'A','Verdadero',1),
(@question_id,'B','Falso',0);

-- Pregunta 4
INSERT INTO questions (exam_id,text) VALUES (@exam_id, '¿Cuál de estas NO es una directriz para escribir para la web?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id,label,text,is_correct) VALUES
(@question_id,'A','Claridad',0),
(@question_id,'B','Concisión',0),
(@question_id,'C','Corrección',0),
(@question_id,'D','Complejidad lingüística',1);

-- Pregunta 5
INSERT INTO questions (exam_id,text) VALUES (@exam_id, '¿Cuál es el problema más habitual relacionado con el texto en las webs según Nielsen?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id,label,text,is_correct) VALUES
(@question_id,'A','Mala elección de imágenes',0),
(@question_id,'B','Tamaño de letra demasiado pequeño',1),
(@question_id,'C','Exceso de espacios en blanco',0),
(@question_id,'D','Pocos efectos visuales',0);

-- Pregunta 6
INSERT INTO questions (exam_id,text) VALUES (@exam_id, 'La página principal debe permitir al usuario responder a:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id,label,text,is_correct) VALUES
(@question_id,'A','¿Qué es este sitio?',0),
(@question_id,'B','¿Qué puedo encontrar aquí?',0),
(@question_id,'C','¿Por qué debería quedarme?',0),
(@question_id,'D','Todas las anteriores',1);

-- Pregunta 7
INSERT INTO questions (exam_id,text) VALUES (@exam_id, '¿Qué deben mostrar los resultados de un buscador interno?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id,label,text,is_correct) VALUES
(@question_id,'A','Solo el título',0),
(@question_id,'B','Una imagen obligatoria',0),
(@question_id,'C','Título y breve resumen con las palabras buscadas',1),
(@question_id,'D','El contenido completo de la página',0);
