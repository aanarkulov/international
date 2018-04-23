from django.db.models import Q
from django.shortcuts import get_object_or_404
from django.views.generic import TemplateView, DetailView, ListView

from webapp.models import *


class IndexView(TemplateView):
    template_name = 'index.html'

    def get_context_data(self, **kwargs):
        context = super(IndexView, self).get_context_data(**kwargs)
        context['life_stream'] = LifeStream.objects.first()
        return context


class ElementOfCategoryListView(ListView):
    template_name = 'element.html'

    def get_queryset(self):
        return ElementsOfCategory.objects.get(category__slug=self.kwargs['category'],
                                              slug=self.kwargs['element_slug'])

    def get_context_data(self, **kwargs):
        context = super(ElementOfCategoryListView, self).get_context_data(**kwargs)
        context['element_of_category'] = get_object_or_404(ElementsOfCategory, slug=self.kwargs['element_slug'])
        return context


class ItemsOfElementListView(ListView):
    template_name = 'element-item.html'

    def get_queryset(self):
        return ItemsOfElement.objects.get(element__category__slug=self.kwargs['category'],
                                          element__slug=self.kwargs['element_slug'],
                                          slug=self.kwargs['slug'])

    def get_context_data(self, **kwargs):
        context = super(ItemsOfElementListView, self).get_context_data(**kwargs)
        context['item_of_element'] = get_object_or_404(ItemsOfElement, slug=self.kwargs['slug'])
        return context


class LifeStreamTemplateView(TemplateView):
    template_name = 'life-stream.html'

    def get_context_data(self, **kwargs):
        context = super(LifeStreamTemplateView, self).get_context_data(**kwargs)
        context['life_stream'] = LifeStream.objects.first()
        return context


class NewsListView(ListView):
    template_name = 'news.html'
    model = News
    context_object_name = 'news'


class NewsDetailView(DetailView):
    template_name = 'one-news.html'
    model = News
    context_object_name = 'one_news'


class CalendarTemplateView(TemplateView):
    template_name = 'academic-calendar.html'


class SearchTemplateView(TemplateView):
    template_name = 'search.html'

    def get_context_data(self, **kwargs):
        context = super(SearchTemplateView, self).get_context_data(**kwargs)
        query = self.request.GET.get('search')
        if query:
            try:
                context['elements'] = ElementsOfCategory.objects.filter(title__icontains=query)
                context['items'] = ItemsOfElement.objects.filter(
                    Q(title__icontains=query) | Q(element__title__icontains=query))
                context['news'] = News.objects.filter(title__icontains=query)
                if query == 'Lifestreaming' or 'Life Stream':
                    context['life_stream'] = 'Follow this link to the Lifestreaming'
            except ItemsOfElement.DoesNotExist:
                pass
                context['not_found'] = 'Nothing found on your request'
            return context


class StudentsCabinetTemplateView(TemplateView):
    template_name = 'students-cabinet.html'