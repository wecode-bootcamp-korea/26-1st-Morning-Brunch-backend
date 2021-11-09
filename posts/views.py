from django.http    import JsonResponse
from django.views   import View

from posts.models   import Post

class LikeContent(View):
    def get(self, request):
        try:
            posts = Post.objects.all()
            result = [
                {'title' : post.title,
                'author_name' : post.user.author_name,
                'cover_image' : post.coverimage_set.values('url')[0].get('url')}
                for post in posts]
            return JsonResponse({'data':result}, status = 200)

        except KeyError:
            return JsonResponse({"message" : "KEY_ERROR"}, status=400)