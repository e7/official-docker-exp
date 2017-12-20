#! /bin/bash

IMG_NAME="python-alpine:latest"
docker rmi "${IMG_NAME}"
docker build -t "${IMG_NAME}" .
