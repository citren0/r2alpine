#!/usr/bin/env bash

if [ "$EUID" -ne 0 ]
  then echo "Docker daemon requires root privilege."
  exit
fi

if [ $# -eq 0 ]
  then
    tag='latest'
  else
    tag=$1
fi

sudo docker run -it debug:$tag /bin/bash
