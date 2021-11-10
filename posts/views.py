import random
from django.core.checks import messages

from django.http    import JsonResponse
from django.views   import View

from users.models   import Tag

class PostKeyWordView(View):
    def get(self,request):
        try:
            tags = Tag.objects.all()
            posts_tags = []

            for tag in tags:
                if len(tag.posts.values('title')) != 0 :
                    posts_tags.append(tag.name)

            result = random.sample(posts_tags,24)
            return JsonResponse({"keyword_data":result}, status = 200)
        
        except KeyError:
            return JsonResponse({"message" : "KEY_ERROR"}, status=400) 