-------------------------------------------------
-- EXAMEN GRUPO 6
INSERT INTO exams (name) VALUES ('DOR - Usabilidad en la Web - Grupo 6');
SET @exam_id = 31;

-- Pregunta 1
INSERT INTO questions (exam_id,text) VALUES (@exam_id, 'Según la ISO 9241-11, la usabilidad se define como:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id,label,text,is_correct) VALUES
(@question_id,'A','La estética visual de un producto',0),
(@question_id,'B','El grado en que un producto puede ser usado eficaz, eficiente y satisfactoriamente',1),
(@question_id,'C','La velocidad de carga de una web',0),
(@question_id,'D','El número de usuarios de un producto',0);

-- Pregunta 2
INSERT INTO questions (exam_id,text) VALUES (@exam_id, '¿Cuál de estas NO es una función del sistema de navegación global, local y contextual?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id,label,text,is_correct) VALUES
(@question_id,'A','Indicar al usuario dónde está',0),
(@question_id,'B','Mostrar rutas posibles',0),
(@question_id,'C','Diseñar los colores del sitio',1),
(@question_id,'D','Indicar de dónde viene el usuario',0);

-- Pregunta 3
INSERT INTO questions (exam_id,text) VALUES (@exam_id, 'Las 3 C para escribir en la web son:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id,label,text,is_correct) VALUES
(@question_id,'A','Claro, colorido y conceptual',0),
(@question_id,'B','Conciso, contrastado y creativo',0),
(@question_id,'C','Claro, conciso y correcto',1),
(@question_id,'D','Coherente, corto y convencional',0);

-- Pregunta 4
INSERT INTO questions (exam_id,text) VALUES (@exam_id, '¿Cuál es la regla principal sobre los enlaces?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id,label,text,is_correct) VALUES
(@question_id,'A','Deben ser siempre azules y subrayados',0),
(@question_id,'B','Deben indicar claramente adónde llevan',1),
(@question_id,'C','Deben tener animaciones',0),
(@question_id,'D','Deben usarse lo menos posible',0);

-- Pregunta 5
INSERT INTO questions (exam_id,text) VALUES (@exam_id, 'Un cuadro de búsqueda usable debe:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id,label,text,is_correct) VALUES
(@question_id,'A','Ser pequeño para no ocupar espacio',0),
(@question_id,'B','Ser grande para que el usuario vea lo que escribe',1),
(@question_id,'C','Ser invisible hasta que el usuario haga clic',0),
(@question_id,'D','Tener muchos botones y filtros',0);

-- Pregunta 6
INSERT INTO questions (exam_id,text) VALUES (@exam_id, 'El error más común en una página principal es:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id,label,text,is_correct) VALUES
(@question_id,'A','Tener imágenes pequeñas',0),
(@question_id,'B','No explicar claramente el objetivo del sitio',1),
(@question_id,'C','Tener demasiado espacio en blanco',0),
(@question_id,'D','Usar tipografías básicas',0);

-- Pregunta 7
INSERT INTO questions (exam_id,text) VALUES (@exam_id, 'La ceguera selectiva significa que:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id,label,text,is_correct) VALUES
(@question_id,'A','Los usuarios no ven los textos largos',0),
(@question_id,'B','Los usuarios ignoran inconscientemente todo lo que parece publicidad',1),
(@question_id,'C','Los usuarios solo miran imágenes',0),
(@question_id,'D','Los usuarios no distinguen colores',0);

-- Pregunta 8
INSERT INTO questions (exam_id,text) VALUES (@exam_id, 'El mejor método para evaluar la usabilidad es:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id,label,text,is_correct) VALUES
(@question_id,'A','Revisar opiniones de la empresa',0),
(@question_id,'B','Evaluación automática',0),
(@question_id,'C','Evaluación heurística',0),
(@question_id,'D','Test con usuarios',1);