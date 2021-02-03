#!/bin/sh

docker exec -uwww-data -it  m2-phpfpm bin/magento $1
