from rest_framework import serializers
from .models import Tool, Tag


class TagSerializer(serializers.ModelSerializer):
    class Meta:
        model = Tag
        fields = ('name',)


class ToolSerializer(serializers.ModelSerializer):
    tags = TagSerializer(many=True)

    class Meta:
        model = Tool
        fields = ('name', 'description', 'link', 'blog', 'git', 'image', 'tags')
