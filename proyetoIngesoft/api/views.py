from django.shortcuts import render
from .models import Peticiones

# Create your views here.
def index(request):
    #return HttpResponse(documento)
    return render(request, "index.html")

def historial(request):
    datos = Peticiones.objects.all()
    return render(request, "pagina1.html", {"datos": datos})

def index_home(request):
    return render(request,'index.html')