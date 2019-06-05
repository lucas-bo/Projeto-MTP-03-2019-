from django.urls import path

from . import views

urlpatterns = [
    path('', views.index, name='index'),
    path('new/', views.new, name='new'),
    path('newresponse/', views.new_response, name='newresponse'),
    path('invalidquestion/', views.invalid_question, name='invalidquestion'),
    path('validquestion/', views.valid_question, name='validquestion'),
]
