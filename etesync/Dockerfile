FROM docker.io/python:3-alpine

ARG ETESYNC_TAG
RUN apk add git coreutils gcc libc-dev libffi-dev make
RUN git clone https://github.com/etesync/server.git --branch $ETESYNC_TAG --depth 1
WORKDIR server

RUN pip install -r requirements.txt

RUN mkdir -p /etc/etebase-server /data/static /data/media
COPY /config/etesync.ini /etc/etebase-server/etebase-server.ini
RUN python ./manage.py migrate
RUN python ./manage.py collectstatic --noinput

ENTRYPOINT ["uvicorn", "etebase_server.asgi:application", "--host", "0.0.0.0"]

