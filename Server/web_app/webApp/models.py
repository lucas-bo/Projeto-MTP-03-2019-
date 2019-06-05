from django.db import models

# Create your models here.

class People(models.Model):
    cpf = models.IntegerField(unique=True)
    name = models.CharField(max_length=100)
    birthday = models.DateField()

class Question(models.Model):
    statement = models.CharField(max_length=200)

class Alternative(models.Model):
    text = models.CharField(max_length=200)

class Quiz(models.Model):
    label = models.CharField(unique=True, max_length=100)
