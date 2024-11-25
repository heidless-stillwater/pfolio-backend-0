from django.urls import path
from .views import ExampleListView

urlpatterns = [
    path('', ExampleListView.as_view()),
]
