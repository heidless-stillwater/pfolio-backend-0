from django.contrib import admin
from .models import DataScience


class DataScienceAdmin(admin.ModelAdmin):
    list_display = ('id', 'name', 'icon')
    list_display_links = ('id', 'name')
    search_fields = ('name', 'icon')
    list_per_page = 20


admin.site.register(DataScience, DataScienceAdmin)
