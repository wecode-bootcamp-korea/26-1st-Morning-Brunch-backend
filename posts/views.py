import random

from django.http    import JsonResponse
from django.views   import View

from users.models   import Tag

class TagsView(View):
    def get(self,request):
        tags    = Tag.objects.filter(usertag__isnull=True).distinct()
        results = [{
            "tag"      : tag.name,
            "post_ids" : random.choice(list(tag.posts.values_list("id", flat=True)))
        } for tag in tags]

        return JsonResponse({"tags" : results}, status = 200)