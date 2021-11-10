from django.urls    import path

from posts.views    import LikedContentView

urlpatterns = [
    path('/LikeContent', LikedContentView.as_view()),
]