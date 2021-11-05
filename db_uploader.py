import os
import django
import csv
import sys

os.environ.setdefault("DJANGO_SETTINGS_MODULE", "MorningBrunch.settings")
django.setup()

from posts.models import Post

CSV_PATH_PRODUCTS ='./posts.csv'
with open(CSV_PATH_PRODUCTS) as in_file:
    data_reader = csv.reader(in_file)
    next(data_reader, None)
    for row in data_reader:

        if row:
            users_user_id=row[0]
            posts_title=row[1]
            posts_sub_title=row[2]
            posts_content=row[3]
            posts_is_delete=row[4]

            Post.objects.create(user_id=users_user_id, title=posts_title, sub_title=posts_sub_title, content=posts_content)

            
