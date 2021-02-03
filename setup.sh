#!/bin/sh

[ ! -d "./dbdata/elasticdata" ] && mkdir ./dbdata/elasticdata
[ ! -d "./dbdata/redis-data" ] && mkdir ./dbdata/redis-data

chown 1000:1000 ./dbdata/elasticdata
chown 1000:1000 ./dbdata/redis-data

docker-compose up -d --build app
docker-compose run setup