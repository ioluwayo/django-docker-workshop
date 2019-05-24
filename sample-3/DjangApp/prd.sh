#!/usr/bin/env sh
>&2 echo "Making migrations.."
python manage.py makemigrations
>&2 echo "Executing migrations.."
python manage.py migrate
>&2 echo "Starting celery worker.."
celery worker -A DjangApp -l info --without-gossip --without-mingle --without-heartbeat --concurrency 3 &
>&2 echo "Staring celery beat.."
celery beat -A DjangApp -l info --pidfile= --scheduler django_celery_beat.schedulers:DatabaseScheduler &
>&2 echo "Staring gunicorn.. on $PORT"
gunicorn DjangApp.wsgi --workers=2 -b 0.0.0.0:$PORT --access-logfile gunicorn.log
