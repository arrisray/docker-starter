#!/bin/bash

# See: https://fredrikaverpil.github.io/2016/07/31/docker-for-mac-and-gui-applications/
ip=$(ifconfig en0 | grep inet | awk '$1=="inet" {print $2}')
xhost + $ip

docker run -it --rm \
    -p 80:80 \
    -e DISPLAY=$ip:0 \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v /path/on/host:/path/on/container \
    sample-container-name
