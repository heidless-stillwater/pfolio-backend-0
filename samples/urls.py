from django.urls import path
from .views import SampleListView

urlpatterns = [
    path('', SampleListView.as_view()),
]
