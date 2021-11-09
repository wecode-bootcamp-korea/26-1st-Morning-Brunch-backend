import json

from django.http import HttpResponse, JsonResponse
from django.views import View

from users.models import User, UserImage, UserTag
from posts.models import CoverImage, Post, PostTag


# OutPut : return detail page(title, sub_title, user_name, upload_time, content, post_tag, like, user_name, user_tag, user_intro, user_img)
# use tables : User, UserTag, UserImage, Like, Post, PostTag 
# post_id :"1",  user_id : "2"
# [
#     {   
#         "cover_images"(CoverImage) : https://i.ibb.co/M1qPXZq/2020-09-20-18-27-27-039.jpg   
#         "title" (Post)       : 실크 노동자들의 주린 배를 위로해주던 든든한 브런치
#         "sub_title" (Post)   : 프랑스 리옹식 샐러드
#         "user_name"  (User)  : 권개발
#         "upload time"(?)     : 2021-11-08 09:13:32
#         "content" (Post)     : <div>얼마나 유명하면 지역을 대표하는 요리로 샐러드가 꼽혔을까.....
#         "post_tag" (PostTag) : 10,11,12,13,14,15,16,17,18,19
#         "like" (Like)        : 1,14,21
#         "user_name" (User)   : 권개발
#         "user_tag" (UserTag) : 2,17,3,4,7,8
#         "user_intro" (User)  : 민주적인 사다리타기
#         "user_img"(UserImage): https://image.shutterstock.com/image-photo/young-business-man-working-home-600w-1654831870.jpg
#     }
#]
class DetailView(View):
    def get(self, request):
        data         = json.loads(request.body)
        users        = User.objects.all()
        posts        = Post.objects.all()
        creat_time   = data['create_time']
        cover_images = CoverImage.objects.all()

        results = []

        for user in users:
            
            users_tags = UserTag.objects.filter(user_id = user.id)
            
            tag_list = []

            for user_tag in users_tags:
                tag_list.append({
                    "id" : user_tag.tag.id,
                    "name": user_tag.tag.name
                })

            results.append(
                {
                    "author_name"  : user.author_name,
                    "author_intro" : user.author_intro,
                    "tags"         : tag_list,
                    "user_image"   : [{"url" : UserImage.url} for user_image in user.userimage.all()]
            }
        )

        for post in posts:

            posts_tags = PostTag.objects.filter(post_id = post.id)
            post_tag_list = []

            for post_tag in posts_tags:
                post_tag_list.append(
                    {
                        "id" : post_tag.tag.id
                    }
                )
            results.append(
                {
                    "title"      : post.title,
                    "sub_title"  : post.sub_title,
                    "content"    : post.content,
                    "creat_time" : creat_time,
                    "post_tags"  : post_tag_list
            }
        )

        for cover_image in cover_images:
            results.append(
                {
                    "cover_image" : cover_image.url
                }
            )
        return JsonResponse({"DetailView" : results}, status = 200)        




import json, re

from django.http  import JsonResponse
from django.views import View

from .models      import *
from users.models import *

class PostDetailView(View):
    def get(self, request, post_id, user_id):
        try:
            post        = Post.objects.get(id = post_id)
            user        = User.objects.get(id = user_id)
            user_image = UserImage.objects.filter(user_id = user.id)

            results = {
                "post_info":[{
                    "title"      : post.title,
                    "sub_title"  : post.sub_title,
                    "creat_time" : post.creat_time,
                    "content"    : post.content,
                    "post_tag"   : [tag.name for tag in post.tags.all()]
                    }]
                ,
                "user_info":[{
                    "author_name"  : user.author_name,
                    "author_intro" : user.author_intro,
                    "author_tag"   : [tag.name for tag in user.tags.all()],
                    "user_image"   : [user_image.url for user_image in user.user_image.all()]
                    }]
                }
                return JsonResponse({"PostDetailView" : results}, status = 200)

            except KeyError:
                return JsonResponse({"message" : "KEY_ERROR"}, status=400)