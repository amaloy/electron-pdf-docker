#!/usr/bin/env bash

# If the electron-pdf-docker image doesn't exist yet, build it
if ! docker image inspect electron-pdf-docker &> /dev/null; then
  docker build -t electron-pdf-docker $(dirname "$0")
fi

# Run an electron-pdf-docker container
docker run --rm -v $(pwd):/output electron-pdf-docker $@ 