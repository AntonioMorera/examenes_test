
INSERT INTO exams (name) VALUES ('Tutorial DHCP');
SET @exam_id = LAST_INSERT_ID();

INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Qué significa la sigla DHCP?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Dynamic Host Configuration Protocol', 1),
(@question_id, 'B', 'Direct Host Communication Protocol', 0),
(@question_id, 'C', 'Dynamic Hypertext Control Protocol', 0),
(@question_id, 'D', 'Distributed Host Control Protocol', 0);

-- Pregunta 10
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'En el flujo DORA de DHCP, ¿qué significa la “D”?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Delete', 0),
(@question_id, 'B', 'Discover', 1),
(@question_id, 'C', 'Deliver', 0),
(@question_id, 'D', 'Data', 0);

-- Pregunta 11
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'En el flujo DORA de DHCP, ¿qué significa la “O”?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Offer', 1),
(@question_id, 'B', 'Obtain', 0),
(@question_id, 'C', 'Open', 0),
(@question_id, 'D', 'Order', 0);

-- Pregunta 12
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'En el flujo DORA de DHCP, ¿qué significa la “R”?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Request', 1),
(@question_id, 'B', 'Receive', 0),
(@question_id, 'C', 'Reply', 0),
(@question_id, 'D', 'Release', 0);

-- Pregunta 13
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'En el flujo DORA de DHCP, ¿qué significa la “A”?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Accept', 0),
(@question_id, 'B', 'Acknowledge', 1),
(@question_id, 'C', 'Allocate', 0),
(@question_id, 'D', 'Assign', 0);

-- Pregunta 14
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Qué significa DHCPACK?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'DHCP Acknowledge, confirma la concesión de IP', 1),
(@question_id, 'B', 'DHCP Action, inicia la concesión', 0),
(@question_id, 'C', 'DHCP Accept, solicita la IP', 0),
(@question_id, 'D', 'DHCP Allocate, libera la IP', 0);

-- Pregunta 15
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Qué significa DHCPNAK?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'DHCP Not Available', 0),
(@question_id, 'B', 'DHCP Negative Acknowledge, rechaza la IP', 1),
(@question_id, 'C', 'DHCP New Assignment', 0),
(@question_id, 'D', 'DHCP Notify All', 0);

-- Pregunta 16
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Qué significa T1 en el ciclo de vida de una concesión DHCP?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Tiempo total de concesión', 0),
(@question_id, 'B', 'Momento en que el cliente intenta la primera renovación, al 50% del tiempo de concesión', 1),
(@question_id, 'C', 'Tiempo de espera antes de liberar la IP', 0),
(@question_id, 'D', 'Tiempo máximo que puede usar la IP', 0);

-- Pregunta 17
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Qué significa T2 en el ciclo de vida de una concesión DHCP?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Momento de liberación de IP', 0),
(@question_id, 'B', 'Segundo intento de renovación al 87,5% del tiempo de concesión', 1),
(@question_id, 'C', 'Tiempo que tarda el servidor en asignar IP', 0),
(@question_id, 'D', 'Tiempo mínimo de concesión', 0);

-- Pregunta 18
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'En DHCP, ¿qué significa que un mensaje sea broadcast?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Que se envía a todos los dispositivos de la red', 1),
(@question_id, 'B', 'Que se envía solo al servidor DHCP', 0),
(@question_id, 'C', 'Que se envía solo al cliente que solicitó la IP', 0),
(@question_id, 'D', 'Que se envía por Internet', 0);

-- Pregunta 19
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Qué significa que un mensaje DHCP sea unicast?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Se envía a todos los dispositivos de la red', 0),
(@question_id, 'B', 'Se envía solo a un destinatario específico', 1),
(@question_id, 'C', 'Se envía al servidor más cercano', 0),
(@question_id, 'D', 'Se envía de manera encriptada', 0);

-- Pregunta 20
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Qué significa “lease time” en DHCP?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'El tiempo que tarda el servidor en responder', 0),
(@question_id, 'B', 'El tiempo que dura la concesión de una IP al cliente', 1),
(@question_id, 'C', 'El tiempo que tarda el cliente en enviar DHCPREQUEST', 0),
(@question_id, 'D', 'La frecuencia con la que se renueva la IP', 0);

-- Pregunta 21
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Qué significa la sigla IP en “dirección IP”?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Internet Protocol', 1),
(@question_id, 'B', 'Internal Packet', 0),
(@question_id, 'C', 'Information Path', 0),
(@question_id, 'D', 'Interface Protocol', 0);

-- Pregunta 22
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Qué significa que un servidor DHCP sea “autoridad”?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Que puede asignar IPs válidas en la red', 1),
(@question_id, 'B', 'Que solo responde a clientes específicos', 0),
(@question_id, 'C', 'Que no puede reasignar IPs', 0),
(@question_id, 'D', 'Que solo gestiona la puerta de enlace', 0);

-- Pregunta 23
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Qué significa “DHCPRELEASE”?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Mensaje del cliente para liberar la IP asignada', 1),
(@question_id, 'B', 'Mensaje del servidor para confirmar la concesión', 0),
(@question_id, 'C', 'Mensaje del cliente solicitando renovación', 0),
(@question_id, 'D', 'Mensaje del servidor rechazando la IP', 0);