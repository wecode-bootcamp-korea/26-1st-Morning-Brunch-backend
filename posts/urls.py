from django.conf.urls import IncludedURLConf
from django.urls import path

from posts.views import PostView, PostList, TagsView, AuthorView

urlpatterns = [
    path("/<int:post_id>", PostView.as_view()),
    path('postlist', PostList.as_view()),
    path('/keyword', TagsView.as_view()),
]