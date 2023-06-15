# Generated by Django 4.2.1 on 2023-06-14 17:57

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('core', '0013_estadoorden_orden_ordenproducto'),
    ]

    operations = [
        migrations.CreateModel(
            name='EstadoSuscripcion',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre_estado', models.CharField(max_length=50)),
            ],
        ),
        migrations.CreateModel(
            name='Suscripcion',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('suscrito_el', models.DateField()),
                ('renovacion_el', models.DateField(blank=True, null=True)),
                ('estado', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='core.estadoorden')),
                ('id_usuario', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
    ]