FROM ghcr.io/naiba/nezha-dashboard:latest

RUN apk add curl && curl -sSL https://github.com/jpillora/chisel/releases/download/v1.7.4/chisel_1.7.4_linux_amd64.gz | zcat > /bin/chisel && chmod +x /bin/chisel

COPY ./config.yaml /dashboard/data/
COPY ./nginx.conf /etc/nginx/http.d/default.conf
COPY ./entry.sh /dashboard/entry.sh

ENTRYPOINT []

CMD /bin/sh /dashboard/entry.sh
