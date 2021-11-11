from django.urls import path

from posts.views import PostView, PostList

urlpatterns = [
    path("/<int:post_id>", PostView.as_view()),
    path('', PostList.as_view()),
]
