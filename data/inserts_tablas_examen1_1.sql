-- Asignar el examen parte 1
INSERT INTO exams (name) VALUES ('ÉXAMEN DPL U1 Conocimientos previos Parte 1');
SET @exam_id = LAST_INSERT_ID();


-- Pregunta 1
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Cuántos octetos destina una dirección IP de clase C para identificar a la red?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', '2', 0),
(@question_id, 'B', '3', 1),
(@question_id, 'C', '1', 0),
(@question_id, 'D', 'Ninguna de las anteriores', 0);

-- Pregunta 2
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Internet empieza a ser utilizado por particulares, alrededor de los años');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', '80', 0),
(@question_id, 'B', '70', 0),
(@question_id, 'C', '90', 1),
(@question_id, 'D', '50', 0);

-- Pregunta 3
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Sobre la tecnología GPS:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'No tiene relación alguna con los satélites geoestacionarios.', 0),
(@question_id, 'B', 'Está basada en la nanotecnología y los satélites.', 0),
(@question_id, 'C', 'Es un sistema de posicionamiento global.', 1),
(@question_id, 'D', 'Todas son falsas', 0);

-- Pregunta 4
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Qué es la Web Oscura?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Una página web sin luz', 0),
(@question_id, 'B', 'Red donde prima la privacidad. Ha sido utilizada por cibercriminales', 1),
(@question_id, 'C', "Página web para 'emos'", 0),
(@question_id, 'D', 'El santuario virtual de los amantes del metal', 0);

-- Pregunta 5
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Es una buena práctica utilizar la misma contraseña para acceder a varios servicios de Internet?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'No, es mejor utilizar una contraseña diferente para cada servicio.', 1),
(@question_id, 'B', 'Depende, sólo si la contraseña cumple los requisitos mínimos de seguridad: contienen mayúsculas, minúsculas, números y caracteres especiales.', 0),
(@question_id, 'C', 'Sí, de esta forma no se te olvida y evitas tener que apuntarla en algún papel o cualquier otro sitio.', 0),
(@question_id, 'D', 'Todas son falsas.', 0);

-- Pregunta 6
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Normalmente son los servidores los que proporcionan los servicios (de ahí su nombre), aunque hoy en día podemos encontrar otros equipos que también incorporan servicios determinados, como los routers. Cuando el servicio lo proporciona un servidor, al resto de ordenadores que reciben dicho servicio se les denomina');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Clientes', 1),
(@question_id, 'B', 'Equipos intermedios', 0),
(@question_id, 'C', 'NIC', 0),
(@question_id, 'D', 'Hosts', 0);

-- Pregunta 7
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Hasta los años 60 se usaron cables submarinos de:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Cobre', 1),
(@question_id, 'B', 'Cable coaxial', 0),
(@question_id, 'C', 'Fibra óptica / de vidrio', 0),
(@question_id, 'D', 'Cable de látex elástico', 0);

-- Pregunta 8
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'La red Arpanet:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Fue desarrollada en los años 70 por el departamento de defensa de EE.UU.', 0),
(@question_id, 'B', 'Tiene más ordenadores conectados que la red Internet.', 0),
(@question_id, 'C', 'Se considera la precursora de Internet.', 0),
(@question_id, 'D', 'Las opciones A y C son correctas.', 1);

-- Pregunta 9
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Internet es la red de redes más grande del mundo, pero genera muchos problemas de:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Configuración', 0),
(@question_id, 'B', 'Estabilidad', 0),
(@question_id, 'C', 'Seguridad', 1),
(@question_id, 'D', 'No tiene ningún problema', 0);

-- Pregunta 10
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'La criptografía es:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Un sistema de cifrado para ocultar los archivos en las carpetas donde están ubicados.', 0),
(@question_id, 'B', 'El cifrado de información para proteger la red de virus y software espía.', 0),
(@question_id, 'C', 'Un sistema de cifrado para la protección de claves, archivos y comunicaciones', 1),
(@question_id, 'D', 'Todas son falsas', 0);

-- Pregunta 11
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Qué es el hacking ético?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Un ataque hecho por una buena causa', 0),
(@question_id, 'B', 'Un ataque informático que no roba dinero', 0),
(@question_id, 'C', 'Descubrir vulnerabilidades y reportarlas', 1),
(@question_id, 'D', 'Eso no existe', 0);

