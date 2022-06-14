#Grab the latest alpine image
FROM ghcr.io/naiba/nezha-dashboard:latest


COPY ./config.yaml /dashboard/data/
COPY ./entry.sh /dashboard/entry.sh
# Run the app.  CMD is required to run on Heroku
# $PORT is set by Heroku			

ENTRYPOINT []

CMD /bin/sh /dashboard/entry.sh
