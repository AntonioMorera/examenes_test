USE examenes_db;

-- Insertar examen
INSERT INTO exams (name) VALUES ('TEMA 1.6 — Qué es Node.js y para qué sirve realmente');

-- Obtener el id del examen insertado
SET @exam_id = LAST_INSERT_ID();

-- Pregunta 1
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Qué es Node.js?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Un lenguaje de programación nuevo', 0),
(@question_id, 'B', 'Un entorno que permite ejecutar JavaScript en el servidor', 1),
(@question_id, 'C', 'Un navegador especializado', 0),
(@question_id, 'D', 'Un gestor de bases de datos', 0);

-- Pregunta 2
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Cuál es la principal ventaja del modelo asíncrono de Node.js?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Reduce la velocidad de respuesta', 0),
(@question_id, 'B', 'Permite manejar muchas peticiones sin bloquearse', 1),
(@question_id, 'C', 'Requiere más memoria por proceso', 0),
(@question_id, 'D', 'Solo procesa una petición a la vez', 0);

-- Pregunta 3
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Qué diferencia principal tiene Node.js respecto a Apache?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Usa archivos PHP', 0),
(@question_id, 'B', 'Necesita un intérprete externo', 0),
(@question_id, 'C', 'Actúa como servidor web y de aplicaciones al mismo tiempo', 1),
(@question_id, 'D', 'Solo sirve contenido estático', 0);

-- Pregunta 4
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Qué lenguaje utiliza Node.js para el desarrollo en el servidor?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'PHP', 0),
(@question_id, 'B', 'Python', 0),
(@question_id, 'C', 'JavaScript', 1),
(@question_id, 'D', 'Java', 0);

-- Pregunta 5
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Qué tipo de aplicaciones aprovechan mejor Node.js?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Blogs personales', 0),
(@question_id, 'B', 'Aplicaciones dinámicas o en tiempo real', 1),
(@question_id, 'C', 'Sitios web estáticos', 0),
(@question_id, 'D', 'Gestores de contenido simples', 0);

-- Pregunta 6
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'En Apache con PHP, ¿qué ocurre cuando el cliente solicita una página .php?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Apache la envía directamente sin procesar', 0),
(@question_id, 'B', 'Apache la pasa al motor de PHP para generar HTML', 1),
(@question_id, 'C', 'Se ejecuta JavaScript en el navegador', 0),
(@question_id, 'D', 'Se devuelve un archivo JSON', 0);

-- Pregunta 7
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Qué resultado recibe el cliente tras ejecutar un archivo PHP?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'El código PHP completo', 0),
(@question_id, 'B', 'HTML generado por el servidor', 1),
(@question_id, 'C', 'Un archivo ZIP', 0),
(@question_id, 'D', 'Un script JavaScript', 0);

-- Pregunta 8
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Qué módulo se utiliza normalmente para crear servidores en Node.js de forma sencilla?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Express', 1),
(@question_id, 'B', 'React', 0),
(@question_id, 'C', 'Nginx', 0),
(@question_id, 'D', 'MongoDB', 0);

-- Pregunta 9
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'En Node.js, ¿qué tipo de datos puede devolver un servidor?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Solo HTML', 0),
(@question_id, 'B', 'Solo imágenes', 0),
(@question_id, 'C', 'HTML o JSON', 1),
(@question_id, 'D', 'Solo texto plano', 0);

-- Pregunta 10
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Qué empresas conocidas usan Node.js por su rendimiento?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Netflix, Uber y PayPal', 1),
(@question_id, 'B', 'Amazon, Blogger y Moodle', 0),
(@question_id, 'C', 'WordPress, PrestaShop y Drupal', 0),
(@question_id, 'D', 'Yahoo, Facebook y MySQL', 0);

-- Pregunta 11
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'En el flujo clásico con Apache + PHP, ¿quién interpreta el código del servidor?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'El navegador', 0),
(@question_id, 'B', 'Apache directamente', 0),
(@question_id, 'C', 'El motor de PHP', 1),
(@question_id, 'D', 'Node.js', 0);

-- Pregunta 12
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Qué ventaja ofrece Node.js al no depender de Apache?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Mayor control del servidor y mejor rendimiento', 1),
(@question_id, 'B', 'Menor flexibilidad', 0),
(@question_id, 'C', 'Requiere más configuración', 0),
(@question_id, 'D', 'Solo funciona con Linux', 0);

-- Pregunta 13
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Qué característica destaca en Node.js frente a PHP para la comunicación en tiempo real?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Usa WebSockets de forma nativa', 1),
(@question_id, 'B', 'No admite múltiples clientes', 0),
(@question_id, 'C', 'Se basa en archivos HTML', 0),
(@question_id, 'D', 'Bloquea el servidor en cada petición', 0);

-- Pregunta 14
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Qué modelo de ejecución utiliza Node.js?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Procesos independientes y bloqueantes', 0),
(@question_id, 'B', 'Un solo proceso, asíncrono y no bloqueante', 1),
(@question_id, 'C', 'Múltiples procesos por cada cliente', 0),
(@question_id, 'D', 'Uno por cada hilo del sistema operativo', 0);

-- Pregunta 15
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿En qué casos es más recomendable usar PHP en lugar de Node.js?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'En APIs y chats en tiempo real', 0),
(@question_id, 'B', 'En webs simples o estáticas como blogs o noticias', 1),
(@question_id, 'C', 'En dashboards interactivos', 0),
(@question_id, 'D', 'En sistemas con muchas peticiones simultáneas', 0);
