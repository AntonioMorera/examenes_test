-- Crear examen
INSERT INTO exams (name) VALUES ('EXAMEN UT2 guía Apache');
SET @exam_id = LAST_INSERT_ID();

-- Pregunta 1
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Qué es un servidor web?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','Un programa que gestiona bases de datos.',0),
(@question_id,'B','Un software que entrega contenido web a los usuarios a través de Internet.',1),
(@question_id,'C','Un sistema operativo especializado en seguridad.',0),
(@question_id,'D','Un navegador que accede a sitios web.',0);

-- Pregunta 2
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Cuál de estos NO es un servidor web conocido:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','Apache',0),
(@question_id,'B','Nginx',0),
(@question_id,'C','MySQL',1),
(@question_id,'D','Lighttpd',0);

-- Pregunta 3
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Una ventaja del hosting compartido es:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','Mayor control de todos los recursos del servidor',0),
(@question_id,'B','Costo reducido y mantenimiento simplificado',1),
(@question_id,'C','Exclusividad del ancho de banda',0),
(@question_id,'D','Acceso root completo al servidor',0);

-- Pregunta 4
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Apache es popular porque:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','Es de pago y muy seguro',0),
(@question_id,'B','Es gratuito, flexible y multiplataforma',1),
(@question_id,'C','Solo funciona en Linux',0),
(@question_id,'D','Requiere conocimientos avanzadísimos para usarlo',0);

-- Pregunta 5
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Qué directorio contiene las configuraciones habilitadas de Apache?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','sites-available',0),
(@question_id,'B','sites-enabled',1),
(@question_id,'C','mods-available',0),
(@question_id,'D','conf-available',0);

-- Pregunta 6
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Archivo principal de configuración de Apache:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','apache2.conf',1),
(@question_id,'B','index.html',0),
(@question_id,'C','httpd.log',0),
(@question_id,'D','php.ini',0);

-- Pregunta 7
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Comando para reiniciar Apache en Debian:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','apache2 stop',0),
(@question_id,'B','systemctl restart apache2',1),
(@question_id,'C','service httpd reload',0),
(@question_id,'D','apachectl kill',0);

-- Pregunta 8
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'La directiva DocumentRoot indica:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','El dominio que usará el servidor',0),
(@question_id,'B','La carpeta donde Apache busca los archivos web',1),
(@question_id,'C','La ubicación de los logs',0),
(@question_id,'D','La versión de PHP que se usará',0);

-- Pregunta 9
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'ServerName sirve para:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','Configurar el nombre del servidor virtual',1),
(@question_id,'B','Indicar la ubicación de los módulos',0),
(@question_id,'C','Definir la IP del servidor',0),
(@question_id,'D','Crear certificados SSL',0);

-- Pregunta 10
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Diferencia entre ErrorLog y CustomLog:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','ErrorLog registra errores, CustomLog registra accesos',1),
(@question_id,'B','Ambos registran errores',0),
(@question_id,'C','Ambos registran accesos',0),
(@question_id,'D','ErrorLog registra accesos, CustomLog errores',0);

-- Pregunta 11
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Comando para habilitar un sitio en Apache:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','a2dissite',0),
(@question_id,'B','a2ensite',1),
(@question_id,'C','service site enable',0),
(@question_id,'D','enable-site',0);

-- Pregunta 12
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Para probar un dominio local, se debe modificar:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','/etc/hosts',1),
(@question_id,'B','apache2.conf',0),
(@question_id,'C','DocumentRoot',0),
(@question_id,'D','ServerAlias',0);

-- Pregunta 13
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Diferencia entre ServerName y ServerAlias:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','ServerName es obligatorio, ServerAlias opcional para dominios alternativos',1),
(@question_id,'B','No hay diferencia',0),
(@question_id,'C','ServerAlias define la IP del servidor',0),
(@question_id,'D','ServerName es para subdominios, ServerAlias para SSL',0);

-- Pregunta 14
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Para dar soporte a PHP se instala:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','libapache2-mod-php',1),
(@question_id,'B','mod_python',0),
(@question_id,'C','phpmyadmin',0),
(@question_id,'D','php.ini',0);

-- Pregunta 15
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Para comprobar que PHP funciona en Apache se:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','Ejecuta php -v',0),
(@question_id,'B','Crea un archivo con <?php phpinfo(); ?>',1),
(@question_id,'C','Reinicia Apache',0),
(@question_id,'D','Edita apache2.conf',0);

-- Pregunta 16
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Archivo .htpasswd sirve para:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','Configurar el VirtualHost',0),
(@question_id,'B','Guardar usuarios y contraseñas para autenticación',1),
(@question_id,'C','Guardar configuraciones de PHP',0),
(@question_id,'D','Controlar logs de Apache',0);

-- Pregunta 17
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Para que .htaccess funcione se debe:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','Cambiar permisos del directorio',0),
(@question_id,'B','Habilitar AllowOverride en la configuración del directorio',1),
(@question_id,'C','Reiniciar el servidor cada minuto',0),
(@question_id,'D','Instalar mod_ssl',0);

-- Pregunta 18
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Línea en .htaccess para evitar listado de directorios:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','Options All',0),
(@question_id,'B','Options -Indexes',1),
(@question_id,'C','Deny from all',0),
(@question_id,'D','DirectoryIndex index.html',0);

-- Pregunta 19
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Comando para habilitar reescritura de URLs:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','a2enmod rewrite',1),
(@question_id,'B','enable-rewrite',0),
(@question_id,'C','rewrite-on',0),
(@question_id,'D','mod-rewrite enable',0);

-- Pregunta 20
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Para personalizar páginas de error se usa:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','ErrorDocument',1),
(@question_id,'B','CustomLog',0),
(@question_id,'C','DocumentRoot',0),
(@question_id,'D','ServerAlias',0);
