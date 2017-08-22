FROM python:3-alpine3.6
ADD code/ /code/
WORKDIR /code/
RUN apk --update add --no-cache --virtual .build-deps \
    postgresql-dev \
    python3-dev \
    gcc \
    musl-dev && \
    pip install --no-cache-dir -r requirements.txt && \
    apk del .build-deps && \
    apk add --no-cache libpq

CMD ["/usr/local/bin/python3", "/usr/local/bin/gunicorn/gunicorn", "--bind 0.0.0.0:8000", "wsgi:helloworld"

