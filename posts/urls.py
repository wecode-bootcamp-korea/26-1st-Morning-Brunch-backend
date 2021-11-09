from django.urls    import path

from posts.views    import LikeContentView

urlpatterns = [
    path('/LikeContent', LikeContentView.as_view()),
]