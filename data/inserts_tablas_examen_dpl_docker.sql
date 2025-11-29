-- Asignar el examen
INSERT INTO exams (name) VALUES ('EXAMEN UT2 CERTIFICADOS DIGITALES');
SET @exam_id = LAST_INSERT_ID();

-- Pregunta 1
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Cuál es el principal problema del cifrado simétrico?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Es muy lento', 0),
(@question_id, 'B', 'Requiere certificados digitales', 0),
(@question_id, 'C', 'El intercambio seguro de la clave', 1),
(@question_id, 'D', 'No permite cifrar grandes volúmenes de datos', 0);

-- Pregunta 2
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Qué característica diferencia al cifrado asimétrico del simétrico?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Usa una única clave para todo', 0),
(@question_id, 'B', 'Usa dos claves matemáticamente relacionadas', 1),
(@question_id, 'C', 'No depende de funciones hash', 0),
(@question_id, 'D', 'Siempre es más rápido', 0);

-- Pregunta 3
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'En cifrado asimétrico, la clave pública se utiliza para:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Descifrar', 0),
(@question_id, 'B', 'Firmar digitalmente', 0),
(@question_id, 'C', 'Cifrar', 1),
(@question_id, 'D', 'Generar la clave privada', 0);

-- Pregunta 4
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Qué afirmación es correcta respecto a RSA y ECC?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Ambos son algoritmos simétricos', 0),
(@question_id, 'B', 'ECC es más lento pero más seguro que RSA', 0),
(@question_id, 'C', 'RSA y ECC son algoritmos asimétricos', 1),
(@question_id, 'D', 'ECC no permite firma digital', 0);

-- Pregunta 5
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Por qué el cifrado híbrido es el más utilizado?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Permite evitar usar claves simétricas', 0),
(@question_id, 'B', 'Aprovecha la velocidad del simétrico y la seguridad del asimétrico', 1),
(@question_id, 'C', 'Elimina la necesidad de certificados', 0),
(@question_id, 'D', 'No requiere handshake', 0);

-- Pregunta 6
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'En HTTPS, el servidor envía su certificado digital durante:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'El intercambio de claves simétricas', 0),
(@question_id, 'B', 'El handshake inicial', 1),
(@question_id, 'C', 'La transferencia de datos', 0),
(@question_id, 'D', 'La firma del documento', 0);

-- Pregunta 7
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Qué verifica el navegador al recibir un certificado?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'El tipo de servidor web utilizado', 0),
(@question_id, 'B', 'Que la clave privada sea válida', 0),
(@question_id, 'C', 'Que la CA sea confiable y la validez del certificado', 1),
(@question_id, 'D', 'Que el certificado tenga SHA-512', 0);

-- Pregunta 8
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'En HTTPS, la clave simétrica es generada por:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'El servidor', 0),
(@question_id, 'B', 'La CA', 0),
(@question_id, 'C', 'El navegador/cliente', 1),
(@question_id, 'D', 'El certificado digital', 0);

-- Pregunta 9
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '“No repudio” en una firma digital significa que:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'El mensaje no puede ser visto por terceros', 0),
(@question_id, 'B', 'El emisor no puede negar haber firmado', 1),
(@question_id, 'C', 'La firma nunca puede ser revocada', 0),
(@question_id, 'D', 'La firma cifra el documento completo', 0);

-- Pregunta 10
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'En una firma digital, el hash cifrado se obtiene usando:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'La clave pública', 0),
(@question_id, 'B', 'La clave privada', 1),
(@question_id, 'C', 'Un certificado autofirmado', 0),
(@question_id, 'D', 'AES', 0);

-- Pregunta 11
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Qué algoritmo suele usarse para generar el hash de un documento firmado?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'MD5', 0),
(@question_id, 'B', 'AES', 0),
(@question_id, 'C', 'SHA-256', 1),
(@question_id, 'D', 'RSA', 0);

-- Pregunta 12
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Para verificar una firma digital, el receptor debe:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Descifrar la firma con la clave privada del emisor', 0),
(@question_id, 'B', 'Descifrar la firma con la clave pública del emisor', 1),
(@question_id, 'C', 'Generar un CSR', 0),
(@question_id, 'D', 'Solicitar un certificado nuevo', 0);

