from django.db import models

# Create your models here.

class Firewall(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    nombre = models.CharField(db_column='Nombre', max_length=255)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'firewall'


class Interfaces(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    nombre = models.CharField(db_column='Nombre', max_length=255)  # Field name made lowercase.
    port_status = models.IntegerField(db_column='Port Status')  # Field name made lowercase. Field renamed to remove unsuitable characters.
    ipv4_address = models.CharField(db_column='IPv4 Address', max_length=255)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    subnet_mask = models.CharField(db_column='Subnet Mask', max_length=255)  # Field name made lowercase. Field renamed to remove unsuitable characters.

    class Meta:
        managed = False
        db_table = 'interfaces'


class InterfacesRouter(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    nombre = models.CharField(db_column='Nombre', max_length=255)  # Field name made lowercase.
    port_status = models.IntegerField(db_column='Port Status')  # Field name made lowercase. Field renamed to remove unsuitable characters.
    ipv4_adress = models.CharField(db_column='IPv4 Adress', max_length=255)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    subnet_mask = models.CharField(db_column='Subnet Mask', max_length=255)  # Field name made lowercase. Field renamed to remove unsuitable characters.

    class Meta:
        managed = False
        db_table = 'interfaces_router'


class Router(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    nombre = models.CharField(db_column='Nombre', max_length=255)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'router'


class Switches(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    nombre = models.CharField(db_column='Nombre', max_length=255)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'switches'


class Dispositivos(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    nombre = models.CharField(db_column='Nombre', max_length=255)  # Field name made lowercase.
    ip_configuration = models.CharField(db_column='IP_Configuration', max_length=255)  # Field name made lowercase.
    ip_uv4_adress = models.CharField(db_column='IP_UV4_Adress', max_length=255)  # Field name made lowercase.
    subnetmask = models.CharField(db_column='SubnetMask', max_length=255)  # Field name made lowercase.
    defaultgateway = models.CharField(db_column='DefaultGateway', max_length=255)  # Field name made lowercase.
    dnsserver = models.CharField(db_column='DNSServer', max_length=255)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'dispositivos'


class Peticiones(models.Model):
    id = models.AutoField(db_column='ID', primary_key=True)  # Field name made lowercase.
    peticion = models.CharField(db_column='Peticion', max_length=255)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'peticiones'