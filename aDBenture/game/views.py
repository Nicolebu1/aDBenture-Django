from django.shortcuts import render

# Create your views here.

def overviewView(request):
    return render(request, "overview.html")

def adbPoliceView(request):
    return render(request, "adbenturePolice.html")

def gameView(request):
    return render(request, "game.html")
