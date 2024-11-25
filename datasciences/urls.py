from django.urls import path
from .views import DataScienceListView

urlpatterns = [
    path('', DataScienceListView.as_view()),
]
