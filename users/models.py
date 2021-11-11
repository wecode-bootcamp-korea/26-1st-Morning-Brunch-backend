from django.db      import models

from core.models    import TimeStampModel

class User(TimeStampModel):
    email           = models.EmailField(max_length=254)
    password        = models.CharField(max_length=300)
    author_name     = models.CharField(max_length=30, unique=True)
    author_job      = models.CharField(max_length=30)
    author_intro    = models.TextField(blank=True)
    likes           = models.ManyToManyField('posts.Post', blank=True, through='users.Like', related_name="users")    
    
    class Meta:
        db_table = 'users'

class UserImage(models.Model):
    user    = models.ForeignKey('User', on_delete=models.CASCADE)
    url     = models.URLField(max_length=200)
    
    class Meta:
        db_table = 'user_images'

class UserTag(models.Model):
    user   = models.ForeignKey('User', on_delete=models.PROTECT)
    tag    = models.ForeignKey('Tag', on_delete=models.PROTECT)
    
    class Meta:
        db_table = 'users_tags'

class Tag(models.Model):
    name  = models.CharField(max_length=15)
    users = models.ManyToManyField(User, through=UserTag, related_name='tags')
    posts = models.ManyToManyField('posts.Post', through='posts.PostTag', related_name='tags')
    
    class Meta:
        db_table = 'tags'

class Like(models.Model):
    user    = models.ForeignKey('User', on_delete=models.CASCADE)
    post    = models.ForeignKey('posts.Post', on_delete=models.CASCADE)
    
    class Meta:
        db_table = 'likes'