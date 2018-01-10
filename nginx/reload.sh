#! /bin/bash

cid=$(docker ps -a | egrep -e "webproxy" | awk '{print $1}')
if [[ -z "${cid}" ]] ; then
    echo "!!container ${cid} not running!!"
    exit 1
fi
docker exec "${cid}" /usr/sbin/nginx -s reload

