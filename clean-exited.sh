#! /bin/bash

for i in $(docker ps -a | grep "Exited" | cut -d ' ' -f 1) ; do
    docker rm "${i}"
done
