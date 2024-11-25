from rest_framework.generics import ListAPIView
from rest_framework import permissions

from .models import Sample
from .serializers import SampleSerializer


class SampleListView(ListAPIView):
    permission_classes = (permissions.AllowAny, )
    queryset = Sample.objects.all()
    serializer_class = SampleSerializer
    pagination_class = None

