from django.shortcuts import render, redirect
from .models import *
from django.core.paginator import Paginator
from django.http import Http404, HttpResponseRedirect
from django.contrib.auth.decorators import login_required
from .forms import *
from django.contrib import messages
from rest_framework import viewsets
from .serializers import *
import requests
# Create your views here.

#Creando una clase que va a permitir la transformacion
class ProductoViewset(viewsets.ModelViewSet):
    queryset = Producto.objects.all()
    serializer_class = ProductoSerializers

class TipoProductoViewset(viewsets.ModelViewSet):
    queryset = TipoProducto.objects.all()
    serializer_class = TipoProductoSerializers

def index(request):
    mensajes = Mensaje.objects.all()
    #Productos = Producto.objects.all()
    data = {
        'listaMensajes': mensajes,
         #'listaProductos': Productos
    }

    return render(request, 'core/index.html', data)

def arbustosapi(request):
    respuesta = requests.get('http://127.0.0.1:8000/api/productos')
    respuesta2 = requests.get('https://mindicador.cl/api')
    respuesta3 = requests.get('https://rickandmortyapi.com/api/character')

    productos = respuesta.json()
    monedas = respuesta2.json()
    aux = respuesta3.json()
    personajes = aux['results']
    data = {
        'listaProductos': productos,
        'moneda' : monedas,
        'personaje' : personajes,
    }
    return render(request, 'core/productos/arbustos_api.html', data)

#Productos
def arbustos(request):
    productos = Producto.objects.filter(tipo_id = "1").all()
    page = request.GET.get('page', 1) # OBTENEMOS LA VARIABLE DE LA URL, SI NO EXISTE NADA DEVUELVE 1
    
    try:
        paginator = Paginator(productos, 5)
        productos = paginator.page(page)
    except:
        raise Http404

    data = {
        'listaProductos': productos,
        'paginator': paginator
    }
    return render(request, 'core/productos/arbustos.html', data)

def flores(request):
    productos = Producto.objects.filter(tipo_id = "2")
    page = request.GET.get('page', 1) # OBTENEMOS LA VARIABLE DE LA URL, SI NO EXISTE NADA DEVUELVE 1
    
    try:
        paginator = Paginator(productos, 5)
        productos = paginator.page(page)
    except:
        raise Http404

    data = {
        'listaProductos': productos,
        'paginator': paginator
    }
    return render(request, 'core/productos/flores.html', data)

def sustratos(request):
    productos = Producto.objects.filter(tipo_id = "3")
    page = request.GET.get('page', 1) # OBTENEMOS LA VARIABLE DE LA URL, SI NO EXISTE NADA DEVUELVE 1
    
    try:
        paginator = Paginator(productos, 5)
        productos = paginator.page(page)
    except:
        raise Http404

    data = {
        'listaProductos': productos,
        'paginator': paginator
    }
    return render(request, 'core/productos/sustratos.html', data)

def macetas(request):
    productos = Producto.objects.filter(tipo_id = "4")
    page = request.GET.get('page', 1) # OBTENEMOS LA VARIABLE DE LA URL, SI NO EXISTE NADA DEVUELVE 1
    
    try:
        paginator = Paginator(productos, 5)
        productos = paginator.page(page)
    except:
        raise Http404

    data = {
        'listaProductos': productos,
        'paginator': paginator
    }
    return render(request, 'core/productos/macetas.html', data)

def herramientas(request):
    productos = Producto.objects.filter(tipo_id = "5").all()
    page = request.GET.get('page', 1) # OBTENEMOS LA VARIABLE DE LA URL, SI NO EXISTE NADA DEVUELVE 1
    
    try:
        paginator = Paginator(productos, 5)
        productos = paginator.page(page)
    except:
        raise Http404

    data = {
        'listaProductos': productos,
        'paginator': paginator
    }
    return render(request, 'core/productos/herramientas.html', data)

#Subscripción
@login_required
def subscripcion(request):
    return render(request, 'core/subscripcion.html')

def carrito(request):
    return render(request, 'core/carrito.html')

def perfil(request):
    return render(request, 'core/perfil.html')

@login_required
def pedidos(request):

    productos = Producto.objects.all()
    page = request.GET.get('page', 1) # OBTENEMOS LA VARIABLE DE LA URL, SI NO EXISTE NADA DEVUELVE 1
    
    try:
        paginator = Paginator(productos, 7)
        productos = paginator.page(page)
    except:
        raise Http404

    data = {
        'listaProductos': productos,
        'paginator': paginator
    }

    return render(request, 'core/pedidos.html', data)

#Admin CRUD
@login_required
def menuadmin(request):

    if request.user.username != 'admin':
        return redirect('index')

    productos = Producto.objects.all()
    page = request.GET.get('page', 1) # OBTENEMOS LA VARIABLE DE LA URL, SI NO EXISTE NADA DEVUELVE 1
    
    try:
        paginator = Paginator(productos, 7)
        productos = paginator.page(page)
    except:
        raise Http404

    data = {
        'listaProductos': productos,
        'paginator': paginator
    }

    return render(request, 'core/crud/menuadmin.html', data)

@login_required
def agregar(request):
    if request.user.username != 'admin':
       return redirect('index')

    data = {
        'form': ProductoForm()
    }
    if request.method == 'POST':
        formulario = ProductoForm(request.POST, files=request.FILES)
        if formulario.is_valid():
            formulario.save()
            messages.success(request, "Producto almacenado correctamente")

    return render(request, 'core/crud/agregar.html', data)

