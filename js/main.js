// ------------------ MODAL HELPERS ------------------
function getModalContentEl() { 
    return document.getElementById('examQuestions') || null;
}

function getModalContainerEl() {
    return document.getElementById('examQuestionsContainer') || null;
}

function getOverlayEl() {
    return document.getElementById('modalOverlay') || null;
}

// ------------------ OPEN/CLOSE MODAL ------------------
function openAjaxModal(url) {
    const content = getModalContentEl();
    const container = getModalContainerEl();
    const overlay = getOverlayEl();
    if(!content || !container || !overlay) return;

    content.innerHTML = '<p>Cargando...</p>';
    overlay.style.display = 'block';
    container.style.display = 'block';

    const xhr = new XMLHttpRequest();
    xhr.open('GET', url, true);
    xhr.onload = () => {
        if(xhr.status === 200) prepareModalContent(xhr.responseText);
        else content.innerHTML = `<p>Error al cargar (status ${xhr.status})</p>`;
    };
    xhr.onerror = () => content.innerHTML = '<p>Error de red al cargar la página.</p>';
    xhr.send();
}

function closeQuestions() {
    const container = getModalContainerEl();
    const overlay = getOverlayEl();
    if(container) container.style.display = 'none';
    if(overlay) overlay.style.display = 'none';
}

// ------------------ LOAD FUNCTIONS ------------------
function loadQuestions(examId) { openAjaxModal(`/public/get_questions.php?exam_id=${examId}`); }
function loadExam(examId) { openAjaxModal(`/public/take_exam.php?exam_id=${examId}`); }
function loadRanking(examId) { openAjaxModal(`/public/ranking.php?exam_id=${examId}`); }

// ------------------ PREPARE MODAL CONTENT ------------------
function prepareModalContent(html) {
    const content = getModalContentEl();
    content.innerHTML = html;

    // Preparar formularios - DISTINGUIR entre formulario de examen y de upload
    const forms = content.querySelectorAll('form');
    
    forms.forEach(form => {
        // Verificar si es el formulario del EXAMEN (tiene campos de preguntas)
        const isExamForm = form.querySelector('input[name^="question_"]') !== null || 
                          form.querySelector('input[name^="answers["]') !== null;
        
        if(isExamForm) {
            // Es el formulario del EXAMEN
            window.examStartTime = Date.now();

            // submit del formulario del examen
            form.addEventListener('submit', e => {
                e.preventDefault();
                submitExamAJAX(form, content);
            });

            // botones dentro del formulario del EXAMEN
            form.querySelectorAll('button[type="submit"], .submit-btn').forEach(btn => {
                btn.addEventListener('click', e => {
                    e.preventDefault();
                    submitExamAJAX(form, content);
                });
                btn.setAttribute('type','button');
            });
        } else {
            // Es el formulario de UPLOAD (subir al ranking)
            // GUARDAR el tiempo del examen antes de enviar
            form.addEventListener('submit', e => {
                e.preventDefault();
                submitUploadAJAX(form, content);
            });

            // botones dentro del formulario de UPLOAD
            form.querySelectorAll('button[type="submit"], .btn-upload-ranking').forEach(btn => {
                btn.addEventListener('click', e => {
                    e.preventDefault();
                    submitUploadAJAX(form, content);
                });
                btn.setAttribute('type','button');
            });
        }
    });

    // Botón "Ver ranking" después de subir puntaje
    content.querySelectorAll('.btn-view-ranking').forEach(btn => {
        btn.addEventListener('click', e => {
            const examId = btn.dataset.examId;
            if(examId) loadRanking(examId);
        });
    });

    // Cerrar modal
    const closeBtn = content.querySelector('#closeQuestions');
    if(closeBtn) closeBtn.addEventListener('click', closeQuestions);
}

// ------------------ SUBMIT EXAM AJAX ------------------
function submitExamAJAX(formEl, containerEl) {
    const fd = new FormData(formEl);
    const timeTaken = Math.floor((Date.now() - (window.examStartTime||Date.now()))/1000);
    fd.set('time_taken', timeTaken);
    
    // GUARDAR el tiempo en una variable global para usarlo después
    window.lastExamTime = timeTaken;

    const xhr = new XMLHttpRequest();
    xhr.open('POST','public/submit_exam.php', true);
    const contentEl = getModalContentEl();

    xhr.onload = () => { 
        if(xhr.status===200) prepareModalContent(xhr.responseText);
        else contentEl.innerHTML = `<p>Error al enviar examen (status ${xhr.status})</p>`;
    };
    xhr.onerror = () => contentEl.innerHTML = '<p>Error de red al enviar examen.</p>';
    xhr.send(fd);
}

