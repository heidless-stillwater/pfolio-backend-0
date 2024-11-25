from django.contrib import admin
from .models import Tool, Tag


class ToolAdmin(admin.ModelAdmin):
    list_display = ('id', 'name')
    list_display_links = ('id', 'name')
    search_fields = ('name', 'tags')
    list_per_page = 20


admin.site.register(Tool, ToolAdmin)
admin.site.register(Tag)
