from django.shortcuts import render, redirect
from .models import Peticiones
from .LengNaturalEspV2 import traducir

# Create your views here.
def index(request):
    if request.method == 'POST':
        # Si la solicitud es un POST, significa que se envió un formulario
        intencion = request.POST.get('peticion', '')  # Asegúrate de que 'peticion' coincida con el nombre del campo en tu formulario
        if intencion:
            
            peticion = traducir(intencion)
            # Guarda la nueva petición en la base de datos
            nueva_peticion = Peticiones(peticion=peticion)
            # Aplicar programa
            nueva_peticion.save()
            # Redirige a la página de historial o a donde desees después de guardar la petición
            # return redirect('historial')

    # Si la solicitud no es un POST o no se envió un formulario, simplemente renderiza la página principal
    return render(request, "index.html")

def historial(request):
    datos = Peticiones.objects.all()
    return render(request, "pagina1.html", {"datos": datos})

def index_home(request):
    return render(request,'index.html')
