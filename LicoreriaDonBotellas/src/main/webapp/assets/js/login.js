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






