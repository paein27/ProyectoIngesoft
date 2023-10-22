from django.http import HttpResponse
from django.shortcuts import render
from django.template import Template, Context

def index(request):
    vistaHtml = open("C:/Users/nacho/Desktop/Pa_la_U/Informatica/Ingenieria_de_Software/Proyecto/Proyecto/ProyectoIngesoft/proyetoIngesoft/proyetoIngesoft/templates/index.html")
    template = Template(vistaHtml.read())
    conexto = Context()
    documento = template.render(conexto)
    return HttpResponse(documento)