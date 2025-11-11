USE examenes_db;

-- Insertar examen
INSERT INTO exams (name) VALUES ('Preguntas Enrutamiento 1');

-- Obtener el id del examen insertado
SET @exam_id = LAST_INSERT_ID();

-- Pregunta 1
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Qué representa una dirección IP?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'El número de puerto de un servicio', 0),
(@question_id, 'B', 'El identificador de red de un router', 0),
(@question_id, 'C', 'Un número único que identifica un dispositivo en la red', 1),
(@question_id, 'D', 'El nombre de dominio de una red', 0);

-- Pregunta 2
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Qué indica la máscara de red?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Qué parte pertenece al dominio', 0),
(@question_id, 'B', 'Qué parte de la IP es de red y cuál del host', 1),
(@question_id, 'C', 'Qué protocolo de transporte se usa', 0),
(@question_id, 'D', 'El tipo de conexión física', 0);

-- Pregunta 3
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Cuál es la dirección de difusión (broadcast) de una subred?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'La primera dirección de la red', 0),
(@question_id, 'B', 'La dirección del router', 0),
(@question_id, 'C', 'La última dirección (todos los bits de host a 1)', 1),
(@question_id, 'D', 'La dirección 0.0.0.0', 0);

-- Pregunta 4
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'En una red 172.16.0.0/23, ¿cuál sería la dirección de red?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', '172.16.0.1', 0),
(@question_id, 'B', '172.16.0.0', 1),
(@question_id, 'C', '172.16.1.255', 0),
(@question_id, 'D', '172.16.1.1', 0);

-- Pregunta 5
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Cuántas direcciones utilizables tiene una subred /23?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', '256', 0),
(@question_id, 'B', '510', 1),
(@question_id, 'C', '512', 0),
(@question_id, 'D', '1022', 0);

-- Pregunta 6
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Cuál es el propósito del subnetting?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Aumentar la velocidad del router', 0),
(@question_id, 'B', 'Dividir una red grande en subredes más pequeñas', 1),
(@question_id, 'C', 'Asignar nombres a las redes', 0),
(@question_id, 'D', 'Crear direcciones IPv6', 0);

-- Pregunta 7
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'En la subred 172.16.2.0/23, ¿cuál es la dirección de broadcast?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', '172.16.2.255', 0),
(@question_id, 'B', '172.16.3.255', 1),
(@question_id, 'C', '172.16.3.0', 0),
(@question_id, 'D', '172.16.2.1', 0);

-- Pregunta 8
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Qué función tiene la puerta de enlace (gateway)?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Servir como servidor de nombres', 0),
(@question_id, 'B', 'Asignar IPs dinámicas', 0),
(@question_id, 'C', 'Permitir la comunicación con otras redes', 1),
(@question_id, 'D', 'Limitar el acceso a Internet', 0);

-- Pregunta 9
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'En el ejemplo del documento, ¿cuál sería la puerta de enlace para el host 172.16.0.2?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', '172.16.0.2', 0),
(@question_id, 'B', '172.16.1.255', 0),
(@question_id, 'C', '172.16.0.1', 1),
(@question_id, 'D', '172.16.2.1', 0);

-- Pregunta 10
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Qué indica la columna “Gateway” en una tabla de enrutamiento?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'El servidor DNS del equipo', 0),
(@question_id, 'B', 'La interfaz física', 0),
(@question_id, 'C', 'El próximo salto hacia donde se envía el tráfico', 1),
(@question_id, 'D', 'La dirección de broadcast', 0);

-- Pregunta 11
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Qué sucede si la red destino está en la misma subred?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'El paquete se envía directamente al gateway', 0),
(@question_id, 'B', 'Se envía directamente al destino', 1),
(@question_id, 'C', 'Se bloquea el tráfico', 0),
(@question_id, 'D', 'Se envía por la ruta 0.0.0.0', 0);

-- Pregunta 12
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'En una tabla de rutas, ¿qué representa la dirección 0.0.0.0/0?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Una red local', 0),
(@question_id, 'B', 'La ruta por defecto hacia Internet', 1),
(@question_id, 'C', 'El broadcast de la red', 0),
(@question_id, 'D', 'El identificador del router', 0);

-- Pregunta 13
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Qué comando en Linux muestra la tabla de enrutamiento?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'ip addr', 0),
(@question_id, 'B', 'ping', 0),
(@question_id, 'C', 'ip route show', 1),
(@question_id, 'D', 'netstat -p', 0);

-- Pregunta 14
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Qué herramienta permite comprobar si hay conectividad con otro equipo?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'traceroute', 0),
(@question_id, 'B', 'ping', 1),
(@question_id, 'C', 'route add', 0),
(@question_id, 'D', 'nslookup', 0);

-- Pregunta 15
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Qué muestra el comando traceroute?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'La dirección IP pública del equipo', 0),
(@question_id, 'B', 'El número de saltos que da un paquete hasta su destino', 1),
(@question_id, 'C', 'Las interfaces configuradas', 0),
(@question_id, 'D', 'Los servicios activos en el router', 0);
