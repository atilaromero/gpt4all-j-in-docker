#!/bin/bash -e

# to use DISPLAY (the installer uses QT)
xhost +local:docker

docker build downloader -t gpt4allj-downloader
docker run -it \
  -e DISPLAY=$DISPLAY \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  -v `pwd`/opt:/opt \
  -v `pwd`/downloader/mounts/root/.cache/qt-installer-framework/:/root/.cache/qt-installer-framework/ \
  -v `pwd`/downloader/mounts/root/Desktop/:/root/Desktop/ \
  -v `pwd`/downloader/mounts/usr/share/applications/:/usr/share/applications/ \
  -w /opt/ \
  gpt4allj-downloader "$@"
