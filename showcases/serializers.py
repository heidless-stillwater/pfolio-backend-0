from rest_framework import serializers
from .models import Showcase, Tag


class TagSerializer(serializers.ModelSerializer):
    class Meta:
        model = Tag
        fields = ('name',)


class ShowcaseSerializer(serializers.ModelSerializer):
    tags = TagSerializer(many=True)

    class Meta:
        model = Showcase
        fields = ('name', 'description', 'link', 'image', 'tags')
