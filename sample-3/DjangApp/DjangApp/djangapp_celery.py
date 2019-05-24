"""
This module sets up the global celery object that would be used to manage tasks.
It get imported in the __init__ file so it is guaranteed to be instantiated with the project.
"""
from __future__ import absolute_import, unicode_literals
from django.conf import settings
import os
from celery import Celery
import logging

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'DjangApp.settings')

app = Celery('DjangApp')
app.config_from_object(settings, namespace='CELERY')
app.autodiscover_tasks(packages=["DjangApp"])
