from django.shortcuts import render

def gameView(request):
    return render(request, "game.html")