-- Pregunta 12
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Qué frase no es cierta?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'El software libre siempre es gratuito', 1),
(@question_id, 'B', 'Freeware quiere decir que el software es gratis', 0),
(@question_id, 'C', 'El software libre siempre es Open Source (código fuente abierto)', 0),
(@question_id, 'D', 'Ninguna de las anteriores', 0);

-- Pregunta 13
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Las direcciones IP están formados por:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Cuatro números binarios de un byte separados por un punto', 1),
(@question_id, 'B', 'Cuatro números binarios de un bit separados por un punto', 0),
(@question_id, 'C', 'Ocho números binarios de un bit separados por un punto', 0),
(@question_id, 'D', 'Ocho números binarios de un byte separados por un punto', 0);

-- Pregunta 14
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Por qué es importante mantener el software actualizado?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Para que las empresas puedan ganar más dinero con sus actualizaciones', 0),
(@question_id, 'B', 'Por la creencia de que lo nuevo siempre es mejor', 0),
(@question_id, 'C', 'Porque así se evita caer víctima de los ataques informáticos', 1),
(@question_id, 'D', 'Ninguna de las anteriores', 0);

-- Pregunta 15
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'La capa de enlace de datos en el modelo de referencia OSI...');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Se definen todos los aspectos necesarios para el establecimiento de un enlace lógico fiable entre dos dispositivos conectados a un mismo medio de transmisión', 1),
(@question_id, 'B', 'Se definen todos los aspectos relacionados con la utilización del medio físico para la transmisión de la información, así como la interacción física entre este y los distintos dispositivos y/o adaptadores de red.', 0),
(@question_id, 'C', 'Se definen todos los aspectos necesarios para el establecimiento de enlaces lógicos entre dispositivos que se encuentran en redes distintas.', 0),
(@question_id, 'D', 'Es la encargada de regular el flujo de información desde el origen hasta el destino de una manera sincronizada y precisa, proporcionando calidad en el servicio de la transmisión de los datos.', 0);

-- Pregunta 16
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Seleccion una o varias de las Principales beneficios de las redes de área local (son todas)');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Recursos compartidos', 1),
(@question_id, 'B', 'Comunicación rápida y económica', 1),
(@question_id, 'C', 'Velocidad de transmisión alta.', 1),
(@question_id, 'D', 'Seguridad y control', 1);

-- Pregunta 17
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'La inteligencia artificial:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Pretende dotar a los ordenadores de funciones que son características de los humanos.', 0),
(@question_id, 'B', 'La síntesis de voz y el reconocimiento de voz son aplicaciones de la inteligencia artificial.', 0),
(@question_id, 'C', 'Está ligada a la quinta generación de ordenadores.', 0),
(@question_id, 'D', 'Todas las anteriores son correctas.', 1);

-- Pregunta 18
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Para que la información pueda transcurrir correctamente desde el origen hasta su destino, es importante que los equipos hablen el mismo lenguaje o también lo podemos denominar:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Protocolo', 1),
(@question_id, 'B', 'Servicio', 0),
(@question_id, 'C', 'Estándar', 0),
(@question_id, 'D', 'Capa', 0);

-- Pregunta 19
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Cuál es el Identificador de la red para la dirección IP 9.127.63.19 y máscara de subred 255.0.0.0?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', '255.0.0.0', 0),
(@question_id, 'B', '9.127.0.0', 0),
(@question_id, 'C', '9.0.0.0', 1),
(@question_id, 'D', '9.255.255.255', 0);

-- Pregunta 20
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Qué debe hacer primero si su móvil tiene virus?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Apagarlo y quitarle la batería de inmediato', 0),
(@question_id, 'B', 'Desconectarlo de internet', 1),
(@question_id, 'C', 'Meterlo dentro de arroz', 0),
(@question_id, 'D', 'Instalarle un antivirus', 0);

-- Pregunta 21
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'La principal función de la capa de red es:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Dirigir los paquetes de información desde la estación origen a la estación destino en redes que pueden estar geográficamente separadas.', 1),
(@question_id, 'B', 'Interactuar con el usuario final y proporcionarle los servicios de red necesarios para las aplicaciones que utiliza.', 0),
(@question_id, 'C', 'Ofrecer un mecanismo de representación de los datos que deberán ser enviados a través de la red.', 0),
(@question_id, 'D', 'Ninguna de las anteriores', 0);

