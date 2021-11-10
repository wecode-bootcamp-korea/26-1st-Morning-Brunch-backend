from django.urls    import path

from posts.views    import PostKeyWordView

urlpatterns = [
    path('/keyword', PostKeyWordView.as_view()),
] 