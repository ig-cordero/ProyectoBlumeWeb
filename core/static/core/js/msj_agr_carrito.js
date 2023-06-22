function mensajeAgregar(id){
    Swal.fire({
        toast: true,
        position: 'top-end',
        icon: 'success',
        title: 'Producto agregado al carrito',
        showConfirmButton: false,
        timer: 1200
      }).then(function() {
        window.location.href = "/car_agregar/"+ id + "/";
    })
}