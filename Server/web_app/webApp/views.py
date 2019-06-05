from django.shortcuts import render
from django.views.decorators.csrf import csrf_exempt

# Create your views here.
from django.http import HttpResponse, HttpResponseRedirect

from .forms import QuestionForm


def index(request):
    return HttpResponse("""
    <form action="/admin/" method="get">
        <input type="submit" value="Login">
    </form>""")

def new(request):
    return HttpResponse("""
    <form action="/webApp/newresponse/" method="post">
        <label for="enunciado">Enunciado: </label>
        <input id="enunciado" type="text" name="enunciado" value="">

        <p> <input id="alternativa1" type="text" name="alternativa1" value=""> </p>
        <p> <input id="alternativa2" type="text" name="alternativa2" value=""> </p>
        <p> <input id="alternativa3" type="text" name="alternativa3" value=""> </p>
        <p> <input id="alternativa4" type="text" name="alternativa4" value=""> </p>

        <input type="submit" value="Criar">
    </form>""")

@csrf_exempt
def new_response(request):
    if request.method == 'POST':
        form = QuestionForm(request.POST)
        if not form.is_valid():
            return HttpResponseRedirect("/webApp/invalidquestion")

        print(form.cleaned_data.get("enunciado"))
        return HttpResponseRedirect("/webApp/validquestion/")

    return HttpResponseRedirect("/webApp/invalidquestion")


def valid_question(request):
    return HttpResponse("Valid")

def invalid_question(request):
    return HttpResponse("Invalid")
