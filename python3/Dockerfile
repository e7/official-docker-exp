FROM alpine:latest

RUN sed -i 's/dl-cdn.alpinelinux.org/dl-4.alpinelinux.org/g' /etc/apk/repositories && \
apk update && apk add --no-cache python3 && \
python3 -m pip install tornado requests flask && \
apk add --no-cache gcc musl-dev python3-dev && \
python3 -m pip install gevent
