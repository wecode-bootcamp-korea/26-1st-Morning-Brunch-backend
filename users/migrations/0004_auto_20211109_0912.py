# Generated by Django 3.2.9 on 2021-11-09 09:12

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('posts', '0008_alter_post_user'),
        ('users', '0003_auto_20211108_1003'),
    ]

    operations = [
        migrations.RenameField(
            model_name='tag',
            old_name='user',
            new_name='users',
        ),
        migrations.RemoveField(
            model_name='tag',
            name='post',
        ),
        migrations.RemoveField(
            model_name='user',
            name='like_post',
        ),
        migrations.AddField(
            model_name='tag',
            name='posts',
            field=models.ManyToManyField(related_name='tags', through='posts.PostTag', to='posts.Post'),
        ),
        migrations.AddField(
            model_name='user',
            name='likes',
            field=models.ManyToManyField(blank=True, related_name='users', through='users.Like', to='posts.Post'),
        ),
        migrations.AlterField(
            model_name='user',
            name='author_job',
            field=models.CharField(max_length=30),
        ),
        migrations.AlterField(
            model_name='userimage',
            name='url',
            field=models.URLField(),
        ),
    ]