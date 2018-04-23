from django.conf.urls import url

from webapp.views import *

app_name = 'webapp'
urlpatterns = [
    url(r'^$', IndexView.as_view(), name='index'),
    url(r'^lifestreaming/$', LifeStreamTemplateView.as_view(), name='life_stream'),
    url(r'^news/$', NewsListView.as_view(), name='news'),
    url(r'^news/(?P<slug>[\w-]+)/$', NewsDetailView.as_view(), name='one_news'),
    url(r'^academic-calendar/$', CalendarTemplateView.as_view(), name='calendar'),
    url(r'^search/$', SearchTemplateView.as_view(), name='search'),
    url(r'^students-cabinet/$', StudentsCabinetTemplateView.as_view(), name='students_cabinet'),
    url(r'^(?P<category>[\w-]+)/(?P<element_slug>[\w-]+)/$', ElementOfCategoryListView.as_view(), name='element'),
    url(r'^(?P<category>[\w-]+)/(?P<element_slug>[\w-]+)/(?P<slug>[\w-]+)/$', ItemsOfElementListView.as_view(), name='items_of_element')
]
