-- Insertar examen
INSERT INTO exams (name) VALUES ('Tipos de asignación de direcciones en DHCP');
SET @exam_id = LAST_INSERT_ID();

-- Pregunta 1
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Qué caracteriza a la asignación manual (estática)?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'La IP cambia según disponibilidad', 0),
(@question_id, 'B', 'La IP queda fija asociada a la MAC del cliente', 1),
(@question_id, 'C', 'La IP se asigna solo la primera vez', 0),
(@question_id, 'D', 'La IP es temporal', 0);

-- Pregunta 2
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Cuál es una ventaja de la asignación manual?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Optimiza el uso de direcciones IP', 0),
(@question_id, 'B', 'Transparente para el usuario', 0),
(@question_id, 'C', 'Control total y evita conflictos', 1),
(@question_id, 'D', 'Asigna IP automáticamente sin intervención', 0);

-- Pregunta 3
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Cuál es un inconveniente de la asignación manual?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Puede cambiar la IP del cliente', 0),
(@question_id, 'B', 'Requiere mantenimiento manual si hay muchos equipos', 1),
(@question_id, 'C', 'Solo sirve para clientes temporales', 0),
(@question_id, 'D', 'No funciona con impresoras', 0);

-- Pregunta 4
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'En la asignación automática, ¿qué ocurre cuando un cliente se conecta por primera vez?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Recibe una IP aleatoria', 0),
(@question_id, 'B', 'Recibe una IP permanente del rango que queda asociada a su MAC', 1),
(@question_id, 'C', 'No recibe IP hasta configurarla manualmente', 0),
(@question_id, 'D', 'Recibe IP temporal', 0);

-- Pregunta 5
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Una ventaja de la asignación automática es…');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'El administrador no necesita definir cada IP manualmente', 1),
(@question_id, 'B', 'La IP cambia constantemente', 0),
(@question_id, 'C', 'Requiere mantenimiento manual', 0),
(@question_id, 'D', 'Solo sirve para servidores', 0);

-- Pregunta 6
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Una desventaja de la asignación automática es…');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Puede agotarse el rango si hay muchos clientes “fantasma”', 1),
(@question_id, 'B', 'La IP cambia cada vez', 0),
(@question_id, 'C', 'No funciona con portátiles', 0),
(@question_id, 'D', 'Ocupa demasiado espacio en el servidor', 0);

-- Pregunta 7
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Qué caracteriza a la asignación dinámica?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'La IP es permanente', 0),
(@question_id, 'B', 'La IP se presta al cliente solo por un tiempo limitado (lease time)', 1),
(@question_id, 'C', 'La IP queda asociada a la MAC para siempre', 0),
(@question_id, 'D', 'La IP no requiere renovación', 0);

-- Pregunta 8
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Una ventaja de la asignación dinámica es…');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Permite optimizar el uso de direcciones IP', 1),
(@question_id, 'B', 'Evita conflictos para dispositivos críticos', 0),
(@question_id, 'C', 'La IP nunca cambia', 0),
(@question_id, 'D', 'Requiere intervención manual', 0);

-- Pregunta 9
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Una desventaja de la asignación dinámica es…');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Un mismo cliente puede cambiar de IP, lo que no es deseable en servidores', 1),
(@question_id, 'B', 'El usuario debe configurar la IP manualmente', 0),
(@question_id, 'C', 'Ocupa demasiado espacio en el servidor', 0),
(@question_id, 'D', 'Solo sirve para redes pequeñas', 0);

-- Pregunta 10
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Según la comparación rápida, ¿qué tipo de asignación se usa típicamente en redes con muchos clientes temporales como aulas o hoteles?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Manual', 0),
(@question_id, 'B', 'Automática', 0),
(@question_id, 'C', 'Dinámica', 1),
(@question_id, 'D', 'Ninguna', 0);