-- Pregunta 13
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Qué NO contiene un certificado digital X.509?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Clave pública', 0),
(@question_id, 'B', 'Identidad del titular', 0),
(@question_id, 'C', 'Certificados anteriores emitidos por la misma CA', 1),
(@question_id, 'D', 'Firma digital de la CA', 0);

-- Pregunta 14
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Una CA (Autoridad Certificadora) se encarga de:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Enviar la clave privada al cliente', 0),
(@question_id, 'B', 'Firmar y validar certificados', 1),
(@question_id, 'C', 'Cifrar la comunicación HTTPS', 0),
(@question_id, 'D', 'Generar claves simétricas', 0);

-- Pregunta 15
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Una razón para confiar en un certificado es que:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Fue firmado por una CA incluida en el navegador', 1),
(@question_id, 'B', 'La clave pública es extremadamente larga', 0),
(@question_id, 'C', 'Se usó AES-256 para cifrarlo', 0),
(@question_id, 'D', 'Proviene de cualquier servidor HTTPS', 0);

-- Pregunta 16
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Un certificado autofirmado…');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Siempre es considerado inseguro y bloqueado', 0),
(@question_id, 'B', 'Es válido, pero no está firmado por una CA externa', 1),
(@question_id, 'C', 'No contiene clave pública', 0),
(@question_id, 'D', 'Solo sirve para pruebas locales sin cifrado', 0);

-- Pregunta 17
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Qué elemento inicia la cadena de confianza?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Certificado intermedio', 0),
(@question_id, 'B', 'Certificado de servidor', 0),
(@question_id, 'C', 'Certificado raíz (root CA)', 1),
(@question_id, 'D', 'CSR firmado', 0);

-- Pregunta 18
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Cuál es el propósito principal del certificado intermedio?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Reemplazar al root CA', 0),
(@question_id, 'B', 'Evitar usar HTTPS', 0),
(@question_id, 'C', 'Delegar la firma desde la CA raíz hacia el servidor', 1),
(@question_id, 'D', 'Cifrar la comunicación', 0);

-- Pregunta 19
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'HTTPS garantiza la integridad porque:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Firma todos los mensajes', 0),
(@question_id, 'B', 'Utiliza hashes y MAC en la comunicación', 1),
(@question_id, 'C', 'No usa clave simétrica', 0),
(@question_id, 'D', 'Utiliza claves diferentes en cada paquete', 0);

-- Pregunta 20
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Cuál de las siguientes NO es una función del cifrado asimétrico en HTTPS?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Intercambiar la clave simétrica', 0),
(@question_id, 'B', 'Autenticar al servidor', 0),
(@question_id, 'C', 'Cifrar todo el tráfico de la sesión', 1),
(@question_id, 'D', 'Validar el certificado digital', 0);

-- Pregunta 21
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Qué ocurre si el certificado está caducado?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'El navegador lo renueva automáticamente', 0),
(@question_id, 'B', 'La conexión sigue cifrada pero muestra un aviso de riesgo', 1),
(@question_id, 'C', 'No se puede usar HTTPS en ningún caso', 0),
(@question_id, 'D', 'Solo afecta al cifrado simétrico', 0);

-- Pregunta 22
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Qué define el periodo de validez de un certificado?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Las fechas de “notBefore” y “notAfter”', 1),
(@question_id, 'B', 'El tipo de CA', 0),
(@question_id, 'C', 'El tamaño de la clave pública', 0),
(@question_id, 'D', 'El algoritmo de hash', 0);

-- Pregunta 23
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Qué tipo de cifrado se usa en el tráfico real HTTPS después del handshake?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Asimétrico', 0),
(@question_id, 'B', 'Simétrico (AES, ChaCha20)', 1),
(@question_id, 'C', 'RSA puro', 0),
(@question_id, 'D', 'Solo hashing', 0);

-- Pregunta 24
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Cuál de los siguientes es un uso válido de un certificado X.509?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Cifrar todos los datos del servidor', 0),
(@question_id, 'B', 'Autenticar un servidor web', 1),
(@question_id, 'C', 'Firmar hashes con AES', 0),
(@question_id, 'D', 'Hacer backup de claves privadas', 0);

-- Pregunta 25
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'La clave privada del servidor en HTTPS debe:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Compartirse con la CA', 0),
(@question_id, 'B', 'Compartirse con los clientes', 0),
(@question_id, 'C', 'Mantenerse en secreto absoluto', 1),
(@question_id, 'D', 'Enviarse durante el handshake', 0);
