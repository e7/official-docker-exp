#! /bin/bash

cid=$(docker ps -a | egrep -e "webproxy" | awk '{print $1}')
docker stop "${cid}"
