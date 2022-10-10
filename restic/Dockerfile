FROM alpine:latest

RUN apk add --no-cache restic

RUN { crontab -l; echo '0 * * * * restic backup /data'; } | crontab -

COPY ./entrypoint.sh ./entrypoint.sh

CMD ["./entrypoint.sh"]

