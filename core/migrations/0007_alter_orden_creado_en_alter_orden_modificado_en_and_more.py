# Generated by Django 4.2.1 on 2023-06-25 08:45

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0006_alter_orden_creado_en_alter_orden_modificado_en'),
    ]

    operations = [
        migrations.AlterField(
            model_name='orden',
            name='creado_en',
            field=models.DateField(),
        ),
        migrations.AlterField(
            model_name='orden',
            name='modificado_en',
            field=models.DateField(blank=True, null=True),
        ),
        migrations.AlterField(
            model_name='producto',
            name='creado_en',
            field=models.DateField(auto_now_add=True),
        ),
        migrations.AlterField(
            model_name='producto',
            name='modificado_en',
            field=models.DateField(auto_now=True, default='2023-06-25'),
            preserve_default=False,
        ),
    ]
