
from django.conf.urls.static import static
from django.contrib import admin
from django.urls import path, include

from aDBenture import settings

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', include('account.urls')),
    # path('game/', include('game.urls')),
    path('explorer/', include('explorer.urls')),
]

if settings.DEBUG:
    urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
