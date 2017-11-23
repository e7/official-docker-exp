#! /bin/bash

docker ps -a | grep webproxy | awk '{print $1}' | xargs docker stop
