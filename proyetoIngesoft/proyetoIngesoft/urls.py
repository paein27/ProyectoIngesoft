"""
URL configuration for proyetoIngesoft project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from . import views
from api.views import index, historial, index_home, devices

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', index, name='index'),
    path('pagina1.html/', historial, name='historial'),
    path('pagina1.html/index.html/', index_home, name='index_home'),
    path('pagina2.html/', devices, name='devices'),
]
