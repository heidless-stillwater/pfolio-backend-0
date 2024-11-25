from rest_framework import serializers
from .models import Demo, Tag


class TagSerializer(serializers.ModelSerializer):
    class Meta:
        model = Tag
        fields = ('name',)


class DemoSerializer(serializers.ModelSerializer):
    tags = TagSerializer(many=True)

    class Meta:
        model = Demo
        fields = ('name', 'description', 'link', 'blog', 'git', 'image', 'tags')

