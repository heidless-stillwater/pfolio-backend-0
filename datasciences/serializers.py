from rest_framework import serializers
from .models import DataScience


class DataScienceSerializer(serializers.ModelSerializer):
    class Meta:
        model = DataScience
        fields = '__all__'