@login_required
def modificar(request, id):
    if request.user.username != 'admin':
       return redirect('index')

    producto = Producto.objects.get(id=id); 
    data = {
        'form': ProductoForm(instance=producto) # LA INFO SE ALMACENA EN EL FORMULARIO
    }
    if request.method == 'POST':
        formulario = ProductoForm(data=request.POST, instance=producto, files=request.FILES)
        if formulario.is_valid():
            formulario.save()
            messages.success(request, "Producto modificado correctamente")
            data['form'] = formulario # CARGAMOS EL FORMULARIO FINAL CON LA INFO MODIFICADA

    return render(request, 'core/crud/modificar.html', data)

@login_required
def eliminar(request, id):
    if request.user.username != 'admin':
       return redirect('index')

    producto = Producto.objects.get(id=id); # OBTENEMOS UN PRODUCTO
    producto.delete()

    return redirect(to="menuadmin")



#Fin cosas del menu admin



# CRUD de los mensajes
@login_required
def menumensajes(request):

    if request.user.username != 'admin':
        return redirect('index')

    productos = Mensaje.objects.all()
    page = request.GET.get('page', 1) # OBTENEMOS LA VARIABLE DE LA URL, SI NO EXISTE NADA DEVUELVE 1
    
    try:
        paginator = Paginator(productos, 7)
        productos = paginator.page(page)
    except:
        raise Http404

    data = {
        'listaProductos': productos,
        'paginator': paginator
    }

    return render(request, 'core/crudmensajes/menumensajes.html', data)

@login_required
def agregarm(request):
    if request.user.username != 'admin':
       return redirect('index')

    data = {
        'form': MensajeForm()
    }
    if request.method == 'POST':
        formulariom = MensajeForm(request.POST, files=request.FILES)
        if formulariom.is_valid():
            formulariom.save()
            messages.success(request, "mensaje almacenado correctamente")

    return render(request, 'core/crudmensajes/agregarm.html', data)

@login_required
def modificarm(request, id):
    if request.user.username != 'admin':
       return redirect('index')

    producto = Mensaje.objects.get(id=id); 
    data = {
        'form': MensajeForm(instance=producto) # LA INFO SE ALMACENA EN EL FORMULARIO
    }
    if request.method == 'POST':
        formulario = MensajeForm(data=request.POST, instance=producto, files=request.FILES)
        if formulario.is_valid():
            formulario.save()
            messages.success(request, "Producto modificado correctamente")
            data['form'] = formulario # CARGAMOS EL FORMULARIO FINAL CON LA INFO MODIFICADA

    return render(request, 'core/crudmensajes/modificarm.html', data)

@login_required
def eliminarm(request, id):
    if request.user.username != 'admin':
       return redirect('index')

    producto = Mensaje.objects.get(id=id); # OBTENEMOS UN PRODUCTO
    producto.delete()

    return redirect(to="menumensajes")



#Fin cosas del menu mensajes

#carro

def carrito(request):
    respuesta2 = requests.get('https://mindicador.cl/api/dolar')
    monedas = respuesta2.json()
    productos = Carrito.objects.filter(id_usuario = request.user.id).all()

    precio_clp = 0
    for producto in productos:
        precio_clp = precio_clp + producto.subtotal_producto

    valor_usd = monedas['serie'][0]['valor']
    precio_usd = precio_clp/valor_usd

    data = {
        'listaProductos': productos,
        'valor' : round(precio_usd, 2),
        'precio_clp': precio_clp,
    }
    
    return render(request, 'core/carrito.html', data)

def car_agregar(request, id):
    if Carrito.objects.filter(id_usuario = request.user.id).filter(producto_carrito = id).exists():
        carrito = Carrito.objects.filter(id_usuario = request.user.id).filter(producto_carrito = id).first()

        #Verifica que no se puedan agregar cantidades mayores al stock
        if carrito.producto_carrito.stock == 0:
            return HttpResponseRedirect(request.META.get('HTTP_REFERER'))
        
        producto_restar_stock(id)
        carrito.cantidad_prod = carrito.cantidad_prod + 1
        carrito.save()
        return HttpResponseRedirect(request.META.get('HTTP_REFERER'))
    
    producto_restar_stock(id)
    nuevo_item_carrito = Carrito()
    nuevo_item_carrito.id_usuario = User.objects.get(id = request.user.id)
    nuevo_item_carrito.producto_carrito = Producto.objects.get(id = id)
    nuevo_item_carrito.cantidad_prod = 1
    nuevo_item_carrito.save()

    return HttpResponseRedirect(request.META.get('HTTP_REFERER'))

#Esta funcion resta en 1 la cantidad del producto del carrito
def car_una_cantidad_menos(request, id):
    carrito = Carrito.objects.filter(id_usuario = request.user.id).filter(producto_carrito = id).first()
    if carrito.cantidad_prod == 1:
        return HttpResponseRedirect(request.META.get('HTTP_REFERER'))
    
    producto_sumar_stock(id, 1)
    carrito.cantidad_prod = carrito.cantidad_prod - 1
    carrito.save()

    return HttpResponseRedirect(request.META.get('HTTP_REFERER'))

def producto_restar_stock(id):
    producto = Producto.objects.filter(id = id).first()
    producto.stock = producto.stock - 1
    producto.save()

def producto_sumar_stock(id, cantidad):
    producto = Producto.objects.filter(id = id).first()
    producto.stock = producto.stock + cantidad
    producto.save()

def car_eliminar(request, id):
    producto = Carrito.objects.filter(id_usuario = request.user.id, producto_carrito = id).first()
    producto_sumar_stock(id, producto.cantidad_prod)
    producto.delete()
    return redirect(to="carrito")

def car_eliminar_todo(request):
    carrito = Carrito.objects.filter(id_usuario = request.user.id)
    for i in carrito:
        producto_sumar_stock(i.producto_carrito.pk, i.cantidad_prod)
    carrito.delete()
    return redirect(to="carrito")

#orden
