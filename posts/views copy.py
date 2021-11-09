import json, re

from django.http  import JsonResponse
from django.views import View

from .models      import *
from users.models import *

class PostDetailView(View):
    def get(self, request, post_id, user_id):
        try:
            post        = Post.objects.get(id = post_id)
            user        = User.objects.get(id = user_id)
            user_image = UserImage.objects.filter(user_id = user.id)

            results = {
                "post_info":[{
                    "title"      : post.title,
                    "sub_title"  : post.sub_title,
                    "creat_time" : post.creat_time,
                    "content"    : post.content,
                    "post_tag"   : [tag.name for tag in post.tags.all()]
                    }]
                ,
                "user_info":[{
                    "author_name"  : user.author_name,
                    "author_intro" : user.author_intro,
                    "author_tag"   : [tag.name for tag in user.tags.all()],
                    "user_image"   : [user_image.url for user_image in user.user_image.all()]
                    }]
                }
                return JsonResponse({"PostDetailView" : results}, status = 200)

            except KeyError:
                return JsonResponse({"message" : "KEY_ERROR"}, status=400)
