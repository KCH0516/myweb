from django.urls import path
from django.http import HttpResponse

def home(request):
    return HttpResponse("<h1>Hello, world</h1><p>You're at the index home.")

urlpatterns = [ 
    path('', home, name='home'),
]