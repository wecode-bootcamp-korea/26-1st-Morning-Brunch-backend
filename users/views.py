import json, re, bcrypt, jwt

from django.http      import JsonResponse
from django.views     import View
from django.conf      import settings

from .models          import User

class SignUpView(View):
    def post(self, request):
        try:
            data         = json.loads(request.body)
            email        = data['email']
            password     = data['password']
            author_name  = data['author_name']
            author_job   = data['author_job']
            author_intro = data['author_intro']

            if not re.match('^[a-zA-Z0-9+-_.]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$', email):
                return JsonResponse({"message" : "INVALD_EMAIL"}, status=400)
            
            if not re.match('^(?=.*[A-Za-z])(?=.*\d)(?=.*[?!@#$%*&])[A-Za-z\d?!@#$%*&]{8,}$', password):
                return JsonResponse({"message" : "INVALD_PASSWORD"}, status=400)
        
            if User.objects.filter(email=email).exists():
                return JsonResponse({"message" : "EMAIL_EXISTS"}, status=400)

            hashed_password = bcrypt.hashpw(password.encode("utf-8"), bcrypt.gensalt()).decode("utf-8")

            User.objects.create(
                email       = email,
                password    = hashed_password,
                author_name = author_name,
                author_job  = author_job,
                author_intro= author_intro,
            )        
            return JsonResponse({"message" : "SUCCESS"}, status=201)
       
        except KeyError:
            return JsonResponse({"massage" : "KEY_ERROR"}, status=400)
