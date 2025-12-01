<!DOCTYPE html>
<html>
<head>
    <title>Error 500 - Error interno del servidor</title>
    <style>
        body { font-family: Arial, sans-serif; text-align: center; padding: 50px; }
        h1 { color: #dc3545; }
        .debug { background: #f8f9fa; padding: 20px; margin: 20px auto; max-width: 800px; text-align: left; }
        pre { background: #e9ecef; padding: 10px; border-radius: 5px; overflow-x: auto; }
    </style>
</head>
<body>
    <h1>Error 500 - Error interno del servidor</h1>
    <p>Lo sentimos, ha ocurrido un error en el servidor.</p>
    
    <div class="debug">
        <h3>Información para debugging:</h3>
        <p><strong>URL:</strong> <span id="url"></span></p>
        <p><strong>Timestamp:</strong> <span id="timestamp"></span></p>
        <p><strong>PHP Version:</strong> <?php echo phpversion(); ?></p>
        
        <?php if(isset($_SERVER['REQUEST_METHOD'])): ?>
        <p><strong>Método:</strong> <?php echo $_SERVER['REQUEST_METHOD']; ?></p>
        <?php endif; ?>
        
        <?php if(!empty($_POST)): ?>
        <p><strong>POST Data:</strong></p>
        <pre><?php echo htmlspecialchars(print_r($_POST, true)); ?></pre>
        <?php endif; ?>
        
        <?php if(!empty($_GET)): ?>
        <p><strong>GET Data:</strong></p>
        <pre><?php echo htmlspecialchars(print_r($_GET, true)); ?></pre>
        <?php endif; ?>
    </div>
    
    <p><a href="/examenestests/">Volver al inicio</a></p>
    
    <script>
        document.getElementById('url').textContent = window.location.href;
        document.getElementById('timestamp').textContent = new Date().toLocaleString();
    </script>
</body>
</html>