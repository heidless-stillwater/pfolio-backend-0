from django.contrib import admin
from .models import Example, Tag


class ExampleAdmin(admin.ModelAdmin):
    list_display = ('id', 'name')
    list_display_links = ('id', 'name')
    search_fields = ('name', 'tags')
    list_per_page = 20


admin.site.register(Example, ExampleAdmin)
admin.site.register(Tag)

