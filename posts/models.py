from django.db      import models

from core.models    import TimeStampModel    
from users.models   import User

class Magazine(models.Model):
    name = models.CharField(max_length=30)
    class Meta:
        db_table = 'magazines'

class Post(TimeStampModel):
    user_id         = users.models.ForeignKey(‘User’,on_delete=models.CASACADE)
    title           = models.CharField(max_length=30)
    sub_title       = models.CharField(max_length=30)
    content         = models.TextField()
    is_delete       = models.BooleanField(default=False)
    
    class Meta:
        db_table = 'posts'

class CoverImage(models.Model):
    post        = models.ForeignKey('Post',on_delete=models.CASCADE)
    url         = models.URLField(max_length=200)
    is_delete   = models.BooleanField(default=False)

    class Meta:
        db_table = 'cover_images'

class PostTag(models.Model):
    post = models.ForeignKey('post',on_delete=models.CASCADE)
    tag = models.ForeignKey('users.Tag',on_delete=models.CASCADE)

    class Meta:
        db_table = 'posts_tags'