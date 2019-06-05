from django import forms

class QuestionForm(forms.Form):
    enunciado = forms.CharField(label='enunciado', max_length=100)
    alternativa1 = forms.CharField(label='alternativa1', max_length=100)
    alternativa2 = forms.CharField(label='alternativa2', required=False, max_length=100)
    alternativa3 = forms.CharField(label='alternativa3', required=False, max_length=100)
    alternativa4 = forms.CharField(label='alternativa4', required=False, max_length=100)
