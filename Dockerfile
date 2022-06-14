#Grab the latest alpine image
FROM https://ghcr.io/naiba/nezha-dashboard:latest

RUN echo -e "nameserver 127.0.0.11\nnameserver 8.8.8.8\nnameserver 223.5.5.5\n" > /etc/resolv.conf

# Run the app.  CMD is required to run on Heroku
# $PORT is set by Heroku			
CMD /dashboard/app
