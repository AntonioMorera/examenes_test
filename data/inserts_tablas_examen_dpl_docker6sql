-- Crear examen
INSERT INTO exams (name) VALUES ('EXAMEN UT2 DOCKER Y PHP');
SET @exam_id = LAST_INSERT_ID();

-- Pregunta 1
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Qué hace el archivo index.php con el contenido <?php phpinfo(); ?>?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','Muestra la configuración de Apache',0),
(@question_id,'B','Muestra la configuración de PHP',1),
(@question_id,'C','Ejecuta un servidor web',0),
(@question_id,'D','Crea un contenedor Docker',0);

-- Pregunta 2
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Qué combinación de software contiene la imagen php:8.2-apache?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','Solo PHP',0),
(@question_id,'B','Solo Apache',0),
(@question_id,'C','Apache + PHP',1),
(@question_id,'D','PHP + MySQL',0);

-- Pregunta 3
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Por qué usamos un contenedor con Apache + PHP en Docker en lugar de instalar PHP directamente en Kubuntu?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','Porque Docker hace que PHP sea más rápido',0),
(@question_id,'B','Para tener un entorno aislado y portátil',1),
(@question_id,'C','Porque Kubuntu no soporta PHP',0),
(@question_id,'D','Porque Apache no funciona fuera de Docker',0);

-- Pregunta 4
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Qué hace el parámetro -v ~/miwebphp:/var/www/html en el comando Docker?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','Asigna un puerto del host al contenedor',0),
(@question_id,'B','Monta la carpeta local como raíz del servidor web dentro del contenedor',1),
(@question_id,'C','Instala PHP en el contenedor',0),
(@question_id,'D','Define el nombre del contenedor',0);

-- Pregunta 5
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Qué hace el parámetro -p 8080:80 en el comando Docker?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','Asocia el puerto 80 del host con el 8080 del contenedor',0),
(@question_id,'B','Asocia el puerto 8080 del host con el 80 del contenedor',1),
(@question_id,'C','Monta un volumen',0),
(@question_id,'D','Define la versión de PHP',0);

-- Pregunta 6
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Qué comando crea y ejecuta un contenedor con Apache + PHP en segundo plano?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','docker run php:8.2-apache',0),
(@question_id,'B','docker run -d --name mi-apache-php -p 8080:80 -v ~/miwebphp:/var/www/html php:8.2-apache',1),
(@question_id,'C','docker ps -a',0),
(@question_id,'D','docker start mi-apache-php',0);

-- Pregunta 7
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Cuál es la función de --name mi-apache-php?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','Define la ruta de los archivos PHP',0),
(@question_id,'B','Asigna un nombre al contenedor',1),
(@question_id,'C','Detiene el contenedor',0),
(@question_id,'D','Construye una imagen nueva',0);

-- Pregunta 8
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Comando para detener el contenedor mi-apache-php:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','docker stop mi-apache-php',1),
(@question_id,'B','docker start mi-apache-php',0),
(@question_id,'C','docker rm mi-apache-php',0),
(@question_id,'D','docker ps',0);

-- Pregunta 9
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Comando para iniciar nuevamente el contenedor detenido:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','docker stop mi-apache-php',0),
(@question_id,'B','docker start mi-apache-php',1),
(@question_id,'C','docker rm mi-apache-php',0),
(@question_id,'D','docker logs mi-apache-php',0);

-- Pregunta 10
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Comando para eliminar el contenedor mi-apache-php:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','docker stop mi-apache-php',0),
(@question_id,'B','docker start mi-apache-php',0),
(@question_id,'C','docker rm mi-apache-php',1),
(@question_id,'D','docker ps -a',0);

-- Pregunta 11
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Comando para ver los registros de Apache en el contenedor:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','docker ps',0),
(@question_id,'B','docker logs mi-apache-php',1),
(@question_id,'C','docker rm mi-apache-php',0),
(@question_id,'D','docker run php:8.2-apache',0);
