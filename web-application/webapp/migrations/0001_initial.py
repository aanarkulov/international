# -*- coding: utf-8 -*-
# Generated by Django 1.11 on 2018-04-14 07:44
from __future__ import unicode_literals

import ckeditor.fields
import ckeditor_uploader.fields
from django.db import migrations, models
import django.db.models.deletion
import sorl.thumbnail.fields


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Accordion',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=100)),
            ],
            options={
                'verbose_name': 'Accordion',
                'verbose_name_plural': 'Accordions',
            },
        ),
        migrations.CreateModel(
            name='Calendar',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=50)),
                ('description', models.TextField()),
                ('date', models.DateTimeField()),
                ('url', models.URLField(blank=True)),
            ],
            options={
                'verbose_name': 'Calendar',
                'verbose_name_plural': 'Calendar',
            },
        ),
        migrations.CreateModel(
            name='Category',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=50)),
                ('slug', models.SlugField(unique=True)),
                ('image', sorl.thumbnail.fields.ImageField(upload_to='images/different')),
            ],
            options={
                'verbose_name': 'Category',
                'verbose_name_plural': 'Categories',
            },
        ),
        migrations.CreateModel(
            name='Contact',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('address', models.CharField(max_length=100)),
                ('phone', models.CharField(max_length=50)),
                ('fax', models.CharField(max_length=50)),
                ('email', models.EmailField(max_length=254)),
            ],
            options={
                'verbose_name': 'Contact',
                'verbose_name_plural': 'Contacts',
            },
        ),
        migrations.CreateModel(
            name='ElementsOfCategory',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=50)),
                ('slug', models.SlugField(unique=True)),
                ('description', ckeditor_uploader.fields.RichTextUploadingField(blank=True)),
                ('files', models.FileField(blank=True, upload_to='files/different')),
                ('short_description_of_files', models.TextField(blank=True)),
                ('iframe_for_youtube', models.TextField(blank=True)),
                ('category', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='elements_of_category', to='webapp.Category')),
            ],
            options={
                'verbose_name': 'Element of category',
                'verbose_name_plural': 'Elements of category',
            },
        ),
        migrations.CreateModel(
            name='FilesOfAccordion',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('image', sorl.thumbnail.fields.ImageField(blank=True, upload_to='images/different')),
                ('short_description_for_image', models.TextField(blank=True)),
                ('file', models.FileField(blank=True, upload_to='files/different')),
                ('short_description_for_file', models.TextField(blank=True)),
                ('iframe_for_youtube', models.TextField(blank=True)),
                ('accordion', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='files_of_accordion', to='webapp.Accordion')),
            ],
            options={
                'verbose_name': 'File of accordion',
                'verbose_name_plural': 'Files of accordion',
            },
        ),
        migrations.CreateModel(
            name='ItemsOfElement',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=50)),
                ('slug', models.SlugField(unique=True)),
                ('description', ckeditor_uploader.fields.RichTextUploadingField(blank=True)),
                ('files', models.FileField(blank=True, upload_to='files/different')),
                ('short_description_of_files', models.TextField(blank=True)),
                ('iframe_for_youtube', models.TextField(blank=True)),
                ('element', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='items_of_element', to='webapp.ElementsOfCategory')),
            ],
            options={
                'verbose_name': 'Item of element',
                'verbose_name_plural': 'Items of element',
            },
        ),
        migrations.CreateModel(
            name='LifeStream',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('image', sorl.thumbnail.fields.ImageField(upload_to='images/different')),
                ('iframe', models.TextField()),
            ],
            options={
                'verbose_name': 'Life Stream',
                'verbose_name_plural': 'Lifestreaming',
            },
        ),
        migrations.CreateModel(
            name='LinksToTheSocialNetwork',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('facebook', models.URLField(default='https://www.facebook.com/')),
                ('instagram', models.URLField(default='https://www.instagram.com/')),
                ('skype', models.URLField(default='https://web.skype.com/')),
                ('email', models.URLField(default='https://mail.google.com/')),
            ],
            options={
                'verbose_name': 'Link to the social network',
                'verbose_name_plural': 'Links to the social network',
            },
        ),
        migrations.CreateModel(
            name='News',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=100)),
                ('slug', models.SlugField(unique=True)),
                ('description', ckeditor.fields.RichTextField()),
                ('image', sorl.thumbnail.fields.ImageField(upload_to='images/news')),
                ('add_to_calendar', models.BooleanField(default=False)),
                ('added_to', models.DateField(auto_now_add=True)),
                ('updated', models.DateField(auto_now=True)),
            ],
            options={
                'verbose_name': 'News',
                'verbose_name_plural': 'News',
            },
        ),
        migrations.CreateModel(
            name='OurPartner',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(blank=True, max_length=50)),
                ('logo', sorl.thumbnail.fields.ImageField(upload_to='images/different')),
                ('link', models.URLField(blank=True)),
            ],
            options={
                'verbose_name': 'Our Partner',
                'verbose_name_plural': 'Our Partners',
            },
        ),
        migrations.CreateModel(
            name='Slider',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(default='', max_length=50)),
                ('image', sorl.thumbnail.fields.ImageField(upload_to='images/sliders')),
            ],
            options={
                'verbose_name': 'Slider',
                'verbose_name_plural': 'Sliders',
            },
        ),
        migrations.AddField(
            model_name='accordion',
            name='for_page',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, related_name='for_page', to='webapp.ElementsOfCategory'),
        ),
        migrations.AddField(
            model_name='accordion',
            name='for_under_page',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, related_name='for_under_page', to='webapp.ItemsOfElement'),
        ),
    ]