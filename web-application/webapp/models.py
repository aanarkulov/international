import json
import os
import threading

from ckeditor.fields import RichTextField
from ckeditor_uploader.fields import RichTextUploadingField
from django.conf import settings
from django.db import models
from sorl.thumbnail import ImageField

BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))


class Slider(models.Model):
    title = models.CharField(max_length=50, blank=True)
    description = RichTextField(blank=True)
    image = ImageField(upload_to='images/sliders')

    class Meta:
        verbose_name = 'Slider'
        verbose_name_plural = 'Sliders'


class Category(models.Model):
    title = models.CharField(max_length=50)
    slug = models.SlugField(unique=True)
    image = ImageField(upload_to='images/different')

    class Meta:
        verbose_name = 'Category'
        verbose_name_plural = 'Categories'

    def __str__(self):
        return self.title


class ElementsOfCategory(models.Model):
    category = models.ForeignKey(Category, related_name='elements_of_category')
    title = models.CharField(max_length=50)
    slug = models.SlugField(unique=True)
    description = RichTextUploadingField(blank=True)
    files = models.FileField(upload_to='files/different', blank=True)
    short_description_of_files = models.TextField(blank=True)
    iframe_for_youtube = models.TextField(blank=True,)

    class Meta:
        verbose_name = 'Element of category'
        verbose_name_plural = 'Elements of category'

    def __str__(self):
        return self.title


class ItemsOfElement(models.Model):
    element = models.ForeignKey(ElementsOfCategory, related_name='items_of_element')
    title = models.CharField(max_length=50)
    slug = models.SlugField(unique=True)
    description = RichTextUploadingField(blank=True)
    files = models.FileField(upload_to='files/different', blank=True)
    short_description_of_files = models.TextField(blank=True)
    iframe_for_youtube = models.TextField(blank=True)

    class Meta:
        verbose_name = 'Item of element'
        verbose_name_plural = 'Items of element'

    def __str__(self):
        return self.title


class Accordion(models.Model):
    for_page = models.ForeignKey(ElementsOfCategory, related_name='for_page', blank=True, null=True)
    for_under_page = models.ForeignKey(ItemsOfElement, related_name='for_under_page', blank=True, null=True)
    title = models.CharField(max_length=100)

    class Meta:
        verbose_name = 'Accordion'
        verbose_name_plural = 'Accordions'


class FilesOfAccordion(models.Model):
    accordion = models.ForeignKey(Accordion, related_name='files_of_accordion')
    description = RichTextUploadingField(blank=True)
    file = models.FileField(upload_to='files/different', blank=True)
    short_description_for_file = models.TextField(blank=True)
    iframe_for_youtube = models.TextField(blank=True)

    class Meta:
        verbose_name = 'File of accordion'
        verbose_name_plural = 'Files of accordion'


class LifeStream(models.Model):
    image = ImageField(upload_to='images/different')
    iframe = models.TextField()

    class Meta:
        verbose_name = 'Life Stream'
        verbose_name_plural = 'Lifestreaming'


class Calendar(models.Model):
    title = models.CharField(max_length=50)
    description = models.TextField()
    date = models.DateTimeField()
    url = models.URLField(blank=True)

    class Meta:
        verbose_name = 'Calendar'
        verbose_name_plural = 'Calendar'

    def __str__(self):
        return self.title

    def save(self, *args, **kwargs):
        super(Calendar, self).save(*args, **kwargs)

        thread = threading.Thread(target=self.calendar, args=())
        thread.start()

    @staticmethod
    def calendar():
        data = [
            dict(date=i.date.strftime(settings.DATETIME_FORMAT), title=i.title, description=i.description, url=i.url)
            for i in Calendar.objects.all()]

        file = open(os.path.join(BASE_DIR, 'staticfiles/json/calendar.json'), mode='w')

        file.write(str(json.dumps(data)))
        file.close()


class News(models.Model):
    title = models.CharField(max_length=100)
    slug = models.SlugField(unique=True)
    description = RichTextUploadingField(blank=True)
    file = models.FileField(upload_to='files/news', blank=True)
    image = ImageField(upload_to='images/news')
    add_to_calendar = models.BooleanField(default=False)
    added_to = models.DateField(auto_now_add=True)
    updated = models.DateField(auto_now=True)

    class Meta:
        verbose_name = 'News'
        verbose_name_plural = 'News'

    def __str__(self):
        return self.title

    def save(self, *args, **kwargs):
        super(News, self).save(*args, **kwargs)

        if self.add_to_calendar == True:
            calendar = Calendar(title=self.title, description=self.description,
                                url='{0}/news/{1}/'.format(settings.PROD_IP, self.slug), date=self.updated)
            calendar.save()


class OurPartner(models.Model):
    title = models.CharField(max_length=50, blank=True)
    logo = ImageField(upload_to='images/different')
    link = models.URLField(blank=True)

    class Meta:
        verbose_name = 'Our Partner'
        verbose_name_plural = 'Our Partners'

    def __str__(self):
        return self.title


class Contact(models.Model):
    address = models.CharField(max_length=100)
    phone = models.CharField(max_length=50)
    fax = models.CharField(max_length=50)
    email = models.EmailField()

    class Meta:
        verbose_name = 'Contact'
        verbose_name_plural = 'Contacts'


class LinksToTheSocialNetwork(models.Model):
    facebook = models.URLField(default='https://www.facebook.com/')
    instagram = models.URLField(default='https://www.instagram.com/')
    skype = models.CharField(max_length=150, default='')
    mail = models.CharField(max_length=150, default='')

    class Meta:
        verbose_name = 'Link to the social network'
        verbose_name_plural = 'Links to the social network'
