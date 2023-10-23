from django.contrib import admin
from .models import Firewall, Interfaces, InterfacesRouter, Router, Switches, Dispositivos
# Register your models here.

admin.site.register(Firewall)
admin.site.register(InterfacesRouter)
admin.site.register(Router)
admin.site.register(Switches)
admin.site.register(Dispositivos)
admin.site.register(Interfaces)