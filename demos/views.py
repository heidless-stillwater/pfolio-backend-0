from rest_framework.generics import ListAPIView
from rest_framework import permissions

from .models import Demo
from .serializers import DemoSerializer


class DemoListView(ListAPIView):
    permission_classes = (permissions.AllowAny, )
    queryset = Demo.objects.all()
    serializer_class = DemoSerializer
    pagination_class = None
