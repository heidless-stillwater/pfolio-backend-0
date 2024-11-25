from rest_framework.generics import ListAPIView
from rest_framework import permissions

from .models import Showcase
from .serializers import ShowcaseSerializer


class ShowcaseListView(ListAPIView):
    permission_classes = (permissions.AllowAny, )
    queryset = Showcase.objects.all()
    serializer_class = ShowcaseSerializer
    pagination_class = None

