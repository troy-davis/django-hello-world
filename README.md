# django-hello-world

Dev kit to build django-redis-postgresql supported apps:

- Django http web app built on gunicorn http server.
- Django is configured to a use a redis container for cache.
- Django is configured to use a postgresql container for db.


REQUIREMENTS:
- docker
- docker-compose

USAGE:
- docker-compose up
- docker-compose stop
- docker-compose destroy
- Rebuild: docker-compose up --rebuild

- detached mode: docker-compose up -d

curl or in http browser: http://localhost:8000
