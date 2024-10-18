function seleccionar(elemento) {
    // Obtener todos los enlaces
    const enlaces = document.querySelectorAll('#links a');
    
    // Quitar la clase 'seleccionado' de todos los enlaces
    enlaces.forEach(link => {
        link.classList.remove('seleccionado');
    });
    
    // Agregar la clase 'seleccionado' al enlace actual
    elemento.classList.add('seleccionado');
}

// Función para manejar el evento de compra
document.querySelectorAll('.btn-comprar').forEach(button => {
    button.addEventListener('click', function() {
        alert('Producto añadido al carrito: ' + this.previousElementSibling.innerText);
    });
});
