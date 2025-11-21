

INSERT INTO exams (name) VALUES ('DOR - Usabilidad en la Web - Equipo 1');
SET @exam_id = LAST_INSERT_ID();


INSERT INTO questions (exam_id, text) VALUES (@exam_id,'Señala la opción que NO corresponde a un principio de usabilidad');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id,label,text,is_correct) VALUES
(@question_id,'A','Diseño estético y minimalista',0),
(@question_id,'B','Fácil localización de la información.',0),
(@question_id,'C','Persistencia del idioma único.',1);

-- Pregunta 2
INSERT INTO questions (exam_id, text) VALUES (@exam_id,'¿Qué opción respeta mejor la consistencia y estándares?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id,label,text,is_correct) VALUES
(@question_id,'A','Usar distintos colores en botones',0),
(@question_id,'B','Cambiar icono del menú sin explicación',0),
(@question_id,'C','Mantener mismos estilos, iconos y comportamientos',1);

-- Pregunta 3
INSERT INTO questions (exam_id, text) VALUES (@exam_id,'Una buena metáfora visual debe:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id,label,text,is_correct) VALUES
(@question_id,'A','Ser compleja y novedosa',0),
(@question_id,'B','Cambiar constantemente',0),
(@question_id,'C','Recordar objetos reales conocidos',1);

-- Pregunta 4
INSERT INTO questions (exam_id, text) VALUES (@exam_id,'¿Qué parámetro se revisa en una evaluación heurística?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id,label,text,is_correct) VALUES
(@question_id,'A','Colores atractivos',0),
(@question_id,'B','Consistencia en elementos gráficos y lenguaje',1),
(@question_id,'C','Muchas animaciones',0);

-- Pregunta 5
INSERT INTO questions (exam_id, text) VALUES (@exam_id,'Según el material, un buen icono debe ser:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id,label,text,is_correct) VALUES
(@question_id,'A','Innovador aunque confunda',0),
(@question_id,'B','Intuitivo y familiar',1),
(@question_id,'C','Muy pequeño',0),
(@question_id,'D','Rápido de cambiar automáticamente',0);

-- Pregunta 6
INSERT INTO questions (exam_id, text) VALUES (@exam_id,'Para mejorar la usabilidad es recomendable:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id,label,text,is_correct) VALUES
(@question_id,'A','Hacer memorizar todo al usuario',0),
(@question_id,'B','Usar lenguaje sencillo y metáforas visuales',1),
(@question_id,'C','Colocar elementos en lugares distintos',0),
(@question_id,'D','Ocultar errores',0);

-- Pregunta 7
INSERT INTO questions (exam_id, text) VALUES (@exam_id,'¿Qué beneficio aporta analizar el comportamiento del usuario?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id,label,text,is_correct) VALUES
(@question_id,'A','Permite mejorar el diseño según necesidades',1),
(@question_id,'B','Mide sólo el tiempo de carga',0),
(@question_id,'C','Aumenta el tráfico automáticamente',0),
(@question_id,'D','Reemplaza test de usabilidad',0);

-- Pregunta 8
INSERT INTO questions (exam_id, text) VALUES (@exam_id,'Indicador de que una interfaz NO está bien organizada:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id,label,text,is_correct) VALUES
(@question_id,'A','Información agrupada correctamente',0),
(@question_id,'B','Detalle bajo demanda',0),
(@question_id,'C','Elementos desordenados y sin separación visual',1),
(@question_id,'D','Enlaces muestran lo esperado',0);