from django.urls import path
from game.views import overviewView, adbPoliceView, gameView

urlpatterns = [

    # path name = .html name!
    path('overview', overviewView, name='overview'),
    path('adbenturePolice', adbPoliceView, name='adbenturePolice'),
    path('game', gameView, name='game'),

    ]