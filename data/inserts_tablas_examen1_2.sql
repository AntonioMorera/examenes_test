-- Insertar examen Parte 2
INSERT INTO exams (name) VALUES ('ÉXAMEN DPL U1 Conocimientos previos Parte 2');
SET @exam_id = LAST_INSERT_ID();

-- Pregunta 44
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Qué contraseña es más segura?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'pedro', 0),
(@question_id, 'B', 'Pedro1995', 0),
(@question_id, 'C', 'pe1995dro', 0),
(@question_id, 'D', 'Pee.Dro_2012812', 1);

-- Pregunta 45
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Cuando uno recibe una notificación que considera SPAM:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'La abre y la borra', 0),
(@question_id, 'B', 'No la abre y la borra', 1),
(@question_id, 'C', 'La abre y no la borra', 0),
(@question_id, 'D', 'No la abre y no la borra', 0);

-- Pregunta 46
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'A partir de 1960 se usaron cables submarinos de:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Cobre', 0),
(@question_id, 'B', 'Cable coaxial', 1),
(@question_id, 'C', 'Fibra óptica', 0),
(@question_id, 'D', 'Látex elástico', 0);

-- Pregunta 47
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Pasa a binario el número 3CB');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', '1111001010', 0),
(@question_id, 'B', '1111001011', 1),
(@question_id, 'C', '1111001100', 0),
(@question_id, 'D', '1111001101', 0);

-- Pregunta 48
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Convertir el número octal 42 a decimal');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', '32', 0),
(@question_id, 'B', '34', 1),
(@question_id, 'C', '36', 0),
(@question_id, 'D', 'Ninguna de las anteriores', 0);

-- Pregunta 49
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿De cuántas capas está formado el modelo de referencia OSI?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', '7', 1),
(@question_id, 'B', '8', 0),
(@question_id, 'C', '6', 0),
(@question_id, 'D', '5', 0);

-- Pregunta 50
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'La “Voz sobre IP” consiste en un grupo de recursos que hacen posible que la señal de voz viaje a través de las redes telefónicas utilizando una señal analógica.');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Verdadero', 0),
(@question_id, 'B', 'Falso', 1),
(@question_id, 'C', '', 0),
(@question_id, 'D', '', 0);

-- Pregunta 51
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Cuál es la página más visitada en el mundo?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Facebook', 0),
(@question_id, 'B', 'Youtube', 0),
(@question_id, 'C', 'Instagram', 0),
(@question_id, 'D', 'Google', 1);

-- Pregunta 52
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'El BIG DATA es:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Es la gestión y análisis de enormes cantidades de redes tratadas de manera digital.', 0),
(@question_id, 'B', 'Es la gestión y análisis de los datos que tenemos guardados en el ordenador.', 0),
(@question_id, 'C', 'Es la gestión y análisis de grandes cantidades de datos.', 1),
(@question_id, 'D', 'Todas son falsas', 0);

-- Pregunta 53
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'La nanotecnología:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Está ligada a la llamada segunda generación de ordenadores.', 0),
(@question_id, 'B', 'Es la ciencia que estudia el diseño y creación de aplicaciones tecnológicas a escala muy pequeña, a nivel molecular.', 1),
(@question_id, 'C', 'Esta tecnología no puede ayudar en nada a la evolución de los futuros ordenadores.', 0),
(@question_id, 'D', 'Todas las anteriores son correctas.', 0);

-- Pregunta 54
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Convertir el número decimal 64 a binario');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', '1000010', 0),
(@question_id, 'B', '1000001', 0),
(@question_id, 'C', '1000000', 1),
(@question_id, 'D', '1000011', 0);

-- Pregunta 55
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Señale cuál de los siguientes ejemplos no es de la web 2.0?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Blogs', 0),
(@question_id, 'B', 'Facebook', 0),
(@question_id, 'C', 'Páginas webs personales', 1),
(@question_id, 'D', 'Twitter', 0);

-- Pregunta 56
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Según el medio de transmisión ¿de cuántas redes disponemos?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', '2', 1),
(@question_id, 'B', '7', 0),
(@question_id, 'C', '4', 0),
(@question_id, 'D', '3', 0);

