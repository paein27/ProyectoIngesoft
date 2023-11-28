from django.shortcuts import render
from .models import Peticiones, Dispositivos
from .LengNaturalEspV2 import traducir

# Create your views here.
def index(request):
    if request.method == 'POST':
        # Si la solicitud es un POST, significa que se envió un formulario
        intencion = request.POST.get('peticion', '')  # Asegúrate de que 'peticion' coincida con el nombre del campo en tu formulario
        if intencion:
            dispositivos = Dispositivos.objects.all()
            red2 = []
            for dispositivo in dispositivos:
                ipv4 = dispositivo.ip_uv4_adress
                nombre = dispositivo.nombre
                red2.append([nombre,ipv4])
            
            tipo, peticion, out = traducir(intencion, red2)

            if tipo == 0:
                a=0

            if tipo == 1:
                # Guarda la nueva petición en la base de datos
                nueva_peticion = Peticiones(peticion=peticion)
                # Aplicar programa
                nueva_peticion.save()
                # Redirige a la página de historial o a donde desees después de guardar la petición
                # return redirect('historial')
            if tipo == 2:
                nueva_peticion = Peticiones(peticion=peticion)
                nueva_peticion.save()
                #Cambio de ip
                dispositivo = Dispositivos.objects.filter(nombre=out[0]).first()
                if dispositivo:
                    # Modificar la IP con la nueva IP (puedes ajustar esto según tus campos)
                    dispositivo.ip_uv4_adress = out[1]  # Reemplaza nueva_peticion con la nueva IP
                    dispositivo.save()

    # Si la solicitud no es un POST o no se envió un formulario, simplemente renderiza la página principal
    return render(request, "index.html")

def historial(request):
    datos = Peticiones.objects.all()
    return render(request, "pagina1.html", {"datos": datos})

def index_home(request):
    return render(request,'index.html')

def devices(request):
    dispositivos = Dispositivos.objects.all()
    return render(request, "pagina2.html", {"datos": dispositivos})