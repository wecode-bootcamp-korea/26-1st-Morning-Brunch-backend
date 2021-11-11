from django.conf.urls import IncludedURLConf
from django.urls import path

from posts.views import PostView, AuthorView

urlpatterns = [
    path("/<int:post_id>", PostView.as_view()),
    path("/<int:tag>", AuthorView.as_view())
]