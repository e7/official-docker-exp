#! /bin/bash

workdir=$(readlink -f "${0}" | xargs dirname)
/usr/bin/docker run -d --rm --name webproxy --net host -v "${workdir}/conf.d:/etc/nginx/conf.d" -v /var/log/nginx:/var/log/nginx -v "${workdir}/ssl:/ssl" e7/my-ngx