-- Pregunta 22
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Para qué sirve un certificado digital de usuario?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Para registrarnos en la Fábrica Nacional de Moneda y Timbre', 0),
(@question_id, 'B', 'Para poder utilizar servicios de Internet bajo un sistema de seguridad que certifica la autenticidad del usuario conectado', 1),
(@question_id, 'C', 'Para poder enviar correos electrónicos', 0),
(@question_id, 'D', 'Ninguna de las anteriores', 0);

-- Pregunta 23
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿En qué se basa el servicio DNS?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Asociar direcciones IP con nombres determinados, ya que es más fácil recordar un nombre que un número IP.', 1),
(@question_id, 'B', 'Asigna una dirección IP determinada de manera automática a cada equipo de la red.', 0),
(@question_id, 'C', 'Donde un servidor controla el acceso a las impresoras de la red, otorgando prioridades de acceso y controlando las colas de impresión de las mismas.', 0),
(@question_id, 'D', 'Ninguna de las anteriores', 0);

-- Pregunta 24
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Cuál es la definición de red VPN?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Constituyen una forma de crear una red lógica dentro de una misma red física. De esta forma, se construye una única LAN y se distribuye en varias lógicas.', 0),
(@question_id, 'B', 'Es una forma de crear redes privadas haciendo uso de Internet. Permite, por ejemplo, que dos empresas compartan sus datos creando una red privada virtual a través de Internet.', 1),
(@question_id, 'C', 'Es un tipo de red que no tiene ningún sistema para prevenir el ataque de intrusos. Su uso deja al ordenador completamente al descubierto cuando se conecta a Internet. Normalmente este tipo de redes se protege con algún firewall.', 0),
(@question_id, 'D', 'Ninguna de las anteriores', 0);

-- Pregunta 25
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Un cracker es:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Un delincuente informático que solo se plantea retos intelectuales.', 0),
(@question_id, 'B', 'Un pirata informático que intenta atentar contra la seguridad de la red.', 1),
(@question_id, 'C', 'Es una persona que elabora aplicaciones para usar programas sin licencia.', 0),
(@question_id, 'D', 'Todas son falsas.', 0);

-- Pregunta 26
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Cuál de las siguientes es una dirección IP válida?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', '192.168.0.1', 1),
(@question_id, 'B', '128.56.7', 0),
(@question_id, 'C', '34.256.19.15', 0),
(@question_id, 'D', '192.168.1.265', 0);

-- Pregunta 27
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Qué tipo de antena permite su emisión electromagnética en los 360º?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Omnidireccional', 1),
(@question_id, 'B', 'Direccional', 0),
(@question_id, 'C', 'Simétrica', 0),
(@question_id, 'D', 'Asimétrica', 0);

-- Pregunta 28
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Los smartphones y tablets no se infectan con virus');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Cierto. Una de las principales ventajas de los smartphones y tablets es que no se ven afectados por amenazas informáticas.', 0),
(@question_id, 'B', 'Mentira. Los programas maliciosos también afectan a estos dispositivos y por este motivo debemos instalar un antivirus específico.', 1),
(@question_id, 'C', 'Mentira. Los programas maliciosos también afectan a estos dispositivos aunque a día de hoy, no existen herramientas antivirus para estos dispositivos.', 0),
(@question_id, 'D', 'Todas son falsas.', 0);

-- Pregunta 29
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Cuál de estas empresas fue atacada en noviembre de 2014?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Sony Pictures', 1),
(@question_id, 'B', 'Huawei', 0),
(@question_id, 'C', 'Google', 0),
(@question_id, 'D', 'Ecopetrol', 0);

-- Pregunta 30
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿En qué aspectos impacta la era digital en la sociedad?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'En la economía.', 0),
(@question_id, 'B', 'En la educación.', 0),
(@question_id, 'C', 'En la cultura.', 0),
(@question_id, 'D', 'Todas las anteriores', 1);

-- Pregunta 31
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Pasar al sistema decimal el número binario 101111');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', '46', 0),
(@question_id, 'B', '47', 1),
(@question_id, 'C', '45', 0),
(@question_id, 'D', '41', 0);

