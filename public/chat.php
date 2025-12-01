<?php
require_once "../includes/db.php";
$conn->set_charset("utf8mb4");

$exam_id = isset($_GET["exam_id"]) ? intval($_GET["exam_id"]) : 0;
if($exam_id <= 0){
    echo "<p>Examen no especificado.</p>";
    exit;
}

// Solo mostrar mensajes si se pide
$only_messages = isset($_GET['only_messages']);

// Obtener mensajes
$stmt = $conn->prepare("SELECT user_name, message, created_at FROM exam_chat WHERE exam_id=? ORDER BY id ASC LIMIT 50");
$stmt->bind_param("i", $exam_id);
$stmt->execute();
$result = $stmt->get_result();

// Contar mensajes para mostrar el número
$message_count = $result->num_rows;

// Función para formatear hora de manera más amigable
function formatChatTime($datetime) {
    $time = strtotime($datetime);
    $now = time();
    $today = strtotime('today');
    
    // Si es hoy, mostrar solo la hora
    if ($time >= $today) {
        return date('H:i', $time);
    }
    
    // Si es ayer
    if ($time >= $today - 86400) {
        return 'Ayer ' . date('H:i', $time);
    }
    
    // Si es esta semana
    if ($time >= $today - (6 * 86400)) {
        return date('l H:i', $time);
    }
    
    // Otro caso: mostrar fecha completa
    return date('d/m/Y H:i', $time);
}

// Si solo se piden los mensajes, devolver solo el contenido del chat
if($only_messages) {
    // Solo devolver el HTML de los mensajes
    if($message_count > 0) {
        while($row = $result->fetch_assoc()): 
            $user_class = 'message-other';
            
            // Determinar si es mensaje propio (basado en nombre de usuario)
            // Esto es un ejemplo - ajusta según tu lógica de sesión
            $is_own = false;
            if(isset($_SESSION['user_name']) && $_SESSION['user_name'] === $row['user_name']) {
                $is_own = true;
                $user_class = 'message-own';
            }
        ?>
        <div class="message <?= $user_class ?>">
            <div class="message-header">
                <span class="message-user"><?= htmlspecialchars($row['user_name']) ?></span>
                <span class="message-time" data-time="<?= $row['created_at'] ?>">
                    <?= formatChatTime($row['created_at']) ?>
                </span>
            </div>
            <div class="message-bubble">
                <?= htmlspecialchars($row['message']) ?>
            </div>
        </div>
        <?php endwhile; 
    } else { ?>
        <div class="empty-chat">
            <div class="icon">💬</div>
            <h3>No hay mensajes todavía</h3>
            <p>Sé el primero en iniciar la conversación</p>
        </div>
    <?php }
    exit; // Importante: salir aquí para no mostrar el resto de la página
}

// Si no es only_messages, mostrar toda la página
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chat del Examen</title>
    <style>
        /* ... (todos los estilos anteriores se mantienen igual) ... */
        
        /* Solo agregamos este pequeño ajuste */
        .message-time {
            font-size: 0.75rem;
            color: #777;
            margin-left: 10px;
            font-style: italic;
        }
        
    </style>
