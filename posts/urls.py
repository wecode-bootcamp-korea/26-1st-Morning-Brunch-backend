from django.urls import path

from posts.views import PostView, PostList, TagsView, UserView, AuthorView

urlpatterns = [
    path('/<int:post_id>', PostView.as_view()),
    path('/postlist', PostList.as_view()),
    path('/keyword', TagsView.as_view()),
    path("/user/<int:user_id>", UserView.as_view()),
    path('/authors', AuthorView.as_view()),
]