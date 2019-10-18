#!/bin/bash
echo "Building new image..."
date=$(date "+%H-%M-%S_%d_%m_%y")
docker build -t pcimage:$date .
docker run --rm -it pcimage:$date