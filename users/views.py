import json, re, bcrypt, jwt

from django.http    import JsonResponse
from django.views   import View

from MorningBrunch.settings    import SECRET_KEY, ALGORITHM
from users.models   import User

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
                return JsonResponse({'MESSAGE' : 'INVALD_EMAIL'}, status=400)
            
            if not re.match('^(?=.*[A-Za-z])(?=.*\d)(?=.*[?!@#$%*&])[A-Za-z\d?!@#$%*&]{8,}$', password):
                return JsonResponse({'MESSAGE' : 'INVALD_PASSWORD'}, status=400)
        
            if User.objects.filter(email=email).exists():
                return JsonResponse({'MESSAGE' : 'EMAIL_EXISTS'}, status=400)

            hashed_password = bcrypt.hashpw(password.encode('utf-8'), bcrypt.gensalt()).decode('utf-8')

            User.objects.create(
                email       = email,
                password    = hashed_password,
                author_name = author_name,
                author_job  = author_job,
                author_intro= author_intro,
            )        
            return JsonResponse({'MESSAGE' : 'SUCCESS'}, status=201)
       
        except KeyError:
            return JsonResponse({'MESSAGE' : 'KEY_ERROR'}, status=400)

class SignInView(View):
    def post(self, request):
        try:
            data        = json.loads(request.body)
            email       = data['email']
            password    = data['password']
            user   = User.objects.get(email=email)

            if not bcrypt.checkpw(password.encode('utf-8'), user.password.encode('utf-8')):
                return JsonResponse({'MESSAGE':'INVALID_USER'}, status=401)

            access_token = jwt.encode({'id' : user.id}, SECRET_KEY, algorithm = ALGORITHM)
            return JsonResponse({'MESSAGE':'SUCCESS', 'ACCESS_TOKEN': access_token}, status=200)

        except KeyError:
            return JsonResponse({'MESSAGE':'KEY_ERROR'}, status=400)

        except User.DoesNotExist:
            return JsonResponse({'MESSAGE':'USER_DOES_NOT_EXIST'}, status=404)