import random

from django.http    import JsonResponse
from django.views   import View

from users.models   import Tag
from posts.models   import Post

class LikeContentView(View):
    def get(self, request):
        try:
            posts = Post.objects.all()
            result = [
                {
                'post_id' : post.id,
                'title' : post.title,
                'author_name' : post.user.author_name,
                'cover_image' : post.coverimage_set.values('url')[0].get('url')}
                for post in posts]
            return JsonResponse({'liked_contents_data':result}, status = 200)

        except KeyError:
            return JsonResponse({"message" : "KEY_ERROR"}, status=400)

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