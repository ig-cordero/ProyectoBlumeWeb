from django.db import models
from django.contrib.auth.models import User
# Create your models here.
#Prueba git
class TipoProducto(models.Model):
    nombreTipoProducto = models.CharField(max_length=50)

    def __str__(self):
        return self.nombreTipoProducto


class Marca(models.Model):
    nombre_marca = models.CharField(max_length=100)

    def __str__(self):
        return self.nombre_marca

class Producto(models.Model):
    imagen = models.ImageField(upload_to="productos", blank=True, null=True)
    nombre = models.CharField(max_length=50)
    marca = models.ForeignKey(Marca, on_delete=models.CASCADE)
    descripcion = models.CharField(max_length=500)
    precio = models.IntegerField()
    stock = models.IntegerField()
    tipo = models.ForeignKey(TipoProducto, on_delete=models.CASCADE)
    creado_en = models.DateField()
    modificado_en = models.DateField(blank=True, null=True)

    def __str__(self):
        return self.nombre


class Mensaje(models.Model):
    imagen = models.ImageField(upload_to="mensajes", blank=True, null=True)
    nombre = models.CharField(max_length = 50)
    descripcion = models.CharField(max_length = 150)
    creado_en = models.DateField()
    modificado_en = models.DateField(blank=True, null=True)
    def __str__(self):
        return self.nombre    

#class ProductoEspecial(models.Model):

class Carrito(models.Model):
    
    id_usuario = models.ForeignKey(User, on_delete=models.CASCADE)
    producto_carrito = models.ForeignKey(Producto, on_delete=models.CASCADE)
    cantidad_prod = models.IntegerField(default=1)
    def __str__(self):
        return str(self.id_usuario)
    
    @property
    def subtotal_producto(self):
        precio = self.producto_carrito.precio * self.cantidad_prod
        return precio

class EstadoOrden(models.Model):
    estado_orden = models.CharField(max_length=50)
    def __str__(self):
        return str(self.estado_orden)

class Orden(models.Model):
    id_usuario = models.ForeignKey(User, on_delete=models.CASCADE)
    precio_orden = models.IntegerField()
    estado_orden = models.ForeignKey(EstadoOrden, on_delete=models.CASCADE)
    creado_en = models.DateField()
    modificado_en = models.DateField(blank=True, null=True)
    def __str__(self):
        return str(self.id_usuario)

class OrdenProducto(models.Model):
    orden = models.ForeignKey(Orden, on_delete=models.CASCADE)
    producto = models.ForeignKey(Producto, on_delete=models.CASCADE)
    cantidad_prod = models.IntegerField(default=1)

    class Meta:
        unique_together = ('orden', 'producto')

    def __str__(self):
        return str(self.orden)

class Suscripcion(models.Model):
    id_usuario = models.ForeignKey(User, on_delete=models.CASCADE)
    suscrito_el = models.DateField()
    renovacion_el = models.DateField(blank=True, null=True)
    
    def __str__(self):
        return str(self.estado)
    
    @property
    def estado_sub(self):
        resta = self.renovacion_el - self.suscrito_el
        if resta > 0 :
            return 'suscrito'
        else:
            return 'no suscrito'