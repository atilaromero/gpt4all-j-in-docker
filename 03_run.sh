#!/bin/bash -e

# to use DISPLAY (the installer uses QT)
xhost +local:docker

docker build -t gpt4allj .
docker run -it \
  -e DISPLAY=$DISPLAY \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  --device /dev/dri/card0 \
  -v /dev/dri/card0:/dev/dri/card0 \
  gpt4allj "$@"
