from rest_framework import serializers
from .models import Portfolio, Tag


class TagSerializer(serializers.ModelSerializer):
    class Meta:
        model = Tag
        fields = ('name',)


class PortfolioSerializer(serializers.ModelSerializer):
    tags = TagSerializer(many=True)

    class Meta:
        model = Portfolio
        fields = ('name', 'description', 'link', 'image', 'tags')
