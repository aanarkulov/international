from django.contrib import admin
from sorl.thumbnail.admin import AdminImageMixin

from webapp.models import *


class ElementOfCategoryInline(AdminImageMixin, admin.StackedInline):
    prepopulated_fields = {'slug': ('title',)}
    model = ElementsOfCategory
    extra = 0


class CategoryAdmin(AdminImageMixin, admin.ModelAdmin):
    # list_display = ('title', 'slug')
    prepopulated_fields = {'slug': ('title',)}
    inlines = [ElementOfCategoryInline]


class ItemsOfElementInline(AdminImageMixin, admin.StackedInline):
    model = ItemsOfElement
    extra = 0
    prepopulated_fields = {'slug': ('title',)}


class ElementsOfCategoryAdmin(AdminImageMixin, admin.ModelAdmin):
    list_display = ('title', 'category', 'slug')
    prepopulated_fields = {'slug': ('title',)}
    inlines = [ItemsOfElementInline]


class FilesOfAccordionInline(AdminImageMixin, admin.StackedInline):
    model = FilesOfAccordion
    extra = 0


class AccordionAdmin(admin.ModelAdmin):
    list_display = ('title', 'for_page', 'for_under_page')
    inlines = [FilesOfAccordionInline]


class NewsAdmin(AdminImageMixin, admin.ModelAdmin):
    list_display = ('title', 'added_to')
    prepopulated_fields = {'slug': ('title',)}


class OurPartnerAdmin(AdminImageMixin, admin.ModelAdmin):
    list_display = ('id', 'logo', 'link')


admin.site.register(Slider)
admin.site.register(Category, CategoryAdmin)
admin.site.register(ElementsOfCategory, ElementsOfCategoryAdmin)
admin.site.register(Accordion, AccordionAdmin)
admin.site.register(LifeStream)
admin.site.register(Calendar)
admin.site.register(News, NewsAdmin)
admin.site.register(OurPartner, OurPartnerAdmin)
admin.site.register(Contact)
admin.site.register(LinksToTheSocialNetwork)
