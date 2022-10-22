FROM docker.io/python:3-alpine

ARG ETESYNC_TAG
RUN apk add git coreutils gcc libc-dev libffi-dev make
RUN git clone https://github.com/etesync/server.git --branch $ETESYNC_TAG --depth 1
WORKDIR server

RUN pip install -r requirements.txt

COPY ./entrypoint.sh ./entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]

