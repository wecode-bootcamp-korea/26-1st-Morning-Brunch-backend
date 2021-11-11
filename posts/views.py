import random

from django.http  import JsonResponse
from django.views import View

from users.models import Tag, User
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

class TagsView(View):
    def get(self,request):
        tags    = Tag.objects.filter(usertag__isnull=True).distinct()
        results = [{
            "tag"      : tag.name,
            "post_id" : random.choice(list(tag.posts.values_list("id", flat=True)))
        } for tag in tags]

        return JsonResponse({"tags" : results}, status = 200)

class UserView(View):
    def get(self,request,user_id):
        try:
            offset  = int(request.GET.get('offset',0))
            limit   = int(request.GET.get('limit',4))
            user    = User.objects.all().get(id = user_id)
            result = [{
                "profile_image" : user.userimage_set.all().values('url').first(),
                "name"          : user.author_name,
                "introduction"  : user.author_intro,
                "post"          :[{
                    "id"          : post.id,
                    "title"       : post.title, 
                    "sub_title"   : post.sub_title,
                    "content"     : post.content,
                    "cover_image" : post.coverimage_set.all().values('url').first()
                    } for post in user.posts.all()][offset:limit]
                }]
             
            return JsonResponse({"user" : result}, status = 200)

        except KeyError:
            return JsonResponse({"MESSAGE" : "KEY_ERROR"}, status=400)
        
        except User.DoesNotExist:
            return JsonResponse({"MESSAGE" : "USER_DOES_NOT_EXIST"}, status=404)

class UsersView(View):
    def get(self,request, user_id):
        try:
            user = User.objects.all().get(id = user_id)
            result = [{
                "profile_image" : user.userimage_set.all().values('url').first(),
                "name"          : user.author_name,
                "introduction"   : user.author_intro,
            }]

            return JsonResponse({"user" : result}, status = 200)

        except KeyError:
            return JsonResponse({"MESSAGE" : "KEY_ERROR"}, status=400)
        
        except User.DoesNotExist:
            return JsonResponse({"MESSAGE" : "USER_DOES_NOT_EXIST"}, status=404)

class AuthorView(View):
    def get(self, request):
        offset          = int(request.GET.get('offset',0))
        limit           = int(request.GET.get('limit',6))
        tag             = request.GET.get('tag')
        recommand_tag   = Tag.objects.get(name=tag)
        users           = recommand_tag.users.all()[offset:limit]
        results = [{
            'user_id'       : user.id,
            'author_name'   : user.author_name,
            'author_job'    : user.author_job,
            'author_intro'  : user.author_intro,
            'user_image'    : user.userimage_set.first().url,
            'post_id'       : list(user.posts.values_list('id', flat='True')),
            'post_tag'      : [post.tags.first().name for post in list(user.posts.all())]
        }for user in users]
        return JsonResponse({'data' : results}, status = 200)
