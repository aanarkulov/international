from webapp.models import Contact, LinksToTheSocialNetwork, Slider, Category, OurPartner, News


def getting_different_info(request):
    contact = Contact.objects.first()
    link = LinksToTheSocialNetwork.objects.first()
    sliders = Slider.objects.all()
    categories = Category.objects.all()
    partners = OurPartner.objects.all()
    last_news = News.objects.order_by('-added_to')[:10]

    if hasattr(request, 'resolver_match'):
        element_slug = request.resolver_match.kwargs.get('element_slug')
        slug = request.resolver_match.kwargs.get('slug')
    return locals()
