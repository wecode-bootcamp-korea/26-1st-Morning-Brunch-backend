import random

from django.http    import JsonResponse
from django.views   import View

from users.models   import Tag
from posts.models   import Post

class PostsView(View):
    def get(self, request):
        # 피드백 1 - offset, limit 고려되지 않음 -> pagination 적용 필요
        # 피드백 2 - logging을 이용해서 코드 리펙토링(select_related, prefetch_related 적용)
        #          - Post.objects.select_related("user").prefetch_related("coverimage_set")
        posts   = Post.objects.all()

        results = [{
            'id'          : post.id,
            'title'       : post.title,
            'author_name' : post.user.author_name,
            'cover_image' : post.coverimage_set.first().url
            #'cover_image' : post.coverimage_set.all()[0].url
        } for post in posts]

        return JsonResponse({'posts' : results}, status = 200)


class TagsView(View):
    def get(self,request):
        tags    = Tag.objects.filter(usertag__isnull=True).distinct()
        results = [{
            "tag"      : tag.name,
            "post_ids" : list(tag.posts.values_list("id", flat=True))
        } for tag in tags]

        return JsonResponse({"tags" : results}, status = 200)
