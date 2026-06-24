#! /bin/bash

docker run -it -v /tmp/.X11-unix:/tmp/.X11-unix \
  -v /mnt/c/Users/garynave/Documents/docker_ws:/mnt/local \
  -w /mnt/local \
  -e DISPLAY \
  -e WAYLAND_DISPLAY \
  -e XDG_RUNTIME_DIR \
  -e PULSE_SERVER \
  ros2-dev:latest
