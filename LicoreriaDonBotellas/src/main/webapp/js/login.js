document.getElementById('loginForm').addEventListener('submit', function(event) {
    event.preventDefault(); // Evita que el formulario se envíe de la manera tradicional

    const username = document.getElementById('NombreUsario').value;
    const password = document.getElementById('Contrasena').value;

    // Aquí puedes enviar los datos al backend usando fetch o XMLHttpRequest
    fetch('/login', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({ username, password })
    })
    .then(response => response.json())
    .then(data => {
        if (data.success) {
            // Redirigir al usuario a la página de administrador
            window.location.href = '/admin';
        } else {
            // Mostrar mensaje de error
            alert('Nombre de usuario o contraseña incorrectos');
        }
    })
    .catch(error => console.error('Error:', error));
});
