from django.urls import path

from users.views      import SignUpView, SignInView, UserView, UsersView

urlpatterns = [
    path('/signup', SignUpView.as_view()),
    path('/signin', SignInView.as_view()),
    path('/user/<int:user_id>', UserView.as_view()),
    path('/users/<int:user_id>', UsersView.as_view()),
]