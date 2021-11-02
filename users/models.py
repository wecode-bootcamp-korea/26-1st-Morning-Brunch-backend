from django.db import models

class User(models.Model):
    email           = models.EmailField(max_length=254)
    password        = models.CharField(max_length=300)
    author_name     = models.CharField(max_length=30, unique=True)
    author_job      = models.CharField(max_length=30, blank=True)
    author_intro    = models.TextField(blank=True)
    create_time     = models.DateTimeField(auto_now_add=True)
    update_time     = models.DateTimeField(auto_now=True)
    post            = models.ManyToManyField('posts.Post', through='users.Like')
    
    class Meta:
        db_table    = 'users'
        app_label   = 'users'

class UserImage(models.Model):
    user        = models.ForeignKey('User', on_delete=models.CASCADE)
    image_url   = models.URLField(max_length=200, blank=True)
    
    class Meta:
        db_table    = 'user_images'
        app_label   = 'users'

class UserTag(models.Model):
    user    = models.ForeignKey('User', on_delete=models.CASCADE)
    tag     = models.ForeignKey('Tag', on_delete=models.CASCADE)
    
    class Meta:
        db_table    = 'users_tags'
        app_label   = 'users'

class Tag(models.Model):
    tag_name    = models.CharField(max_length=15)
    user        = models.ManyToManyField(User, through=UserTag)
    post        = models.ManyToManyField('posts.Post', through='posts.PostTag')
    
    class Meta:
        db_table    = 'tags'
        app_label   = 'users'

class Like(models.Model):
    user    = models.ForeignKey('User', on_delete=models.CASCADE)
    post    = models.ForeignKey('posts.Post', on_delete=models.CASCADE)
    
    class Meta:
        db_table    = 'likes'
        app_label   = 'users'