-- Crear examen
INSERT INTO exams (name) VALUES ('EXAMEN UT2 Fundamentales sobre SSL, TLS, HTTPS y Certificados');
SET @exam_id = LAST_INSERT_ID();

-- Pregunta 1
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'SSL (Secure Sockets Layer) fue creado para:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','Proteger comunicaciones entre cliente y servidor',1),
(@question_id,'B','Sustituir HTTPS',0),
(@question_id,'C','Firmar certificados digitales únicamente',0),
(@question_id,'D','Acelerar el tráfico web',0);

-- Pregunta 2
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'TLS es:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','Una versión antigua y obsoleta de SSL',0),
(@question_id,'B','La evolución de SSL con mayor seguridad',1),
(@question_id,'C','Un algoritmo de cifrado simétrico',0),
(@question_id,'D','Un tipo de certificado digital',0);

-- Pregunta 3
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Actualmente, cuando se menciona “SSL” en la web, realmente se refiere a:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','SSL 2.0',0),
(@question_id,'B','TLS',1),
(@question_id,'C','HTTPS',0),
(@question_id,'D','Cifrado simétrico',0);

-- Pregunta 4
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'HTTPS garantiza:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','Solo que el servidor es auténtico',0),
(@question_id,'B','Cifrado, integridad y autenticidad',1),
(@question_id,'C','Que todos los certificados son autofirmados',0),
(@question_id,'D','Que el puerto 80 esté activo',0);

-- Pregunta 5
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'El puerto por defecto de HTTPS es:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','80',0),
(@question_id,'B','21',0),
(@question_id,'C','443',1),
(@question_id,'D','22',0);

-- Pregunta 6
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Una firma digital permite:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','Cifrar todo el contenido de un mensaje',0),
(@question_id,'B','Comprobar identidad, integridad y no repudio',1),
(@question_id,'C','Sustituir un certificado digital',0),
(@question_id,'D','Evitar que el servidor use TLS',0);

-- Pregunta 7
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Cómo se genera una firma digital?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','Aplicando un hash al contenido y cifrándolo con la clave privada del emisor',1),
(@question_id,'B','Cifrando el mensaje completo con AES',0),
(@question_id,'C','Firmando el certificado del servidor',0),
(@question_id,'D','Usando solo la clave pública del emisor',0);

-- Pregunta 8
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Un certificado digital vincula:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','Una clave pública con la identidad de un propietario',1),
(@question_id,'B','Una clave privada con un navegador',0),
(@question_id,'C','Dos servidores HTTPS entre sí',0),
(@question_id,'D','Un hash con la firma digital',0);

-- Pregunta 9
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Entre los datos de un certificado digital, NO se incluye:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','Clave pública',0),
(@question_id,'B','Identidad del titular',0),
(@question_id,'C','Periodo de validez',0),
(@question_id,'D','Contraseña del titular',1);

-- Pregunta 10
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'La función principal de un certificado digital es:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','Garantizar la rapidez de la comunicación',0),
(@question_id,'B','Validar que la clave pública pertenece a quien dice ser',1),
(@question_id,'C','Evitar el uso de TLS',0),
(@question_id,'D','Sustituir el puerto 443',0);

-- Pregunta 11
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Una Autoridad de Certificación (CA) se encarga de:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','Emitir certificados digitales y verificar identidades',1),
(@question_id,'B','Cifrar los datos del servidor',0),
(@question_id,'C','Generar claves simétricas AES',0),
(@question_id,'D','Evitar que HTTPS funcione en navegadores',0);

-- Pregunta 12
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Los navegadores confían en un certificado digital porque:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','Fue emitido por una CA reconocida',1),
(@question_id,'B','Contiene la clave privada del servidor',0),
(@question_id,'C','Se generó automáticamente al abrir el navegador',0),
(@question_id,'D','Está firmado con AES',0);

