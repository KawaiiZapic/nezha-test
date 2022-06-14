#Grab the latest alpine image
FROM ghcr.io/naiba/nezha-dashboard:latest


COPY ./config.yaml /dashboard/data/
RUN sed -i "s/nz_http_port/$PORT/g" /dashboard/data/config.yaml
# Run the app.  CMD is required to run on Heroku
# $PORT is set by Heroku			

ENTRYPOINT []

CMD /dashboard/app
