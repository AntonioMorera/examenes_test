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
function loadQuestions(examId) { openAjaxModal(`public/get_questions.php?exam_id=${examId}`); }
function loadExam(examId) { openAjaxModal(`public/take_exam.php?exam_id=${examId}`); }
function loadRanking(examId) { openAjaxModal(`public/ranking.php?exam_id=${examId}`); }

// ------------------ PREPARE MODAL CONTENT ------------------
function prepareModalContent(html) {
    const content = getModalContentEl();
    content.innerHTML = html;

    // Preparar formularios
    const form = content.querySelector('form');
    if(form) {
        window.examStartTime = Date.now();

        // submit del formulario
        form.addEventListener('submit', e => {
            e.preventDefault();
            submitExamAJAX(form, content);
        });

        // botones dentro del formulario
        content.querySelectorAll('button[type="submit"], .submit-btn, .btn-upload-ranking').forEach(btn => {
            btn.addEventListener('click', e => {
                e.preventDefault();
                submitExamAJAX(form, content);
            });
            btn.setAttribute('type','button');
        });
    }

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
    fd.set('time_taken', Math.floor((Date.now() - (window.examStartTime||Date.now()))/1000));

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
