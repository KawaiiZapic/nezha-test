#!/bin/sh
sed -i "s/nz_http_port/$PORT/g" /etc/nginx/http.d/default.conf
/dashboard/app
