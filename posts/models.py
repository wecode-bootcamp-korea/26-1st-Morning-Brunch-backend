from django.db      import models

from core.models    import TimeStampModel

class Post(TimeStampModel):
    title       = models.CharField(max_length=30)
    sub_title   = models.CharField(max_length=30)
    content     = models.TextField()
    is_delete   = models.BooleanField(default=False)
    user        = models.ForeignKey('users.User', on_delete=models.PROTECT, related_name="post_users")
    
    class Meta:
        db_table = 'posts'

class CoverImage(models.Model):
    post        = models.ForeignKey('Post',on_delete=models.CASCADE)
    url         = models.URLField(max_length=500)
    is_delete   = models.BooleanField(default=False)

    class Meta:
        db_table = 'cover_images'

class PostTag(models.Model):
    post = models.ForeignKey('post',on_delete=models.PROTECT)
    tag = models.ForeignKey('users.Tag',on_delete=models.PROTECT)

    class Meta:
        db_table = 'posts_tags'