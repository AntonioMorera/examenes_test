-- Crear examen
INSERT INTO exams (name) VALUES ('EXAMEN UT2 DOCKER Y APACHE');
SET @exam_id = LAST_INSERT_ID();

-- Pregunta 1
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Qué es Docker?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','Una máquina virtual completa',0),
(@question_id,'B','Una herramienta para ejecutar aplicaciones en contenedores',1),
(@question_id,'C','Un gestor de paquetes para Linux',0),
(@question_id,'D','Un sistema operativo',0);

-- Pregunta 2
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Qué contiene un contenedor de Docker?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','Solo el código de la aplicación',0),
(@question_id,'B','Código, librerías, dependencias y configuración',1),
(@question_id,'C','Solo la base de datos',0),
(@question_id,'D','Solo el sistema operativo',0);

-- Pregunta 3
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Cuál es la ventaja principal de usar Docker para desarrollo?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','Instala software más rápido que apt',0),
(@question_id,'B','Garantiza que las aplicaciones funcionen igual en todos los entornos',1),
(@question_id,'C','Aumenta la velocidad del procesador',0),
(@question_id,'D','Evita tener que aprender Linux',0);

-- Pregunta 4
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Para qué se puede usar Docker?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','Probar software sin afectar el sistema',1),
(@question_id,'B','Desplegar aplicaciones web completas',1),
(@question_id,'C','Ahorrar tiempo usando imágenes preconfiguradas',1),
(@question_id,'D','Reemplazar el sistema operativo del PC',0);

-- Pregunta 5
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Cuál es el primer paso recomendado antes de instalar Docker?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','Ejecutar docker run hello-world',0),
(@question_id,'B','Actualizar el sistema con sudo apt update && sudo apt upgrade -y',1),
(@question_id,'C','Añadir la clave GPG de Docker',0),
(@question_id,'D','Instalar Apache',0);

-- Pregunta 6
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Qué comando añade la clave GPG oficial de Docker?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','sudo apt install docker-ce',0),
(@question_id,'B','curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg',1),
(@question_id,'C','sudo systemctl status docker',0),
(@question_id,'D','docker run hello-world',0);

-- Pregunta 7
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Qué hace el comando sudo usermod -aG docker $USER?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','Instala Docker en el sistema',0),
(@question_id,'B','Permite usar Docker sin sudo',1),
(@question_id,'C','Actualiza Docker',0),
(@question_id,'D','Reinicia el servicio de Docker',0);

-- Pregunta 8
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Cómo se comprueba que Docker está funcionando correctamente?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','docker ps -a',0),
(@question_id,'B','sudo docker run hello-world',1),
(@question_id,'C','docker images',0),
(@question_id,'D','docker rm',0);

-- Pregunta 9
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Comando para listar los contenedores activos:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','docker images',0),
(@question_id,'B','docker ps',1),
(@question_id,'C','docker stop',0),
(@question_id,'D','docker rmi',0);

-- Pregunta 10
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Comando para listar todos los contenedores, activos o detenidos:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','docker ps -a',1),
(@question_id,'B','docker start',0),
(@question_id,'C','docker rm',0),
(@question_id,'D','docker logs',0);

-- Pregunta 11
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Comando para mostrar las imágenes descargadas:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','docker ps',0),
(@question_id,'B','docker images',1),
(@question_id,'C','docker run',0),
(@question_id,'D','docker stop',0);

-- Pregunta 12
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Comando para detener un contenedor en ejecución:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','docker stop <nombre>',1),
(@question_id,'B','docker rm <nombre>',0),
(@question_id,'C','docker rmi <imagen>',0),
(@question_id,'D','docker ps',0);

-- Pregunta 13
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Comando para eliminar un contenedor:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','docker stop',0),
(@question_id,'B','docker rm <nombre>',1),
(@question_id,'C','docker rmi <imagen>',0),
(@question_id,'D','docker ps -a',0);

-- Pregunta 14
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Comando para eliminar una imagen de Docker:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','docker ps',0),
(@question_id,'B','docker rm',0),
(@question_id,'C','docker rmi <imagen>',1),
(@question_id,'D','docker run',0);
