FROM alpine:latest

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories && \
apk update && \
apk add gcc musl-dev python3-dev python3 && \
python3 -m pip install tornado requests flask && \
python3 -m pip install gevent
