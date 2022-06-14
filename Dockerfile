#Grab the latest alpine image
FROM ghcr.io/naiba/nezha-dashboard:latest

COPY ./config.yaml /dashboard/data/
# Run the app.  CMD is required to run on Heroku
# $PORT is set by Heroku			
CMD /bin/bash
