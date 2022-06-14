FROM ghcr.io/naiba/nezha-dashboard:latest

COPY ./config/config.yaml /dashboard/data/
COPY ./config/nginx.conf /etc/nginx/http.d/default.conf
COPY ./config/nginx.ssl.conf /etc/nginx/http.d/default.ssl.conf
COPY ./scripts/entry.sh /dashboard/entry.sh
COPY ./scripts/sync.sh /dashboard/sync.sh

RUN apk add nginx curl git \
    && curl -sSL https://github.com/jpillora/chisel/releases/download/v1.7.4/chisel_1.7.4_linux_amd64.gz | zcat > /bin/chisel \
    && chmod +x /bin/chisel

ENTRYPOINT []

CMD /bin/sh /dashboard/entry.sh
