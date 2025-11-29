-- Crear examen
INSERT INTO exams (name) VALUES ('EXAMEN UT2 DOCKER');
SET @exam_id = LAST_INSERT_ID();

-- Pregunta 1
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Qué es Docker?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','Un lenguaje de programación',0),
(@question_id,'B','Una plataforma para crear, desplegar y ejecutar aplicaciones en contenedores',1),
(@question_id,'C','Un sistema de control de versiones',0),
(@question_id,'D','Un servidor web',0);

-- Pregunta 2
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Qué hace un contenedor en Docker?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','Instala sistemas operativos completos',0),
(@question_id,'B','Ejecuta aplicaciones aisladas del host',1),
(@question_id,'C','Solo almacena imágenes',0),
(@question_id,'D','Sirve como firewall',0);

-- Pregunta 3
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Cuál es la diferencia principal entre imagen y contenedor?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','Una imagen es un archivo ejecutable; un contenedor es la instancia en ejecución',1),
(@question_id,'B','Un contenedor es más grande que una imagen',0),
(@question_id,'C','Una imagen requiere Internet para funcionar',0),
(@question_id,'D','No hay diferencia',0);

-- Pregunta 4
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Comando para crear y ejecutar un contenedor:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','docker start',0),
(@question_id,'B','docker run',1),
(@question_id,'C','docker exec',0),
(@question_id,'D','docker build',0);

-- Pregunta 5
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Parámetro para ejecutar un contenedor en segundo plano:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','-p',0),
(@question_id,'B','-d',1),
(@question_id,'C','-it',0),
(@question_id,'D','--name',0);

-- Pregunta 6
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Comando para detener un contenedor en ejecución:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','docker stop',1),
(@question_id,'B','docker rm',0),
(@question_id,'C','docker restart',0),
(@question_id,'D','docker kill',0);

-- Pregunta 7
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Comando para eliminar un contenedor (incluso si está corriendo):');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','docker rm',1),
(@question_id,'B','docker rmi',0),
(@question_id,'C','docker stop',0),
(@question_id,'D','docker exec',0);

-- Pregunta 8
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Comando para listar imágenes disponibles en el sistema:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','docker images',1),
(@question_id,'B','docker ps',0),
(@question_id,'C','docker inspect',0),
(@question_id,'D','docker run',0);

-- Pregunta 9
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Comando para descargar una imagen desde Docker Hub:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','docker pull',1),
(@question_id,'B','docker build',0),
(@question_id,'C','docker push',0),
(@question_id,'D','docker start',0);

-- Pregunta 10
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Comando para construir una imagen desde un Dockerfile:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','docker run',0),
(@question_id,'B','docker build',1),
(@question_id,'C','docker commit',0),
(@question_id,'D','docker exec',0);

-- Pregunta 11
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Comando para subir una imagen a un repositorio remoto:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','docker push',1),
(@question_id,'B','docker pull',0),
(@question_id,'C','docker commit',0),
(@question_id,'D','docker rmi',0);

-- Pregunta 12
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Comando para ejecutar un comando dentro de un contenedor en ejecución:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','docker run',0),
(@question_id,'B','docker exec',1),
(@question_id,'C','docker logs',0),
(@question_id,'D','docker start',0);

-- Pregunta 13
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Parámetro para abrir un contenedor en modo interactivo con terminal:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','-d',0),
(@question_id,'B','-p',0),
(@question_id,'C','-it',1),
(@question_id,'D','--rm',0);

-- Pregunta 14
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Comando para copiar archivos entre host y contenedor:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','docker exec',0),
(@question_id,'B','docker cp',1),
(@question_id,'C','docker commit',0),
(@question_id,'D','docker logs',0);

-- Pregunta 15
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Comando para reiniciar un contenedor:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','docker stop',0),
(@question_id,'B','docker start',0),
(@question_id,'C','docker restart',1),
(@question_id,'D','docker rm',0);

-- Pregunta 16
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Comando para eliminar una imagen de Docker:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','docker rm',0),
(@question_id,'B','docker rmi',1),
(@question_id,'C','docker build',0),
(@question_id,'D','docker push',0);

-- Pregunta 17
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Comando para mostrar logs en tiempo real de un contenedor:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','docker ps',0),
(@question_id,'B','docker logs -f',1),
(@question_id,'C','docker stats',0),
(@question_id,'D','docker exec',0);

-- Pregunta 18
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Comando para limpiar recursos no usados (contenedores, imágenes, redes):');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','docker system prune',1),
(@question_id,'B','docker rm -f',0),
(@question_id,'C','docker rmi',0),
(@question_id,'D','docker images -a',0);

-- Pregunta 19
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Comando para levantar todos los servicios definidos en docker-compose.yml:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','docker compose down',0),
(@question_id,'B','docker compose ps',0),
(@question_id,'C','docker compose up -d',1),
(@question_id,'D','docker build',0);

-- Pregunta 20
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Comando para detener y eliminar servicios y redes de Docker Compose:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','docker compose down -v',1),
(@question_id,'B','docker compose up',0),
(@question_id,'C','docker stop',0),
(@question_id,'D','docker rm',0);
