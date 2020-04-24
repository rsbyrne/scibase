#!/bin/bash
MOUNTFROM=$PWD
MOUNTTO='/home/morpheus/workspace/mount'
IMAGE='rsbyrne/scibase'
docker run -v $MOUNTFROM:$MOUNTTO -it --shm-size 2g $IMAGE bash
