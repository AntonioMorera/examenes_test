-- C:\xampp\htdocs\lanzarote.lan\examenestests\data\inserts_tablas_examen2.sql



INSERT INTO exams (name) VALUES ('Tema 1. Implantación de arquitecturas web');



INSERT INTO questions (exam_id, text) VALUES
(2, '¿Qué capa se encarga de la interfaz de usuario en una arquitectura web?'),
(2, '¿Qué protocolo permite la comunicación principal en la web?'),
(2, '¿Qué tipo de servidor ejecuta lógica de negocio avanzada?'),
(2, '¿Qué puerto usa un servidor web por defecto?'),
(2, '¿Qué acción se realiza tras instalar un servidor web?'),
(2, '¿Qué se debe documentar en la instalación de un servidor?'),
(2, '¿Qué elemento define la carpeta raíz de un servidor web?'),
(2, '¿Qué se debe verificar en las pruebas de funcionamiento?'),
(2, '¿Qué puerto se usa para HTTPS?'),
(2, '¿Por qué es importante documentar la instalación y configuración?');


-- Pregunta 1
INSERT INTO options (question_id, label, text, is_correct) VALUES
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 0,1), 'A', 'Datos', 0),
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 0,1), 'B', 'Aplicación', 0),
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 0,1), 'C', 'Presentación', 1),
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 0,1), 'D', 'Red', 0);

-- Pregunta 2
INSERT INTO options (question_id, label, text, is_correct) VALUES
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 1,1), 'A', 'DNS', 0),
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 1,1), 'B', 'HTTP/HTTPS', 1),
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 1,1), 'C', 'SSH', 0),
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 1,1), 'D', 'SMTP', 0);

-- Pregunta 3
INSERT INTO options (question_id, label, text, is_correct) VALUES
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 2,1), 'A', 'Servidor web', 0),
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 2,1), 'B', 'Servidor de aplicaciones', 1),
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 2,1), 'C', 'Proxy', 0),
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 2,1), 'D', 'Router', 0);

-- Pregunta 4
INSERT INTO options (question_id, label, text, is_correct) VALUES
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 3,1), 'A', '20', 0),
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 3,1), 'B', '21', 0),
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 3,1), 'C', '80', 1),
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 3,1), 'D', '8080', 0);

-- Pregunta 5
INSERT INTO options (question_id, label, text, is_correct) VALUES
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 4,1), 'A', 'Probar acceso desde navegador', 1),
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 4,1), 'B', 'Reiniciar la red', 0),
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 4,1), 'C', 'Cerrar el puerto 80', 0),
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 4,1), 'D', 'Apagar el servidor', 0);

-- Pregunta 6
INSERT INTO options (question_id, label, text, is_correct) VALUES
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 5,1), 'A', 'Pasos realizados y configuraciones', 1),
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 5,1), 'B', 'Direcciones IP externas', 0),
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 5,1), 'C', 'Solo los errores', 0),
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 5,1), 'D', 'Datos del administrador', 0);

-- Pregunta 7
INSERT INTO options (question_id, label, text, is_correct) VALUES
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 6,1), 'A', 'El directorio donde se guardan los archivos públicos', 1),
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 6,1), 'B', 'El registro de logs', 0),
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 6,1), 'C', 'La base de datos', 0),
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 6,1), 'D', 'El DNS', 0);

-- Pregunta 8
INSERT INTO options (question_id, label, text, is_correct) VALUES
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 7,1), 'A', 'Que el servidor responda a peticiones', 1),
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 7,1), 'B', 'Que el cliente esté apagado', 0),
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 7,1), 'C', 'Que el DNS no responda', 0),
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 7,1), 'D', 'Que los puertos estén cerrados', 0);

-- Pregunta 9
INSERT INTO options (question_id, label, text, is_correct) VALUES
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 8,1), 'A', '20', 0),
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 8,1), 'B', '80', 0),
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 8,1), 'C', '8080', 0),
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 8,1), 'D', '443', 1);

-- Pregunta 10
INSERT INTO options (question_id, label, text, is_correct) VALUES
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 9,1), 'A', 'Para replicar el entorno y resolver incidencias', 1),
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 9,1), 'B', 'Solo por obligación', 0),
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 9,1), 'C', 'Para borrar la configuración', 0),
((SELECT id FROM questions WHERE exam_id=2 ORDER BY id ASC LIMIT 9,1), 'D', 'Para cerrar servicios', 0);
