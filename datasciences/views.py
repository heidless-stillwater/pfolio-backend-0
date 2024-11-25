from rest_framework.generics import ListAPIView
from rest_framework import permissions

from .models import DataScience
from .serializers import DataScienceSerializer


class DataScienceListView(ListAPIView):
    permission_classes = (permissions.AllowAny, )
    queryset = DataScience.objects.all()
    serializer_class = DataScienceSerializer
    pagination_class = None
