from django.conf import settings
from django.conf.urls.static import static
from django.contrib import admin
from django.urls import path, include

urlpatterns = [
    path('admin/', admin.site.urls),
    path('about/', include('about.urls')),
    path('tools/', include('tools.urls')),
    path('portfolios/', include('portfolios.urls')),
    path('samples/', include('samples.urls')),
    path('demos/', include('demos.urls')),
    path('showcases/', include('showcases.urls')),
    path('examples/', include('examples.urls')),
    path('projects/', include('projects.urls')),
    path('datasciences/', include('datasciences.urls')),
    path('technologies/', include('technologies.urls')),
    path('contact/', include('contact.urls')),
    path('hero/', include('hero.urls')),
    path('footer/', include('footer.urls')),
]

if settings.DEBUG:
    urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
