from django.http  import JsonResponse
from django.views import View

from posts.models import Post

class PostView(View):
    def get(self, request, post_id):
        try:
            post = Post.objects.select_related('user').get(id = post_id)
            
            result = [{          
                "cover_image" : post.coverimage_set.all().values('url').first(),
                "title"       : post.title,
                "sub_title"   : post.sub_title,
                "creat_time"  : post.create_time,
                "content"     : post.content,
                "tags"        : [tag.name for tag in post.tags.all()],
                "author" : {
                    "name"          : post.user.author_name,
                    "introduction"  : post.user.author_intro,
                    "user_tag"      : [tag.name for tag in post.user.tags.all()],
                    "profile_image" : post.user.userimage_set.all().values('url').first(),
                    }
                }]
            

            return JsonResponse({"post" : result}, status = 200)

        except KeyError:
            return JsonResponse({"message" : "KEY_ERROR"}, status=400)
        
        except Post.DoesNotExist:
            return JsonResponse({'MESSAGE':'POST_DOES_NOT_EXIST'}, status=404)
