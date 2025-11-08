-- C:\xampp\htdocs\lanzarote.lan\examenestests\data\inserts_tablas_examen2.sql



INSERT INTO exams (name) VALUES ('Tema 1-2. Aspectos generales de las arquitecturas web');


-- Pregunta 11
INSERT INTO questions (exam_id, text) VALUES (3, '¿Qué ventaja tiene el modelo monolítico?');
INSERT INTO options (question_id, label, text, is_correct) VALUES
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 0,1), 'A', 'Escalabilidad', 0),
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 0,1), 'B', 'Simplicidad y bajo coste', 1),
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 0,1), 'C', 'Alta disponibilidad', 0),
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 0,1), 'D', 'Modularidad', 0);

-- Pregunta 12
INSERT INTO questions (exam_id, text) VALUES (3, '¿Cuál es un inconveniente del modelo cliente-servidor?');
INSERT INTO options (question_id, label, text, is_correct) VALUES
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 1,1), 'A', 'Poca escalabilidad con muchos usuarios', 1),
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 1,1), 'B', 'Alta complejidad', 0),
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 1,1), 'C', 'Exceso de capas', 0),
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 1,1), 'D', 'Uso de demasiados servidores', 0);

-- Pregunta 13
INSERT INTO questions (exam_id, text) VALUES (3, '¿Qué capas componen el modelo de tres capas?');
INSERT INTO options (question_id, label, text, is_correct) VALUES
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 2,1), 'A', 'Presentación, negocio y datos', 1),
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 2,1), 'B', 'Cliente, servidor y base de datos', 0),
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 2,1), 'C', 'Aplicación, red y física', 0),
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 2,1), 'D', 'Usuario, router y base de datos', 0);

-- Pregunta 14
INSERT INTO questions (exam_id, text) VALUES (3, '¿Qué ventaja principal tiene el modelo de tres capas?');
INSERT INTO options (question_id, label, text, is_correct) VALUES
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 3,1), 'A', 'Mayor mantenimiento y escalabilidad', 1),
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 3,1), 'B', 'Menor seguridad', 0),
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 3,1), 'C', 'Menos control', 0),
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 3,1), 'D', 'Depende de un solo servidor', 0);

-- Pregunta 15
INSERT INTO questions (exam_id, text) VALUES (3, '¿Qué desventaja tienen los microservicios?');
INSERT INTO options (question_id, label, text, is_correct) VALUES
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 4,1), 'A', 'Complejidad de gestión', 1),
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 4,1), 'B', 'Baja disponibilidad', 0),
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 4,1), 'C', 'Lentitud', 0),
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 4,1), 'D', 'Imposibilidad de escalar', 0);

-- Pregunta 16
INSERT INTO questions (exam_id, text) VALUES (3, '¿Qué característica define a los microservicios?');
INSERT INTO options (question_id, label, text, is_correct) VALUES
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 5,1), 'A', 'Servicios independientes que se comunican por API', 1),
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 5,1), 'B', 'Un único punto de ejecución', 0),
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 5,1), 'C', 'Una base de datos común', 0),
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 5,1), 'D', 'Un solo lenguaje', 0);

-- Pregunta 17
INSERT INTO questions (exam_id, text) VALUES (3, '¿Qué elemento de las arquitecturas distribuidas mejora la disponibilidad?');
INSERT INTO options (question_id, label, text, is_correct) VALUES
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 6,1), 'A', 'Redundancia de servicios', 1),
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 6,1), 'B', 'Un solo servidor', 0),
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 6,1), 'C', 'Centralización', 0),
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 6,1), 'D', 'DNS único', 0);

-- Pregunta 18
INSERT INTO questions (exam_id, text) VALUES (3, '¿Cuál es una ventaja del modelo de microservicios?');
INSERT INTO options (question_id, label, text, is_correct) VALUES
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 7,1), 'A', 'Escalabilidad y alta disponibilidad', 1),
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 7,1), 'B', 'Bajo coste', 0),
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 7,1), 'C', 'Sencillez', 0),
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 7,1), 'D', 'Sincronización manual', 0);

-- Pregunta 19
INSERT INTO questions (exam_id, text) VALUES (3, '¿Cuál es el inconveniente del modelo monolítico en sistemas grandes?');
INSERT INTO options (question_id, label, text, is_correct) VALUES
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 8,1), 'A', 'Dificultad de mantenimiento', 1),
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 8,1), 'B', 'Exceso de seguridad', 0),
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 8,1), 'C', 'Lentitud de red', 0),
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 8,1), 'D', 'Requiere DNS', 0);

-- Pregunta 20
INSERT INTO questions (exam_id, text) VALUES (3, '¿Qué factor determina la elección de la arquitectura?');
INSERT INTO options (question_id, label, text, is_correct) VALUES
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 9,1), 'A', 'Tamaño del proyecto y objetivos de crecimiento', 1),
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 9,1), 'B', 'Aleatoriamente', 0),
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 9,1), 'C', 'Tipo de navegador', 0),
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 9,1), 'D', 'Sistema operativo del usuario', 0);
