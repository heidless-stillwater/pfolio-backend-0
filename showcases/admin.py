from django.contrib import admin
from .models import Showcase, Tag


class ShowcaseAdmin(admin.ModelAdmin):
    list_display = ('id', 'name')
    list_display_links = ('id', 'name')
    search_fields = ('name', 'tags')
    list_per_page = 20


admin.site.register(Showcase, ShowcaseAdmin)
admin.site.register(Tag)
