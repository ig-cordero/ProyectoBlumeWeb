# Generated by Django 4.2.1 on 2023-06-12 00:53

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('core', '0012_delete_orden'),
    ]

    operations = [
        migrations.CreateModel(
            name='EstadoOrden',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('estado_orden', models.CharField(max_length=50)),
            ],
        ),
        migrations.CreateModel(
            name='Orden',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('precio_orden', models.IntegerField()),
                ('creado_en', models.DateField()),
                ('modificado_en', models.DateField(blank=True, null=True)),
                ('estado_orden', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='core.estadoorden')),
                ('id_usuario', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
        migrations.CreateModel(
            name='OrdenProducto',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('cantidad_prod', models.IntegerField(default=1)),
                ('orden', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='core.orden')),
                ('producto', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='core.producto')),
            ],
            options={
                'unique_together': {('orden', 'producto')},
            },
        ),
    ]