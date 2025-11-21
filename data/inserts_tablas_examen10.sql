

INSERT INTO exams (name) VALUES ('DOR - Usabilidad en la Web - Grupo 4');
SET @exam_id = LAST_INSERT_ID();


INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Qué tres aspectos están directamente relacionados con la facilidad de uso?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id,label,text,is_correct) VALUES
(@question_id,'A','Velocidad, diseño, contenido',0),
(@question_id,'B','Eficacia, eficiencia, satisfacción',1),
(@question_id,'C','Accesibilidad, interactividad, seguridad',0),
(@question_id,'D','Estética, simplicidad, rapidez',0);


INSERT INTO questions (exam_id,text) VALUES (@exam_id, '¿Es importante que todo tipo de usuarios puedan acceder y moverse a lo largo de la web?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id,label,text,is_correct) VALUES
(@question_id,'A','Verdadero',1),
(@question_id,'B','Falso',0);


INSERT INTO questions (exam_id,text) VALUES (@exam_id, '¿Qué se recomienda en el diseño de una interfaz usable?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id,label,text,is_correct) VALUES
(@question_id,'A','Usar iconos totalmente nuevos para sorprender al usuario.',0),
(@question_id,'B','Evitar cualquier reacción al pasar el ratón.',0),
(@question_id,'C','Utilizar lenguaje cercano y comprensible.',1),
(@question_id,'D','Eliminar elementos familiares del diseño.',0);


INSERT INTO questions (exam_id,text) VALUES (@exam_id, '¿Cuáles de los siguientes métodos NO se usan para analizar la usabilidad?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id,label,text,is_correct) VALUES
(@question_id,'A','Utilizar la técnica de eye tracking',0),
(@question_id,'B','Utilizar evaluaciones superficiales',1),
(@question_id,'C','Realizar encuestas',0),
(@question_id,'D','Realizar una evaluación heurística',0);


INSERT INTO questions (exam_id,text) VALUES (@exam_id, '¿Cuál es la ventaja de conocer bien a los usuarios?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id,label,text,is_correct) VALUES
(@question_id,'A','Permite incluir más publicidad en el sitio.',0),
(@question_id,'B','Facilita obtener ventaja frente a la competencia.',1),
(@question_id,'C','Ayuda a reducir el número de contenidos.',0),
(@question_id,'D','Permite evitar hacer pruebas de usabilidad.',0);


INSERT INTO questions (exam_id,text) VALUES (@exam_id, '¿A qué grupo de usuarios está dirigido principalmente el uso de atajos aceleradores de uso en una web?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id,label,text,is_correct) VALUES
(@question_id,'A','Usuarios con discapacidad',0),
(@question_id,'B','Usuarios inexpertos',0),
(@question_id,'C','Usuarios expertos',1),
(@question_id,'D','A cualquier tipo de usuarios',0);


INSERT INTO questions (exam_id,text) VALUES (@exam_id, '¿Qué pregunta NO forma parte de un sistema de navegación usable?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id,label,text,is_correct) VALUES
(@question_id,'A','¿Dónde estoy?',0),
(@question_id,'B','¿Cómo llegué aquí?',0),
(@question_id,'C','¿Cuánto cuesta la página?',1),
(@question_id,'D','¿A dónde puedo ir?',0);


INSERT INTO questions (exam_id,text) VALUES (@exam_id, 'Respecto al uso de elementos novedosos en el diseño de interfaces usables:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id,label,text,is_correct) VALUES
(@question_id,'A','Lo novedoso garantiza una experiencia mejor a los usuarios.',0),
(@question_id,'B','La novedad es un principio clave para el branding y debe priorizarse.',0),
(@question_id,'C','Los elementos novedosos deben reservarse para los usuarios expertos.',0),
(@question_id,'D','Lo novedoso no siempre es lo más adecuado',1);


INSERT INTO questions (exam_id,text) VALUES (@exam_id, '¿Qué método se utiliza para analizar dónde fijan la vista los usuarios?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id,label,text,is_correct) VALUES
(@question_id,'A','Evaluación heurística.',0),
(@question_id,'B','Test de rendimiento.',0),
(@question_id,'C','Eye tracking.',1),
(@question_id,'D','Encuestas de satisfacción.',0);


