FROM alpine:latest

ENV PYPI_HOST mirrors.aliyun.com
ENV PYPI_MIRROR http://$PYPI_HOST/pypi/simple/

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories && \
apk update && \
apk add build-base python3 python3-dev fontconfig fontconfig-dev && \
python3 -m pip install -i $PYPI_MIRROR --trusted-host=$PYPI_HOST \
    --upgrade pip && \
python3 -m pip install -i $PYPI_MIRROR --trusted-host=$PYPI_HOST \
    ipython tornado requests flask selenium numpy matplotlib pyinstaller && \
python3 -m pip install -i $PYPI_MIRROR --trusted-host=$PYPI_HOST \
    gevent
