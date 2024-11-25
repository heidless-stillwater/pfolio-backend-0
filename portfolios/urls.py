from django.urls import path
from .views import PortfolioListView

urlpatterns = [
    path('', PortfolioListView.as_view()),
]
