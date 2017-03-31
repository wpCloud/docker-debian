#!/bin/sh

export _BRANCH=$(git rev-parse --symbolic-full-name --abbrev-ref HEAD);

echo "Building [wpcloud/debian:$_BRANCH] image."

docker build \
  --tag=wpcloud/debian:$_BRANCH \
  $(readlink -f $(pwd))

