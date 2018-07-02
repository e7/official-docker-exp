FROM nginx:1.10-alpine

# 容器中执行生成证书
# certbot certonly --webroot -w /usr/share/nginx/html/ -d www.mimabao.cc

# 容器中执行更新证书
# certbot renew                                        # 使用【默认配置目录】的更新命令
# certbot renew --config-dir /etc/nginx/conf.d/certs   # 使用【自定义配置目录】的更新命令

RUN sed -i 's/worker_processes.*/worker_processes 2;/' /etc/nginx/nginx.conf \
    && apk update \
    && apk add --no-cache certbot
