from django.contrib import admin

# Register your models here.

from .models import Question, Quiz, People, Alternative

admin.site.register(Question)
admin.site.register(People)
admin.site.register(Quiz)
admin.site.register(Alternative)
