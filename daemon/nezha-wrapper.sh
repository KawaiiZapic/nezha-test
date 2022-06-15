#!/bin/sh
trap "kill -- -$$" EXIT
./chisel client --keepalive 0s $1 5555:9991 &
./nezha-agent -p $2 &
while true; do sleep 10; curl -m 5 --http0.9 --output /dev/null --no-progress-meter http://localhost:5555/ || exit 1; done &
wait -n