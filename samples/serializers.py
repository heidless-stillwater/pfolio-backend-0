from rest_framework import serializers
from .models import Sample, Tag


class TagSerializer(serializers.ModelSerializer):
    class Meta:
        model = Tag
        fields = ('name',)


class SampleSerializer(serializers.ModelSerializer):
    tags = TagSerializer(many=True)

    class Meta:
        model = Sample
        fields = ('name', 'description', 'link', 'blog', 'git', 'image', 'tags')
