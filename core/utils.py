import jwt

from MorningBrunch.settings    import SECRET_KEY, ALGORITHM
from django.http               import JsonResponse

from users.models   import User

def login_required(func):
    def wrapper(self, request, *args, **kwargs):
        try:
            access_token = request.headers.get('Authorization', None)
            data         = jwt.decode(access_token, SECRET_KEY, algorithms=ALGORITHM)
            request.user = User.objects.get(email=data['email'])
                        
        except jwt.exceptions.DecodeError:
            return JsonResponse({'MESSAGE' : 'INVALID_TOKEN'}, status = 401)            

        except User.DoesNotExist:
            return JsonResponse({'MESSAGE' : 'UNKNOWN_USER'}, status = 401)

        return func(self, request, *args, **kwargs)

    return wrapper