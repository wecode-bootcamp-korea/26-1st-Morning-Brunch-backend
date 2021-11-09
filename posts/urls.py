from django.urls    import path

from posts.views    import LikeContent

urlpatterns = [
    path('/LikeContent', LikeContent.as_view()),
]