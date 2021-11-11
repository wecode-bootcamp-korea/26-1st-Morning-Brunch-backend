from django.http  import JsonResponse
from django.views import View

from users.models import Tag
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

class AuthorView(View):
    def get(self, request):
        offset          = int(request.GET.get('offset',0))
        limit           = int(request.GET.get('limit',7))
        tag_id          = request.GET.get('tag')
        recommand_tag   = Tag.objects.get(id=tag_id)
        users           = recommand_tag.users.all()[offset:limit]
        result = [{
            'user_id'       : user.id,
            'author_name'   : user.author_name,
            'author_job'    : user.author_job,
            'author_intro'  : user.author_intro,
            'user_image'    : user.userimage_set.first().url
        }for user in users]
        return JsonResponse({'data' : result}, status =200)