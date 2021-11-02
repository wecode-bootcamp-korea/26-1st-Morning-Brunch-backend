from django.db import models

class Magazine(models.Model):
    name            = models.CharField(max_length=30)
    class Meta:
        db_table    = 'megazines'
        app_label   = 'posts'

class Post(models.Model):
    magazine        = models.ForeignKey('Magazine',on_delete=models.CASCADE)
    title           = models.CharField(max_length=30)
    sub_title       = models.CharField(max_length=30)
    content         = models.TextField()
    create_time     = models.DateTimeField(auto_now_add=True)
    update_time     = models.DateTimeField(auto_now=True)
    delete_time     = models.DateTimeField(auto_now=True)
    
    class Meta:
        db_table    = 'posts'
        app_label   = 'posts'

class CoverImage(models.Model):
    post            = models.ForeignKey('Post',on_delete=models.CASCADE)
    cover_image_url = models.URLField(max_length=200)
    delete_time     = models.DateTimeField(auto_now=True)
    
    class Meta:
        db_table    = 'cover_images'
        app_label   = 'posts'

class PostTag(models.Model):
    post            = models.ForeignKey('post',on_delete=models.CASCADE)
    tag             = models.ForeignKey('users.Tag',on_delete=models.CASCADE)

    class Meta:
        db_table    = 'posts_tags'
        app_label   = 'posts'