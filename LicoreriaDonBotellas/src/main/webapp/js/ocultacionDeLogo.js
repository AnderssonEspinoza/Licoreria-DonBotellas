 // Seleccionamos la imagen por su ID
 const imagen = document.getElementById('imagen-ocultar');

 // Función que se ejecuta cuando hacemos scroll
 window.onscroll = function () {
     // Si el scroll es mayor que 100 píxeles (puedes ajustar este valor)
     if (window.scrollY > 50) {
         imagen.style.display = 'none'; // Oculta la imagen
     } else {
         imagen.style.display = ''; // Muestra la imagen cuando se vuelva a la parte superior
     }
 };