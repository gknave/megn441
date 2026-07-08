#! /bin/bash

# Be sure that docker container has been built first:
# docker build -t ros2-dev .

# Note: Change the location of your linked folder
# if it is anything other than ~/megn441

LOCAL_DIR="/home/$(id -un)/megn441"

# This folder maps to /mnt/local within the docker container


docker run -it -v /tmp/.X11-unix:/tmp/.X11-unix \
  -v ${LOCAL_DIR}:/mnt/local \
  -w /mnt/local \
  -e DISPLAY \
  -e WAYLAND_DISPLAY \
  -e XDG_RUNTIME_DIR \
  -e PULSE_SERVER \
  ros2-dev:latest
