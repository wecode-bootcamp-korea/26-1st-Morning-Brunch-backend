from django.urls    import path

from posts.views    import LikeContentView, PostKeyWordView

urlpatterns = [
    path('/liked', LikeContentView.as_view()),
    path('/keyword', PostKeyWordView.as_view())
]