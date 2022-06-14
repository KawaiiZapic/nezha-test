#!/bin/sh
sed -i "s/nz_http_port/$PORT/g" /etc/nginx/http.d/default.conf

sed -i "s/nz_oauth_type/$OAUTH_TYPE/g" /dashboard/data/config.yaml
sed -i "s/nz_admin_logins/$OAUTH_ADMINS/g" /dashboard/data/config.yaml
sed -i "s/nz_github_oauth_client_id/$OAUTH_CLIENT_ID/g" /dashboard/data/config.yaml
sed -i "s/nz_github_oauth_client_secret/$OAUTH_CLIENT_SECRET/g" /dashboard/data/config.yaml
sed -i "s/nz_site_title/$SITE_TITLE/g" /dashboard/data/config.yaml
chisel server --port 9992 &
nginx
/dashboard/app
