#! /bin/bash

webroot="$(pwd)"
if [[ ! -z "${1}" ]] ; then
    if [[ -d "${1}" ]] ; then
        webroot=$(readlink -f "${1}")
    fi
fi
echo "make ${webroot} as webroot"

/usr/bin/docker run --rm --name simple-http-server --net host -v "${webroot}":/usr/share/nginx/html:ro nginx:1.10-alpine
