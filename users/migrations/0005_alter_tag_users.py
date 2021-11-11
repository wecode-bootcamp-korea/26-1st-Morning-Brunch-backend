# Generated by Django 3.2.4 on 2021-11-10 09:03

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0004_auto_20211109_0912'),
    ]

    operations = [
        migrations.AlterField(
            model_name='tag',
            name='users',
            field=models.ManyToManyField(related_name='tags', through='users.UserTag', to='users.User'),
        ),
    ]
