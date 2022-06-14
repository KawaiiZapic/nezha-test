#!/bin/sh
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