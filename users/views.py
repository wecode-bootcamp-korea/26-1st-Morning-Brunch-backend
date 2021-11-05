import json, re, bcrypt, jwt

from django.http      import JsonResponse
from django.views     import View
from django.conf      import settings

from .models          import User

class SignInView(View):
    def post(self, request):
        try:
            data = json.loads(request.body)
            user = User.objects.get(email=data['email'])
        
            if not user.exists():
                return JsonResponse({'message':'USER_DOES_NOT_EXIST'}, status=404)

            if not bcrypt.checkpw(data["password"].encode("utf-8"), user.password.encode('utf-8')):
                return JsonResponse({"MESSAGE":"INVALID_USER"}, status=401)

            access_token = jwt.encode({"id" : user.id}, settings.SECRET_KEY, algorithm = settings.ALGORITHM)

            return JsonResponse({"MESSAGE":"SUCCESS", "ACCESS_TOKEN": access_token}, status=200)

        except KeyError:
            return JsonResponse({'message':'KEY_ERROR'}, status=400)