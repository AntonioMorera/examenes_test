// main.js - VERSIÓN UNIVERSAL FUNCIONAL
document.addEventListener('DOMContentLoaded', function() {
    console.log("🌐 Entorno:", window.location.hostname);
    console.log("📂 Ruta base detectada:", getBasePath());
    
    // ========== CONFIGURACIÓN DE EVENTOS ==========
    
    // 1. Preguntas
    document.querySelectorAll('.btn-show-questions').forEach(btn => {
        btn.addEventListener('click', function(e) {
            e.preventDefault();
            const examId = this.dataset.examId;
            if(examId) loadQuestions(examId);
        });
    });
    
    // 2. Ranking
    document.querySelectorAll('.btn-ranking').forEach(btn => {
        btn.addEventListener('click', function(e) {
            e.preventDefault();
            const examId = this.dataset.examId;
            if(examId) loadRanking(examId);
        });
    });
    
    // 3. Examen
    document.querySelectorAll('.btn-load-exam').forEach(btn => {
        btn.addEventListener('click', function(e) {
            e.preventDefault();
            const examId = this.dataset.examId;
            if(examId) loadExam(examId);
        });
    });
    
    // 4. Chat
    document.querySelectorAll('.btn-chat').forEach(btn => {
        btn.addEventListener('click', function(e) {
            e.preventDefault();
            const examId = this.dataset.examId;
            if(examId) openChatModal(examId);
        });
    });
    
    // 5. Toggle secciones
    document.querySelectorAll('.toggle-btn').forEach(btn => {
        btn.addEventListener('click', function() {
            const target = document.getElementById(this.dataset.target);
            if(target) {
                target.style.display = target.style.display === 'block' ? 'none' : 'block';
            }
        });
    });
    
    // 6. Tecla ESC para cerrar modal
    document.addEventListener('keydown', function(e) {
        if(e.key === 'Escape') closeQuestions();
    });
    
    // 7. Cerrar al hacer click fuera
    document.getElementById('modalOverlay')?.addEventListener('click', closeQuestions);
});

// ========== FUNCIÓN PARA DETECTAR RUTA BASE ==========
function getBasePath() {
    const hostname = window.location.hostname;
    const port = window.location.port;
    
    // 1. Tu localhost específico
    if (hostname === 'localhost' && port === '82') {
        return 'public/';  // En local, archivos en public/
    }
    
    // 2. Otros locales
    if (hostname === 'localhost' || hostname === '127.0.0.1') {
        return 'public/';  // En local, archivos en public/
    }
    
    // 3. InfinityFree (producción)
    if (hostname.includes('infinityfree')) {
        return 'public/';  // En producción, archivos en public/
    }
    
    // 4. Por defecto
    return 'public/';
}

// ========== FUNCIONES PARA CARGAR CONTENIDO ==========
function loadQuestions(examId) { 
    openAjaxModal(`get_questions.php?exam_id=${examId}`);
}

function loadRanking(examId) { 
    openAjaxModal(`ranking.php?exam_id=${examId}`);
}

function loadExam(examId) { 
    openAjaxModal(`take_exam.php?exam_id=${examId}`);
}

// ========== SISTEMA PRINCIPAL DE MODALES ==========
function openAjaxModal(relativeUrl) {
    const content = document.getElementById('examQuestions');
    const container = document.getElementById('examQuestionsContainer');
    const overlay = document.getElementById('modalOverlay');
    
    if(!content || !container || !overlay) {
        console.error("❌ Elementos del modal no encontrados");
        return;
    }
    
    // Construir URL completa
    const basePath = getBasePath();
    const fullUrl = basePath + relativeUrl;
    
    console.log("📡 Cargando:", fullUrl);
    
    // Mostrar modal
    content.innerHTML = '<div style="text-align:center; padding:40px;">Cargando...</div>';
    overlay.style.display = 'block';
    container.style.display = 'block';
    
    // Usar fetch para mejor manejo de errores
    fetch(fullUrl)
        .then(response => {
            if (!response.ok) {
                throw new Error(`HTTP ${response.status}`);
            }
            return response.text();
        })
        .then(html => {
            content.innerHTML = html;
            setupFormEvents();
            
            // Scroll en chat si existe
            const chatBox = content.querySelector('#chat-box');
            if (chatBox) {
                setTimeout(() => {
                    chatBox.scrollTop = chatBox.scrollHeight;
                }, 100);
            }
        })
        .catch(error => {
            console.error("❌ Error cargando:", error);
            content.innerHTML = `
                <div style="color:red; text-align:center; padding:30px;">
                    <h3>Error al cargar</h3>
                    <p><strong>${error.message}</strong></p>
                    <p>URL: ${fullUrl}</p>
                    <button onclick="closeQuestions()" style="margin-top:20px; padding:10px 20px; background:#dc3545; color:white; border:none; border-radius:5px; cursor:pointer;">
                        Cerrar
                    </button>
                </div>
            `;
        });
}

