from django.http  import JsonResponse
from django.views import View

from posts.models import Post

class PostView(View):
    def get(self, request, post_id):
        try:
            post = Post.objects.select_related('user').get(id = post_id)
            
            result = {          
                # "cover_image" : post.coverimage_set.url,
                "title"       : post.title,
                "sub_title"   : post.sub_title,
                "creat_time"  : post.create_time,
                "content"     : post.content,
                "tags"        : [tag.name for tag in post.tags.all()],
                                #포스트(get post_id)>태그>post_id 태그갖고오기
                "author" : {
                    "name"          : post.user.author_name,
                                    #포스트(get post_id)>user>author_name 갖고오기
                    "introduction"  : post.user.author_intro,
                    "user_tag"      : [tag.name for tag in post.tags.all()],
                                     #포스트(get post_id)>tag>user_id>태그갖고오기 / 유저아이디로 다시 필터링?
                                     #포스트(get post_id) > user > tag > user tag 갖고오기 / 유저아이디로 다시 필터링?
                    "profile_image" : post.user.userimage_set.filter(id=post_id).values('url')
                                    # id =2은 결과가 잘나오지만 나머지 id 1,3,4,5는 <QuerySet []> 으로 나타남
                    }
                }

            return JsonResponse({"post" : result}, status = 200)

        except KeyError:
            return JsonResponse({"message" : "KEY_ERROR"}, status=400)
        
        except Post.DoesNotExist:
            return JsonResponse({'MESSAGE':'POST_DOES_NOT_EXIST'}, status=404)