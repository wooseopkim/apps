#!/bin/sh

python ./manage.py migrate
python ./manage.py collectstatic --noinput

uvicorn etebase_server.asgi:application --host 0.0.0.0

