# Generated by Django 4.2.1 on 2023-06-24 20:29

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0002_alter_usuario_direccion'),
    ]

    operations = [
        migrations.AddField(
            model_name='orden',
            name='direccion_envio',
            field=models.CharField(default='En tienda', max_length=100),
            preserve_default=False,
        ),
    ]
