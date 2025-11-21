

-------------------------------------------------
-- EXAMEN GRUPO 7
INSERT INTO exams (name) VALUES ('DOR - Usabilidad en la Web - Grupo 7');
SET @exam_id = 29;

-- Pregunta 1
INSERT INTO questions (exam_id,text) VALUES (@exam_id, '¿Qué tres aspectos están directamente relacionados con la facilidad de uso de una interfaz según el documento?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id,label,text,is_correct) VALUES
(@question_id,'A','Velocidad, diseño, contenido',0),
(@question_id,'B','Eficacia, eficiencia, satisfacción',1),
(@question_id,'C','Accesibilidad, interactividad, seguridad',0),
(@question_id,'D','Estética, simplicidad, rapidez',0);

-- Pregunta 2
INSERT INTO questions (exam_id,text) VALUES (@exam_id, '¿Qué elemento NO se menciona como parte de un perfil de usuario al diseñar una web usable?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id,label,text,is_correct) VALUES
(@question_id,'A','Sus expectativas',0),
(@question_id,'B','Su historial de compras',1),
(@question_id,'C','Su tipo de conexión a Internet',0),
(@question_id,'D','Si tienen algún tipo de discapacidad',0);

-- Pregunta 3
INSERT INTO questions (exam_id,text) VALUES (@exam_id, '¿Qué pregunta NO debe poder responder un usuario en un sistema de navegación usable?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id,label,text,is_correct) VALUES
(@question_id,'A','¿Dónde estoy?',0),
(@question_id,'B','¿Quién diseñó esta web?',1),
(@question_id,'C','¿Cómo llegué aquí?',0),
(@question_id,'D','¿A dónde puedo ir después?',0);

-- Pregunta 4
INSERT INTO questions (exam_id,text) VALUES (@exam_id, '¿Qué combinación de teclas se menciona para “Ir a la barra de direcciones”?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id,label,text,is_correct) VALUES
(@question_id,'A','ALT + FLECHA IZQUIERDA',0),
(@question_id,'B','CTRL + TAB',0),
(@question_id,'C','ALT + D',1),
(@question_id,'D','F5',0);

-- Pregunta 5
INSERT INTO questions (exam_id,text) VALUES (@exam_id, '¿Qué técnica de evaluación de usabilidad utiliza el seguimiento visual del usuario?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id,label,text,is_correct) VALUES
(@question_id,'A','Evaluación heurística',0),
(@question_id,'B','Eye tracking',1),
(@question_id,'C','Encuestas de satisfacción',0),
(@question_id,'D','Test A/B',0);

-- Pregunta 6
INSERT INTO questions (exam_id,text) VALUES (@exam_id, '¿En qué consiste la “persistencia” en un sistema de navegación?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id,label,text,is_correct) VALUES
(@question_id,'A','Que los elementos se colocan siempre en el mismo sitio',1),
(@question_id,'B','Que la web carga rápidamente',0),
(@question_id,'C','Que los colores son consistentes',0),
(@question_id,'D','Que la información se actualiza automáticamente',0);

-- Pregunta 7
INSERT INTO questions (exam_id,text) VALUES (@exam_id, '¿Qué se recomienda hacer antes de divulgar una página web?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id,label,text,is_correct) VALUES
(@question_id,'A','Realizar una evaluación heurística o un test de usabilidad',1),
(@question_id,'B','Contratar publicidad online',0),
(@question_id,'C','Realizar encuestas a usuarios aleatorios',0),
(@question_id,'D','Publicar en redes sociales',0);

-- Pregunta 8
INSERT INTO questions (exam_id,text) VALUES (@exam_id, 'Según el PDF, ¿qué tipo de lenguaje se debe usar en una interfaz usable?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id,label,text,is_correct) VALUES
(@question_id,'A','Técnico y especializado',0),
(@question_id,'B','Legal y formal',0),
(@question_id,'C','Cercano, sencillo y comprensible',1),
(@question_id,'D','Coloquial y humorístico',0);

-- Pregunta 9
INSERT INTO questions (exam_id,text) VALUES (@exam_id, '¿Qué representa el tamaño de los puntos verdes en un mapa de calor de eye tracking?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id,label,text,is_correct) VALUES
(@question_id,'A','La importancia del contenido',0),
(@question_id,'B','El número de clics en esa zona',0),
(@question_id,'C','El tiempo que el usuario ha detenido la vista en ese punto',1),
(@question_id,'D','La velocidad de carga de ese elemento',0);