</head>
<body>
    <div id="notification-container"></div>
    
    <div class="chat-container">
        <div class="chat-header">
            <h2><span class="icon">💬</span> Chat del Examen</h2>
            <div class="chat-info">
                <span><span class="icon">📝</span> ID: <?= $exam_id ?></span>
                <span><span class="icon">💭</span> <span id="message-count"><?= $message_count ?></span> mensaje(s)</span>
            </div>
        </div>
        
        <div id="chat-box">
            <?php if($message_count > 0): 
                while($row = $result->fetch_assoc()): 
                    $user_class = 'message-other';
                    
                    // Determinar si es mensaje propio
                    $is_own = false;
                    if(isset($_SESSION['user_name']) && $_SESSION['user_name'] === $row['user_name']) {
                        $is_own = true;
                        $user_class = 'message-own';
                    }
            ?>
                <div class="message <?= $user_class ?>">
                    <div class="message-header">
                        <span class="message-user"><?= htmlspecialchars($row['user_name']) ?></span>
                        <span class="message-time" data-time="<?= $row['created_at'] ?>">
                            <?= formatChatTime($row['created_at']) ?>
                        </span>
                    </div>
                    <div class="message-bubble">
                        <?= htmlspecialchars($row['message']) ?>
                    </div>
                </div>
            <?php endwhile; else: ?>
                <div class="empty-chat">
                    <div class="icon">💬</div>
                    <h3>No hay mensajes todavía</h3>
                    <p>Sé el primero en iniciar la conversación</p>
                </div>
            <?php endif; ?>
        </div>
        
        <div class="chat-form-container">
            <form id="chatForm">
                <input type="hidden" name="exam_id" id="exam_id" value="<?= $exam_id ?>">
                
                <div class="form-row">
                    <input type="text" name="name" id="user_name" placeholder="Tu nombre" required
                           value="<?= isset($_SESSION['user_name']) ? htmlspecialchars($_SESSION['user_name']) : '' ?>">
                </div>
                
                <div class="form-group">
                    <textarea name="message" id="message" placeholder="Escribe tu mensaje aquí..." required rows="3"></textarea>
                </div>
                
                <button type="submit" id="submit-btn">
                    <span class="icon">📤</span> Enviar mensaje
                </button>
                
                <div class="chat-footer">
                    <div>
                        <span class="icon">ℹ️</span> Los mensajes se actualizarán automáticamente cada 30 segundos
                    </div>
                    <button type="button" id="refresh-btn">
                        <span class="icon">🔄</span> Actualizar ahora
                    </button>
                </div>
            </form>
        </div>
    </div>

    <script>
        // Variables globales
        let currentUser = document.getElementById('user_name').value || localStorage.getItem('chat_user_name') || '';
        let isRefreshing = false;
        
        // Si ya tenemos un nombre en localStorage, lo usamos
        if(localStorage.getItem('chat_user_name') && !document.getElementById('user_name').value) {
            document.getElementById('user_name').value = localStorage.getItem('chat_user_name');
            currentUser = localStorage.getItem('chat_user_name');
        }
        
        // Función para formatear la hora (similar a PHP)
        function formatTime(datetime) {
            const date = new Date(datetime);
            const now = new Date();
            const today = new Date(now.getFullYear(), now.getMonth(), now.getDate());
            const messageDate = new Date(date.getFullYear(), date.getMonth(), date.getDate());
            
            // Opciones para formatear
            const timeOptions = { hour: '2-digit', minute: '2-digit' };
            
            // Si es hoy
            if (messageDate.getTime() === today.getTime()) {
                return date.toLocaleTimeString('es-ES', timeOptions);
            }
            
            // Si es ayer
            const yesterday = new Date(today);
            yesterday.setDate(yesterday.getDate() - 1);
            
            if (messageDate.getTime() === yesterday.getTime()) {
                return 'Ayer ' + date.toLocaleTimeString('es-ES', timeOptions);
            }
            
            // Si es esta semana
            const weekAgo = new Date(today);
            weekAgo.setDate(weekAgo.getDate() - 6);
            
            if (messageDate >= weekAgo) {
                const dayName = date.toLocaleDateString('es-ES', { weekday: 'long' });
                return dayName.charAt(0).toUpperCase() + dayName.slice(1) + ' ' + 
                       date.toLocaleTimeString('es-ES', timeOptions);
            }
            
            // Otro caso: mostrar fecha completa
            return date.toLocaleDateString('es-ES') + ' ' + 
                   date.toLocaleTimeString('es-ES', timeOptions);
        }
        
        // Función para actualizar tiempos relativos
        function updateRelativeTimes() {
            document.querySelectorAll('.message-time').forEach(element => {
                const datetime = element.getAttribute('data-time');
                if (datetime) {
                    element.textContent = formatTime(datetime);
                }
            });
        }
        
        // Función para mostrar notificaciones
        function showNotification(message, type = 'info') {
            const container = document.getElementById('notification-container');
            const notification = document.createElement('div');
            notification.className = `notification ${type}`;
            notification.innerHTML = `
                <span class="icon">${type === 'success' ? '✅' : type === 'error' ? '❌' : 'ℹ️'}</span>
                <span>${message}</span>
            `;
            
            container.appendChild(notification);
            
            // Auto-eliminar después de 4 segundos
            setTimeout(() => {
                notification.style.opacity = '0';
                notification.style.transform = 'translateX(100%)';
                setTimeout(() => notification.remove(), 300);
            }, 4000);
        }
        
        // Función para mantener el scroll al final del chat
        function scrollToBottom() {
            const chatBox = document.getElementById('chat-box');
            // Pequeño retraso para asegurar que el DOM se actualizó
            setTimeout(() => {
                chatBox.scrollTop = chatBox.scrollHeight;
            }, 100);
        }
        
        // Función para cargar mensajes desde el servidor
        async function loadMessages(showNotification = false) {
            if (isRefreshing) return;
            
            isRefreshing = true;
            
            try {
                const response = await fetch(`?exam_id=<?= $exam_id ?>&only_messages=1&t=${Date.now()}`);
                
                if (!response.ok) {
                    throw new Error(`HTTP error! status: ${response.status}`);
                }
                
                const html = await response.text();
                
                // Verificar que tenemos contenido HTML válido
                if (!html || html.trim() === '') {
                    console.warn('Respuesta vacía del servidor');
                    document.getElementById('chat-box').innerHTML = `
                        <div class="empty-chat">
                            <div class="icon">⚠️</div>
                            <h3>No se pudieron cargar los mensajes</h3>
                            <p>Intenta actualizar manualmente</p>
                        </div>
                    `;
                    document.getElementById('message-count').textContent = '0';
                    return;
                }
                
                // Actualizar solo el contenido del chat
                document.getElementById('chat-box').innerHTML = html;
                
                // Actualizar tiempos relativos
                updateRelativeTimes();
                
                // Contar mensajes
                const messageElements = document.querySelectorAll('.message');
                const emptyChat = document.querySelector('.empty-chat');
                
                let count = 0;
                if (emptyChat) {
                    // Si hay empty-chat, no hay mensajes
                    count = 0;
                } else {
                    count = messageElements.length;
                }
                
                document.getElementById('message-count').textContent = count;
                
                // Scroll al final si hay mensajes
                if(count > 0) {
                    scrollToBottom();
                }
                
                if(showNotification) {
                    showNotification(`Mensajes actualizados (${count} mensajes)`, 'info');
                }
                
            } catch (error) {
                console.error('Error cargando mensajes:', error);
                showNotification('Error al cargar mensajes', 'error');
                
                // Mostrar estado de error en el chat
                document.getElementById('chat-box').innerHTML = `
                    <div class="empty-chat">
                        <div class="icon">⚠️</div>
                        <h3>Error al cargar mensajes</h3>
                        <p>${error.message}</p>
                        <button onclick="loadMessages(true)" style="margin-top: 15px;">
                            <span class="icon">🔄</span> Reintentar
                        </button>
                    </div>
                `;
            } finally {
                isRefreshing = false;
            }
        }
        
        // Función para enviar mensaje
        async function sendMessage(userName, message) {
            const formData = new FormData();
            formData.append('exam_id', document.getElementById('exam_id').value);
            formData.append('name', userName);
            formData.append('message', message);
            
            try {
                console.log('📤 Enviando a: public/send_chat.php');
                console.log('📦 Datos:', { 
                    exam_id: document.getElementById('exam_id').value,
                    name: userName,
                    message: message 
                });
                
                const response = await fetch('../public/send_chat.php', {
                    method: 'POST',
                    body: formData
                });
                
                console.log('📨 Status:', response.status, response.statusText);
                
                const responseText = await response.text();
                console.log('📨 Respuesta completa:', responseText);
                
                let result;
                try {
                    result = JSON.parse(responseText);
                    console.log('📨 JSON parseado:', result);
                } catch (e) {
                    console.error('❌ Error parseando JSON:', e);
                    throw new Error('Respuesta inválida del servidor');
                }
                
                if(response.ok && result.success) {
                    console.log('✅ Mensaje enviado exitosamente');
                    return true;
                } else {
                    throw new Error(result.error || result.message || 'Error desconocido');
                }
            } catch (error) {
                console.error('❌ Error enviando mensaje:', error);
                throw error;
            }
        }
        
        // Manejar envío del formulario
        document.getElementById('chatForm').addEventListener('submit', async function(e) {
            e.preventDefault();
            
            const userName = document.getElementById('user_name').value.trim();
            const message = document.getElementById('message').value.trim();
            const submitBtn = document.getElementById('submit-btn');
            
            // Validaciones
            if(!userName) {
                showNotification('Por favor, ingresa tu nombre', 'error');
                document.getElementById('user_name').focus();
                return;
            }
            
            if(!message) {
                showNotification('Por favor, escribe un mensaje', 'error');
                document.getElementById('message').focus();
                return;
            }
            
            // Guardar nombre en localStorage
            localStorage.setItem('chat_user_name', userName);
            currentUser = userName;
            
            // Deshabilitar botón y cambiar texto
            const originalText = submitBtn.innerHTML;
            submitBtn.innerHTML = '<span class="icon">⏳</span> Enviando...';
            submitBtn.disabled = true;
            
            try {
                // Enviar mensaje
                await sendMessage(userName, message);
                
                // Mostrar notificación de éxito
                showNotification('Mensaje enviado correctamente', 'success');
                
                // Limpiar campo de mensaje
                document.getElementById('message').value = '';
                
                // Recargar mensajes después de un breve retraso
                console.log('🔄 Recargando mensajes desde:', `?exam_id=<?= $exam_id ?>&only_messages=1`);
                setTimeout(() => {
                    loadMessages(false); // No mostrar notificación de carga
                }, 500);
                
                // Enfocar campo de mensaje para escribir otro
                setTimeout(() => document.getElementById('message').focus(), 100);
                
            } catch (error) {
                showNotification(`Error: ${error.message}`, 'error');
            } finally {
                // Restaurar botón
                submitBtn.innerHTML = originalText;
                submitBtn.disabled = false;
            }
        });
        
        // Botón para recargar manualmente
        document.getElementById('refresh-btn').addEventListener('click', function() {
            loadMessages(true);
        });
        
        // Auto-refrescar mensajes cada 30 segundos
        let refreshInterval = setInterval(() => loadMessages(false), 30000);
        
        // Cargar mensajes al inicio
        loadMessages(false);
        
        // Scroll al final al cargar la página
        window.addEventListener('load', () => {
            setTimeout(scrollToBottom, 500);
        });
        
        // Limpiar intervalo al salir de la página
        window.addEventListener('beforeunload', () => {
            clearInterval(refreshInterval);
        });
        
        // Permitir enviar mensaje con Ctrl+Enter
        document.getElementById('message').addEventListener('keydown', function(e) {
            if(e.ctrlKey && e.key === 'Enter') {
                document.getElementById('chatForm').dispatchEvent(new Event('submit'));
            }
        });
        
    </script>
</body>
</html>