#!/bin/sh

echo "Building [wpcloud/debian:latest] image."

docker build \
  --tag=wpcloud/debian:latest \
  $(readlink -f $(pwd))