-- Pregunta 13
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Por qué a veces es necesario añadir una excepción en el navegador?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','Porque el servidor siempre usa certificados válidos',0),
(@question_id,'B','Porque el certificado no es de una CA confiable, está caducado o hay incongruencia de dominio',1),
(@question_id,'C','Para cifrar el tráfico con AES',0),
(@question_id,'D','Para forzar el uso de TLS 1.0',0);

-- Pregunta 14
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Un certificado autofirmado:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','Es emitido por una CA reconocida',0),
(@question_id,'B','No es reconocido por los navegadores como confiable automáticamente',1),
(@question_id,'C','Siempre está caducado',0),
(@question_id,'D','Reemplaza a TLS',0);

-- Pregunta 15
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'TLS mejora la seguridad frente a SSL porque:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','Es más rápido pero menos seguro',0),
(@question_id,'B','Incluye algoritmos modernos y protege contra ataques actuales',1),
(@question_id,'C','No usa certificados digitales',0),
(@question_id,'D','Opera solo en puerto 80',0);

-- Pregunta 16
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'HTTPS protege contra ataques tipo:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','Man-in-the-Middle',1),
(@question_id,'B','Phishing en correo electrónico',0),
(@question_id,'C','Keylogging del teclado',0),
(@question_id,'D','Inyección SQL',0);

-- Pregunta 17
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'La autenticidad en HTTPS asegura que:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','La comunicación no se cifra',0),
(@question_id,'B','El cliente se comunica con el servidor legítimo',1),
(@question_id,'C','Los certificados caducados no existen',0),
(@question_id,'D','Solo se usan claves simétricas',0);

-- Pregunta 18
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'La integridad de los datos en HTTPS significa que:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','Nadie puede leer los datos',0),
(@question_id,'B','Los datos no han sido modificados sin ser detectados',1),
(@question_id,'C','La comunicación se hace únicamente con certificado autofirmado',0),
(@question_id,'D','Se utiliza solo SHA-512',0);

-- Pregunta 19
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'La confidencialidad en HTTPS se logra mediante:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','Hashing de certificados',0),
(@question_id,'B','Cifrado de los datos transmitidos',1),
(@question_id,'C','Uso de certificados autofirmados',0),
(@question_id,'D','Verificación del puerto 80',0);

-- Pregunta 20
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Un certificado caducado provoca:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','Que el navegador confíe automáticamente',0),
(@question_id,'B','Advertencia de seguridad al usuario',1),
(@question_id,'C','Que HTTPS deje de existir',0),
(@question_id,'D','Que la firma digital sea inválida automáticamente',0);

-- Pregunta 21
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'La firma digital no cifra el documento, solo:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','Lo protege con AES',0),
(@question_id,'B','Garantiza identidad e integridad',1),
(@question_id,'C','Cambia el puerto a 443',0),
(@question_id,'D','Sustituye a TLS',0);

-- Pregunta 22
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'HTTPS es imprescindible cuando se transmiten datos:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','Públicos y no sensibles',0),
(@question_id,'B','Sensibles como contraseñas, datos personales o bancarios',1),
(@question_id,'C','Solo imágenes y vídeos',0),
(@question_id,'D','Solo texto plano',0);

-- Pregunta 23
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Una CA confiable en un navegador permite:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','Evitar que se use TLS',0),
(@question_id,'B','Validar automáticamente certificados emitidos por ella',1),
(@question_id,'C','Sustituir la clave privada del servidor',0),
(@question_id,'D','Enviar certificados caducados sin aviso',0);

-- Pregunta 24
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Un certificado digital contiene la firma de la CA para:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','Verificar que el certificado es auténtico',1),
(@question_id,'B','Firmar todos los mensajes HTTPS',0),
(@question_id,'C','Sustituir el hash del documento',0),
(@question_id,'D','Enviar la clave privada al cliente',0);

-- Pregunta 25
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Cuál de los siguientes conceptos NO pertenece a HTTPS seguro?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id,'A','Confidencialidad',0),
(@question_id,'B','Integridad',0),
(@question_id,'C','Autenticidad',0),
(@question_id,'D','Clave pública compartida sin certificado',1);
