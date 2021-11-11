from django.urls import path

from posts.views import PostView, PostList, TagsView, UsersView

urlpatterns = [
    path("/post/<int:post_id>", PostView.as_view()),
    path('postlist', PostList.as_view()),
    path('/keyword', TagsView.as_view()),
    path("/users/<int:user_id>", UsersView.as_view()),
]