# Generated by Django 4.2.1 on 2023-06-19 01:06

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0015_delete_estadosuscripcion_remove_suscripcion_estado'),
    ]

    operations = [
        migrations.AlterField(
            model_name='orden',
            name='precio_orden',
            field=models.IntegerField(blank=True, default=0, null=True),
        ),
    ]
