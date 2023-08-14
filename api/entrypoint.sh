#!/bin/sh
if [ "$DATABASE" = "postgres" ]
then
    echo "Waiting for postgres..."
    while ! nc -z $SQL_HOST $SQL_PORT; do
      sleep 1
    done

    echo "PostgreSQL started"
fi

python manage.py collectstatic --no-input

python manage.py migrate

if [ "$DJANGO_SUPERUSER_USERNAME" ]
then
    python manage.py createsuperuser \
        --noinput \
        --username $DJANGO_SUPERUSER_USERNAME \
        --email $DJANGO_SUPERUSER_EMAIL
fi

exec "$@"
