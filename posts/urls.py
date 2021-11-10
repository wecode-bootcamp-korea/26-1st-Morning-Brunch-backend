from django.urls    import path

from posts.views    import PostsView, TagsView

urlpatterns = [
    path('', PostsView.as_view()),
    path('/tags', TagsView.as_view())
]