// ========== SISTEMA DE CHAT ==========
function openChatModal(examId) {
    openAjaxModal(`chat.php?exam_id=${examId}`);
}

function setupFormEvents() {
    const content = document.getElementById('examQuestions');
    if (!content) return;
    
    // 1. Formulario de chat
    const chatForm = content.querySelector('#chatForm');
    if (chatForm) {
        chatForm.addEventListener('submit', function(e) {
            e.preventDefault();
            sendChatMessage(this);
        });
    }
    
    // 2. Formularios de examen (mantén tu lógica original)
    const forms = content.querySelectorAll('form');
    forms.forEach(form => {
        const isExamForm = form.querySelector('input[name^="question_"]') !== null || 
                          form.querySelector('input[name^="answers["]') !== null;
        
        if(isExamForm) {
            window.examStartTime = Date.now();
            form.addEventListener('submit', function(e) {
                e.preventDefault();
                submitExamForm(this);
            });
        }
    });
}

function sendChatMessage(form) {
    const formData = new FormData(form);
    const basePath = getBasePath();
    const sendUrl = basePath + 'send_chat.php';
    
    fetch(sendUrl, {
        method: 'POST',
        body: formData
    })
    .then(response => response.json())
    .then(data => {
        if (data.success) {
            // Recargar mensajes del chat
            const examId = formData.get('exam_id');
            reloadChatMessages(examId);
            form.querySelector('textarea[name="message"]').value = '';
        } else {
            alert(data.error || 'Error al enviar');
        }
    })
    .catch(error => {
        console.error("❌ Error enviando chat:", error);
        alert('Error de conexión');
    });
}

function reloadChatMessages(examId) {
    const basePath = getBasePath();
    const messagesUrl = basePath + `chat.php?exam_id=${examId}&only_messages=1`;
    const chatBox = document.querySelector('#chat-box');
    
    if (!chatBox) return;
    
    fetch(messagesUrl)
        .then(response => response.text())
        .then(html => {
            chatBox.innerHTML = html;
            setTimeout(() => {
                chatBox.scrollTop = chatBox.scrollHeight;
            }, 50);
        })
        .catch(error => console.error("❌ Error recargando mensajes:", error));
}

function submitExamForm(form) {
    // Mantén tu lógica original de examen aquí
    const formData = new FormData(form);
    const timeTaken = Math.floor((Date.now() - (window.examStartTime || Date.now())) / 1000);
    formData.set('time_taken', timeTaken);
    window.lastExamTime = timeTaken;
    
    const basePath = getBasePath();
    const submitUrl = basePath + 'submit_exam.php';
    
    fetch(submitUrl, {
        method: 'POST',
        body: formData
    })
    .then(response => response.text())
    .then(html => {
        document.getElementById('examQuestions').innerHTML = html;
        setupFormEvents();
    })
    .catch(error => {
        console.error("❌ Error enviando examen:", error);
        alert('Error al enviar examen');
    });
}

// ========== FUNCIONES GLOBALES ==========
function closeQuestions() {
    const container = document.getElementById('examQuestionsContainer');
    const overlay = document.getElementById('modalOverlay');
    const content = document.getElementById('examQuestions');
    
    if (container) container.style.display = 'none';
    if (overlay) overlay.style.display = 'none';
    if (content) content.innerHTML = '';
}

// Exportar funciones al scope global
window.openChatModal = openChatModal;
window.closeQuestions = closeQuestions;
window.loadChatMessages = reloadChatMessages;