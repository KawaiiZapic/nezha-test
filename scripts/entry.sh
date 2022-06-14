#!/bin/sh
sed -i "s/nz_http_port/$PORT/g" /etc/nginx/http.d/default.conf

sed -i "s/nz_oauth_type/$OAUTH_TYPE/g" /dashboard/data/config.yaml
sed -i "s/nz_admin_logins/$OAUTH_ADMINS/g" /dashboard/data/config.yaml
sed -i "s/nz_github_oauth_client_id/$OAUTH_CLIENT_ID/g" /dashboard/data/config.yaml
sed -i "s/nz_github_oauth_client_secret/$OAUTH_CLIENT_SECRET/g" /dashboard/data/config.yaml
sed -i "s/nz_site_title/$SITE_TITLE/g" /dashboard/data/config.yaml

git config --global user.email "nezha@github.com"
git config --global user.name "NezhaPanel"
git clone $DATA_REPO /tmp/data_sync
cp /tmp/data_sync/sqlite.db /dashboard/data/sqlite.db

chisel server --port 9992 &
/bin/sh /dashboard/sync.sh &
nginx
/dashboard/app
