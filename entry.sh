#!/bin/sh
sed -i "s/nz_grpc_port/$PORT/g" /dashboard/data/config.yaml
/dashboard/app
