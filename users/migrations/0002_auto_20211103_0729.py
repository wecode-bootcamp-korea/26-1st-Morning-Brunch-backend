# Generated by Django 3.2.8 on 2021-11-03 07:29

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0001_initial'),
    ]

    operations = [
        migrations.RenameField(
            model_name='tag',
            old_name='tag_name',
            new_name='name',
        ),
        migrations.RenameField(
            model_name='user',
            old_name='post',
            new_name='like_post',
        ),
        migrations.RenameField(
            model_name='userimage',
            old_name='image_url',
            new_name='url',
        ),
    ]
