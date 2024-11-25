from django.contrib import admin
from .models import Demo, Tag


class DemoAdmin(admin.ModelAdmin):
    list_display = ('id', 'name')
    list_display_links = ('id', 'name')
    search_fields = ('name', 'tags')
    list_per_page = 20


admin.site.register(Demo, DemoAdmin)
admin.site.register(Tag)
