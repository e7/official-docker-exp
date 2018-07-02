#! /bin/bash

workdir=$(readlink -f "${0}" | xargs dirname)
/usr/bin/docker run -d --name webproxy --net host -v "${workdir}/conf.d:/etc/nginx/conf.d" -v /var/log/nginx:/var/log/nginx e7/my-ngx
