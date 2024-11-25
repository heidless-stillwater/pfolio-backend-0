from rest_framework.generics import ListAPIView
from rest_framework import permissions

from .models import Example
from .serializers import ExampleSerializer


class ExampleListView(ListAPIView):
    permission_classes = (permissions.AllowAny, )
    queryset = Example.objects.all()
    serializer_class = ExampleSerializer
    pagination_class = None