-- Pregunta 57
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Cuando un troyano está actuando en nuestro ordenador notamos que:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'El ordenador va más rápido', 0),
(@question_id, 'B', 'Alguien abre y cierra nuestras carpetas', 0),
(@question_id, 'C', 'El ordenador va más lento', 1),
(@question_id, 'D', 'Se ve un caballo', 0);

-- Pregunta 58
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'El SPAM es el envío masivo de:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Páginas web falsas', 0),
(@question_id, 'B', 'Ofertas de empleo falsas', 0),
(@question_id, 'C', 'Correos electrónicos basura', 1),
(@question_id, 'D', 'Cartas por correo postal', 0);

-- Pregunta 59
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Los países y continentes se interconectan y comunican principalmente mediante:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Grandes cables submarinos que interconectan los continentes', 1),
(@question_id, 'B', 'Satélites', 0),
(@question_id, 'C', 'Redes Wifi', 0),
(@question_id, 'D', 'Emisión de ondas microondas', 0);

-- Pregunta 60
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'La huella digital es:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'El rastro que dejamos cuando utilizamos los servicios de internet.', 1),
(@question_id, 'B', 'Un tipo de certificado digital que nos identifica ante terceros por internet.', 0),
(@question_id, 'C', 'La configuración que presenta nuestro equipo informático para navegar por internet.', 0),
(@question_id, 'D', 'Todas son falsas', 0);

-- Pregunta 61
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'La seguridad lógica:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Es alternativa de la seguridad física y protege el hardware de los virus.', 0),
(@question_id, 'B', 'Complementa la seguridad física y protege la información y el software.', 1),
(@question_id, 'C', 'Protege el hardware ante posible desastres naturales.', 0),
(@question_id, 'D', 'Todas son falsas', 0);

-- Pregunta 62
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'En Internet, cuando hablamos de cookies, ¿a qué nos referimos?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Pequeños ficheros que los navegadores almacenan en el ordenador con datos del usuario sobre las páginas web que visita.', 1),
(@question_id, 'B', 'A un tipo de virus que es capaz de interceptar las comunicaciones de los usuarios.', 0),
(@question_id, 'C', 'Correos electrónicos que se reenvían en cadena y que tienen como objetivo engañar a los usuarios para que faciliten información confidencial.', 0),
(@question_id, 'D', 'Todas son falsas', 0);

-- Pregunta 63
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Un antivirus:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Es un sistema de defensa que controla y filtra el tráfico de entrada y salida a una red.', 0),
(@question_id, 'B', 'Es un software que funciona como puerta de entrada para limitar el tráfico de la red.', 0),
(@question_id, 'C', 'Es un programa que revisa el código de los archivos y analiza las distintas unidades y dispositivos.', 1),
(@question_id, 'D', 'Todas son falsas', 0);

-- Pregunta 64
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Cuándo se creó el primer virus informático?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', '1991', 0),
(@question_id, 'B', '1989', 0),
(@question_id, 'C', '1971', 1),
(@question_id, 'D', '1973', 0);

-- Pregunta 65
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Qué es una firma digital?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Una imagen escaneada de nuestra firma en papel.', 0),
(@question_id, 'B', 'Un comentario que se incluye automáticamente cuando escribimos en un foro.', 0),
(@question_id, 'C', 'Archivo informático encriptado que garantiza la identidad de la persona que realiza una gestión y nos confirma la veracidad de sus documentos.', 1),
(@question_id, 'D', 'Ninguna de las anteriores', 0);

-- Pregunta 66
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Cuántos octetos destina una dirección IP de clase A para identificar a los hosts?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', '1', 0),
(@question_id, 'B', '3', 1),
(@question_id, 'C', '2', 0),
(@question_id, 'D', '4', 0);

-- Pregunta 67
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Comando que tiene varias opciones para configurar, modificar y hacer debug de tu sistema de red e interfaces. Es también una forma rápida de ver las direcciones IP y otros datos de la tarjeta de red.');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'ifconfig', 1),
(@question_id, 'B', 'ping', 0),
(@question_id, 'C', 'mtr', 0),
(@question_id, 'D', 'stat', 0);

-- Pregunta 68
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'A partir de 1980 se usaron cables submarinos de:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Cobre', 0),
(@question_id, 'B', 'Cable coaxial', 0),
(@question_id, 'C', 'Fibra óptica', 1),
(@question_id, 'D', 'Fibras elásticas', 0);

