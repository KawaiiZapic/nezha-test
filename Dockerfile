FROM ghcr.io/naiba/nezha-dashboard:latest

RUN apk add nginx

COPY ./config.yaml /dashboard/data/
COPY ./nginx.conf /dashboard/data/
COPY ./entry.sh /dashboard/entry.sh

ENTRYPOINT []

CMD /bin/sh /dashboard/entry.sh
