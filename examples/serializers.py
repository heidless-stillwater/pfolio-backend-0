from rest_framework import serializers
from .models import Example, Tag


class TagSerializer(serializers.ModelSerializer):
    class Meta:
        model = Tag
        fields = ('name',)


class ExampleSerializer(serializers.ModelSerializer):
    tags = TagSerializer(many=True)

    class Meta:
        model = Example
        fields = ('name', 'description', 'link', 'image', 'tags')