-- Pregunta 32
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Une cada tipo de red con su definición');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Los nodos acceden a la red utilizando la dirección IP que le proporciona su proveedor de servicio. → Red pública', 1),
(@question_id, 'B', 'Los equipos que forman parte de esta red no pueden acceder directamente a Internet y necesitan de un router que les haga de traductor entre sus direcciones IP privadas y las direcciones IP públicas que circulan por Internet. → Red privada', 1);

-- Pregunta 33
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'La tecnología inalámbrica de conexión a Internet, se le conoce con el nombre de:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Wifi', 1),
(@question_id, 'B', 'Sin cables', 0),
(@question_id, 'C', 'Hispasat', 0),
(@question_id, 'D', 'Libre', 0);

-- Pregunta 34
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Clasifica las siguientes redes según su extensión');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Son redes cuyos equipos terminales están situados en un radio de pocos metros y están destinadas a uso personal → PAN', 1),
(@question_id, 'B', 'Es un tipo de red de las que se ven actualmente en los domicilios. Está formada por un router inalámbrico al que se conectan diferentes equipos para el uso doméstico y la conexión permanente a Internet. → HAN', 1),
(@question_id, 'C', 'Su extensión está limitada físicamente a un edificio. Suele consistir en varios nodos conectados a un concentrador que va conectado a un router. → LAN', 1),
(@question_id, 'D', 'Es un tipo de red que conecta varias LAN dentro de un área geográfica, que suele corresponder a un edificio o varios edificios cercanos → CAN', 1),
(@question_id, 'E', 'Es una red que suele comprender desde varios edificios a una ciudad entera. Interconecta varias LAN entre sí usando conexiones de alta capacidad. → MAN', 1),
(@question_id, 'F', 'Es una red que interconecta ciudades entre sí e incluso todo un país. Normalmente son creadas por los proveedores de servicio de Internet (ISP) → WAN', 1);

-- Pregunta 35
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Comando que envía paquetes ECHO_REQUEST a la dirección especificada y es el comando preferido para comprobar que la conexión a Internet funciona.');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'ping', 1),
(@question_id, 'B', 'mtr', 0),
(@question_id, 'C', 'ipconfig', 0),
(@question_id, 'D', 'salt', 0);

-- Pregunta 36
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Cómo se llama al conjunto de ondas electromagnéticas que se propagan por el aire?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Espectro electromagnético', 1),
(@question_id, 'B', 'Ondas', 0),
(@question_id, 'C', 'Radiofrecuencia', 0),
(@question_id, 'D', 'Señales invisibles', 0);

-- Pregunta 37
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Un certificado digital:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Es un documento en formato analógico que contiene datos de una persona.', 0),
(@question_id, 'B', 'Se diferencia de la firma electrónica en que solo sirve para validar la firma manuscrita.', 0),
(@question_id, 'C', 'Contiene datos identificativos de una persona validados de forma electrónica.', 1),
(@question_id, 'D', 'Todas son falsas.', 0);

-- Pregunta 38
INSERT INTO questions (exam_id, text) VALUES (@exam_id, '¿Qué significa "domótica"?');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Aplicación de las tecnologías en los entornos domésticos.', 1),
(@question_id, 'B', 'Dominio de la información.', 0),
(@question_id, 'C', 'Dominio de la informática.', 0),
(@question_id, 'D', 'Aplicación de las tecnologías en la medicina.', 0);

-- Pregunta 39
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'La información publicada en algunos sitios de Internet, como las páginas Wiki, los blogs, etc');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Está contrastada y es fiable completamente.', 0),
(@question_id, 'B', 'Solo puede ser escrita por expertos en la materia', 0),
(@question_id, 'C', 'Puede no ser del todo verídica o fiable.', 1),
(@question_id, 'D', 'Todas son falsas.', 0);

-- Pregunta 40
INSERT INTO questions (exam_id, text) VALUES (@exam_id, 'Los protocolos HTTPS e IPV6:');
SET @question_id = LAST_INSERT_ID();
INSERT INTO options (question_id, label, text, is_correct) VALUES
(@question_id, 'A', 'Son evoluciones de los protocolos HTTP y TCP/IP para ganar rapidez en la conexión.', 0),
(@question_id, 'B', 'Son protocolos más seguros que los protocolos HTTP e IPV4', 1),
(@question_id, 'C', 'No tienen relación con los protocolos de internet, sino con las páginas web.', 0),
(@question_id, 'D', 'Todas son falsas', 0);
