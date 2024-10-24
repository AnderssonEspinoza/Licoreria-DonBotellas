//Efecto visual del login para cambiar a la seccion Registrarse 
const container = document.getElementById('container');
const registerBtn = document.getElementById('register');
const loginBtn = document.getElementById('login');

registerBtn.addEventListener('click', () => {
    container.classList.add("active");
});

loginBtn.addEventListener('click', () => {
    container.classList.remove("active");
});

//Para la version mobile
function toggleRegister() {
    // Alterna la clase que muestra el formulario de registro
    document.querySelector('.container').classList.toggle('show-register');
}





/*

document.getElementById('loginForm').addEventListener('submit', function(event) {
    event.preventDefault(); // Evita que el formulario se envíe de la manera tradicional
    

    const correo = document.getElementById('correoElectronico').value;
    const password = document.getElementById('contrasena').value;

    // Aquí puedes enviar los datos al backend usando fetch o XMLHttpRequest

    fetch('../../LoginController', {

        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({ correo, password })
    })
    .then(response => response.json())
    .then(data => {
        if (data.success) {
            // Redirigir al usuario a la página de administrador

            window.location.href = '/index-registrados.jsp';

        } else {
            // Mostrar mensaje de error
            alert('Nombre de usuario o contraseña incorrectos');
        }
    })
    .catch(error => console.error('Error:', error));
});



*/
