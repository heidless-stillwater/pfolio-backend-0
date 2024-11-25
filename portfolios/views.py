from rest_framework.generics import ListAPIView
from rest_framework import permissions

from .models import Portfolio
from .serializers import PortfolioSerializer


class PortfolioListView(ListAPIView):
    permission_classes = (permissions.AllowAny, )
    queryset = Portfolio.objects.all()
    serializer_class = PortfolioSerializer
    pagination_class = None