-- Pregunta 69
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Cuando todos los ordenadores de la red pueden dar servicios a los demás o recibir servicios de los otros este tipo de arquitectura se conoce como arquitectura');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'P2P o de igual a igual', 1),
(@question_id, 'B', 'Torrent', 0),
(@question_id, 'C', 'Bluetooth', 0),
(@question_id, 'D', 'NFC', 0);

-- Pregunta 70
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'FTP, TELNET son ejemplos de protocolos de la capa:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'de Aplicación', 1),
(@question_id, 'B', 'de Sesión', 0),
(@question_id, 'C', 'de Presentación', 0),
(@question_id, 'D', 'de Enlace', 0);

-- Pregunta 71
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Une cada una de las capa con su posición en el modelo de referencia OSI');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Capa física → Capa 1', 1),
(@question_id, 'B', 'Capa de enlace de datos → Capa 2', 1),
(@question_id, 'C', 'Capa de red → Capa 3', 1),
(@question_id, 'D', 'Capa de transporte → Capa 4', 1),
(@question_id, 'E', 'Capa de sesión → Capa 5', 1),
(@question_id, 'F', 'Capa de presentación → Capa 6', 1),
(@question_id, 'G', 'Capa de aplicación → Capa 7', 1);

-- Pregunta 72
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Conector utilizado en el cable de red:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'RJ-45', 1),
(@question_id, 'B', 'RJ-49', 0),
(@question_id, 'C', 'RJ-54', 0),
(@question_id, 'D', 'FC', 0);

-- Pregunta 73
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Qué archivo es necesario para realizar trámites por Internet en los que debemos identificarnos de forma oficial?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Certificado digital', 1),
(@question_id, 'B', 'PDF con nuestro DNI', 0),
(@question_id, 'C', 'Fotografía digital', 0),
(@question_id, 'D', 'Ninguna de las anteriores', 0);

-- Pregunta 74
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'La seguridad informática es:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'El conjunto de medidas para proteger a las personas de los ordenadores.', 0),
(@question_id, 'B', 'Las medidas que nos permiten proteger los equipos frente el hardware y el software.', 0),
(@question_id, 'C', 'Las medidas para proteger el hardware, el software, la información y las personas.', 1),
(@question_id, 'D', 'Todas son falsas', 0);

-- Pregunta 75
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Qué significan las siglas TIC?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Tecnología informática y comunicación', 0),
(@question_id, 'B', 'Tecnologías de la información y la computadoras', 0),
(@question_id, 'C', 'Tecnologías de la información y la comunicación', 1),
(@question_id, 'D', 'Ninguna de las anteriores', 0);

-- Pregunta 76
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'En la sociedad de la información:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'La información no necesita propagarse, pues está siempre en Internet', 0),
(@question_id, 'B', 'Toda la información se almacena en Internet', 0),
(@question_id, 'C', 'Internet es la única red de comunicaciones existente', 0),
(@question_id, 'D', 'La información se almacena y propaga a través de las redes de comunicaciones', 1);

-- Pregunta 77
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Cuál es el principio para el revestimiento de cables apantallados?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Principio de Faraday', 1),
(@question_id, 'B', 'Principio de Farenheit', 0),
(@question_id, 'C', 'Principio de apantallamiento', 0),
(@question_id, 'D', 'Principio de STP', 0);

-- Pregunta 78
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Instalar un antivirus en el ordenador es una técnica de seguridad:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Activa', 1),
(@question_id, 'B', 'Pasiva', 0),
(@question_id, 'C', 'Neutra', 0),
(@question_id, 'D', 'No es una técnica de seguridad', 0);

-- Pregunta 79
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Protocolo que asigna una dirección IP determinada de manera automática a cada equipo de la red.');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'DHCP', 1),
(@question_id, 'B', 'Servicios de impresión', 0),
(@question_id, 'C', 'NetStat', 0),
(@question_id, 'D', 'DNS', 0);

-- Pregunta 80
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Un cortafuegos o firewall es:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Es un sistema de defensa para cortar el fuego en las redes de ordenadores.', 0),
(@question_id, 'B', 'Es un sistema que controla el tráfico de datos entre el ordenador y el disco duro.', 0),
(@question_id, 'C', 'Es un sistema de defensa que controla y filtra el tráfico de datos a una red.', 1),
(@question_id, 'D', 'Todas son falsas', 0);
