from django.urls import path
from .views import ShowcaseListView

urlpatterns = [
    path('', ShowcaseListView.as_view()),
]