// ------------------ SUBMIT UPLOAD AJAX ------------------
function submitUploadAJAX(formEl, containerEl) {
    const fd = new FormData(formEl);
    
    // AÑADIR el tiempo del examen al formulario de upload
    if (window.lastExamTime) {
        fd.set('time_taken', window.lastExamTime);
    }

    const xhr = new XMLHttpRequest();
    xhr.open('POST','public/upload_score.php', true);
    const contentEl = getModalContentEl();

    xhr.onload = () => { 
        if(xhr.status===200) prepareModalContent(xhr.responseText);
        else contentEl.innerHTML = `<p>Error al subir puntuación (status ${xhr.status})</p>`;
    };
    xhr.onerror = () => contentEl.innerHTML = '<p>Error de red al subir puntuación.</p>';
    xhr.send(fd);
}

// ------------------ DOM READY ------------------
document.addEventListener('DOMContentLoaded', () => {

    // Abrir preguntas
    document.querySelectorAll('.btn-show-questions').forEach(btn => {
        btn.addEventListener('click', e => { 
            const id = e.target.dataset.examId; 
            if(id) loadQuestions(id);
        });
    });

    // Abrir ranking
    document.querySelectorAll('.btn-ranking').forEach(btn => {
        btn.addEventListener('click', e => {
            e.preventDefault();
            const id = btn.dataset.examId;
            if(id) loadRanking(id);
        });
    });

    // Cargar examen
    document.querySelectorAll('.btn-load-exam').forEach(btn => {
        btn.addEventListener('click', e => {
            e.preventDefault();
            const id = btn.dataset.examId;
            if(id) loadExam(id);
        });
    });

    // Toggle secciones
    document.querySelectorAll('.toggle-btn').forEach(btn => {
        btn.addEventListener('click', () => {
            const target = document.getElementById(btn.dataset.target);
            if(target) target.style.display = (target.style.display==='block')?'none':'block';
        });
    });

    // Botón cerrar modal global
    const closeBtn = document.getElementById('closeQuestions');
    if(closeBtn) closeBtn.addEventListener('click', closeQuestions);
});
















// Abrir chat al hacer click en los botones
document.querySelectorAll('.btn-chat').forEach(btn => {
    btn.addEventListener('click', e => {
        e.preventDefault();
        const examId = btn.dataset.examId;
        openChatModal(examId);
    });
});

// Abrir modal y cargar chat
function openChatModal(examId) {
    const content = document.querySelector("#examQuestions");
    if(!content) return console.error("No se encontró #examQuestions");

    // Abrir modal
    document.getElementById("modalOverlay").style.display = "block";
    document.getElementById("examQuestionsContainer").style.display = "block";

    fetch(`/public/chat.php?exam_id=${examId}`)
        .then(res => res.text())
        .then(html => {
            content.innerHTML = html;

            const chatForm = content.querySelector("#chatForm");
            if(chatForm){
                chatForm.addEventListener("submit", function(ev){
                    ev.preventDefault();
                    const fd = new FormData(chatForm);
                    fetch("/public/send_chat.php", {
                        method:"POST",
                        body: fd
                    })
                    .then(r => r.text())
                    .then(resp => {
                        console.log("RESPUESTA PHP:", resp);
                        loadChatMessages(examId); // recarga los mensajes
                        chatForm.reset(); // limpiar campos
                    });
                });
            }

            // Scroll automático al final
            const chatBox = content.querySelector("#chat-box");
            if(chatBox) chatBox.scrollTop = chatBox.scrollHeight;
        });
}

// Recargar solo los mensajes (para evitar recargar todo el modal)
function loadChatMessages(examId){
    fetch(`/public/chat.php?exam_id=${examId}&only_messages=1`)
        .then(res => res.text())
        .then(html => {
            const chatBox = document.querySelector("#examQuestions #chat-box");
            if(chatBox) chatBox.innerHTML = html;
            if(chatBox) chatBox.scrollTop = chatBox.scrollHeight;
        });
}

// Cerrar modal
function closeQuestions() {
    document.getElementById("modalOverlay").style.display = "none";
    document.getElementById("examQuestionsContainer").style.display = "none";
}

