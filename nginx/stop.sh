#! /bin/bash

cid=$(docker ps -a | egrep -e "webproxy" | awk '{print $1}')
if [[ -n "${cid}" ]] ; then
    docker stop "${cid}"
fi

