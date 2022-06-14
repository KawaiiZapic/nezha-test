#!/bin/sh
git config --global user.email "nezha@github.com"
git config --global user.name "NezhaPanel"
git clone $DATA_REPO /tmp/data_sync
cp /tmp/data_sync/sqlite.db /dashboard/data/sqlite.db
cd /tmp/data_sync
while true
do
    sleep 60
    DATE=`date`
    cp /dashboard/data/sqlite.db /tmp/data_sync/
    git add ./sqlite.db
    git commit -am "save in $DATE" --amend
    git push -f
done