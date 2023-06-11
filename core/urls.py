from django.urls import path, include
from .views import *
from rest_framework import routers

#Creacion de las rutas para la api
router = routers.DefaultRouter()

router.register('productos', ProductoViewset)
router.register('tipo_productos', TipoProductoViewset)

urlpatterns = [

        #Api
        path('api/', include(router.urls)),

    	path('', index, name="index"),
        path('productos/arbustos_api/', arbustosapi, name="arbustos_api"),
        # Productos
        path('productos/arbustos/', arbustos, name="arbustos"),
		path('productos/flores/', flores, name="flores"),
        path('productos/herramientas/', herramientas, name="herramientas"),
        path('productos/macetas/', macetas, name="macetas"),
        path('productos/sustratos/', sustratos, name="sustratos"),
        # Pagos
        path('subscripcion/', subscripcion, name="subscripcion"),
        # CRUD
        path('agregar/', agregar, name="agregar"),
        path('modificar/<id>/', modificar, name="modificar"),
        path('eliminar/<id>/', eliminar, name="eliminar"),
        # Administracion
        path('menuadmin/', menuadmin , name="menuadmin"),
        #Carrito
        path('carrito/', carrito, name="carrito"),
        path('car_agregar/<id>/', car_agregar, name="carrito_agregar"),
        path('car_una_cantidad_menos/<id>/', car_una_cantidad_menos, name="carrito_menos"),
        path('car_eliminar/<id>/', car_eliminar, name="carrito_eliminar"),
        path('car_eliminartodo/', car_eliminar_todo, name="carrito_borra_todo"),
        #Perfil
        path('perfil/', perfil, name="perfil"),
        #Pedidos
        path('pedidos/', pedidos, name="pedidos"),
        # CRUD Mensajes
        path('agregarm/', agregarm, name="agregarm"),
        path('modificarm/<id>/', modificarm, name="modificarm"),
        path('eliminarm/<id>/', eliminarm, name="eliminarm"),
        #menumensajes
        path('menumensajes/', menumensajes, name="menumensajes"),
]
