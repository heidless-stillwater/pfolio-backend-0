from rest_framework.generics import ListAPIView
from rest_framework import permissions

from .models import Tool
from .serializers import ToolSerializer


class ToolListView(ListAPIView):
    permission_classes = (permissions.AllowAny, )
    queryset = Tool.objects.all()
    serializer_class = ToolSerializer
    pagination_class = None

