#! /bin/bash

/usr/bin/docker run -d --rm --name webproxy --net host -v /usr/local/nginx/conf.d:/etc/nginx/conf.d -v /var/log/nginx:/var/log/nginx -v /usr/local/nginx/ssl:/ssl my-ngx:1.0
