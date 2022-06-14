#!/bin/sh
sed -i "s/nz_http_port/$PORT/g" /dashboard/data/config.yaml
/dashboard/app
