from django.urls    import path

from posts.views    import TagsView

urlpatterns = [
    path('/keyword', TagsView.as_view()),
] 