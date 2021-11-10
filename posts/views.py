from django.http    import JsonResponse
from django.views   import View

from posts.models   import Post

class PostList(View):
    def get(self, request):
        offset  = int(request.GET.get('offset',0))
        limit   = int(request.GET.get('limit',15))
        posts   = Post.objects.all()[offset:limit]
        result  = [{
            'post_id'       : post.id,
            'title'         : post.title,
            'author_name'   : post.user.author_name,
            'cover_image'   : post.coverimage_set.first().url
            } for post in posts]
        return JsonResponse({'liked_contents_data':result}, status = 200)