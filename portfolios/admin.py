from django.contrib import admin
from .models import Portfolio, Tag


class PortfolioAdmin(admin.ModelAdmin):
    list_display = ('id', 'name')
    list_display_links = ('id', 'name')
    search_fields = ('name', 'tags')
    list_per_page = 20


admin.site.register(Portfolio, PortfolioAdmin)
admin.site.register(Tag)
