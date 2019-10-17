#!/bin/bash
date=$(date "+%Y_%m_%d%n")
echo "$date"
docker build -t ($date}_new_pc_setup_script .
docker run -it --name={$date}_new_pc_setup_script