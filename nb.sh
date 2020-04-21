#!/bin/bash
MOUNTFROM=$PWD
MOUNTTO='/home/morpheus/workspace/mount'
IMAGE='rsbyrne/scibase'
docker run -v $MOUNTFROM:$MOUNTTO -p 8888:8888 $IMAGE \
  jupyter notebook --no-browser --allow-root --port=8888 --ip='0.0.0.0'
